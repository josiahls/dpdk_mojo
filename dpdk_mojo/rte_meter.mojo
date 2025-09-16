
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
alias __SVInt32_t = Int32
alias __SVInt64_t = ffi.c_long
alias __SVUint8_t = UInt8
alias __SVUint16_t = UInt16
alias __SVUint32_t = UInt32
alias __SVUint64_t = ffi.c_ulong
alias __SVFloat16_t = Float16
alias __SVFloat32_t = Float32
alias __SVFloat64_t = Float64
alias __SVBFloat16_t = BFloat16
alias __clang_svint8x2_t = SIMD[Int8.dtype, 2]
alias __clang_svint16x2_t = SIMD[Int16.dtype, 2]
alias __clang_svint32x2_t = SIMD[Int32.dtype, 2]
alias __clang_svint64x2_t = SIMD[ffi.c_long.dtype, 2]
alias __clang_svuint8x2_t = SIMD[UInt8.dtype, 2]
alias __clang_svuint16x2_t = SIMD[UInt16.dtype, 2]
alias __clang_svuint32x2_t = SIMD[UInt32.dtype, 2]
alias __clang_svuint64x2_t = SIMD[ffi.c_ulong.dtype, 2]
alias __clang_svfloat16x2_t = SIMD[Float16.dtype, 2]
alias __clang_svfloat32x2_t = SIMD[Float32.dtype, 2]
alias __clang_svfloat64x2_t = SIMD[Float64.dtype, 2]
alias __clang_svbfloat16x2_t = SIMD[BFloat16.dtype, 2]
alias __clang_svint8x3_t = SIMD[Int8.dtype, 3]
alias __clang_svint16x3_t = SIMD[Int16.dtype, 3]
alias __clang_svint32x3_t = SIMD[Int32.dtype, 3]
alias __clang_svint64x3_t = SIMD[ffi.c_long.dtype, 3]
alias __clang_svuint8x3_t = SIMD[UInt8.dtype, 3]
alias __clang_svuint16x3_t = SIMD[UInt16.dtype, 3]
alias __clang_svuint32x3_t = SIMD[UInt32.dtype, 3]
alias __clang_svuint64x3_t = SIMD[ffi.c_ulong.dtype, 3]
alias __clang_svfloat16x3_t = SIMD[Float16.dtype, 3]
alias __clang_svfloat32x3_t = SIMD[Float32.dtype, 3]
alias __clang_svfloat64x3_t = SIMD[Float64.dtype, 3]
alias __clang_svbfloat16x3_t = SIMD[BFloat16.dtype, 3]
alias __clang_svint8x4_t = SIMD[Int8.dtype, 4]
alias __clang_svint16x4_t = SIMD[Int16.dtype, 4]
alias __clang_svint32x4_t = SIMD[Int32.dtype, 4]
alias __clang_svint64x4_t = SIMD[ffi.c_long.dtype, 4]
alias __clang_svuint8x4_t = SIMD[UInt8.dtype, 4]
alias __clang_svuint16x4_t = SIMD[UInt16.dtype, 4]
alias __clang_svuint32x4_t = SIMD[UInt32.dtype, 4]
alias __clang_svuint64x4_t = SIMD[ffi.c_ulong.dtype, 4]
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
struct anonomous_record_104(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_104

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
struct rte_color(Copyable & Movable):

	alias RTE_COLOR_GREEN = 0

	alias RTE_COLOR_YELLOW = 1

	alias RTE_COLOR_RED = 2

	alias RTE_COLORS = 3

struct rte_meter_srtcm_params(Copyable & Movable):

	var cir : ffi.c_ulong

	var cbs : ffi.c_ulong

	var ebs : ffi.c_ulong

struct rte_meter_trtcm_params(Copyable & Movable):

	var cir : ffi.c_ulong

	var pir : ffi.c_ulong

	var cbs : ffi.c_ulong

	var pbs : ffi.c_ulong

struct rte_meter_trtcm_rfc4115_params(Copyable & Movable):

	var cir : ffi.c_ulong

	var eir : ffi.c_ulong

	var cbs : ffi.c_ulong

	var ebs : ffi.c_ulong

struct rte_meter_srtcm_profile(Copyable & Movable):

	pass
struct rte_meter_trtcm_profile(Copyable & Movable):

	pass
struct rte_meter_trtcm_rfc4115_profile(Copyable & Movable):

	pass
struct rte_meter_srtcm(Copyable & Movable):

	pass
struct rte_meter_trtcm(Copyable & Movable):

	pass
struct rte_meter_trtcm_rfc4115(Copyable & Movable):

	pass
alias rte_meter_srtcm_profile_config = fn (UnsafePointer[rte_meter_srtcm_profile], UnsafePointer[rte_meter_srtcm_params]) -> Int32
alias rte_meter_trtcm_profile_config = fn (UnsafePointer[rte_meter_trtcm_profile], UnsafePointer[rte_meter_trtcm_params]) -> Int32
alias rte_meter_trtcm_rfc4115_profile_config = fn (UnsafePointer[rte_meter_trtcm_rfc4115_profile], UnsafePointer[rte_meter_trtcm_rfc4115_params]) -> Int32
alias rte_meter_srtcm_config = fn (UnsafePointer[rte_meter_srtcm], UnsafePointer[rte_meter_srtcm_profile]) -> Int32
alias rte_meter_trtcm_config = fn (UnsafePointer[rte_meter_trtcm], UnsafePointer[rte_meter_trtcm_profile]) -> Int32
alias rte_meter_trtcm_rfc4115_config = fn (UnsafePointer[rte_meter_trtcm_rfc4115], UnsafePointer[rte_meter_trtcm_rfc4115_profile]) -> Int32
alias rte_meter_srtcm_color_blind_check = fn (UnsafePointer[rte_meter_srtcm], UnsafePointer[rte_meter_srtcm_profile], ffi.c_ulong, UInt32) -> rte_color
alias rte_meter_srtcm_color_aware_check = fn (UnsafePointer[rte_meter_srtcm], UnsafePointer[rte_meter_srtcm_profile], ffi.c_ulong, UInt32, rte_color) -> rte_color
alias rte_meter_trtcm_color_blind_check = fn (UnsafePointer[rte_meter_trtcm], UnsafePointer[rte_meter_trtcm_profile], ffi.c_ulong, UInt32) -> rte_color
alias rte_meter_trtcm_color_aware_check = fn (UnsafePointer[rte_meter_trtcm], UnsafePointer[rte_meter_trtcm_profile], ffi.c_ulong, UInt32, rte_color) -> rte_color
alias rte_meter_trtcm_rfc4115_color_blind_check = fn (UnsafePointer[rte_meter_trtcm_rfc4115], UnsafePointer[rte_meter_trtcm_rfc4115_profile], ffi.c_ulong, UInt32) -> rte_color
alias rte_meter_trtcm_rfc4115_color_aware_check = fn (UnsafePointer[rte_meter_trtcm_rfc4115], UnsafePointer[rte_meter_trtcm_rfc4115_profile], ffi.c_ulong, UInt32, rte_color) -> rte_color


alias rte_meter_rte_meter_srtcm_profile_config = ExternalFunction['rte_meter_srtcm_profile_config', rte_meter_srtcm_profile_config]
alias rte_meter_rte_meter_trtcm_profile_config = ExternalFunction['rte_meter_trtcm_profile_config', rte_meter_trtcm_profile_config]
alias rte_meter_rte_meter_trtcm_rfc4115_profile_config = ExternalFunction['rte_meter_trtcm_rfc4115_profile_config', rte_meter_trtcm_rfc4115_profile_config]
alias rte_meter_rte_meter_srtcm_config = ExternalFunction['rte_meter_srtcm_config', rte_meter_srtcm_config]
alias rte_meter_rte_meter_trtcm_config = ExternalFunction['rte_meter_trtcm_config', rte_meter_trtcm_config]
alias rte_meter_rte_meter_trtcm_rfc4115_config = ExternalFunction['rte_meter_trtcm_rfc4115_config', rte_meter_trtcm_rfc4115_config]
alias rte_meter_rte_meter_srtcm_color_blind_check = ExternalFunction['rte_meter_srtcm_color_blind_check', rte_meter_srtcm_color_blind_check]
alias rte_meter_rte_meter_srtcm_color_aware_check = ExternalFunction['rte_meter_srtcm_color_aware_check', rte_meter_srtcm_color_aware_check]
alias rte_meter_rte_meter_trtcm_color_blind_check = ExternalFunction['rte_meter_trtcm_color_blind_check', rte_meter_trtcm_color_blind_check]
alias rte_meter_rte_meter_trtcm_color_aware_check = ExternalFunction['rte_meter_trtcm_color_aware_check', rte_meter_trtcm_color_aware_check]
alias rte_meter_rte_meter_trtcm_rfc4115_color_blind_check = ExternalFunction['rte_meter_trtcm_rfc4115_color_blind_check', rte_meter_trtcm_rfc4115_color_blind_check]
alias rte_meter_rte_meter_trtcm_rfc4115_color_aware_check = ExternalFunction['rte_meter_trtcm_rfc4115_color_aware_check', rte_meter_trtcm_rfc4115_color_aware_check]

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
struct rte_meter(Copyable, Movable):
    var lib: DLHandle
    
    var rte_meter_srtcm_profile_config: rte_meter_rte_meter_srtcm_profile_config.type
    var rte_meter_trtcm_profile_config: rte_meter_rte_meter_trtcm_profile_config.type
    var rte_meter_trtcm_rfc4115_profile_config: rte_meter_rte_meter_trtcm_rfc4115_profile_config.type
    var rte_meter_srtcm_config: rte_meter_rte_meter_srtcm_config.type
    var rte_meter_trtcm_config: rte_meter_rte_meter_trtcm_config.type
    var rte_meter_trtcm_rfc4115_config: rte_meter_rte_meter_trtcm_rfc4115_config.type
    var rte_meter_srtcm_color_blind_check: rte_meter_rte_meter_srtcm_color_blind_check.type
    var rte_meter_srtcm_color_aware_check: rte_meter_rte_meter_srtcm_color_aware_check.type
    var rte_meter_trtcm_color_blind_check: rte_meter_rte_meter_trtcm_color_blind_check.type
    var rte_meter_trtcm_color_aware_check: rte_meter_rte_meter_trtcm_color_aware_check.type
    var rte_meter_trtcm_rfc4115_color_blind_check: rte_meter_rte_meter_trtcm_rfc4115_color_blind_check.type
    var rte_meter_trtcm_rfc4115_color_aware_check: rte_meter_rte_meter_trtcm_rfc4115_color_aware_check.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_meter.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_meter from", 'librte_meter.so', ":\n", e)
            )

    
        self.rte_meter_srtcm_profile_config = rte_meter_rte_meter_srtcm_profile_config.load(self.lib)
        self.rte_meter_trtcm_profile_config = rte_meter_rte_meter_trtcm_profile_config.load(self.lib)
        self.rte_meter_trtcm_rfc4115_profile_config = rte_meter_rte_meter_trtcm_rfc4115_profile_config.load(self.lib)
        self.rte_meter_srtcm_config = rte_meter_rte_meter_srtcm_config.load(self.lib)
        self.rte_meter_trtcm_config = rte_meter_rte_meter_trtcm_config.load(self.lib)
        self.rte_meter_trtcm_rfc4115_config = rte_meter_rte_meter_trtcm_rfc4115_config.load(self.lib)
        self.rte_meter_srtcm_color_blind_check = rte_meter_rte_meter_srtcm_color_blind_check.load(self.lib)
        self.rte_meter_srtcm_color_aware_check = rte_meter_rte_meter_srtcm_color_aware_check.load(self.lib)
        self.rte_meter_trtcm_color_blind_check = rte_meter_rte_meter_trtcm_color_blind_check.load(self.lib)
        self.rte_meter_trtcm_color_aware_check = rte_meter_rte_meter_trtcm_color_aware_check.load(self.lib)
        self.rte_meter_trtcm_rfc4115_color_blind_check = rte_meter_rte_meter_trtcm_rfc4115_color_blind_check.load(self.lib)
        self.rte_meter_trtcm_rfc4115_color_aware_check = rte_meter_rte_meter_trtcm_rfc4115_color_aware_check.load(self.lib)

