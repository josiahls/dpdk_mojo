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


fn _meson_dep_walk(current_path: Path, mut module_map: Dict[String, Path]) raises: 
    if current_path.is_file():
        return

    dir_name = current_path.name()

    if dir_name.startswith("meson-"):
        return
    if '.' in dir_name:
        return 
    if dir_name in module_map:
        return

    module_map[dir_name] = current_path

    for d in os.listdir(current_path):
        dir_path = current_path / d
        if dir_path.is_dir():
            _meson_dep_walk(dir_path, module_map)

fn meson_dep_walk(build_path: Path, source_dir: Optional[Path] = None) raises -> Dict[String, Path]:
    var module_map: Dict[String, Path] = {}

    for d in os.listdir(build_path):
        dir_path = build_path / d
        if dir_path.is_dir():
            _meson_dep_walk(dir_path, module_map)

    keys = List[String]([k for k in module_map.keys()])
    for key in keys:
        module_map[key] = Path(module_map[key].path.replace('dpdk/build/', 'dpdk/'))
    return module_map


struct SubmoduleBinding(ExplicitlyCopyable & Movable & Writable):
    var header_file_path: Path
    var lib_name: String
    var so_file_path: Path
    var output_dir: Path
    var extra_header_include: String

    var _header_parent_path: Path
    var _allowed_arch_and_os: List[String]

    fn __init__(
        out self, 
        header_file_path: Path, 
        lib_name: String, 
        so_file_path: Path = Path(""), 
        output_dir: Path = Path("dpdk_mojo"), 
        extra_header_include: String = String("")
    ):
        self.header_file_path = header_file_path
        self.lib_name = lib_name
        self._allowed_arch_and_os = []

        var s = header_file_path.parts()[:-1]
        self._header_parent_path = Path(DIR_SEPARATOR.join(s))

        if so_file_path == Path(""):
            self.so_file_path = self._header_parent_path / (lib_name + ".so")
        self.so_file_path = so_file_path
        self.output_dir = output_dir

        self.extra_header_include = extra_header_include + " -Idpdk/lib/eal/include/ -Idpdk/lib/ -Idpdk/config/ -Idpdk/lib/log/ -Idpdk/build/"

        # Add allowed os's
        if CompilationTarget.is_linux():
            self._allowed_arch_and_os = ["linux"]
        elif CompilationTarget.is_windows():
            self._allowed_arch_and_os = ["windows"]
        else:
            print("Error: Unsupported operating system")
            return 

        # Add allowed arch's
        if CompilationTarget.is_apple_m1() 
                or CompilationTarget.is_apple_m2() 
                or CompilationTarget.is_apple_m3() 
                or CompilationTarget.is_apple_m4()
                or CompilationTarget.has_neon():
            # NOTE: Reference how mojo dispatches _stat to the correct architecture. has_neon() is used to diff between x86 and arm.
            self._allowed_arch_and_os.append("arm")
        elif CompilationTarget.is_x86() or not CompilationTarget.has_neon():
            self._allowed_arch_and_os.append("x86")
        else:
            print("Error: Unsupported architecture: " + String(CompilationTarget._arch()) + " os: " + String(CompilationTarget._os()))

    fn runtime_check(self) raises:
        if not self.header_file_path.exists():
            raise Error("Header file path does not exist")
        if not self.so_file_path.exists():
            raise Error("So file path does not exist")
        if not self.output_dir.exists():
            raise Error("Output directory does not exist")

    fn extra_header_include_with_defaults(self) -> String:
        extra_header_include = self.extra_header_include
        if (include_dir := self._header_parent_path / "include").exists():
            extra_header_include += " -I" + include_dir.path

        try:
            platforms_path = Path("dpdk/lib/eal")
            for platform in os.listdir(platforms_path):
                if platform not in self._allowed_arch_and_os:
                    continue
                extra_header_include += " -I" + String(platforms_path / platform / "include")
        except:
            print("Error listing directory: dpdk/lib/eal")

        return extra_header_include

    fn write_to(self, mut writer: Some[Writer]):
        writer.write(String(self.header_file_path.name().split(".")[0]) + '\n')
        writer.write('\t' + self.lib_name + '\n')
        writer.write('\t' + self.so_file_path.name() + '\n')
        writer.write('\t' + self.output_dir.name() + '\n')
        writer.write('\t' + self.extra_header_include_with_defaults() + '\n')


alias SUBMODULE_BINDINGS: List[SubmoduleBinding] = [
    SubmoduleBinding( # Works
        header_file_path=Path("dpdk/lib/eal/include/rte_eal.h"),
        lib_name="librte_eal",
        extra_header_include="-Idpdk/lib/eal/include/",
        so_file_path=Path("dpdk/build/lib/librte_eal.so")
    ),
    # SubmoduleBinding( # Fails to parge types with __attribute__ and __vector_size__
    #     header_file_path=Path("dpdk/lib/acl/rte_acl.h"),
    #     lib_name="librte_acl",
    #     extra_header_include="-Idpdk/lib/acl/",
    #     so_file_path=Path("dpdk/build/lib/librte_acl.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/argparse/rte_argparse.h"),
    #     lib_name="librte_argparse",
    #     extra_header_include="-Idpdk/lib/argparse/",
    #     so_file_path=Path("dpdk/build/lib/librte_argparse.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/bbdev/rte_bbdev.h"),
    #     lib_name="librte_bbdev",
    #     extra_header_include="-Idpdk/lib/bbdev/ -Idpdk/lib/mbuf/ -Idpdk/lib/mempool/ -Idpdk/lib/ring/",
    #     so_file_path=Path("dpdk/build/lib/librte_bbdev.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/bitratestats/rte_bitrate.h"),
    #     lib_name="librte_bitratestats",
    #     extra_header_include="-Idpdk/lib/bitratestats/",
    #     so_file_path=Path("dpdk/build/lib/librte_bitratestats.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/bpf/rte_bpf.h"),
    #     lib_name="librte_bpf",
    #     extra_header_include="-Idpdk/lib/bpf/ -Idpdk/lib/mbuf/ -Idpdk/lib/mempool/ -Idpdk/lib/ring/",
    #     so_file_path=Path("dpdk/build/lib/librte_bpf.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/cfgfile/rte_cfgfile.h"),
    #     lib_name="librte_cfgfile",
    #     extra_header_include="-Idpdk/lib/cfgfile/",
    #     so_file_path=Path("dpdk/build/lib/librte_cfgfile.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/cmdline/cmdline.h"),
    #     lib_name="librte_cmdline",
    #     extra_header_include="-Idpdk/lib/cmdline/",
    #     so_file_path=Path("dpdk/build/lib/librte_cmdline.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/compressdev/rte_compressdev.h"),
    #     lib_name="librte_compressdev",
    #     extra_header_include="-Idpdk/lib/compressdev/  -Idpdk/lib/mbuf/ -Idpdk/lib/mempool/ -Idpdk/lib/ring/",
    #     so_file_path=Path("dpdk/build/lib/librte_compressdev.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/cryptodev/rte_cryptodev.h"),
    #     lib_name="librte_cryptodev",
    #     extra_header_include="-Idpdk/lib/cryptodev/ -Idpdk/lib/kvargs/ -Idpdk/lib/mbuf/  -Idpdk/lib/mempool/ -Idpdk/lib/ring/  -Idpdk/lib/rcu/",
    #     so_file_path=Path("dpdk/build/lib/librte_cryptodev.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/dispatcher/rte_dispatcher.h"),
    #     lib_name="librte_dispatcher",
    #     extra_header_include="-Idpdk/lib/dispatcher/  -Idpdk/lib/eventdev/ -Idpdk/lib/mbuf/ -Idpdk/lib/mempool/ -Idpdk/lib/ring/",
    #     so_file_path=Path("dpdk/build/lib/librte_dispatcher.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/distributor/rte_distributor.h"),
    #     lib_name="librte_distributor",
    #     extra_header_include="-Idpdk/lib/distributor/",
    #     so_file_path=Path("dpdk/build/lib/librte_distributor.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/dmadev/rte_dmadev.h"),
    #     lib_name="librte_dmadev",
    #     extra_header_include="-Idpdk/lib/dmadev/",
    #     so_file_path=Path("dpdk/build/lib/librte_dmadev.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/efd/rte_efd.h"),
    #     lib_name="librte_efd",
    #     extra_header_include="-Idpdk/lib/efd/",
    #     so_file_path=Path("dpdk/build/lib/librte_efd.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/ethdev/rte_ethdev.h"),
    #     lib_name="librte_ethdev",
    #     extra_header_include="-Idpdk/lib/ethdev/ -Idpdk/lib/mbuf/ -Idpdk/lib/mempool/ -Idpdk/lib/ring/  -Idpdk/lib/net/ -Idpdk/lib/meter/",
    #     so_file_path=Path("dpdk/build/lib/librte_ethdev.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/eventdev/rte_eventdev.h"),
    #     lib_name="librte_eventdev",
    #     extra_header_include="-Idpdk/lib/eventdev/ -Idpdk/lib/mbuf/ -Idpdk/lib/mempool/ -Idpdk/lib/ring/",
    #     so_file_path=Path("dpdk/build/lib/librte_eventdev.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/fib/rte_fib.h"),
    #     lib_name="librte_fib",
    #     extra_header_include="-Idpdk/lib/fib/ -Idpdk/lib/rcu/ -Idpdk/lib/ring/",
    #     so_file_path=Path("dpdk/build/lib/librte_fib.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/gpudev/rte_gpudev.h"),
    #     lib_name="librte_gpudev",
    #     extra_header_include="-Idpdk/lib/gpudev/ -Idpdk/lib/mbuf/ -Idpdk/lib/mempool/ -Idpdk/lib/ring/",
    #     so_file_path=Path("dpdk/build/lib/librte_gpudev.so")
    # ),
    # SubmoduleBinding( # Works
    #     header_file_path=Path("dpdk/lib/graph/rte_graph.h"),
    #     lib_name="librte_graph",
    #     extra_header_include="-Idpdk/lib/graph/",
    #     so_file_path=Path("dpdk/build/lib/librte_graph.so")
    # ),
    SubmoduleBinding(
        header_file_path=Path("dpdk/lib/gro/rte_gro.h"),
        lib_name="librte_gro",
        extra_header_include="-Idpdk/lib/gro/",
        so_file_path=Path("dpdk/build/lib/librte_gro.so")
    ),
    SubmoduleBinding(
        header_file_path=Path("dpdk/lib/gso/rte_gso.h"),
        lib_name="librte_gso",
        extra_header_include="-Idpdk/lib/gso/",
        so_file_path=Path("dpdk/build/lib/librte_gso.so")
    ),
    SubmoduleBinding(
        header_file_path=Path("dpdk/lib/hash/rte_hash.h"),
        lib_name="librte_hash",
        extra_header_include="-Idpdk/lib/hash/",
        so_file_path=Path("dpdk/build/lib/librte_hash.so")
    ),
    SubmoduleBinding(
        header_file_path=Path("dpdk/lib/ip_frag/rte_ip_frag.h"),
        lib_name="librte_ip_frag",
        extra_header_include="-Idpdk/lib/ip_frag/",
        so_file_path=Path("dpdk/build/lib/librte_ip_frag.so")
    ),
    SubmoduleBinding(
        header_file_path=Path("dpdk/lib/ipsec/rte_ipsec.h"),
        lib_name="librte_ipsec",
        extra_header_include="-Idpdk/lib/ipsec/",
        so_file_path=Path("dpdk/build/lib/librte_ipsec.so")
    ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/jobstats/rte_jobstats.h"),
    #     lib_name="librte_jobstats",
    #     extra_header_include="-Idpdk/lib/jobstats/",
    #     so_file_path=Path("dpdk/build/lib/librte_jobstats.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/kvargs/rte_kvargs.h"),
    #     lib_name="librte_kvargs",
    #     extra_header_include="-Idpdk/lib/kvargs/",
    #     so_file_path=Path("dpdk/build/lib/librte_kvargs.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/latencystats/rte_latencystats.h"),
    #     lib_name="librte_latencystats",
    #     extra_header_include="-Idpdk/lib/latencystats/",
    #     so_file_path=Path("dpdk/build/lib/librte_latencystats.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/log/rte_log.h"),
    #     lib_name="librte_log",
    #     extra_header_include="-Idpdk/lib/log/",
    #     so_file_path=Path("dpdk/build/lib/librte_log.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/lpm/rte_lpm.h"),
    #     lib_name="librte_lpm",
    #     extra_header_include="-Idpdk/lib/lpm/",
    #     so_file_path=Path("dpdk/build/lib/librte_lpm.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/mbuf/rte_mbuf.h"),
    #     lib_name="librte_mbuf",
    #     extra_header_include="-Idpdk/lib/mbuf/",
    #     so_file_path=Path("dpdk/build/lib/librte_mbuf.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/member/rte_member.h"),
    #     lib_name="librte_member",
    #     extra_header_include="-Idpdk/lib/member/",
    #     so_file_path=Path("dpdk/build/lib/librte_member.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/mempool/rte_mempool.h"),
    #     lib_name="librte_mempool",
    #     extra_header_include="-Idpdk/lib/mempool/",
    #     so_file_path=Path("dpdk/build/lib/librte_mempool.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/meter/rte_meter.h"),
    #     lib_name="librte_meter",
    #     extra_header_include="-Idpdk/lib/meter/",
    #     so_file_path=Path("dpdk/build/lib/librte_meter.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/metrics/rte_metrics.h"),
    #     lib_name="librte_metrics",
    #     extra_header_include="-Idpdk/lib/metrics/",
    #     so_file_path=Path("dpdk/build/lib/librte_metrics.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/mldev/rte_mldev.h"),
    #     lib_name="librte_mldev",
    #     extra_header_include="-Idpdk/lib/mldev/",
    #     so_file_path=Path("dpdk/build/lib/librte_mldev.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/net/rte_net.h"),
    #     lib_name="librte_net",
    #     extra_header_include="-Idpdk/lib/net/",
    #     so_file_path=Path("dpdk/build/lib/librte_net.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/node/rte_node_eth_api.h"),
    #     lib_name="librte_node",
    #     extra_header_include="-Idpdk/lib/node/",
    #     so_file_path=Path("dpdk/build/lib/librte_node.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/pcapng/rte_pcapng.h"),
    #     lib_name="librte_pcapng",
    #     extra_header_include="-Idpdk/lib/pcapng/",
    #     so_file_path=Path("dpdk/build/lib/librte_pcapng.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/pci/rte_pci.h"),
    #     lib_name="librte_pci",
    #     extra_header_include="-Idpdk/lib/pci/",
    #     so_file_path=Path("dpdk/build/lib/librte_pci.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/pdcp/rte_pdcp.h"),
    #     lib_name="librte_pdcp",
    #     extra_header_include="-Idpdk/lib/pdcp/",
    #     so_file_path=Path("dpdk/build/lib/librte_pdcp.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/pdump/rte_pdump.h"),
    #     lib_name="librte_pdump",
    #     extra_header_include="-Idpdk/lib/pdump/",
    #     so_file_path=Path("dpdk/build/lib/librte_pdump.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/pipeline/rte_pipeline.h"),
    #     lib_name="librte_pipeline",
    #     extra_header_include="-Idpdk/lib/pipeline/",
    #     so_file_path=Path("dpdk/build/lib/librte_pipeline.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/pmu/rte_pmu.h"),
    #     lib_name="librte_pmu",
    #     extra_header_include="-Idpdk/lib/pmu/",
    #     so_file_path=Path("dpdk/build/lib/librte_pmu.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/port/rte_port.h"),
    #     lib_name="librte_port",
    #     extra_header_include="-Idpdk/lib/port/",
    #     so_file_path=Path("dpdk/build/lib/librte_port.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/power/rte_power_cpufreq.h"),
    #     lib_name="librte_power",
    #     extra_header_include="-Idpdk/lib/power/",
    #     so_file_path=Path("dpdk/build/lib/librte_power.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/rawdev/rte_rawdev.h"),
    #     lib_name="librte_rawdev",
    #     extra_header_include="-Idpdk/lib/rawdev/",
    #     so_file_path=Path("dpdk/build/lib/librte_rawdev.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/rcu/rte_rcu_qsbr.h"),
    #     lib_name="librte_rcu",
    #     extra_header_include="-Idpdk/lib/rcu/",
    #     so_file_path=Path("dpdk/build/lib/librte_rcu.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/regexdev/rte_regexdev.h"),
    #     lib_name="librte_regexdev",
    #     extra_header_include="-Idpdk/lib/regexdev/",
    #     so_file_path=Path("dpdk/build/lib/librte_regexdev.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/reorder/rte_reorder.h"),
    #     lib_name="librte_reorder",
    #     extra_header_include="-Idpdk/lib/reorder/",
    #     so_file_path=Path("dpdk/build/lib/librte_reorder.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/rib/rte_rib.h"),
    #     lib_name="librte_rib",
    #     extra_header_include="-Idpdk/lib/rib/",
    #     so_file_path=Path("dpdk/build/lib/librte_rib.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/ring/rte_ring.h"),
    #     lib_name="librte_ring",
    #     extra_header_include="-Idpdk/lib/ring/",
    #     so_file_path=Path("dpdk/build/lib/librte_ring.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/sched/rte_sched.h"),
    #     lib_name="librte_sched",
    #     extra_header_include="-Idpdk/lib/sched/",
    #     so_file_path=Path("dpdk/build/lib/librte_sched.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/security/rte_security.h"),
    #     lib_name="librte_security",
    #     extra_header_include="-Idpdk/lib/security/",
    #     so_file_path=Path("dpdk/build/lib/librte_security.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/stack/rte_stack.h"),
    #     lib_name="librte_stack",
    #     extra_header_include="-Idpdk/lib/stack/",
    #     so_file_path=Path("dpdk/build/lib/librte_stack.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/table/rte_table.h"),
    #     lib_name="librte_table",
    #     extra_header_include="-Idpdk/lib/table/",
    #     so_file_path=Path("dpdk/build/lib/librte_table.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/telemetry/rte_telemetry.h"),
    #     lib_name="librte_telemetry",
    #     extra_header_include="-Idpdk/lib/telemetry/",
    #     so_file_path=Path("dpdk/build/lib/librte_telemetry.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/timer/rte_timer.h"),
    #     lib_name="librte_timer",
    #     extra_header_include="-Idpdk/lib/timer/",
    #     so_file_path=Path("dpdk/build/lib/librte_timer.so")
    # ),
    # SubmoduleBinding(
    #     header_file_path=Path("dpdk/lib/vhost/rte_vhost.h"),
    #     lib_name="librte_vhost",
    #     extra_header_include="-Idpdk/lib/vhost/",
    #     so_file_path=Path("dpdk/build/lib/librte_vhost.so")
    # )
]


fn main() raises:
    var logger = Logger.get_default_logger("c_binder_mojo")

    meson_dep_map = meson_dep_walk(Path("dpdk/build"))

    for item in meson_dep_map.items():
        print('item: key: ', item.key, 'value: ', item.value)
    # print('meson_dep_map: ', meson_dep_map)

    # for ref submodule_binding in SUBMODULE_BINDINGS:
    #     submodule_binding.runtime_check()
    #     print('submodule_binding.lib_name: ' + submodule_binding.lib_name)
    #     var root_node = generate_bindings(
    #         submodule_binding.header_file_path,
    #         submodule_binding.output_dir,
    #         submodule_binding.so_file_path,
    #         logger,
    #         extra_args=submodule_binding.extra_header_include_with_defaults(),
    #         # debug_output=True,
    #     )
    #     print('Generated bindings for: ' + String(submodule_binding.lib_name))
    #     append_to_mojo_file(
    #         root_node,
    #         submodule_binding.output_dir / (submodule_binding.header_file_path.name().split(".")[0] + ".mojo"),
    #         submodule_binding.so_file_path,
    #         String(submodule_binding.header_file_path.name().split(".")[0]),
    #         include_only_prefixes=List[String]()
    #     )
    # logger.info("Done")
