
from sys.ffi import DLHandle
from sys import ffi
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from pathlib import Path
from c_binder_mojo.stdlib_ext import C_Union
from utils import StaticTuple

# # Node: TranslationUnitDecl()
alias __int128_t = ffi.c_long_long
alias __uint128_t = ffi.c_ulong_long
struct __NSConstantString_tag(Copyable & Movable):
	pass
alias __NSConstantString = __NSConstantString_tag

alias __SVInt8_t = Int8
alias __SVInt16_t = Int16
alias __SVInt32_t = ffi.c_int
alias __SVInt64_t = ffi.c_long_long
alias __SVUint8_t = UInt8
alias __SVUint16_t = UInt16
alias __SVUint32_t = ffi.c_int
alias __SVUint64_t = ffi.c_ulong_long
alias __SVFloat16_t = Float16
alias __SVFloat32_t = Float32
alias __SVFloat64_t = Float64
alias __SVBFloat16_t = BFloat16
alias __clang_svint8x2_t = SIMD[Int8.dtype, 2]
alias __clang_svint16x2_t = SIMD[Int16.dtype, 2]
alias __clang_svint32x2_t = SIMD[ffi.c_int.dtype, 2]
alias __clang_svint64x2_t = SIMD[ffi.c_long_long.dtype, 2]
alias __clang_svuint8x2_t = SIMD[UInt8.dtype, 2]
alias __clang_svuint16x2_t = SIMD[UInt16.dtype, 2]
alias __clang_svuint32x2_t = SIMD[ffi.c_int.dtype, 2]
alias __clang_svuint64x2_t = SIMD[ffi.c_ulong_long.dtype, 2]
alias __clang_svfloat16x2_t = SIMD[Float16.dtype, 2]
alias __clang_svfloat32x2_t = SIMD[Float32.dtype, 2]
alias __clang_svfloat64x2_t = SIMD[Float64.dtype, 2]
alias __clang_svbfloat16x2_t = SIMD[BFloat16.dtype, 2]
alias __clang_svint8x3_t = SIMD[Int8.dtype, 3]
alias __clang_svint16x3_t = SIMD[Int16.dtype, 3]
alias __clang_svint32x3_t = SIMD[ffi.c_int.dtype, 3]
alias __clang_svint64x3_t = SIMD[ffi.c_long_long.dtype, 3]
alias __clang_svuint8x3_t = SIMD[UInt8.dtype, 3]
alias __clang_svuint16x3_t = SIMD[UInt16.dtype, 3]
alias __clang_svuint32x3_t = SIMD[ffi.c_int.dtype, 3]
alias __clang_svuint64x3_t = SIMD[ffi.c_ulong_long.dtype, 3]
alias __clang_svfloat16x3_t = SIMD[Float16.dtype, 3]
alias __clang_svfloat32x3_t = SIMD[Float32.dtype, 3]
alias __clang_svfloat64x3_t = SIMD[Float64.dtype, 3]
alias __clang_svbfloat16x3_t = SIMD[BFloat16.dtype, 3]
alias __clang_svint8x4_t = SIMD[Int8.dtype, 4]
alias __clang_svint16x4_t = SIMD[Int16.dtype, 4]
alias __clang_svint32x4_t = SIMD[ffi.c_int.dtype, 4]
alias __clang_svint64x4_t = SIMD[ffi.c_long_long.dtype, 4]
alias __clang_svuint8x4_t = SIMD[UInt8.dtype, 4]
alias __clang_svuint16x4_t = SIMD[UInt16.dtype, 4]
alias __clang_svuint32x4_t = SIMD[ffi.c_int.dtype, 4]
alias __clang_svuint64x4_t = SIMD[ffi.c_ulong_long.dtype, 4]
alias __clang_svfloat16x4_t = SIMD[Float16.dtype, 4]
alias __clang_svfloat32x4_t = SIMD[Float32.dtype, 4]
alias __clang_svfloat64x4_t = SIMD[Float64.dtype, 4]
alias __clang_svbfloat16x4_t = SIMD[BFloat16.dtype, 4]
alias __SVBool_t = Bool
alias __builtin_ms_va_list = UnsafePointer[Int8]
struct __va_list(Copyable & Movable):
	pass
alias __builtin_va_list = __va_list

alias __u_char = UInt8
alias __u_short = UInt16
alias __u_int = ffi.c_int
alias __u_long = ffi.c_ulong
alias __int8_t = Int8
alias __uint8_t = UInt8
alias __int16_t = Int16
alias __uint16_t = UInt16
alias __int32_t = ffi.c_int
alias __uint32_t = ffi.c_int
alias __int64_t = ffi.c_long
alias __uint64_t = ffi.c_ulong
alias __int_least8_t = __int8_t
alias __uint_least8_t = __uint8_t
alias __int_least16_t = __int16_t
alias __uint_least16_t = __uint16_t
alias __int_least32_t = __int32_t
alias __uint_least32_t = __uint32_t
alias __int_least64_t = __int64_t
alias __uint_least64_t = __uint64_t
alias __quad_t = ffi.c_long
alias __u_quad_t = ffi.c_ulong
alias __intmax_t = ffi.c_long
alias __uintmax_t = ffi.c_ulong
alias __dev_t = ffi.c_ulong
alias __uid_t = ffi.c_int
alias __gid_t = ffi.c_int
alias __ino_t = ffi.c_ulong
alias __ino64_t = ffi.c_ulong
alias __mode_t = ffi.c_int
alias __nlink_t = ffi.c_int
alias __off_t = ffi.c_long
alias __off64_t = ffi.c_long
alias __pid_t = ffi.c_int
struct anonomous_record_9(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_9

alias __clock_t = ffi.c_long
alias __rlim_t = ffi.c_ulong
alias __rlim64_t = ffi.c_ulong
alias __id_t = ffi.c_int
alias __time_t = ffi.c_long
alias __useconds_t = ffi.c_int
alias __suseconds_t = ffi.c_long
alias __suseconds64_t = ffi.c_long
alias __daddr_t = ffi.c_int
alias __key_t = ffi.c_int
alias __clockid_t = ffi.c_int
alias __timer_t = OpaquePointer
alias __blksize_t = ffi.c_int
alias __blkcnt_t = ffi.c_long
alias __blkcnt64_t = ffi.c_long
alias __fsblkcnt_t = ffi.c_ulong
alias __fsblkcnt64_t = ffi.c_ulong
alias __fsfilcnt_t = ffi.c_ulong
alias __fsfilcnt64_t = ffi.c_ulong
alias __fsword_t = ffi.c_long
alias __ssize_t = ffi.c_long
alias __syscall_slong_t = ffi.c_long
alias __syscall_ulong_t = ffi.c_ulong
alias __loff_t = __off64_t
alias __caddr_t = UnsafePointer[Int8]
alias __intptr_t = ffi.c_long
alias __socklen_t = ffi.c_int
alias __sig_atomic_t = ffi.c_int
alias int8_t = __int8_t
alias int16_t = __int16_t
alias int32_t = __int32_t
alias int64_t = __int64_t
alias uint8_t = __uint8_t
alias uint16_t = __uint16_t
alias uint32_t = __uint32_t
alias uint64_t = __uint64_t
alias int_least8_t = __int_least8_t
alias int_least16_t = __int_least16_t
alias int_least32_t = __int_least32_t
alias int_least64_t = __int_least64_t
alias uint_least8_t = __uint_least8_t
alias uint_least16_t = __uint_least16_t
alias uint_least32_t = __uint_least32_t
alias uint_least64_t = __uint_least64_t
alias int_fast8_t = Int8
alias int_fast16_t = ffi.c_long
alias int_fast32_t = ffi.c_long
alias int_fast64_t = ffi.c_long
alias uint_fast8_t = UInt8
alias uint_fast16_t = ffi.c_ulong
alias uint_fast32_t = ffi.c_ulong
alias uint_fast64_t = ffi.c_ulong
alias intptr_t = ffi.c_long
alias uintptr_t = ffi.c_ulong
alias intmax_t = __intmax_t
alias uintmax_t = __uintmax_t
alias __assert_fail = fn (UnsafePointer[Int8], UnsafePointer[Int8], ffi.c_int, UnsafePointer[Int8]) -> NoneType
alias __assert_perror_fail = fn (ffi.c_int, UnsafePointer[Int8], ffi.c_int, UnsafePointer[Int8]) -> NoneType
alias __assert = fn (UnsafePointer[Int8], UnsafePointer[Int8], ffi.c_int) -> NoneType
alias size_t = ffi.c_ulong
alias alloca = fn (ffi.c_ulong) -> OpaquePointer
alias time_t = __time_t
struct timespec(Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_nsec : ffi.c_long

alias pid_t = __pid_t
struct sched_param(Copyable & Movable):
	var sched_priority : Int32

alias __cpu_mask = ffi.c_ulong
struct anonomous_record_10(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_10

alias __sched_cpucount = fn (size_t, UnsafePointer[cpu_set_t]) -> ffi.c_int
alias __sched_cpualloc = fn (size_t) -> UnsafePointer[cpu_set_t]
alias __sched_cpufree = fn (UnsafePointer[cpu_set_t]) -> NoneType
alias sched_setparam = fn (__pid_t, UnsafePointer[sched_param]) -> ffi.c_int
alias sched_getparam = fn (__pid_t, UnsafePointer[sched_param]) -> ffi.c_int
alias sched_setscheduler = fn (__pid_t, ffi.c_int, UnsafePointer[sched_param]) -> ffi.c_int
alias sched_getscheduler = fn (__pid_t) -> ffi.c_int
alias sched_yield = fn () -> ffi.c_int
alias sched_get_priority_max = fn (ffi.c_int) -> ffi.c_int
alias sched_get_priority_min = fn (ffi.c_int) -> ffi.c_int
alias sched_rr_get_interval = fn (__pid_t, UnsafePointer[timespec]) -> ffi.c_int
alias unaligned_uint64_t = uint64_t
alias unaligned_uint32_t = uint32_t
alias unaligned_uint16_t = uint16_t
alias rte_is_aligned = fn (OpaquePointer, ffi.c_int) -> ffi.c_int
alias phys_addr_t = uint64_t
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Physical address 

alias rte_iova_t = uint64_t
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  IO virtual address type.
# Node: TextComment()
#  When the physical addressing mode (IOVA as PA) is in use,
# Node: TextComment()
#  the translation from an IO virtual address (IOVA) to a physical address
# Node: TextComment()
#  is a direct mapping, i.e. the same value.
# Node: TextComment()
#  Otherwise, in virtual mode (IOVA as VA), an IOMMU may do the translation.

alias RTE_MARKER = InlineArray[OpaquePointer, 0]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Generic marker for any place in a structure. 

alias RTE_MARKER8 = InlineArray[uint8_t, 0]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 1B alignment in a structure. 

alias RTE_MARKER16 = InlineArray[uint16_t, 0]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 2B alignment in a structure. 

alias RTE_MARKER32 = InlineArray[uint32_t, 0]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 4B alignment in a structure. 

alias RTE_MARKER64 = InlineArray[uint64_t, 0]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 8B alignment in a structure. 

alias rte_str_to_size = fn (UnsafePointer[Int8]) -> ffi.c_ulong_long
alias rte_size_to_str = fn (UnsafePointer[Int8], ffi.c_int, ffi.c_ulong_long, Bool, UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_exit = fn (ffi.c_int, UnsafePointer[Int8]) -> NoneType
struct rte_tel_data(Copyable & Movable):

	pass
struct rte_tel_value_type(Copyable & Movable):

	alias RTE_TEL_STRING_VAL = 0

	alias RTE_TEL_INT_VAL = 1

	alias RTE_TEL_UINT_VAL = 2

	alias RTE_TEL_CONTAINER = 3

alias rte_tel_data_start_array = fn (UnsafePointer[rte_tel_data], rte_tel_value_type) -> ffi.c_int
alias rte_tel_data_start_dict = fn (UnsafePointer[rte_tel_data]) -> ffi.c_int
alias rte_tel_data_string = fn (UnsafePointer[rte_tel_data], UnsafePointer[Int8]) -> ffi.c_int
alias rte_tel_data_add_array_string = fn (UnsafePointer[rte_tel_data], UnsafePointer[Int8]) -> ffi.c_int
alias rte_tel_data_add_array_int = fn (UnsafePointer[rte_tel_data], ffi.c_long_long) -> ffi.c_int
alias rte_tel_data_add_array_uint = fn (UnsafePointer[rte_tel_data], ffi.c_ulong_long) -> ffi.c_int
alias rte_tel_data_add_array_u64 = fn (UnsafePointer[rte_tel_data], ffi.c_ulong_long) -> ffi.c_int
alias rte_tel_data_add_array_container = fn (UnsafePointer[rte_tel_data], UnsafePointer[rte_tel_data], ffi.c_int) -> ffi.c_int
alias rte_tel_data_add_array_uint_hex = fn (UnsafePointer[rte_tel_data], ffi.c_ulong_long, UInt8) -> ffi.c_int
alias rte_tel_data_add_dict_string = fn (UnsafePointer[rte_tel_data], UnsafePointer[Int8], UnsafePointer[Int8]) -> ffi.c_int
alias rte_tel_data_add_dict_int = fn (UnsafePointer[rte_tel_data], UnsafePointer[Int8], ffi.c_long_long) -> ffi.c_int
alias rte_tel_data_add_dict_uint = fn (UnsafePointer[rte_tel_data], UnsafePointer[Int8], ffi.c_ulong_long) -> ffi.c_int
alias rte_tel_data_add_dict_u64 = fn (UnsafePointer[rte_tel_data], UnsafePointer[Int8], ffi.c_ulong_long) -> ffi.c_int
alias rte_tel_data_add_dict_container = fn (UnsafePointer[rte_tel_data], UnsafePointer[Int8], UnsafePointer[rte_tel_data], ffi.c_int) -> ffi.c_int
alias rte_tel_data_add_dict_uint_hex = fn (UnsafePointer[rte_tel_data], UnsafePointer[Int8], ffi.c_ulong_long, UInt8) -> ffi.c_int
alias telemetry_cb = fn(read UnsafePointer[Int8], read UnsafePointer[Int8], UnsafePointer[rte_tel_data]) -> Int32
alias telemetry_arg_cb = fn(read UnsafePointer[Int8], read UnsafePointer[Int8], OpaquePointer, UnsafePointer[rte_tel_data]) -> Int32
alias handler = fn(OpaquePointer) -> OpaquePointer
alias rte_telemetry_register_cmd = fn (UnsafePointer[Int8], telemetry_cb, UnsafePointer[Int8]) -> ffi.c_int
alias rte_telemetry_register_cmd_arg = fn (UnsafePointer[Int8], telemetry_arg_cb, OpaquePointer, UnsafePointer[Int8]) -> ffi.c_int
alias rte_tel_data_free = fn (UnsafePointer[rte_tel_data]) -> NoneType
alias rte_tel_data_alloc = fn () -> UnsafePointer[rte_tel_data]


alias rte_telemetry_alloca = ExternalFunction['alloca', alloca]
alias rte_telemetry_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_telemetry_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_telemetry_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_telemetry_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_telemetry_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_telemetry_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_telemetry_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_telemetry_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_telemetry_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_telemetry_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_telemetry_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_telemetry_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_telemetry_rte_tel_data_start_array = ExternalFunction['rte_tel_data_start_array', rte_tel_data_start_array]
alias rte_telemetry_rte_tel_data_start_dict = ExternalFunction['rte_tel_data_start_dict', rte_tel_data_start_dict]
alias rte_telemetry_rte_tel_data_string = ExternalFunction['rte_tel_data_string', rte_tel_data_string]
alias rte_telemetry_rte_tel_data_add_array_string = ExternalFunction['rte_tel_data_add_array_string', rte_tel_data_add_array_string]
alias rte_telemetry_rte_tel_data_add_array_int = ExternalFunction['rte_tel_data_add_array_int', rte_tel_data_add_array_int]
alias rte_telemetry_rte_tel_data_add_array_uint = ExternalFunction['rte_tel_data_add_array_uint', rte_tel_data_add_array_uint]
alias rte_telemetry_rte_tel_data_add_array_u64 = ExternalFunction['rte_tel_data_add_array_u64', rte_tel_data_add_array_u64]
alias rte_telemetry_rte_tel_data_add_array_container = ExternalFunction['rte_tel_data_add_array_container', rte_tel_data_add_array_container]
alias rte_telemetry_rte_tel_data_add_array_uint_hex = ExternalFunction['rte_tel_data_add_array_uint_hex', rte_tel_data_add_array_uint_hex]
alias rte_telemetry_rte_tel_data_add_dict_string = ExternalFunction['rte_tel_data_add_dict_string', rte_tel_data_add_dict_string]
alias rte_telemetry_rte_tel_data_add_dict_int = ExternalFunction['rte_tel_data_add_dict_int', rte_tel_data_add_dict_int]
alias rte_telemetry_rte_tel_data_add_dict_uint = ExternalFunction['rte_tel_data_add_dict_uint', rte_tel_data_add_dict_uint]
alias rte_telemetry_rte_tel_data_add_dict_u64 = ExternalFunction['rte_tel_data_add_dict_u64', rte_tel_data_add_dict_u64]
alias rte_telemetry_rte_tel_data_add_dict_container = ExternalFunction['rte_tel_data_add_dict_container', rte_tel_data_add_dict_container]
alias rte_telemetry_rte_tel_data_add_dict_uint_hex = ExternalFunction['rte_tel_data_add_dict_uint_hex', rte_tel_data_add_dict_uint_hex]
alias rte_telemetry_rte_telemetry_register_cmd = ExternalFunction['rte_telemetry_register_cmd', rte_telemetry_register_cmd]
alias rte_telemetry_rte_telemetry_register_cmd_arg = ExternalFunction['rte_telemetry_register_cmd_arg', rte_telemetry_register_cmd_arg]
alias rte_telemetry_rte_tel_data_free = ExternalFunction['rte_tel_data_free', rte_tel_data_free]
alias rte_telemetry_rte_tel_data_alloc = ExternalFunction['rte_tel_data_alloc', rte_tel_data_alloc]

@always_inline
fn _get_lib_path(so_file_name: String) raises -> Path:
    var env_var_name:String = so_file_name.split('.')[0].upper() + '_LIB_PATH'

    var checked_paths: List[Path] = []

    for ld_path in getenv('LD_LIBRARY_PATH').split(':'):
        if (path := Path(ld_path) / so_file_name).exists():
            return path
        checked_paths.append(path)

    var extra_paths: List[Path] = [
        Path('/usr/local/lib'),
        Path('/usr/lib'),
        Path('/lib'),
        Path(so_file_name),
        Path.home() / '.local' / 'lib',
    ]

    for extra_path in extra_paths:
        if (path := extra_path / so_file_name).exists():
            return path
        checked_paths.append(extra_path)

    if (path := Path(getenv(env_var_name)) / so_file_name).exists():
        return path
    else:
        var msg = String("Could not find library: {0} in any of the following paths: {1} or {2}={3}").format(
            so_file_name, 
            String(", ").join(checked_paths), 
            env_var_name, 
            getenv(env_var_name)
        )
        raise Error(
            msg
        )


@fieldwise_init
struct rte_telemetry(Copyable, Movable):
    var lib: DLHandle
    
    var alloca: rte_telemetry_alloca.type
    var sched_setparam: rte_telemetry_sched_setparam.type
    var sched_getparam: rte_telemetry_sched_getparam.type
    var sched_setscheduler: rte_telemetry_sched_setscheduler.type
    var sched_getscheduler: rte_telemetry_sched_getscheduler.type
    var sched_yield: rte_telemetry_sched_yield.type
    var sched_get_priority_max: rte_telemetry_sched_get_priority_max.type
    var sched_get_priority_min: rte_telemetry_sched_get_priority_min.type
    var sched_rr_get_interval: rte_telemetry_sched_rr_get_interval.type
    var rte_is_aligned: rte_telemetry_rte_is_aligned.type
    var rte_str_to_size: rte_telemetry_rte_str_to_size.type
    var rte_size_to_str: rte_telemetry_rte_size_to_str.type
    var rte_exit: rte_telemetry_rte_exit.type
    var rte_tel_data_start_array: rte_telemetry_rte_tel_data_start_array.type
    var rte_tel_data_start_dict: rte_telemetry_rte_tel_data_start_dict.type
    var rte_tel_data_string: rte_telemetry_rte_tel_data_string.type
    var rte_tel_data_add_array_string: rte_telemetry_rte_tel_data_add_array_string.type
    var rte_tel_data_add_array_int: rte_telemetry_rte_tel_data_add_array_int.type
    var rte_tel_data_add_array_uint: rte_telemetry_rte_tel_data_add_array_uint.type
    var rte_tel_data_add_array_u64: rte_telemetry_rte_tel_data_add_array_u64.type
    var rte_tel_data_add_array_container: rte_telemetry_rte_tel_data_add_array_container.type
    var rte_tel_data_add_array_uint_hex: rte_telemetry_rte_tel_data_add_array_uint_hex.type
    var rte_tel_data_add_dict_string: rte_telemetry_rte_tel_data_add_dict_string.type
    var rte_tel_data_add_dict_int: rte_telemetry_rte_tel_data_add_dict_int.type
    var rte_tel_data_add_dict_uint: rte_telemetry_rte_tel_data_add_dict_uint.type
    var rte_tel_data_add_dict_u64: rte_telemetry_rte_tel_data_add_dict_u64.type
    var rte_tel_data_add_dict_container: rte_telemetry_rte_tel_data_add_dict_container.type
    var rte_tel_data_add_dict_uint_hex: rte_telemetry_rte_tel_data_add_dict_uint_hex.type
    var rte_telemetry_register_cmd: rte_telemetry_rte_telemetry_register_cmd.type
    var rte_telemetry_register_cmd_arg: rte_telemetry_rte_telemetry_register_cmd_arg.type
    var rte_tel_data_free: rte_telemetry_rte_tel_data_free.type
    var rte_tel_data_alloc: rte_telemetry_rte_tel_data_alloc.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_telemetry.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_telemetry from", 'librte_telemetry.so', ":\n", e)
            )

    
        self.alloca = rte_telemetry_alloca.load(self.lib)
        self.sched_setparam = rte_telemetry_sched_setparam.load(self.lib)
        self.sched_getparam = rte_telemetry_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_telemetry_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_telemetry_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_telemetry_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_telemetry_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_telemetry_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_telemetry_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_telemetry_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_telemetry_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_telemetry_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_telemetry_rte_exit.load(self.lib)
        self.rte_tel_data_start_array = rte_telemetry_rte_tel_data_start_array.load(self.lib)
        self.rte_tel_data_start_dict = rte_telemetry_rte_tel_data_start_dict.load(self.lib)
        self.rte_tel_data_string = rte_telemetry_rte_tel_data_string.load(self.lib)
        self.rte_tel_data_add_array_string = rte_telemetry_rte_tel_data_add_array_string.load(self.lib)
        self.rte_tel_data_add_array_int = rte_telemetry_rte_tel_data_add_array_int.load(self.lib)
        self.rte_tel_data_add_array_uint = rte_telemetry_rte_tel_data_add_array_uint.load(self.lib)
        self.rte_tel_data_add_array_u64 = rte_telemetry_rte_tel_data_add_array_u64.load(self.lib)
        self.rte_tel_data_add_array_container = rte_telemetry_rte_tel_data_add_array_container.load(self.lib)
        self.rte_tel_data_add_array_uint_hex = rte_telemetry_rte_tel_data_add_array_uint_hex.load(self.lib)
        self.rte_tel_data_add_dict_string = rte_telemetry_rte_tel_data_add_dict_string.load(self.lib)
        self.rte_tel_data_add_dict_int = rte_telemetry_rte_tel_data_add_dict_int.load(self.lib)
        self.rte_tel_data_add_dict_uint = rte_telemetry_rte_tel_data_add_dict_uint.load(self.lib)
        self.rte_tel_data_add_dict_u64 = rte_telemetry_rte_tel_data_add_dict_u64.load(self.lib)
        self.rte_tel_data_add_dict_container = rte_telemetry_rte_tel_data_add_dict_container.load(self.lib)
        self.rte_tel_data_add_dict_uint_hex = rte_telemetry_rte_tel_data_add_dict_uint_hex.load(self.lib)
        self.rte_telemetry_register_cmd = rte_telemetry_rte_telemetry_register_cmd.load(self.lib)
        self.rte_telemetry_register_cmd_arg = rte_telemetry_rte_telemetry_register_cmd_arg.load(self.lib)
        self.rte_tel_data_free = rte_telemetry_rte_tel_data_free.load(self.lib)
        self.rte_tel_data_alloc = rte_telemetry_rte_tel_data_alloc.load(self.lib)

