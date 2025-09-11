# Native Mojo Modules
import os
from pathlib import Path, DIR_SEPARATOR
import sys
from sys import CompilationTarget

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.binding_tools.ast_parser import AstParser
from c_binder_mojo.binding_tools.lib_gen import append_to_mojo_file
from c_binder_mojo.binding_tools.binding_gen import generate_bindings
from c_binder_mojo.ast.nodes import AstNode


fn _glob(path:String, mut found_paths: List[String]) raises:
    if '*' in path:
        var substrings = path.split('*')
        var base_path = substrings[0]
        for inner_path in os.listdir(base_path):
            rpath = String('*').join(substrings[1:])
            _glob(base_path + inner_path + rpath, found_paths)
    else:
        if Path(path).exists():
            found_paths.append(path)


fn glob(path:String) raises -> List[String]:
    var found_paths = List[String]()
    _glob(path, found_paths)
    return found_paths




struct SubmoduleBinding(ExplicitlyCopyable & Movable & Writable):
    var header_file_path: Path
    var lib_name: String
    var so_file_path: Path
    var output_dir: Path
    var extra_header_include: String
    var package_path: Path

    var _header_parent_path: Path
    var _allowed_arch_and_os: List[String]

    fn __init__(
        out self, 
        header_file_path: Path, 
        lib_name: String = "", 
        so_file_path: Path = Path(""), 
        output_dir: Path = Path("dpdk_mojo"), 
        extra_header_include: String = String(""),
        meson_package_map: Dict[String, Path] = {}
    ) raises:
        self.header_file_path = header_file_path
        self.output_dir = output_dir
        self.lib_name = lib_name
        self.so_file_path = so_file_path
        self._allowed_arch_and_os = []
        if not self.header_file_path.exists():
            raise Error("Header file path does not exist")

        self.package_path = Path(DIR_SEPARATOR.join(self.header_file_path.parts()[:-1]))
        if self.package_path.name() == "include":
            self.package_path = Path(DIR_SEPARATOR.join(self.header_file_path.parts()[:-2]))

        if lib_name == "":
            self.lib_name = 'librte_' + self.package_path.name()


        if not self.output_dir.exists():
            raise Error("Output directory does not exist")

        var s = header_file_path.parts()[:-1]
        self._header_parent_path = Path(DIR_SEPARATOR.join(s))

        if self.so_file_path == Path(""):
            self.so_file_path = self._header_parent_path / (lib_name + ".so")
        if not self.so_file_path.exists():
            raise Error("So file path does not exist")

        self.extra_header_include = ''
        for path in [
            'dpdk/config/',
            'dpdk/build/',
            self.package_path.path,
            (self.package_path / "include").path
        ]:
            self.extra_header_include += " -I" + path

        self.extra_header_include += extra_header_include

        if (included_path := self._header_parent_path / "include").exists():
            self.extra_header_include += " -I" + included_path.path
        
        for path in self.extra_header_include.split(" "):
            if '*' in path:
                globbed_paths:String = ""
                for p in glob(path.replace('-I','')):
                    globbed_paths += " -I" + p
                self.extra_header_include = self.extra_header_include.replace(path, globbed_paths)

    fn write_to(self, mut writer: Some[Writer]):
        writer.write(String(self.header_file_path.name().split(".")[0]) + '\n')
        writer.write('\t' + self.lib_name + '\n')
        writer.write('\t' + self.so_file_path.name() + '\n')
        writer.write('\t' + self.output_dir.name() + '\n')
        writer.write('\t' + self.extra_header_include + '\n')



fn get_os_name() raises -> String:
    if CompilationTarget.is_linux():
        return "linux"
    elif CompilationTarget.is_windows():
        return "windows"
    else:
        raise Error("Unsupported operating system")


fn get_arch_name() raises -> String:
    if CompilationTarget.is_x86():
        return "x86"
    elif CompilationTarget.has_neon():
        return "arm"
    else:
        raise Error("Unsupported architecture")


fn main() raises:
    # var meson_package_map: Dict[String, Path] = meson_package_walk(Path("dpdk/build"))
    var MBUF_INCLUDE: String = " -Idpdk/lib/mbuf/ -Idpdk/lib/mempool/ -Idpdk/lib/ring/"
    # TODO: Change to consider the os this is running on. Hardcoded to linux.
    var COMMON_INCLUDE: String = " -Idpdk/lib/eal/include/ -Idpdk/lib/eal/" + get_os_name() + "/include/ -Idpdk/lib/eal/" + get_arch_name() + "/include/" + " -Idpdk/lib/log"

    var submodule_bindings: List[SubmoduleBinding] = [
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/eal/include/rte_eal.h"),
            so_file_path=Path("dpdk/build/lib/librte_eal.so"),
        ),
        # SubmoduleBinding( # Fails to parge types with __attribute__ and __vector_size__, and type mapper goes in an inf loop from `char)))``
        #     header_file_path=Path("dpdk/lib/acl/rte_acl.h"),
        #     extra_header_include=MBUF_INCLUDE + COMMON_INCLUDE + " -Idpdk/lib/log/",
        #     so_file_path=Path("dpdk/build/lib/librte_acl.so")
        # ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/argparse/rte_argparse.h"),
            extra_header_include=COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_argparse.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/bbdev/rte_bbdev.h"),
            extra_header_include=MBUF_INCLUDE + COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_bbdev.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/bitratestats/rte_bitrate.h"),
            extra_header_include=COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_bitratestats.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/bpf/rte_bpf.h"),
            extra_header_include=MBUF_INCLUDE + COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_bpf.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/cfgfile/rte_cfgfile.h"),
            so_file_path=Path("dpdk/build/lib/librte_cfgfile.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/cmdline/cmdline.h"),
            extra_header_include=COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_cmdline.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/compressdev/rte_compressdev.h"),
            extra_header_include=MBUF_INCLUDE + COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_compressdev.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/cryptodev/rte_cryptodev.h"),
            extra_header_include=MBUF_INCLUDE + COMMON_INCLUDE +" -Idpdk/lib/kvargs/ -Idpdk/lib/rcu/",
            so_file_path=Path("dpdk/build/lib/librte_cryptodev.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/dispatcher/rte_dispatcher.h"),
            extra_header_include=MBUF_INCLUDE + COMMON_INCLUDE + " -Idpdk/lib/dispatcher/  -Idpdk/lib/eventdev/",
            so_file_path=Path("dpdk/build/lib/librte_dispatcher.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/distributor/rte_distributor.h"),
            so_file_path=Path("dpdk/build/lib/librte_distributor.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/dmadev/rte_dmadev.h"),
            extra_header_include=COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_dmadev.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/efd/rte_efd.h"),
            so_file_path=Path("dpdk/build/lib/librte_efd.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/ethdev/rte_ethdev.h"),
            extra_header_include=MBUF_INCLUDE + COMMON_INCLUDE + " -Idpdk/lib/net/ -Idpdk/lib/meter/",
            so_file_path=Path("dpdk/build/lib/librte_ethdev.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/eventdev/rte_eventdev.h"),
            extra_header_include=MBUF_INCLUDE + COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_eventdev.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/fib/rte_fib.h"),
            extra_header_include=MBUF_INCLUDE + COMMON_INCLUDE + " -Idpdk/lib/rcu/",
            so_file_path=Path("dpdk/build/lib/librte_fib.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/gpudev/rte_gpudev.h"),
            extra_header_include=MBUF_INCLUDE + COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_gpudev.so")
        ),
        SubmoduleBinding( # Works
            header_file_path=Path("dpdk/lib/graph/rte_graph.h"),
            extra_header_include=COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_graph.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/gro/rte_gro.h"),
            extra_header_include=MBUF_INCLUDE + COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_gro.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/gso/rte_gso.h"),
            extra_header_include=MBUF_INCLUDE + COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_gso.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/hash/rte_hash.h"),
            extra_header_include=COMMON_INCLUDE + ' -Idpdk/lib/rcu/' + MBUF_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_hash.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/ip_frag/rte_ip_frag.h"),
            extra_header_include=COMMON_INCLUDE + ' -Idpdk/lib/net/' + MBUF_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_ip_frag.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/ipsec/rte_ipsec.h"),
            extra_header_include=COMMON_INCLUDE + ' -Idpdk/lib/cryptodev/' + ' -Idpdk/lib/kvargs/' + MBUF_INCLUDE + ' -Idpdk/lib/rcu/' + ' -Idpdk/lib/security/' + ' -Idpdk/lib/net/',
            so_file_path=Path("dpdk/build/lib/librte_ipsec.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/jobstats/rte_jobstats.h"),
            extra_header_include=COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_jobstats.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/kvargs/rte_kvargs.h"),
            extra_header_include=' -Idpdk/lib/metrics/',
            so_file_path=Path("dpdk/build/lib/librte_kvargs.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/latencystats/rte_latencystats.h"),
            extra_header_include=COMMON_INCLUDE + ' -Idpdk/lib/metrics/' + MBUF_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_latencystats.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/log/rte_log.h"),
            extra_header_include=COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_log.so")
        ),
        # SubmoduleBinding( # Error: Platform must be built with RTE_FORCE_INTRINSIC
        #     header_file_path=Path("dpdk/lib/lpm/rte_lpm.h"),
        #     extra_header_include=COMMON_INCLUDE + ' -Idpdk/lib/rcu/' + MBUF_INCLUDE,
        #     so_file_path=Path("dpdk/build/lib/librte_lpm.so")
        # ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/mbuf/rte_mbuf.h"),
            extra_header_include=COMMON_INCLUDE + MBUF_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_mbuf.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/member/rte_member.h"),
            extra_header_include=COMMON_INCLUDE + ' -Idpdk/lib/hash/',
            so_file_path=Path("dpdk/build/lib/librte_member.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/mempool/rte_mempool.h"),
            extra_header_include=COMMON_INCLUDE + ' -Idpdk/lib/ring/',
            so_file_path=Path("dpdk/build/lib/librte_mempool.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/meter/rte_meter.h"),
            so_file_path=Path("dpdk/build/lib/librte_meter.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/metrics/rte_metrics.h"),
            extra_header_include=COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_metrics.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/mldev/rte_mldev.h"),
            extra_header_include=COMMON_INCLUDE + MBUF_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_mldev.so")
        ),
        SubmoduleBinding( # error: Platform must be built with RTE_FORCE_INTRINSICS
            header_file_path=Path("dpdk/lib/net/rte_net.h"),
            extra_header_include=COMMON_INCLUDE + MBUF_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_net.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/node/rte_node_eth_api.h"),
            extra_header_include=MBUF_INCLUDE + COMMON_INCLUDE + ' -Idpdk/lib/graph/',
            so_file_path=Path("dpdk/build/lib/librte_node.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/pcapng/rte_pcapng.h"),
            extra_header_include=MBUF_INCLUDE + COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_pcapng.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/pci/rte_pci.h"),
            extra_header_include=MBUF_INCLUDE + COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_pci.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/pdcp/rte_pdcp.h"),
            extra_header_include=COMMON_INCLUDE + MBUF_INCLUDE + ' -Idpdk/lib/bpf/' + ' -Idpdk/lib/net/',
            so_file_path=Path("dpdk/build/lib/librte_pdcp.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/pdump/rte_pdump.h"),
            extra_header_include=COMMON_INCLUDE + MBUF_INCLUDE + ' -Idpdk/lib/port/' + ' -Idpdk/lib/bpf/' + ' -Idpdk/lib/table/',
            so_file_path=Path("dpdk/build/lib/librte_pdump.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/pipeline/rte_pipeline.h"),
            extra_header_include=COMMON_INCLUDE + MBUF_INCLUDE + ' -Idpdk/lib/port/' + ' -Idpdk/lib/table/',
            so_file_path=Path("dpdk/build/lib/librte_pipeline.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/pmu/rte_pmu.h"),
            extra_header_include=COMMON_INCLUDE + MBUF_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_pmu.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/port/rte_port.h"),
            extra_header_include=COMMON_INCLUDE + MBUF_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_port.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/power/rte_power_cpufreq.h"),
            extra_header_include=COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_power.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/rawdev/rte_rawdev.h"),
            extra_header_include=COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_rawdev.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/rcu/rte_rcu_qsbr.h"),
            extra_header_include=COMMON_INCLUDE + MBUF_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_rcu.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/regexdev/rte_regexdev.h"),
            extra_header_include=COMMON_INCLUDE + MBUF_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_regexdev.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/reorder/rte_reorder.h"),
            extra_header_include=COMMON_INCLUDE + MBUF_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_reorder.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/rib/rte_rib.h"),
            extra_header_include=COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_rib.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/ring/rte_ring.h"),
            extra_header_include=COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_ring.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/sched/rte_sched.h"),
            extra_header_include=COMMON_INCLUDE + MBUF_INCLUDE + ' -Idpdk/lib/meter/',
            so_file_path=Path("dpdk/build/lib/librte_sched.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/security/rte_security.h"),
            extra_header_include=COMMON_INCLUDE + MBUF_INCLUDE + ' -Idpdk/lib/cryptodev/' + ' -Idpdk/lib/net/',
            so_file_path=Path("dpdk/build/lib/librte_security.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/stack/rte_stack.h"),
            extra_header_include=COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_stack.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/table/rte_table.h"),
            extra_header_include=COMMON_INCLUDE + MBUF_INCLUDE + ' -Idpdk/lib/port/',
            so_file_path=Path("dpdk/build/lib/librte_table.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/telemetry/rte_telemetry.h"),
            extra_header_include=COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_telemetry.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/timer/rte_timer.h"),
            extra_header_include=COMMON_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_timer.so")
        ),
        SubmoduleBinding(
            header_file_path=Path("dpdk/lib/vhost/rte_vhost.h"),
            extra_header_include=COMMON_INCLUDE + MBUF_INCLUDE,
            so_file_path=Path("dpdk/build/lib/librte_vhost.so")
        )
    ]


    var logger = Logger.get_default_logger("c_binder_mojo")

    for ref submodule_binding in submodule_bindings:
        print('--------------------------------')
        print('submodule_binding.lib_name: ', submodule_binding.lib_name, ' extra_header_include: ', submodule_binding.extra_header_include)
        var root_node = generate_bindings(
            submodule_binding.header_file_path,
            submodule_binding.output_dir,
            submodule_binding.so_file_path,
            logger,
            extra_args=submodule_binding.extra_header_include,
            # debug_output=True,
        )
        print('Generated bindings for: ' + String(submodule_binding.lib_name))
        append_to_mojo_file(
            root_node,
            submodule_binding.output_dir / (submodule_binding.header_file_path.name().split(".")[0] + ".mojo"),
            submodule_binding.so_file_path,
            String(submodule_binding.header_file_path.name().split(".")[0]),
            include_only_prefixes=List[String]()
        )
        print('--------------------------------')

    logger.info("Done")
