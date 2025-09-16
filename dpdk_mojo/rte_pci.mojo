
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

alias size_t = ffi.c_ulong
alias va_list = __builtin_va_list
alias __gnuc_va_list = __builtin_va_list
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
struct anonomous_record_236(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_236

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
alias anonomous_record_237 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_238(Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_237

alias __mbstate_t = anonomous_record_238

struct _G_fpos_t(Copyable & Movable):
	var __pos : ffi.c_long

	var __state : __mbstate_t

alias __fpos_t = _G_fpos_t

struct _G_fpos64_t(Copyable & Movable):
	var __pos : ffi.c_long

	var __state : __mbstate_t

alias __fpos64_t = _G_fpos64_t

struct _IO_FILE(Copyable & Movable):
	pass
alias __FILE = _IO_FILE

alias FILE = _IO_FILE

struct _IO_marker(Copyable & Movable):
	pass
struct _IO_codecvt(Copyable & Movable):
	pass
struct _IO_wide_data(Copyable & Movable):
	pass
alias _IO_lock_t = NoneType
alias off_t = __off_t
alias ssize_t = __ssize_t
alias fpos_t = __fpos_t
alias stdin = UnsafePointer[FILE]
alias stdout = UnsafePointer[FILE]
alias stderr = UnsafePointer[FILE]
alias remove = fn (UnsafePointer[Int8]) -> ffi.c_int
alias rename = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> ffi.c_int
alias renameat = fn (ffi.c_int, UnsafePointer[Int8], ffi.c_int, UnsafePointer[Int8]) -> ffi.c_int
alias fclose = fn (UnsafePointer[FILE]) -> ffi.c_int
alias tmpfile = fn () -> UnsafePointer[FILE]
alias tmpnam = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias tmpnam_r = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias tempnam = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias fflush = fn (UnsafePointer[FILE]) -> ffi.c_int
alias fflush_unlocked = fn (UnsafePointer[FILE]) -> ffi.c_int
alias fopen = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[FILE]
alias freopen = fn (UnsafePointer[Int8], UnsafePointer[Int8], UnsafePointer[FILE]) -> UnsafePointer[FILE]
alias fdopen = fn (ffi.c_int, UnsafePointer[Int8]) -> UnsafePointer[FILE]
alias fmemopen = fn (OpaquePointer, size_t, UnsafePointer[Int8]) -> UnsafePointer[FILE]
alias open_memstream = fn (UnsafePointer[UnsafePointer[Int8]], UnsafePointer[size_t]) -> UnsafePointer[FILE]
alias setbuf = fn (UnsafePointer[FILE], UnsafePointer[Int8]) -> NoneType
alias setvbuf = fn (UnsafePointer[FILE], UnsafePointer[Int8], ffi.c_int, size_t) -> ffi.c_int
alias setbuffer = fn (UnsafePointer[FILE], UnsafePointer[Int8], size_t) -> NoneType
alias setlinebuf = fn (UnsafePointer[FILE]) -> NoneType
alias fprintf = fn (UnsafePointer[FILE], UnsafePointer[Int8]) -> ffi.c_int
alias printf = fn (UnsafePointer[Int8]) -> ffi.c_int
alias sprintf = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> ffi.c_int
alias vfprintf = fn (UnsafePointer[FILE], UnsafePointer[Int8], __builtin_va_list) -> ffi.c_int
alias vprintf = fn (UnsafePointer[Int8], __builtin_va_list) -> ffi.c_int
alias vsprintf = fn (UnsafePointer[Int8], UnsafePointer[Int8], __builtin_va_list) -> ffi.c_int
alias snprintf = fn (UnsafePointer[Int8], ffi.c_ulong, UnsafePointer[Int8]) -> ffi.c_int
alias vsnprintf = fn (UnsafePointer[Int8], ffi.c_ulong, UnsafePointer[Int8], __builtin_va_list) -> ffi.c_int
alias vdprintf = fn (ffi.c_int, UnsafePointer[Int8], __gnuc_va_list) -> ffi.c_int
alias dprintf = fn (ffi.c_int, UnsafePointer[Int8]) -> ffi.c_int
alias fscanf = fn (UnsafePointer[FILE], UnsafePointer[Int8]) -> ffi.c_int
alias scanf = fn (UnsafePointer[Int8]) -> ffi.c_int
alias sscanf = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> ffi.c_int
alias _Float128 = Float64
alias _Float32 = Float32
alias _Float64 = Float64
alias _Float32x = Float64
alias _Float64x = Float64
alias vfscanf = fn (UnsafePointer[FILE], UnsafePointer[Int8], __builtin_va_list) -> ffi.c_int
alias vscanf = fn (UnsafePointer[Int8], __builtin_va_list) -> ffi.c_int
alias vsscanf = fn (UnsafePointer[Int8], UnsafePointer[Int8], __builtin_va_list) -> ffi.c_int
alias fgetc = fn (UnsafePointer[FILE]) -> ffi.c_int
alias getc = fn (UnsafePointer[FILE]) -> ffi.c_int
alias getchar = fn () -> ffi.c_int
alias getc_unlocked = fn (UnsafePointer[FILE]) -> ffi.c_int
alias getchar_unlocked = fn () -> ffi.c_int
alias fgetc_unlocked = fn (UnsafePointer[FILE]) -> ffi.c_int
alias fputc = fn (ffi.c_int, UnsafePointer[FILE]) -> ffi.c_int
alias putc = fn (ffi.c_int, UnsafePointer[FILE]) -> ffi.c_int
alias putchar = fn (ffi.c_int) -> ffi.c_int
alias fputc_unlocked = fn (ffi.c_int, UnsafePointer[FILE]) -> ffi.c_int
alias putc_unlocked = fn (ffi.c_int, UnsafePointer[FILE]) -> ffi.c_int
alias putchar_unlocked = fn (ffi.c_int) -> ffi.c_int
alias getw = fn (UnsafePointer[FILE]) -> ffi.c_int
alias putw = fn (ffi.c_int, UnsafePointer[FILE]) -> ffi.c_int
alias fgets = fn (UnsafePointer[Int8], ffi.c_int, UnsafePointer[FILE]) -> UnsafePointer[Int8]
alias __getdelim = fn (UnsafePointer[UnsafePointer[Int8]], UnsafePointer[size_t], ffi.c_int, UnsafePointer[FILE]) -> __ssize_t
alias getdelim = fn (UnsafePointer[UnsafePointer[Int8]], UnsafePointer[size_t], ffi.c_int, UnsafePointer[FILE]) -> __ssize_t
alias getline = fn (UnsafePointer[UnsafePointer[Int8]], UnsafePointer[size_t], UnsafePointer[FILE]) -> __ssize_t
alias fputs = fn (UnsafePointer[Int8], UnsafePointer[FILE]) -> ffi.c_int
alias puts = fn (UnsafePointer[Int8]) -> ffi.c_int
alias ungetc = fn (ffi.c_int, UnsafePointer[FILE]) -> ffi.c_int
alias fread = fn (OpaquePointer, ffi.c_ulong, ffi.c_ulong, UnsafePointer[FILE]) -> ffi.c_ulong
alias fwrite = fn (OpaquePointer, ffi.c_ulong, ffi.c_ulong, UnsafePointer[FILE]) -> ffi.c_ulong
alias fread_unlocked = fn (OpaquePointer, size_t, size_t, UnsafePointer[FILE]) -> size_t
alias fwrite_unlocked = fn (OpaquePointer, size_t, size_t, UnsafePointer[FILE]) -> size_t
alias fseek = fn (UnsafePointer[FILE], ffi.c_long, ffi.c_int) -> ffi.c_int
alias ftell = fn (UnsafePointer[FILE]) -> ffi.c_long
alias rewind = fn (UnsafePointer[FILE]) -> NoneType
alias fseeko = fn (UnsafePointer[FILE], __off_t, ffi.c_int) -> ffi.c_int
alias ftello = fn (UnsafePointer[FILE]) -> __off_t
alias fgetpos = fn (UnsafePointer[FILE], UnsafePointer[fpos_t]) -> ffi.c_int
alias fsetpos = fn (UnsafePointer[FILE], UnsafePointer[fpos_t]) -> ffi.c_int
alias clearerr = fn (UnsafePointer[FILE]) -> NoneType
alias feof = fn (UnsafePointer[FILE]) -> ffi.c_int
alias ferror = fn (UnsafePointer[FILE]) -> ffi.c_int
alias clearerr_unlocked = fn (UnsafePointer[FILE]) -> NoneType
alias feof_unlocked = fn (UnsafePointer[FILE]) -> ffi.c_int
alias ferror_unlocked = fn (UnsafePointer[FILE]) -> ffi.c_int
alias perror = fn (UnsafePointer[Int8]) -> NoneType
alias fileno = fn (UnsafePointer[FILE]) -> ffi.c_int
alias fileno_unlocked = fn (UnsafePointer[FILE]) -> ffi.c_int
alias pclose = fn (UnsafePointer[FILE]) -> ffi.c_int
alias popen = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[FILE]
alias ctermid = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias flockfile = fn (UnsafePointer[FILE]) -> NoneType
alias ftrylockfile = fn (UnsafePointer[FILE]) -> ffi.c_int
alias funlockfile = fn (UnsafePointer[FILE]) -> NoneType
alias __uflow = fn (UnsafePointer[FILE]) -> ffi.c_int
alias __overflow = fn (UnsafePointer[FILE], ffi.c_int) -> ffi.c_int
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
alias __gwchar_t = ffi.c_int
struct anonomous_record_239(Copyable & Movable):
	var quot : ffi.c_long

	var rem : ffi.c_long

alias imaxdiv_t = anonomous_record_239

alias imaxabs = fn (intmax_t) -> intmax_t
alias imaxdiv = fn (intmax_t, intmax_t) -> imaxdiv_t
alias strtoimax = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], ffi.c_int) -> intmax_t
alias strtoumax = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], ffi.c_int) -> uintmax_t
alias wcstoimax = fn (UnsafePointer[__gwchar_t], UnsafePointer[UnsafePointer[__gwchar_t]], ffi.c_int) -> intmax_t
alias wcstoumax = fn (UnsafePointer[__gwchar_t], UnsafePointer[UnsafePointer[__gwchar_t]], ffi.c_int) -> uintmax_t
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
alias pid_t = __pid_t
alias id_t = __id_t
alias daddr_t = __daddr_t
alias caddr_t = __caddr_t
alias key_t = __key_t
alias clock_t = __clock_t
alias clockid_t = __clockid_t
alias time_t = __time_t
alias timer_t = __timer_t
alias ulong = ffi.c_ulong
alias ushort = UInt16
alias uint = ffi.c_int
alias u_int8_t = __uint8_t
alias u_int16_t = __uint16_t
alias u_int32_t = __uint32_t
alias u_int64_t = __uint64_t
alias register_t = ffi.c_long

alias __bswap_16 = fn (Int16) -> Int16
alias __bswap_32 = fn (ffi.c_int) -> ffi.c_int
alias __bswap_64 = fn (ffi.c_long_long) -> ffi.c_long_long
alias __uint16_identity = fn (Int16) -> Int16
alias __uint32_identity = fn (ffi.c_int) -> ffi.c_int
alias __uint64_identity = fn (ffi.c_long_long) -> ffi.c_long_long
struct anonomous_record_240(Copyable & Movable):
	var __val : InlineArray[ffi.c_ulong, 16]

alias __sigset_t = anonomous_record_240

alias sigset_t = __sigset_t
struct timeval(Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_usec : ffi.c_long

struct timespec(Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_nsec : ffi.c_long

alias suseconds_t = __suseconds_t
alias __fd_mask = ffi.c_long
struct anonomous_record_241(Copyable & Movable):
	var __fds_bits : InlineArray[__fd_mask, 16]

alias fd_set = anonomous_record_241

alias fd_mask = __fd_mask
alias select = fn (ffi.c_int, UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[timeval]) -> ffi.c_int
alias pselect = fn (ffi.c_int, UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[timespec], UnsafePointer[__sigset_t]) -> ffi.c_int
alias blksize_t = __blksize_t
alias blkcnt_t = __blkcnt_t
alias fsblkcnt_t = __fsblkcnt_t
alias fsfilcnt_t = __fsfilcnt_t
struct anonomous_record_242(Copyable & Movable):
	var __low : UInt32

	var __high : UInt32

alias anonomous_record_243 = C_Union[ffi.c_ulong_long, anonomous_record_242]

alias __atomic_wide_counter = anonomous_record_243

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

alias __tss_t = ffi.c_int
alias __thrd_t = ffi.c_ulong
struct anonomous_record_244(Copyable & Movable):
	var __data : Int32

alias __once_flag = anonomous_record_244

alias pthread_t = ffi.c_ulong
alias anonomous_record_245 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_mutexattr_t = anonomous_record_245

alias anonomous_record_246 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_condattr_t = anonomous_record_246

alias pthread_key_t = ffi.c_int
alias pthread_once_t = ffi.c_int
alias pthread_attr_t = C_Union[InlineArray[Int8, 64], ffi.c_long]

alias anonomous_record_247 = C_Union[__pthread_mutex_s, InlineArray[Int8, 48], ffi.c_long]

alias pthread_mutex_t = anonomous_record_247

alias anonomous_record_248 = C_Union[__pthread_cond_s, InlineArray[Int8, 48], ffi.c_long_long]

alias pthread_cond_t = anonomous_record_248

alias anonomous_record_249 = C_Union[__pthread_rwlock_arch_t, InlineArray[Int8, 56], ffi.c_long]

alias pthread_rwlock_t = anonomous_record_249

alias anonomous_record_250 = C_Union[InlineArray[Int8, 8], ffi.c_long]

alias pthread_rwlockattr_t = anonomous_record_250

alias pthread_spinlock_t = ffi.c_int
alias anonomous_record_251 = C_Union[InlineArray[Int8, 32], ffi.c_long]

alias pthread_barrier_t = anonomous_record_251

alias anonomous_record_252 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_barrierattr_t = anonomous_record_252

struct rte_pci_id(Copyable & Movable):

	var class_id : UInt32

	var vendor_id : UInt16

	var device_id : UInt16

	var subsystem_vendor_id : UInt16

	var subsystem_device_id : UInt16

struct rte_pci_addr(Copyable & Movable):

	var domain : UInt32

	var bus : UInt8

	var devid : UInt8

	var function : UInt8

alias rte_pci_device_name = fn (UnsafePointer[rte_pci_addr], UnsafePointer[Int8], size_t) -> NoneType
alias rte_pci_addr_cmp = fn (UnsafePointer[rte_pci_addr], UnsafePointer[rte_pci_addr]) -> ffi.c_int
alias rte_pci_addr_parse = fn (UnsafePointer[Int8], UnsafePointer[rte_pci_addr]) -> ffi.c_int


alias rte_pci_remove = ExternalFunction['remove', remove]
alias rte_pci_rename = ExternalFunction['rename', rename]
alias rte_pci_renameat = ExternalFunction['renameat', renameat]
alias rte_pci_fclose = ExternalFunction['fclose', fclose]
alias rte_pci_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias rte_pci_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias rte_pci_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias rte_pci_tempnam = ExternalFunction['tempnam', tempnam]
alias rte_pci_fflush = ExternalFunction['fflush', fflush]
alias rte_pci_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias rte_pci_fopen = ExternalFunction['fopen', fopen]
alias rte_pci_freopen = ExternalFunction['freopen', freopen]
alias rte_pci_fdopen = ExternalFunction['fdopen', fdopen]
alias rte_pci_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias rte_pci_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias rte_pci_setbuf = ExternalFunction['setbuf', setbuf]
alias rte_pci_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias rte_pci_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias rte_pci_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias rte_pci_fprintf = ExternalFunction['fprintf', fprintf]
alias rte_pci_printf = ExternalFunction['printf', printf]
alias rte_pci_sprintf = ExternalFunction['sprintf', sprintf]
alias rte_pci_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias rte_pci_vprintf = ExternalFunction['vprintf', vprintf]
alias rte_pci_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias rte_pci_snprintf = ExternalFunction['snprintf', snprintf]
alias rte_pci_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias rte_pci_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias rte_pci_dprintf = ExternalFunction['dprintf', dprintf]
alias rte_pci_fscanf = ExternalFunction['fscanf', fscanf]
alias rte_pci_scanf = ExternalFunction['scanf', scanf]
alias rte_pci_sscanf = ExternalFunction['sscanf', sscanf]
alias rte_pci_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias rte_pci_vscanf = ExternalFunction['vscanf', vscanf]
alias rte_pci_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias rte_pci_fgetc = ExternalFunction['fgetc', fgetc]
alias rte_pci_getc = ExternalFunction['getc', getc]
alias rte_pci_getchar = ExternalFunction['getchar', getchar]
alias rte_pci_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias rte_pci_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias rte_pci_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias rte_pci_fputc = ExternalFunction['fputc', fputc]
alias rte_pci_putc = ExternalFunction['putc', putc]
alias rte_pci_putchar = ExternalFunction['putchar', putchar]
alias rte_pci_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias rte_pci_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias rte_pci_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias rte_pci_getw = ExternalFunction['getw', getw]
alias rte_pci_putw = ExternalFunction['putw', putw]
alias rte_pci_fgets = ExternalFunction['fgets', fgets]
alias rte_pci_getdelim = ExternalFunction['getdelim', getdelim]
alias rte_pci_getline = ExternalFunction['getline', getline]
alias rte_pci_fputs = ExternalFunction['fputs', fputs]
alias rte_pci_puts = ExternalFunction['puts', puts]
alias rte_pci_ungetc = ExternalFunction['ungetc', ungetc]
alias rte_pci_fread = ExternalFunction['fread', fread]
alias rte_pci_fwrite = ExternalFunction['fwrite', fwrite]
alias rte_pci_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias rte_pci_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias rte_pci_fseek = ExternalFunction['fseek', fseek]
alias rte_pci_ftell = ExternalFunction['ftell', ftell]
alias rte_pci_rewind = ExternalFunction['rewind', rewind]
alias rte_pci_fseeko = ExternalFunction['fseeko', fseeko]
alias rte_pci_ftello = ExternalFunction['ftello', ftello]
alias rte_pci_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias rte_pci_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias rte_pci_clearerr = ExternalFunction['clearerr', clearerr]
alias rte_pci_feof = ExternalFunction['feof', feof]
alias rte_pci_ferror = ExternalFunction['ferror', ferror]
alias rte_pci_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias rte_pci_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias rte_pci_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias rte_pci_perror = ExternalFunction['perror', perror]
alias rte_pci_fileno = ExternalFunction['fileno', fileno]
alias rte_pci_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias rte_pci_pclose = ExternalFunction['pclose', pclose]
alias rte_pci_popen = ExternalFunction['popen', popen]
alias rte_pci_ctermid = ExternalFunction['ctermid', ctermid]
alias rte_pci_flockfile = ExternalFunction['flockfile', flockfile]
alias rte_pci_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias rte_pci_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias rte_pci_imaxabs = ExternalFunction['imaxabs', imaxabs]
alias rte_pci_imaxdiv = ExternalFunction['imaxdiv', imaxdiv]
alias rte_pci_strtoimax = ExternalFunction['strtoimax', strtoimax]
alias rte_pci_strtoumax = ExternalFunction['strtoumax', strtoumax]
alias rte_pci_wcstoimax = ExternalFunction['wcstoimax', wcstoimax]
alias rte_pci_wcstoumax = ExternalFunction['wcstoumax', wcstoumax]
alias rte_pci_select = ExternalFunction['select', select]
alias rte_pci_pselect = ExternalFunction['pselect', pselect]
alias rte_pci_rte_pci_device_name = ExternalFunction['rte_pci_device_name', rte_pci_device_name]
alias rte_pci_rte_pci_addr_cmp = ExternalFunction['rte_pci_addr_cmp', rte_pci_addr_cmp]
alias rte_pci_rte_pci_addr_parse = ExternalFunction['rte_pci_addr_parse', rte_pci_addr_parse]

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
struct rte_pci(Copyable, Movable):
    var lib: DLHandle
    
    var remove: rte_pci_remove.type
    var rename: rte_pci_rename.type
    var renameat: rte_pci_renameat.type
    var fclose: rte_pci_fclose.type
    var tmpfile: rte_pci_tmpfile.type
    var tmpnam: rte_pci_tmpnam.type
    var tmpnam_r: rte_pci_tmpnam_r.type
    var tempnam: rte_pci_tempnam.type
    var fflush: rte_pci_fflush.type
    var fflush_unlocked: rte_pci_fflush_unlocked.type
    var fopen: rte_pci_fopen.type
    var freopen: rte_pci_freopen.type
    var fdopen: rte_pci_fdopen.type
    var fmemopen: rte_pci_fmemopen.type
    var open_memstream: rte_pci_open_memstream.type
    var setbuf: rte_pci_setbuf.type
    var setvbuf: rte_pci_setvbuf.type
    var setbuffer: rte_pci_setbuffer.type
    var setlinebuf: rte_pci_setlinebuf.type
    var fprintf: rte_pci_fprintf.type
    var printf: rte_pci_printf.type
    var sprintf: rte_pci_sprintf.type
    var vfprintf: rte_pci_vfprintf.type
    var vprintf: rte_pci_vprintf.type
    var vsprintf: rte_pci_vsprintf.type
    var snprintf: rte_pci_snprintf.type
    var vsnprintf: rte_pci_vsnprintf.type
    var vdprintf: rte_pci_vdprintf.type
    var dprintf: rte_pci_dprintf.type
    var fscanf: rte_pci_fscanf.type
    var scanf: rte_pci_scanf.type
    var sscanf: rte_pci_sscanf.type
    var vfscanf: rte_pci_vfscanf.type
    var vscanf: rte_pci_vscanf.type
    var vsscanf: rte_pci_vsscanf.type
    var fgetc: rte_pci_fgetc.type
    var getc: rte_pci_getc.type
    var getchar: rte_pci_getchar.type
    var getc_unlocked: rte_pci_getc_unlocked.type
    var getchar_unlocked: rte_pci_getchar_unlocked.type
    var fgetc_unlocked: rte_pci_fgetc_unlocked.type
    var fputc: rte_pci_fputc.type
    var putc: rte_pci_putc.type
    var putchar: rte_pci_putchar.type
    var fputc_unlocked: rte_pci_fputc_unlocked.type
    var putc_unlocked: rte_pci_putc_unlocked.type
    var putchar_unlocked: rte_pci_putchar_unlocked.type
    var getw: rte_pci_getw.type
    var putw: rte_pci_putw.type
    var fgets: rte_pci_fgets.type
    var getdelim: rte_pci_getdelim.type
    var getline: rte_pci_getline.type
    var fputs: rte_pci_fputs.type
    var puts: rte_pci_puts.type
    var ungetc: rte_pci_ungetc.type
    var fread: rte_pci_fread.type
    var fwrite: rte_pci_fwrite.type
    var fread_unlocked: rte_pci_fread_unlocked.type
    var fwrite_unlocked: rte_pci_fwrite_unlocked.type
    var fseek: rte_pci_fseek.type
    var ftell: rte_pci_ftell.type
    var rewind: rte_pci_rewind.type
    var fseeko: rte_pci_fseeko.type
    var ftello: rte_pci_ftello.type
    var fgetpos: rte_pci_fgetpos.type
    var fsetpos: rte_pci_fsetpos.type
    var clearerr: rte_pci_clearerr.type
    var feof: rte_pci_feof.type
    var ferror: rte_pci_ferror.type
    var clearerr_unlocked: rte_pci_clearerr_unlocked.type
    var feof_unlocked: rte_pci_feof_unlocked.type
    var ferror_unlocked: rte_pci_ferror_unlocked.type
    var perror: rte_pci_perror.type
    var fileno: rte_pci_fileno.type
    var fileno_unlocked: rte_pci_fileno_unlocked.type
    var pclose: rte_pci_pclose.type
    var popen: rte_pci_popen.type
    var ctermid: rte_pci_ctermid.type
    var flockfile: rte_pci_flockfile.type
    var ftrylockfile: rte_pci_ftrylockfile.type
    var funlockfile: rte_pci_funlockfile.type
    var imaxabs: rte_pci_imaxabs.type
    var imaxdiv: rte_pci_imaxdiv.type
    var strtoimax: rte_pci_strtoimax.type
    var strtoumax: rte_pci_strtoumax.type
    var wcstoimax: rte_pci_wcstoimax.type
    var wcstoumax: rte_pci_wcstoumax.type
    var select: rte_pci_select.type
    var pselect: rte_pci_pselect.type
    var rte_pci_device_name: rte_pci_rte_pci_device_name.type
    var rte_pci_addr_cmp: rte_pci_rte_pci_addr_cmp.type
    var rte_pci_addr_parse: rte_pci_rte_pci_addr_parse.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_pci.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_pci from", 'librte_pci.so', ":\n", e)
            )

    
        self.remove = rte_pci_remove.load(self.lib)
        self.rename = rte_pci_rename.load(self.lib)
        self.renameat = rte_pci_renameat.load(self.lib)
        self.fclose = rte_pci_fclose.load(self.lib)
        self.tmpfile = rte_pci_tmpfile.load(self.lib)
        self.tmpnam = rte_pci_tmpnam.load(self.lib)
        self.tmpnam_r = rte_pci_tmpnam_r.load(self.lib)
        self.tempnam = rte_pci_tempnam.load(self.lib)
        self.fflush = rte_pci_fflush.load(self.lib)
        self.fflush_unlocked = rte_pci_fflush_unlocked.load(self.lib)
        self.fopen = rte_pci_fopen.load(self.lib)
        self.freopen = rte_pci_freopen.load(self.lib)
        self.fdopen = rte_pci_fdopen.load(self.lib)
        self.fmemopen = rte_pci_fmemopen.load(self.lib)
        self.open_memstream = rte_pci_open_memstream.load(self.lib)
        self.setbuf = rte_pci_setbuf.load(self.lib)
        self.setvbuf = rte_pci_setvbuf.load(self.lib)
        self.setbuffer = rte_pci_setbuffer.load(self.lib)
        self.setlinebuf = rte_pci_setlinebuf.load(self.lib)
        self.fprintf = rte_pci_fprintf.load(self.lib)
        self.printf = rte_pci_printf.load(self.lib)
        self.sprintf = rte_pci_sprintf.load(self.lib)
        self.vfprintf = rte_pci_vfprintf.load(self.lib)
        self.vprintf = rte_pci_vprintf.load(self.lib)
        self.vsprintf = rte_pci_vsprintf.load(self.lib)
        self.snprintf = rte_pci_snprintf.load(self.lib)
        self.vsnprintf = rte_pci_vsnprintf.load(self.lib)
        self.vdprintf = rte_pci_vdprintf.load(self.lib)
        self.dprintf = rte_pci_dprintf.load(self.lib)
        self.fscanf = rte_pci_fscanf.load(self.lib)
        self.scanf = rte_pci_scanf.load(self.lib)
        self.sscanf = rte_pci_sscanf.load(self.lib)
        self.vfscanf = rte_pci_vfscanf.load(self.lib)
        self.vscanf = rte_pci_vscanf.load(self.lib)
        self.vsscanf = rte_pci_vsscanf.load(self.lib)
        self.fgetc = rte_pci_fgetc.load(self.lib)
        self.getc = rte_pci_getc.load(self.lib)
        self.getchar = rte_pci_getchar.load(self.lib)
        self.getc_unlocked = rte_pci_getc_unlocked.load(self.lib)
        self.getchar_unlocked = rte_pci_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = rte_pci_fgetc_unlocked.load(self.lib)
        self.fputc = rte_pci_fputc.load(self.lib)
        self.putc = rte_pci_putc.load(self.lib)
        self.putchar = rte_pci_putchar.load(self.lib)
        self.fputc_unlocked = rte_pci_fputc_unlocked.load(self.lib)
        self.putc_unlocked = rte_pci_putc_unlocked.load(self.lib)
        self.putchar_unlocked = rte_pci_putchar_unlocked.load(self.lib)
        self.getw = rte_pci_getw.load(self.lib)
        self.putw = rte_pci_putw.load(self.lib)
        self.fgets = rte_pci_fgets.load(self.lib)
        self.getdelim = rte_pci_getdelim.load(self.lib)
        self.getline = rte_pci_getline.load(self.lib)
        self.fputs = rte_pci_fputs.load(self.lib)
        self.puts = rte_pci_puts.load(self.lib)
        self.ungetc = rte_pci_ungetc.load(self.lib)
        self.fread = rte_pci_fread.load(self.lib)
        self.fwrite = rte_pci_fwrite.load(self.lib)
        self.fread_unlocked = rte_pci_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = rte_pci_fwrite_unlocked.load(self.lib)
        self.fseek = rte_pci_fseek.load(self.lib)
        self.ftell = rte_pci_ftell.load(self.lib)
        self.rewind = rte_pci_rewind.load(self.lib)
        self.fseeko = rte_pci_fseeko.load(self.lib)
        self.ftello = rte_pci_ftello.load(self.lib)
        self.fgetpos = rte_pci_fgetpos.load(self.lib)
        self.fsetpos = rte_pci_fsetpos.load(self.lib)
        self.clearerr = rte_pci_clearerr.load(self.lib)
        self.feof = rte_pci_feof.load(self.lib)
        self.ferror = rte_pci_ferror.load(self.lib)
        self.clearerr_unlocked = rte_pci_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = rte_pci_feof_unlocked.load(self.lib)
        self.ferror_unlocked = rte_pci_ferror_unlocked.load(self.lib)
        self.perror = rte_pci_perror.load(self.lib)
        self.fileno = rte_pci_fileno.load(self.lib)
        self.fileno_unlocked = rte_pci_fileno_unlocked.load(self.lib)
        self.pclose = rte_pci_pclose.load(self.lib)
        self.popen = rte_pci_popen.load(self.lib)
        self.ctermid = rte_pci_ctermid.load(self.lib)
        self.flockfile = rte_pci_flockfile.load(self.lib)
        self.ftrylockfile = rte_pci_ftrylockfile.load(self.lib)
        self.funlockfile = rte_pci_funlockfile.load(self.lib)
        self.imaxabs = rte_pci_imaxabs.load(self.lib)
        self.imaxdiv = rte_pci_imaxdiv.load(self.lib)
        self.strtoimax = rte_pci_strtoimax.load(self.lib)
        self.strtoumax = rte_pci_strtoumax.load(self.lib)
        self.wcstoimax = rte_pci_wcstoimax.load(self.lib)
        self.wcstoumax = rte_pci_wcstoumax.load(self.lib)
        self.select = rte_pci_select.load(self.lib)
        self.pselect = rte_pci_pselect.load(self.lib)
        self.rte_pci_device_name = rte_pci_rte_pci_device_name.load(self.lib)
        self.rte_pci_addr_cmp = rte_pci_rte_pci_addr_cmp.load(self.lib)
        self.rte_pci_addr_parse = rte_pci_rte_pci_addr_parse.load(self.lib)

