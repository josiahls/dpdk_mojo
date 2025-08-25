
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

alias size_t = ffi.c_ulong
alias wchar_t = UInt32
alias _Float128 = Float64
alias _Float32 = Float32
alias _Float64 = Float64
alias _Float32x = Float64
alias _Float64x = Float64
@register_passable("trivial")
struct anonomous_record_1:
	var quot : Int32

	var rem : Int32

alias div_t = anonomous_record_1

@register_passable("trivial")
struct anonomous_record_2:
	var quot : ffi.c_long

	var rem : ffi.c_long

alias ldiv_t = anonomous_record_2

@register_passable("trivial")
struct anonomous_record_3:
	var quot : ffi.c_long_long

	var rem : ffi.c_long_long

alias lldiv_t = anonomous_record_3

alias __ctype_get_mb_cur_max = fn (NoneType) -> size_t
alias atof = fn (read UnsafePointer[Int8]) -> Float64
alias atoi = fn (read UnsafePointer[Int8]) -> Int32
alias atol = fn (read UnsafePointer[Int8]) -> ffi.c_long
alias atoll = fn (read UnsafePointer[Int8]) -> ffi.c_long_long
alias strtod = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> Float64
alias strtof = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> Float32
alias strtold = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> Float64
alias strtol = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_long
alias strtoul = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_ulong
alias strtoq = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_long_long
alias strtouq = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_ulong_long
alias strtoll = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_long_long
alias strtoull = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_ulong_long
alias l64a = fn (ffi.c_long) -> UnsafePointer[Int8]
alias a64l = fn (read UnsafePointer[Int8]) -> ffi.c_long
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
struct anonomous_record_4:
	var __val : StaticTuple[Int32, 2]

alias __fsid_t = anonomous_record_4

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
alias u_char = __u_char
alias u_short = __u_short
alias u_int = __u_int
alias u_long = __u_long
alias quad_t = __quad_t
alias u_quad_t = __u_quad_t
alias fsid_t = __fsid_t
alias loff_t = __loff_t
alias ino_t = __ino_t
alias dev_t = __dev_t
alias gid_t = __gid_t
alias mode_t = __mode_t
alias nlink_t = __nlink_t
alias uid_t = __uid_t
alias off_t = __off_t
alias pid_t = __pid_t
alias id_t = __id_t
alias ssize_t = __ssize_t
alias daddr_t = __daddr_t
alias caddr_t = __caddr_t
alias key_t = __key_t
alias clock_t = __clock_t
alias clockid_t = __clockid_t
alias time_t = __time_t
alias timer_t = __timer_t
alias ulong = ffi.c_ulong
alias ushort = UInt16
alias uint = UInt32
alias int8_t = __int8_t
alias int16_t = __int16_t
alias int32_t = __int32_t
alias int64_t = __int64_t
alias u_int8_t = __uint8_t
alias u_int16_t = __uint16_t
alias u_int32_t = __uint32_t
alias u_int64_t = __uint64_t
alias register_t = ffi.c_long

alias __bswap_16 = fn (__uint16_t) -> __uint16_t
alias __bswap_32 = fn (__uint32_t) -> __uint32_t
alias __bswap_64 = fn (__uint64_t) -> __uint64_t
alias __uint16_identity = fn (__uint16_t) -> __uint16_t
alias __uint32_identity = fn (__uint32_t) -> __uint32_t
alias __uint64_identity = fn (__uint64_t) -> __uint64_t
@register_passable("trivial")
struct anonomous_record_5:
	var __val : StaticTuple[ffi.c_ulong, 16]

alias __sigset_t = anonomous_record_5

alias sigset_t = __sigset_t
@register_passable("trivial")
struct timeval:
	var tv_sec : ffi.c_long

	var tv_usec : ffi.c_long

@register_passable("trivial")
struct timespec:
	var tv_sec : ffi.c_long

	var tv_nsec : ffi.c_long

alias suseconds_t = __suseconds_t
alias __fd_mask = ffi.c_long
@register_passable("trivial")
struct anonomous_record_6:
	var __fds_bits : StaticTuple[__fd_mask, 16]

alias fd_set = anonomous_record_6

alias fd_mask = __fd_mask
alias select = fn (Int32, UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[timeval]) -> Int32
alias pselect = fn (Int32, UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[fd_set], read UnsafePointer[timespec], read UnsafePointer[__sigset_t]) -> Int32
alias blksize_t = __blksize_t
alias blkcnt_t = __blkcnt_t
alias fsblkcnt_t = __fsblkcnt_t
alias fsfilcnt_t = __fsfilcnt_t
@register_passable("trivial")
struct anonomous_record_7:
	var __low : UInt32

	var __high : UInt32

alias anonomous_record_8 = C_Union[ffi.c_ulong_long, anonomous_record_7]

alias __atomic_wide_counter = anonomous_record_8

@register_passable("trivial")
struct __pthread_internal_list:
	var __prev : UnsafePointer[__pthread_internal_list]

	var __next : UnsafePointer[__pthread_internal_list]

alias __pthread_list_t = __pthread_internal_list

@register_passable("trivial")
struct __pthread_internal_slist:
	var __next : UnsafePointer[__pthread_internal_slist]

alias __pthread_slist_t = __pthread_internal_slist

@register_passable("trivial")
struct __pthread_mutex_s:
	var __lock : Int32

	var __count : UInt32

	var __owner : Int32

	var __nusers : UInt32

	var __kind : Int32

	var __spins : Int32

	var __list : __pthread_internal_list

@register_passable("trivial")
struct __pthread_rwlock_arch_t:
	var __readers : UInt32

	var __writers : UInt32

	var __wrphase_futex : UInt32

	var __writers_futex : UInt32

	var __pad3 : UInt32

	var __pad4 : UInt32

	var __cur_writer : Int32

	var __shared : Int32

	var __pad1 : ffi.c_ulong

	var __pad2 : ffi.c_ulong

	var __flags : UInt32

@register_passable("trivial")
struct __pthread_cond_s:
	var __wseq : __atomic_wide_counter

	var __g1_start : __atomic_wide_counter

	var __g_refs : StaticTuple[UInt32, 2]

	var __g_size : StaticTuple[UInt32, 2]

	var __g1_orig_size : UInt32

	var __wrefs : UInt32

	var __g_signals : StaticTuple[UInt32, 2]

alias __tss_t = UInt32
alias __thrd_t = ffi.c_ulong
@register_passable("trivial")
struct anonomous_record_9:
	var __data : Int32

alias __once_flag = anonomous_record_9

alias pthread_t = ffi.c_ulong
alias anonomous_record_10 = C_Union[StaticTuple[Int8, 8], Int32]

alias pthread_mutexattr_t = anonomous_record_10

alias anonomous_record_11 = C_Union[StaticTuple[Int8, 8], Int32]

alias pthread_condattr_t = anonomous_record_11

alias pthread_key_t = UInt32
alias pthread_once_t = Int32
alias pthread_attr_t = C_Union[StaticTuple[Int8, 64], ffi.c_long]

alias anonomous_record_12 = C_Union[__pthread_mutex_s, StaticTuple[Int8, 48], ffi.c_long]

alias pthread_mutex_t = anonomous_record_12

alias anonomous_record_13 = C_Union[__pthread_cond_s, StaticTuple[Int8, 48], ffi.c_long_long]

alias pthread_cond_t = anonomous_record_13

alias anonomous_record_14 = C_Union[__pthread_rwlock_arch_t, StaticTuple[Int8, 56], ffi.c_long]

alias pthread_rwlock_t = anonomous_record_14

alias anonomous_record_15 = C_Union[StaticTuple[Int8, 8], ffi.c_long]

alias pthread_rwlockattr_t = anonomous_record_15

alias pthread_spinlock_t = Int32 # QualType: volatile
alias anonomous_record_16 = C_Union[StaticTuple[Int8, 32], ffi.c_long]

alias pthread_barrier_t = anonomous_record_16

alias anonomous_record_17 = C_Union[StaticTuple[Int8, 8], Int32]

alias pthread_barrierattr_t = anonomous_record_17

alias random = fn (NoneType) -> ffi.c_long
alias srandom = fn (UInt32) -> NoneType
alias initstate = fn (UInt32, UnsafePointer[Int8], size_t) -> UnsafePointer[Int8]
alias setstate = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
@register_passable("trivial")
struct random_data:
	var fptr : UnsafePointer[ffi.c_long]

	var rptr : UnsafePointer[ffi.c_long]

	var state : UnsafePointer[ffi.c_long]

	var rand_type : Int32

	var rand_deg : Int32

	var rand_sep : Int32

	var end_ptr : UnsafePointer[ffi.c_long]

alias random_r = fn (UnsafePointer[random_data], UnsafePointer[ffi.c_long]) -> Int32
alias srandom_r = fn (UInt32, UnsafePointer[random_data]) -> Int32
alias initstate_r = fn (UInt32, UnsafePointer[Int8], size_t, UnsafePointer[random_data]) -> Int32
alias setstate_r = fn (UnsafePointer[Int8], UnsafePointer[random_data]) -> Int32
alias rand = fn (NoneType) -> Int32
alias srand = fn (UInt32) -> NoneType
alias rand_r = fn (UnsafePointer[UInt32]) -> Int32
alias drand48 = fn (NoneType) -> Float64
alias erand48 = fn (UnsafePointer[UInt16]) -> Float64
alias lrand48 = fn (NoneType) -> ffi.c_long
alias nrand48 = fn (UnsafePointer[UInt16]) -> ffi.c_long
alias mrand48 = fn (NoneType) -> ffi.c_long
alias jrand48 = fn (UnsafePointer[UInt16]) -> ffi.c_long
alias srand48 = fn (ffi.c_long) -> NoneType
alias seed48 = fn (UnsafePointer[UInt16]) -> UnsafePointer[UInt16]
alias lcong48 = fn (UnsafePointer[UInt16]) -> NoneType
@register_passable("trivial")
struct drand48_data:
	var __x : StaticTuple[UInt16, 3]

	var __old_x : StaticTuple[UInt16, 3]

	var __c : UInt16

	var __init : UInt16

	var __a : ffi.c_ulong_long

alias drand48_r = fn (UnsafePointer[drand48_data], UnsafePointer[Float64]) -> Int32
alias erand48_r = fn (UnsafePointer[UInt16], UnsafePointer[drand48_data], UnsafePointer[Float64]) -> Int32
alias lrand48_r = fn (UnsafePointer[drand48_data], UnsafePointer[ffi.c_long]) -> Int32
alias nrand48_r = fn (UnsafePointer[UInt16], UnsafePointer[drand48_data], UnsafePointer[ffi.c_long]) -> Int32
alias mrand48_r = fn (UnsafePointer[drand48_data], UnsafePointer[ffi.c_long]) -> Int32
alias jrand48_r = fn (UnsafePointer[UInt16], UnsafePointer[drand48_data], UnsafePointer[ffi.c_long]) -> Int32
alias srand48_r = fn (ffi.c_long, UnsafePointer[drand48_data]) -> Int32
alias seed48_r = fn (UnsafePointer[UInt16], UnsafePointer[drand48_data]) -> Int32
alias lcong48_r = fn (UnsafePointer[UInt16], UnsafePointer[drand48_data]) -> Int32
alias malloc = fn (ffi.c_ulong) -> OpaquePointer
alias calloc = fn (ffi.c_ulong, ffi.c_ulong) -> OpaquePointer
alias realloc = fn (OpaquePointer, ffi.c_ulong) -> OpaquePointer
alias free = fn (OpaquePointer) -> NoneType
alias reallocarray = fn (OpaquePointer, size_t, size_t) -> OpaquePointer
alias alloca = fn (ffi.c_ulong) -> OpaquePointer
alias valloc = fn (size_t) -> OpaquePointer
alias posix_memalign = fn (UnsafePointer[OpaquePointer], size_t, size_t) -> Int32
alias aligned_alloc = fn (ffi.c_ulong, ffi.c_ulong) -> OpaquePointer
alias atexit = fn (fn() -> NoneType) -> Int32
alias at_quick_exit = fn (fn() -> NoneType) -> Int32
alias on_exit = fn (fn(Int32, OpaquePointer), OpaquePointer -> NoneType) -> Int32
alias exit = fn (Int32) -> NoneType
alias quick_exit = fn (Int32) -> NoneType
alias _Exit = fn (Int32) -> NoneType
alias putenv = fn (UnsafePointer[Int8]) -> Int32
alias unsetenv = fn (read UnsafePointer[Int8]) -> Int32
alias clearenv = fn (NoneType) -> Int32
alias mktemp = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias mkstemp = fn (UnsafePointer[Int8]) -> Int32
alias mkstemps = fn (UnsafePointer[Int8], Int32) -> Int32
alias mkdtemp = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias system = fn (read UnsafePointer[Int8]) -> Int32
alias realpath = fn (read UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias __compar_fn_t = fn(read OpaquePointer, read OpaquePointer) -> Int32
alias bsearch = fn (read OpaquePointer, read OpaquePointer, size_t, size_t, __compar_fn_t) -> OpaquePointer
alias qsort = fn (OpaquePointer, size_t, size_t, __compar_fn_t) -> NoneType
alias abs = fn (Int32) -> Int32
alias labs = fn (ffi.c_long) -> ffi.c_long
alias llabs = fn (ffi.c_long_long) -> ffi.c_long_long
alias div = fn (Int32, Int32) -> div_t
alias ldiv = fn (ffi.c_long, ffi.c_long) -> ldiv_t
alias lldiv = fn (ffi.c_long_long, ffi.c_long_long) -> lldiv_t
alias ecvt = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32]) -> UnsafePointer[Int8]
alias fcvt = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32]) -> UnsafePointer[Int8]
alias gcvt = fn (Float64, Int32, UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias qecvt = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32]) -> UnsafePointer[Int8]
alias qfcvt = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32]) -> UnsafePointer[Int8]
alias qgcvt = fn (Float64, Int32, UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias ecvt_r = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32], UnsafePointer[Int8], size_t) -> Int32
alias fcvt_r = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32], UnsafePointer[Int8], size_t) -> Int32
alias qecvt_r = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32], UnsafePointer[Int8], size_t) -> Int32
alias qfcvt_r = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32], UnsafePointer[Int8], size_t) -> Int32
alias mblen = fn (read UnsafePointer[Int8], size_t) -> Int32
alias mbtowc = fn (UnsafePointer[wchar_t], read UnsafePointer[Int8], size_t) -> Int32
alias wctomb = fn (UnsafePointer[Int8], wchar_t) -> Int32
alias mbstowcs = fn (UnsafePointer[wchar_t], read UnsafePointer[Int8], size_t) -> size_t
alias wcstombs = fn (UnsafePointer[Int8], read UnsafePointer[wchar_t], size_t) -> size_t
alias rpmatch = fn (read UnsafePointer[Int8]) -> Int32
alias getsubopt = fn (UnsafePointer[UnsafePointer[Int8]], UnsafePointer[UnsafePointer[Int8]], UnsafePointer[UnsafePointer[Int8]]) -> Int32
alias getloadavg = fn (UnsafePointer[Float64], Int32) -> Int32
alias float_t = Float32
alias double_t = Float64
alias __fpclassify = fn (Float64) -> Int32
alias __signbit = fn (Float64) -> Int32
alias __isinf = fn (Float64) -> Int32
alias __finite = fn (Float64) -> Int32
alias __isnan = fn (Float64) -> Int32
alias __iseqsig = fn (Float64, Float64) -> Int32
alias __issignaling = fn (Float64) -> Int32
alias acos = fn (Float64) -> Float64
alias __acos = fn (Float64) -> Float64
alias asin = fn (Float64) -> Float64
alias __asin = fn (Float64) -> Float64
alias atan = fn (Float64) -> Float64
alias __atan = fn (Float64) -> Float64
alias atan2 = fn (Float64, Float64) -> Float64
alias __atan2 = fn (Float64, Float64) -> Float64
alias cos = fn (Float64) -> Float64
alias __cos = fn (Float64) -> Float64
alias sin = fn (Float64) -> Float64
alias __sin = fn (Float64) -> Float64
alias tan = fn (Float64) -> Float64
alias __tan = fn (Float64) -> Float64
alias cosh = fn (Float64) -> Float64
alias __cosh = fn (Float64) -> Float64
alias sinh = fn (Float64) -> Float64
alias __sinh = fn (Float64) -> Float64
alias tanh = fn (Float64) -> Float64
alias __tanh = fn (Float64) -> Float64
alias acosh = fn (Float64) -> Float64
alias __acosh = fn (Float64) -> Float64
alias asinh = fn (Float64) -> Float64
alias __asinh = fn (Float64) -> Float64
alias atanh = fn (Float64) -> Float64
alias __atanh = fn (Float64) -> Float64
alias exp = fn (Float64) -> Float64
alias __exp = fn (Float64) -> Float64
alias frexp = fn (Float64, UnsafePointer[Int32]) -> Float64
alias __frexp = fn (Float64, UnsafePointer[Int32]) -> Float64
alias ldexp = fn (Float64, Int32) -> Float64
alias __ldexp = fn (Float64, Int32) -> Float64
alias log = fn (Float64) -> Float64
alias __log = fn (Float64) -> Float64
alias log10 = fn (Float64) -> Float64
alias __log10 = fn (Float64) -> Float64
alias modf = fn (Float64, UnsafePointer[Float64]) -> Float64
alias __modf = fn (Float64, UnsafePointer[Float64]) -> Float64
alias expm1 = fn (Float64) -> Float64
alias __expm1 = fn (Float64) -> Float64
alias log1p = fn (Float64) -> Float64
alias __log1p = fn (Float64) -> Float64
alias logb = fn (Float64) -> Float64
alias __logb = fn (Float64) -> Float64
alias exp2 = fn (Float64) -> Float64
alias __exp2 = fn (Float64) -> Float64
alias log2 = fn (Float64) -> Float64
alias __log2 = fn (Float64) -> Float64
alias pow = fn (Float64, Float64) -> Float64
alias __pow = fn (Float64, Float64) -> Float64
alias sqrt = fn (Float64) -> Float64
alias __sqrt = fn (Float64) -> Float64
alias hypot = fn (Float64, Float64) -> Float64
alias __hypot = fn (Float64, Float64) -> Float64
alias cbrt = fn (Float64) -> Float64
alias __cbrt = fn (Float64) -> Float64
alias ceil = fn (Float64) -> Float64
alias __ceil = fn (Float64) -> Float64
alias fabs = fn (Float64) -> Float64
alias __fabs = fn (Float64) -> Float64
alias floor = fn (Float64) -> Float64
alias __floor = fn (Float64) -> Float64
alias fmod = fn (Float64, Float64) -> Float64
alias __fmod = fn (Float64, Float64) -> Float64
alias isinf = fn (Float64) -> Int32
alias finite = fn (Float64) -> Int32
alias drem = fn (Float64, Float64) -> Float64
alias __drem = fn (Float64, Float64) -> Float64
alias significand = fn (Float64) -> Float64
alias __significand = fn (Float64) -> Float64
alias copysign = fn (Float64, Float64) -> Float64
alias __copysign = fn (Float64, Float64) -> Float64
alias nan = fn (read UnsafePointer[Int8]) -> Float64
alias __nan = fn (read UnsafePointer[Int8]) -> Float64
alias isnan = fn (Float64) -> Int32
alias j0 = fn (Float64) -> Float64
alias __j0 = fn (Float64) -> Float64
alias j1 = fn (Float64) -> Float64
alias __j1 = fn (Float64) -> Float64
alias jn = fn (Int32, Float64) -> Float64
alias __jn = fn (Int32, Float64) -> Float64
alias y0 = fn (Float64) -> Float64
alias __y0 = fn (Float64) -> Float64
alias y1 = fn (Float64) -> Float64
alias __y1 = fn (Float64) -> Float64
alias yn = fn (Int32, Float64) -> Float64
alias __yn = fn (Int32, Float64) -> Float64
alias erf = fn (Float64) -> Float64
alias __erf = fn (Float64) -> Float64
alias erfc = fn (Float64) -> Float64
alias __erfc = fn (Float64) -> Float64
alias lgamma = fn (Float64) -> Float64
alias __lgamma = fn (Float64) -> Float64
alias tgamma = fn (Float64) -> Float64
alias __tgamma = fn (Float64) -> Float64
alias gamma = fn (Float64) -> Float64
alias __gamma = fn (Float64) -> Float64
alias lgamma_r = fn (Float64, UnsafePointer[Int32]) -> Float64
alias __lgamma_r = fn (Float64, UnsafePointer[Int32]) -> Float64
alias rint = fn (Float64) -> Float64
alias __rint = fn (Float64) -> Float64
alias nextafter = fn (Float64, Float64) -> Float64
alias __nextafter = fn (Float64, Float64) -> Float64
alias nexttoward = fn (Float64, Float64) -> Float64
alias __nexttoward = fn (Float64, Float64) -> Float64
alias remainder = fn (Float64, Float64) -> Float64
alias __remainder = fn (Float64, Float64) -> Float64
alias scalbn = fn (Float64, Int32) -> Float64
alias __scalbn = fn (Float64, Int32) -> Float64
alias ilogb = fn (Float64) -> Int32
alias __ilogb = fn (Float64) -> Int32
alias scalbln = fn (Float64, ffi.c_long) -> Float64
alias __scalbln = fn (Float64, ffi.c_long) -> Float64
alias nearbyint = fn (Float64) -> Float64
alias __nearbyint = fn (Float64) -> Float64
alias round = fn (Float64) -> Float64
alias __round = fn (Float64) -> Float64
alias trunc = fn (Float64) -> Float64
alias __trunc = fn (Float64) -> Float64
alias remquo = fn (Float64, Float64, UnsafePointer[Int32]) -> Float64
alias __remquo = fn (Float64, Float64, UnsafePointer[Int32]) -> Float64
alias lrint = fn (Float64) -> ffi.c_long
alias __lrint = fn (Float64) -> ffi.c_long
alias llrint = fn (Float64) -> ffi.c_long_long
alias __llrint = fn (Float64) -> ffi.c_long_long
alias lround = fn (Float64) -> ffi.c_long
alias __lround = fn (Float64) -> ffi.c_long
alias llround = fn (Float64) -> ffi.c_long_long
alias __llround = fn (Float64) -> ffi.c_long_long
alias fdim = fn (Float64, Float64) -> Float64
alias __fdim = fn (Float64, Float64) -> Float64
alias fmax = fn (Float64, Float64) -> Float64
alias __fmax = fn (Float64, Float64) -> Float64
alias fmin = fn (Float64, Float64) -> Float64
alias __fmin = fn (Float64, Float64) -> Float64
alias fma = fn (Float64, Float64, Float64) -> Float64
alias __fma = fn (Float64, Float64, Float64) -> Float64
alias scalb = fn (Float64, Float64) -> Float64
alias __scalb = fn (Float64, Float64) -> Float64
alias __fpclassifyf = fn (Float32) -> Int32
alias __signbitf = fn (Float32) -> Int32
alias __isinff = fn (Float32) -> Int32
alias __finitef = fn (Float32) -> Int32
alias __isnanf = fn (Float32) -> Int32
alias __iseqsigf = fn (Float32, Float32) -> Int32
alias __issignalingf = fn (Float32) -> Int32
alias acosf = fn (Float32) -> Float32
alias __acosf = fn (Float32) -> Float32
alias asinf = fn (Float32) -> Float32
alias __asinf = fn (Float32) -> Float32
alias atanf = fn (Float32) -> Float32
alias __atanf = fn (Float32) -> Float32
alias atan2f = fn (Float32, Float32) -> Float32
alias __atan2f = fn (Float32, Float32) -> Float32
alias cosf = fn (Float32) -> Float32
alias __cosf = fn (Float32) -> Float32
alias sinf = fn (Float32) -> Float32
alias __sinf = fn (Float32) -> Float32
alias tanf = fn (Float32) -> Float32
alias __tanf = fn (Float32) -> Float32
alias coshf = fn (Float32) -> Float32
alias __coshf = fn (Float32) -> Float32
alias sinhf = fn (Float32) -> Float32
alias __sinhf = fn (Float32) -> Float32
alias tanhf = fn (Float32) -> Float32
alias __tanhf = fn (Float32) -> Float32
alias acoshf = fn (Float32) -> Float32
alias __acoshf = fn (Float32) -> Float32
alias asinhf = fn (Float32) -> Float32
alias __asinhf = fn (Float32) -> Float32
alias atanhf = fn (Float32) -> Float32
alias __atanhf = fn (Float32) -> Float32
alias expf = fn (Float32) -> Float32
alias __expf = fn (Float32) -> Float32
alias frexpf = fn (Float32, UnsafePointer[Int32]) -> Float32
alias __frexpf = fn (Float32, UnsafePointer[Int32]) -> Float32
alias ldexpf = fn (Float32, Int32) -> Float32
alias __ldexpf = fn (Float32, Int32) -> Float32
alias logf = fn (Float32) -> Float32
alias __logf = fn (Float32) -> Float32
alias log10f = fn (Float32) -> Float32
alias __log10f = fn (Float32) -> Float32
alias modff = fn (Float32, UnsafePointer[Float32]) -> Float32
alias __modff = fn (Float32, UnsafePointer[Float32]) -> Float32
alias expm1f = fn (Float32) -> Float32
alias __expm1f = fn (Float32) -> Float32
alias log1pf = fn (Float32) -> Float32
alias __log1pf = fn (Float32) -> Float32
alias logbf = fn (Float32) -> Float32
alias __logbf = fn (Float32) -> Float32
alias exp2f = fn (Float32) -> Float32
alias __exp2f = fn (Float32) -> Float32
alias log2f = fn (Float32) -> Float32
alias __log2f = fn (Float32) -> Float32
alias powf = fn (Float32, Float32) -> Float32
alias __powf = fn (Float32, Float32) -> Float32
alias sqrtf = fn (Float32) -> Float32
alias __sqrtf = fn (Float32) -> Float32
alias hypotf = fn (Float32, Float32) -> Float32
alias __hypotf = fn (Float32, Float32) -> Float32
alias cbrtf = fn (Float32) -> Float32
alias __cbrtf = fn (Float32) -> Float32
alias ceilf = fn (Float32) -> Float32
alias __ceilf = fn (Float32) -> Float32
alias fabsf = fn (Float32) -> Float32
alias __fabsf = fn (Float32) -> Float32
alias floorf = fn (Float32) -> Float32
alias __floorf = fn (Float32) -> Float32
alias fmodf = fn (Float32, Float32) -> Float32
alias __fmodf = fn (Float32, Float32) -> Float32
alias isinff = fn (Float32) -> Int32
alias finitef = fn (Float32) -> Int32
alias dremf = fn (Float32, Float32) -> Float32
alias __dremf = fn (Float32, Float32) -> Float32
alias significandf = fn (Float32) -> Float32
alias __significandf = fn (Float32) -> Float32
alias copysignf = fn (Float32, Float32) -> Float32
alias __copysignf = fn (Float32, Float32) -> Float32
alias nanf = fn (read UnsafePointer[Int8]) -> Float32
alias __nanf = fn (read UnsafePointer[Int8]) -> Float32
alias isnanf = fn (Float32) -> Int32
alias j0f = fn (Float32) -> Float32
alias __j0f = fn (Float32) -> Float32
alias j1f = fn (Float32) -> Float32
alias __j1f = fn (Float32) -> Float32
alias jnf = fn (Int32, Float32) -> Float32
alias __jnf = fn (Int32, Float32) -> Float32
alias y0f = fn (Float32) -> Float32
alias __y0f = fn (Float32) -> Float32
alias y1f = fn (Float32) -> Float32
alias __y1f = fn (Float32) -> Float32
alias ynf = fn (Int32, Float32) -> Float32
alias __ynf = fn (Int32, Float32) -> Float32
alias erff = fn (Float32) -> Float32
alias __erff = fn (Float32) -> Float32
alias erfcf = fn (Float32) -> Float32
alias __erfcf = fn (Float32) -> Float32
alias lgammaf = fn (Float32) -> Float32
alias __lgammaf = fn (Float32) -> Float32
alias tgammaf = fn (Float32) -> Float32
alias __tgammaf = fn (Float32) -> Float32
alias gammaf = fn (Float32) -> Float32
alias __gammaf = fn (Float32) -> Float32
alias lgammaf_r = fn (Float32, UnsafePointer[Int32]) -> Float32
alias __lgammaf_r = fn (Float32, UnsafePointer[Int32]) -> Float32
alias rintf = fn (Float32) -> Float32
alias __rintf = fn (Float32) -> Float32
alias nextafterf = fn (Float32, Float32) -> Float32
alias __nextafterf = fn (Float32, Float32) -> Float32
alias nexttowardf = fn (Float32, Float64) -> Float32
alias __nexttowardf = fn (Float32, Float64) -> Float32
alias remainderf = fn (Float32, Float32) -> Float32
alias __remainderf = fn (Float32, Float32) -> Float32
alias scalbnf = fn (Float32, Int32) -> Float32
alias __scalbnf = fn (Float32, Int32) -> Float32
alias ilogbf = fn (Float32) -> Int32
alias __ilogbf = fn (Float32) -> Int32
alias scalblnf = fn (Float32, ffi.c_long) -> Float32
alias __scalblnf = fn (Float32, ffi.c_long) -> Float32
alias nearbyintf = fn (Float32) -> Float32
alias __nearbyintf = fn (Float32) -> Float32
alias roundf = fn (Float32) -> Float32
alias __roundf = fn (Float32) -> Float32
alias truncf = fn (Float32) -> Float32
alias __truncf = fn (Float32) -> Float32
alias remquof = fn (Float32, Float32, UnsafePointer[Int32]) -> Float32
alias __remquof = fn (Float32, Float32, UnsafePointer[Int32]) -> Float32
alias lrintf = fn (Float32) -> ffi.c_long
alias __lrintf = fn (Float32) -> ffi.c_long
alias llrintf = fn (Float32) -> ffi.c_long_long
alias __llrintf = fn (Float32) -> ffi.c_long_long
alias lroundf = fn (Float32) -> ffi.c_long
alias __lroundf = fn (Float32) -> ffi.c_long
alias llroundf = fn (Float32) -> ffi.c_long_long
alias __llroundf = fn (Float32) -> ffi.c_long_long
alias fdimf = fn (Float32, Float32) -> Float32
alias __fdimf = fn (Float32, Float32) -> Float32
alias fmaxf = fn (Float32, Float32) -> Float32
alias __fmaxf = fn (Float32, Float32) -> Float32
alias fminf = fn (Float32, Float32) -> Float32
alias __fminf = fn (Float32, Float32) -> Float32
alias fmaf = fn (Float32, Float32, Float32) -> Float32
alias __fmaf = fn (Float32, Float32, Float32) -> Float32
alias scalbf = fn (Float32, Float32) -> Float32
alias __scalbf = fn (Float32, Float32) -> Float32
alias __fpclassifyl = fn (Float64) -> Int32
alias __signbitl = fn (Float64) -> Int32
alias __isinfl = fn (Float64) -> Int32
alias __finitel = fn (Float64) -> Int32
alias __isnanl = fn (Float64) -> Int32
alias __iseqsigl = fn (Float64, Float64) -> Int32
alias __issignalingl = fn (Float64) -> Int32
alias acosl = fn (Float64) -> Float64
alias __acosl = fn (Float64) -> Float64
alias asinl = fn (Float64) -> Float64
alias __asinl = fn (Float64) -> Float64
alias atanl = fn (Float64) -> Float64
alias __atanl = fn (Float64) -> Float64
alias atan2l = fn (Float64, Float64) -> Float64
alias __atan2l = fn (Float64, Float64) -> Float64
alias cosl = fn (Float64) -> Float64
alias __cosl = fn (Float64) -> Float64
alias sinl = fn (Float64) -> Float64
alias __sinl = fn (Float64) -> Float64
alias tanl = fn (Float64) -> Float64
alias __tanl = fn (Float64) -> Float64
alias coshl = fn (Float64) -> Float64
alias __coshl = fn (Float64) -> Float64
alias sinhl = fn (Float64) -> Float64
alias __sinhl = fn (Float64) -> Float64
alias tanhl = fn (Float64) -> Float64
alias __tanhl = fn (Float64) -> Float64
alias acoshl = fn (Float64) -> Float64
alias __acoshl = fn (Float64) -> Float64
alias asinhl = fn (Float64) -> Float64
alias __asinhl = fn (Float64) -> Float64
alias atanhl = fn (Float64) -> Float64
alias __atanhl = fn (Float64) -> Float64
alias expl = fn (Float64) -> Float64
alias __expl = fn (Float64) -> Float64
alias frexpl = fn (Float64, UnsafePointer[Int32]) -> Float64
alias __frexpl = fn (Float64, UnsafePointer[Int32]) -> Float64
alias ldexpl = fn (Float64, Int32) -> Float64
alias __ldexpl = fn (Float64, Int32) -> Float64
alias logl = fn (Float64) -> Float64
alias __logl = fn (Float64) -> Float64
alias log10l = fn (Float64) -> Float64
alias __log10l = fn (Float64) -> Float64
alias modfl = fn (Float64, UnsafePointer[Float64]) -> Float64
alias __modfl = fn (Float64, UnsafePointer[Float64]) -> Float64
alias expm1l = fn (Float64) -> Float64
alias __expm1l = fn (Float64) -> Float64
alias log1pl = fn (Float64) -> Float64
alias __log1pl = fn (Float64) -> Float64
alias logbl = fn (Float64) -> Float64
alias __logbl = fn (Float64) -> Float64
alias exp2l = fn (Float64) -> Float64
alias __exp2l = fn (Float64) -> Float64
alias log2l = fn (Float64) -> Float64
alias __log2l = fn (Float64) -> Float64
alias powl = fn (Float64, Float64) -> Float64
alias __powl = fn (Float64, Float64) -> Float64
alias sqrtl = fn (Float64) -> Float64
alias __sqrtl = fn (Float64) -> Float64
alias hypotl = fn (Float64, Float64) -> Float64
alias __hypotl = fn (Float64, Float64) -> Float64
alias cbrtl = fn (Float64) -> Float64
alias __cbrtl = fn (Float64) -> Float64
alias ceill = fn (Float64) -> Float64
alias __ceill = fn (Float64) -> Float64
alias fabsl = fn (Float64) -> Float64
alias __fabsl = fn (Float64) -> Float64
alias floorl = fn (Float64) -> Float64
alias __floorl = fn (Float64) -> Float64
alias fmodl = fn (Float64, Float64) -> Float64
alias __fmodl = fn (Float64, Float64) -> Float64
alias isinfl = fn (Float64) -> Int32
alias finitel = fn (Float64) -> Int32
alias dreml = fn (Float64, Float64) -> Float64
alias __dreml = fn (Float64, Float64) -> Float64
alias significandl = fn (Float64) -> Float64
alias __significandl = fn (Float64) -> Float64
alias copysignl = fn (Float64, Float64) -> Float64
alias __copysignl = fn (Float64, Float64) -> Float64
alias nanl = fn (read UnsafePointer[Int8]) -> Float64
alias __nanl = fn (read UnsafePointer[Int8]) -> Float64
alias isnanl = fn (Float64) -> Int32
alias j0l = fn (Float64) -> Float64
alias __j0l = fn (Float64) -> Float64
alias j1l = fn (Float64) -> Float64
alias __j1l = fn (Float64) -> Float64
alias jnl = fn (Int32, Float64) -> Float64
alias __jnl = fn (Int32, Float64) -> Float64
alias y0l = fn (Float64) -> Float64
alias __y0l = fn (Float64) -> Float64
alias y1l = fn (Float64) -> Float64
alias __y1l = fn (Float64) -> Float64
alias ynl = fn (Int32, Float64) -> Float64
alias __ynl = fn (Int32, Float64) -> Float64
alias erfl = fn (Float64) -> Float64
alias __erfl = fn (Float64) -> Float64
alias erfcl = fn (Float64) -> Float64
alias __erfcl = fn (Float64) -> Float64
alias lgammal = fn (Float64) -> Float64
alias __lgammal = fn (Float64) -> Float64
alias tgammal = fn (Float64) -> Float64
alias __tgammal = fn (Float64) -> Float64
alias gammal = fn (Float64) -> Float64
alias __gammal = fn (Float64) -> Float64
alias lgammal_r = fn (Float64, UnsafePointer[Int32]) -> Float64
alias __lgammal_r = fn (Float64, UnsafePointer[Int32]) -> Float64
alias rintl = fn (Float64) -> Float64
alias __rintl = fn (Float64) -> Float64
alias nextafterl = fn (Float64, Float64) -> Float64
alias __nextafterl = fn (Float64, Float64) -> Float64
alias nexttowardl = fn (Float64, Float64) -> Float64
alias __nexttowardl = fn (Float64, Float64) -> Float64
alias remainderl = fn (Float64, Float64) -> Float64
alias __remainderl = fn (Float64, Float64) -> Float64
alias scalbnl = fn (Float64, Int32) -> Float64
alias __scalbnl = fn (Float64, Int32) -> Float64
alias ilogbl = fn (Float64) -> Int32
alias __ilogbl = fn (Float64) -> Int32
alias scalblnl = fn (Float64, ffi.c_long) -> Float64
alias __scalblnl = fn (Float64, ffi.c_long) -> Float64
alias nearbyintl = fn (Float64) -> Float64
alias __nearbyintl = fn (Float64) -> Float64
alias roundl = fn (Float64) -> Float64
alias __roundl = fn (Float64) -> Float64
alias truncl = fn (Float64) -> Float64
alias __truncl = fn (Float64) -> Float64
alias remquol = fn (Float64, Float64, UnsafePointer[Int32]) -> Float64
alias __remquol = fn (Float64, Float64, UnsafePointer[Int32]) -> Float64
alias lrintl = fn (Float64) -> ffi.c_long
alias __lrintl = fn (Float64) -> ffi.c_long
alias llrintl = fn (Float64) -> ffi.c_long_long
alias __llrintl = fn (Float64) -> ffi.c_long_long
alias lroundl = fn (Float64) -> ffi.c_long
alias __lroundl = fn (Float64) -> ffi.c_long
alias llroundl = fn (Float64) -> ffi.c_long_long
alias __llroundl = fn (Float64) -> ffi.c_long_long
alias fdiml = fn (Float64, Float64) -> Float64
alias __fdiml = fn (Float64, Float64) -> Float64
alias fmaxl = fn (Float64, Float64) -> Float64
alias __fmaxl = fn (Float64, Float64) -> Float64
alias fminl = fn (Float64, Float64) -> Float64
alias __fminl = fn (Float64, Float64) -> Float64
alias fmal = fn (Float64, Float64, Float64) -> Float64
alias __fmal = fn (Float64, Float64, Float64) -> Float64
alias scalbl = fn (Float64, Float64) -> Float64
alias __scalbl = fn (Float64, Float64) -> Float64
alias signgam = Int32
alias FP_NAN = 0

alias FP_INFINITE = 1

alias FP_ZERO = 2

alias FP_SUBNORMAL = 3

alias FP_NORMAL = 4

alias ptrdiff_t = ffi.c_long
@register_passable("trivial")
struct anonomous_record_18:
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_18

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
alias mjtNum = Float64
alias mjtByte = UInt8
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
# -------------------------------------- byte definition -------------------------------------------

alias mjtSize = uint64_t
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
# -------------------------------------- size definition -------------------------------------------

@register_passable("trivial")
struct mjtDisableBit_:

	alias mjDSBL_CONSTRAINT = 1

	alias mjDSBL_EQUALITY = 2

	alias mjDSBL_FRICTIONLOSS = 4

	alias mjDSBL_LIMIT = 8

	alias mjDSBL_CONTACT = 16

	alias mjDSBL_PASSIVE = 32

	alias mjDSBL_GRAVITY = 64

	alias mjDSBL_CLAMPCTRL = 128

	alias mjDSBL_WARMSTART = 256

	alias mjDSBL_FILTERPARENT = 512

	alias mjDSBL_ACTUATION = 1024

	alias mjDSBL_REFSAFE = 2048

	alias mjDSBL_SENSOR = 4096

	alias mjDSBL_MIDPHASE = 8192

	alias mjDSBL_EULERDAMP = 16384

	alias mjDSBL_AUTORESET = 32768

	alias mjDSBL_NATIVECCD = 65536

	alias mjNDISABLE = 17

alias mjtDisableBit = mjtDisableBit_
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
# ---------------------------------- enum types (mjt) ----------------------------------------------

@register_passable("trivial")
struct mjtEnableBit_:
	alias mjENBL_OVERRIDE = 1

	alias mjENBL_ENERGY = 2

	alias mjENBL_FWDINV = 4

	alias mjENBL_INVDISCRETE = 8

	alias mjENBL_MULTICCD = 16

	alias mjENBL_ISLAND = 32

	alias mjNENABLE = 6

alias mjtEnableBit = mjtEnableBit_
@register_passable("trivial")
struct mjtJoint_:
	alias mjJNT_FREE = 0

	alias mjJNT_BALL = 1

	alias mjJNT_SLIDE = 2

	alias mjJNT_HINGE = 3

alias mjtJoint = mjtJoint_
@register_passable("trivial")
struct mjtGeom_:
	alias mjGEOM_PLANE = 0

	alias mjGEOM_HFIELD = 1

	alias mjGEOM_SPHERE = 2

	alias mjGEOM_CAPSULE = 3

	alias mjGEOM_ELLIPSOID = 4

	alias mjGEOM_CYLINDER = 5

	alias mjGEOM_BOX = 6

	alias mjGEOM_MESH = 7

	alias mjGEOM_SDF = 8

	alias mjNGEOMTYPES = 9

	alias mjGEOM_ARROW = 100

	alias mjGEOM_ARROW1 = 101

	alias mjGEOM_ARROW2 = 102

	alias mjGEOM_LINE = 103

	alias mjGEOM_LINEBOX = 104

	alias mjGEOM_FLEX = 105

	alias mjGEOM_SKIN = 106

	alias mjGEOM_LABEL = 107

	alias mjGEOM_TRIANGLE = 108

	alias mjGEOM_NONE = 1001

alias mjtGeom = mjtGeom_
@register_passable("trivial")
struct mjtCamLight_:
	alias mjCAMLIGHT_FIXED = 0

	alias mjCAMLIGHT_TRACK = 1

	alias mjCAMLIGHT_TRACKCOM = 2

	alias mjCAMLIGHT_TARGETBODY = 3

	alias mjCAMLIGHT_TARGETBODYCOM = 4

alias mjtCamLight = mjtCamLight_
@register_passable("trivial")
struct mjtLightType_:
	alias mjLIGHT_SPOT = 0

	alias mjLIGHT_DIRECTIONAL = 1

	alias mjLIGHT_POINT = 2

	alias mjLIGHT_IMAGE = 3

alias mjtLightType = mjtLightType_
@register_passable("trivial")
struct mjtTexture_:
	alias mjTEXTURE_2D = 0

	alias mjTEXTURE_CUBE = 1

	alias mjTEXTURE_SKYBOX = 2

alias mjtTexture = mjtTexture_
@register_passable("trivial")
struct mjtTextureRole_:
	alias mjTEXROLE_USER = 0

	alias mjTEXROLE_RGB = 1

	alias mjTEXROLE_OCCLUSION = 2

	alias mjTEXROLE_ROUGHNESS = 3

	alias mjTEXROLE_METALLIC = 4

	alias mjTEXROLE_NORMAL = 5

	alias mjTEXROLE_OPACITY = 6

	alias mjTEXROLE_EMISSIVE = 7

	alias mjTEXROLE_RGBA = 8

	alias mjTEXROLE_ORM = 9

	alias mjNTEXROLE = 10

alias mjtTextureRole = mjtTextureRole_
@register_passable("trivial")
struct mjtColorSpace_:
	alias mjCOLORSPACE_AUTO = 0

	alias mjCOLORSPACE_LINEAR = 1

	alias mjCOLORSPACE_SRGB = 2

alias mjtColorSpace = mjtColorSpace_
@register_passable("trivial")
struct mjtIntegrator_:
	alias mjINT_EULER = 0

	alias mjINT_RK4 = 1

	alias mjINT_IMPLICIT = 2

	alias mjINT_IMPLICITFAST = 3

alias mjtIntegrator = mjtIntegrator_
@register_passable("trivial")
struct mjtCone_:
	alias mjCONE_PYRAMIDAL = 0

	alias mjCONE_ELLIPTIC = 1

alias mjtCone = mjtCone_
@register_passable("trivial")
struct mjtJacobian_:
	alias mjJAC_DENSE = 0

	alias mjJAC_SPARSE = 1

	alias mjJAC_AUTO = 2

alias mjtJacobian = mjtJacobian_
@register_passable("trivial")
struct mjtSolver_:
	alias mjSOL_PGS = 0

	alias mjSOL_CG = 1

	alias mjSOL_NEWTON = 2

alias mjtSolver = mjtSolver_
@register_passable("trivial")
struct mjtEq_:
	alias mjEQ_CONNECT = 0

	alias mjEQ_WELD = 1

	alias mjEQ_JOINT = 2

	alias mjEQ_TENDON = 3

	alias mjEQ_FLEX = 4

	alias mjEQ_DISTANCE = 5

alias mjtEq = mjtEq_
@register_passable("trivial")
struct mjtWrap_:
	alias mjWRAP_NONE = 0

	alias mjWRAP_JOINT = 1

	alias mjWRAP_PULLEY = 2

	alias mjWRAP_SITE = 3

	alias mjWRAP_SPHERE = 4

	alias mjWRAP_CYLINDER = 5

alias mjtWrap = mjtWrap_
@register_passable("trivial")
struct mjtTrn_:
	alias mjTRN_JOINT = 0

	alias mjTRN_JOINTINPARENT = 1

	alias mjTRN_SLIDERCRANK = 2

	alias mjTRN_TENDON = 3

	alias mjTRN_SITE = 4

	alias mjTRN_BODY = 5

	alias mjTRN_UNDEFINED = 1000

alias mjtTrn = mjtTrn_
@register_passable("trivial")
struct mjtDyn_:
	alias mjDYN_NONE = 0

	alias mjDYN_INTEGRATOR = 1

	alias mjDYN_FILTER = 2

	alias mjDYN_FILTEREXACT = 3

	alias mjDYN_MUSCLE = 4

	alias mjDYN_USER = 5

alias mjtDyn = mjtDyn_
@register_passable("trivial")
struct mjtGain_:
	alias mjGAIN_FIXED = 0

	alias mjGAIN_AFFINE = 1

	alias mjGAIN_MUSCLE = 2

	alias mjGAIN_USER = 3

alias mjtGain = mjtGain_
@register_passable("trivial")
struct mjtBias_:
	alias mjBIAS_NONE = 0

	alias mjBIAS_AFFINE = 1

	alias mjBIAS_MUSCLE = 2

	alias mjBIAS_USER = 3

alias mjtBias = mjtBias_
@register_passable("trivial")
struct mjtObj_:
	alias mjOBJ_UNKNOWN = 0

	alias mjOBJ_BODY = 1

	alias mjOBJ_XBODY = 2

	alias mjOBJ_JOINT = 3

	alias mjOBJ_DOF = 4

	alias mjOBJ_GEOM = 5

	alias mjOBJ_SITE = 6

	alias mjOBJ_CAMERA = 7

	alias mjOBJ_LIGHT = 8

	alias mjOBJ_FLEX = 9

	alias mjOBJ_MESH = 10

	alias mjOBJ_SKIN = 11

	alias mjOBJ_HFIELD = 12

	alias mjOBJ_TEXTURE = 13

	alias mjOBJ_MATERIAL = 14

	alias mjOBJ_PAIR = 15

	alias mjOBJ_EXCLUDE = 16

	alias mjOBJ_EQUALITY = 17

	alias mjOBJ_TENDON = 18

	alias mjOBJ_ACTUATOR = 19

	alias mjOBJ_SENSOR = 20

	alias mjOBJ_NUMERIC = 21

	alias mjOBJ_TEXT = 22

	alias mjOBJ_TUPLE = 23

	alias mjOBJ_KEY = 24

	alias mjOBJ_PLUGIN = 25

	alias mjNOBJECT = 26

	alias mjOBJ_FRAME = 100

	alias mjOBJ_DEFAULT = 101

	alias mjOBJ_MODEL = 102

alias mjtObj = mjtObj_
@register_passable("trivial")
struct mjtConstraint_:
	alias mjCNSTR_EQUALITY = 0

	alias mjCNSTR_FRICTION_DOF = 1

	alias mjCNSTR_FRICTION_TENDON = 2

	alias mjCNSTR_LIMIT_JOINT = 3

	alias mjCNSTR_LIMIT_TENDON = 4

	alias mjCNSTR_CONTACT_FRICTIONLESS = 5

	alias mjCNSTR_CONTACT_PYRAMIDAL = 6

	alias mjCNSTR_CONTACT_ELLIPTIC = 7

alias mjtConstraint = mjtConstraint_
@register_passable("trivial")
struct mjtConstraintState_:
	alias mjCNSTRSTATE_SATISFIED = 0

	alias mjCNSTRSTATE_QUADRATIC = 1

	alias mjCNSTRSTATE_LINEARNEG = 2

	alias mjCNSTRSTATE_LINEARPOS = 3

	alias mjCNSTRSTATE_CONE = 4

alias mjtConstraintState = mjtConstraintState_
@register_passable("trivial")
struct mjtSensor_:
	alias mjSENS_TOUCH = 0

	alias mjSENS_ACCELEROMETER = 1

	alias mjSENS_VELOCIMETER = 2

	alias mjSENS_GYRO = 3

	alias mjSENS_FORCE = 4

	alias mjSENS_TORQUE = 5

	alias mjSENS_MAGNETOMETER = 6

	alias mjSENS_RANGEFINDER = 7

	alias mjSENS_CAMPROJECTION = 8

	alias mjSENS_JOINTPOS = 9

	alias mjSENS_JOINTVEL = 10

	alias mjSENS_TENDONPOS = 11

	alias mjSENS_TENDONVEL = 12

	alias mjSENS_ACTUATORPOS = 13

	alias mjSENS_ACTUATORVEL = 14

	alias mjSENS_ACTUATORFRC = 15

	alias mjSENS_JOINTACTFRC = 16

	alias mjSENS_TENDONACTFRC = 17

	alias mjSENS_BALLQUAT = 18

	alias mjSENS_BALLANGVEL = 19

	alias mjSENS_JOINTLIMITPOS = 20

	alias mjSENS_JOINTLIMITVEL = 21

	alias mjSENS_JOINTLIMITFRC = 22

	alias mjSENS_TENDONLIMITPOS = 23

	alias mjSENS_TENDONLIMITVEL = 24

	alias mjSENS_TENDONLIMITFRC = 25

	alias mjSENS_FRAMEPOS = 26

	alias mjSENS_FRAMEQUAT = 27

	alias mjSENS_FRAMEXAXIS = 28

	alias mjSENS_FRAMEYAXIS = 29

	alias mjSENS_FRAMEZAXIS = 30

	alias mjSENS_FRAMELINVEL = 31

	alias mjSENS_FRAMEANGVEL = 32

	alias mjSENS_FRAMELINACC = 33

	alias mjSENS_FRAMEANGACC = 34

	alias mjSENS_SUBTREECOM = 35

	alias mjSENS_SUBTREELINVEL = 36

	alias mjSENS_SUBTREEANGMOM = 37

	alias mjSENS_INSIDESITE = 38

	alias mjSENS_GEOMDIST = 39

	alias mjSENS_GEOMNORMAL = 40

	alias mjSENS_GEOMFROMTO = 41

	alias mjSENS_CONTACT = 42

	alias mjSENS_E_POTENTIAL = 43

	alias mjSENS_E_KINETIC = 44

	alias mjSENS_CLOCK = 45

	alias mjSENS_TACTILE = 46

	alias mjSENS_PLUGIN = 47

	alias mjSENS_USER = 48

alias mjtSensor = mjtSensor_
@register_passable("trivial")
struct mjtStage_:
	alias mjSTAGE_NONE = 0

	alias mjSTAGE_POS = 1

	alias mjSTAGE_VEL = 2

	alias mjSTAGE_ACC = 3

alias mjtStage = mjtStage_
@register_passable("trivial")
struct mjtDataType_:
	alias mjDATATYPE_REAL = 0

	alias mjDATATYPE_POSITIVE = 1

	alias mjDATATYPE_AXIS = 2

	alias mjDATATYPE_QUATERNION = 3

alias mjtDataType = mjtDataType_
@register_passable("trivial")
struct mjtConDataField_:
	alias mjCONDATA_FOUND = 0

	alias mjCONDATA_FORCE = 1

	alias mjCONDATA_TORQUE = 2

	alias mjCONDATA_DIST = 3

	alias mjCONDATA_POS = 4

	alias mjCONDATA_NORMAL = 5

	alias mjCONDATA_TANGENT = 6

	alias mjNCONDATA = 7

alias mjtConDataField = mjtConDataField_
@register_passable("trivial")
struct mjtSameFrame_:
	alias mjSAMEFRAME_NONE = 0

	alias mjSAMEFRAME_BODY = 1

	alias mjSAMEFRAME_INERTIA = 2

	alias mjSAMEFRAME_BODYROT = 3

	alias mjSAMEFRAME_INERTIAROT = 4

alias mjtSameFrame = mjtSameFrame_
@register_passable("trivial")
struct mjtLRMode_:
	alias mjLRMODE_NONE = 0

	alias mjLRMODE_MUSCLE = 1

	alias mjLRMODE_MUSCLEUSER = 2

	alias mjLRMODE_ALL = 3

alias mjtLRMode = mjtLRMode_
@register_passable("trivial")
struct mjtFlexSelf_:
	alias mjFLEXSELF_NONE = 0

	alias mjFLEXSELF_NARROW = 1

	alias mjFLEXSELF_BVH = 2

	alias mjFLEXSELF_SAP = 3

	alias mjFLEXSELF_AUTO = 4

alias mjtFlexSelf = mjtFlexSelf_
@register_passable("trivial")
struct mjtSDFType_:
	alias mjSDFTYPE_SINGLE = 0

	alias mjSDFTYPE_INTERSECTION = 1

	alias mjSDFTYPE_MIDSURFACE = 2

	alias mjSDFTYPE_COLLISION = 3

alias mjtSDFType = mjtSDFType_
@register_passable("trivial")
struct mjLROpt_:

	var mode : Int32

	var useexisting : Int32

	var uselimit : Int32

	var accel : Float64

	var maxforce : Float64

	var timeconst : Float64

	var timestep : Float64

	var inttotal : Float64

	var interval : Float64

	var tolrange : Float64

alias mjLROpt = mjLROpt_

@register_passable("trivial")
struct mjVFS_:

	var impl_ : OpaquePointer

alias mjVFS = mjVFS_

@register_passable("trivial")
struct mjOption_:

	var timestep : Float64

	var apirate : Float64

	var impratio : Float64

	var tolerance : Float64

	var ls_tolerance : Float64

	var noslip_tolerance : Float64

	var ccd_tolerance : Float64

	var gravity : StaticTuple[mjtNum, 3]

	var wind : StaticTuple[mjtNum, 3]

	var magnetic : StaticTuple[mjtNum, 3]

	var density : Float64

	var viscosity : Float64

	var o_margin : Float64

	var o_solref : StaticTuple[mjtNum, 2]

	var o_solimp : StaticTuple[mjtNum, 5]

	var o_friction : StaticTuple[mjtNum, 5]

	var integrator : Int32

	var cone : Int32

	var jacobian : Int32

	var solver : Int32

	var iterations : Int32

	var ls_iterations : Int32

	var noslip_iterations : Int32

	var ccd_iterations : Int32

	var disableflags : Int32

	var enableflags : Int32

	var disableactuator : Int32

	var sdf_initpoints : Int32

	var sdf_iterations : Int32

alias mjOption = mjOption_

@register_passable("trivial")
struct anonomous_record_24:
	var fog : StaticTuple[Float32, 4]

	var haze : StaticTuple[Float32, 4]

	var force : StaticTuple[Float32, 4]

	var inertia : StaticTuple[Float32, 4]

	var joint : StaticTuple[Float32, 4]

	var actuator : StaticTuple[Float32, 4]

	var actuatornegative : StaticTuple[Float32, 4]

	var actuatorpositive : StaticTuple[Float32, 4]

	var com : StaticTuple[Float32, 4]

	var camera : StaticTuple[Float32, 4]

	var light : StaticTuple[Float32, 4]

	var selectpoint : StaticTuple[Float32, 4]

	var connect : StaticTuple[Float32, 4]

	var contactpoint : StaticTuple[Float32, 4]

	var contactforce : StaticTuple[Float32, 4]

	var contactfriction : StaticTuple[Float32, 4]

	var contacttorque : StaticTuple[Float32, 4]

	var contactgap : StaticTuple[Float32, 4]

	var rangefinder : StaticTuple[Float32, 4]

	var constraint : StaticTuple[Float32, 4]

	var slidercrank : StaticTuple[Float32, 4]

	var crankbroken : StaticTuple[Float32, 4]

	var frustum : StaticTuple[Float32, 4]

	var bv : StaticTuple[Float32, 4]

	var bvactive : StaticTuple[Float32, 4]

@register_passable("trivial")
struct anonomous_record_23:
	var forcewidth : Float32

	var contactwidth : Float32

	var contactheight : Float32

	var connect : Float32

	var com : Float32

	var camera : Float32

	var light : Float32

	var selectpoint : Float32

	var jointlength : Float32

	var jointwidth : Float32

	var actuatorlength : Float32

	var actuatorwidth : Float32

	var framelength : Float32

	var framewidth : Float32

	var constraint : Float32

	var slidercrank : Float32

	var frustum : Float32

@register_passable("trivial")
struct anonomous_record_22:
	var stiffness : Float32

	var stiffnessrot : Float32

	var force : Float32

	var torque : Float32

	var alpha : Float32

	var fogstart : Float32

	var fogend : Float32

	var znear : Float32

	var zfar : Float32

	var haze : Float32

	var shadowclip : Float32

	var shadowscale : Float32

	var actuatortendon : Float32

@register_passable("trivial")
struct anonomous_record_21:
	var ambient : StaticTuple[Float32, 3]

	var diffuse : StaticTuple[Float32, 3]

	var specular : StaticTuple[Float32, 3]

	var active : Int32

@register_passable("trivial")
struct anonomous_record_20:
	var shadowsize : Int32

	var offsamples : Int32

	var numslices : Int32

	var numstacks : Int32

	var numquads : Int32

@register_passable("trivial")
struct anonomous_record_19:
	var cameraid : Int32

	var orthographic : Int32

	var fovy : Float32

	var ipd : Float32

	var azimuth : Float32

	var elevation : Float32

	var linewidth : Float32

	var glow : Float32

	var realtime : Float32

	var offwidth : Int32

	var offheight : Int32

	var ellipsoidinertia : Int32

	var bvactive : Int32

@register_passable("trivial")
struct mjVisual_:

	var global_ : anonomous_record_19

	var quality : anonomous_record_20

	var headlight : anonomous_record_21

	var map : anonomous_record_22

	var scale : anonomous_record_23

	var rgba : anonomous_record_24

alias mjVisual = mjVisual_

@register_passable("trivial")
struct mjStatistic_:

	var meaninertia : Float64

	var meanmass : Float64

	var meansize : Float64

	var extent : Float64

	var center : StaticTuple[mjtNum, 3]

alias mjStatistic = mjStatistic_

@register_passable("trivial")
struct mjModel_:

	var nq : Int32

	var nv : Int32

	var nu : Int32

	var na : Int32

	var nbody : Int32

	var nbvh : Int32

	var nbvhstatic : Int32

	var nbvhdynamic : Int32

	var noct : Int32

	var njnt : Int32

	var ntree : Int32

	var nM : Int32

	var nB : Int32

	var nC : Int32

	var nD : Int32

	var ngeom : Int32

	var nsite : Int32

	var ncam : Int32

	var nlight : Int32

	var nflex : Int32

	var nflexnode : Int32

	var nflexvert : Int32

	var nflexedge : Int32

	var nflexelem : Int32

	var nflexelemdata : Int32

	var nflexelemedge : Int32

	var nflexshelldata : Int32

	var nflexevpair : Int32

	var nflextexcoord : Int32

	var nmesh : Int32

	var nmeshvert : Int32

	var nmeshnormal : Int32

	var nmeshtexcoord : Int32

	var nmeshface : Int32

	var nmeshgraph : Int32

	var nmeshpoly : Int32

	var nmeshpolyvert : Int32

	var nmeshpolymap : Int32

	var nskin : Int32

	var nskinvert : Int32

	var nskintexvert : Int32

	var nskinface : Int32

	var nskinbone : Int32

	var nskinbonevert : Int32

	var nhfield : Int32

	var nhfielddata : Int32

	var ntex : Int32

	var ntexdata : Int32

	var nmat : Int32

	var npair : Int32

	var nexclude : Int32

	var neq : Int32

	var ntendon : Int32

	var nwrap : Int32

	var nsensor : Int32

	var nnumeric : Int32

	var nnumericdata : Int32

	var ntext : Int32

	var ntextdata : Int32

	var ntuple : Int32

	var ntupledata : Int32

	var nkey : Int32

	var nmocap : Int32

	var nplugin : Int32

	var npluginattr : Int32

	var nuser_body : Int32

	var nuser_jnt : Int32

	var nuser_geom : Int32

	var nuser_site : Int32

	var nuser_cam : Int32

	var nuser_tendon : Int32

	var nuser_actuator : Int32

	var nuser_sensor : Int32

	var nnames : Int32

	var npaths : Int32

	var nnames_map : Int32

	var nJmom : Int32

	var ngravcomp : Int32

	var nemax : Int32

	var njmax : Int32

	var nconmax : Int32

	var nuserdata : Int32

	var nsensordata : Int32

	var npluginstate : Int32

	var narena : ffi.c_ulong

	var nbuffer : ffi.c_ulong

	var opt : mjOption_

	var vis : mjVisual_

	var stat : mjStatistic_

	var buffer : OpaquePointer

	var qpos0 : UnsafePointer[mjtNum]

	var qpos_spring : UnsafePointer[mjtNum]

	var body_parentid : UnsafePointer[Int32]

	var body_rootid : UnsafePointer[Int32]

	var body_weldid : UnsafePointer[Int32]

	var body_mocapid : UnsafePointer[Int32]

	var body_jntnum : UnsafePointer[Int32]

	var body_jntadr : UnsafePointer[Int32]

	var body_dofnum : UnsafePointer[Int32]

	var body_dofadr : UnsafePointer[Int32]

	var body_treeid : UnsafePointer[Int32]

	var body_geomnum : UnsafePointer[Int32]

	var body_geomadr : UnsafePointer[Int32]

	var body_simple : UnsafePointer[mjtByte]

	var body_sameframe : UnsafePointer[mjtByte]

	var body_pos : UnsafePointer[mjtNum]

	var body_quat : UnsafePointer[mjtNum]

	var body_ipos : UnsafePointer[mjtNum]

	var body_iquat : UnsafePointer[mjtNum]

	var body_mass : UnsafePointer[mjtNum]

	var body_subtreemass : UnsafePointer[mjtNum]

	var body_inertia : UnsafePointer[mjtNum]

	var body_invweight0 : UnsafePointer[mjtNum]

	var body_gravcomp : UnsafePointer[mjtNum]

	var body_margin : UnsafePointer[mjtNum]

	var body_user : UnsafePointer[mjtNum]

	var body_plugin : UnsafePointer[Int32]

	var body_contype : UnsafePointer[Int32]

	var body_conaffinity : UnsafePointer[Int32]

	var body_bvhadr : UnsafePointer[Int32]

	var body_bvhnum : UnsafePointer[Int32]

	var bvh_depth : UnsafePointer[Int32]

	var bvh_child : UnsafePointer[Int32]

	var bvh_nodeid : UnsafePointer[Int32]

	var bvh_aabb : UnsafePointer[mjtNum]

	var oct_depth : UnsafePointer[Int32]

	var oct_child : UnsafePointer[Int32]

	var oct_aabb : UnsafePointer[mjtNum]

	var oct_coeff : UnsafePointer[mjtNum]

	var jnt_type : UnsafePointer[Int32]

	var jnt_qposadr : UnsafePointer[Int32]

	var jnt_dofadr : UnsafePointer[Int32]

	var jnt_bodyid : UnsafePointer[Int32]

	var jnt_group : UnsafePointer[Int32]

	var jnt_limited : UnsafePointer[mjtByte]

	var jnt_actfrclimited : UnsafePointer[mjtByte]

	var jnt_actgravcomp : UnsafePointer[mjtByte]

	var jnt_solref : UnsafePointer[mjtNum]

	var jnt_solimp : UnsafePointer[mjtNum]

	var jnt_pos : UnsafePointer[mjtNum]

	var jnt_axis : UnsafePointer[mjtNum]

	var jnt_stiffness : UnsafePointer[mjtNum]

	var jnt_range : UnsafePointer[mjtNum]

	var jnt_actfrcrange : UnsafePointer[mjtNum]

	var jnt_margin : UnsafePointer[mjtNum]

	var jnt_user : UnsafePointer[mjtNum]

	var dof_bodyid : UnsafePointer[Int32]

	var dof_jntid : UnsafePointer[Int32]

	var dof_parentid : UnsafePointer[Int32]

	var dof_treeid : UnsafePointer[Int32]

	var dof_Madr : UnsafePointer[Int32]

	var dof_simplenum : UnsafePointer[Int32]

	var dof_solref : UnsafePointer[mjtNum]

	var dof_solimp : UnsafePointer[mjtNum]

	var dof_frictionloss : UnsafePointer[mjtNum]

	var dof_armature : UnsafePointer[mjtNum]

	var dof_damping : UnsafePointer[mjtNum]

	var dof_invweight0 : UnsafePointer[mjtNum]

	var dof_M0 : UnsafePointer[mjtNum]

	var geom_type : UnsafePointer[Int32]

	var geom_contype : UnsafePointer[Int32]

	var geom_conaffinity : UnsafePointer[Int32]

	var geom_condim : UnsafePointer[Int32]

	var geom_bodyid : UnsafePointer[Int32]

	var geom_dataid : UnsafePointer[Int32]

	var geom_matid : UnsafePointer[Int32]

	var geom_group : UnsafePointer[Int32]

	var geom_priority : UnsafePointer[Int32]

	var geom_plugin : UnsafePointer[Int32]

	var geom_sameframe : UnsafePointer[mjtByte]

	var geom_solmix : UnsafePointer[mjtNum]

	var geom_solref : UnsafePointer[mjtNum]

	var geom_solimp : UnsafePointer[mjtNum]

	var geom_size : UnsafePointer[mjtNum]

	var geom_aabb : UnsafePointer[mjtNum]

	var geom_rbound : UnsafePointer[mjtNum]

	var geom_pos : UnsafePointer[mjtNum]

	var geom_quat : UnsafePointer[mjtNum]

	var geom_friction : UnsafePointer[mjtNum]

	var geom_margin : UnsafePointer[mjtNum]

	var geom_gap : UnsafePointer[mjtNum]

	var geom_fluid : UnsafePointer[mjtNum]

	var geom_user : UnsafePointer[mjtNum]

	var geom_rgba : UnsafePointer[Float32]

	var site_type : UnsafePointer[Int32]

	var site_bodyid : UnsafePointer[Int32]

	var site_matid : UnsafePointer[Int32]

	var site_group : UnsafePointer[Int32]

	var site_sameframe : UnsafePointer[mjtByte]

	var site_size : UnsafePointer[mjtNum]

	var site_pos : UnsafePointer[mjtNum]

	var site_quat : UnsafePointer[mjtNum]

	var site_user : UnsafePointer[mjtNum]

	var site_rgba : UnsafePointer[Float32]

	var cam_mode : UnsafePointer[Int32]

	var cam_bodyid : UnsafePointer[Int32]

	var cam_targetbodyid : UnsafePointer[Int32]

	var cam_pos : UnsafePointer[mjtNum]

	var cam_quat : UnsafePointer[mjtNum]

	var cam_poscom0 : UnsafePointer[mjtNum]

	var cam_pos0 : UnsafePointer[mjtNum]

	var cam_mat0 : UnsafePointer[mjtNum]

	var cam_orthographic : UnsafePointer[Int32]

	var cam_fovy : UnsafePointer[mjtNum]

	var cam_ipd : UnsafePointer[mjtNum]

	var cam_resolution : UnsafePointer[Int32]

	var cam_sensorsize : UnsafePointer[Float32]

	var cam_intrinsic : UnsafePointer[Float32]

	var cam_user : UnsafePointer[mjtNum]

	var light_mode : UnsafePointer[Int32]

	var light_bodyid : UnsafePointer[Int32]

	var light_targetbodyid : UnsafePointer[Int32]

	var light_type : UnsafePointer[Int32]

	var light_texid : UnsafePointer[Int32]

	var light_castshadow : UnsafePointer[mjtByte]

	var light_bulbradius : UnsafePointer[Float32]

	var light_intensity : UnsafePointer[Float32]

	var light_range : UnsafePointer[Float32]

	var light_active : UnsafePointer[mjtByte]

	var light_pos : UnsafePointer[mjtNum]

	var light_dir : UnsafePointer[mjtNum]

	var light_poscom0 : UnsafePointer[mjtNum]

	var light_pos0 : UnsafePointer[mjtNum]

	var light_dir0 : UnsafePointer[mjtNum]

	var light_attenuation : UnsafePointer[Float32]

	var light_cutoff : UnsafePointer[Float32]

	var light_exponent : UnsafePointer[Float32]

	var light_ambient : UnsafePointer[Float32]

	var light_diffuse : UnsafePointer[Float32]

	var light_specular : UnsafePointer[Float32]

	var flex_contype : UnsafePointer[Int32]

	var flex_conaffinity : UnsafePointer[Int32]

	var flex_condim : UnsafePointer[Int32]

	var flex_priority : UnsafePointer[Int32]

	var flex_solmix : UnsafePointer[mjtNum]

	var flex_solref : UnsafePointer[mjtNum]

	var flex_solimp : UnsafePointer[mjtNum]

	var flex_friction : UnsafePointer[mjtNum]

	var flex_margin : UnsafePointer[mjtNum]

	var flex_gap : UnsafePointer[mjtNum]

	var flex_internal : UnsafePointer[mjtByte]

	var flex_selfcollide : UnsafePointer[Int32]

	var flex_activelayers : UnsafePointer[Int32]

	var flex_dim : UnsafePointer[Int32]

	var flex_matid : UnsafePointer[Int32]

	var flex_group : UnsafePointer[Int32]

	var flex_interp : UnsafePointer[Int32]

	var flex_nodeadr : UnsafePointer[Int32]

	var flex_nodenum : UnsafePointer[Int32]

	var flex_vertadr : UnsafePointer[Int32]

	var flex_vertnum : UnsafePointer[Int32]

	var flex_edgeadr : UnsafePointer[Int32]

	var flex_edgenum : UnsafePointer[Int32]

	var flex_elemadr : UnsafePointer[Int32]

	var flex_elemnum : UnsafePointer[Int32]

	var flex_elemdataadr : UnsafePointer[Int32]

	var flex_elemedgeadr : UnsafePointer[Int32]

	var flex_shellnum : UnsafePointer[Int32]

	var flex_shelldataadr : UnsafePointer[Int32]

	var flex_evpairadr : UnsafePointer[Int32]

	var flex_evpairnum : UnsafePointer[Int32]

	var flex_texcoordadr : UnsafePointer[Int32]

	var flex_nodebodyid : UnsafePointer[Int32]

	var flex_vertbodyid : UnsafePointer[Int32]

	var flex_edge : UnsafePointer[Int32]

	var flex_edgeflap : UnsafePointer[Int32]

	var flex_elem : UnsafePointer[Int32]

	var flex_elemtexcoord : UnsafePointer[Int32]

	var flex_elemedge : UnsafePointer[Int32]

	var flex_elemlayer : UnsafePointer[Int32]

	var flex_shell : UnsafePointer[Int32]

	var flex_evpair : UnsafePointer[Int32]

	var flex_vert : UnsafePointer[mjtNum]

	var flex_vert0 : UnsafePointer[mjtNum]

	var flex_node : UnsafePointer[mjtNum]

	var flex_node0 : UnsafePointer[mjtNum]

	var flexedge_length0 : UnsafePointer[mjtNum]

	var flexedge_invweight0 : UnsafePointer[mjtNum]

	var flex_radius : UnsafePointer[mjtNum]

	var flex_stiffness : UnsafePointer[mjtNum]

	var flex_bending : UnsafePointer[mjtNum]

	var flex_damping : UnsafePointer[mjtNum]

	var flex_edgestiffness : UnsafePointer[mjtNum]

	var flex_edgedamping : UnsafePointer[mjtNum]

	var flex_edgeequality : UnsafePointer[mjtByte]

	var flex_rigid : UnsafePointer[mjtByte]

	var flexedge_rigid : UnsafePointer[mjtByte]

	var flex_centered : UnsafePointer[mjtByte]

	var flex_flatskin : UnsafePointer[mjtByte]

	var flex_bvhadr : UnsafePointer[Int32]

	var flex_bvhnum : UnsafePointer[Int32]

	var flex_rgba : UnsafePointer[Float32]

	var flex_texcoord : UnsafePointer[Float32]

	var mesh_vertadr : UnsafePointer[Int32]

	var mesh_vertnum : UnsafePointer[Int32]

	var mesh_faceadr : UnsafePointer[Int32]

	var mesh_facenum : UnsafePointer[Int32]

	var mesh_bvhadr : UnsafePointer[Int32]

	var mesh_bvhnum : UnsafePointer[Int32]

	var mesh_octadr : UnsafePointer[Int32]

	var mesh_octnum : UnsafePointer[Int32]

	var mesh_normaladr : UnsafePointer[Int32]

	var mesh_normalnum : UnsafePointer[Int32]

	var mesh_texcoordadr : UnsafePointer[Int32]

	var mesh_texcoordnum : UnsafePointer[Int32]

	var mesh_graphadr : UnsafePointer[Int32]

	var mesh_vert : UnsafePointer[Float32]

	var mesh_normal : UnsafePointer[Float32]

	var mesh_texcoord : UnsafePointer[Float32]

	var mesh_face : UnsafePointer[Int32]

	var mesh_facenormal : UnsafePointer[Int32]

	var mesh_facetexcoord : UnsafePointer[Int32]

	var mesh_graph : UnsafePointer[Int32]

	var mesh_scale : UnsafePointer[mjtNum]

	var mesh_pos : UnsafePointer[mjtNum]

	var mesh_quat : UnsafePointer[mjtNum]

	var mesh_pathadr : UnsafePointer[Int32]

	var mesh_polynum : UnsafePointer[Int32]

	var mesh_polyadr : UnsafePointer[Int32]

	var mesh_polynormal : UnsafePointer[mjtNum]

	var mesh_polyvertadr : UnsafePointer[Int32]

	var mesh_polyvertnum : UnsafePointer[Int32]

	var mesh_polyvert : UnsafePointer[Int32]

	var mesh_polymapadr : UnsafePointer[Int32]

	var mesh_polymapnum : UnsafePointer[Int32]

	var mesh_polymap : UnsafePointer[Int32]

	var skin_matid : UnsafePointer[Int32]

	var skin_group : UnsafePointer[Int32]

	var skin_rgba : UnsafePointer[Float32]

	var skin_inflate : UnsafePointer[Float32]

	var skin_vertadr : UnsafePointer[Int32]

	var skin_vertnum : UnsafePointer[Int32]

	var skin_texcoordadr : UnsafePointer[Int32]

	var skin_faceadr : UnsafePointer[Int32]

	var skin_facenum : UnsafePointer[Int32]

	var skin_boneadr : UnsafePointer[Int32]

	var skin_bonenum : UnsafePointer[Int32]

	var skin_vert : UnsafePointer[Float32]

	var skin_texcoord : UnsafePointer[Float32]

	var skin_face : UnsafePointer[Int32]

	var skin_bonevertadr : UnsafePointer[Int32]

	var skin_bonevertnum : UnsafePointer[Int32]

	var skin_bonebindpos : UnsafePointer[Float32]

	var skin_bonebindquat : UnsafePointer[Float32]

	var skin_bonebodyid : UnsafePointer[Int32]

	var skin_bonevertid : UnsafePointer[Int32]

	var skin_bonevertweight : UnsafePointer[Float32]

	var skin_pathadr : UnsafePointer[Int32]

	var hfield_size : UnsafePointer[mjtNum]

	var hfield_nrow : UnsafePointer[Int32]

	var hfield_ncol : UnsafePointer[Int32]

	var hfield_adr : UnsafePointer[Int32]

	var hfield_data : UnsafePointer[Float32]

	var hfield_pathadr : UnsafePointer[Int32]

	var tex_type : UnsafePointer[Int32]

	var tex_colorspace : UnsafePointer[Int32]

	var tex_height : UnsafePointer[Int32]

	var tex_width : UnsafePointer[Int32]

	var tex_nchannel : UnsafePointer[Int32]

	var tex_adr : UnsafePointer[Int32]

	var tex_data : UnsafePointer[mjtByte]

	var tex_pathadr : UnsafePointer[Int32]

	var mat_texid : UnsafePointer[Int32]

	var mat_texuniform : UnsafePointer[mjtByte]

	var mat_texrepeat : UnsafePointer[Float32]

	var mat_emission : UnsafePointer[Float32]

	var mat_specular : UnsafePointer[Float32]

	var mat_shininess : UnsafePointer[Float32]

	var mat_reflectance : UnsafePointer[Float32]

	var mat_metallic : UnsafePointer[Float32]

	var mat_roughness : UnsafePointer[Float32]

	var mat_rgba : UnsafePointer[Float32]

	var pair_dim : UnsafePointer[Int32]

	var pair_geom1 : UnsafePointer[Int32]

	var pair_geom2 : UnsafePointer[Int32]

	var pair_signature : UnsafePointer[Int32]

	var pair_solref : UnsafePointer[mjtNum]

	var pair_solreffriction : UnsafePointer[mjtNum]

	var pair_solimp : UnsafePointer[mjtNum]

	var pair_margin : UnsafePointer[mjtNum]

	var pair_gap : UnsafePointer[mjtNum]

	var pair_friction : UnsafePointer[mjtNum]

	var exclude_signature : UnsafePointer[Int32]

	var eq_type : UnsafePointer[Int32]

	var eq_obj1id : UnsafePointer[Int32]

	var eq_obj2id : UnsafePointer[Int32]

	var eq_objtype : UnsafePointer[Int32]

	var eq_active0 : UnsafePointer[mjtByte]

	var eq_solref : UnsafePointer[mjtNum]

	var eq_solimp : UnsafePointer[mjtNum]

	var eq_data : UnsafePointer[mjtNum]

	var tendon_adr : UnsafePointer[Int32]

	var tendon_num : UnsafePointer[Int32]

	var tendon_matid : UnsafePointer[Int32]

	var tendon_group : UnsafePointer[Int32]

	var tendon_limited : UnsafePointer[mjtByte]

	var tendon_actfrclimited : UnsafePointer[mjtByte]

	var tendon_width : UnsafePointer[mjtNum]

	var tendon_solref_lim : UnsafePointer[mjtNum]

	var tendon_solimp_lim : UnsafePointer[mjtNum]

	var tendon_solref_fri : UnsafePointer[mjtNum]

	var tendon_solimp_fri : UnsafePointer[mjtNum]

	var tendon_range : UnsafePointer[mjtNum]

	var tendon_actfrcrange : UnsafePointer[mjtNum]

	var tendon_margin : UnsafePointer[mjtNum]

	var tendon_stiffness : UnsafePointer[mjtNum]

	var tendon_damping : UnsafePointer[mjtNum]

	var tendon_armature : UnsafePointer[mjtNum]

	var tendon_frictionloss : UnsafePointer[mjtNum]

	var tendon_lengthspring : UnsafePointer[mjtNum]

	var tendon_length0 : UnsafePointer[mjtNum]

	var tendon_invweight0 : UnsafePointer[mjtNum]

	var tendon_user : UnsafePointer[mjtNum]

	var tendon_rgba : UnsafePointer[Float32]

	var wrap_type : UnsafePointer[Int32]

	var wrap_objid : UnsafePointer[Int32]

	var wrap_prm : UnsafePointer[mjtNum]

	var actuator_trntype : UnsafePointer[Int32]

	var actuator_dyntype : UnsafePointer[Int32]

	var actuator_gaintype : UnsafePointer[Int32]

	var actuator_biastype : UnsafePointer[Int32]

	var actuator_trnid : UnsafePointer[Int32]

	var actuator_actadr : UnsafePointer[Int32]

	var actuator_actnum : UnsafePointer[Int32]

	var actuator_group : UnsafePointer[Int32]

	var actuator_ctrllimited : UnsafePointer[mjtByte]

	var actuator_forcelimited : UnsafePointer[mjtByte]

	var actuator_actlimited : UnsafePointer[mjtByte]

	var actuator_dynprm : UnsafePointer[mjtNum]

	var actuator_gainprm : UnsafePointer[mjtNum]

	var actuator_biasprm : UnsafePointer[mjtNum]

	var actuator_actearly : UnsafePointer[mjtByte]

	var actuator_ctrlrange : UnsafePointer[mjtNum]

	var actuator_forcerange : UnsafePointer[mjtNum]

	var actuator_actrange : UnsafePointer[mjtNum]

	var actuator_gear : UnsafePointer[mjtNum]

	var actuator_cranklength : UnsafePointer[mjtNum]

	var actuator_acc0 : UnsafePointer[mjtNum]

	var actuator_length0 : UnsafePointer[mjtNum]

	var actuator_lengthrange : UnsafePointer[mjtNum]

	var actuator_user : UnsafePointer[mjtNum]

	var actuator_plugin : UnsafePointer[Int32]

	var sensor_type : UnsafePointer[Int32]

	var sensor_datatype : UnsafePointer[Int32]

	var sensor_needstage : UnsafePointer[Int32]

	var sensor_objtype : UnsafePointer[Int32]

	var sensor_objid : UnsafePointer[Int32]

	var sensor_reftype : UnsafePointer[Int32]

	var sensor_refid : UnsafePointer[Int32]

	var sensor_intprm : UnsafePointer[Int32]

	var sensor_dim : UnsafePointer[Int32]

	var sensor_adr : UnsafePointer[Int32]

	var sensor_cutoff : UnsafePointer[mjtNum]

	var sensor_noise : UnsafePointer[mjtNum]

	var sensor_user : UnsafePointer[mjtNum]

	var sensor_plugin : UnsafePointer[Int32]

	var plugin : UnsafePointer[Int32]

	var plugin_stateadr : UnsafePointer[Int32]

	var plugin_statenum : UnsafePointer[Int32]

	var plugin_attr : UnsafePointer[Int8]

	var plugin_attradr : UnsafePointer[Int32]

	var numeric_adr : UnsafePointer[Int32]

	var numeric_size : UnsafePointer[Int32]

	var numeric_data : UnsafePointer[mjtNum]

	var text_adr : UnsafePointer[Int32]

	var text_size : UnsafePointer[Int32]

	var text_data : UnsafePointer[Int8]

	var tuple_adr : UnsafePointer[Int32]

	var tuple_size : UnsafePointer[Int32]

	var tuple_objtype : UnsafePointer[Int32]

	var tuple_objid : UnsafePointer[Int32]

	var tuple_objprm : UnsafePointer[mjtNum]

	var key_time : UnsafePointer[mjtNum]

	var key_qpos : UnsafePointer[mjtNum]

	var key_qvel : UnsafePointer[mjtNum]

	var key_act : UnsafePointer[mjtNum]

	var key_mpos : UnsafePointer[mjtNum]

	var key_mquat : UnsafePointer[mjtNum]

	var key_ctrl : UnsafePointer[mjtNum]

	var name_bodyadr : UnsafePointer[Int32]

	var name_jntadr : UnsafePointer[Int32]

	var name_geomadr : UnsafePointer[Int32]

	var name_siteadr : UnsafePointer[Int32]

	var name_camadr : UnsafePointer[Int32]

	var name_lightadr : UnsafePointer[Int32]

	var name_flexadr : UnsafePointer[Int32]

	var name_meshadr : UnsafePointer[Int32]

	var name_skinadr : UnsafePointer[Int32]

	var name_hfieldadr : UnsafePointer[Int32]

	var name_texadr : UnsafePointer[Int32]

	var name_matadr : UnsafePointer[Int32]

	var name_pairadr : UnsafePointer[Int32]

	var name_excludeadr : UnsafePointer[Int32]

	var name_eqadr : UnsafePointer[Int32]

	var name_tendonadr : UnsafePointer[Int32]

	var name_actuatoradr : UnsafePointer[Int32]

	var name_sensoradr : UnsafePointer[Int32]

	var name_numericadr : UnsafePointer[Int32]

	var name_textadr : UnsafePointer[Int32]

	var name_tupleadr : UnsafePointer[Int32]

	var name_keyadr : UnsafePointer[Int32]

	var name_pluginadr : UnsafePointer[Int32]

	var names : UnsafePointer[Int8]

	var names_map : UnsafePointer[Int32]

	var paths : UnsafePointer[Int8]

	var B_rownnz : UnsafePointer[Int32]

	var B_rowadr : UnsafePointer[Int32]

	var B_colind : UnsafePointer[Int32]

	var M_rownnz : UnsafePointer[Int32]

	var M_rowadr : UnsafePointer[Int32]

	var M_colind : UnsafePointer[Int32]

	var mapM2M : UnsafePointer[Int32]

	var D_rownnz : UnsafePointer[Int32]

	var D_rowadr : UnsafePointer[Int32]

	var D_diag : UnsafePointer[Int32]

	var D_colind : UnsafePointer[Int32]

	var mapM2D : UnsafePointer[Int32]

	var mapD2M : UnsafePointer[Int32]

	var signature : ffi.c_ulong

alias mjModel = mjModel_

@register_passable("trivial")
struct mjtTaskStatus_:
	alias mjTASK_NEW = 0

	alias mjTASK_QUEUED = 1

	alias mjTASK_COMPLETED = 2

alias mjtTaskStatus = mjtTaskStatus_
alias mjfTask = fn(OpaquePointer) -> OpaquePointer
@register_passable("trivial")
struct mjThreadPool_:

	var nworker : Int32

alias mjThreadPool = mjThreadPool_

@register_passable("trivial")
struct mjTask_:
	var func : fn(OpaquePointer) -> OpaquePointer

	var args : OpaquePointer

	var status : Int32

alias mjTask = mjTask_

@register_passable("trivial")
struct mjtState_:

	alias mjSTATE_TIME = 1

	alias mjSTATE_QPOS = 2

	alias mjSTATE_QVEL = 4

	alias mjSTATE_ACT = 8

	alias mjSTATE_WARMSTART = 16

	alias mjSTATE_CTRL = 32

	alias mjSTATE_QFRC_APPLIED = 64

	alias mjSTATE_XFRC_APPLIED = 128

	alias mjSTATE_EQ_ACTIVE = 256

	alias mjSTATE_MOCAP_POS = 512

	alias mjSTATE_MOCAP_QUAT = 1024

	alias mjSTATE_USERDATA = 2048

	alias mjSTATE_PLUGIN = 4096

	alias mjNSTATE = 13

	alias mjSTATE_PHYSICS = 14

	alias mjSTATE_FULLPHYSICS = 4111

	alias mjSTATE_USER = 4064

	alias mjSTATE_INTEGRATION = 8191

alias mjtState = mjtState_
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
# ---------------------------------- primitive types (mjt) -----------------------------------------

@register_passable("trivial")
struct mjtWarning_:
	alias mjWARN_INERTIA = 0

	alias mjWARN_CONTACTFULL = 1

	alias mjWARN_CNSTRFULL = 2

	alias mjWARN_VGEOMFULL = 3

	alias mjWARN_BADQPOS = 4

	alias mjWARN_BADQVEL = 5

	alias mjWARN_BADQACC = 6

	alias mjWARN_BADCTRL = 7

	alias mjNWARNING = 8

alias mjtWarning = mjtWarning_
@register_passable("trivial")
struct mjtTimer_:
	alias mjTIMER_STEP = 0

	alias mjTIMER_FORWARD = 1

	alias mjTIMER_INVERSE = 2

	alias mjTIMER_POSITION = 3

	alias mjTIMER_VELOCITY = 4

	alias mjTIMER_ACTUATION = 5

	alias mjTIMER_CONSTRAINT = 6

	alias mjTIMER_ADVANCE = 7

	alias mjTIMER_POS_KINEMATICS = 8

	alias mjTIMER_POS_INERTIA = 9

	alias mjTIMER_POS_COLLISION = 10

	alias mjTIMER_POS_MAKE = 11

	alias mjTIMER_POS_PROJECT = 12

	alias mjTIMER_COL_BROAD = 13

	alias mjTIMER_COL_NARROW = 14

	alias mjNTIMER = 15

alias mjtTimer = mjtTimer_
@register_passable("trivial")
struct mjContact_:

	var dist : Float64

	var pos : StaticTuple[mjtNum, 3]

	var frame : StaticTuple[mjtNum, 9]

	var includemargin : Float64

	var friction : StaticTuple[mjtNum, 5]

	var solref : StaticTuple[mjtNum, 2]

	var solreffriction : StaticTuple[mjtNum, 2]

	var solimp : StaticTuple[mjtNum, 5]

	var mu : Float64

	var H : StaticTuple[mjtNum, 36]

	var dim : Int32

	var geom1 : Int32

	var geom2 : Int32

	var geom : StaticTuple[Int32, 2]

	var flex : StaticTuple[Int32, 2]

	var elem : StaticTuple[Int32, 2]

	var vert : StaticTuple[Int32, 2]

	var exclude : Int32

	var efc_address : Int32

alias mjContact = mjContact_

@register_passable("trivial")
struct mjWarningStat_:

	var lastinfo : Int32

	var number : Int32

alias mjWarningStat = mjWarningStat_

@register_passable("trivial")
struct mjTimerStat_:
	var duration : Float64

	var number : Int32

alias mjTimerStat = mjTimerStat_

@register_passable("trivial")
struct mjSolverStat_:
	var improvement : Float64

	var gradient : Float64

	var lineslope : Float64

	var nactive : Int32

	var nchange : Int32

	var neval : Int32

	var nupdate : Int32

alias mjSolverStat = mjSolverStat_

@register_passable("trivial")
struct mjData_:

	var narena : ffi.c_ulong

	var nbuffer : ffi.c_ulong

	var nplugin : Int32

	var pstack : ffi.c_ulong

	var pbase : ffi.c_ulong

	var parena : ffi.c_ulong

	var maxuse_stack : ffi.c_ulong

	var maxuse_threadstack : StaticTuple[mjtSize, 128]

	var maxuse_arena : ffi.c_ulong

	var maxuse_con : Int32

	var maxuse_efc : Int32

	var solver : StaticTuple[mjSolverStat, 4000]

	var solver_niter : StaticTuple[Int32, 20]

	var solver_nnz : StaticTuple[Int32, 20]

	var solver_fwdinv : StaticTuple[mjtNum, 2]

	var warning : StaticTuple[mjWarningStat, 8]

	var timer : StaticTuple[mjTimerStat, 15]

	var ncon : Int32

	var ne : Int32

	var nf : Int32

	var nl : Int32

	var nefc : Int32

	var nJ : Int32

	var nA : Int32

	var nisland : Int32

	var nidof : Int32

	var time : Float64

	var energy : StaticTuple[mjtNum, 2]

	var buffer : OpaquePointer

	var arena : OpaquePointer

	var qpos : UnsafePointer[mjtNum]

	var qvel : UnsafePointer[mjtNum]

	var act : UnsafePointer[mjtNum]

	var qacc_warmstart : UnsafePointer[mjtNum]

	var plugin_state : UnsafePointer[mjtNum]

	var ctrl : UnsafePointer[mjtNum]

	var qfrc_applied : UnsafePointer[mjtNum]

	var xfrc_applied : UnsafePointer[mjtNum]

	var eq_active : UnsafePointer[mjtByte]

	var mocap_pos : UnsafePointer[mjtNum]

	var mocap_quat : UnsafePointer[mjtNum]

	var qacc : UnsafePointer[mjtNum]

	var act_dot : UnsafePointer[mjtNum]

	var userdata : UnsafePointer[mjtNum]

	var sensordata : UnsafePointer[mjtNum]

	var plugin : UnsafePointer[Int32]

	var plugin_data : UnsafePointer[uintptr_t]

	var xpos : UnsafePointer[mjtNum]

	var xquat : UnsafePointer[mjtNum]

	var xmat : UnsafePointer[mjtNum]

	var xipos : UnsafePointer[mjtNum]

	var ximat : UnsafePointer[mjtNum]

	var xanchor : UnsafePointer[mjtNum]

	var xaxis : UnsafePointer[mjtNum]

	var geom_xpos : UnsafePointer[mjtNum]

	var geom_xmat : UnsafePointer[mjtNum]

	var site_xpos : UnsafePointer[mjtNum]

	var site_xmat : UnsafePointer[mjtNum]

	var cam_xpos : UnsafePointer[mjtNum]

	var cam_xmat : UnsafePointer[mjtNum]

	var light_xpos : UnsafePointer[mjtNum]

	var light_xdir : UnsafePointer[mjtNum]

	var subtree_com : UnsafePointer[mjtNum]

	var cdof : UnsafePointer[mjtNum]

	var cinert : UnsafePointer[mjtNum]

	var flexvert_xpos : UnsafePointer[mjtNum]

	var flexelem_aabb : UnsafePointer[mjtNum]

	var flexedge_J_rownnz : UnsafePointer[Int32]

	var flexedge_J_rowadr : UnsafePointer[Int32]

	var flexedge_J_colind : UnsafePointer[Int32]

	var flexedge_J : UnsafePointer[mjtNum]

	var flexedge_length : UnsafePointer[mjtNum]

	var bvh_aabb_dyn : UnsafePointer[mjtNum]

	var ten_wrapadr : UnsafePointer[Int32]

	var ten_wrapnum : UnsafePointer[Int32]

	var ten_J_rownnz : UnsafePointer[Int32]

	var ten_J_rowadr : UnsafePointer[Int32]

	var ten_J_colind : UnsafePointer[Int32]

	var ten_J : UnsafePointer[mjtNum]

	var ten_length : UnsafePointer[mjtNum]

	var wrap_obj : UnsafePointer[Int32]

	var wrap_xpos : UnsafePointer[mjtNum]

	var actuator_length : UnsafePointer[mjtNum]

	var moment_rownnz : UnsafePointer[Int32]

	var moment_rowadr : UnsafePointer[Int32]

	var moment_colind : UnsafePointer[Int32]

	var actuator_moment : UnsafePointer[mjtNum]

	var crb : UnsafePointer[mjtNum]

	var qM : UnsafePointer[mjtNum]

	var M : UnsafePointer[mjtNum]

	var qLD : UnsafePointer[mjtNum]

	var qLDiagInv : UnsafePointer[mjtNum]

	var bvh_active : UnsafePointer[mjtByte]

	var flexedge_velocity : UnsafePointer[mjtNum]

	var ten_velocity : UnsafePointer[mjtNum]

	var actuator_velocity : UnsafePointer[mjtNum]

	var cvel : UnsafePointer[mjtNum]

	var cdof_dot : UnsafePointer[mjtNum]

	var qfrc_bias : UnsafePointer[mjtNum]

	var qfrc_spring : UnsafePointer[mjtNum]

	var qfrc_damper : UnsafePointer[mjtNum]

	var qfrc_gravcomp : UnsafePointer[mjtNum]

	var qfrc_fluid : UnsafePointer[mjtNum]

	var qfrc_passive : UnsafePointer[mjtNum]

	var subtree_linvel : UnsafePointer[mjtNum]

	var subtree_angmom : UnsafePointer[mjtNum]

	var qH : UnsafePointer[mjtNum]

	var qHDiagInv : UnsafePointer[mjtNum]

	var qDeriv : UnsafePointer[mjtNum]

	var qLU : UnsafePointer[mjtNum]

	var actuator_force : UnsafePointer[mjtNum]

	var qfrc_actuator : UnsafePointer[mjtNum]

	var qfrc_smooth : UnsafePointer[mjtNum]

	var qacc_smooth : UnsafePointer[mjtNum]

	var qfrc_constraint : UnsafePointer[mjtNum]

	var qfrc_inverse : UnsafePointer[mjtNum]

	var cacc : UnsafePointer[mjtNum]

	var cfrc_int : UnsafePointer[mjtNum]

	var cfrc_ext : UnsafePointer[mjtNum]

	var contact : UnsafePointer[mjContact]

	var efc_type : UnsafePointer[Int32]

	var efc_id : UnsafePointer[Int32]

	var efc_J_rownnz : UnsafePointer[Int32]

	var efc_J_rowadr : UnsafePointer[Int32]

	var efc_J_rowsuper : UnsafePointer[Int32]

	var efc_J_colind : UnsafePointer[Int32]

	var efc_JT_rownnz : UnsafePointer[Int32]

	var efc_JT_rowadr : UnsafePointer[Int32]

	var efc_JT_rowsuper : UnsafePointer[Int32]

	var efc_JT_colind : UnsafePointer[Int32]

	var efc_J : UnsafePointer[mjtNum]

	var efc_JT : UnsafePointer[mjtNum]

	var efc_pos : UnsafePointer[mjtNum]

	var efc_margin : UnsafePointer[mjtNum]

	var efc_frictionloss : UnsafePointer[mjtNum]

	var efc_diagApprox : UnsafePointer[mjtNum]

	var efc_KBIP : UnsafePointer[mjtNum]

	var efc_D : UnsafePointer[mjtNum]

	var efc_R : UnsafePointer[mjtNum]

	var tendon_efcadr : UnsafePointer[Int32]

	var dof_island : UnsafePointer[Int32]

	var island_nv : UnsafePointer[Int32]

	var island_idofadr : UnsafePointer[Int32]

	var island_dofadr : UnsafePointer[Int32]

	var map_dof2idof : UnsafePointer[Int32]

	var map_idof2dof : UnsafePointer[Int32]

	var ifrc_smooth : UnsafePointer[mjtNum]

	var iacc_smooth : UnsafePointer[mjtNum]

	var iM_rownnz : UnsafePointer[Int32]

	var iM_rowadr : UnsafePointer[Int32]

	var iM_colind : UnsafePointer[Int32]

	var iM : UnsafePointer[mjtNum]

	var iLD : UnsafePointer[mjtNum]

	var iLDiagInv : UnsafePointer[mjtNum]

	var iacc : UnsafePointer[mjtNum]

	var efc_island : UnsafePointer[Int32]

	var island_ne : UnsafePointer[Int32]

	var island_nf : UnsafePointer[Int32]

	var island_nefc : UnsafePointer[Int32]

	var island_iefcadr : UnsafePointer[Int32]

	var map_efc2iefc : UnsafePointer[Int32]

	var map_iefc2efc : UnsafePointer[Int32]

	var iefc_type : UnsafePointer[Int32]

	var iefc_id : UnsafePointer[Int32]

	var iefc_J_rownnz : UnsafePointer[Int32]

	var iefc_J_rowadr : UnsafePointer[Int32]

	var iefc_J_rowsuper : UnsafePointer[Int32]

	var iefc_J_colind : UnsafePointer[Int32]

	var iefc_JT_rownnz : UnsafePointer[Int32]

	var iefc_JT_rowadr : UnsafePointer[Int32]

	var iefc_JT_rowsuper : UnsafePointer[Int32]

	var iefc_JT_colind : UnsafePointer[Int32]

	var iefc_J : UnsafePointer[mjtNum]

	var iefc_JT : UnsafePointer[mjtNum]

	var iefc_frictionloss : UnsafePointer[mjtNum]

	var iefc_D : UnsafePointer[mjtNum]

	var iefc_R : UnsafePointer[mjtNum]

	var efc_AR_rownnz : UnsafePointer[Int32]

	var efc_AR_rowadr : UnsafePointer[Int32]

	var efc_AR_colind : UnsafePointer[Int32]

	var efc_AR : UnsafePointer[mjtNum]

	var efc_vel : UnsafePointer[mjtNum]

	var efc_aref : UnsafePointer[mjtNum]

	var efc_b : UnsafePointer[mjtNum]

	var iefc_aref : UnsafePointer[mjtNum]

	var iefc_state : UnsafePointer[Int32]

	var iefc_force : UnsafePointer[mjtNum]

	var efc_state : UnsafePointer[Int32]

	var efc_force : UnsafePointer[mjtNum]

	var ifrc_constraint : UnsafePointer[mjtNum]

	var threadpool : ffi.c_ulong

	var signature : ffi.c_ulong

alias mjData = mjData_

alias mjfGeneric = fn(read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mjfConFilt = fn(read UnsafePointer[mjModel], UnsafePointer[mjData], Int32, Int32) -> Int32
alias mjfSensor = fn(read UnsafePointer[mjModel], UnsafePointer[mjData], Int32) -> NoneType
alias mjfTime = fn() -> mjtNum
alias mjfAct = fn(read UnsafePointer[mjModel], read UnsafePointer[mjData], Int32) -> mjtNum
alias mjfCollision = fn(read UnsafePointer[mjModel], read UnsafePointer[mjData], UnsafePointer[mjContact], Int32, Int32, mjtNum) -> Int32
@register_passable("trivial")
struct mjtCatBit_:

	alias mjCAT_STATIC = 1

	alias mjCAT_DYNAMIC = 2

	alias mjCAT_DECOR = 4

	alias mjCAT_ALL = 7

alias mjtCatBit = mjtCatBit_
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
# ---------------------------------- primitive types (mjt) -----------------------------------------

@register_passable("trivial")
struct mjtMouse_:
	alias mjMOUSE_NONE = 0

	alias mjMOUSE_ROTATE_V = 1

	alias mjMOUSE_ROTATE_H = 2

	alias mjMOUSE_MOVE_V = 3

	alias mjMOUSE_MOVE_H = 4

	alias mjMOUSE_ZOOM = 5

	alias mjMOUSE_SELECT = 6

alias mjtMouse = mjtMouse_
@register_passable("trivial")
struct mjtPertBit_:
	alias mjPERT_TRANSLATE = 1

	alias mjPERT_ROTATE = 2

alias mjtPertBit = mjtPertBit_
@register_passable("trivial")
struct mjtCamera_:
	alias mjCAMERA_FREE = 0

	alias mjCAMERA_TRACKING = 1

	alias mjCAMERA_FIXED = 2

	alias mjCAMERA_USER = 3

alias mjtCamera = mjtCamera_
@register_passable("trivial")
struct mjtLabel_:
	alias mjLABEL_NONE = 0

	alias mjLABEL_BODY = 1

	alias mjLABEL_JOINT = 2

	alias mjLABEL_GEOM = 3

	alias mjLABEL_SITE = 4

	alias mjLABEL_CAMERA = 5

	alias mjLABEL_LIGHT = 6

	alias mjLABEL_TENDON = 7

	alias mjLABEL_ACTUATOR = 8

	alias mjLABEL_CONSTRAINT = 9

	alias mjLABEL_FLEX = 10

	alias mjLABEL_SKIN = 11

	alias mjLABEL_SELECTION = 12

	alias mjLABEL_SELPNT = 13

	alias mjLABEL_CONTACTPOINT = 14

	alias mjLABEL_CONTACTFORCE = 15

	alias mjLABEL_ISLAND = 16

	alias mjNLABEL = 17

alias mjtLabel = mjtLabel_
@register_passable("trivial")
struct mjtFrame_:
	alias mjFRAME_NONE = 0

	alias mjFRAME_BODY = 1

	alias mjFRAME_GEOM = 2

	alias mjFRAME_SITE = 3

	alias mjFRAME_CAMERA = 4

	alias mjFRAME_LIGHT = 5

	alias mjFRAME_CONTACT = 6

	alias mjFRAME_WORLD = 7

	alias mjNFRAME = 8

alias mjtFrame = mjtFrame_
@register_passable("trivial")
struct mjtVisFlag_:
	alias mjVIS_CONVEXHULL = 0

	alias mjVIS_TEXTURE = 1

	alias mjVIS_JOINT = 2

	alias mjVIS_CAMERA = 3

	alias mjVIS_ACTUATOR = 4

	alias mjVIS_ACTIVATION = 5

	alias mjVIS_LIGHT = 6

	alias mjVIS_TENDON = 7

	alias mjVIS_RANGEFINDER = 8

	alias mjVIS_CONSTRAINT = 9

	alias mjVIS_INERTIA = 10

	alias mjVIS_SCLINERTIA = 11

	alias mjVIS_PERTFORCE = 12

	alias mjVIS_PERTOBJ = 13

	alias mjVIS_CONTACTPOINT = 14

	alias mjVIS_ISLAND = 15

	alias mjVIS_CONTACTFORCE = 16

	alias mjVIS_CONTACTSPLIT = 17

	alias mjVIS_TRANSPARENT = 18

	alias mjVIS_AUTOCONNECT = 19

	alias mjVIS_COM = 20

	alias mjVIS_SELECT = 21

	alias mjVIS_STATIC = 22

	alias mjVIS_SKIN = 23

	alias mjVIS_FLEXVERT = 24

	alias mjVIS_FLEXEDGE = 25

	alias mjVIS_FLEXFACE = 26

	alias mjVIS_FLEXSKIN = 27

	alias mjVIS_BODYBVH = 28

	alias mjVIS_MESHBVH = 29

	alias mjVIS_SDFITER = 30

	alias mjNVISFLAG = 31

alias mjtVisFlag = mjtVisFlag_
@register_passable("trivial")
struct mjtRndFlag_:
	alias mjRND_SHADOW = 0

	alias mjRND_WIREFRAME = 1

	alias mjRND_REFLECTION = 2

	alias mjRND_ADDITIVE = 3

	alias mjRND_SKYBOX = 4

	alias mjRND_FOG = 5

	alias mjRND_HAZE = 6

	alias mjRND_SEGMENT = 7

	alias mjRND_IDCOLOR = 8

	alias mjRND_CULL_FACE = 9

	alias mjNRNDFLAG = 10

alias mjtRndFlag = mjtRndFlag_
@register_passable("trivial")
struct mjtStereo_:
	alias mjSTEREO_NONE = 0

	alias mjSTEREO_QUADBUFFERED = 1

	alias mjSTEREO_SIDEBYSIDE = 2

alias mjtStereo = mjtStereo_
@register_passable("trivial")
struct mjvPerturb_:

	var select : Int32

	var flexselect : Int32

	var skinselect : Int32

	var active : Int32

	var active2 : Int32

	var refpos : StaticTuple[mjtNum, 3]

	var refquat : StaticTuple[mjtNum, 4]

	var refselpos : StaticTuple[mjtNum, 3]

	var localpos : StaticTuple[mjtNum, 3]

	var localmass : Float64

	var scale : Float64

alias mjvPerturb = mjvPerturb_

@register_passable("trivial")
struct mjvCamera_:

	var type : Int32

	var fixedcamid : Int32

	var trackbodyid : Int32

	var lookat : StaticTuple[mjtNum, 3]

	var distance : Float64

	var azimuth : Float64

	var elevation : Float64

	var orthographic : Int32

alias mjvCamera = mjvCamera_

@register_passable("trivial")
struct mjvGLCamera_:

	var pos : StaticTuple[Float32, 3]

	var forward : StaticTuple[Float32, 3]

	var up : StaticTuple[Float32, 3]

	var frustum_center : Float32

	var frustum_width : Float32

	var frustum_bottom : Float32

	var frustum_top : Float32

	var frustum_near : Float32

	var frustum_far : Float32

	var orthographic : Int32

alias mjvGLCamera = mjvGLCamera_

@register_passable("trivial")
struct mjvGeom_:

	var type : Int32

	var dataid : Int32

	var objtype : Int32

	var objid : Int32

	var category : Int32

	var matid : Int32

	var texcoord : Int32

	var segid : Int32

	var size : StaticTuple[Float32, 3]

	var pos : StaticTuple[Float32, 3]

	var mat : StaticTuple[Float32, 9]

	var rgba : StaticTuple[Float32, 4]

	var emission : Float32

	var specular : Float32

	var shininess : Float32

	var reflectance : Float32

	var label : StaticTuple[Int8, 100]

	var camdist : Float32

	var modelrbound : Float32

	var transparent : UInt8

alias mjvGeom = mjvGeom_

@register_passable("trivial")
struct mjvLight_:

	var pos : StaticTuple[Float32, 3]

	var dir : StaticTuple[Float32, 3]

	var type : Int32

	var texid : Int32

	var attenuation : StaticTuple[Float32, 3]

	var cutoff : Float32

	var exponent : Float32

	var ambient : StaticTuple[Float32, 3]

	var diffuse : StaticTuple[Float32, 3]

	var specular : StaticTuple[Float32, 3]

	var headlight : UInt8

	var castshadow : UInt8

	var bulbradius : Float32

	var intensity : Float32

	var range : Float32

alias mjvLight = mjvLight_

@register_passable("trivial")
struct mjvOption_:

	var label : Int32

	var frame : Int32

	var geomgroup : StaticTuple[mjtByte, 6]

	var sitegroup : StaticTuple[mjtByte, 6]

	var jointgroup : StaticTuple[mjtByte, 6]

	var tendongroup : StaticTuple[mjtByte, 6]

	var actuatorgroup : StaticTuple[mjtByte, 6]

	var flexgroup : StaticTuple[mjtByte, 6]

	var skingroup : StaticTuple[mjtByte, 6]

	var flags : StaticTuple[mjtByte, 31]

	var bvh_depth : Int32

	var flex_layer : Int32

alias mjvOption = mjvOption_

@register_passable("trivial")
struct mjvScene_:

	var maxgeom : Int32

	var ngeom : Int32

	var geoms : UnsafePointer[mjvGeom]

	var geomorder : UnsafePointer[Int32]

	var nflex : Int32

	var flexedgeadr : UnsafePointer[Int32]

	var flexedgenum : UnsafePointer[Int32]

	var flexvertadr : UnsafePointer[Int32]

	var flexvertnum : UnsafePointer[Int32]

	var flexfaceadr : UnsafePointer[Int32]

	var flexfacenum : UnsafePointer[Int32]

	var flexfaceused : UnsafePointer[Int32]

	var flexedge : UnsafePointer[Int32]

	var flexvert : UnsafePointer[Float32]

	var flexface : UnsafePointer[Float32]

	var flexnormal : UnsafePointer[Float32]

	var flextexcoord : UnsafePointer[Float32]

	var flexvertopt : UInt8

	var flexedgeopt : UInt8

	var flexfaceopt : UInt8

	var flexskinopt : UInt8

	var nskin : Int32

	var skinfacenum : UnsafePointer[Int32]

	var skinvertadr : UnsafePointer[Int32]

	var skinvertnum : UnsafePointer[Int32]

	var skinvert : UnsafePointer[Float32]

	var skinnormal : UnsafePointer[Float32]

	var nlight : Int32

	var lights : StaticTuple[mjvLight, 100]

	var camera : StaticTuple[mjvGLCamera, 2]

	var enabletransform : UInt8

	var translate : StaticTuple[Float32, 3]

	var rotate : StaticTuple[Float32, 4]

	var scale : Float32

	var stereo : Int32

	var flags : StaticTuple[mjtByte, 10]

	var framewidth : Int32

	var framergb : StaticTuple[Float32, 3]

alias mjvScene = mjvScene_

@register_passable("trivial")
struct mjvFigure_:

	var flg_legend : Int32

	var flg_ticklabel : StaticTuple[Int32, 2]

	var flg_extend : Int32

	var flg_barplot : Int32

	var flg_selection : Int32

	var flg_symmetric : Int32

	var linewidth : Float32

	var gridwidth : Float32

	var gridsize : StaticTuple[Int32, 2]

	var gridrgb : StaticTuple[Float32, 3]

	var figurergba : StaticTuple[Float32, 4]

	var panergba : StaticTuple[Float32, 4]

	var legendrgba : StaticTuple[Float32, 4]

	var textrgb : StaticTuple[Float32, 3]

	var linergb : StaticTuple[Float32, 100]

	var range : StaticTuple[Float32, 2]

	var xformat : StaticTuple[Int8, 20]

	var yformat : StaticTuple[Int8, 20]

	var minwidth : StaticTuple[Int8, 20]

	var title : StaticTuple[Int8, 1000]

	var xlabel : StaticTuple[Int8, 100]

	var linename : StaticTuple[Int8, 100]

	var legendoffset : Int32

	var subplot : Int32

	var highlight : StaticTuple[Int32, 2]

	var highlightid : Int32

	var selection : Float32

	var linepnt : StaticTuple[Int32, 100]

	var linedata : StaticTuple[Float32, 100]

	var xaxispixel : StaticTuple[Int32, 2]

	var yaxispixel : StaticTuple[Int32, 2]

	var xaxisdata : StaticTuple[Float32, 2]

	var yaxisdata : StaticTuple[Float32, 2]

alias mjvFigure = mjvFigure_

@register_passable("trivial")
struct mjpResourceProvider:
	pass
@register_passable("trivial")
struct mjResource_:

	var name : UnsafePointer[Int8]

	var data : OpaquePointer

	var timestamp : StaticTuple[Int8, 512]

	var provider : mjpResourceProvider

alias mjResource = mjResource_

alias mjfOpenResource = fn(UnsafePointer[mjResource]) -> Int32
alias mjfReadResource = fn(UnsafePointer[mjResource], read UnsafePointer[OpaquePointer]) -> Int32
alias mjfCloseResource = fn(UnsafePointer[mjResource]) -> NoneType
alias mjfGetResourceDir = fn(UnsafePointer[mjResource], read UnsafePointer[UnsafePointer[Int8]], UnsafePointer[Int32]) -> NoneType
alias mjfResourceModified = fn(read UnsafePointer[mjResource], read UnsafePointer[Int8]) -> Int32
@register_passable("trivial")
struct mjtPluginCapabilityBit_:

	alias mjPLUGIN_ACTUATOR = 1

	alias mjPLUGIN_SENSOR = 2

	alias mjPLUGIN_PASSIVE = 4

	alias mjPLUGIN_SDF = 8

alias mjtPluginCapabilityBit = mjtPluginCapabilityBit_
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
# ---------------------------------- Plugins -------------------------------------------------------

@register_passable("trivial")
struct mjpPlugin_:
	var name : UnsafePointer[Int8]

	var nattribute : Int32

	var attributes : UnsafePointer[UnsafePointer[Int8]]

	var capabilityflags : Int32

	var needstage : Int32

	var nstate : fn(read UnsafePointer[mjModel], Int32) -> Int32

	var nsensordata : fn(read UnsafePointer[mjModel], Int32, Int32) -> Int32

	var init : fn(read UnsafePointer[mjModel], UnsafePointer[mjData], Int32) -> Int32

	var destroy : fn(UnsafePointer[mjData], Int32) -> NoneType

	var copy_ : fn(UnsafePointer[mjData], read UnsafePointer[mjModel], read UnsafePointer[mjData], Int32) -> NoneType

	var reset : fn(read UnsafePointer[mjModel], UnsafePointer[mjtNum], OpaquePointer, Int32) -> NoneType

	var compute : fn(read UnsafePointer[mjModel], UnsafePointer[mjData], Int32, Int32) -> NoneType

	var advance : fn(read UnsafePointer[mjModel], UnsafePointer[mjData], Int32) -> NoneType

	var visualize : fn(read UnsafePointer[mjModel], UnsafePointer[mjData], read UnsafePointer[mjvOption], UnsafePointer[mjvScene], Int32) -> NoneType

	var actuator_act_dot : fn(read UnsafePointer[mjModel], UnsafePointer[mjData], Int32) -> NoneType

	var sdf_distance : fn(read UnsafePointer[mjtNum], read UnsafePointer[mjData], Int32) -> mjtNum

	var sdf_gradient : fn(UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjData], Int32) -> NoneType

	var sdf_staticdistance : fn(read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> mjtNum

	var sdf_attribute : fn(UnsafePointer[mjtNum], read UnsafePointer[UnsafePointer[Int8]], read UnsafePointer[UnsafePointer[Int8]]) -> NoneType

	var sdf_aabb : fn(UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType

alias mjpPlugin = mjpPlugin_

@register_passable("trivial")
struct mjSDF_:
	var plugin : UnsafePointer[UnsafePointer[mjpPlugin]]

	var id : UnsafePointer[Int32]

	var type : mjtSDFType_

	var relpos : UnsafePointer[mjtNum]

	var relmat : UnsafePointer[mjtNum]

	var geomtype : UnsafePointer[mjtGeom]

alias mjSDF = mjSDF_

alias mjfPluginLibraryLoadCallback = fn(read UnsafePointer[Int8], Int32, Int32) -> NoneType
@register_passable("trivial")
struct mjtGridPos_:

	alias mjGRID_TOPLEFT = 0

	alias mjGRID_TOPRIGHT = 1

	alias mjGRID_BOTTOMLEFT = 2

	alias mjGRID_BOTTOMRIGHT = 3

	alias mjGRID_TOP = 4

	alias mjGRID_BOTTOM = 5

	alias mjGRID_LEFT = 6

	alias mjGRID_RIGHT = 7

alias mjtGridPos = mjtGridPos_
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
# ---------------------------------- primitive types (mjt) -----------------------------------------

@register_passable("trivial")
struct mjtFramebuffer_:
	alias mjFB_WINDOW = 0

	alias mjFB_OFFSCREEN = 1

alias mjtFramebuffer = mjtFramebuffer_
@register_passable("trivial")
struct mjtDepthMap_:
	alias mjDEPTH_ZERONEAR = 0

	alias mjDEPTH_ZEROFAR = 1

alias mjtDepthMap = mjtDepthMap_
@register_passable("trivial")
struct mjtFontScale_:
	alias mjFONTSCALE_50 = 50

	alias mjFONTSCALE_100 = 100

	alias mjFONTSCALE_150 = 150

	alias mjFONTSCALE_200 = 200

	alias mjFONTSCALE_250 = 250

	alias mjFONTSCALE_300 = 300

alias mjtFontScale = mjtFontScale_
@register_passable("trivial")
struct mjtFont_:
	alias mjFONT_NORMAL = 0

	alias mjFONT_SHADOW = 1

	alias mjFONT_BIG = 2

alias mjtFont = mjtFont_
@register_passable("trivial")
struct mjrRect_:
	var left : Int32

	var bottom : Int32

	var width : Int32

	var height : Int32

alias mjrRect = mjrRect_

@register_passable("trivial")
struct mjrContext_:

	var lineWidth : Float32

	var shadowClip : Float32

	var shadowScale : Float32

	var fogStart : Float32

	var fogEnd : Float32

	var fogRGBA : StaticTuple[Float32, 4]

	var shadowSize : Int32

	var offWidth : Int32

	var offHeight : Int32

	var offSamples : Int32

	var fontScale : Int32

	var auxWidth : StaticTuple[Int32, 10]

	var auxHeight : StaticTuple[Int32, 10]

	var auxSamples : StaticTuple[Int32, 10]

	var offFBO : UInt32

	var offFBO_r : UInt32

	var offColor : UInt32

	var offColor_r : UInt32

	var offDepthStencil : UInt32

	var offDepthStencil_r : UInt32

	var shadowFBO : UInt32

	var shadowTex : UInt32

	var auxFBO : StaticTuple[UInt32, 10]

	var auxFBO_r : StaticTuple[UInt32, 10]

	var auxColor : StaticTuple[UInt32, 10]

	var auxColor_r : StaticTuple[UInt32, 10]

	var mat_texid : StaticTuple[Int32, 10000]

	var mat_texuniform : StaticTuple[Int32, 1000]

	var mat_texrepeat : StaticTuple[Float32, 2000]

	var ntexture : Int32

	var textureType : StaticTuple[Int32, 1000]

	var texture : StaticTuple[UInt32, 1000]

	var basePlane : UInt32

	var baseMesh : UInt32

	var baseHField : UInt32

	var baseBuiltin : UInt32

	var baseFontNormal : UInt32

	var baseFontShadow : UInt32

	var baseFontBig : UInt32

	var rangePlane : Int32

	var rangeMesh : Int32

	var rangeHField : Int32

	var rangeBuiltin : Int32

	var rangeFont : Int32

	var nskin : Int32

	var skinvertVBO : UnsafePointer[UInt32]

	var skinnormalVBO : UnsafePointer[UInt32]

	var skintexcoordVBO : UnsafePointer[UInt32]

	var skinfaceVBO : UnsafePointer[UInt32]

	var charWidth : StaticTuple[Int32, 127]

	var charWidthBig : StaticTuple[Int32, 127]

	var charHeight : Int32

	var charHeightBig : Int32

	var glInitialized : Int32

	var windowAvailable : Int32

	var windowSamples : Int32

	var windowStereo : Int32

	var windowDoublebuffer : Int32

	var currentBuffer : Int32

	var readPixelFormat : Int32

	var readDepthMap : Int32

alias mjrContext = mjrContext_

alias mjString = NoneType
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  C: opaque types

alias mjStringVec = NoneType
alias mjIntVec = NoneType
alias mjIntVecVec = NoneType
alias mjFloatVec = NoneType
alias mjFloatVecVec = NoneType
alias mjDoubleVec = NoneType
alias mjByteVec = NoneType
@register_passable("trivial")
struct mjtGeomInertia_:

	alias mjINERTIA_VOLUME = 0

	alias mjINERTIA_SHELL = 1

alias mjtGeomInertia = mjtGeomInertia_
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
# -------------------------------- enum types (mjt) ------------------------------------------------

@register_passable("trivial")
struct mjtMeshInertia_:
	alias mjMESH_INERTIA_CONVEX = 0

	alias mjMESH_INERTIA_EXACT = 1

	alias mjMESH_INERTIA_LEGACY = 2

	alias mjMESH_INERTIA_SHELL = 3

alias mjtMeshInertia = mjtMeshInertia_
@register_passable("trivial")
struct mjtMeshBuiltin_:
	alias mjMESH_BUILTIN_NONE = 0

	alias mjMESH_BUILTIN_SPHERE = 1

	alias mjMESH_BUILTIN_HEMISPHERE = 2

	alias mjMESH_BUILTIN_CONE = 3

	alias mjMESH_BUILTIN_SUPERSPHERE = 4

	alias mjMESH_BUILTIN_SUPERTORUS = 5

	alias mjMESH_BUILTIN_WEDGE = 6

	alias mjMESH_BUILTIN_PLATE = 7

alias mjtMeshBuiltin = mjtMeshBuiltin_
@register_passable("trivial")
struct mjtBuiltin_:
	alias mjBUILTIN_NONE = 0

	alias mjBUILTIN_GRADIENT = 1

	alias mjBUILTIN_CHECKER = 2

	alias mjBUILTIN_FLAT = 3

alias mjtBuiltin = mjtBuiltin_
@register_passable("trivial")
struct mjtMark_:
	alias mjMARK_NONE = 0

	alias mjMARK_EDGE = 1

	alias mjMARK_CROSS = 2

	alias mjMARK_RANDOM = 3

alias mjtMark = mjtMark_
@register_passable("trivial")
struct mjtLimited_:
	alias mjLIMITED_FALSE = 0

	alias mjLIMITED_TRUE = 1

	alias mjLIMITED_AUTO = 2

alias mjtLimited = mjtLimited_
@register_passable("trivial")
struct mjtAlignFree_:
	alias mjALIGNFREE_FALSE = 0

	alias mjALIGNFREE_TRUE = 1

	alias mjALIGNFREE_AUTO = 2

alias mjtAlignFree = mjtAlignFree_
@register_passable("trivial")
struct mjtInertiaFromGeom_:
	alias mjINERTIAFROMGEOM_FALSE = 0

	alias mjINERTIAFROMGEOM_TRUE = 1

	alias mjINERTIAFROMGEOM_AUTO = 2

alias mjtInertiaFromGeom = mjtInertiaFromGeom_
@register_passable("trivial")
struct mjtOrientation_:
	alias mjORIENTATION_QUAT = 0

	alias mjORIENTATION_AXISANGLE = 1

	alias mjORIENTATION_XYAXES = 2

	alias mjORIENTATION_ZAXIS = 3

	alias mjORIENTATION_EULER = 4

alias mjtOrientation = mjtOrientation_
@register_passable("trivial")
struct mjsElement_:

	var elemtype : mjtObj_

	var signature : ffi.c_ulong

alias mjsElement = mjsElement_

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
# -------------------------------- attribute structs (mjs) -----------------------------------------

@register_passable("trivial")
struct mjsCompiler_:
	var autolimits : UInt8

	var boundmass : Float64

	var boundinertia : Float64

	var settotalmass : Float64

	var balanceinertia : UInt8

	var fitaabb : UInt8

	var degree : UInt8

	var eulerseq : StaticTuple[Int8, 3]

	var discardvisual : UInt8

	var usethread : UInt8

	var fusestatic : UInt8

	var inertiafromgeom : Int32

	var inertiagrouprange : StaticTuple[Int32, 2]

	var saveinertial : UInt8

	var alignfree : Int32

	var LRopt : mjLROpt_

alias mjsCompiler = mjsCompiler_

@register_passable("trivial")
struct mjSpec_:
	var element : UnsafePointer[mjsElement]

	var modelname : UnsafePointer[mjString]

	var compiler : mjsCompiler_

	var strippath : UInt8

	var meshdir : UnsafePointer[mjString]

	var texturedir : UnsafePointer[mjString]

	var option : mjOption_

	var visual : mjVisual_

	var stat : mjStatistic_

	var memory : ffi.c_ulong

	var nemax : Int32

	var nuserdata : Int32

	var nuser_body : Int32

	var nuser_jnt : Int32

	var nuser_geom : Int32

	var nuser_site : Int32

	var nuser_cam : Int32

	var nuser_tendon : Int32

	var nuser_actuator : Int32

	var nuser_sensor : Int32

	var nkey : Int32

	var njmax : Int32

	var nconmax : Int32

	var nstack : ffi.c_ulong

	var comment : UnsafePointer[mjString]

	var modelfiledir : UnsafePointer[mjString]

	var hasImplicitPluginElem : UInt8

alias mjSpec = mjSpec_

@register_passable("trivial")
struct mjsOrientation_:
	var type : mjtOrientation_

	var axisangle : StaticTuple[Float64, 4]

	var xyaxes : StaticTuple[Float64, 6]

	var zaxis : StaticTuple[Float64, 3]

	var euler : StaticTuple[Float64, 3]

alias mjsOrientation = mjsOrientation_

@register_passable("trivial")
struct mjsPlugin_:
	var element : UnsafePointer[mjsElement]

	var name : UnsafePointer[mjString]

	var plugin_name : UnsafePointer[mjString]

	var active : UInt8

	var info : UnsafePointer[mjString]

alias mjsPlugin = mjsPlugin_

@register_passable("trivial")
struct mjsBody_:
	var element : UnsafePointer[mjsElement]

	var childclass : UnsafePointer[mjString]

	var pos : StaticTuple[Float64, 3]

	var quat : StaticTuple[Float64, 4]

	var alt : mjsOrientation_

	var mass : Float64

	var ipos : StaticTuple[Float64, 3]

	var iquat : StaticTuple[Float64, 4]

	var inertia : StaticTuple[Float64, 3]

	var ialt : mjsOrientation_

	var fullinertia : StaticTuple[Float64, 6]

	var mocap : UInt8

	var gravcomp : Float64

	var userdata : UnsafePointer[mjDoubleVec]

	var explicitinertial : UInt8

	var plugin : mjsPlugin_

	var info : UnsafePointer[mjString]

alias mjsBody = mjsBody_

@register_passable("trivial")
struct mjsFrame_:
	var element : UnsafePointer[mjsElement]

	var childclass : UnsafePointer[mjString]

	var pos : StaticTuple[Float64, 3]

	var quat : StaticTuple[Float64, 4]

	var alt : mjsOrientation_

	var info : UnsafePointer[mjString]

alias mjsFrame = mjsFrame_

@register_passable("trivial")
struct mjsJoint_:
	var element : UnsafePointer[mjsElement]

	var type : mjtJoint_

	var pos : StaticTuple[Float64, 3]

	var axis : StaticTuple[Float64, 3]

	var ref_ : Float64

	var align : Int32

	var stiffness : Float64

	var springref : Float64

	var springdamper : StaticTuple[Float64, 2]

	var limited : Int32

	var range : StaticTuple[Float64, 2]

	var margin : Float64

	var solref_limit : StaticTuple[mjtNum, 2]

	var solimp_limit : StaticTuple[mjtNum, 5]

	var actfrclimited : Int32

	var actfrcrange : StaticTuple[Float64, 2]

	var armature : Float64

	var damping : Float64

	var frictionloss : Float64

	var solref_friction : StaticTuple[mjtNum, 2]

	var solimp_friction : StaticTuple[mjtNum, 5]

	var group : Int32

	var actgravcomp : UInt8

	var userdata : UnsafePointer[mjDoubleVec]

	var info : UnsafePointer[mjString]

alias mjsJoint = mjsJoint_

@register_passable("trivial")
struct mjsGeom_:
	var element : UnsafePointer[mjsElement]

	var type : mjtGeom_

	var pos : StaticTuple[Float64, 3]

	var quat : StaticTuple[Float64, 4]

	var alt : mjsOrientation_

	var fromto : StaticTuple[Float64, 6]

	var size : StaticTuple[Float64, 3]

	var contype : Int32

	var conaffinity : Int32

	var condim : Int32

	var priority : Int32

	var friction : StaticTuple[Float64, 3]

	var solmix : Float64

	var solref : StaticTuple[mjtNum, 2]

	var solimp : StaticTuple[mjtNum, 5]

	var margin : Float64

	var gap : Float64

	var mass : Float64

	var density : Float64

	var typeinertia : mjtGeomInertia_

	var fluid_ellipsoid : Float64

	var fluid_coefs : StaticTuple[mjtNum, 5]

	var material : UnsafePointer[mjString]

	var rgba : StaticTuple[Float32, 4]

	var group : Int32

	var hfieldname : UnsafePointer[mjString]

	var meshname : UnsafePointer[mjString]

	var fitscale : Float64

	var userdata : UnsafePointer[mjDoubleVec]

	var plugin : mjsPlugin_

	var info : UnsafePointer[mjString]

alias mjsGeom = mjsGeom_

@register_passable("trivial")
struct mjsSite_:
	var element : UnsafePointer[mjsElement]

	var pos : StaticTuple[Float64, 3]

	var quat : StaticTuple[Float64, 4]

	var alt : mjsOrientation_

	var fromto : StaticTuple[Float64, 6]

	var size : StaticTuple[Float64, 3]

	var type : mjtGeom_

	var material : UnsafePointer[mjString]

	var group : Int32

	var rgba : StaticTuple[Float32, 4]

	var userdata : UnsafePointer[mjDoubleVec]

	var info : UnsafePointer[mjString]

alias mjsSite = mjsSite_

@register_passable("trivial")
struct mjsCamera_:
	var element : UnsafePointer[mjsElement]

	var pos : StaticTuple[Float64, 3]

	var quat : StaticTuple[Float64, 4]

	var alt : mjsOrientation_

	var mode : mjtCamLight_

	var targetbody : UnsafePointer[mjString]

	var orthographic : Int32

	var fovy : Float64

	var ipd : Float64

	var intrinsic : StaticTuple[Float32, 4]

	var sensor_size : StaticTuple[Float32, 2]

	var resolution : StaticTuple[Float32, 2]

	var focal_length : StaticTuple[Float32, 2]

	var focal_pixel : StaticTuple[Float32, 2]

	var principal_length : StaticTuple[Float32, 2]

	var principal_pixel : StaticTuple[Float32, 2]

	var userdata : UnsafePointer[mjDoubleVec]

	var info : UnsafePointer[mjString]

alias mjsCamera = mjsCamera_

@register_passable("trivial")
struct mjsLight_:
	var element : UnsafePointer[mjsElement]

	var pos : StaticTuple[Float64, 3]

	var dir : StaticTuple[Float64, 3]

	var mode : mjtCamLight_

	var targetbody : UnsafePointer[mjString]

	var active : UInt8

	var type : mjtLightType_

	var texture : UnsafePointer[mjString]

	var castshadow : UInt8

	var bulbradius : Float32

	var intensity : Float32

	var range : Float32

	var attenuation : StaticTuple[Float32, 3]

	var cutoff : Float32

	var exponent : Float32

	var ambient : StaticTuple[Float32, 3]

	var diffuse : StaticTuple[Float32, 3]

	var specular : StaticTuple[Float32, 3]

	var info : UnsafePointer[mjString]

alias mjsLight = mjsLight_

@register_passable("trivial")
struct mjsFlex_:
	var element : UnsafePointer[mjsElement]

	var contype : Int32

	var conaffinity : Int32

	var condim : Int32

	var priority : Int32

	var friction : StaticTuple[Float64, 3]

	var solmix : Float64

	var solref : StaticTuple[mjtNum, 2]

	var solimp : StaticTuple[mjtNum, 5]

	var margin : Float64

	var gap : Float64

	var dim : Int32

	var radius : Float64

	var internal : UInt8

	var flatskin : UInt8

	var selfcollide : Int32

	var vertcollide : Int32

	var activelayers : Int32

	var group : Int32

	var edgestiffness : Float64

	var edgedamping : Float64

	var rgba : StaticTuple[Float32, 4]

	var material : UnsafePointer[mjString]

	var young : Float64

	var poisson : Float64

	var damping : Float64

	var thickness : Float64

	var elastic2d : Int32

	var nodebody : UnsafePointer[mjStringVec]

	var vertbody : UnsafePointer[mjStringVec]

	var node : UnsafePointer[mjDoubleVec]

	var vert : UnsafePointer[mjDoubleVec]

	var elem : UnsafePointer[mjIntVec]

	var texcoord : UnsafePointer[mjFloatVec]

	var elemtexcoord : UnsafePointer[mjIntVec]

	var info : UnsafePointer[mjString]

alias mjsFlex = mjsFlex_

@register_passable("trivial")
struct mjsMesh_:
	var element : UnsafePointer[mjsElement]

	var content_type : UnsafePointer[mjString]

	var file : UnsafePointer[mjString]

	var refpos : StaticTuple[Float64, 3]

	var refquat : StaticTuple[Float64, 4]

	var scale : StaticTuple[Float64, 3]

	var inertia : mjtMeshInertia_

	var smoothnormal : UInt8

	var needsdf : UInt8

	var maxhullvert : Int32

	var uservert : UnsafePointer[mjFloatVec]

	var usernormal : UnsafePointer[mjFloatVec]

	var usertexcoord : UnsafePointer[mjFloatVec]

	var userface : UnsafePointer[mjIntVec]

	var userfacetexcoord : UnsafePointer[mjIntVec]

	var plugin : mjsPlugin_

	var info : UnsafePointer[mjString]

alias mjsMesh = mjsMesh_

@register_passable("trivial")
struct mjsHField_:
	var element : UnsafePointer[mjsElement]

	var content_type : UnsafePointer[mjString]

	var file : UnsafePointer[mjString]

	var size : StaticTuple[Float64, 4]

	var nrow : Int32

	var ncol : Int32

	var userdata : UnsafePointer[mjFloatVec]

	var info : UnsafePointer[mjString]

alias mjsHField = mjsHField_

@register_passable("trivial")
struct mjsSkin_:
	var element : UnsafePointer[mjsElement]

	var file : UnsafePointer[mjString]

	var material : UnsafePointer[mjString]

	var rgba : StaticTuple[Float32, 4]

	var inflate : Float32

	var group : Int32

	var vert : UnsafePointer[mjFloatVec]

	var texcoord : UnsafePointer[mjFloatVec]

	var face : UnsafePointer[mjIntVec]

	var bodyname : UnsafePointer[mjStringVec]

	var bindpos : UnsafePointer[mjFloatVec]

	var bindquat : UnsafePointer[mjFloatVec]

	var vertid : UnsafePointer[mjIntVecVec]

	var vertweight : UnsafePointer[mjFloatVecVec]

	var info : UnsafePointer[mjString]

alias mjsSkin = mjsSkin_

@register_passable("trivial")
struct mjsTexture_:
	var element : UnsafePointer[mjsElement]

	var type : mjtTexture_

	var colorspace : mjtColorSpace_

	var builtin : Int32

	var mark : Int32

	var rgb1 : StaticTuple[Float64, 3]

	var rgb2 : StaticTuple[Float64, 3]

	var markrgb : StaticTuple[Float64, 3]

	var random : Float64

	var height : Int32

	var width : Int32

	var nchannel : Int32

	var content_type : UnsafePointer[mjString]

	var file : UnsafePointer[mjString]

	var gridsize : StaticTuple[Int32, 2]

	var gridlayout : StaticTuple[Int8, 13]

	var cubefiles : UnsafePointer[mjStringVec]

	var data : UnsafePointer[mjByteVec]

	var hflip : UInt8

	var vflip : UInt8

	var info : UnsafePointer[mjString]

alias mjsTexture = mjsTexture_

@register_passable("trivial")
struct mjsMaterial_:
	var element : UnsafePointer[mjsElement]

	var textures : UnsafePointer[mjStringVec]

	var texuniform : UInt8

	var texrepeat : StaticTuple[Float32, 2]

	var emission : Float32

	var specular : Float32

	var shininess : Float32

	var reflectance : Float32

	var metallic : Float32

	var roughness : Float32

	var rgba : StaticTuple[Float32, 4]

	var info : UnsafePointer[mjString]

alias mjsMaterial = mjsMaterial_

@register_passable("trivial")
struct mjsPair_:
	var element : UnsafePointer[mjsElement]

	var geomname1 : UnsafePointer[mjString]

	var geomname2 : UnsafePointer[mjString]

	var condim : Int32

	var solref : StaticTuple[mjtNum, 2]

	var solreffriction : StaticTuple[mjtNum, 2]

	var solimp : StaticTuple[mjtNum, 5]

	var margin : Float64

	var gap : Float64

	var friction : StaticTuple[Float64, 5]

	var info : UnsafePointer[mjString]

alias mjsPair = mjsPair_

@register_passable("trivial")
struct mjsExclude_:
	var element : UnsafePointer[mjsElement]

	var bodyname1 : UnsafePointer[mjString]

	var bodyname2 : UnsafePointer[mjString]

	var info : UnsafePointer[mjString]

alias mjsExclude = mjsExclude_

@register_passable("trivial")
struct mjsEquality_:
	var element : UnsafePointer[mjsElement]

	var type : mjtEq_

	var data : StaticTuple[Float64, 11]

	var active : UInt8

	var name1 : UnsafePointer[mjString]

	var name2 : UnsafePointer[mjString]

	var objtype : mjtObj_

	var solref : StaticTuple[mjtNum, 2]

	var solimp : StaticTuple[mjtNum, 5]

	var info : UnsafePointer[mjString]

alias mjsEquality = mjsEquality_

@register_passable("trivial")
struct mjsTendon_:
	var element : UnsafePointer[mjsElement]

	var stiffness : Float64

	var springlength : StaticTuple[Float64, 2]

	var damping : Float64

	var frictionloss : Float64

	var solref_friction : StaticTuple[mjtNum, 2]

	var solimp_friction : StaticTuple[mjtNum, 5]

	var armature : Float64

	var limited : Int32

	var actfrclimited : Int32

	var range : StaticTuple[Float64, 2]

	var actfrcrange : StaticTuple[Float64, 2]

	var margin : Float64

	var solref_limit : StaticTuple[mjtNum, 2]

	var solimp_limit : StaticTuple[mjtNum, 5]

	var material : UnsafePointer[mjString]

	var width : Float64

	var rgba : StaticTuple[Float32, 4]

	var group : Int32

	var userdata : UnsafePointer[mjDoubleVec]

	var info : UnsafePointer[mjString]

alias mjsTendon = mjsTendon_

@register_passable("trivial")
struct mjsWrap_:
	var element : UnsafePointer[mjsElement]

	var info : UnsafePointer[mjString]

alias mjsWrap = mjsWrap_

@register_passable("trivial")
struct mjsActuator_:
	var element : UnsafePointer[mjsElement]

	var gaintype : mjtGain_

	var gainprm : StaticTuple[Float64, 10]

	var biastype : mjtBias_

	var biasprm : StaticTuple[Float64, 10]

	var dyntype : mjtDyn_

	var dynprm : StaticTuple[Float64, 10]

	var actdim : Int32

	var actearly : UInt8

	var trntype : mjtTrn_

	var gear : StaticTuple[Float64, 6]

	var target : UnsafePointer[mjString]

	var refsite : UnsafePointer[mjString]

	var slidersite : UnsafePointer[mjString]

	var cranklength : Float64

	var lengthrange : StaticTuple[Float64, 2]

	var inheritrange : Float64

	var ctrllimited : Int32

	var ctrlrange : StaticTuple[Float64, 2]

	var forcelimited : Int32

	var forcerange : StaticTuple[Float64, 2]

	var actlimited : Int32

	var actrange : StaticTuple[Float64, 2]

	var group : Int32

	var userdata : UnsafePointer[mjDoubleVec]

	var plugin : mjsPlugin_

	var info : UnsafePointer[mjString]

alias mjsActuator = mjsActuator_

@register_passable("trivial")
struct mjsSensor_:
	var element : UnsafePointer[mjsElement]

	var type : mjtSensor_

	var objtype : mjtObj_

	var objname : UnsafePointer[mjString]

	var reftype : mjtObj_

	var refname : UnsafePointer[mjString]

	var intprm : StaticTuple[Int32, 3]

	var datatype : mjtDataType_

	var needstage : mjtStage_

	var dim : Int32

	var cutoff : Float64

	var noise : Float64

	var userdata : UnsafePointer[mjDoubleVec]

	var plugin : mjsPlugin_

	var info : UnsafePointer[mjString]

alias mjsSensor = mjsSensor_

@register_passable("trivial")
struct mjsNumeric_:
	var element : UnsafePointer[mjsElement]

	var data : UnsafePointer[mjDoubleVec]

	var size : Int32

	var info : UnsafePointer[mjString]

alias mjsNumeric = mjsNumeric_

@register_passable("trivial")
struct mjsText_:
	var element : UnsafePointer[mjsElement]

	var data : UnsafePointer[mjString]

	var info : UnsafePointer[mjString]

alias mjsText = mjsText_

@register_passable("trivial")
struct mjsTuple_:
	var element : UnsafePointer[mjsElement]

	var objtype : UnsafePointer[mjIntVec]

	var objname : UnsafePointer[mjStringVec]

	var objprm : UnsafePointer[mjDoubleVec]

	var info : UnsafePointer[mjString]

alias mjsTuple = mjsTuple_

@register_passable("trivial")
struct mjsKey_:
	var element : UnsafePointer[mjsElement]

	var time : Float64

	var qpos : UnsafePointer[mjDoubleVec]

	var qvel : UnsafePointer[mjDoubleVec]

	var act : UnsafePointer[mjDoubleVec]

	var mpos : UnsafePointer[mjDoubleVec]

	var mquat : UnsafePointer[mjDoubleVec]

	var ctrl : UnsafePointer[mjDoubleVec]

	var info : UnsafePointer[mjString]

alias mjsKey = mjsKey_

@register_passable("trivial")
struct mjsDefault_:
	var element : UnsafePointer[mjsElement]

	var joint : UnsafePointer[mjsJoint]

	var geom : UnsafePointer[mjsGeom]

	var site : UnsafePointer[mjsSite]

	var camera : UnsafePointer[mjsCamera]

	var light : UnsafePointer[mjsLight]

	var flex : UnsafePointer[mjsFlex]

	var mesh : UnsafePointer[mjsMesh]

	var material : UnsafePointer[mjsMaterial]

	var pair : UnsafePointer[mjsPair]

	var equality : UnsafePointer[mjsEquality]

	var tendon : UnsafePointer[mjsTendon]

	var actuator : UnsafePointer[mjsActuator]

alias mjsDefault = mjsDefault_

@register_passable("trivial")
struct mjtButton_:

	alias mjBUTTON_NONE = 0

	alias mjBUTTON_LEFT = 1

	alias mjBUTTON_RIGHT = 2

	alias mjBUTTON_MIDDLE = 3

alias mjtButton = mjtButton_
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
# ---------------------------------- primitive types (mjt) -----------------------------------------

@register_passable("trivial")
struct mjtEvent_:
	alias mjEVENT_NONE = 0

	alias mjEVENT_MOVE = 1

	alias mjEVENT_PRESS = 2

	alias mjEVENT_RELEASE = 3

	alias mjEVENT_SCROLL = 4

	alias mjEVENT_KEY = 5

	alias mjEVENT_RESIZE = 6

	alias mjEVENT_REDRAW = 7

	alias mjEVENT_FILESDROP = 8

alias mjtEvent = mjtEvent_
@register_passable("trivial")
struct mjtItem_:
	alias mjITEM_END = -2

	alias mjITEM_SECTION = -1

	alias mjITEM_SEPARATOR = 0

	alias mjITEM_STATIC = 1

	alias mjITEM_BUTTON = 2

	alias mjITEM_CHECKINT = 3

	alias mjITEM_CHECKBYTE = 4

	alias mjITEM_RADIO = 5

	alias mjITEM_RADIOLINE = 6

	alias mjITEM_SELECT = 7

	alias mjITEM_SLIDERINT = 8

	alias mjITEM_SLIDERNUM = 9

	alias mjITEM_EDITINT = 10

	alias mjITEM_EDITNUM = 11

	alias mjITEM_EDITFLOAT = 12

	alias mjITEM_EDITTXT = 13

	alias mjNITEM = 14

alias mjtItem = mjtItem_
@register_passable("trivial")
struct mjtSection_:
	alias mjSECT_CLOSED = 0

	alias mjSECT_OPEN = 1

	alias mjSECT_FIXED = 2

alias mjtSection = mjtSection_
alias mjfItemEnable = fn(Int32, OpaquePointer) -> Int32
@register_passable("trivial")
struct mjuiState_:

	var nrect : Int32

	var rect : StaticTuple[mjrRect, 25]

	var userdata : OpaquePointer

	var type : Int32

	var left : Int32

	var right : Int32

	var middle : Int32

	var doubleclick : Int32

	var button : Int32

	var buttontime : Float64

	var x : Float64

	var y : Float64

	var dx : Float64

	var dy : Float64

	var sx : Float64

	var sy : Float64

	var control : Int32

	var shift : Int32

	var alt : Int32

	var key : Int32

	var keytime : Float64

	var mouserect : Int32

	var dragrect : Int32

	var dragbutton : Int32

	var dropcount : Int32

	var droppaths : UnsafePointer[UnsafePointer[Int8]]

alias mjuiState = mjuiState_

@register_passable("trivial")
struct mjuiThemeSpacing_:

	var total : Int32

	var scroll : Int32

	var label : Int32

	var section : Int32

	var cornersect : Int32

	var cornersep : Int32

	var itemside : Int32

	var itemmid : Int32

	var itemver : Int32

	var texthor : Int32

	var textver : Int32

	var linescroll : Int32

	var samples : Int32

alias mjuiThemeSpacing = mjuiThemeSpacing_

@register_passable("trivial")
struct mjuiThemeColor_:

	var master : StaticTuple[Float32, 3]

	var thumb : StaticTuple[Float32, 3]

	var secttitle : StaticTuple[Float32, 3]

	var secttitle2 : StaticTuple[Float32, 3]

	var secttitleuncheck : StaticTuple[Float32, 3]

	var secttitleuncheck2 : StaticTuple[Float32, 3]

	var secttitlecheck : StaticTuple[Float32, 3]

	var secttitlecheck2 : StaticTuple[Float32, 3]

	var sectfont : StaticTuple[Float32, 3]

	var sectsymbol : StaticTuple[Float32, 3]

	var sectpane : StaticTuple[Float32, 3]

	var separator : StaticTuple[Float32, 3]

	var separator2 : StaticTuple[Float32, 3]

	var shortcut : StaticTuple[Float32, 3]

	var fontactive : StaticTuple[Float32, 3]

	var fontinactive : StaticTuple[Float32, 3]

	var decorinactive : StaticTuple[Float32, 3]

	var decorinactive2 : StaticTuple[Float32, 3]

	var button : StaticTuple[Float32, 3]

	var check : StaticTuple[Float32, 3]

	var radio : StaticTuple[Float32, 3]

	var select : StaticTuple[Float32, 3]

	var select2 : StaticTuple[Float32, 3]

	var slider : StaticTuple[Float32, 3]

	var slider2 : StaticTuple[Float32, 3]

	var edit : StaticTuple[Float32, 3]

	var edit2 : StaticTuple[Float32, 3]

	var cursor : StaticTuple[Float32, 3]

alias mjuiThemeColor = mjuiThemeColor_

@register_passable("trivial")
struct mjuiItemSingle_:

	var modifier : Int32

	var shortcut : Int32

@register_passable("trivial")
struct mjuiItemMulti_:
	var nelem : Int32

	var name : StaticTuple[Int8, 35]

@register_passable("trivial")
struct mjuiItemSlider_:
	var range : StaticTuple[Float64, 2]

	var divisions : Float64

@register_passable("trivial")
struct mjuiItemEdit_:
	var nelem : Int32

	var range : StaticTuple[Float64, 7]

alias anonomous_record_25 = C_Union[mjuiItemSingle_, mjuiItemMulti_, mjuiItemSlider_, mjuiItemEdit_]

@register_passable("trivial")
struct mjuiItem_:
	var type : Int32

	var name : StaticTuple[Int8, 40]

	var state : Int32

	var pdata : OpaquePointer

	var sectionid : Int32

	var itemid : Int32

	var userid : Int32

	var union_placeholder_1 : anonomous_record_25





	var rect : mjrRect_

	var skip : Int32

alias mjuiItem = mjuiItem_

@register_passable("trivial")
struct mjuiSection_:

	var name : StaticTuple[Int8, 40]

	var state : Int32

	var modifier : Int32

	var shortcut : Int32

	var checkbox : Int32

	var nitem : Int32

	var item : StaticTuple[mjuiItem, 200]

	var rtitle : mjrRect_

	var rcontent : mjrRect_

	var lastclick : Int32

alias mjuiSection = mjuiSection_

@register_passable("trivial")
struct mjUI_:

	var spacing : mjuiThemeSpacing_

	var color : mjuiThemeColor_

	var predicate : fn(Int32, OpaquePointer) -> Int32

	var userdata : OpaquePointer

	var rectid : Int32

	var auxid : Int32

	var radiocol : Int32

	var width : Int32

	var height : Int32

	var maxheight : Int32

	var scroll : Int32

	var mousesect : Int32

	var mouseitem : Int32

	var mousehelp : Int32

	var mouseclicks : Int32

	var mousesectcheck : Int32

	var editsect : Int32

	var edititem : Int32

	var editcursor : Int32

	var editscroll : Int32

	var edittext : StaticTuple[Int8, 300]

	var editchanged : UnsafePointer[mjuiItem]

	var nsect : Int32

	var sect : StaticTuple[mjuiSection, 10]

alias mjUI = mjUI_

@register_passable("trivial")
struct mjuiDef_:

	var type : Int32

	var name : StaticTuple[Int8, 40]

	var state : Int32

	var pdata : OpaquePointer

	var other : StaticTuple[Int8, 300]

	var otherint : Int32

alias mjuiDef = mjuiDef_

alias mju_user_error = fn(read UnsafePointer[Int8]) -> NoneType
alias mju_user_warning = fn(read UnsafePointer[Int8]) -> NoneType
alias mju_user_malloc = fn(size_t) -> OpaquePointer
alias mju_user_free = fn(OpaquePointer) -> NoneType
alias mjcb_passive = mjfGeneric
alias mjcb_control = mjfGeneric
alias mjcb_contactfilter = mjfConFilt
alias mjcb_sensor = mjfSensor
alias mjcb_time = mjfTime
alias mjcb_act_dyn = mjfAct
alias mjcb_act_gain = mjfAct
alias mjcb_act_bias = mjfAct
alias mjCOLLISIONFUNC = StaticTuple[mjfCollision, 9]
alias mjDISABLESTRING = StaticTuple[UnsafePointer[Int8], 17]
alias mjENABLESTRING = StaticTuple[UnsafePointer[Int8], 6]
alias mjTIMERSTRING = StaticTuple[UnsafePointer[Int8], 15]
alias mjLABELSTRING = StaticTuple[UnsafePointer[Int8], 17]
alias mjFRAMESTRING = StaticTuple[UnsafePointer[Int8], 8]
alias mjVISSTRING = StaticTuple[UnsafePointer[Int8], 31]
alias mjRNDSTRING = StaticTuple[UnsafePointer[Int8], 10]
alias mj_defaultVFS = fn (UnsafePointer[mjVFS]) -> NoneType
alias mj_addFileVFS = fn (UnsafePointer[mjVFS], read UnsafePointer[Int8], read UnsafePointer[Int8]) -> Int32
alias mj_addBufferVFS = fn (UnsafePointer[mjVFS], read UnsafePointer[Int8], read OpaquePointer, Int32) -> Int32
alias mj_deleteFileVFS = fn (UnsafePointer[mjVFS], read UnsafePointer[Int8]) -> Int32
alias mj_deleteVFS = fn (UnsafePointer[mjVFS]) -> NoneType
alias mj_loadXML = fn (read UnsafePointer[Int8], read UnsafePointer[mjVFS], UnsafePointer[Int8], Int32) -> UnsafePointer[mjModel]
alias mj_parseXML = fn (read UnsafePointer[Int8], read UnsafePointer[mjVFS], UnsafePointer[Int8], Int32) -> UnsafePointer[mjSpec]
alias mj_parseXMLString = fn (read UnsafePointer[Int8], read UnsafePointer[mjVFS], UnsafePointer[Int8], Int32) -> UnsafePointer[mjSpec]
alias mj_compile = fn (UnsafePointer[mjSpec], read UnsafePointer[mjVFS]) -> UnsafePointer[mjModel]
alias mj_copyBack = fn (UnsafePointer[mjSpec], read UnsafePointer[mjModel]) -> Int32
alias mj_recompile = fn (UnsafePointer[mjSpec], read UnsafePointer[mjVFS], UnsafePointer[mjModel], UnsafePointer[mjData]) -> Int32
alias mj_saveLastXML = fn (read UnsafePointer[Int8], read UnsafePointer[mjModel], UnsafePointer[Int8], Int32) -> Int32
alias mj_freeLastXML = fn (NoneType) -> NoneType
alias mj_saveXMLString = fn (read UnsafePointer[mjSpec], UnsafePointer[Int8], Int32, UnsafePointer[Int8], Int32) -> Int32
alias mj_saveXML = fn (read UnsafePointer[mjSpec], read UnsafePointer[Int8], UnsafePointer[Int8], Int32) -> Int32
alias mj_step = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_step1 = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_step2 = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_forward = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_inverse = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_forwardSkip = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], Int32, Int32) -> NoneType
alias mj_inverseSkip = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], Int32, Int32) -> NoneType
alias mj_defaultLROpt = fn (UnsafePointer[mjLROpt]) -> NoneType
alias mj_defaultSolRefImp = fn (UnsafePointer[mjtNum], UnsafePointer[mjtNum]) -> NoneType
alias mj_defaultOption = fn (UnsafePointer[mjOption]) -> NoneType
alias mj_defaultVisual = fn (UnsafePointer[mjVisual]) -> NoneType
alias mj_copyModel = fn (UnsafePointer[mjModel], read UnsafePointer[mjModel]) -> UnsafePointer[mjModel]
alias mj_saveModel = fn (read UnsafePointer[mjModel], read UnsafePointer[Int8], OpaquePointer, Int32) -> NoneType
alias mj_loadModel = fn (read UnsafePointer[Int8], read UnsafePointer[mjVFS]) -> UnsafePointer[mjModel]
alias mj_deleteModel = fn (UnsafePointer[mjModel]) -> NoneType
alias mj_sizeModel = fn (read UnsafePointer[mjModel]) -> Int32
alias mj_makeData = fn (read UnsafePointer[mjModel]) -> UnsafePointer[mjData]
alias mj_copyData = fn (UnsafePointer[mjData], read UnsafePointer[mjModel], read UnsafePointer[mjData]) -> UnsafePointer[mjData]
alias mjv_copyData = fn (UnsafePointer[mjData], read UnsafePointer[mjModel], read UnsafePointer[mjData]) -> UnsafePointer[mjData]
alias mj_resetData = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_resetDataDebug = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], UInt8) -> NoneType
alias mj_resetDataKeyframe = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], Int32) -> NoneType
alias mj_markStack = fn (UnsafePointer[mjData]) -> NoneType
alias mj_freeStack = fn (UnsafePointer[mjData]) -> NoneType
alias mj_stackAllocByte = fn (UnsafePointer[mjData], size_t, size_t) -> OpaquePointer
alias mj_stackAllocNum = fn (UnsafePointer[mjData], size_t) -> UnsafePointer[mjtNum]
alias mj_stackAllocInt = fn (UnsafePointer[mjData], size_t) -> UnsafePointer[Int32]
alias mj_deleteData = fn (UnsafePointer[mjData]) -> NoneType
alias mj_resetCallbacks = fn (NoneType) -> NoneType
alias mj_setConst = fn (UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_setLengthRange = fn (UnsafePointer[mjModel], UnsafePointer[mjData], Int32, read UnsafePointer[mjLROpt], UnsafePointer[Int8], Int32) -> Int32
alias mj_makeSpec = fn (NoneType) -> UnsafePointer[mjSpec]
alias mj_copySpec = fn (read UnsafePointer[mjSpec]) -> UnsafePointer[mjSpec]
alias mj_deleteSpec = fn (UnsafePointer[mjSpec]) -> NoneType
alias mjs_activatePlugin = fn (UnsafePointer[mjSpec], read UnsafePointer[Int8]) -> Int32
alias mjs_setDeepCopy = fn (UnsafePointer[mjSpec], Int32) -> Int32
alias mj_printFormattedModel = fn (read UnsafePointer[mjModel], read UnsafePointer[Int8], read UnsafePointer[Int8]) -> NoneType
alias mj_printModel = fn (read UnsafePointer[mjModel], read UnsafePointer[Int8]) -> NoneType
alias mj_printFormattedData = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], read UnsafePointer[Int8], read UnsafePointer[Int8]) -> NoneType
alias mj_printData = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], read UnsafePointer[Int8]) -> NoneType
alias mju_printMat = fn (read UnsafePointer[mjtNum], Int32, Int32) -> NoneType
alias mju_printMatSparse = fn (read UnsafePointer[mjtNum], Int32, read UnsafePointer[Int32], read UnsafePointer[Int32], read UnsafePointer[Int32]) -> NoneType
alias mj_printSchema = fn (read UnsafePointer[Int8], UnsafePointer[Int8], Int32, Int32, Int32) -> Int32
alias mj_fwdPosition = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_fwdVelocity = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_fwdActuation = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_fwdAcceleration = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_fwdConstraint = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_Euler = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_RungeKutta = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], Int32) -> NoneType
alias mj_implicit = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_invPosition = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_invVelocity = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_invConstraint = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_compareFwdInv = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_sensorPos = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_sensorVel = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_sensorAcc = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_energyPos = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_energyVel = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_checkPos = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_checkVel = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_checkAcc = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_kinematics = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_comPos = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_camlight = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_flex = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_tendon = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_transmission = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_crb = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_makeM = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_factorM = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_solveM = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mj_solveM2 = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mj_comVel = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_passive = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_subtreeVel = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_rne = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], Int32, UnsafePointer[mjtNum]) -> NoneType
alias mj_rnePostConstraint = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_collision = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_makeConstraint = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_island = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_projectConstraint = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_referenceConstraint = fn (read UnsafePointer[mjModel], UnsafePointer[mjData]) -> NoneType
alias mj_constraintUpdate = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], read UnsafePointer[mjtNum], UnsafePointer[mjtNum], Int32) -> NoneType
alias mj_stateSize = fn (read UnsafePointer[mjModel], UInt32) -> Int32
alias mj_getState = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], UnsafePointer[mjtNum], UInt32) -> NoneType
alias mj_setState = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], read UnsafePointer[mjtNum], UInt32) -> NoneType
alias mj_setKeyframe = fn (UnsafePointer[mjModel], read UnsafePointer[mjData], Int32) -> NoneType
alias mj_addContact = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], read UnsafePointer[mjContact]) -> Int32
alias mj_isPyramidal = fn (read UnsafePointer[mjModel]) -> Int32
alias mj_isSparse = fn (read UnsafePointer[mjModel]) -> Int32
alias mj_isDual = fn (read UnsafePointer[mjModel]) -> Int32
alias mj_mulJacVec = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mj_mulJacTVec = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mj_jac = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], UnsafePointer[mjtNum], UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mj_jacBody = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], UnsafePointer[mjtNum], UnsafePointer[mjtNum], Int32) -> NoneType
alias mj_jacBodyCom = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], UnsafePointer[mjtNum], UnsafePointer[mjtNum], Int32) -> NoneType
alias mj_jacSubtreeCom = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], UnsafePointer[mjtNum], Int32) -> NoneType
alias mj_jacGeom = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], UnsafePointer[mjtNum], UnsafePointer[mjtNum], Int32) -> NoneType
alias mj_jacSite = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], UnsafePointer[mjtNum], UnsafePointer[mjtNum], Int32) -> NoneType
alias mj_jacPointAxis = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], UnsafePointer[mjtNum], UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mj_jacDot = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], UnsafePointer[mjtNum], UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mj_angmomMat = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], UnsafePointer[mjtNum], Int32) -> NoneType
alias mj_name2id = fn (read UnsafePointer[mjModel], Int32, read UnsafePointer[Int8]) -> Int32
alias mj_id2name = fn (read UnsafePointer[mjModel], Int32, Int32) -> UnsafePointer[Int8]
alias mj_fullM = fn (read UnsafePointer[mjModel], UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mj_mulM = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mj_mulM2 = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mj_addM = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], UnsafePointer[mjtNum], UnsafePointer[Int32], UnsafePointer[Int32], UnsafePointer[Int32]) -> NoneType
alias mj_applyFT = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, UnsafePointer[mjtNum]) -> NoneType
alias mj_objectVelocity = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], Int32, Int32, UnsafePointer[mjtNum], Int32) -> NoneType
alias mj_objectAcceleration = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], Int32, Int32, UnsafePointer[mjtNum], Int32) -> NoneType
alias mj_geomDistance = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], Int32, Int32, mjtNum, UnsafePointer[mjtNum]) -> mjtNum
alias mj_contactForce = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], Int32, UnsafePointer[mjtNum]) -> NoneType
alias mj_differentiatePos = fn (read UnsafePointer[mjModel], UnsafePointer[mjtNum], mjtNum, read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mj_integratePos = fn (read UnsafePointer[mjModel], UnsafePointer[mjtNum], read UnsafePointer[mjtNum], mjtNum) -> NoneType
alias mj_normalizeQuat = fn (read UnsafePointer[mjModel], UnsafePointer[mjtNum]) -> NoneType
alias mj_local2Global = fn (UnsafePointer[mjData], UnsafePointer[mjtNum], UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, mjtByte) -> NoneType
alias mj_getTotalmass = fn (read UnsafePointer[mjModel]) -> mjtNum
alias mj_setTotalmass = fn (UnsafePointer[mjModel], mjtNum) -> NoneType
alias mj_getPluginConfig = fn (read UnsafePointer[mjModel], Int32, read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias mj_loadPluginLibrary = fn (read UnsafePointer[Int8]) -> NoneType
alias mj_loadAllPluginLibraries = fn (read UnsafePointer[Int8], mjfPluginLibraryLoadCallback) -> NoneType
alias mj_version = fn (NoneType) -> Int32
alias mj_versionString = fn (NoneType) -> UnsafePointer[Int8]
alias mj_multiRay = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtByte], mjtByte, Int32, UnsafePointer[Int32], UnsafePointer[mjtNum], Int32, mjtNum) -> NoneType
alias mj_ray = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtByte], mjtByte, Int32, UnsafePointer[Int32]) -> mjtNum
alias mj_rayHfield = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], Int32, read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> mjtNum
alias mj_rayMesh = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], Int32, read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> mjtNum
alias mju_rayGeom = fn (read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> mjtNum
alias mju_rayFlex = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], Int32, mjtByte, mjtByte, mjtByte, mjtByte, Int32, read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], UnsafePointer[Int32]) -> mjtNum
alias mju_raySkin = fn (Int32, Int32, read UnsafePointer[Int32], read UnsafePointer[Float32], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], UnsafePointer[Int32]) -> mjtNum
alias mjv_defaultCamera = fn (UnsafePointer[mjvCamera]) -> NoneType
alias mjv_defaultFreeCamera = fn (read UnsafePointer[mjModel], UnsafePointer[mjvCamera]) -> NoneType
alias mjv_defaultPerturb = fn (UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_room2model = fn (UnsafePointer[mjtNum], UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjvScene]) -> NoneType
alias mjv_model2room = fn (UnsafePointer[mjtNum], UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjvScene]) -> NoneType
alias mjv_cameraInModel = fn (UnsafePointer[mjtNum], UnsafePointer[mjtNum], UnsafePointer[mjtNum], read UnsafePointer[mjvScene]) -> NoneType
alias mjv_cameraInRoom = fn (UnsafePointer[mjtNum], UnsafePointer[mjtNum], UnsafePointer[mjtNum], read UnsafePointer[mjvScene]) -> NoneType
alias mjv_frustumHeight = fn (read UnsafePointer[mjvScene]) -> mjtNum
alias mjv_alignToCamera = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mjv_moveCamera = fn (read UnsafePointer[mjModel], Int32, mjtNum, mjtNum, read UnsafePointer[mjvScene], UnsafePointer[mjvCamera]) -> NoneType
alias mjv_movePerturb = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], Int32, mjtNum, mjtNum, read UnsafePointer[mjvScene], UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_moveModel = fn (read UnsafePointer[mjModel], Int32, mjtNum, mjtNum, read UnsafePointer[mjtNum], UnsafePointer[mjvScene]) -> NoneType
alias mjv_initPerturb = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], read UnsafePointer[mjvScene], UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_applyPerturbPose = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], read UnsafePointer[mjvPerturb], Int32) -> NoneType
alias mjv_applyPerturbForce = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], read UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_averageCamera = fn (read UnsafePointer[mjvGLCamera], read UnsafePointer[mjvGLCamera]) -> mjvGLCamera
alias mjv_select = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], read UnsafePointer[mjvOption], mjtNum, mjtNum, mjtNum, read UnsafePointer[mjvScene], UnsafePointer[mjtNum], UnsafePointer[Int32], UnsafePointer[Int32], UnsafePointer[Int32]) -> Int32
alias mjv_defaultOption = fn (UnsafePointer[mjvOption]) -> NoneType
alias mjv_defaultFigure = fn (UnsafePointer[mjvFigure]) -> NoneType
alias mjv_initGeom = fn (UnsafePointer[mjvGeom], Int32, read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[Float32]) -> NoneType
alias mjv_connector = fn (UnsafePointer[mjvGeom], Int32, mjtNum, read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mjv_defaultScene = fn (UnsafePointer[mjvScene]) -> NoneType
alias mjv_makeScene = fn (read UnsafePointer[mjModel], UnsafePointer[mjvScene], Int32) -> NoneType
alias mjv_freeScene = fn (UnsafePointer[mjvScene]) -> NoneType
alias mjv_updateScene = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], read UnsafePointer[mjvOption], read UnsafePointer[mjvPerturb], UnsafePointer[mjvCamera], Int32, UnsafePointer[mjvScene]) -> NoneType
alias mjv_copyModel = fn (UnsafePointer[mjModel], read UnsafePointer[mjModel]) -> NoneType
alias mjv_addGeoms = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], read UnsafePointer[mjvOption], read UnsafePointer[mjvPerturb], Int32, UnsafePointer[mjvScene]) -> NoneType
alias mjv_makeLights = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], UnsafePointer[mjvScene]) -> NoneType
alias mjv_updateCamera = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], UnsafePointer[mjvCamera], UnsafePointer[mjvScene]) -> NoneType
alias mjv_updateSkin = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], UnsafePointer[mjvScene]) -> NoneType
alias mjr_defaultContext = fn (UnsafePointer[mjrContext]) -> NoneType
alias mjr_makeContext = fn (read UnsafePointer[mjModel], UnsafePointer[mjrContext], Int32) -> NoneType
alias mjr_changeFont = fn (Int32, UnsafePointer[mjrContext]) -> NoneType
alias mjr_addAux = fn (Int32, Int32, Int32, Int32, UnsafePointer[mjrContext]) -> NoneType
alias mjr_freeContext = fn (UnsafePointer[mjrContext]) -> NoneType
alias mjr_resizeOffscreen = fn (Int32, Int32, UnsafePointer[mjrContext]) -> NoneType
alias mjr_uploadTexture = fn (read UnsafePointer[mjModel], read UnsafePointer[mjrContext], Int32) -> NoneType
alias mjr_uploadMesh = fn (read UnsafePointer[mjModel], read UnsafePointer[mjrContext], Int32) -> NoneType
alias mjr_uploadHField = fn (read UnsafePointer[mjModel], read UnsafePointer[mjrContext], Int32) -> NoneType
alias mjr_restoreBuffer = fn (read UnsafePointer[mjrContext]) -> NoneType
alias mjr_setBuffer = fn (Int32, UnsafePointer[mjrContext]) -> NoneType
alias mjr_readPixels = fn (UnsafePointer[UInt8], UnsafePointer[Float32], mjrRect, read UnsafePointer[mjrContext]) -> NoneType
alias mjr_drawPixels = fn (read UnsafePointer[UInt8], read UnsafePointer[Float32], mjrRect, read UnsafePointer[mjrContext]) -> NoneType
alias mjr_blitBuffer = fn (mjrRect, mjrRect, Int32, Int32, read UnsafePointer[mjrContext]) -> NoneType
alias mjr_setAux = fn (Int32, read UnsafePointer[mjrContext]) -> NoneType
alias mjr_blitAux = fn (Int32, mjrRect, Int32, Int32, read UnsafePointer[mjrContext]) -> NoneType
alias mjr_text = fn (Int32, read UnsafePointer[Int8], read UnsafePointer[mjrContext], Float32, Float32, Float32, Float32, Float32) -> NoneType
alias mjr_overlay = fn (Int32, Int32, mjrRect, read UnsafePointer[Int8], read UnsafePointer[Int8], read UnsafePointer[mjrContext]) -> NoneType
alias mjr_maxViewport = fn (read UnsafePointer[mjrContext]) -> mjrRect
alias mjr_rectangle = fn (mjrRect, Float32, Float32, Float32, Float32) -> NoneType
alias mjr_label = fn (mjrRect, Int32, read UnsafePointer[Int8], Float32, Float32, Float32, Float32, Float32, Float32, Float32, read UnsafePointer[mjrContext]) -> NoneType
alias mjr_figure = fn (mjrRect, UnsafePointer[mjvFigure], read UnsafePointer[mjrContext]) -> NoneType
alias mjr_render = fn (mjrRect, UnsafePointer[mjvScene], read UnsafePointer[mjrContext]) -> NoneType
alias mjr_finish = fn (NoneType) -> NoneType
alias mjr_getError = fn (NoneType) -> Int32
alias mjr_findRect = fn (Int32, Int32, Int32, read UnsafePointer[mjrRect]) -> Int32
alias mjui_themeSpacing = fn (Int32) -> mjuiThemeSpacing
alias mjui_themeColor = fn (Int32) -> mjuiThemeColor
alias mjui_add = fn (UnsafePointer[mjUI], read UnsafePointer[mjuiDef]) -> NoneType
alias mjui_addToSection = fn (UnsafePointer[mjUI], Int32, read UnsafePointer[mjuiDef]) -> NoneType
alias mjui_resize = fn (UnsafePointer[mjUI], read UnsafePointer[mjrContext]) -> NoneType
alias mjui_update = fn (Int32, Int32, read UnsafePointer[mjUI], read UnsafePointer[mjuiState], read UnsafePointer[mjrContext]) -> NoneType
alias mjui_event = fn (UnsafePointer[mjUI], UnsafePointer[mjuiState], read UnsafePointer[mjrContext]) -> UnsafePointer[mjuiItem]
alias mjui_render = fn (UnsafePointer[mjUI], read UnsafePointer[mjuiState], read UnsafePointer[mjrContext]) -> NoneType
alias mju_error = fn (read *UnsafePointer[Int8]) -> NoneType
alias mju_error_i = fn (read UnsafePointer[Int8], Int32) -> NoneType
alias mju_error_s = fn (read UnsafePointer[Int8], read UnsafePointer[Int8]) -> NoneType
alias mju_warning = fn (read *UnsafePointer[Int8]) -> NoneType
alias mju_warning_i = fn (read UnsafePointer[Int8], Int32) -> NoneType
alias mju_warning_s = fn (read UnsafePointer[Int8], read UnsafePointer[Int8]) -> NoneType
alias mju_clearHandlers = fn (NoneType) -> NoneType
alias mju_malloc = fn (size_t) -> OpaquePointer
alias mju_free = fn (OpaquePointer) -> NoneType
alias mj_warning = fn (UnsafePointer[mjData], Int32, Int32) -> NoneType
alias mju_writeLog = fn (read UnsafePointer[Int8], read UnsafePointer[Int8]) -> NoneType
alias mjs_getError = fn (UnsafePointer[mjSpec]) -> UnsafePointer[Int8]
alias mjs_isWarning = fn (UnsafePointer[mjSpec]) -> Int32
alias mju_zero3 = fn (UnsafePointer[mjtNum]) -> NoneType
alias mju_copy3 = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_scl3 = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], mjtNum) -> NoneType
alias mju_add3 = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_sub3 = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_addTo3 = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_subFrom3 = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_addToScl3 = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], mjtNum) -> NoneType
alias mju_addScl3 = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], mjtNum) -> NoneType
alias mju_normalize3 = fn (UnsafePointer[mjtNum]) -> mjtNum
alias mju_norm3 = fn (read UnsafePointer[mjtNum]) -> mjtNum
alias mju_dot3 = fn (read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> mjtNum
alias mju_dist3 = fn (read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> mjtNum
alias mju_mulMatVec3 = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_mulMatTVec3 = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_cross = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_zero4 = fn (UnsafePointer[mjtNum]) -> NoneType
alias mju_unit4 = fn (UnsafePointer[mjtNum]) -> NoneType
alias mju_copy4 = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_normalize4 = fn (UnsafePointer[mjtNum]) -> mjtNum
alias mju_zero = fn (UnsafePointer[mjtNum], Int32) -> NoneType
alias mju_fill = fn (UnsafePointer[mjtNum], mjtNum, Int32) -> NoneType
alias mju_copy = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mju_sum = fn (read UnsafePointer[mjtNum], Int32) -> mjtNum
alias mju_L1 = fn (read UnsafePointer[mjtNum], Int32) -> mjtNum
alias mju_scl = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], mjtNum, Int32) -> NoneType
alias mju_add = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mju_sub = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mju_addTo = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mju_subFrom = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mju_addToScl = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], mjtNum, Int32) -> NoneType
alias mju_addScl = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], mjtNum, Int32) -> NoneType
alias mju_normalize = fn (UnsafePointer[mjtNum], Int32) -> mjtNum
alias mju_norm = fn (read UnsafePointer[mjtNum], Int32) -> mjtNum
alias mju_dot = fn (read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> mjtNum
alias mju_mulMatVec = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, Int32) -> NoneType
alias mju_mulMatTVec = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, Int32) -> NoneType
alias mju_mulVecMatVec = fn (read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> mjtNum
alias mju_transpose = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, Int32) -> NoneType
alias mju_symmetrize = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mju_eye = fn (UnsafePointer[mjtNum], Int32) -> NoneType
alias mju_mulMatMat = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, Int32, Int32) -> NoneType
alias mju_mulMatMatT = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, Int32, Int32) -> NoneType
alias mju_mulMatTMat = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, Int32, Int32) -> NoneType
alias mju_sqrMatTD = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, Int32) -> NoneType
alias mju_transformSpatial = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_dense2sparse = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, Int32, UnsafePointer[Int32], UnsafePointer[Int32], UnsafePointer[Int32], Int32) -> Int32
alias mju_sparse2dense = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, Int32, read UnsafePointer[Int32], read UnsafePointer[Int32], read UnsafePointer[Int32]) -> NoneType
alias mju_rotVecQuat = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_negQuat = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_mulQuat = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_mulQuatAxis = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_axisAngle2Quat = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], mjtNum) -> NoneType
alias mju_quat2Vel = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], mjtNum) -> NoneType
alias mju_subQuat = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_quat2Mat = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_mat2Quat = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_derivQuat = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_quatIntegrate = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], mjtNum) -> NoneType
alias mju_quatZ2Vec = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_mat2Rot = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> Int32
alias mju_euler2Quat = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[Int8]) -> NoneType
alias mju_mulPose = fn (UnsafePointer[mjtNum], UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_negPose = fn (UnsafePointer[mjtNum], UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_trnVecPose = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mju_cholFactor = fn (UnsafePointer[mjtNum], Int32, mjtNum) -> Int32
alias mju_cholSolve = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mju_cholUpdate = fn (UnsafePointer[mjtNum], UnsafePointer[mjtNum], Int32, Int32) -> Int32
alias mju_cholFactorBand = fn (UnsafePointer[mjtNum], Int32, Int32, Int32, mjtNum, mjtNum) -> mjtNum
alias mju_cholSolveBand = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, Int32, Int32) -> NoneType
alias mju_band2Dense = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, Int32, Int32, mjtByte) -> NoneType
alias mju_dense2Band = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, Int32, Int32) -> NoneType
alias mju_bandMulMatVec = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, Int32, Int32, Int32, mjtByte) -> NoneType
alias mju_bandDiag = fn (Int32, Int32, Int32, Int32) -> Int32
alias mju_eig3 = fn (UnsafePointer[mjtNum], UnsafePointer[mjtNum], UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> Int32
alias mju_boxQP = fn (UnsafePointer[mjtNum], UnsafePointer[mjtNum], UnsafePointer[Int32], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32, read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> Int32
alias mju_boxQPmalloc = fn (UnsafePointer[UnsafePointer[mjtNum]], UnsafePointer[UnsafePointer[mjtNum]], UnsafePointer[UnsafePointer[Int32]], UnsafePointer[UnsafePointer[mjtNum]], UnsafePointer[UnsafePointer[mjtNum]], Int32, UnsafePointer[UnsafePointer[mjtNum]], UnsafePointer[UnsafePointer[mjtNum]]) -> NoneType
alias mju_muscleGain = fn (mjtNum, mjtNum, read UnsafePointer[mjtNum], mjtNum, read UnsafePointer[mjtNum]) -> mjtNum
alias mju_muscleBias = fn (mjtNum, read UnsafePointer[mjtNum], mjtNum, read UnsafePointer[mjtNum]) -> mjtNum
alias mju_muscleDynamics = fn (mjtNum, mjtNum, read UnsafePointer[mjtNum]) -> mjtNum
alias mju_encodePyramid = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mju_decodePyramid = fn (UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mju_springDamper = fn (mjtNum, mjtNum, mjtNum, mjtNum, mjtNum) -> mjtNum
alias mju_min = fn (mjtNum, mjtNum) -> mjtNum
alias mju_max = fn (mjtNum, mjtNum) -> mjtNum
alias mju_clip = fn (mjtNum, mjtNum, mjtNum) -> mjtNum
alias mju_sign = fn (mjtNum) -> mjtNum
alias mju_round = fn (mjtNum) -> Int32
alias mju_type2Str = fn (Int32) -> UnsafePointer[Int8]
alias mju_str2Type = fn (read UnsafePointer[Int8]) -> Int32
alias mju_writeNumBytes = fn (size_t) -> UnsafePointer[Int8]
alias mju_warningText = fn (Int32, size_t) -> UnsafePointer[Int8]
alias mju_isBad = fn (mjtNum) -> Int32
alias mju_isZero = fn (UnsafePointer[mjtNum], Int32) -> Int32
alias mju_standardNormal = fn (UnsafePointer[mjtNum]) -> mjtNum
alias mju_f2n = fn (UnsafePointer[mjtNum], read UnsafePointer[Float32], Int32) -> NoneType
alias mju_n2f = fn (UnsafePointer[Float32], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mju_d2n = fn (UnsafePointer[mjtNum], read UnsafePointer[Float64], Int32) -> NoneType
alias mju_n2d = fn (UnsafePointer[Float64], read UnsafePointer[mjtNum], Int32) -> NoneType
alias mju_insertionSort = fn (UnsafePointer[mjtNum], Int32) -> NoneType
alias mju_insertionSortInt = fn (UnsafePointer[Int32], Int32) -> NoneType
alias mju_Halton = fn (Int32, Int32) -> mjtNum
alias mju_strncpy = fn (UnsafePointer[Int8], read UnsafePointer[Int8], Int32) -> UnsafePointer[Int8]
alias mju_sigmoid = fn (mjtNum) -> mjtNum
alias mjc_getSDF = fn (read UnsafePointer[mjModel], Int32) -> UnsafePointer[mjpPlugin]
alias mjc_distance = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], read UnsafePointer[mjSDF], read UnsafePointer[mjtNum]) -> mjtNum
alias mjc_gradient = fn (read UnsafePointer[mjModel], read UnsafePointer[mjData], read UnsafePointer[mjSDF], UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType
alias mjd_transitionFD = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], mjtNum, mjtByte, UnsafePointer[mjtNum], UnsafePointer[mjtNum], UnsafePointer[mjtNum], UnsafePointer[mjtNum]) -> NoneType
alias mjd_inverseFD = fn (read UnsafePointer[mjModel], UnsafePointer[mjData], mjtNum, mjtByte, UnsafePointer[mjtNum], UnsafePointer[mjtNum], UnsafePointer[mjtNum], UnsafePointer[mjtNum], UnsafePointer[mjtNum], UnsafePointer[mjtNum], UnsafePointer[mjtNum]) -> NoneType
alias mjd_subQuat = fn (read UnsafePointer[mjtNum], read UnsafePointer[mjtNum], UnsafePointer[mjtNum], UnsafePointer[mjtNum]) -> NoneType
alias mjd_quatIntegrate = fn (read UnsafePointer[mjtNum], mjtNum, UnsafePointer[mjtNum], UnsafePointer[mjtNum], UnsafePointer[mjtNum]) -> NoneType
alias mjp_defaultPlugin = fn (UnsafePointer[mjpPlugin]) -> NoneType
alias mjp_registerPlugin = fn (read UnsafePointer[mjpPlugin]) -> Int32
alias mjp_pluginCount = fn (NoneType) -> Int32
alias mjp_getPlugin = fn (read UnsafePointer[Int8], UnsafePointer[Int32]) -> UnsafePointer[mjpPlugin]
alias mjp_getPluginAtSlot = fn (Int32) -> UnsafePointer[mjpPlugin]
alias mjp_defaultResourceProvider = fn (UnsafePointer[mjpResourceProvider]) -> NoneType
alias mjp_registerResourceProvider = fn (read UnsafePointer[mjpResourceProvider]) -> Int32
alias mjp_resourceProviderCount = fn (NoneType) -> Int32
alias mjp_getResourceProvider = fn (read UnsafePointer[Int8]) -> UnsafePointer[mjpResourceProvider]
alias mjp_getResourceProviderAtSlot = fn (Int32) -> UnsafePointer[mjpResourceProvider]
alias mju_threadPoolCreate = fn (size_t) -> UnsafePointer[mjThreadPool]
alias mju_bindThreadPool = fn (UnsafePointer[mjData], OpaquePointer) -> NoneType
alias mju_threadPoolEnqueue = fn (UnsafePointer[mjThreadPool], UnsafePointer[mjTask]) -> NoneType
alias mju_threadPoolDestroy = fn (UnsafePointer[mjThreadPool]) -> NoneType
alias mju_defaultTask = fn (UnsafePointer[mjTask]) -> NoneType
alias mju_taskJoin = fn (UnsafePointer[mjTask]) -> NoneType
alias mjs_attach = fn (UnsafePointer[mjsElement], read UnsafePointer[mjsElement], read UnsafePointer[Int8], read UnsafePointer[Int8]) -> UnsafePointer[mjsElement]
alias mjs_addBody = fn (UnsafePointer[mjsBody], read UnsafePointer[mjsDefault]) -> UnsafePointer[mjsBody]
alias mjs_addSite = fn (UnsafePointer[mjsBody], read UnsafePointer[mjsDefault]) -> UnsafePointer[mjsSite]
alias mjs_addJoint = fn (UnsafePointer[mjsBody], read UnsafePointer[mjsDefault]) -> UnsafePointer[mjsJoint]
alias mjs_addFreeJoint = fn (UnsafePointer[mjsBody]) -> UnsafePointer[mjsJoint]
alias mjs_addGeom = fn (UnsafePointer[mjsBody], read UnsafePointer[mjsDefault]) -> UnsafePointer[mjsGeom]
alias mjs_addCamera = fn (UnsafePointer[mjsBody], read UnsafePointer[mjsDefault]) -> UnsafePointer[mjsCamera]
alias mjs_addLight = fn (UnsafePointer[mjsBody], read UnsafePointer[mjsDefault]) -> UnsafePointer[mjsLight]
alias mjs_addFrame = fn (UnsafePointer[mjsBody], UnsafePointer[mjsFrame]) -> UnsafePointer[mjsFrame]
alias mjs_delete = fn (UnsafePointer[mjSpec], UnsafePointer[mjsElement]) -> Int32
alias mjs_addActuator = fn (UnsafePointer[mjSpec], read UnsafePointer[mjsDefault]) -> UnsafePointer[mjsActuator]
alias mjs_addSensor = fn (UnsafePointer[mjSpec]) -> UnsafePointer[mjsSensor]
alias mjs_addFlex = fn (UnsafePointer[mjSpec]) -> UnsafePointer[mjsFlex]
alias mjs_addPair = fn (UnsafePointer[mjSpec], read UnsafePointer[mjsDefault]) -> UnsafePointer[mjsPair]
alias mjs_addExclude = fn (UnsafePointer[mjSpec]) -> UnsafePointer[mjsExclude]
alias mjs_addEquality = fn (UnsafePointer[mjSpec], read UnsafePointer[mjsDefault]) -> UnsafePointer[mjsEquality]
alias mjs_addTendon = fn (UnsafePointer[mjSpec], read UnsafePointer[mjsDefault]) -> UnsafePointer[mjsTendon]
alias mjs_wrapSite = fn (UnsafePointer[mjsTendon], read UnsafePointer[Int8]) -> UnsafePointer[mjsWrap]
alias mjs_wrapGeom = fn (UnsafePointer[mjsTendon], read UnsafePointer[Int8], read UnsafePointer[Int8]) -> UnsafePointer[mjsWrap]
alias mjs_wrapJoint = fn (UnsafePointer[mjsTendon], read UnsafePointer[Int8], Float64) -> UnsafePointer[mjsWrap]
alias mjs_wrapPulley = fn (UnsafePointer[mjsTendon], Float64) -> UnsafePointer[mjsWrap]
alias mjs_addNumeric = fn (UnsafePointer[mjSpec]) -> UnsafePointer[mjsNumeric]
alias mjs_addText = fn (UnsafePointer[mjSpec]) -> UnsafePointer[mjsText]
alias mjs_addTuple = fn (UnsafePointer[mjSpec]) -> UnsafePointer[mjsTuple]
alias mjs_addKey = fn (UnsafePointer[mjSpec]) -> UnsafePointer[mjsKey]
alias mjs_addPlugin = fn (UnsafePointer[mjSpec]) -> UnsafePointer[mjsPlugin]
alias mjs_addDefault = fn (UnsafePointer[mjSpec], read UnsafePointer[Int8], read UnsafePointer[mjsDefault]) -> UnsafePointer[mjsDefault]
alias mjs_setToMotor = fn (UnsafePointer[mjsActuator]) -> UnsafePointer[Int8]
alias mjs_setToPosition = fn (UnsafePointer[mjsActuator], Float64, UnsafePointer[Float64], UnsafePointer[Float64], UnsafePointer[Float64], Float64) -> UnsafePointer[Int8]
alias mjs_setToIntVelocity = fn (UnsafePointer[mjsActuator], Float64, UnsafePointer[Float64], UnsafePointer[Float64], UnsafePointer[Float64], Float64) -> UnsafePointer[Int8]
alias mjs_setToVelocity = fn (UnsafePointer[mjsActuator], Float64) -> UnsafePointer[Int8]
alias mjs_setToDamper = fn (UnsafePointer[mjsActuator], Float64) -> UnsafePointer[Int8]
alias mjs_setToCylinder = fn (UnsafePointer[mjsActuator], Float64, Float64, Float64, Float64) -> UnsafePointer[Int8]
alias mjs_setToMuscle = fn (UnsafePointer[mjsActuator], UnsafePointer[Float64], Float64, UnsafePointer[Float64], Float64, Float64, Float64, Float64, Float64, Float64, Float64) -> UnsafePointer[Int8]
alias mjs_setToAdhesion = fn (UnsafePointer[mjsActuator], Float64) -> UnsafePointer[Int8]
alias mjs_addMesh = fn (UnsafePointer[mjSpec], read UnsafePointer[mjsDefault]) -> UnsafePointer[mjsMesh]
alias mjs_addHField = fn (UnsafePointer[mjSpec]) -> UnsafePointer[mjsHField]
alias mjs_addSkin = fn (UnsafePointer[mjSpec]) -> UnsafePointer[mjsSkin]
alias mjs_addTexture = fn (UnsafePointer[mjSpec]) -> UnsafePointer[mjsTexture]
alias mjs_addMaterial = fn (UnsafePointer[mjSpec], read UnsafePointer[mjsDefault]) -> UnsafePointer[mjsMaterial]
alias mjs_makeMesh = fn (UnsafePointer[mjsMesh], mjtMeshBuiltin, UnsafePointer[Float64], Int32) -> Int32
alias mjs_getSpec = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjSpec]
alias mjs_findSpec = fn (UnsafePointer[mjSpec], read UnsafePointer[Int8]) -> UnsafePointer[mjSpec]
alias mjs_findBody = fn (UnsafePointer[mjSpec], read UnsafePointer[Int8]) -> UnsafePointer[mjsBody]
alias mjs_findElement = fn (UnsafePointer[mjSpec], mjtObj, read UnsafePointer[Int8]) -> UnsafePointer[mjsElement]
alias mjs_findChild = fn (UnsafePointer[mjsBody], read UnsafePointer[Int8]) -> UnsafePointer[mjsBody]
alias mjs_getParent = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsBody]
alias mjs_getFrame = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsFrame]
alias mjs_findFrame = fn (UnsafePointer[mjSpec], read UnsafePointer[Int8]) -> UnsafePointer[mjsFrame]
alias mjs_getDefault = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsDefault]
alias mjs_findDefault = fn (UnsafePointer[mjSpec], read UnsafePointer[Int8]) -> UnsafePointer[mjsDefault]
alias mjs_getSpecDefault = fn (UnsafePointer[mjSpec]) -> UnsafePointer[mjsDefault]
alias mjs_getId = fn (UnsafePointer[mjsElement]) -> Int32
alias mjs_firstChild = fn (UnsafePointer[mjsBody], mjtObj, Int32) -> UnsafePointer[mjsElement]
alias mjs_nextChild = fn (UnsafePointer[mjsBody], UnsafePointer[mjsElement], Int32) -> UnsafePointer[mjsElement]
alias mjs_firstElement = fn (UnsafePointer[mjSpec], mjtObj) -> UnsafePointer[mjsElement]
alias mjs_nextElement = fn (UnsafePointer[mjSpec], UnsafePointer[mjsElement]) -> UnsafePointer[mjsElement]
alias mjs_setName = fn (UnsafePointer[mjsElement], read UnsafePointer[Int8]) -> Int32
alias mjs_setBuffer = fn (UnsafePointer[mjByteVec], read OpaquePointer, Int32) -> NoneType
alias mjs_setString = fn (UnsafePointer[mjString], read UnsafePointer[Int8]) -> NoneType
alias mjs_setStringVec = fn (UnsafePointer[mjStringVec], read UnsafePointer[Int8]) -> NoneType
alias mjs_setInStringVec = fn (UnsafePointer[mjStringVec], Int32, read UnsafePointer[Int8]) -> mjtByte
alias mjs_appendString = fn (UnsafePointer[mjStringVec], read UnsafePointer[Int8]) -> NoneType
alias mjs_setInt = fn (UnsafePointer[mjIntVec], read UnsafePointer[Int32], Int32) -> NoneType
alias mjs_appendIntVec = fn (UnsafePointer[mjIntVecVec], read UnsafePointer[Int32], Int32) -> NoneType
alias mjs_setFloat = fn (UnsafePointer[mjFloatVec], read UnsafePointer[Float32], Int32) -> NoneType
alias mjs_appendFloatVec = fn (UnsafePointer[mjFloatVecVec], read UnsafePointer[Float32], Int32) -> NoneType
alias mjs_setDouble = fn (UnsafePointer[mjDoubleVec], read UnsafePointer[Float64], Int32) -> NoneType
alias mjs_setPluginAttributes = fn (UnsafePointer[mjsPlugin], OpaquePointer) -> NoneType
alias mjs_getName = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjString]
alias mjs_getString = fn (read UnsafePointer[mjString]) -> UnsafePointer[Int8]
alias mjs_getDouble = fn (read UnsafePointer[mjDoubleVec], UnsafePointer[Int32]) -> UnsafePointer[Float64]
alias mjs_getPluginAttributes = fn (read UnsafePointer[mjsPlugin]) -> OpaquePointer
alias mjs_setDefault = fn (UnsafePointer[mjsElement], read UnsafePointer[mjsDefault]) -> NoneType
alias mjs_setFrame = fn (UnsafePointer[mjsElement], UnsafePointer[mjsFrame]) -> Int32
alias mjs_resolveOrientation = fn (UnsafePointer[Float64], mjtByte, read UnsafePointer[Int8], read UnsafePointer[mjsOrientation]) -> UnsafePointer[Int8]
alias mjs_bodyToFrame = fn (UnsafePointer[UnsafePointer[mjsBody]]) -> UnsafePointer[mjsFrame]
alias mjs_setUserValue = fn (UnsafePointer[mjsElement], read UnsafePointer[Int8], read OpaquePointer) -> NoneType
alias mjs_setUserValueWithCleanup = fn (fn(read OpaquePointer) -> UnsafePointer[mjsElement], read UnsafePointer[Int8], read OpaquePointer, NoneType) -> NoneType
alias mjs_getUserValue = fn (UnsafePointer[mjsElement], read UnsafePointer[Int8]) -> OpaquePointer
alias mjs_deleteUserValue = fn (UnsafePointer[mjsElement], read UnsafePointer[Int8]) -> NoneType
alias mjs_sensorDim = fn (read UnsafePointer[mjsSensor]) -> Int32
alias mjs_defaultSpec = fn (UnsafePointer[mjSpec]) -> NoneType
alias mjs_defaultOrientation = fn (UnsafePointer[mjsOrientation]) -> NoneType
alias mjs_defaultBody = fn (UnsafePointer[mjsBody]) -> NoneType
alias mjs_defaultFrame = fn (UnsafePointer[mjsFrame]) -> NoneType
alias mjs_defaultJoint = fn (UnsafePointer[mjsJoint]) -> NoneType
alias mjs_defaultGeom = fn (UnsafePointer[mjsGeom]) -> NoneType
alias mjs_defaultSite = fn (UnsafePointer[mjsSite]) -> NoneType
alias mjs_defaultCamera = fn (UnsafePointer[mjsCamera]) -> NoneType
alias mjs_defaultLight = fn (UnsafePointer[mjsLight]) -> NoneType
alias mjs_defaultFlex = fn (UnsafePointer[mjsFlex]) -> NoneType
alias mjs_defaultMesh = fn (UnsafePointer[mjsMesh]) -> NoneType
alias mjs_defaultHField = fn (UnsafePointer[mjsHField]) -> NoneType
alias mjs_defaultSkin = fn (UnsafePointer[mjsSkin]) -> NoneType
alias mjs_defaultTexture = fn (UnsafePointer[mjsTexture]) -> NoneType
alias mjs_defaultMaterial = fn (UnsafePointer[mjsMaterial]) -> NoneType
alias mjs_defaultPair = fn (UnsafePointer[mjsPair]) -> NoneType
alias mjs_defaultEquality = fn (UnsafePointer[mjsEquality]) -> NoneType
alias mjs_defaultTendon = fn (UnsafePointer[mjsTendon]) -> NoneType
alias mjs_defaultActuator = fn (UnsafePointer[mjsActuator]) -> NoneType
alias mjs_defaultSensor = fn (UnsafePointer[mjsSensor]) -> NoneType
alias mjs_defaultNumeric = fn (UnsafePointer[mjsNumeric]) -> NoneType
alias mjs_defaultText = fn (UnsafePointer[mjsText]) -> NoneType
alias mjs_defaultTuple = fn (UnsafePointer[mjsTuple]) -> NoneType
alias mjs_defaultKey = fn (UnsafePointer[mjsKey]) -> NoneType
alias mjs_defaultPlugin = fn (UnsafePointer[mjsPlugin]) -> NoneType
alias mjs_asBody = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsBody]
alias mjs_asGeom = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsGeom]
alias mjs_asJoint = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsJoint]
alias mjs_asSite = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsSite]
alias mjs_asCamera = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsCamera]
alias mjs_asLight = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsLight]
alias mjs_asFrame = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsFrame]
alias mjs_asActuator = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsActuator]
alias mjs_asSensor = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsSensor]
alias mjs_asFlex = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsFlex]
alias mjs_asPair = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsPair]
alias mjs_asEquality = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsEquality]
alias mjs_asExclude = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsExclude]
alias mjs_asTendon = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsTendon]
alias mjs_asNumeric = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsNumeric]
alias mjs_asText = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsText]
alias mjs_asTuple = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsTuple]
alias mjs_asKey = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsKey]
alias mjs_asMesh = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsMesh]
alias mjs_asHField = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsHField]
alias mjs_asSkin = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsSkin]
alias mjs_asTexture = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsTexture]
alias mjs_asMaterial = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsMaterial]
alias mjs_asPlugin = fn (UnsafePointer[mjsElement]) -> UnsafePointer[mjsPlugin]


alias mujoco_mj_defaultVFS = ExternalFunction['mj_defaultVFS', mj_defaultVFS]
alias mujoco_mj_addFileVFS = ExternalFunction['mj_addFileVFS', mj_addFileVFS]
alias mujoco_mj_addBufferVFS = ExternalFunction['mj_addBufferVFS', mj_addBufferVFS]
alias mujoco_mj_deleteFileVFS = ExternalFunction['mj_deleteFileVFS', mj_deleteFileVFS]
alias mujoco_mj_deleteVFS = ExternalFunction['mj_deleteVFS', mj_deleteVFS]
alias mujoco_mj_loadXML = ExternalFunction['mj_loadXML', mj_loadXML]
alias mujoco_mj_parseXML = ExternalFunction['mj_parseXML', mj_parseXML]
alias mujoco_mj_parseXMLString = ExternalFunction['mj_parseXMLString', mj_parseXMLString]
alias mujoco_mj_compile = ExternalFunction['mj_compile', mj_compile]
alias mujoco_mj_copyBack = ExternalFunction['mj_copyBack', mj_copyBack]
alias mujoco_mj_recompile = ExternalFunction['mj_recompile', mj_recompile]
alias mujoco_mj_saveLastXML = ExternalFunction['mj_saveLastXML', mj_saveLastXML]
alias mujoco_mj_freeLastXML = ExternalFunction['mj_freeLastXML', mj_freeLastXML]
alias mujoco_mj_saveXMLString = ExternalFunction['mj_saveXMLString', mj_saveXMLString]
alias mujoco_mj_saveXML = ExternalFunction['mj_saveXML', mj_saveXML]
alias mujoco_mj_step = ExternalFunction['mj_step', mj_step]
alias mujoco_mj_step1 = ExternalFunction['mj_step1', mj_step1]
alias mujoco_mj_step2 = ExternalFunction['mj_step2', mj_step2]
alias mujoco_mj_forward = ExternalFunction['mj_forward', mj_forward]
alias mujoco_mj_inverse = ExternalFunction['mj_inverse', mj_inverse]
alias mujoco_mj_forwardSkip = ExternalFunction['mj_forwardSkip', mj_forwardSkip]
alias mujoco_mj_inverseSkip = ExternalFunction['mj_inverseSkip', mj_inverseSkip]
alias mujoco_mj_defaultLROpt = ExternalFunction['mj_defaultLROpt', mj_defaultLROpt]
alias mujoco_mj_defaultSolRefImp = ExternalFunction['mj_defaultSolRefImp', mj_defaultSolRefImp]
alias mujoco_mj_defaultOption = ExternalFunction['mj_defaultOption', mj_defaultOption]
alias mujoco_mj_defaultVisual = ExternalFunction['mj_defaultVisual', mj_defaultVisual]
alias mujoco_mj_copyModel = ExternalFunction['mj_copyModel', mj_copyModel]
alias mujoco_mj_saveModel = ExternalFunction['mj_saveModel', mj_saveModel]
alias mujoco_mj_loadModel = ExternalFunction['mj_loadModel', mj_loadModel]
alias mujoco_mj_deleteModel = ExternalFunction['mj_deleteModel', mj_deleteModel]
alias mujoco_mj_sizeModel = ExternalFunction['mj_sizeModel', mj_sizeModel]
alias mujoco_mj_makeData = ExternalFunction['mj_makeData', mj_makeData]
alias mujoco_mj_copyData = ExternalFunction['mj_copyData', mj_copyData]
alias mujoco_mjv_copyData = ExternalFunction['mjv_copyData', mjv_copyData]
alias mujoco_mj_resetData = ExternalFunction['mj_resetData', mj_resetData]
alias mujoco_mj_resetDataDebug = ExternalFunction['mj_resetDataDebug', mj_resetDataDebug]
alias mujoco_mj_resetDataKeyframe = ExternalFunction['mj_resetDataKeyframe', mj_resetDataKeyframe]
alias mujoco_mj_markStack = ExternalFunction['mj_markStack', mj_markStack]
alias mujoco_mj_freeStack = ExternalFunction['mj_freeStack', mj_freeStack]
alias mujoco_mj_stackAllocByte = ExternalFunction['mj_stackAllocByte', mj_stackAllocByte]
alias mujoco_mj_stackAllocNum = ExternalFunction['mj_stackAllocNum', mj_stackAllocNum]
alias mujoco_mj_stackAllocInt = ExternalFunction['mj_stackAllocInt', mj_stackAllocInt]
alias mujoco_mj_deleteData = ExternalFunction['mj_deleteData', mj_deleteData]
alias mujoco_mj_resetCallbacks = ExternalFunction['mj_resetCallbacks', mj_resetCallbacks]
alias mujoco_mj_setConst = ExternalFunction['mj_setConst', mj_setConst]
alias mujoco_mj_setLengthRange = ExternalFunction['mj_setLengthRange', mj_setLengthRange]
alias mujoco_mj_makeSpec = ExternalFunction['mj_makeSpec', mj_makeSpec]
alias mujoco_mj_copySpec = ExternalFunction['mj_copySpec', mj_copySpec]
alias mujoco_mj_deleteSpec = ExternalFunction['mj_deleteSpec', mj_deleteSpec]
alias mujoco_mjs_activatePlugin = ExternalFunction['mjs_activatePlugin', mjs_activatePlugin]
alias mujoco_mjs_setDeepCopy = ExternalFunction['mjs_setDeepCopy', mjs_setDeepCopy]
alias mujoco_mj_printFormattedModel = ExternalFunction['mj_printFormattedModel', mj_printFormattedModel]
alias mujoco_mj_printModel = ExternalFunction['mj_printModel', mj_printModel]
alias mujoco_mj_printFormattedData = ExternalFunction['mj_printFormattedData', mj_printFormattedData]
alias mujoco_mj_printData = ExternalFunction['mj_printData', mj_printData]
alias mujoco_mju_printMat = ExternalFunction['mju_printMat', mju_printMat]
alias mujoco_mju_printMatSparse = ExternalFunction['mju_printMatSparse', mju_printMatSparse]
alias mujoco_mj_printSchema = ExternalFunction['mj_printSchema', mj_printSchema]
alias mujoco_mj_fwdPosition = ExternalFunction['mj_fwdPosition', mj_fwdPosition]
alias mujoco_mj_fwdVelocity = ExternalFunction['mj_fwdVelocity', mj_fwdVelocity]
alias mujoco_mj_fwdActuation = ExternalFunction['mj_fwdActuation', mj_fwdActuation]
alias mujoco_mj_fwdAcceleration = ExternalFunction['mj_fwdAcceleration', mj_fwdAcceleration]
alias mujoco_mj_fwdConstraint = ExternalFunction['mj_fwdConstraint', mj_fwdConstraint]
alias mujoco_mj_Euler = ExternalFunction['mj_Euler', mj_Euler]
alias mujoco_mj_RungeKutta = ExternalFunction['mj_RungeKutta', mj_RungeKutta]
alias mujoco_mj_implicit = ExternalFunction['mj_implicit', mj_implicit]
alias mujoco_mj_invPosition = ExternalFunction['mj_invPosition', mj_invPosition]
alias mujoco_mj_invVelocity = ExternalFunction['mj_invVelocity', mj_invVelocity]
alias mujoco_mj_invConstraint = ExternalFunction['mj_invConstraint', mj_invConstraint]
alias mujoco_mj_compareFwdInv = ExternalFunction['mj_compareFwdInv', mj_compareFwdInv]
alias mujoco_mj_sensorPos = ExternalFunction['mj_sensorPos', mj_sensorPos]
alias mujoco_mj_sensorVel = ExternalFunction['mj_sensorVel', mj_sensorVel]
alias mujoco_mj_sensorAcc = ExternalFunction['mj_sensorAcc', mj_sensorAcc]
alias mujoco_mj_energyPos = ExternalFunction['mj_energyPos', mj_energyPos]
alias mujoco_mj_energyVel = ExternalFunction['mj_energyVel', mj_energyVel]
alias mujoco_mj_checkPos = ExternalFunction['mj_checkPos', mj_checkPos]
alias mujoco_mj_checkVel = ExternalFunction['mj_checkVel', mj_checkVel]
alias mujoco_mj_checkAcc = ExternalFunction['mj_checkAcc', mj_checkAcc]
alias mujoco_mj_kinematics = ExternalFunction['mj_kinematics', mj_kinematics]
alias mujoco_mj_comPos = ExternalFunction['mj_comPos', mj_comPos]
alias mujoco_mj_camlight = ExternalFunction['mj_camlight', mj_camlight]
alias mujoco_mj_flex = ExternalFunction['mj_flex', mj_flex]
alias mujoco_mj_tendon = ExternalFunction['mj_tendon', mj_tendon]
alias mujoco_mj_transmission = ExternalFunction['mj_transmission', mj_transmission]
alias mujoco_mj_crb = ExternalFunction['mj_crb', mj_crb]
alias mujoco_mj_makeM = ExternalFunction['mj_makeM', mj_makeM]
alias mujoco_mj_factorM = ExternalFunction['mj_factorM', mj_factorM]
alias mujoco_mj_solveM = ExternalFunction['mj_solveM', mj_solveM]
alias mujoco_mj_solveM2 = ExternalFunction['mj_solveM2', mj_solveM2]
alias mujoco_mj_comVel = ExternalFunction['mj_comVel', mj_comVel]
alias mujoco_mj_passive = ExternalFunction['mj_passive', mj_passive]
alias mujoco_mj_subtreeVel = ExternalFunction['mj_subtreeVel', mj_subtreeVel]
alias mujoco_mj_rne = ExternalFunction['mj_rne', mj_rne]
alias mujoco_mj_rnePostConstraint = ExternalFunction['mj_rnePostConstraint', mj_rnePostConstraint]
alias mujoco_mj_collision = ExternalFunction['mj_collision', mj_collision]
alias mujoco_mj_makeConstraint = ExternalFunction['mj_makeConstraint', mj_makeConstraint]
alias mujoco_mj_island = ExternalFunction['mj_island', mj_island]
alias mujoco_mj_projectConstraint = ExternalFunction['mj_projectConstraint', mj_projectConstraint]
alias mujoco_mj_referenceConstraint = ExternalFunction['mj_referenceConstraint', mj_referenceConstraint]
alias mujoco_mj_constraintUpdate = ExternalFunction['mj_constraintUpdate', mj_constraintUpdate]
alias mujoco_mj_stateSize = ExternalFunction['mj_stateSize', mj_stateSize]
alias mujoco_mj_getState = ExternalFunction['mj_getState', mj_getState]
alias mujoco_mj_setState = ExternalFunction['mj_setState', mj_setState]
alias mujoco_mj_setKeyframe = ExternalFunction['mj_setKeyframe', mj_setKeyframe]
alias mujoco_mj_addContact = ExternalFunction['mj_addContact', mj_addContact]
alias mujoco_mj_isPyramidal = ExternalFunction['mj_isPyramidal', mj_isPyramidal]
alias mujoco_mj_isSparse = ExternalFunction['mj_isSparse', mj_isSparse]
alias mujoco_mj_isDual = ExternalFunction['mj_isDual', mj_isDual]
alias mujoco_mj_mulJacVec = ExternalFunction['mj_mulJacVec', mj_mulJacVec]
alias mujoco_mj_mulJacTVec = ExternalFunction['mj_mulJacTVec', mj_mulJacTVec]
alias mujoco_mj_jac = ExternalFunction['mj_jac', mj_jac]
alias mujoco_mj_jacBody = ExternalFunction['mj_jacBody', mj_jacBody]
alias mujoco_mj_jacBodyCom = ExternalFunction['mj_jacBodyCom', mj_jacBodyCom]
alias mujoco_mj_jacSubtreeCom = ExternalFunction['mj_jacSubtreeCom', mj_jacSubtreeCom]
alias mujoco_mj_jacGeom = ExternalFunction['mj_jacGeom', mj_jacGeom]
alias mujoco_mj_jacSite = ExternalFunction['mj_jacSite', mj_jacSite]
alias mujoco_mj_jacPointAxis = ExternalFunction['mj_jacPointAxis', mj_jacPointAxis]
alias mujoco_mj_jacDot = ExternalFunction['mj_jacDot', mj_jacDot]
alias mujoco_mj_angmomMat = ExternalFunction['mj_angmomMat', mj_angmomMat]
alias mujoco_mj_name2id = ExternalFunction['mj_name2id', mj_name2id]
alias mujoco_mj_id2name = ExternalFunction['mj_id2name', mj_id2name]
alias mujoco_mj_fullM = ExternalFunction['mj_fullM', mj_fullM]
alias mujoco_mj_mulM = ExternalFunction['mj_mulM', mj_mulM]
alias mujoco_mj_mulM2 = ExternalFunction['mj_mulM2', mj_mulM2]
alias mujoco_mj_addM = ExternalFunction['mj_addM', mj_addM]
alias mujoco_mj_applyFT = ExternalFunction['mj_applyFT', mj_applyFT]
alias mujoco_mj_objectVelocity = ExternalFunction['mj_objectVelocity', mj_objectVelocity]
alias mujoco_mj_objectAcceleration = ExternalFunction['mj_objectAcceleration', mj_objectAcceleration]
alias mujoco_mj_geomDistance = ExternalFunction['mj_geomDistance', mj_geomDistance]
alias mujoco_mj_contactForce = ExternalFunction['mj_contactForce', mj_contactForce]
alias mujoco_mj_differentiatePos = ExternalFunction['mj_differentiatePos', mj_differentiatePos]
alias mujoco_mj_integratePos = ExternalFunction['mj_integratePos', mj_integratePos]
alias mujoco_mj_normalizeQuat = ExternalFunction['mj_normalizeQuat', mj_normalizeQuat]
alias mujoco_mj_local2Global = ExternalFunction['mj_local2Global', mj_local2Global]
alias mujoco_mj_getTotalmass = ExternalFunction['mj_getTotalmass', mj_getTotalmass]
alias mujoco_mj_setTotalmass = ExternalFunction['mj_setTotalmass', mj_setTotalmass]
alias mujoco_mj_getPluginConfig = ExternalFunction['mj_getPluginConfig', mj_getPluginConfig]
alias mujoco_mj_loadPluginLibrary = ExternalFunction['mj_loadPluginLibrary', mj_loadPluginLibrary]
alias mujoco_mj_loadAllPluginLibraries = ExternalFunction['mj_loadAllPluginLibraries', mj_loadAllPluginLibraries]
alias mujoco_mj_version = ExternalFunction['mj_version', mj_version]
alias mujoco_mj_versionString = ExternalFunction['mj_versionString', mj_versionString]
alias mujoco_mj_multiRay = ExternalFunction['mj_multiRay', mj_multiRay]
alias mujoco_mj_ray = ExternalFunction['mj_ray', mj_ray]
alias mujoco_mj_rayHfield = ExternalFunction['mj_rayHfield', mj_rayHfield]
alias mujoco_mj_rayMesh = ExternalFunction['mj_rayMesh', mj_rayMesh]
alias mujoco_mju_rayGeom = ExternalFunction['mju_rayGeom', mju_rayGeom]
alias mujoco_mju_rayFlex = ExternalFunction['mju_rayFlex', mju_rayFlex]
alias mujoco_mju_raySkin = ExternalFunction['mju_raySkin', mju_raySkin]
alias mujoco_mjv_defaultCamera = ExternalFunction['mjv_defaultCamera', mjv_defaultCamera]
alias mujoco_mjv_defaultFreeCamera = ExternalFunction['mjv_defaultFreeCamera', mjv_defaultFreeCamera]
alias mujoco_mjv_defaultPerturb = ExternalFunction['mjv_defaultPerturb', mjv_defaultPerturb]
alias mujoco_mjv_room2model = ExternalFunction['mjv_room2model', mjv_room2model]
alias mujoco_mjv_model2room = ExternalFunction['mjv_model2room', mjv_model2room]
alias mujoco_mjv_cameraInModel = ExternalFunction['mjv_cameraInModel', mjv_cameraInModel]
alias mujoco_mjv_cameraInRoom = ExternalFunction['mjv_cameraInRoom', mjv_cameraInRoom]
alias mujoco_mjv_frustumHeight = ExternalFunction['mjv_frustumHeight', mjv_frustumHeight]
alias mujoco_mjv_alignToCamera = ExternalFunction['mjv_alignToCamera', mjv_alignToCamera]
alias mujoco_mjv_moveCamera = ExternalFunction['mjv_moveCamera', mjv_moveCamera]
alias mujoco_mjv_movePerturb = ExternalFunction['mjv_movePerturb', mjv_movePerturb]
alias mujoco_mjv_moveModel = ExternalFunction['mjv_moveModel', mjv_moveModel]
alias mujoco_mjv_initPerturb = ExternalFunction['mjv_initPerturb', mjv_initPerturb]
alias mujoco_mjv_applyPerturbPose = ExternalFunction['mjv_applyPerturbPose', mjv_applyPerturbPose]
alias mujoco_mjv_applyPerturbForce = ExternalFunction['mjv_applyPerturbForce', mjv_applyPerturbForce]
alias mujoco_mjv_averageCamera = ExternalFunction['mjv_averageCamera', mjv_averageCamera]
alias mujoco_mjv_select = ExternalFunction['mjv_select', mjv_select]
alias mujoco_mjv_defaultOption = ExternalFunction['mjv_defaultOption', mjv_defaultOption]
alias mujoco_mjv_defaultFigure = ExternalFunction['mjv_defaultFigure', mjv_defaultFigure]
alias mujoco_mjv_initGeom = ExternalFunction['mjv_initGeom', mjv_initGeom]
alias mujoco_mjv_connector = ExternalFunction['mjv_connector', mjv_connector]
alias mujoco_mjv_defaultScene = ExternalFunction['mjv_defaultScene', mjv_defaultScene]
alias mujoco_mjv_makeScene = ExternalFunction['mjv_makeScene', mjv_makeScene]
alias mujoco_mjv_freeScene = ExternalFunction['mjv_freeScene', mjv_freeScene]
alias mujoco_mjv_updateScene = ExternalFunction['mjv_updateScene', mjv_updateScene]
alias mujoco_mjv_copyModel = ExternalFunction['mjv_copyModel', mjv_copyModel]
alias mujoco_mjv_addGeoms = ExternalFunction['mjv_addGeoms', mjv_addGeoms]
alias mujoco_mjv_makeLights = ExternalFunction['mjv_makeLights', mjv_makeLights]
alias mujoco_mjv_updateCamera = ExternalFunction['mjv_updateCamera', mjv_updateCamera]
alias mujoco_mjv_updateSkin = ExternalFunction['mjv_updateSkin', mjv_updateSkin]
alias mujoco_mjr_defaultContext = ExternalFunction['mjr_defaultContext', mjr_defaultContext]
alias mujoco_mjr_makeContext = ExternalFunction['mjr_makeContext', mjr_makeContext]
alias mujoco_mjr_changeFont = ExternalFunction['mjr_changeFont', mjr_changeFont]
alias mujoco_mjr_addAux = ExternalFunction['mjr_addAux', mjr_addAux]
alias mujoco_mjr_freeContext = ExternalFunction['mjr_freeContext', mjr_freeContext]
alias mujoco_mjr_resizeOffscreen = ExternalFunction['mjr_resizeOffscreen', mjr_resizeOffscreen]
alias mujoco_mjr_uploadTexture = ExternalFunction['mjr_uploadTexture', mjr_uploadTexture]
alias mujoco_mjr_uploadMesh = ExternalFunction['mjr_uploadMesh', mjr_uploadMesh]
alias mujoco_mjr_uploadHField = ExternalFunction['mjr_uploadHField', mjr_uploadHField]
alias mujoco_mjr_restoreBuffer = ExternalFunction['mjr_restoreBuffer', mjr_restoreBuffer]
alias mujoco_mjr_setBuffer = ExternalFunction['mjr_setBuffer', mjr_setBuffer]
alias mujoco_mjr_readPixels = ExternalFunction['mjr_readPixels', mjr_readPixels]
alias mujoco_mjr_drawPixels = ExternalFunction['mjr_drawPixels', mjr_drawPixels]
alias mujoco_mjr_blitBuffer = ExternalFunction['mjr_blitBuffer', mjr_blitBuffer]
alias mujoco_mjr_setAux = ExternalFunction['mjr_setAux', mjr_setAux]
alias mujoco_mjr_blitAux = ExternalFunction['mjr_blitAux', mjr_blitAux]
alias mujoco_mjr_text = ExternalFunction['mjr_text', mjr_text]
alias mujoco_mjr_overlay = ExternalFunction['mjr_overlay', mjr_overlay]
alias mujoco_mjr_maxViewport = ExternalFunction['mjr_maxViewport', mjr_maxViewport]
alias mujoco_mjr_rectangle = ExternalFunction['mjr_rectangle', mjr_rectangle]
alias mujoco_mjr_label = ExternalFunction['mjr_label', mjr_label]
alias mujoco_mjr_figure = ExternalFunction['mjr_figure', mjr_figure]
alias mujoco_mjr_render = ExternalFunction['mjr_render', mjr_render]
alias mujoco_mjr_finish = ExternalFunction['mjr_finish', mjr_finish]
alias mujoco_mjr_getError = ExternalFunction['mjr_getError', mjr_getError]
alias mujoco_mjr_findRect = ExternalFunction['mjr_findRect', mjr_findRect]
alias mujoco_mjui_themeSpacing = ExternalFunction['mjui_themeSpacing', mjui_themeSpacing]
alias mujoco_mjui_themeColor = ExternalFunction['mjui_themeColor', mjui_themeColor]
alias mujoco_mjui_add = ExternalFunction['mjui_add', mjui_add]
alias mujoco_mjui_addToSection = ExternalFunction['mjui_addToSection', mjui_addToSection]
alias mujoco_mjui_resize = ExternalFunction['mjui_resize', mjui_resize]
alias mujoco_mjui_update = ExternalFunction['mjui_update', mjui_update]
alias mujoco_mjui_event = ExternalFunction['mjui_event', mjui_event]
alias mujoco_mjui_render = ExternalFunction['mjui_render', mjui_render]
alias mujoco_mju_error = ExternalFunction['mju_error', mju_error]
alias mujoco_mju_error_i = ExternalFunction['mju_error_i', mju_error_i]
alias mujoco_mju_error_s = ExternalFunction['mju_error_s', mju_error_s]
alias mujoco_mju_warning = ExternalFunction['mju_warning', mju_warning]
alias mujoco_mju_warning_i = ExternalFunction['mju_warning_i', mju_warning_i]
alias mujoco_mju_warning_s = ExternalFunction['mju_warning_s', mju_warning_s]
alias mujoco_mju_clearHandlers = ExternalFunction['mju_clearHandlers', mju_clearHandlers]
alias mujoco_mju_malloc = ExternalFunction['mju_malloc', mju_malloc]
alias mujoco_mju_free = ExternalFunction['mju_free', mju_free]
alias mujoco_mj_warning = ExternalFunction['mj_warning', mj_warning]
alias mujoco_mju_writeLog = ExternalFunction['mju_writeLog', mju_writeLog]
alias mujoco_mjs_getError = ExternalFunction['mjs_getError', mjs_getError]
alias mujoco_mjs_isWarning = ExternalFunction['mjs_isWarning', mjs_isWarning]
alias mujoco_mju_zero3 = ExternalFunction['mju_zero3', mju_zero3]
alias mujoco_mju_copy3 = ExternalFunction['mju_copy3', mju_copy3]
alias mujoco_mju_scl3 = ExternalFunction['mju_scl3', mju_scl3]
alias mujoco_mju_add3 = ExternalFunction['mju_add3', mju_add3]
alias mujoco_mju_sub3 = ExternalFunction['mju_sub3', mju_sub3]
alias mujoco_mju_addTo3 = ExternalFunction['mju_addTo3', mju_addTo3]
alias mujoco_mju_subFrom3 = ExternalFunction['mju_subFrom3', mju_subFrom3]
alias mujoco_mju_addToScl3 = ExternalFunction['mju_addToScl3', mju_addToScl3]
alias mujoco_mju_addScl3 = ExternalFunction['mju_addScl3', mju_addScl3]
alias mujoco_mju_normalize3 = ExternalFunction['mju_normalize3', mju_normalize3]
alias mujoco_mju_norm3 = ExternalFunction['mju_norm3', mju_norm3]
alias mujoco_mju_dot3 = ExternalFunction['mju_dot3', mju_dot3]
alias mujoco_mju_dist3 = ExternalFunction['mju_dist3', mju_dist3]
alias mujoco_mju_mulMatVec3 = ExternalFunction['mju_mulMatVec3', mju_mulMatVec3]
alias mujoco_mju_mulMatTVec3 = ExternalFunction['mju_mulMatTVec3', mju_mulMatTVec3]
alias mujoco_mju_cross = ExternalFunction['mju_cross', mju_cross]
alias mujoco_mju_zero4 = ExternalFunction['mju_zero4', mju_zero4]
alias mujoco_mju_unit4 = ExternalFunction['mju_unit4', mju_unit4]
alias mujoco_mju_copy4 = ExternalFunction['mju_copy4', mju_copy4]
alias mujoco_mju_normalize4 = ExternalFunction['mju_normalize4', mju_normalize4]
alias mujoco_mju_zero = ExternalFunction['mju_zero', mju_zero]
alias mujoco_mju_fill = ExternalFunction['mju_fill', mju_fill]
alias mujoco_mju_copy = ExternalFunction['mju_copy', mju_copy]
alias mujoco_mju_sum = ExternalFunction['mju_sum', mju_sum]
alias mujoco_mju_L1 = ExternalFunction['mju_L1', mju_L1]
alias mujoco_mju_scl = ExternalFunction['mju_scl', mju_scl]
alias mujoco_mju_add = ExternalFunction['mju_add', mju_add]
alias mujoco_mju_sub = ExternalFunction['mju_sub', mju_sub]
alias mujoco_mju_addTo = ExternalFunction['mju_addTo', mju_addTo]
alias mujoco_mju_subFrom = ExternalFunction['mju_subFrom', mju_subFrom]
alias mujoco_mju_addToScl = ExternalFunction['mju_addToScl', mju_addToScl]
alias mujoco_mju_addScl = ExternalFunction['mju_addScl', mju_addScl]
alias mujoco_mju_normalize = ExternalFunction['mju_normalize', mju_normalize]
alias mujoco_mju_norm = ExternalFunction['mju_norm', mju_norm]
alias mujoco_mju_dot = ExternalFunction['mju_dot', mju_dot]
alias mujoco_mju_mulMatVec = ExternalFunction['mju_mulMatVec', mju_mulMatVec]
alias mujoco_mju_mulMatTVec = ExternalFunction['mju_mulMatTVec', mju_mulMatTVec]
alias mujoco_mju_mulVecMatVec = ExternalFunction['mju_mulVecMatVec', mju_mulVecMatVec]
alias mujoco_mju_transpose = ExternalFunction['mju_transpose', mju_transpose]
alias mujoco_mju_symmetrize = ExternalFunction['mju_symmetrize', mju_symmetrize]
alias mujoco_mju_eye = ExternalFunction['mju_eye', mju_eye]
alias mujoco_mju_mulMatMat = ExternalFunction['mju_mulMatMat', mju_mulMatMat]
alias mujoco_mju_mulMatMatT = ExternalFunction['mju_mulMatMatT', mju_mulMatMatT]
alias mujoco_mju_mulMatTMat = ExternalFunction['mju_mulMatTMat', mju_mulMatTMat]
alias mujoco_mju_sqrMatTD = ExternalFunction['mju_sqrMatTD', mju_sqrMatTD]
alias mujoco_mju_transformSpatial = ExternalFunction['mju_transformSpatial', mju_transformSpatial]
alias mujoco_mju_dense2sparse = ExternalFunction['mju_dense2sparse', mju_dense2sparse]
alias mujoco_mju_sparse2dense = ExternalFunction['mju_sparse2dense', mju_sparse2dense]
alias mujoco_mju_rotVecQuat = ExternalFunction['mju_rotVecQuat', mju_rotVecQuat]
alias mujoco_mju_negQuat = ExternalFunction['mju_negQuat', mju_negQuat]
alias mujoco_mju_mulQuat = ExternalFunction['mju_mulQuat', mju_mulQuat]
alias mujoco_mju_mulQuatAxis = ExternalFunction['mju_mulQuatAxis', mju_mulQuatAxis]
alias mujoco_mju_axisAngle2Quat = ExternalFunction['mju_axisAngle2Quat', mju_axisAngle2Quat]
alias mujoco_mju_quat2Vel = ExternalFunction['mju_quat2Vel', mju_quat2Vel]
alias mujoco_mju_subQuat = ExternalFunction['mju_subQuat', mju_subQuat]
alias mujoco_mju_quat2Mat = ExternalFunction['mju_quat2Mat', mju_quat2Mat]
alias mujoco_mju_mat2Quat = ExternalFunction['mju_mat2Quat', mju_mat2Quat]
alias mujoco_mju_derivQuat = ExternalFunction['mju_derivQuat', mju_derivQuat]
alias mujoco_mju_quatIntegrate = ExternalFunction['mju_quatIntegrate', mju_quatIntegrate]
alias mujoco_mju_quatZ2Vec = ExternalFunction['mju_quatZ2Vec', mju_quatZ2Vec]
alias mujoco_mju_mat2Rot = ExternalFunction['mju_mat2Rot', mju_mat2Rot]
alias mujoco_mju_euler2Quat = ExternalFunction['mju_euler2Quat', mju_euler2Quat]
alias mujoco_mju_mulPose = ExternalFunction['mju_mulPose', mju_mulPose]
alias mujoco_mju_negPose = ExternalFunction['mju_negPose', mju_negPose]
alias mujoco_mju_trnVecPose = ExternalFunction['mju_trnVecPose', mju_trnVecPose]
alias mujoco_mju_cholFactor = ExternalFunction['mju_cholFactor', mju_cholFactor]
alias mujoco_mju_cholSolve = ExternalFunction['mju_cholSolve', mju_cholSolve]
alias mujoco_mju_cholUpdate = ExternalFunction['mju_cholUpdate', mju_cholUpdate]
alias mujoco_mju_cholFactorBand = ExternalFunction['mju_cholFactorBand', mju_cholFactorBand]
alias mujoco_mju_cholSolveBand = ExternalFunction['mju_cholSolveBand', mju_cholSolveBand]
alias mujoco_mju_band2Dense = ExternalFunction['mju_band2Dense', mju_band2Dense]
alias mujoco_mju_dense2Band = ExternalFunction['mju_dense2Band', mju_dense2Band]
alias mujoco_mju_bandMulMatVec = ExternalFunction['mju_bandMulMatVec', mju_bandMulMatVec]
alias mujoco_mju_bandDiag = ExternalFunction['mju_bandDiag', mju_bandDiag]
alias mujoco_mju_eig3 = ExternalFunction['mju_eig3', mju_eig3]
alias mujoco_mju_boxQP = ExternalFunction['mju_boxQP', mju_boxQP]
alias mujoco_mju_boxQPmalloc = ExternalFunction['mju_boxQPmalloc', mju_boxQPmalloc]
alias mujoco_mju_muscleGain = ExternalFunction['mju_muscleGain', mju_muscleGain]
alias mujoco_mju_muscleBias = ExternalFunction['mju_muscleBias', mju_muscleBias]
alias mujoco_mju_muscleDynamics = ExternalFunction['mju_muscleDynamics', mju_muscleDynamics]
alias mujoco_mju_encodePyramid = ExternalFunction['mju_encodePyramid', mju_encodePyramid]
alias mujoco_mju_decodePyramid = ExternalFunction['mju_decodePyramid', mju_decodePyramid]
alias mujoco_mju_springDamper = ExternalFunction['mju_springDamper', mju_springDamper]
alias mujoco_mju_min = ExternalFunction['mju_min', mju_min]
alias mujoco_mju_max = ExternalFunction['mju_max', mju_max]
alias mujoco_mju_clip = ExternalFunction['mju_clip', mju_clip]
alias mujoco_mju_sign = ExternalFunction['mju_sign', mju_sign]
alias mujoco_mju_round = ExternalFunction['mju_round', mju_round]
alias mujoco_mju_type2Str = ExternalFunction['mju_type2Str', mju_type2Str]
alias mujoco_mju_str2Type = ExternalFunction['mju_str2Type', mju_str2Type]
alias mujoco_mju_writeNumBytes = ExternalFunction['mju_writeNumBytes', mju_writeNumBytes]
alias mujoco_mju_warningText = ExternalFunction['mju_warningText', mju_warningText]
alias mujoco_mju_isBad = ExternalFunction['mju_isBad', mju_isBad]
alias mujoco_mju_isZero = ExternalFunction['mju_isZero', mju_isZero]
alias mujoco_mju_standardNormal = ExternalFunction['mju_standardNormal', mju_standardNormal]
alias mujoco_mju_f2n = ExternalFunction['mju_f2n', mju_f2n]
alias mujoco_mju_n2f = ExternalFunction['mju_n2f', mju_n2f]
alias mujoco_mju_d2n = ExternalFunction['mju_d2n', mju_d2n]
alias mujoco_mju_n2d = ExternalFunction['mju_n2d', mju_n2d]
alias mujoco_mju_insertionSort = ExternalFunction['mju_insertionSort', mju_insertionSort]
alias mujoco_mju_insertionSortInt = ExternalFunction['mju_insertionSortInt', mju_insertionSortInt]
alias mujoco_mju_Halton = ExternalFunction['mju_Halton', mju_Halton]
alias mujoco_mju_strncpy = ExternalFunction['mju_strncpy', mju_strncpy]
alias mujoco_mju_sigmoid = ExternalFunction['mju_sigmoid', mju_sigmoid]
alias mujoco_mjc_getSDF = ExternalFunction['mjc_getSDF', mjc_getSDF]
alias mujoco_mjc_distance = ExternalFunction['mjc_distance', mjc_distance]
alias mujoco_mjc_gradient = ExternalFunction['mjc_gradient', mjc_gradient]
alias mujoco_mjd_transitionFD = ExternalFunction['mjd_transitionFD', mjd_transitionFD]
alias mujoco_mjd_inverseFD = ExternalFunction['mjd_inverseFD', mjd_inverseFD]
alias mujoco_mjd_subQuat = ExternalFunction['mjd_subQuat', mjd_subQuat]
alias mujoco_mjd_quatIntegrate = ExternalFunction['mjd_quatIntegrate', mjd_quatIntegrate]
alias mujoco_mjp_defaultPlugin = ExternalFunction['mjp_defaultPlugin', mjp_defaultPlugin]
alias mujoco_mjp_registerPlugin = ExternalFunction['mjp_registerPlugin', mjp_registerPlugin]
alias mujoco_mjp_pluginCount = ExternalFunction['mjp_pluginCount', mjp_pluginCount]
alias mujoco_mjp_getPlugin = ExternalFunction['mjp_getPlugin', mjp_getPlugin]
alias mujoco_mjp_getPluginAtSlot = ExternalFunction['mjp_getPluginAtSlot', mjp_getPluginAtSlot]
alias mujoco_mjp_defaultResourceProvider = ExternalFunction['mjp_defaultResourceProvider', mjp_defaultResourceProvider]
alias mujoco_mjp_registerResourceProvider = ExternalFunction['mjp_registerResourceProvider', mjp_registerResourceProvider]
alias mujoco_mjp_resourceProviderCount = ExternalFunction['mjp_resourceProviderCount', mjp_resourceProviderCount]
alias mujoco_mjp_getResourceProvider = ExternalFunction['mjp_getResourceProvider', mjp_getResourceProvider]
alias mujoco_mjp_getResourceProviderAtSlot = ExternalFunction['mjp_getResourceProviderAtSlot', mjp_getResourceProviderAtSlot]
alias mujoco_mju_threadPoolCreate = ExternalFunction['mju_threadPoolCreate', mju_threadPoolCreate]
alias mujoco_mju_bindThreadPool = ExternalFunction['mju_bindThreadPool', mju_bindThreadPool]
alias mujoco_mju_threadPoolEnqueue = ExternalFunction['mju_threadPoolEnqueue', mju_threadPoolEnqueue]
alias mujoco_mju_threadPoolDestroy = ExternalFunction['mju_threadPoolDestroy', mju_threadPoolDestroy]
alias mujoco_mju_defaultTask = ExternalFunction['mju_defaultTask', mju_defaultTask]
alias mujoco_mju_taskJoin = ExternalFunction['mju_taskJoin', mju_taskJoin]
alias mujoco_mjs_attach = ExternalFunction['mjs_attach', mjs_attach]
alias mujoco_mjs_addBody = ExternalFunction['mjs_addBody', mjs_addBody]
alias mujoco_mjs_addSite = ExternalFunction['mjs_addSite', mjs_addSite]
alias mujoco_mjs_addJoint = ExternalFunction['mjs_addJoint', mjs_addJoint]
alias mujoco_mjs_addFreeJoint = ExternalFunction['mjs_addFreeJoint', mjs_addFreeJoint]
alias mujoco_mjs_addGeom = ExternalFunction['mjs_addGeom', mjs_addGeom]
alias mujoco_mjs_addCamera = ExternalFunction['mjs_addCamera', mjs_addCamera]
alias mujoco_mjs_addLight = ExternalFunction['mjs_addLight', mjs_addLight]
alias mujoco_mjs_addFrame = ExternalFunction['mjs_addFrame', mjs_addFrame]
alias mujoco_mjs_delete = ExternalFunction['mjs_delete', mjs_delete]
alias mujoco_mjs_addActuator = ExternalFunction['mjs_addActuator', mjs_addActuator]
alias mujoco_mjs_addSensor = ExternalFunction['mjs_addSensor', mjs_addSensor]
alias mujoco_mjs_addFlex = ExternalFunction['mjs_addFlex', mjs_addFlex]
alias mujoco_mjs_addPair = ExternalFunction['mjs_addPair', mjs_addPair]
alias mujoco_mjs_addExclude = ExternalFunction['mjs_addExclude', mjs_addExclude]
alias mujoco_mjs_addEquality = ExternalFunction['mjs_addEquality', mjs_addEquality]
alias mujoco_mjs_addTendon = ExternalFunction['mjs_addTendon', mjs_addTendon]
alias mujoco_mjs_wrapSite = ExternalFunction['mjs_wrapSite', mjs_wrapSite]
alias mujoco_mjs_wrapGeom = ExternalFunction['mjs_wrapGeom', mjs_wrapGeom]
alias mujoco_mjs_wrapJoint = ExternalFunction['mjs_wrapJoint', mjs_wrapJoint]
alias mujoco_mjs_wrapPulley = ExternalFunction['mjs_wrapPulley', mjs_wrapPulley]
alias mujoco_mjs_addNumeric = ExternalFunction['mjs_addNumeric', mjs_addNumeric]
alias mujoco_mjs_addText = ExternalFunction['mjs_addText', mjs_addText]
alias mujoco_mjs_addTuple = ExternalFunction['mjs_addTuple', mjs_addTuple]
alias mujoco_mjs_addKey = ExternalFunction['mjs_addKey', mjs_addKey]
alias mujoco_mjs_addPlugin = ExternalFunction['mjs_addPlugin', mjs_addPlugin]
alias mujoco_mjs_addDefault = ExternalFunction['mjs_addDefault', mjs_addDefault]
alias mujoco_mjs_setToMotor = ExternalFunction['mjs_setToMotor', mjs_setToMotor]
alias mujoco_mjs_setToPosition = ExternalFunction['mjs_setToPosition', mjs_setToPosition]
alias mujoco_mjs_setToIntVelocity = ExternalFunction['mjs_setToIntVelocity', mjs_setToIntVelocity]
alias mujoco_mjs_setToVelocity = ExternalFunction['mjs_setToVelocity', mjs_setToVelocity]
alias mujoco_mjs_setToDamper = ExternalFunction['mjs_setToDamper', mjs_setToDamper]
alias mujoco_mjs_setToCylinder = ExternalFunction['mjs_setToCylinder', mjs_setToCylinder]
alias mujoco_mjs_setToMuscle = ExternalFunction['mjs_setToMuscle', mjs_setToMuscle]
alias mujoco_mjs_setToAdhesion = ExternalFunction['mjs_setToAdhesion', mjs_setToAdhesion]
alias mujoco_mjs_addMesh = ExternalFunction['mjs_addMesh', mjs_addMesh]
alias mujoco_mjs_addHField = ExternalFunction['mjs_addHField', mjs_addHField]
alias mujoco_mjs_addSkin = ExternalFunction['mjs_addSkin', mjs_addSkin]
alias mujoco_mjs_addTexture = ExternalFunction['mjs_addTexture', mjs_addTexture]
alias mujoco_mjs_addMaterial = ExternalFunction['mjs_addMaterial', mjs_addMaterial]
alias mujoco_mjs_makeMesh = ExternalFunction['mjs_makeMesh', mjs_makeMesh]
alias mujoco_mjs_getSpec = ExternalFunction['mjs_getSpec', mjs_getSpec]
alias mujoco_mjs_findSpec = ExternalFunction['mjs_findSpec', mjs_findSpec]
alias mujoco_mjs_findBody = ExternalFunction['mjs_findBody', mjs_findBody]
alias mujoco_mjs_findElement = ExternalFunction['mjs_findElement', mjs_findElement]
alias mujoco_mjs_findChild = ExternalFunction['mjs_findChild', mjs_findChild]
alias mujoco_mjs_getParent = ExternalFunction['mjs_getParent', mjs_getParent]
alias mujoco_mjs_getFrame = ExternalFunction['mjs_getFrame', mjs_getFrame]
alias mujoco_mjs_findFrame = ExternalFunction['mjs_findFrame', mjs_findFrame]
alias mujoco_mjs_getDefault = ExternalFunction['mjs_getDefault', mjs_getDefault]
alias mujoco_mjs_findDefault = ExternalFunction['mjs_findDefault', mjs_findDefault]
alias mujoco_mjs_getSpecDefault = ExternalFunction['mjs_getSpecDefault', mjs_getSpecDefault]
alias mujoco_mjs_getId = ExternalFunction['mjs_getId', mjs_getId]
alias mujoco_mjs_firstChild = ExternalFunction['mjs_firstChild', mjs_firstChild]
alias mujoco_mjs_nextChild = ExternalFunction['mjs_nextChild', mjs_nextChild]
alias mujoco_mjs_firstElement = ExternalFunction['mjs_firstElement', mjs_firstElement]
alias mujoco_mjs_nextElement = ExternalFunction['mjs_nextElement', mjs_nextElement]
alias mujoco_mjs_setName = ExternalFunction['mjs_setName', mjs_setName]
alias mujoco_mjs_setBuffer = ExternalFunction['mjs_setBuffer', mjs_setBuffer]
alias mujoco_mjs_setString = ExternalFunction['mjs_setString', mjs_setString]
alias mujoco_mjs_setStringVec = ExternalFunction['mjs_setStringVec', mjs_setStringVec]
alias mujoco_mjs_setInStringVec = ExternalFunction['mjs_setInStringVec', mjs_setInStringVec]
alias mujoco_mjs_appendString = ExternalFunction['mjs_appendString', mjs_appendString]
alias mujoco_mjs_setInt = ExternalFunction['mjs_setInt', mjs_setInt]
alias mujoco_mjs_appendIntVec = ExternalFunction['mjs_appendIntVec', mjs_appendIntVec]
alias mujoco_mjs_setFloat = ExternalFunction['mjs_setFloat', mjs_setFloat]
alias mujoco_mjs_appendFloatVec = ExternalFunction['mjs_appendFloatVec', mjs_appendFloatVec]
alias mujoco_mjs_setDouble = ExternalFunction['mjs_setDouble', mjs_setDouble]
alias mujoco_mjs_setPluginAttributes = ExternalFunction['mjs_setPluginAttributes', mjs_setPluginAttributes]
alias mujoco_mjs_getName = ExternalFunction['mjs_getName', mjs_getName]
alias mujoco_mjs_getString = ExternalFunction['mjs_getString', mjs_getString]
alias mujoco_mjs_getDouble = ExternalFunction['mjs_getDouble', mjs_getDouble]
alias mujoco_mjs_getPluginAttributes = ExternalFunction['mjs_getPluginAttributes', mjs_getPluginAttributes]
alias mujoco_mjs_setDefault = ExternalFunction['mjs_setDefault', mjs_setDefault]
alias mujoco_mjs_setFrame = ExternalFunction['mjs_setFrame', mjs_setFrame]
alias mujoco_mjs_resolveOrientation = ExternalFunction['mjs_resolveOrientation', mjs_resolveOrientation]
alias mujoco_mjs_bodyToFrame = ExternalFunction['mjs_bodyToFrame', mjs_bodyToFrame]
alias mujoco_mjs_setUserValue = ExternalFunction['mjs_setUserValue', mjs_setUserValue]
alias mujoco_mjs_setUserValueWithCleanup = ExternalFunction['mjs_setUserValueWithCleanup', mjs_setUserValueWithCleanup]
alias mujoco_mjs_getUserValue = ExternalFunction['mjs_getUserValue', mjs_getUserValue]
alias mujoco_mjs_deleteUserValue = ExternalFunction['mjs_deleteUserValue', mjs_deleteUserValue]
alias mujoco_mjs_sensorDim = ExternalFunction['mjs_sensorDim', mjs_sensorDim]
alias mujoco_mjs_defaultSpec = ExternalFunction['mjs_defaultSpec', mjs_defaultSpec]
alias mujoco_mjs_defaultOrientation = ExternalFunction['mjs_defaultOrientation', mjs_defaultOrientation]
alias mujoco_mjs_defaultBody = ExternalFunction['mjs_defaultBody', mjs_defaultBody]
alias mujoco_mjs_defaultFrame = ExternalFunction['mjs_defaultFrame', mjs_defaultFrame]
alias mujoco_mjs_defaultJoint = ExternalFunction['mjs_defaultJoint', mjs_defaultJoint]
alias mujoco_mjs_defaultGeom = ExternalFunction['mjs_defaultGeom', mjs_defaultGeom]
alias mujoco_mjs_defaultSite = ExternalFunction['mjs_defaultSite', mjs_defaultSite]
alias mujoco_mjs_defaultCamera = ExternalFunction['mjs_defaultCamera', mjs_defaultCamera]
alias mujoco_mjs_defaultLight = ExternalFunction['mjs_defaultLight', mjs_defaultLight]
alias mujoco_mjs_defaultFlex = ExternalFunction['mjs_defaultFlex', mjs_defaultFlex]
alias mujoco_mjs_defaultMesh = ExternalFunction['mjs_defaultMesh', mjs_defaultMesh]
alias mujoco_mjs_defaultHField = ExternalFunction['mjs_defaultHField', mjs_defaultHField]
alias mujoco_mjs_defaultSkin = ExternalFunction['mjs_defaultSkin', mjs_defaultSkin]
alias mujoco_mjs_defaultTexture = ExternalFunction['mjs_defaultTexture', mjs_defaultTexture]
alias mujoco_mjs_defaultMaterial = ExternalFunction['mjs_defaultMaterial', mjs_defaultMaterial]
alias mujoco_mjs_defaultPair = ExternalFunction['mjs_defaultPair', mjs_defaultPair]
alias mujoco_mjs_defaultEquality = ExternalFunction['mjs_defaultEquality', mjs_defaultEquality]
alias mujoco_mjs_defaultTendon = ExternalFunction['mjs_defaultTendon', mjs_defaultTendon]
alias mujoco_mjs_defaultActuator = ExternalFunction['mjs_defaultActuator', mjs_defaultActuator]
alias mujoco_mjs_defaultSensor = ExternalFunction['mjs_defaultSensor', mjs_defaultSensor]
alias mujoco_mjs_defaultNumeric = ExternalFunction['mjs_defaultNumeric', mjs_defaultNumeric]
alias mujoco_mjs_defaultText = ExternalFunction['mjs_defaultText', mjs_defaultText]
alias mujoco_mjs_defaultTuple = ExternalFunction['mjs_defaultTuple', mjs_defaultTuple]
alias mujoco_mjs_defaultKey = ExternalFunction['mjs_defaultKey', mjs_defaultKey]
alias mujoco_mjs_defaultPlugin = ExternalFunction['mjs_defaultPlugin', mjs_defaultPlugin]
alias mujoco_mjs_asBody = ExternalFunction['mjs_asBody', mjs_asBody]
alias mujoco_mjs_asGeom = ExternalFunction['mjs_asGeom', mjs_asGeom]
alias mujoco_mjs_asJoint = ExternalFunction['mjs_asJoint', mjs_asJoint]
alias mujoco_mjs_asSite = ExternalFunction['mjs_asSite', mjs_asSite]
alias mujoco_mjs_asCamera = ExternalFunction['mjs_asCamera', mjs_asCamera]
alias mujoco_mjs_asLight = ExternalFunction['mjs_asLight', mjs_asLight]
alias mujoco_mjs_asFrame = ExternalFunction['mjs_asFrame', mjs_asFrame]
alias mujoco_mjs_asActuator = ExternalFunction['mjs_asActuator', mjs_asActuator]
alias mujoco_mjs_asSensor = ExternalFunction['mjs_asSensor', mjs_asSensor]
alias mujoco_mjs_asFlex = ExternalFunction['mjs_asFlex', mjs_asFlex]
alias mujoco_mjs_asPair = ExternalFunction['mjs_asPair', mjs_asPair]
alias mujoco_mjs_asEquality = ExternalFunction['mjs_asEquality', mjs_asEquality]
alias mujoco_mjs_asExclude = ExternalFunction['mjs_asExclude', mjs_asExclude]
alias mujoco_mjs_asTendon = ExternalFunction['mjs_asTendon', mjs_asTendon]
alias mujoco_mjs_asNumeric = ExternalFunction['mjs_asNumeric', mjs_asNumeric]
alias mujoco_mjs_asText = ExternalFunction['mjs_asText', mjs_asText]
alias mujoco_mjs_asTuple = ExternalFunction['mjs_asTuple', mjs_asTuple]
alias mujoco_mjs_asKey = ExternalFunction['mjs_asKey', mjs_asKey]
alias mujoco_mjs_asMesh = ExternalFunction['mjs_asMesh', mjs_asMesh]
alias mujoco_mjs_asHField = ExternalFunction['mjs_asHField', mjs_asHField]
alias mujoco_mjs_asSkin = ExternalFunction['mjs_asSkin', mjs_asSkin]
alias mujoco_mjs_asTexture = ExternalFunction['mjs_asTexture', mjs_asTexture]
alias mujoco_mjs_asMaterial = ExternalFunction['mjs_asMaterial', mjs_asMaterial]
alias mujoco_mjs_asPlugin = ExternalFunction['mjs_asPlugin', mjs_asPlugin]

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
struct mujoco(Copyable, Movable):
    """Handle to the CPython interpreter present in the current process."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var lib: DLHandle
    
    var mj_defaultVFS: mujoco_mj_defaultVFS.type
    var mj_addFileVFS: mujoco_mj_addFileVFS.type
    var mj_addBufferVFS: mujoco_mj_addBufferVFS.type
    var mj_deleteFileVFS: mujoco_mj_deleteFileVFS.type
    var mj_deleteVFS: mujoco_mj_deleteVFS.type
    var mj_loadXML: mujoco_mj_loadXML.type
    var mj_parseXML: mujoco_mj_parseXML.type
    var mj_parseXMLString: mujoco_mj_parseXMLString.type
    var mj_compile: mujoco_mj_compile.type
    var mj_copyBack: mujoco_mj_copyBack.type
    var mj_recompile: mujoco_mj_recompile.type
    var mj_saveLastXML: mujoco_mj_saveLastXML.type
    var mj_freeLastXML: mujoco_mj_freeLastXML.type
    var mj_saveXMLString: mujoco_mj_saveXMLString.type
    var mj_saveXML: mujoco_mj_saveXML.type
    var mj_step: mujoco_mj_step.type
    var mj_step1: mujoco_mj_step1.type
    var mj_step2: mujoco_mj_step2.type
    var mj_forward: mujoco_mj_forward.type
    var mj_inverse: mujoco_mj_inverse.type
    var mj_forwardSkip: mujoco_mj_forwardSkip.type
    var mj_inverseSkip: mujoco_mj_inverseSkip.type
    var mj_defaultLROpt: mujoco_mj_defaultLROpt.type
    var mj_defaultSolRefImp: mujoco_mj_defaultSolRefImp.type
    var mj_defaultOption: mujoco_mj_defaultOption.type
    var mj_defaultVisual: mujoco_mj_defaultVisual.type
    var mj_copyModel: mujoco_mj_copyModel.type
    var mj_saveModel: mujoco_mj_saveModel.type
    var mj_loadModel: mujoco_mj_loadModel.type
    var mj_deleteModel: mujoco_mj_deleteModel.type
    var mj_sizeModel: mujoco_mj_sizeModel.type
    var mj_makeData: mujoco_mj_makeData.type
    var mj_copyData: mujoco_mj_copyData.type
    var mjv_copyData: mujoco_mjv_copyData.type
    var mj_resetData: mujoco_mj_resetData.type
    var mj_resetDataDebug: mujoco_mj_resetDataDebug.type
    var mj_resetDataKeyframe: mujoco_mj_resetDataKeyframe.type
    var mj_markStack: mujoco_mj_markStack.type
    var mj_freeStack: mujoco_mj_freeStack.type
    var mj_stackAllocByte: mujoco_mj_stackAllocByte.type
    var mj_stackAllocNum: mujoco_mj_stackAllocNum.type
    var mj_stackAllocInt: mujoco_mj_stackAllocInt.type
    var mj_deleteData: mujoco_mj_deleteData.type
    var mj_resetCallbacks: mujoco_mj_resetCallbacks.type
    var mj_setConst: mujoco_mj_setConst.type
    var mj_setLengthRange: mujoco_mj_setLengthRange.type
    var mj_makeSpec: mujoco_mj_makeSpec.type
    var mj_copySpec: mujoco_mj_copySpec.type
    var mj_deleteSpec: mujoco_mj_deleteSpec.type
    var mjs_activatePlugin: mujoco_mjs_activatePlugin.type
    var mjs_setDeepCopy: mujoco_mjs_setDeepCopy.type
    var mj_printFormattedModel: mujoco_mj_printFormattedModel.type
    var mj_printModel: mujoco_mj_printModel.type
    var mj_printFormattedData: mujoco_mj_printFormattedData.type
    var mj_printData: mujoco_mj_printData.type
    var mju_printMat: mujoco_mju_printMat.type
    var mju_printMatSparse: mujoco_mju_printMatSparse.type
    var mj_printSchema: mujoco_mj_printSchema.type
    var mj_fwdPosition: mujoco_mj_fwdPosition.type
    var mj_fwdVelocity: mujoco_mj_fwdVelocity.type
    var mj_fwdActuation: mujoco_mj_fwdActuation.type
    var mj_fwdAcceleration: mujoco_mj_fwdAcceleration.type
    var mj_fwdConstraint: mujoco_mj_fwdConstraint.type
    var mj_Euler: mujoco_mj_Euler.type
    var mj_RungeKutta: mujoco_mj_RungeKutta.type
    var mj_implicit: mujoco_mj_implicit.type
    var mj_invPosition: mujoco_mj_invPosition.type
    var mj_invVelocity: mujoco_mj_invVelocity.type
    var mj_invConstraint: mujoco_mj_invConstraint.type
    var mj_compareFwdInv: mujoco_mj_compareFwdInv.type
    var mj_sensorPos: mujoco_mj_sensorPos.type
    var mj_sensorVel: mujoco_mj_sensorVel.type
    var mj_sensorAcc: mujoco_mj_sensorAcc.type
    var mj_energyPos: mujoco_mj_energyPos.type
    var mj_energyVel: mujoco_mj_energyVel.type
    var mj_checkPos: mujoco_mj_checkPos.type
    var mj_checkVel: mujoco_mj_checkVel.type
    var mj_checkAcc: mujoco_mj_checkAcc.type
    var mj_kinematics: mujoco_mj_kinematics.type
    var mj_comPos: mujoco_mj_comPos.type
    var mj_camlight: mujoco_mj_camlight.type
    var mj_flex: mujoco_mj_flex.type
    var mj_tendon: mujoco_mj_tendon.type
    var mj_transmission: mujoco_mj_transmission.type
    var mj_crb: mujoco_mj_crb.type
    var mj_makeM: mujoco_mj_makeM.type
    var mj_factorM: mujoco_mj_factorM.type
    var mj_solveM: mujoco_mj_solveM.type
    var mj_solveM2: mujoco_mj_solveM2.type
    var mj_comVel: mujoco_mj_comVel.type
    var mj_passive: mujoco_mj_passive.type
    var mj_subtreeVel: mujoco_mj_subtreeVel.type
    var mj_rne: mujoco_mj_rne.type
    var mj_rnePostConstraint: mujoco_mj_rnePostConstraint.type
    var mj_collision: mujoco_mj_collision.type
    var mj_makeConstraint: mujoco_mj_makeConstraint.type
    var mj_island: mujoco_mj_island.type
    var mj_projectConstraint: mujoco_mj_projectConstraint.type
    var mj_referenceConstraint: mujoco_mj_referenceConstraint.type
    var mj_constraintUpdate: mujoco_mj_constraintUpdate.type
    var mj_stateSize: mujoco_mj_stateSize.type
    var mj_getState: mujoco_mj_getState.type
    var mj_setState: mujoco_mj_setState.type
    var mj_setKeyframe: mujoco_mj_setKeyframe.type
    var mj_addContact: mujoco_mj_addContact.type
    var mj_isPyramidal: mujoco_mj_isPyramidal.type
    var mj_isSparse: mujoco_mj_isSparse.type
    var mj_isDual: mujoco_mj_isDual.type
    var mj_mulJacVec: mujoco_mj_mulJacVec.type
    var mj_mulJacTVec: mujoco_mj_mulJacTVec.type
    var mj_jac: mujoco_mj_jac.type
    var mj_jacBody: mujoco_mj_jacBody.type
    var mj_jacBodyCom: mujoco_mj_jacBodyCom.type
    var mj_jacSubtreeCom: mujoco_mj_jacSubtreeCom.type
    var mj_jacGeom: mujoco_mj_jacGeom.type
    var mj_jacSite: mujoco_mj_jacSite.type
    var mj_jacPointAxis: mujoco_mj_jacPointAxis.type
    var mj_jacDot: mujoco_mj_jacDot.type
    var mj_angmomMat: mujoco_mj_angmomMat.type
    var mj_name2id: mujoco_mj_name2id.type
    var mj_id2name: mujoco_mj_id2name.type
    var mj_fullM: mujoco_mj_fullM.type
    var mj_mulM: mujoco_mj_mulM.type
    var mj_mulM2: mujoco_mj_mulM2.type
    var mj_addM: mujoco_mj_addM.type
    var mj_applyFT: mujoco_mj_applyFT.type
    var mj_objectVelocity: mujoco_mj_objectVelocity.type
    var mj_objectAcceleration: mujoco_mj_objectAcceleration.type
    var mj_geomDistance: mujoco_mj_geomDistance.type
    var mj_contactForce: mujoco_mj_contactForce.type
    var mj_differentiatePos: mujoco_mj_differentiatePos.type
    var mj_integratePos: mujoco_mj_integratePos.type
    var mj_normalizeQuat: mujoco_mj_normalizeQuat.type
    var mj_local2Global: mujoco_mj_local2Global.type
    var mj_getTotalmass: mujoco_mj_getTotalmass.type
    var mj_setTotalmass: mujoco_mj_setTotalmass.type
    var mj_getPluginConfig: mujoco_mj_getPluginConfig.type
    var mj_loadPluginLibrary: mujoco_mj_loadPluginLibrary.type
    var mj_loadAllPluginLibraries: mujoco_mj_loadAllPluginLibraries.type
    var mj_version: mujoco_mj_version.type
    var mj_versionString: mujoco_mj_versionString.type
    var mj_multiRay: mujoco_mj_multiRay.type
    var mj_ray: mujoco_mj_ray.type
    var mj_rayHfield: mujoco_mj_rayHfield.type
    var mj_rayMesh: mujoco_mj_rayMesh.type
    var mju_rayGeom: mujoco_mju_rayGeom.type
    var mju_rayFlex: mujoco_mju_rayFlex.type
    var mju_raySkin: mujoco_mju_raySkin.type
    var mjv_defaultCamera: mujoco_mjv_defaultCamera.type
    var mjv_defaultFreeCamera: mujoco_mjv_defaultFreeCamera.type
    var mjv_defaultPerturb: mujoco_mjv_defaultPerturb.type
    var mjv_room2model: mujoco_mjv_room2model.type
    var mjv_model2room: mujoco_mjv_model2room.type
    var mjv_cameraInModel: mujoco_mjv_cameraInModel.type
    var mjv_cameraInRoom: mujoco_mjv_cameraInRoom.type
    var mjv_frustumHeight: mujoco_mjv_frustumHeight.type
    var mjv_alignToCamera: mujoco_mjv_alignToCamera.type
    var mjv_moveCamera: mujoco_mjv_moveCamera.type
    var mjv_movePerturb: mujoco_mjv_movePerturb.type
    var mjv_moveModel: mujoco_mjv_moveModel.type
    var mjv_initPerturb: mujoco_mjv_initPerturb.type
    var mjv_applyPerturbPose: mujoco_mjv_applyPerturbPose.type
    var mjv_applyPerturbForce: mujoco_mjv_applyPerturbForce.type
    var mjv_averageCamera: mujoco_mjv_averageCamera.type
    var mjv_select: mujoco_mjv_select.type
    var mjv_defaultOption: mujoco_mjv_defaultOption.type
    var mjv_defaultFigure: mujoco_mjv_defaultFigure.type
    var mjv_initGeom: mujoco_mjv_initGeom.type
    var mjv_connector: mujoco_mjv_connector.type
    var mjv_defaultScene: mujoco_mjv_defaultScene.type
    var mjv_makeScene: mujoco_mjv_makeScene.type
    var mjv_freeScene: mujoco_mjv_freeScene.type
    var mjv_updateScene: mujoco_mjv_updateScene.type
    var mjv_copyModel: mujoco_mjv_copyModel.type
    var mjv_addGeoms: mujoco_mjv_addGeoms.type
    var mjv_makeLights: mujoco_mjv_makeLights.type
    var mjv_updateCamera: mujoco_mjv_updateCamera.type
    var mjv_updateSkin: mujoco_mjv_updateSkin.type
    var mjr_defaultContext: mujoco_mjr_defaultContext.type
    var mjr_makeContext: mujoco_mjr_makeContext.type
    var mjr_changeFont: mujoco_mjr_changeFont.type
    var mjr_addAux: mujoco_mjr_addAux.type
    var mjr_freeContext: mujoco_mjr_freeContext.type
    var mjr_resizeOffscreen: mujoco_mjr_resizeOffscreen.type
    var mjr_uploadTexture: mujoco_mjr_uploadTexture.type
    var mjr_uploadMesh: mujoco_mjr_uploadMesh.type
    var mjr_uploadHField: mujoco_mjr_uploadHField.type
    var mjr_restoreBuffer: mujoco_mjr_restoreBuffer.type
    var mjr_setBuffer: mujoco_mjr_setBuffer.type
    var mjr_readPixels: mujoco_mjr_readPixels.type
    var mjr_drawPixels: mujoco_mjr_drawPixels.type
    var mjr_blitBuffer: mujoco_mjr_blitBuffer.type
    var mjr_setAux: mujoco_mjr_setAux.type
    var mjr_blitAux: mujoco_mjr_blitAux.type
    var mjr_text: mujoco_mjr_text.type
    var mjr_overlay: mujoco_mjr_overlay.type
    var mjr_maxViewport: mujoco_mjr_maxViewport.type
    var mjr_rectangle: mujoco_mjr_rectangle.type
    var mjr_label: mujoco_mjr_label.type
    var mjr_figure: mujoco_mjr_figure.type
    var mjr_render: mujoco_mjr_render.type
    var mjr_finish: mujoco_mjr_finish.type
    var mjr_getError: mujoco_mjr_getError.type
    var mjr_findRect: mujoco_mjr_findRect.type
    var mjui_themeSpacing: mujoco_mjui_themeSpacing.type
    var mjui_themeColor: mujoco_mjui_themeColor.type
    var mjui_add: mujoco_mjui_add.type
    var mjui_addToSection: mujoco_mjui_addToSection.type
    var mjui_resize: mujoco_mjui_resize.type
    var mjui_update: mujoco_mjui_update.type
    var mjui_event: mujoco_mjui_event.type
    var mjui_render: mujoco_mjui_render.type
    var mju_error: mujoco_mju_error.type
    var mju_error_i: mujoco_mju_error_i.type
    var mju_error_s: mujoco_mju_error_s.type
    var mju_warning: mujoco_mju_warning.type
    var mju_warning_i: mujoco_mju_warning_i.type
    var mju_warning_s: mujoco_mju_warning_s.type
    var mju_clearHandlers: mujoco_mju_clearHandlers.type
    var mju_malloc: mujoco_mju_malloc.type
    var mju_free: mujoco_mju_free.type
    var mj_warning: mujoco_mj_warning.type
    var mju_writeLog: mujoco_mju_writeLog.type
    var mjs_getError: mujoco_mjs_getError.type
    var mjs_isWarning: mujoco_mjs_isWarning.type
    var mju_zero3: mujoco_mju_zero3.type
    var mju_copy3: mujoco_mju_copy3.type
    var mju_scl3: mujoco_mju_scl3.type
    var mju_add3: mujoco_mju_add3.type
    var mju_sub3: mujoco_mju_sub3.type
    var mju_addTo3: mujoco_mju_addTo3.type
    var mju_subFrom3: mujoco_mju_subFrom3.type
    var mju_addToScl3: mujoco_mju_addToScl3.type
    var mju_addScl3: mujoco_mju_addScl3.type
    var mju_normalize3: mujoco_mju_normalize3.type
    var mju_norm3: mujoco_mju_norm3.type
    var mju_dot3: mujoco_mju_dot3.type
    var mju_dist3: mujoco_mju_dist3.type
    var mju_mulMatVec3: mujoco_mju_mulMatVec3.type
    var mju_mulMatTVec3: mujoco_mju_mulMatTVec3.type
    var mju_cross: mujoco_mju_cross.type
    var mju_zero4: mujoco_mju_zero4.type
    var mju_unit4: mujoco_mju_unit4.type
    var mju_copy4: mujoco_mju_copy4.type
    var mju_normalize4: mujoco_mju_normalize4.type
    var mju_zero: mujoco_mju_zero.type
    var mju_fill: mujoco_mju_fill.type
    var mju_copy: mujoco_mju_copy.type
    var mju_sum: mujoco_mju_sum.type
    var mju_L1: mujoco_mju_L1.type
    var mju_scl: mujoco_mju_scl.type
    var mju_add: mujoco_mju_add.type
    var mju_sub: mujoco_mju_sub.type
    var mju_addTo: mujoco_mju_addTo.type
    var mju_subFrom: mujoco_mju_subFrom.type
    var mju_addToScl: mujoco_mju_addToScl.type
    var mju_addScl: mujoco_mju_addScl.type
    var mju_normalize: mujoco_mju_normalize.type
    var mju_norm: mujoco_mju_norm.type
    var mju_dot: mujoco_mju_dot.type
    var mju_mulMatVec: mujoco_mju_mulMatVec.type
    var mju_mulMatTVec: mujoco_mju_mulMatTVec.type
    var mju_mulVecMatVec: mujoco_mju_mulVecMatVec.type
    var mju_transpose: mujoco_mju_transpose.type
    var mju_symmetrize: mujoco_mju_symmetrize.type
    var mju_eye: mujoco_mju_eye.type
    var mju_mulMatMat: mujoco_mju_mulMatMat.type
    var mju_mulMatMatT: mujoco_mju_mulMatMatT.type
    var mju_mulMatTMat: mujoco_mju_mulMatTMat.type
    var mju_sqrMatTD: mujoco_mju_sqrMatTD.type
    var mju_transformSpatial: mujoco_mju_transformSpatial.type
    var mju_dense2sparse: mujoco_mju_dense2sparse.type
    var mju_sparse2dense: mujoco_mju_sparse2dense.type
    var mju_rotVecQuat: mujoco_mju_rotVecQuat.type
    var mju_negQuat: mujoco_mju_negQuat.type
    var mju_mulQuat: mujoco_mju_mulQuat.type
    var mju_mulQuatAxis: mujoco_mju_mulQuatAxis.type
    var mju_axisAngle2Quat: mujoco_mju_axisAngle2Quat.type
    var mju_quat2Vel: mujoco_mju_quat2Vel.type
    var mju_subQuat: mujoco_mju_subQuat.type
    var mju_quat2Mat: mujoco_mju_quat2Mat.type
    var mju_mat2Quat: mujoco_mju_mat2Quat.type
    var mju_derivQuat: mujoco_mju_derivQuat.type
    var mju_quatIntegrate: mujoco_mju_quatIntegrate.type
    var mju_quatZ2Vec: mujoco_mju_quatZ2Vec.type
    var mju_mat2Rot: mujoco_mju_mat2Rot.type
    var mju_euler2Quat: mujoco_mju_euler2Quat.type
    var mju_mulPose: mujoco_mju_mulPose.type
    var mju_negPose: mujoco_mju_negPose.type
    var mju_trnVecPose: mujoco_mju_trnVecPose.type
    var mju_cholFactor: mujoco_mju_cholFactor.type
    var mju_cholSolve: mujoco_mju_cholSolve.type
    var mju_cholUpdate: mujoco_mju_cholUpdate.type
    var mju_cholFactorBand: mujoco_mju_cholFactorBand.type
    var mju_cholSolveBand: mujoco_mju_cholSolveBand.type
    var mju_band2Dense: mujoco_mju_band2Dense.type
    var mju_dense2Band: mujoco_mju_dense2Band.type
    var mju_bandMulMatVec: mujoco_mju_bandMulMatVec.type
    var mju_bandDiag: mujoco_mju_bandDiag.type
    var mju_eig3: mujoco_mju_eig3.type
    var mju_boxQP: mujoco_mju_boxQP.type
    var mju_boxQPmalloc: mujoco_mju_boxQPmalloc.type
    var mju_muscleGain: mujoco_mju_muscleGain.type
    var mju_muscleBias: mujoco_mju_muscleBias.type
    var mju_muscleDynamics: mujoco_mju_muscleDynamics.type
    var mju_encodePyramid: mujoco_mju_encodePyramid.type
    var mju_decodePyramid: mujoco_mju_decodePyramid.type
    var mju_springDamper: mujoco_mju_springDamper.type
    var mju_min: mujoco_mju_min.type
    var mju_max: mujoco_mju_max.type
    var mju_clip: mujoco_mju_clip.type
    var mju_sign: mujoco_mju_sign.type
    var mju_round: mujoco_mju_round.type
    var mju_type2Str: mujoco_mju_type2Str.type
    var mju_str2Type: mujoco_mju_str2Type.type
    var mju_writeNumBytes: mujoco_mju_writeNumBytes.type
    var mju_warningText: mujoco_mju_warningText.type
    var mju_isBad: mujoco_mju_isBad.type
    var mju_isZero: mujoco_mju_isZero.type
    var mju_standardNormal: mujoco_mju_standardNormal.type
    var mju_f2n: mujoco_mju_f2n.type
    var mju_n2f: mujoco_mju_n2f.type
    var mju_d2n: mujoco_mju_d2n.type
    var mju_n2d: mujoco_mju_n2d.type
    var mju_insertionSort: mujoco_mju_insertionSort.type
    var mju_insertionSortInt: mujoco_mju_insertionSortInt.type
    var mju_Halton: mujoco_mju_Halton.type
    var mju_strncpy: mujoco_mju_strncpy.type
    var mju_sigmoid: mujoco_mju_sigmoid.type
    var mjc_getSDF: mujoco_mjc_getSDF.type
    var mjc_distance: mujoco_mjc_distance.type
    var mjc_gradient: mujoco_mjc_gradient.type
    var mjd_transitionFD: mujoco_mjd_transitionFD.type
    var mjd_inverseFD: mujoco_mjd_inverseFD.type
    var mjd_subQuat: mujoco_mjd_subQuat.type
    var mjd_quatIntegrate: mujoco_mjd_quatIntegrate.type
    var mjp_defaultPlugin: mujoco_mjp_defaultPlugin.type
    var mjp_registerPlugin: mujoco_mjp_registerPlugin.type
    var mjp_pluginCount: mujoco_mjp_pluginCount.type
    var mjp_getPlugin: mujoco_mjp_getPlugin.type
    var mjp_getPluginAtSlot: mujoco_mjp_getPluginAtSlot.type
    var mjp_defaultResourceProvider: mujoco_mjp_defaultResourceProvider.type
    var mjp_registerResourceProvider: mujoco_mjp_registerResourceProvider.type
    var mjp_resourceProviderCount: mujoco_mjp_resourceProviderCount.type
    var mjp_getResourceProvider: mujoco_mjp_getResourceProvider.type
    var mjp_getResourceProviderAtSlot: mujoco_mjp_getResourceProviderAtSlot.type
    var mju_threadPoolCreate: mujoco_mju_threadPoolCreate.type
    var mju_bindThreadPool: mujoco_mju_bindThreadPool.type
    var mju_threadPoolEnqueue: mujoco_mju_threadPoolEnqueue.type
    var mju_threadPoolDestroy: mujoco_mju_threadPoolDestroy.type
    var mju_defaultTask: mujoco_mju_defaultTask.type
    var mju_taskJoin: mujoco_mju_taskJoin.type
    var mjs_attach: mujoco_mjs_attach.type
    var mjs_addBody: mujoco_mjs_addBody.type
    var mjs_addSite: mujoco_mjs_addSite.type
    var mjs_addJoint: mujoco_mjs_addJoint.type
    var mjs_addFreeJoint: mujoco_mjs_addFreeJoint.type
    var mjs_addGeom: mujoco_mjs_addGeom.type
    var mjs_addCamera: mujoco_mjs_addCamera.type
    var mjs_addLight: mujoco_mjs_addLight.type
    var mjs_addFrame: mujoco_mjs_addFrame.type
    var mjs_delete: mujoco_mjs_delete.type
    var mjs_addActuator: mujoco_mjs_addActuator.type
    var mjs_addSensor: mujoco_mjs_addSensor.type
    var mjs_addFlex: mujoco_mjs_addFlex.type
    var mjs_addPair: mujoco_mjs_addPair.type
    var mjs_addExclude: mujoco_mjs_addExclude.type
    var mjs_addEquality: mujoco_mjs_addEquality.type
    var mjs_addTendon: mujoco_mjs_addTendon.type
    var mjs_wrapSite: mujoco_mjs_wrapSite.type
    var mjs_wrapGeom: mujoco_mjs_wrapGeom.type
    var mjs_wrapJoint: mujoco_mjs_wrapJoint.type
    var mjs_wrapPulley: mujoco_mjs_wrapPulley.type
    var mjs_addNumeric: mujoco_mjs_addNumeric.type
    var mjs_addText: mujoco_mjs_addText.type
    var mjs_addTuple: mujoco_mjs_addTuple.type
    var mjs_addKey: mujoco_mjs_addKey.type
    var mjs_addPlugin: mujoco_mjs_addPlugin.type
    var mjs_addDefault: mujoco_mjs_addDefault.type
    var mjs_setToMotor: mujoco_mjs_setToMotor.type
    var mjs_setToPosition: mujoco_mjs_setToPosition.type
    var mjs_setToIntVelocity: mujoco_mjs_setToIntVelocity.type
    var mjs_setToVelocity: mujoco_mjs_setToVelocity.type
    var mjs_setToDamper: mujoco_mjs_setToDamper.type
    var mjs_setToCylinder: mujoco_mjs_setToCylinder.type
    var mjs_setToMuscle: mujoco_mjs_setToMuscle.type
    var mjs_setToAdhesion: mujoco_mjs_setToAdhesion.type
    var mjs_addMesh: mujoco_mjs_addMesh.type
    var mjs_addHField: mujoco_mjs_addHField.type
    var mjs_addSkin: mujoco_mjs_addSkin.type
    var mjs_addTexture: mujoco_mjs_addTexture.type
    var mjs_addMaterial: mujoco_mjs_addMaterial.type
    var mjs_makeMesh: mujoco_mjs_makeMesh.type
    var mjs_getSpec: mujoco_mjs_getSpec.type
    var mjs_findSpec: mujoco_mjs_findSpec.type
    var mjs_findBody: mujoco_mjs_findBody.type
    var mjs_findElement: mujoco_mjs_findElement.type
    var mjs_findChild: mujoco_mjs_findChild.type
    var mjs_getParent: mujoco_mjs_getParent.type
    var mjs_getFrame: mujoco_mjs_getFrame.type
    var mjs_findFrame: mujoco_mjs_findFrame.type
    var mjs_getDefault: mujoco_mjs_getDefault.type
    var mjs_findDefault: mujoco_mjs_findDefault.type
    var mjs_getSpecDefault: mujoco_mjs_getSpecDefault.type
    var mjs_getId: mujoco_mjs_getId.type
    var mjs_firstChild: mujoco_mjs_firstChild.type
    var mjs_nextChild: mujoco_mjs_nextChild.type
    var mjs_firstElement: mujoco_mjs_firstElement.type
    var mjs_nextElement: mujoco_mjs_nextElement.type
    var mjs_setName: mujoco_mjs_setName.type
    var mjs_setBuffer: mujoco_mjs_setBuffer.type
    var mjs_setString: mujoco_mjs_setString.type
    var mjs_setStringVec: mujoco_mjs_setStringVec.type
    var mjs_setInStringVec: mujoco_mjs_setInStringVec.type
    var mjs_appendString: mujoco_mjs_appendString.type
    var mjs_setInt: mujoco_mjs_setInt.type
    var mjs_appendIntVec: mujoco_mjs_appendIntVec.type
    var mjs_setFloat: mujoco_mjs_setFloat.type
    var mjs_appendFloatVec: mujoco_mjs_appendFloatVec.type
    var mjs_setDouble: mujoco_mjs_setDouble.type
    var mjs_setPluginAttributes: mujoco_mjs_setPluginAttributes.type
    var mjs_getName: mujoco_mjs_getName.type
    var mjs_getString: mujoco_mjs_getString.type
    var mjs_getDouble: mujoco_mjs_getDouble.type
    var mjs_getPluginAttributes: mujoco_mjs_getPluginAttributes.type
    var mjs_setDefault: mujoco_mjs_setDefault.type
    var mjs_setFrame: mujoco_mjs_setFrame.type
    var mjs_resolveOrientation: mujoco_mjs_resolveOrientation.type
    var mjs_bodyToFrame: mujoco_mjs_bodyToFrame.type
    var mjs_setUserValue: mujoco_mjs_setUserValue.type
    var mjs_setUserValueWithCleanup: mujoco_mjs_setUserValueWithCleanup.type
    var mjs_getUserValue: mujoco_mjs_getUserValue.type
    var mjs_deleteUserValue: mujoco_mjs_deleteUserValue.type
    var mjs_sensorDim: mujoco_mjs_sensorDim.type
    var mjs_defaultSpec: mujoco_mjs_defaultSpec.type
    var mjs_defaultOrientation: mujoco_mjs_defaultOrientation.type
    var mjs_defaultBody: mujoco_mjs_defaultBody.type
    var mjs_defaultFrame: mujoco_mjs_defaultFrame.type
    var mjs_defaultJoint: mujoco_mjs_defaultJoint.type
    var mjs_defaultGeom: mujoco_mjs_defaultGeom.type
    var mjs_defaultSite: mujoco_mjs_defaultSite.type
    var mjs_defaultCamera: mujoco_mjs_defaultCamera.type
    var mjs_defaultLight: mujoco_mjs_defaultLight.type
    var mjs_defaultFlex: mujoco_mjs_defaultFlex.type
    var mjs_defaultMesh: mujoco_mjs_defaultMesh.type
    var mjs_defaultHField: mujoco_mjs_defaultHField.type
    var mjs_defaultSkin: mujoco_mjs_defaultSkin.type
    var mjs_defaultTexture: mujoco_mjs_defaultTexture.type
    var mjs_defaultMaterial: mujoco_mjs_defaultMaterial.type
    var mjs_defaultPair: mujoco_mjs_defaultPair.type
    var mjs_defaultEquality: mujoco_mjs_defaultEquality.type
    var mjs_defaultTendon: mujoco_mjs_defaultTendon.type
    var mjs_defaultActuator: mujoco_mjs_defaultActuator.type
    var mjs_defaultSensor: mujoco_mjs_defaultSensor.type
    var mjs_defaultNumeric: mujoco_mjs_defaultNumeric.type
    var mjs_defaultText: mujoco_mjs_defaultText.type
    var mjs_defaultTuple: mujoco_mjs_defaultTuple.type
    var mjs_defaultKey: mujoco_mjs_defaultKey.type
    var mjs_defaultPlugin: mujoco_mjs_defaultPlugin.type
    var mjs_asBody: mujoco_mjs_asBody.type
    var mjs_asGeom: mujoco_mjs_asGeom.type
    var mjs_asJoint: mujoco_mjs_asJoint.type
    var mjs_asSite: mujoco_mjs_asSite.type
    var mjs_asCamera: mujoco_mjs_asCamera.type
    var mjs_asLight: mujoco_mjs_asLight.type
    var mjs_asFrame: mujoco_mjs_asFrame.type
    var mjs_asActuator: mujoco_mjs_asActuator.type
    var mjs_asSensor: mujoco_mjs_asSensor.type
    var mjs_asFlex: mujoco_mjs_asFlex.type
    var mjs_asPair: mujoco_mjs_asPair.type
    var mjs_asEquality: mujoco_mjs_asEquality.type
    var mjs_asExclude: mujoco_mjs_asExclude.type
    var mjs_asTendon: mujoco_mjs_asTendon.type
    var mjs_asNumeric: mujoco_mjs_asNumeric.type
    var mjs_asText: mujoco_mjs_asText.type
    var mjs_asTuple: mujoco_mjs_asTuple.type
    var mjs_asKey: mujoco_mjs_asKey.type
    var mjs_asMesh: mujoco_mjs_asMesh.type
    var mjs_asHField: mujoco_mjs_asHField.type
    var mjs_asSkin: mujoco_mjs_asSkin.type
    var mjs_asTexture: mujoco_mjs_asTexture.type
    var mjs_asMaterial: mujoco_mjs_asMaterial.type
    var mjs_asPlugin: mujoco_mjs_asPlugin.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('libmujoco.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load mujoco from", 'libmujoco.so', ":\n", e)
            )

    
        self.mj_defaultVFS = mujoco_mj_defaultVFS.load(self.lib)
        self.mj_addFileVFS = mujoco_mj_addFileVFS.load(self.lib)
        self.mj_addBufferVFS = mujoco_mj_addBufferVFS.load(self.lib)
        self.mj_deleteFileVFS = mujoco_mj_deleteFileVFS.load(self.lib)
        self.mj_deleteVFS = mujoco_mj_deleteVFS.load(self.lib)
        self.mj_loadXML = mujoco_mj_loadXML.load(self.lib)
        self.mj_parseXML = mujoco_mj_parseXML.load(self.lib)
        self.mj_parseXMLString = mujoco_mj_parseXMLString.load(self.lib)
        self.mj_compile = mujoco_mj_compile.load(self.lib)
        self.mj_copyBack = mujoco_mj_copyBack.load(self.lib)
        self.mj_recompile = mujoco_mj_recompile.load(self.lib)
        self.mj_saveLastXML = mujoco_mj_saveLastXML.load(self.lib)
        self.mj_freeLastXML = mujoco_mj_freeLastXML.load(self.lib)
        self.mj_saveXMLString = mujoco_mj_saveXMLString.load(self.lib)
        self.mj_saveXML = mujoco_mj_saveXML.load(self.lib)
        self.mj_step = mujoco_mj_step.load(self.lib)
        self.mj_step1 = mujoco_mj_step1.load(self.lib)
        self.mj_step2 = mujoco_mj_step2.load(self.lib)
        self.mj_forward = mujoco_mj_forward.load(self.lib)
        self.mj_inverse = mujoco_mj_inverse.load(self.lib)
        self.mj_forwardSkip = mujoco_mj_forwardSkip.load(self.lib)
        self.mj_inverseSkip = mujoco_mj_inverseSkip.load(self.lib)
        self.mj_defaultLROpt = mujoco_mj_defaultLROpt.load(self.lib)
        self.mj_defaultSolRefImp = mujoco_mj_defaultSolRefImp.load(self.lib)
        self.mj_defaultOption = mujoco_mj_defaultOption.load(self.lib)
        self.mj_defaultVisual = mujoco_mj_defaultVisual.load(self.lib)
        self.mj_copyModel = mujoco_mj_copyModel.load(self.lib)
        self.mj_saveModel = mujoco_mj_saveModel.load(self.lib)
        self.mj_loadModel = mujoco_mj_loadModel.load(self.lib)
        self.mj_deleteModel = mujoco_mj_deleteModel.load(self.lib)
        self.mj_sizeModel = mujoco_mj_sizeModel.load(self.lib)
        self.mj_makeData = mujoco_mj_makeData.load(self.lib)
        self.mj_copyData = mujoco_mj_copyData.load(self.lib)
        self.mjv_copyData = mujoco_mjv_copyData.load(self.lib)
        self.mj_resetData = mujoco_mj_resetData.load(self.lib)
        self.mj_resetDataDebug = mujoco_mj_resetDataDebug.load(self.lib)
        self.mj_resetDataKeyframe = mujoco_mj_resetDataKeyframe.load(self.lib)
        self.mj_markStack = mujoco_mj_markStack.load(self.lib)
        self.mj_freeStack = mujoco_mj_freeStack.load(self.lib)
        self.mj_stackAllocByte = mujoco_mj_stackAllocByte.load(self.lib)
        self.mj_stackAllocNum = mujoco_mj_stackAllocNum.load(self.lib)
        self.mj_stackAllocInt = mujoco_mj_stackAllocInt.load(self.lib)
        self.mj_deleteData = mujoco_mj_deleteData.load(self.lib)
        self.mj_resetCallbacks = mujoco_mj_resetCallbacks.load(self.lib)
        self.mj_setConst = mujoco_mj_setConst.load(self.lib)
        self.mj_setLengthRange = mujoco_mj_setLengthRange.load(self.lib)
        self.mj_makeSpec = mujoco_mj_makeSpec.load(self.lib)
        self.mj_copySpec = mujoco_mj_copySpec.load(self.lib)
        self.mj_deleteSpec = mujoco_mj_deleteSpec.load(self.lib)
        self.mjs_activatePlugin = mujoco_mjs_activatePlugin.load(self.lib)
        self.mjs_setDeepCopy = mujoco_mjs_setDeepCopy.load(self.lib)
        self.mj_printFormattedModel = mujoco_mj_printFormattedModel.load(self.lib)
        self.mj_printModel = mujoco_mj_printModel.load(self.lib)
        self.mj_printFormattedData = mujoco_mj_printFormattedData.load(self.lib)
        self.mj_printData = mujoco_mj_printData.load(self.lib)
        self.mju_printMat = mujoco_mju_printMat.load(self.lib)
        self.mju_printMatSparse = mujoco_mju_printMatSparse.load(self.lib)
        self.mj_printSchema = mujoco_mj_printSchema.load(self.lib)
        self.mj_fwdPosition = mujoco_mj_fwdPosition.load(self.lib)
        self.mj_fwdVelocity = mujoco_mj_fwdVelocity.load(self.lib)
        self.mj_fwdActuation = mujoco_mj_fwdActuation.load(self.lib)
        self.mj_fwdAcceleration = mujoco_mj_fwdAcceleration.load(self.lib)
        self.mj_fwdConstraint = mujoco_mj_fwdConstraint.load(self.lib)
        self.mj_Euler = mujoco_mj_Euler.load(self.lib)
        self.mj_RungeKutta = mujoco_mj_RungeKutta.load(self.lib)
        self.mj_implicit = mujoco_mj_implicit.load(self.lib)
        self.mj_invPosition = mujoco_mj_invPosition.load(self.lib)
        self.mj_invVelocity = mujoco_mj_invVelocity.load(self.lib)
        self.mj_invConstraint = mujoco_mj_invConstraint.load(self.lib)
        self.mj_compareFwdInv = mujoco_mj_compareFwdInv.load(self.lib)
        self.mj_sensorPos = mujoco_mj_sensorPos.load(self.lib)
        self.mj_sensorVel = mujoco_mj_sensorVel.load(self.lib)
        self.mj_sensorAcc = mujoco_mj_sensorAcc.load(self.lib)
        self.mj_energyPos = mujoco_mj_energyPos.load(self.lib)
        self.mj_energyVel = mujoco_mj_energyVel.load(self.lib)
        self.mj_checkPos = mujoco_mj_checkPos.load(self.lib)
        self.mj_checkVel = mujoco_mj_checkVel.load(self.lib)
        self.mj_checkAcc = mujoco_mj_checkAcc.load(self.lib)
        self.mj_kinematics = mujoco_mj_kinematics.load(self.lib)
        self.mj_comPos = mujoco_mj_comPos.load(self.lib)
        self.mj_camlight = mujoco_mj_camlight.load(self.lib)
        self.mj_flex = mujoco_mj_flex.load(self.lib)
        self.mj_tendon = mujoco_mj_tendon.load(self.lib)
        self.mj_transmission = mujoco_mj_transmission.load(self.lib)
        self.mj_crb = mujoco_mj_crb.load(self.lib)
        self.mj_makeM = mujoco_mj_makeM.load(self.lib)
        self.mj_factorM = mujoco_mj_factorM.load(self.lib)
        self.mj_solveM = mujoco_mj_solveM.load(self.lib)
        self.mj_solveM2 = mujoco_mj_solveM2.load(self.lib)
        self.mj_comVel = mujoco_mj_comVel.load(self.lib)
        self.mj_passive = mujoco_mj_passive.load(self.lib)
        self.mj_subtreeVel = mujoco_mj_subtreeVel.load(self.lib)
        self.mj_rne = mujoco_mj_rne.load(self.lib)
        self.mj_rnePostConstraint = mujoco_mj_rnePostConstraint.load(self.lib)
        self.mj_collision = mujoco_mj_collision.load(self.lib)
        self.mj_makeConstraint = mujoco_mj_makeConstraint.load(self.lib)
        self.mj_island = mujoco_mj_island.load(self.lib)
        self.mj_projectConstraint = mujoco_mj_projectConstraint.load(self.lib)
        self.mj_referenceConstraint = mujoco_mj_referenceConstraint.load(self.lib)
        self.mj_constraintUpdate = mujoco_mj_constraintUpdate.load(self.lib)
        self.mj_stateSize = mujoco_mj_stateSize.load(self.lib)
        self.mj_getState = mujoco_mj_getState.load(self.lib)
        self.mj_setState = mujoco_mj_setState.load(self.lib)
        self.mj_setKeyframe = mujoco_mj_setKeyframe.load(self.lib)
        self.mj_addContact = mujoco_mj_addContact.load(self.lib)
        self.mj_isPyramidal = mujoco_mj_isPyramidal.load(self.lib)
        self.mj_isSparse = mujoco_mj_isSparse.load(self.lib)
        self.mj_isDual = mujoco_mj_isDual.load(self.lib)
        self.mj_mulJacVec = mujoco_mj_mulJacVec.load(self.lib)
        self.mj_mulJacTVec = mujoco_mj_mulJacTVec.load(self.lib)
        self.mj_jac = mujoco_mj_jac.load(self.lib)
        self.mj_jacBody = mujoco_mj_jacBody.load(self.lib)
        self.mj_jacBodyCom = mujoco_mj_jacBodyCom.load(self.lib)
        self.mj_jacSubtreeCom = mujoco_mj_jacSubtreeCom.load(self.lib)
        self.mj_jacGeom = mujoco_mj_jacGeom.load(self.lib)
        self.mj_jacSite = mujoco_mj_jacSite.load(self.lib)
        self.mj_jacPointAxis = mujoco_mj_jacPointAxis.load(self.lib)
        self.mj_jacDot = mujoco_mj_jacDot.load(self.lib)
        self.mj_angmomMat = mujoco_mj_angmomMat.load(self.lib)
        self.mj_name2id = mujoco_mj_name2id.load(self.lib)
        self.mj_id2name = mujoco_mj_id2name.load(self.lib)
        self.mj_fullM = mujoco_mj_fullM.load(self.lib)
        self.mj_mulM = mujoco_mj_mulM.load(self.lib)
        self.mj_mulM2 = mujoco_mj_mulM2.load(self.lib)
        self.mj_addM = mujoco_mj_addM.load(self.lib)
        self.mj_applyFT = mujoco_mj_applyFT.load(self.lib)
        self.mj_objectVelocity = mujoco_mj_objectVelocity.load(self.lib)
        self.mj_objectAcceleration = mujoco_mj_objectAcceleration.load(self.lib)
        self.mj_geomDistance = mujoco_mj_geomDistance.load(self.lib)
        self.mj_contactForce = mujoco_mj_contactForce.load(self.lib)
        self.mj_differentiatePos = mujoco_mj_differentiatePos.load(self.lib)
        self.mj_integratePos = mujoco_mj_integratePos.load(self.lib)
        self.mj_normalizeQuat = mujoco_mj_normalizeQuat.load(self.lib)
        self.mj_local2Global = mujoco_mj_local2Global.load(self.lib)
        self.mj_getTotalmass = mujoco_mj_getTotalmass.load(self.lib)
        self.mj_setTotalmass = mujoco_mj_setTotalmass.load(self.lib)
        self.mj_getPluginConfig = mujoco_mj_getPluginConfig.load(self.lib)
        self.mj_loadPluginLibrary = mujoco_mj_loadPluginLibrary.load(self.lib)
        self.mj_loadAllPluginLibraries = mujoco_mj_loadAllPluginLibraries.load(self.lib)
        self.mj_version = mujoco_mj_version.load(self.lib)
        self.mj_versionString = mujoco_mj_versionString.load(self.lib)
        self.mj_multiRay = mujoco_mj_multiRay.load(self.lib)
        self.mj_ray = mujoco_mj_ray.load(self.lib)
        self.mj_rayHfield = mujoco_mj_rayHfield.load(self.lib)
        self.mj_rayMesh = mujoco_mj_rayMesh.load(self.lib)
        self.mju_rayGeom = mujoco_mju_rayGeom.load(self.lib)
        self.mju_rayFlex = mujoco_mju_rayFlex.load(self.lib)
        self.mju_raySkin = mujoco_mju_raySkin.load(self.lib)
        self.mjv_defaultCamera = mujoco_mjv_defaultCamera.load(self.lib)
        self.mjv_defaultFreeCamera = mujoco_mjv_defaultFreeCamera.load(self.lib)
        self.mjv_defaultPerturb = mujoco_mjv_defaultPerturb.load(self.lib)
        self.mjv_room2model = mujoco_mjv_room2model.load(self.lib)
        self.mjv_model2room = mujoco_mjv_model2room.load(self.lib)
        self.mjv_cameraInModel = mujoco_mjv_cameraInModel.load(self.lib)
        self.mjv_cameraInRoom = mujoco_mjv_cameraInRoom.load(self.lib)
        self.mjv_frustumHeight = mujoco_mjv_frustumHeight.load(self.lib)
        self.mjv_alignToCamera = mujoco_mjv_alignToCamera.load(self.lib)
        self.mjv_moveCamera = mujoco_mjv_moveCamera.load(self.lib)
        self.mjv_movePerturb = mujoco_mjv_movePerturb.load(self.lib)
        self.mjv_moveModel = mujoco_mjv_moveModel.load(self.lib)
        self.mjv_initPerturb = mujoco_mjv_initPerturb.load(self.lib)
        self.mjv_applyPerturbPose = mujoco_mjv_applyPerturbPose.load(self.lib)
        self.mjv_applyPerturbForce = mujoco_mjv_applyPerturbForce.load(self.lib)
        self.mjv_averageCamera = mujoco_mjv_averageCamera.load(self.lib)
        self.mjv_select = mujoco_mjv_select.load(self.lib)
        self.mjv_defaultOption = mujoco_mjv_defaultOption.load(self.lib)
        self.mjv_defaultFigure = mujoco_mjv_defaultFigure.load(self.lib)
        self.mjv_initGeom = mujoco_mjv_initGeom.load(self.lib)
        self.mjv_connector = mujoco_mjv_connector.load(self.lib)
        self.mjv_defaultScene = mujoco_mjv_defaultScene.load(self.lib)
        self.mjv_makeScene = mujoco_mjv_makeScene.load(self.lib)
        self.mjv_freeScene = mujoco_mjv_freeScene.load(self.lib)
        self.mjv_updateScene = mujoco_mjv_updateScene.load(self.lib)
        self.mjv_copyModel = mujoco_mjv_copyModel.load(self.lib)
        self.mjv_addGeoms = mujoco_mjv_addGeoms.load(self.lib)
        self.mjv_makeLights = mujoco_mjv_makeLights.load(self.lib)
        self.mjv_updateCamera = mujoco_mjv_updateCamera.load(self.lib)
        self.mjv_updateSkin = mujoco_mjv_updateSkin.load(self.lib)
        self.mjr_defaultContext = mujoco_mjr_defaultContext.load(self.lib)
        self.mjr_makeContext = mujoco_mjr_makeContext.load(self.lib)
        self.mjr_changeFont = mujoco_mjr_changeFont.load(self.lib)
        self.mjr_addAux = mujoco_mjr_addAux.load(self.lib)
        self.mjr_freeContext = mujoco_mjr_freeContext.load(self.lib)
        self.mjr_resizeOffscreen = mujoco_mjr_resizeOffscreen.load(self.lib)
        self.mjr_uploadTexture = mujoco_mjr_uploadTexture.load(self.lib)
        self.mjr_uploadMesh = mujoco_mjr_uploadMesh.load(self.lib)
        self.mjr_uploadHField = mujoco_mjr_uploadHField.load(self.lib)
        self.mjr_restoreBuffer = mujoco_mjr_restoreBuffer.load(self.lib)
        self.mjr_setBuffer = mujoco_mjr_setBuffer.load(self.lib)
        self.mjr_readPixels = mujoco_mjr_readPixels.load(self.lib)
        self.mjr_drawPixels = mujoco_mjr_drawPixels.load(self.lib)
        self.mjr_blitBuffer = mujoco_mjr_blitBuffer.load(self.lib)
        self.mjr_setAux = mujoco_mjr_setAux.load(self.lib)
        self.mjr_blitAux = mujoco_mjr_blitAux.load(self.lib)
        self.mjr_text = mujoco_mjr_text.load(self.lib)
        self.mjr_overlay = mujoco_mjr_overlay.load(self.lib)
        self.mjr_maxViewport = mujoco_mjr_maxViewport.load(self.lib)
        self.mjr_rectangle = mujoco_mjr_rectangle.load(self.lib)
        self.mjr_label = mujoco_mjr_label.load(self.lib)
        self.mjr_figure = mujoco_mjr_figure.load(self.lib)
        self.mjr_render = mujoco_mjr_render.load(self.lib)
        self.mjr_finish = mujoco_mjr_finish.load(self.lib)
        self.mjr_getError = mujoco_mjr_getError.load(self.lib)
        self.mjr_findRect = mujoco_mjr_findRect.load(self.lib)
        self.mjui_themeSpacing = mujoco_mjui_themeSpacing.load(self.lib)
        self.mjui_themeColor = mujoco_mjui_themeColor.load(self.lib)
        self.mjui_add = mujoco_mjui_add.load(self.lib)
        self.mjui_addToSection = mujoco_mjui_addToSection.load(self.lib)
        self.mjui_resize = mujoco_mjui_resize.load(self.lib)
        self.mjui_update = mujoco_mjui_update.load(self.lib)
        self.mjui_event = mujoco_mjui_event.load(self.lib)
        self.mjui_render = mujoco_mjui_render.load(self.lib)
        self.mju_error = mujoco_mju_error.load(self.lib)
        self.mju_error_i = mujoco_mju_error_i.load(self.lib)
        self.mju_error_s = mujoco_mju_error_s.load(self.lib)
        self.mju_warning = mujoco_mju_warning.load(self.lib)
        self.mju_warning_i = mujoco_mju_warning_i.load(self.lib)
        self.mju_warning_s = mujoco_mju_warning_s.load(self.lib)
        self.mju_clearHandlers = mujoco_mju_clearHandlers.load(self.lib)
        self.mju_malloc = mujoco_mju_malloc.load(self.lib)
        self.mju_free = mujoco_mju_free.load(self.lib)
        self.mj_warning = mujoco_mj_warning.load(self.lib)
        self.mju_writeLog = mujoco_mju_writeLog.load(self.lib)
        self.mjs_getError = mujoco_mjs_getError.load(self.lib)
        self.mjs_isWarning = mujoco_mjs_isWarning.load(self.lib)
        self.mju_zero3 = mujoco_mju_zero3.load(self.lib)
        self.mju_copy3 = mujoco_mju_copy3.load(self.lib)
        self.mju_scl3 = mujoco_mju_scl3.load(self.lib)
        self.mju_add3 = mujoco_mju_add3.load(self.lib)
        self.mju_sub3 = mujoco_mju_sub3.load(self.lib)
        self.mju_addTo3 = mujoco_mju_addTo3.load(self.lib)
        self.mju_subFrom3 = mujoco_mju_subFrom3.load(self.lib)
        self.mju_addToScl3 = mujoco_mju_addToScl3.load(self.lib)
        self.mju_addScl3 = mujoco_mju_addScl3.load(self.lib)
        self.mju_normalize3 = mujoco_mju_normalize3.load(self.lib)
        self.mju_norm3 = mujoco_mju_norm3.load(self.lib)
        self.mju_dot3 = mujoco_mju_dot3.load(self.lib)
        self.mju_dist3 = mujoco_mju_dist3.load(self.lib)
        self.mju_mulMatVec3 = mujoco_mju_mulMatVec3.load(self.lib)
        self.mju_mulMatTVec3 = mujoco_mju_mulMatTVec3.load(self.lib)
        self.mju_cross = mujoco_mju_cross.load(self.lib)
        self.mju_zero4 = mujoco_mju_zero4.load(self.lib)
        self.mju_unit4 = mujoco_mju_unit4.load(self.lib)
        self.mju_copy4 = mujoco_mju_copy4.load(self.lib)
        self.mju_normalize4 = mujoco_mju_normalize4.load(self.lib)
        self.mju_zero = mujoco_mju_zero.load(self.lib)
        self.mju_fill = mujoco_mju_fill.load(self.lib)
        self.mju_copy = mujoco_mju_copy.load(self.lib)
        self.mju_sum = mujoco_mju_sum.load(self.lib)
        self.mju_L1 = mujoco_mju_L1.load(self.lib)
        self.mju_scl = mujoco_mju_scl.load(self.lib)
        self.mju_add = mujoco_mju_add.load(self.lib)
        self.mju_sub = mujoco_mju_sub.load(self.lib)
        self.mju_addTo = mujoco_mju_addTo.load(self.lib)
        self.mju_subFrom = mujoco_mju_subFrom.load(self.lib)
        self.mju_addToScl = mujoco_mju_addToScl.load(self.lib)
        self.mju_addScl = mujoco_mju_addScl.load(self.lib)
        self.mju_normalize = mujoco_mju_normalize.load(self.lib)
        self.mju_norm = mujoco_mju_norm.load(self.lib)
        self.mju_dot = mujoco_mju_dot.load(self.lib)
        self.mju_mulMatVec = mujoco_mju_mulMatVec.load(self.lib)
        self.mju_mulMatTVec = mujoco_mju_mulMatTVec.load(self.lib)
        self.mju_mulVecMatVec = mujoco_mju_mulVecMatVec.load(self.lib)
        self.mju_transpose = mujoco_mju_transpose.load(self.lib)
        self.mju_symmetrize = mujoco_mju_symmetrize.load(self.lib)
        self.mju_eye = mujoco_mju_eye.load(self.lib)
        self.mju_mulMatMat = mujoco_mju_mulMatMat.load(self.lib)
        self.mju_mulMatMatT = mujoco_mju_mulMatMatT.load(self.lib)
        self.mju_mulMatTMat = mujoco_mju_mulMatTMat.load(self.lib)
        self.mju_sqrMatTD = mujoco_mju_sqrMatTD.load(self.lib)
        self.mju_transformSpatial = mujoco_mju_transformSpatial.load(self.lib)
        self.mju_dense2sparse = mujoco_mju_dense2sparse.load(self.lib)
        self.mju_sparse2dense = mujoco_mju_sparse2dense.load(self.lib)
        self.mju_rotVecQuat = mujoco_mju_rotVecQuat.load(self.lib)
        self.mju_negQuat = mujoco_mju_negQuat.load(self.lib)
        self.mju_mulQuat = mujoco_mju_mulQuat.load(self.lib)
        self.mju_mulQuatAxis = mujoco_mju_mulQuatAxis.load(self.lib)
        self.mju_axisAngle2Quat = mujoco_mju_axisAngle2Quat.load(self.lib)
        self.mju_quat2Vel = mujoco_mju_quat2Vel.load(self.lib)
        self.mju_subQuat = mujoco_mju_subQuat.load(self.lib)
        self.mju_quat2Mat = mujoco_mju_quat2Mat.load(self.lib)
        self.mju_mat2Quat = mujoco_mju_mat2Quat.load(self.lib)
        self.mju_derivQuat = mujoco_mju_derivQuat.load(self.lib)
        self.mju_quatIntegrate = mujoco_mju_quatIntegrate.load(self.lib)
        self.mju_quatZ2Vec = mujoco_mju_quatZ2Vec.load(self.lib)
        self.mju_mat2Rot = mujoco_mju_mat2Rot.load(self.lib)
        self.mju_euler2Quat = mujoco_mju_euler2Quat.load(self.lib)
        self.mju_mulPose = mujoco_mju_mulPose.load(self.lib)
        self.mju_negPose = mujoco_mju_negPose.load(self.lib)
        self.mju_trnVecPose = mujoco_mju_trnVecPose.load(self.lib)
        self.mju_cholFactor = mujoco_mju_cholFactor.load(self.lib)
        self.mju_cholSolve = mujoco_mju_cholSolve.load(self.lib)
        self.mju_cholUpdate = mujoco_mju_cholUpdate.load(self.lib)
        self.mju_cholFactorBand = mujoco_mju_cholFactorBand.load(self.lib)
        self.mju_cholSolveBand = mujoco_mju_cholSolveBand.load(self.lib)
        self.mju_band2Dense = mujoco_mju_band2Dense.load(self.lib)
        self.mju_dense2Band = mujoco_mju_dense2Band.load(self.lib)
        self.mju_bandMulMatVec = mujoco_mju_bandMulMatVec.load(self.lib)
        self.mju_bandDiag = mujoco_mju_bandDiag.load(self.lib)
        self.mju_eig3 = mujoco_mju_eig3.load(self.lib)
        self.mju_boxQP = mujoco_mju_boxQP.load(self.lib)
        self.mju_boxQPmalloc = mujoco_mju_boxQPmalloc.load(self.lib)
        self.mju_muscleGain = mujoco_mju_muscleGain.load(self.lib)
        self.mju_muscleBias = mujoco_mju_muscleBias.load(self.lib)
        self.mju_muscleDynamics = mujoco_mju_muscleDynamics.load(self.lib)
        self.mju_encodePyramid = mujoco_mju_encodePyramid.load(self.lib)
        self.mju_decodePyramid = mujoco_mju_decodePyramid.load(self.lib)
        self.mju_springDamper = mujoco_mju_springDamper.load(self.lib)
        self.mju_min = mujoco_mju_min.load(self.lib)
        self.mju_max = mujoco_mju_max.load(self.lib)
        self.mju_clip = mujoco_mju_clip.load(self.lib)
        self.mju_sign = mujoco_mju_sign.load(self.lib)
        self.mju_round = mujoco_mju_round.load(self.lib)
        self.mju_type2Str = mujoco_mju_type2Str.load(self.lib)
        self.mju_str2Type = mujoco_mju_str2Type.load(self.lib)
        self.mju_writeNumBytes = mujoco_mju_writeNumBytes.load(self.lib)
        self.mju_warningText = mujoco_mju_warningText.load(self.lib)
        self.mju_isBad = mujoco_mju_isBad.load(self.lib)
        self.mju_isZero = mujoco_mju_isZero.load(self.lib)
        self.mju_standardNormal = mujoco_mju_standardNormal.load(self.lib)
        self.mju_f2n = mujoco_mju_f2n.load(self.lib)
        self.mju_n2f = mujoco_mju_n2f.load(self.lib)
        self.mju_d2n = mujoco_mju_d2n.load(self.lib)
        self.mju_n2d = mujoco_mju_n2d.load(self.lib)
        self.mju_insertionSort = mujoco_mju_insertionSort.load(self.lib)
        self.mju_insertionSortInt = mujoco_mju_insertionSortInt.load(self.lib)
        self.mju_Halton = mujoco_mju_Halton.load(self.lib)
        self.mju_strncpy = mujoco_mju_strncpy.load(self.lib)
        self.mju_sigmoid = mujoco_mju_sigmoid.load(self.lib)
        self.mjc_getSDF = mujoco_mjc_getSDF.load(self.lib)
        self.mjc_distance = mujoco_mjc_distance.load(self.lib)
        self.mjc_gradient = mujoco_mjc_gradient.load(self.lib)
        self.mjd_transitionFD = mujoco_mjd_transitionFD.load(self.lib)
        self.mjd_inverseFD = mujoco_mjd_inverseFD.load(self.lib)
        self.mjd_subQuat = mujoco_mjd_subQuat.load(self.lib)
        self.mjd_quatIntegrate = mujoco_mjd_quatIntegrate.load(self.lib)
        self.mjp_defaultPlugin = mujoco_mjp_defaultPlugin.load(self.lib)
        self.mjp_registerPlugin = mujoco_mjp_registerPlugin.load(self.lib)
        self.mjp_pluginCount = mujoco_mjp_pluginCount.load(self.lib)
        self.mjp_getPlugin = mujoco_mjp_getPlugin.load(self.lib)
        self.mjp_getPluginAtSlot = mujoco_mjp_getPluginAtSlot.load(self.lib)
        self.mjp_defaultResourceProvider = mujoco_mjp_defaultResourceProvider.load(self.lib)
        self.mjp_registerResourceProvider = mujoco_mjp_registerResourceProvider.load(self.lib)
        self.mjp_resourceProviderCount = mujoco_mjp_resourceProviderCount.load(self.lib)
        self.mjp_getResourceProvider = mujoco_mjp_getResourceProvider.load(self.lib)
        self.mjp_getResourceProviderAtSlot = mujoco_mjp_getResourceProviderAtSlot.load(self.lib)
        self.mju_threadPoolCreate = mujoco_mju_threadPoolCreate.load(self.lib)
        self.mju_bindThreadPool = mujoco_mju_bindThreadPool.load(self.lib)
        self.mju_threadPoolEnqueue = mujoco_mju_threadPoolEnqueue.load(self.lib)
        self.mju_threadPoolDestroy = mujoco_mju_threadPoolDestroy.load(self.lib)
        self.mju_defaultTask = mujoco_mju_defaultTask.load(self.lib)
        self.mju_taskJoin = mujoco_mju_taskJoin.load(self.lib)
        self.mjs_attach = mujoco_mjs_attach.load(self.lib)
        self.mjs_addBody = mujoco_mjs_addBody.load(self.lib)
        self.mjs_addSite = mujoco_mjs_addSite.load(self.lib)
        self.mjs_addJoint = mujoco_mjs_addJoint.load(self.lib)
        self.mjs_addFreeJoint = mujoco_mjs_addFreeJoint.load(self.lib)
        self.mjs_addGeom = mujoco_mjs_addGeom.load(self.lib)
        self.mjs_addCamera = mujoco_mjs_addCamera.load(self.lib)
        self.mjs_addLight = mujoco_mjs_addLight.load(self.lib)
        self.mjs_addFrame = mujoco_mjs_addFrame.load(self.lib)
        self.mjs_delete = mujoco_mjs_delete.load(self.lib)
        self.mjs_addActuator = mujoco_mjs_addActuator.load(self.lib)
        self.mjs_addSensor = mujoco_mjs_addSensor.load(self.lib)
        self.mjs_addFlex = mujoco_mjs_addFlex.load(self.lib)
        self.mjs_addPair = mujoco_mjs_addPair.load(self.lib)
        self.mjs_addExclude = mujoco_mjs_addExclude.load(self.lib)
        self.mjs_addEquality = mujoco_mjs_addEquality.load(self.lib)
        self.mjs_addTendon = mujoco_mjs_addTendon.load(self.lib)
        self.mjs_wrapSite = mujoco_mjs_wrapSite.load(self.lib)
        self.mjs_wrapGeom = mujoco_mjs_wrapGeom.load(self.lib)
        self.mjs_wrapJoint = mujoco_mjs_wrapJoint.load(self.lib)
        self.mjs_wrapPulley = mujoco_mjs_wrapPulley.load(self.lib)
        self.mjs_addNumeric = mujoco_mjs_addNumeric.load(self.lib)
        self.mjs_addText = mujoco_mjs_addText.load(self.lib)
        self.mjs_addTuple = mujoco_mjs_addTuple.load(self.lib)
        self.mjs_addKey = mujoco_mjs_addKey.load(self.lib)
        self.mjs_addPlugin = mujoco_mjs_addPlugin.load(self.lib)
        self.mjs_addDefault = mujoco_mjs_addDefault.load(self.lib)
        self.mjs_setToMotor = mujoco_mjs_setToMotor.load(self.lib)
        self.mjs_setToPosition = mujoco_mjs_setToPosition.load(self.lib)
        self.mjs_setToIntVelocity = mujoco_mjs_setToIntVelocity.load(self.lib)
        self.mjs_setToVelocity = mujoco_mjs_setToVelocity.load(self.lib)
        self.mjs_setToDamper = mujoco_mjs_setToDamper.load(self.lib)
        self.mjs_setToCylinder = mujoco_mjs_setToCylinder.load(self.lib)
        self.mjs_setToMuscle = mujoco_mjs_setToMuscle.load(self.lib)
        self.mjs_setToAdhesion = mujoco_mjs_setToAdhesion.load(self.lib)
        self.mjs_addMesh = mujoco_mjs_addMesh.load(self.lib)
        self.mjs_addHField = mujoco_mjs_addHField.load(self.lib)
        self.mjs_addSkin = mujoco_mjs_addSkin.load(self.lib)
        self.mjs_addTexture = mujoco_mjs_addTexture.load(self.lib)
        self.mjs_addMaterial = mujoco_mjs_addMaterial.load(self.lib)
        self.mjs_makeMesh = mujoco_mjs_makeMesh.load(self.lib)
        self.mjs_getSpec = mujoco_mjs_getSpec.load(self.lib)
        self.mjs_findSpec = mujoco_mjs_findSpec.load(self.lib)
        self.mjs_findBody = mujoco_mjs_findBody.load(self.lib)
        self.mjs_findElement = mujoco_mjs_findElement.load(self.lib)
        self.mjs_findChild = mujoco_mjs_findChild.load(self.lib)
        self.mjs_getParent = mujoco_mjs_getParent.load(self.lib)
        self.mjs_getFrame = mujoco_mjs_getFrame.load(self.lib)
        self.mjs_findFrame = mujoco_mjs_findFrame.load(self.lib)
        self.mjs_getDefault = mujoco_mjs_getDefault.load(self.lib)
        self.mjs_findDefault = mujoco_mjs_findDefault.load(self.lib)
        self.mjs_getSpecDefault = mujoco_mjs_getSpecDefault.load(self.lib)
        self.mjs_getId = mujoco_mjs_getId.load(self.lib)
        self.mjs_firstChild = mujoco_mjs_firstChild.load(self.lib)
        self.mjs_nextChild = mujoco_mjs_nextChild.load(self.lib)
        self.mjs_firstElement = mujoco_mjs_firstElement.load(self.lib)
        self.mjs_nextElement = mujoco_mjs_nextElement.load(self.lib)
        self.mjs_setName = mujoco_mjs_setName.load(self.lib)
        self.mjs_setBuffer = mujoco_mjs_setBuffer.load(self.lib)
        self.mjs_setString = mujoco_mjs_setString.load(self.lib)
        self.mjs_setStringVec = mujoco_mjs_setStringVec.load(self.lib)
        self.mjs_setInStringVec = mujoco_mjs_setInStringVec.load(self.lib)
        self.mjs_appendString = mujoco_mjs_appendString.load(self.lib)
        self.mjs_setInt = mujoco_mjs_setInt.load(self.lib)
        self.mjs_appendIntVec = mujoco_mjs_appendIntVec.load(self.lib)
        self.mjs_setFloat = mujoco_mjs_setFloat.load(self.lib)
        self.mjs_appendFloatVec = mujoco_mjs_appendFloatVec.load(self.lib)
        self.mjs_setDouble = mujoco_mjs_setDouble.load(self.lib)
        self.mjs_setPluginAttributes = mujoco_mjs_setPluginAttributes.load(self.lib)
        self.mjs_getName = mujoco_mjs_getName.load(self.lib)
        self.mjs_getString = mujoco_mjs_getString.load(self.lib)
        self.mjs_getDouble = mujoco_mjs_getDouble.load(self.lib)
        self.mjs_getPluginAttributes = mujoco_mjs_getPluginAttributes.load(self.lib)
        self.mjs_setDefault = mujoco_mjs_setDefault.load(self.lib)
        self.mjs_setFrame = mujoco_mjs_setFrame.load(self.lib)
        self.mjs_resolveOrientation = mujoco_mjs_resolveOrientation.load(self.lib)
        self.mjs_bodyToFrame = mujoco_mjs_bodyToFrame.load(self.lib)
        self.mjs_setUserValue = mujoco_mjs_setUserValue.load(self.lib)
        self.mjs_setUserValueWithCleanup = mujoco_mjs_setUserValueWithCleanup.load(self.lib)
        self.mjs_getUserValue = mujoco_mjs_getUserValue.load(self.lib)
        self.mjs_deleteUserValue = mujoco_mjs_deleteUserValue.load(self.lib)
        self.mjs_sensorDim = mujoco_mjs_sensorDim.load(self.lib)
        self.mjs_defaultSpec = mujoco_mjs_defaultSpec.load(self.lib)
        self.mjs_defaultOrientation = mujoco_mjs_defaultOrientation.load(self.lib)
        self.mjs_defaultBody = mujoco_mjs_defaultBody.load(self.lib)
        self.mjs_defaultFrame = mujoco_mjs_defaultFrame.load(self.lib)
        self.mjs_defaultJoint = mujoco_mjs_defaultJoint.load(self.lib)
        self.mjs_defaultGeom = mujoco_mjs_defaultGeom.load(self.lib)
        self.mjs_defaultSite = mujoco_mjs_defaultSite.load(self.lib)
        self.mjs_defaultCamera = mujoco_mjs_defaultCamera.load(self.lib)
        self.mjs_defaultLight = mujoco_mjs_defaultLight.load(self.lib)
        self.mjs_defaultFlex = mujoco_mjs_defaultFlex.load(self.lib)
        self.mjs_defaultMesh = mujoco_mjs_defaultMesh.load(self.lib)
        self.mjs_defaultHField = mujoco_mjs_defaultHField.load(self.lib)
        self.mjs_defaultSkin = mujoco_mjs_defaultSkin.load(self.lib)
        self.mjs_defaultTexture = mujoco_mjs_defaultTexture.load(self.lib)
        self.mjs_defaultMaterial = mujoco_mjs_defaultMaterial.load(self.lib)
        self.mjs_defaultPair = mujoco_mjs_defaultPair.load(self.lib)
        self.mjs_defaultEquality = mujoco_mjs_defaultEquality.load(self.lib)
        self.mjs_defaultTendon = mujoco_mjs_defaultTendon.load(self.lib)
        self.mjs_defaultActuator = mujoco_mjs_defaultActuator.load(self.lib)
        self.mjs_defaultSensor = mujoco_mjs_defaultSensor.load(self.lib)
        self.mjs_defaultNumeric = mujoco_mjs_defaultNumeric.load(self.lib)
        self.mjs_defaultText = mujoco_mjs_defaultText.load(self.lib)
        self.mjs_defaultTuple = mujoco_mjs_defaultTuple.load(self.lib)
        self.mjs_defaultKey = mujoco_mjs_defaultKey.load(self.lib)
        self.mjs_defaultPlugin = mujoco_mjs_defaultPlugin.load(self.lib)
        self.mjs_asBody = mujoco_mjs_asBody.load(self.lib)
        self.mjs_asGeom = mujoco_mjs_asGeom.load(self.lib)
        self.mjs_asJoint = mujoco_mjs_asJoint.load(self.lib)
        self.mjs_asSite = mujoco_mjs_asSite.load(self.lib)
        self.mjs_asCamera = mujoco_mjs_asCamera.load(self.lib)
        self.mjs_asLight = mujoco_mjs_asLight.load(self.lib)
        self.mjs_asFrame = mujoco_mjs_asFrame.load(self.lib)
        self.mjs_asActuator = mujoco_mjs_asActuator.load(self.lib)
        self.mjs_asSensor = mujoco_mjs_asSensor.load(self.lib)
        self.mjs_asFlex = mujoco_mjs_asFlex.load(self.lib)
        self.mjs_asPair = mujoco_mjs_asPair.load(self.lib)
        self.mjs_asEquality = mujoco_mjs_asEquality.load(self.lib)
        self.mjs_asExclude = mujoco_mjs_asExclude.load(self.lib)
        self.mjs_asTendon = mujoco_mjs_asTendon.load(self.lib)
        self.mjs_asNumeric = mujoco_mjs_asNumeric.load(self.lib)
        self.mjs_asText = mujoco_mjs_asText.load(self.lib)
        self.mjs_asTuple = mujoco_mjs_asTuple.load(self.lib)
        self.mjs_asKey = mujoco_mjs_asKey.load(self.lib)
        self.mjs_asMesh = mujoco_mjs_asMesh.load(self.lib)
        self.mjs_asHField = mujoco_mjs_asHField.load(self.lib)
        self.mjs_asSkin = mujoco_mjs_asSkin.load(self.lib)
        self.mjs_asTexture = mujoco_mjs_asTexture.load(self.lib)
        self.mjs_asMaterial = mujoco_mjs_asMaterial.load(self.lib)
        self.mjs_asPlugin = mujoco_mjs_asPlugin.load(self.lib)

