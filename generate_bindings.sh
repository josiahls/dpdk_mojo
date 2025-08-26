cwd=$(pwd)

for dir in $cwd/dpdk/lib/*; do
    dir_name=$(basename $dir)
    pixi run --manifest-path c_binder_mojo generate_bindings --input_header_path $dir/$dir_name.h --output_dir $cwd/dpdk_mojo/ --so_file_path $cwd/dpdk/build/lib/librte_$dir_name.so --extra_args "-I $dir/*" --include_only_prefixes "rte_" --debug_output "true"
    break
done