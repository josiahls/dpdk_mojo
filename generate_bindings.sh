#!/bin/bash

# Exit immediately if any command fails
set -e

# Handle Ctrl+C (SIGINT) to exit the entire script
trap 'echo "Script interrupted by user. Exiting..."; exit 130' INT

cwd=$(pwd)

extra_header_include="$cwd/dpdk/lib/"
for dir in $cwd/dpdk/lib/*; do
    dir_name=$(basename $dir)
    lib_name="librte_$dir_name"
    input_header_path="$dir/$dir_name.h"
    if [ "$dir_name" == "acl" ]; then
        continue
    fi
    if [ ! -f "$dir/$dir_name.h" ]; then
        dir_name="rte_$dir_name"
        input_header_path="$dir/$dir_name.h"
    fi
    pixi run --manifest-path c_binder_mojo generate_bindings --input_header_path $input_header_path --output_dir $cwd/dpdk_mojo/ --so_file_path $cwd/dpdk/build/lib/$lib_name.so --recursive_header_include "$extra_header_include" --include_only_prefixes "rte_" --debug_output "true"
    # break
done