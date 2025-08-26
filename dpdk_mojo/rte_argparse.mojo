
from sys.ffi import DLHandle
from sys import ffi
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from pathlib import Path
from c_binder_mojo.stdlib_ext import C_Union
from utils import StaticTuple

# Node: TranslationUnitDecl()
alias __int128_t = Int128
alias __uint128_t = UInt128
@register_passable("trivial")
struct __NSConstantString_tag:
	pass
alias __NSConstantString = __NSConstantString_tag

alias __SVInt8_t = Int8
alias __SVInt16_t = Int16
alias __SVInt32_t = Int32
alias __SVInt64_t = Int64
alias __SVUint8_t = UInt8
alias __SVUint16_t = UInt16
alias __SVUint32_t = UInt32
alias __SVUint64_t = UInt64
alias __SVFloat16_t = Float16
alias __SVFloat32_t = Float32
alias __SVFloat64_t = Float64
alias __SVBFloat16_t = BFloat16
alias __clang_svint8x2_t = UnsafePointer[Int8]
alias __clang_svint16x2_t = UnsafePointer[Int16]
alias __clang_svint32x2_t = UnsafePointer[Int32]
alias __clang_svint64x2_t = UnsafePointer[Int64]
alias __clang_svuint8x2_t = UnsafePointer[UInt8]
alias __clang_svuint16x2_t = UnsafePointer[UInt16]
alias __clang_svuint32x2_t = UnsafePointer[UInt32]
alias __clang_svuint64x2_t = UnsafePointer[UInt64]
alias __clang_svfloat16x2_t = UnsafePointer[Float16]
alias __clang_svfloat32x2_t = UnsafePointer[Float32]
alias __clang_svfloat64x2_t = UnsafePointer[Float64]
alias __clang_svbfloat16x2_t = UnsafePointer[BFloat16]
alias __clang_svint8x3_t = UnsafePointer[Int8]
alias __clang_svint16x3_t = UnsafePointer[Int16]
alias __clang_svint32x3_t = UnsafePointer[Int32]
alias __clang_svint64x3_t = UnsafePointer[Int64]
alias __clang_svuint8x3_t = UnsafePointer[UInt8]
alias __clang_svuint16x3_t = UnsafePointer[UInt16]
alias __clang_svuint32x3_t = UnsafePointer[UInt32]
alias __clang_svuint64x3_t = UnsafePointer[UInt64]
alias __clang_svfloat16x3_t = UnsafePointer[Float16]
alias __clang_svfloat32x3_t = UnsafePointer[Float32]
alias __clang_svfloat64x3_t = UnsafePointer[Float64]
alias __clang_svbfloat16x3_t = UnsafePointer[BFloat16]
alias __clang_svint8x4_t = UnsafePointer[Int8]
alias __clang_svint16x4_t = UnsafePointer[Int16]
alias __clang_svint32x4_t = UnsafePointer[Int32]
alias __clang_svint64x4_t = UnsafePointer[Int64]
alias __clang_svuint8x4_t = UnsafePointer[UInt8]
alias __clang_svuint16x4_t = UnsafePointer[UInt16]
alias __clang_svuint32x4_t = UnsafePointer[UInt32]
alias __clang_svuint64x4_t = UnsafePointer[UInt64]
alias __clang_svfloat16x4_t = UnsafePointer[Float16]
alias __clang_svfloat32x4_t = UnsafePointer[Float32]
alias __clang_svfloat64x4_t = UnsafePointer[Float64]
alias __clang_svbfloat16x4_t = UnsafePointer[BFloat16]
alias __SVBool_t = Bool
alias __builtin_ms_va_list = UnsafePointer[Int8]
@register_passable("trivial")
struct __va_list:
	pass
alias __builtin_va_list = __va_list

alias __u_char = UInt8
alias __u_short = UInt16
alias __u_int = UInt32
alias __u_long = ffi.c_ulong
alias __int8_t = Int8
alias __uint8_t = UInt8
alias __int16_t = Int16
alias __uint16_t = UInt16
alias __int32_t = Int32
alias __uint32_t = UInt32
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
alias __uid_t = UInt32
alias __gid_t = UInt32
alias __ino_t = ffi.c_ulong
alias __ino64_t = ffi.c_ulong
alias __mode_t = UInt32
alias __nlink_t = UInt32
alias __off_t = ffi.c_long
alias __off64_t = ffi.c_long
alias __pid_t = Int32
@register_passable("trivial")
struct anonomous_record_1:
	var __val : StaticTuple[Int32, 2]

alias __fsid_t = anonomous_record_1

alias __clock_t = ffi.c_long
alias __rlim_t = ffi.c_ulong
alias __rlim64_t = ffi.c_ulong
alias __id_t = UInt32
alias __time_t = ffi.c_long
alias __useconds_t = UInt32
alias __suseconds_t = ffi.c_long
alias __suseconds64_t = ffi.c_long
alias __daddr_t = Int32
alias __key_t = Int32
alias __clockid_t = Int32
alias __timer_t = OpaquePointer
alias __blksize_t = Int32
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
alias __socklen_t = UInt32
alias __sig_atomic_t = Int32
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
@register_passable("trivial")
struct rte_argparse_value_required:

	alias RTE_ARGPARSE_VALUE_NONE = 0

	alias RTE_ARGPARSE_VALUE_REQUIRED = 1

	alias RTE_ARGPARSE_VALUE_OPTIONAL = 2

@register_passable("trivial")
struct rte_argparse_value_type:

	alias RTE_ARGPARSE_VALUE_TYPE_NONE = 0

	alias RTE_ARGPARSE_VALUE_TYPE_INT = 1

	alias RTE_ARGPARSE_VALUE_TYPE_U8 = 2

	alias RTE_ARGPARSE_VALUE_TYPE_U16 = 3

	alias RTE_ARGPARSE_VALUE_TYPE_U32 = 4

	alias RTE_ARGPARSE_VALUE_TYPE_U64 = 5

	alias RTE_ARGPARSE_VALUE_TYPE_STR = 6

	alias RTE_ARGPARSE_VALUE_TYPE_BOOL = 7

@register_passable("trivial")
struct rte_argparse_arg_flags:

	alias RTE_ARGPARSE_FLAG_SUPPORT_MULTI = 0

alias RTE_BIT32 = fn () -> Int32
@register_passable("trivial")
struct rte_argparse_arg:

	var name_long : UnsafePointer[Int8]

	var name_short : UnsafePointer[Int8]

	var help : UnsafePointer[Int8]

	var val_saver : OpaquePointer

	var val_set : OpaquePointer

	var value_required : rte_argparse_value_required

	var value_type : rte_argparse_value_type

	var flags : UInt32

alias rte_arg_parser_t = fn(ffi.c_ulong, read UnsafePointer[Int8], OpaquePointer) -> Int32
@register_passable("trivial")
struct rte_argparse:

	var prog_name : UnsafePointer[Int8]

	var usage : UnsafePointer[Int8]

	var descriptor : UnsafePointer[Int8]

	var epilog : UnsafePointer[Int8]

	var exit_on_error : Bool

	var callback : fn(ffi.c_ulong, read UnsafePointer[Int8], OpaquePointer) -> Int32

	var opaque : OpaquePointer

	var reserved : StaticTuple[OpaquePointer, 16]

	var args : UnsafePointer[rte_argparse_arg] # Failed to parse array size

alias rte_argparse_parse = fn (read UnsafePointer[rte_argparse], Int32, UnsafePointer[UnsafePointer[Int8]]) -> Int32
alias rte_argparse_parse_type = fn (read UnsafePointer[Int8], rte_argparse_value_type, OpaquePointer) -> Int32


alias rte_argparse_rte_argparse_parse = ExternalFunction['rte_argparse_parse', rte_argparse_parse]
alias rte_argparse_rte_argparse_parse_type = ExternalFunction['rte_argparse_parse_type', rte_argparse_parse_type]

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
struct rte_argparse(Copyable, Movable):
    """Handle to the CPython interpreter present in the current process."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var lib: DLHandle
    
    var rte_argparse_parse: rte_argparse_rte_argparse_parse.type
    var rte_argparse_parse_type: rte_argparse_rte_argparse_parse_type.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_argparse.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_argparse from", 'librte_argparse.so', ":\n", e)
            )

    
        self.rte_argparse_parse = rte_argparse_rte_argparse_parse.load(self.lib)
        self.rte_argparse_parse_type = rte_argparse_rte_argparse_parse_type.load(self.lib)

