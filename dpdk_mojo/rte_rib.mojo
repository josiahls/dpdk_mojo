
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

alias size_t = ffi.c_ulong
alias wchar_t = UInt32
alias _Float128 = Float64
alias _Float32 = Float32
alias _Float64 = Float64
alias _Float32x = Float64
alias _Float64x = Float64
struct anonomous_record_997(Copyable & Movable):
	var quot : Int32

	var rem : Int32

alias div_t = anonomous_record_997

struct anonomous_record_998(Copyable & Movable):
	var quot : ffi.c_long

	var rem : ffi.c_long

alias ldiv_t = anonomous_record_998

struct anonomous_record_999(Copyable & Movable):
	var quot : ffi.c_long_long

	var rem : ffi.c_long_long

alias lldiv_t = anonomous_record_999

alias __ctype_get_mb_cur_max = fn () -> size_t
alias atof = fn (UnsafePointer[Int8]) -> Float64
alias atoi = fn (UnsafePointer[Int8]) -> Int32
alias atol = fn (UnsafePointer[Int8]) -> ffi.c_long
alias atoll = fn (UnsafePointer[Int8]) -> ffi.c_long_long
alias strtod = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> Float64
alias strtof = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> Float32
alias strtold = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> Float64
alias strtol = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_long
alias strtoul = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_ulong
alias strtoq = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_long_long
alias strtouq = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_ulong_long
alias strtoll = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_long_long
alias strtoull = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_ulong_long
alias l64a = fn (ffi.c_long) -> UnsafePointer[Int8]
alias a64l = fn (UnsafePointer[Int8]) -> ffi.c_long
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
struct anonomous_record_1000(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_1000

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

alias __bswap_16 = fn (Int16) -> Int16
alias __bswap_32 = fn (Int32) -> Int32
alias __bswap_64 = fn (ffi.c_long) -> ffi.c_long
alias __uint16_identity = fn (Int16) -> Int16
alias __uint32_identity = fn (Int32) -> Int32
alias __uint64_identity = fn (ffi.c_long) -> ffi.c_long
struct anonomous_record_1001(Copyable & Movable):
	var __val : InlineArray[ffi.c_ulong, 16]

alias __sigset_t = anonomous_record_1001

alias sigset_t = __sigset_t
struct timeval(Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_usec : ffi.c_long

struct timespec(Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_nsec : ffi.c_long

alias suseconds_t = __suseconds_t
alias __fd_mask = ffi.c_long
struct anonomous_record_1002(Copyable & Movable):
	var __fds_bits : InlineArray[__fd_mask, 16]

alias fd_set = anonomous_record_1002

alias fd_mask = __fd_mask
alias select = fn (Int32, UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[timeval]) -> Int32
alias pselect = fn (Int32, UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[timespec], UnsafePointer[__sigset_t]) -> Int32
alias blksize_t = __blksize_t
alias blkcnt_t = __blkcnt_t
alias fsblkcnt_t = __fsblkcnt_t
alias fsfilcnt_t = __fsfilcnt_t
struct anonomous_record_1003(Copyable & Movable):
	var __low : UInt32

	var __high : UInt32

alias anonomous_record_1004 = C_Union[ffi.c_ulong_long, anonomous_record_1003]

alias __atomic_wide_counter = anonomous_record_1004

struct __pthread_internal_list(Copyable & Movable):
	var __prev : UnsafePointer[__pthread_internal_list]

	var __next : UnsafePointer[__pthread_internal_list]

alias __pthread_list_t = __pthread_internal_list

struct __pthread_internal_slist(Copyable & Movable):
	var __next : UnsafePointer[__pthread_internal_slist]

alias __pthread_slist_t = __pthread_internal_slist

struct __pthread_mutex_s(Copyable & Movable):
	var __lock : Int32

	var __count : UInt32

	var __owner : Int32

	var __nusers : UInt32

	var __kind : Int32

	var __spins : Int32

	var __list : __pthread_internal_list

struct __pthread_rwlock_arch_t(Copyable & Movable):
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

struct __pthread_cond_s(Copyable & Movable):
	var __wseq : __atomic_wide_counter

	var __g1_start : __atomic_wide_counter

	var __g_refs : InlineArray[UInt32, 2]

	var __g_size : InlineArray[UInt32, 2]

	var __g1_orig_size : UInt32

	var __wrefs : UInt32

	var __g_signals : InlineArray[UInt32, 2]

alias __tss_t = UInt32
alias __thrd_t = ffi.c_ulong
struct anonomous_record_1005(Copyable & Movable):
	var __data : Int32

alias __once_flag = anonomous_record_1005

alias pthread_t = ffi.c_ulong
alias anonomous_record_1006 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_mutexattr_t = anonomous_record_1006

alias anonomous_record_1007 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_condattr_t = anonomous_record_1007

alias pthread_key_t = UInt32
alias pthread_once_t = Int32
alias pthread_attr_t = C_Union[InlineArray[Int8, 64], ffi.c_long]

alias anonomous_record_1008 = C_Union[__pthread_mutex_s, InlineArray[Int8, 48], ffi.c_long]

alias pthread_mutex_t = anonomous_record_1008

alias anonomous_record_1009 = C_Union[__pthread_cond_s, InlineArray[Int8, 48], ffi.c_long_long]

alias pthread_cond_t = anonomous_record_1009

alias anonomous_record_1010 = C_Union[__pthread_rwlock_arch_t, InlineArray[Int8, 56], ffi.c_long]

alias pthread_rwlock_t = anonomous_record_1010

alias anonomous_record_1011 = C_Union[InlineArray[Int8, 8], ffi.c_long]

alias pthread_rwlockattr_t = anonomous_record_1011

alias pthread_spinlock_t = Int32
alias anonomous_record_1012 = C_Union[InlineArray[Int8, 32], ffi.c_long]

alias pthread_barrier_t = anonomous_record_1012

alias anonomous_record_1013 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_barrierattr_t = anonomous_record_1013

alias random = fn () -> ffi.c_long
alias srandom = fn (UInt32) -> NoneType
alias initstate = fn (UInt32, UnsafePointer[Int8], size_t) -> UnsafePointer[Int8]
alias setstate = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
struct random_data(Copyable & Movable):
	var fptr : UnsafePointer[ffi.c_long]

	var rptr : UnsafePointer[ffi.c_long]

	var state : UnsafePointer[ffi.c_long]

	var rand_type : Int32

	var rand_deg : Int32

	var rand_sep : Int32

	var end_ptr : UnsafePointer[ffi.c_long]

alias random_r = fn (UnsafePointer[random_data], UnsafePointer[Int32]) -> Int32
alias srandom_r = fn (UInt32, UnsafePointer[random_data]) -> Int32
alias initstate_r = fn (UInt32, UnsafePointer[Int8], size_t, UnsafePointer[random_data]) -> Int32
alias setstate_r = fn (UnsafePointer[Int8], UnsafePointer[random_data]) -> Int32
alias rand = fn () -> Int32
alias srand = fn (UInt32) -> NoneType
alias rand_r = fn (UnsafePointer[UInt32]) -> Int32
alias drand48 = fn () -> Float64
alias erand48 = fn (UnsafePointer[UInt16]) -> Float64
alias lrand48 = fn () -> ffi.c_long
alias nrand48 = fn (UnsafePointer[UInt16]) -> ffi.c_long
alias mrand48 = fn () -> ffi.c_long
alias jrand48 = fn (UnsafePointer[UInt16]) -> ffi.c_long
alias srand48 = fn (ffi.c_long) -> NoneType
alias seed48 = fn (UnsafePointer[UInt16]) -> UnsafePointer[UInt16]
alias lcong48 = fn (UnsafePointer[UInt16]) -> NoneType
struct drand48_data(Copyable & Movable):
	var __x : InlineArray[UInt16, 3]

	var __old_x : InlineArray[UInt16, 3]

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
alias atexit = fn (fn (NoneType) -> NoneType) -> Int32
alias at_quick_exit = fn (fn (NoneType) -> NoneType) -> Int32
alias on_exit = fn (fn (Int32, OpaquePointer) -> NoneType, OpaquePointer) -> Int32
alias exit = fn (Int32) -> NoneType
alias quick_exit = fn (Int32) -> NoneType
alias _Exit = fn (Int32) -> NoneType
alias putenv = fn (UnsafePointer[Int8]) -> Int32
alias unsetenv = fn (UnsafePointer[Int8]) -> Int32
alias clearenv = fn () -> Int32
alias mktemp = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias mkstemp = fn (UnsafePointer[Int8]) -> Int32
alias mkstemps = fn (UnsafePointer[Int8], Int32) -> Int32
alias mkdtemp = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias system = fn (UnsafePointer[Int8]) -> Int32
alias realpath = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias __compar_fn_t = fn(read OpaquePointer, read OpaquePointer) -> Int32
alias bsearch = fn (OpaquePointer, OpaquePointer, size_t, size_t, __compar_fn_t) -> OpaquePointer
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
alias mblen = fn (UnsafePointer[Int8], size_t) -> Int32
alias mbtowc = fn (UnsafePointer[wchar_t], UnsafePointer[Int8], size_t) -> Int32
alias wctomb = fn (UnsafePointer[Int8], wchar_t) -> Int32
alias mbstowcs = fn (UnsafePointer[wchar_t], UnsafePointer[Int8], size_t) -> size_t
alias wcstombs = fn (UnsafePointer[Int8], UnsafePointer[wchar_t], size_t) -> size_t
alias rpmatch = fn (UnsafePointer[Int8]) -> Int32
alias getsubopt = fn (UnsafePointer[UnsafePointer[Int8]], UnsafePointer[UnsafePointer[Int8], mut=False], UnsafePointer[UnsafePointer[Int8]]) -> Int32
alias getloadavg = fn (UnsafePointer[Float64], Int32) -> Int32
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
alias __assert_fail = fn (UnsafePointer[Int8], UnsafePointer[Int8], UInt32, UnsafePointer[Int8]) -> NoneType
alias __assert_perror_fail = fn (Int32, UnsafePointer[Int8], UInt32, UnsafePointer[Int8]) -> NoneType
alias __assert = fn (UnsafePointer[Int8], UnsafePointer[Int8], Int32) -> NoneType
struct sched_param(Copyable & Movable):
	var sched_priority : Int32

alias __cpu_mask = ffi.c_ulong
struct anonomous_record_1014(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_1014

alias __sched_cpucount = fn (size_t, UnsafePointer[cpu_set_t]) -> Int32
alias __sched_cpualloc = fn (size_t) -> UnsafePointer[cpu_set_t]
alias __sched_cpufree = fn (UnsafePointer[cpu_set_t]) -> NoneType
alias sched_setparam = fn (__pid_t, UnsafePointer[sched_param]) -> Int32
alias sched_getparam = fn (__pid_t, UnsafePointer[sched_param]) -> Int32
alias sched_setscheduler = fn (__pid_t, Int32, UnsafePointer[sched_param]) -> Int32
alias sched_getscheduler = fn (__pid_t) -> Int32
alias sched_yield = fn () -> Int32
alias sched_get_priority_max = fn (Int32) -> Int32
alias sched_get_priority_min = fn (Int32) -> Int32
alias sched_rr_get_interval = fn (__pid_t, UnsafePointer[timespec]) -> Int32
alias unaligned_uint64_t = uint64_t
alias unaligned_uint32_t = uint32_t
alias unaligned_uint16_t = uint16_t
alias rte_is_aligned = fn (OpaquePointer, UInt32) -> Int32
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

alias rte_str_to_size = fn (UnsafePointer[Int8]) -> ffi.c_ulong
alias rte_size_to_str = fn (UnsafePointer[Int8], Int32, ffi.c_ulong, Bool, UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_exit = fn (Int32, UnsafePointer[Int8]) -> NoneType

alias RTE_RIB_GET_NXT_ALL = 0

alias RTE_RIB_GET_NXT_COVER = 1

struct rte_rib(Copyable & Movable):
	pass
struct rte_rib_node(Copyable & Movable):
	pass
struct rte_rib_conf(Copyable & Movable):

	var ext_sz : ffi.c_ulong

	var max_nodes : Int32

alias rte_rib_depth_to_mask = fn (UInt8) -> UInt32
alias rte_rib_lookup = fn (UnsafePointer[rte_rib], UInt32) -> UnsafePointer[rte_rib_node]
alias rte_rib_lookup_parent = fn (UnsafePointer[rte_rib_node]) -> UnsafePointer[rte_rib_node]
alias rte_rib_lookup_exact = fn (UnsafePointer[rte_rib], UInt32, UInt8) -> UnsafePointer[rte_rib_node]
alias rte_rib_get_nxt = fn (UnsafePointer[rte_rib], UInt32, UInt8, UnsafePointer[rte_rib_node], Int32) -> UnsafePointer[rte_rib_node]
alias rte_rib_remove = fn (UnsafePointer[rte_rib], UInt32, UInt8) -> NoneType
alias rte_rib_insert = fn (UnsafePointer[rte_rib], UInt32, UInt8) -> UnsafePointer[rte_rib_node]
alias rte_rib_get_ip = fn (UnsafePointer[rte_rib_node], UnsafePointer[UInt32]) -> Int32
alias rte_rib_get_depth = fn (UnsafePointer[rte_rib_node], UnsafePointer[UInt8]) -> Int32
alias rte_rib_get_ext = fn (UnsafePointer[rte_rib_node]) -> OpaquePointer
alias rte_rib_get_nh = fn (UnsafePointer[rte_rib_node], UnsafePointer[ffi.c_ulong]) -> Int32
alias rte_rib_set_nh = fn (UnsafePointer[rte_rib_node], ffi.c_ulong) -> Int32
alias rte_rib_free = fn (UnsafePointer[rte_rib]) -> NoneType
alias rte_rib_create = fn (UnsafePointer[Int8], Int32, UnsafePointer[rte_rib_conf]) -> UnsafePointer[rte_rib]
alias rte_rib_find_existing = fn (UnsafePointer[Int8]) -> UnsafePointer[rte_rib]


alias rte_rib_atof = ExternalFunction['atof', atof]
alias rte_rib_atoi = ExternalFunction['atoi', atoi]
alias rte_rib_atol = ExternalFunction['atol', atol]
alias rte_rib_atoll = ExternalFunction['atoll', atoll]
alias rte_rib_strtod = ExternalFunction['strtod', strtod]
alias rte_rib_strtof = ExternalFunction['strtof', strtof]
alias rte_rib_strtold = ExternalFunction['strtold', strtold]
alias rte_rib_strtol = ExternalFunction['strtol', strtol]
alias rte_rib_strtoul = ExternalFunction['strtoul', strtoul]
alias rte_rib_strtoq = ExternalFunction['strtoq', strtoq]
alias rte_rib_strtouq = ExternalFunction['strtouq', strtouq]
alias rte_rib_strtoll = ExternalFunction['strtoll', strtoll]
alias rte_rib_strtoull = ExternalFunction['strtoull', strtoull]
alias rte_rib_l64a = ExternalFunction['l64a', l64a]
alias rte_rib_a64l = ExternalFunction['a64l', a64l]
alias rte_rib_select = ExternalFunction['select', select]
alias rte_rib_pselect = ExternalFunction['pselect', pselect]
alias rte_rib_random = ExternalFunction['random', random]
alias rte_rib_srandom = ExternalFunction['srandom', srandom]
alias rte_rib_initstate = ExternalFunction['initstate', initstate]
alias rte_rib_setstate = ExternalFunction['setstate', setstate]
alias rte_rib_random_r = ExternalFunction['random_r', random_r]
alias rte_rib_srandom_r = ExternalFunction['srandom_r', srandom_r]
alias rte_rib_initstate_r = ExternalFunction['initstate_r', initstate_r]
alias rte_rib_setstate_r = ExternalFunction['setstate_r', setstate_r]
alias rte_rib_rand = ExternalFunction['rand', rand]
alias rte_rib_srand = ExternalFunction['srand', srand]
alias rte_rib_rand_r = ExternalFunction['rand_r', rand_r]
alias rte_rib_drand48 = ExternalFunction['drand48', drand48]
alias rte_rib_erand48 = ExternalFunction['erand48', erand48]
alias rte_rib_lrand48 = ExternalFunction['lrand48', lrand48]
alias rte_rib_nrand48 = ExternalFunction['nrand48', nrand48]
alias rte_rib_mrand48 = ExternalFunction['mrand48', mrand48]
alias rte_rib_jrand48 = ExternalFunction['jrand48', jrand48]
alias rte_rib_srand48 = ExternalFunction['srand48', srand48]
alias rte_rib_seed48 = ExternalFunction['seed48', seed48]
alias rte_rib_lcong48 = ExternalFunction['lcong48', lcong48]
alias rte_rib_drand48_r = ExternalFunction['drand48_r', drand48_r]
alias rte_rib_erand48_r = ExternalFunction['erand48_r', erand48_r]
alias rte_rib_lrand48_r = ExternalFunction['lrand48_r', lrand48_r]
alias rte_rib_nrand48_r = ExternalFunction['nrand48_r', nrand48_r]
alias rte_rib_mrand48_r = ExternalFunction['mrand48_r', mrand48_r]
alias rte_rib_jrand48_r = ExternalFunction['jrand48_r', jrand48_r]
alias rte_rib_srand48_r = ExternalFunction['srand48_r', srand48_r]
alias rte_rib_seed48_r = ExternalFunction['seed48_r', seed48_r]
alias rte_rib_lcong48_r = ExternalFunction['lcong48_r', lcong48_r]
alias rte_rib_malloc = ExternalFunction['malloc', malloc]
alias rte_rib_calloc = ExternalFunction['calloc', calloc]
alias rte_rib_realloc = ExternalFunction['realloc', realloc]
alias rte_rib_free = ExternalFunction['free', free]
alias rte_rib_reallocarray = ExternalFunction['reallocarray', reallocarray]
alias rte_rib_alloca = ExternalFunction['alloca', alloca]
alias rte_rib_valloc = ExternalFunction['valloc', valloc]
alias rte_rib_posix_memalign = ExternalFunction['posix_memalign', posix_memalign]
alias rte_rib_aligned_alloc = ExternalFunction['aligned_alloc', aligned_alloc]
alias rte_rib_atexit = ExternalFunction['atexit', atexit]
alias rte_rib_at_quick_exit = ExternalFunction['at_quick_exit', at_quick_exit]
alias rte_rib_on_exit = ExternalFunction['on_exit', on_exit]
alias rte_rib_exit = ExternalFunction['exit', exit]
alias rte_rib_quick_exit = ExternalFunction['quick_exit', quick_exit]
alias rte_rib_putenv = ExternalFunction['putenv', putenv]
alias rte_rib_unsetenv = ExternalFunction['unsetenv', unsetenv]
alias rte_rib_clearenv = ExternalFunction['clearenv', clearenv]
alias rte_rib_mktemp = ExternalFunction['mktemp', mktemp]
alias rte_rib_mkstemp = ExternalFunction['mkstemp', mkstemp]
alias rte_rib_mkstemps = ExternalFunction['mkstemps', mkstemps]
alias rte_rib_mkdtemp = ExternalFunction['mkdtemp', mkdtemp]
alias rte_rib_system = ExternalFunction['system', system]
alias rte_rib_realpath = ExternalFunction['realpath', realpath]
alias rte_rib_bsearch = ExternalFunction['bsearch', bsearch]
alias rte_rib_qsort = ExternalFunction['qsort', qsort]
alias rte_rib_abs = ExternalFunction['abs', abs]
alias rte_rib_labs = ExternalFunction['labs', labs]
alias rte_rib_llabs = ExternalFunction['llabs', llabs]
alias rte_rib_div = ExternalFunction['div', div]
alias rte_rib_ldiv = ExternalFunction['ldiv', ldiv]
alias rte_rib_lldiv = ExternalFunction['lldiv', lldiv]
alias rte_rib_ecvt = ExternalFunction['ecvt', ecvt]
alias rte_rib_fcvt = ExternalFunction['fcvt', fcvt]
alias rte_rib_gcvt = ExternalFunction['gcvt', gcvt]
alias rte_rib_qecvt = ExternalFunction['qecvt', qecvt]
alias rte_rib_qfcvt = ExternalFunction['qfcvt', qfcvt]
alias rte_rib_qgcvt = ExternalFunction['qgcvt', qgcvt]
alias rte_rib_ecvt_r = ExternalFunction['ecvt_r', ecvt_r]
alias rte_rib_fcvt_r = ExternalFunction['fcvt_r', fcvt_r]
alias rte_rib_qecvt_r = ExternalFunction['qecvt_r', qecvt_r]
alias rte_rib_qfcvt_r = ExternalFunction['qfcvt_r', qfcvt_r]
alias rte_rib_mblen = ExternalFunction['mblen', mblen]
alias rte_rib_mbtowc = ExternalFunction['mbtowc', mbtowc]
alias rte_rib_wctomb = ExternalFunction['wctomb', wctomb]
alias rte_rib_mbstowcs = ExternalFunction['mbstowcs', mbstowcs]
alias rte_rib_wcstombs = ExternalFunction['wcstombs', wcstombs]
alias rte_rib_rpmatch = ExternalFunction['rpmatch', rpmatch]
alias rte_rib_getsubopt = ExternalFunction['getsubopt', getsubopt]
alias rte_rib_getloadavg = ExternalFunction['getloadavg', getloadavg]
alias rte_rib_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_rib_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_rib_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_rib_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_rib_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_rib_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_rib_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_rib_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_rib_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_rib_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_rib_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_rib_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_rib_rte_rib_depth_to_mask = ExternalFunction['rte_rib_depth_to_mask', rte_rib_depth_to_mask]
alias rte_rib_rte_rib_lookup = ExternalFunction['rte_rib_lookup', rte_rib_lookup]
alias rte_rib_rte_rib_lookup_parent = ExternalFunction['rte_rib_lookup_parent', rte_rib_lookup_parent]
alias rte_rib_rte_rib_lookup_exact = ExternalFunction['rte_rib_lookup_exact', rte_rib_lookup_exact]
alias rte_rib_rte_rib_get_nxt = ExternalFunction['rte_rib_get_nxt', rte_rib_get_nxt]
alias rte_rib_rte_rib_remove = ExternalFunction['rte_rib_remove', rte_rib_remove]
alias rte_rib_rte_rib_insert = ExternalFunction['rte_rib_insert', rte_rib_insert]
alias rte_rib_rte_rib_get_ip = ExternalFunction['rte_rib_get_ip', rte_rib_get_ip]
alias rte_rib_rte_rib_get_depth = ExternalFunction['rte_rib_get_depth', rte_rib_get_depth]
alias rte_rib_rte_rib_get_ext = ExternalFunction['rte_rib_get_ext', rte_rib_get_ext]
alias rte_rib_rte_rib_get_nh = ExternalFunction['rte_rib_get_nh', rte_rib_get_nh]
alias rte_rib_rte_rib_set_nh = ExternalFunction['rte_rib_set_nh', rte_rib_set_nh]
alias rte_rib_rte_rib_free = ExternalFunction['rte_rib_free', rte_rib_free]
alias rte_rib_rte_rib_create = ExternalFunction['rte_rib_create', rte_rib_create]
alias rte_rib_rte_rib_find_existing = ExternalFunction['rte_rib_find_existing', rte_rib_find_existing]

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
struct rte_rib(Copyable, Movable):
    var lib: DLHandle
    
    var atof: rte_rib_atof.type
    var atoi: rte_rib_atoi.type
    var atol: rte_rib_atol.type
    var atoll: rte_rib_atoll.type
    var strtod: rte_rib_strtod.type
    var strtof: rte_rib_strtof.type
    var strtold: rte_rib_strtold.type
    var strtol: rte_rib_strtol.type
    var strtoul: rte_rib_strtoul.type
    var strtoq: rte_rib_strtoq.type
    var strtouq: rte_rib_strtouq.type
    var strtoll: rte_rib_strtoll.type
    var strtoull: rte_rib_strtoull.type
    var l64a: rte_rib_l64a.type
    var a64l: rte_rib_a64l.type
    var select: rte_rib_select.type
    var pselect: rte_rib_pselect.type
    var random: rte_rib_random.type
    var srandom: rte_rib_srandom.type
    var initstate: rte_rib_initstate.type
    var setstate: rte_rib_setstate.type
    var random_r: rte_rib_random_r.type
    var srandom_r: rte_rib_srandom_r.type
    var initstate_r: rte_rib_initstate_r.type
    var setstate_r: rte_rib_setstate_r.type
    var rand: rte_rib_rand.type
    var srand: rte_rib_srand.type
    var rand_r: rte_rib_rand_r.type
    var drand48: rte_rib_drand48.type
    var erand48: rte_rib_erand48.type
    var lrand48: rte_rib_lrand48.type
    var nrand48: rte_rib_nrand48.type
    var mrand48: rte_rib_mrand48.type
    var jrand48: rte_rib_jrand48.type
    var srand48: rte_rib_srand48.type
    var seed48: rte_rib_seed48.type
    var lcong48: rte_rib_lcong48.type
    var drand48_r: rte_rib_drand48_r.type
    var erand48_r: rte_rib_erand48_r.type
    var lrand48_r: rte_rib_lrand48_r.type
    var nrand48_r: rte_rib_nrand48_r.type
    var mrand48_r: rte_rib_mrand48_r.type
    var jrand48_r: rte_rib_jrand48_r.type
    var srand48_r: rte_rib_srand48_r.type
    var seed48_r: rte_rib_seed48_r.type
    var lcong48_r: rte_rib_lcong48_r.type
    var malloc: rte_rib_malloc.type
    var calloc: rte_rib_calloc.type
    var realloc: rte_rib_realloc.type
    var free: rte_rib_free.type
    var reallocarray: rte_rib_reallocarray.type
    var alloca: rte_rib_alloca.type
    var valloc: rte_rib_valloc.type
    var posix_memalign: rte_rib_posix_memalign.type
    var aligned_alloc: rte_rib_aligned_alloc.type
    var atexit: rte_rib_atexit.type
    var at_quick_exit: rte_rib_at_quick_exit.type
    var on_exit: rte_rib_on_exit.type
    var exit: rte_rib_exit.type
    var quick_exit: rte_rib_quick_exit.type
    var putenv: rte_rib_putenv.type
    var unsetenv: rte_rib_unsetenv.type
    var clearenv: rte_rib_clearenv.type
    var mktemp: rte_rib_mktemp.type
    var mkstemp: rte_rib_mkstemp.type
    var mkstemps: rte_rib_mkstemps.type
    var mkdtemp: rte_rib_mkdtemp.type
    var system: rte_rib_system.type
    var realpath: rte_rib_realpath.type
    var bsearch: rte_rib_bsearch.type
    var qsort: rte_rib_qsort.type
    var abs: rte_rib_abs.type
    var labs: rte_rib_labs.type
    var llabs: rte_rib_llabs.type
    var div: rte_rib_div.type
    var ldiv: rte_rib_ldiv.type
    var lldiv: rte_rib_lldiv.type
    var ecvt: rte_rib_ecvt.type
    var fcvt: rte_rib_fcvt.type
    var gcvt: rte_rib_gcvt.type
    var qecvt: rte_rib_qecvt.type
    var qfcvt: rte_rib_qfcvt.type
    var qgcvt: rte_rib_qgcvt.type
    var ecvt_r: rte_rib_ecvt_r.type
    var fcvt_r: rte_rib_fcvt_r.type
    var qecvt_r: rte_rib_qecvt_r.type
    var qfcvt_r: rte_rib_qfcvt_r.type
    var mblen: rte_rib_mblen.type
    var mbtowc: rte_rib_mbtowc.type
    var wctomb: rte_rib_wctomb.type
    var mbstowcs: rte_rib_mbstowcs.type
    var wcstombs: rte_rib_wcstombs.type
    var rpmatch: rte_rib_rpmatch.type
    var getsubopt: rte_rib_getsubopt.type
    var getloadavg: rte_rib_getloadavg.type
    var sched_setparam: rte_rib_sched_setparam.type
    var sched_getparam: rte_rib_sched_getparam.type
    var sched_setscheduler: rte_rib_sched_setscheduler.type
    var sched_getscheduler: rte_rib_sched_getscheduler.type
    var sched_yield: rte_rib_sched_yield.type
    var sched_get_priority_max: rte_rib_sched_get_priority_max.type
    var sched_get_priority_min: rte_rib_sched_get_priority_min.type
    var sched_rr_get_interval: rte_rib_sched_rr_get_interval.type
    var rte_is_aligned: rte_rib_rte_is_aligned.type
    var rte_str_to_size: rte_rib_rte_str_to_size.type
    var rte_size_to_str: rte_rib_rte_size_to_str.type
    var rte_exit: rte_rib_rte_exit.type
    var rte_rib_depth_to_mask: rte_rib_rte_rib_depth_to_mask.type
    var rte_rib_lookup: rte_rib_rte_rib_lookup.type
    var rte_rib_lookup_parent: rte_rib_rte_rib_lookup_parent.type
    var rte_rib_lookup_exact: rte_rib_rte_rib_lookup_exact.type
    var rte_rib_get_nxt: rte_rib_rte_rib_get_nxt.type
    var rte_rib_remove: rte_rib_rte_rib_remove.type
    var rte_rib_insert: rte_rib_rte_rib_insert.type
    var rte_rib_get_ip: rte_rib_rte_rib_get_ip.type
    var rte_rib_get_depth: rte_rib_rte_rib_get_depth.type
    var rte_rib_get_ext: rte_rib_rte_rib_get_ext.type
    var rte_rib_get_nh: rte_rib_rte_rib_get_nh.type
    var rte_rib_set_nh: rte_rib_rte_rib_set_nh.type
    var rte_rib_free: rte_rib_rte_rib_free.type
    var rte_rib_create: rte_rib_rte_rib_create.type
    var rte_rib_find_existing: rte_rib_rte_rib_find_existing.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_rib.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_rib from", 'librte_rib.so', ":\n", e)
            )

    
        self.atof = rte_rib_atof.load(self.lib)
        self.atoi = rte_rib_atoi.load(self.lib)
        self.atol = rte_rib_atol.load(self.lib)
        self.atoll = rte_rib_atoll.load(self.lib)
        self.strtod = rte_rib_strtod.load(self.lib)
        self.strtof = rte_rib_strtof.load(self.lib)
        self.strtold = rte_rib_strtold.load(self.lib)
        self.strtol = rte_rib_strtol.load(self.lib)
        self.strtoul = rte_rib_strtoul.load(self.lib)
        self.strtoq = rte_rib_strtoq.load(self.lib)
        self.strtouq = rte_rib_strtouq.load(self.lib)
        self.strtoll = rte_rib_strtoll.load(self.lib)
        self.strtoull = rte_rib_strtoull.load(self.lib)
        self.l64a = rte_rib_l64a.load(self.lib)
        self.a64l = rte_rib_a64l.load(self.lib)
        self.select = rte_rib_select.load(self.lib)
        self.pselect = rte_rib_pselect.load(self.lib)
        self.random = rte_rib_random.load(self.lib)
        self.srandom = rte_rib_srandom.load(self.lib)
        self.initstate = rte_rib_initstate.load(self.lib)
        self.setstate = rte_rib_setstate.load(self.lib)
        self.random_r = rte_rib_random_r.load(self.lib)
        self.srandom_r = rte_rib_srandom_r.load(self.lib)
        self.initstate_r = rte_rib_initstate_r.load(self.lib)
        self.setstate_r = rte_rib_setstate_r.load(self.lib)
        self.rand = rte_rib_rand.load(self.lib)
        self.srand = rte_rib_srand.load(self.lib)
        self.rand_r = rte_rib_rand_r.load(self.lib)
        self.drand48 = rte_rib_drand48.load(self.lib)
        self.erand48 = rte_rib_erand48.load(self.lib)
        self.lrand48 = rte_rib_lrand48.load(self.lib)
        self.nrand48 = rte_rib_nrand48.load(self.lib)
        self.mrand48 = rte_rib_mrand48.load(self.lib)
        self.jrand48 = rte_rib_jrand48.load(self.lib)
        self.srand48 = rte_rib_srand48.load(self.lib)
        self.seed48 = rte_rib_seed48.load(self.lib)
        self.lcong48 = rte_rib_lcong48.load(self.lib)
        self.drand48_r = rte_rib_drand48_r.load(self.lib)
        self.erand48_r = rte_rib_erand48_r.load(self.lib)
        self.lrand48_r = rte_rib_lrand48_r.load(self.lib)
        self.nrand48_r = rte_rib_nrand48_r.load(self.lib)
        self.mrand48_r = rte_rib_mrand48_r.load(self.lib)
        self.jrand48_r = rte_rib_jrand48_r.load(self.lib)
        self.srand48_r = rte_rib_srand48_r.load(self.lib)
        self.seed48_r = rte_rib_seed48_r.load(self.lib)
        self.lcong48_r = rte_rib_lcong48_r.load(self.lib)
        self.malloc = rte_rib_malloc.load(self.lib)
        self.calloc = rte_rib_calloc.load(self.lib)
        self.realloc = rte_rib_realloc.load(self.lib)
        self.free = rte_rib_free.load(self.lib)
        self.reallocarray = rte_rib_reallocarray.load(self.lib)
        self.alloca = rte_rib_alloca.load(self.lib)
        self.valloc = rte_rib_valloc.load(self.lib)
        self.posix_memalign = rte_rib_posix_memalign.load(self.lib)
        self.aligned_alloc = rte_rib_aligned_alloc.load(self.lib)
        self.atexit = rte_rib_atexit.load(self.lib)
        self.at_quick_exit = rte_rib_at_quick_exit.load(self.lib)
        self.on_exit = rte_rib_on_exit.load(self.lib)
        self.exit = rte_rib_exit.load(self.lib)
        self.quick_exit = rte_rib_quick_exit.load(self.lib)
        self.putenv = rte_rib_putenv.load(self.lib)
        self.unsetenv = rte_rib_unsetenv.load(self.lib)
        self.clearenv = rte_rib_clearenv.load(self.lib)
        self.mktemp = rte_rib_mktemp.load(self.lib)
        self.mkstemp = rte_rib_mkstemp.load(self.lib)
        self.mkstemps = rte_rib_mkstemps.load(self.lib)
        self.mkdtemp = rte_rib_mkdtemp.load(self.lib)
        self.system = rte_rib_system.load(self.lib)
        self.realpath = rte_rib_realpath.load(self.lib)
        self.bsearch = rte_rib_bsearch.load(self.lib)
        self.qsort = rte_rib_qsort.load(self.lib)
        self.abs = rte_rib_abs.load(self.lib)
        self.labs = rte_rib_labs.load(self.lib)
        self.llabs = rte_rib_llabs.load(self.lib)
        self.div = rte_rib_div.load(self.lib)
        self.ldiv = rte_rib_ldiv.load(self.lib)
        self.lldiv = rte_rib_lldiv.load(self.lib)
        self.ecvt = rte_rib_ecvt.load(self.lib)
        self.fcvt = rte_rib_fcvt.load(self.lib)
        self.gcvt = rte_rib_gcvt.load(self.lib)
        self.qecvt = rte_rib_qecvt.load(self.lib)
        self.qfcvt = rte_rib_qfcvt.load(self.lib)
        self.qgcvt = rte_rib_qgcvt.load(self.lib)
        self.ecvt_r = rte_rib_ecvt_r.load(self.lib)
        self.fcvt_r = rte_rib_fcvt_r.load(self.lib)
        self.qecvt_r = rte_rib_qecvt_r.load(self.lib)
        self.qfcvt_r = rte_rib_qfcvt_r.load(self.lib)
        self.mblen = rte_rib_mblen.load(self.lib)
        self.mbtowc = rte_rib_mbtowc.load(self.lib)
        self.wctomb = rte_rib_wctomb.load(self.lib)
        self.mbstowcs = rte_rib_mbstowcs.load(self.lib)
        self.wcstombs = rte_rib_wcstombs.load(self.lib)
        self.rpmatch = rte_rib_rpmatch.load(self.lib)
        self.getsubopt = rte_rib_getsubopt.load(self.lib)
        self.getloadavg = rte_rib_getloadavg.load(self.lib)
        self.sched_setparam = rte_rib_sched_setparam.load(self.lib)
        self.sched_getparam = rte_rib_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_rib_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_rib_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_rib_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_rib_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_rib_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_rib_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_rib_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_rib_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_rib_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_rib_rte_exit.load(self.lib)
        self.rte_rib_depth_to_mask = rte_rib_rte_rib_depth_to_mask.load(self.lib)
        self.rte_rib_lookup = rte_rib_rte_rib_lookup.load(self.lib)
        self.rte_rib_lookup_parent = rte_rib_rte_rib_lookup_parent.load(self.lib)
        self.rte_rib_lookup_exact = rte_rib_rte_rib_lookup_exact.load(self.lib)
        self.rte_rib_get_nxt = rte_rib_rte_rib_get_nxt.load(self.lib)
        self.rte_rib_remove = rte_rib_rte_rib_remove.load(self.lib)
        self.rte_rib_insert = rte_rib_rte_rib_insert.load(self.lib)
        self.rte_rib_get_ip = rte_rib_rte_rib_get_ip.load(self.lib)
        self.rte_rib_get_depth = rte_rib_rte_rib_get_depth.load(self.lib)
        self.rte_rib_get_ext = rte_rib_rte_rib_get_ext.load(self.lib)
        self.rte_rib_get_nh = rte_rib_rte_rib_get_nh.load(self.lib)
        self.rte_rib_set_nh = rte_rib_rte_rib_set_nh.load(self.lib)
        self.rte_rib_free = rte_rib_rte_rib_free.load(self.lib)
        self.rte_rib_create = rte_rib_rte_rib_create.load(self.lib)
        self.rte_rib_find_existing = rte_rib_rte_rib_find_existing.load(self.lib)

