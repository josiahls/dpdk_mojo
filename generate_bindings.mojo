# Native Mojo Modules
import os
from pathlib import Path, DIR_SEPARATOR
import sys
from sys import CompilationTarget

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.binding_tools.ast_parser import AstParser
from c_binder_mojo.binding_tools.compilation_database import CompilationDatabase, CompilationDatabaseEntry
from c_binder_mojo.binding_tools.lib_gen import append_to_mojo_file
from c_binder_mojo.binding_tools.binding_gen import generate_bindings
from c_binder_mojo.ast.nodes import AstNode
from emberjson import to_string


fn guess_header_file_path(value: CompilationDatabaseEntry) -> Optional[Path]:
    var inner_file_path = value.file
    if not inner_file_path.startswith('../'):
        inner_file_path = '../' + inner_file_path
    var file_path = Path(value.directory) / inner_file_path
    var parent_path = Path(DIR_SEPARATOR.join(file_path.parts()[:-1])) 
    var libname = value.libname()
    libname_variants = [libname, libname.removeprefix('lib')]
    for libname_variant in libname_variants:
        if (header_file_path := parent_path / (libname_variant + ".h")).exists():
            return header_file_path
        if (header_file_path := parent_path / 'include' / (libname_variant + ".h")).exists():
            return header_file_path

    print('No header file path found for: ', value.libname())
    print('\tfile_path: ', file_path)
    print('\tinner_file_path: ', inner_file_path)
    print('\tparent_path: ', parent_path)
    return None

fn main() raises:
    var logger = Logger.get_default_logger("c_binder_mojo")

    var compilation_database = CompilationDatabase(Path("dpdk/build/compile_commands.json"))

    for entry in compilation_database:
        if entry:
            ref value = entry.value()
            if value.parent_path().name() == "drivers":
                # Skip drivers. They have a different naming convention e.g.:
                # librte_net_octeon_ep -> drivers/net/octeon_ep/otx_ep_common.h
                # TODO: We can try to bind the drivers later, however will involve a different method of finding the main header file.
                continue
            if value.has_so_file():
                # if 'librte_mempool' != value.libname():
                #     continue
                if value.libname() in [
                    String('librte_acl'),
                    String('librte_lpm'),
                    String('librte_pmu'),
                    String('librte_net'),
                ]:
                    # Skipping since this seg faults
                    continue
                print('--------------------------------')
                print(value.libname() + ' Headers: ' + value.get_included_headers('dpdk/'))

                var header_file_path = guess_header_file_path(value)
                if header_file_path:
                    print('header_file_path: ', header_file_path.value())
                    var output_dir = Path("dpdk_mojo") 
                    var root_node = generate_bindings(
                        header_file_path.value(),
                        output_dir,
                        logger,
                        extra_args='-Idpdk/build/ ' + value.get_included_headers('dpdk/'),
                        debug_output=True,
                    )
                    append_to_mojo_file(
                        root_node,
                        output_dir / (value.libname().removeprefix('lib') + ".mojo"),
                        value.so_file_path(),
                        String(value.libname().removeprefix('lib')),
                        include_only_prefixes=List[String]()
                    )
                print('--------------------------------')
                # break

    # logger.info("Done")
