
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

alias __assert_fail = fn (UnsafePointer[Int8], UnsafePointer[Int8], UInt32, UnsafePointer[Int8]) -> NoneType
alias __assert_perror_fail = fn (Int32, UnsafePointer[Int8], UInt32, UnsafePointer[Int8]) -> NoneType
alias __assert = fn (UnsafePointer[Int8], UnsafePointer[Int8], Int32) -> NoneType
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
struct anonomous_record_1431(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_1431

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
struct anonomous_record_1432(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_1432

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
alias va_list = __builtin_va_list
alias __gnuc_va_list = __builtin_va_list
alias anonomous_record_1433 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_1434(Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_1433

alias __mbstate_t = anonomous_record_1434

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
alias remove = fn (UnsafePointer[Int8]) -> Int32
alias rename = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> Int32
alias renameat = fn (Int32, UnsafePointer[Int8], Int32, UnsafePointer[Int8]) -> Int32
alias fclose = fn (UnsafePointer[FILE]) -> Int32
alias tmpfile = fn () -> UnsafePointer[FILE]
alias tmpnam = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias tmpnam_r = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias tempnam = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias fflush = fn (UnsafePointer[FILE]) -> Int32
alias fflush_unlocked = fn (UnsafePointer[FILE]) -> Int32
alias fopen = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[FILE]
alias freopen = fn (UnsafePointer[Int8], UnsafePointer[Int8], UnsafePointer[FILE]) -> UnsafePointer[FILE]
alias fdopen = fn (Int32, UnsafePointer[Int8]) -> UnsafePointer[FILE]
alias fmemopen = fn (OpaquePointer, size_t, UnsafePointer[Int8]) -> UnsafePointer[FILE]
alias open_memstream = fn (UnsafePointer[UnsafePointer[Int8]], UnsafePointer[size_t]) -> UnsafePointer[FILE]
alias setbuf = fn (UnsafePointer[FILE], UnsafePointer[Int8]) -> NoneType
alias setvbuf = fn (UnsafePointer[FILE], UnsafePointer[Int8], Int32, size_t) -> Int32
alias setbuffer = fn (UnsafePointer[FILE], UnsafePointer[Int8], size_t) -> NoneType
alias setlinebuf = fn (UnsafePointer[FILE]) -> NoneType
alias fprintf = fn (UnsafePointer[FILE], UnsafePointer[Int8]) -> Int32
alias printf = fn (UnsafePointer[Int8]) -> Int32
alias sprintf = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> Int32
alias vfprintf = fn (UnsafePointer[FILE], UnsafePointer[Int8], __builtin_va_list) -> Int32
alias vprintf = fn (UnsafePointer[Int8], __builtin_va_list) -> Int32
alias vsprintf = fn (UnsafePointer[Int8], UnsafePointer[Int8], __builtin_va_list) -> Int32
alias snprintf = fn (UnsafePointer[Int8], ffi.c_ulong, UnsafePointer[Int8]) -> Int32
alias vsnprintf = fn (UnsafePointer[Int8], ffi.c_ulong, UnsafePointer[Int8], __builtin_va_list) -> Int32
alias vdprintf = fn (Int32, UnsafePointer[Int8], __gnuc_va_list) -> Int32
alias dprintf = fn (Int32, UnsafePointer[Int8]) -> Int32
alias fscanf = fn (UnsafePointer[FILE], UnsafePointer[Int8]) -> Int32
alias scanf = fn (UnsafePointer[Int8]) -> Int32
alias sscanf = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> Int32
alias _Float128 = Float64
alias _Float32 = Float32
alias _Float64 = Float64
alias _Float32x = Float64
alias _Float64x = Float64
alias vfscanf = fn (UnsafePointer[FILE], UnsafePointer[Int8], __builtin_va_list) -> Int32
alias vscanf = fn (UnsafePointer[Int8], __builtin_va_list) -> Int32
alias vsscanf = fn (UnsafePointer[Int8], UnsafePointer[Int8], __builtin_va_list) -> Int32
alias fgetc = fn (UnsafePointer[FILE]) -> Int32
alias getc = fn (UnsafePointer[FILE]) -> Int32
alias getchar = fn () -> Int32
alias getc_unlocked = fn (UnsafePointer[FILE]) -> Int32
alias getchar_unlocked = fn () -> Int32
alias fgetc_unlocked = fn (UnsafePointer[FILE]) -> Int32
alias fputc = fn (Int32, UnsafePointer[FILE]) -> Int32
alias putc = fn (Int32, UnsafePointer[FILE]) -> Int32
alias putchar = fn (Int32) -> Int32
alias fputc_unlocked = fn (Int32, UnsafePointer[FILE]) -> Int32
alias putc_unlocked = fn (Int32, UnsafePointer[FILE]) -> Int32
alias putchar_unlocked = fn (Int32) -> Int32
alias getw = fn (UnsafePointer[FILE]) -> Int32
alias putw = fn (Int32, UnsafePointer[FILE]) -> Int32
alias fgets = fn (UnsafePointer[Int8], Int32, UnsafePointer[FILE]) -> UnsafePointer[Int8]
alias __getdelim = fn (UnsafePointer[UnsafePointer[Int8]], UnsafePointer[size_t], Int32, UnsafePointer[FILE]) -> __ssize_t
alias getdelim = fn (UnsafePointer[UnsafePointer[Int8]], UnsafePointer[size_t], Int32, UnsafePointer[FILE]) -> __ssize_t
alias getline = fn (UnsafePointer[UnsafePointer[Int8]], UnsafePointer[size_t], UnsafePointer[FILE]) -> __ssize_t
alias fputs = fn (UnsafePointer[Int8], UnsafePointer[FILE]) -> Int32
alias puts = fn (UnsafePointer[Int8]) -> Int32
alias ungetc = fn (Int32, UnsafePointer[FILE]) -> Int32
alias fread = fn (OpaquePointer, ffi.c_ulong, ffi.c_ulong, UnsafePointer[FILE]) -> ffi.c_ulong
alias fwrite = fn (OpaquePointer, ffi.c_ulong, ffi.c_ulong, UnsafePointer[FILE]) -> ffi.c_ulong
alias fread_unlocked = fn (OpaquePointer, size_t, size_t, UnsafePointer[FILE]) -> size_t
alias fwrite_unlocked = fn (OpaquePointer, size_t, size_t, UnsafePointer[FILE]) -> size_t
alias fseek = fn (UnsafePointer[FILE], ffi.c_long, Int32) -> Int32
alias ftell = fn (UnsafePointer[FILE]) -> ffi.c_long
alias rewind = fn (UnsafePointer[FILE]) -> NoneType
alias fseeko = fn (UnsafePointer[FILE], __off_t, Int32) -> Int32
alias ftello = fn (UnsafePointer[FILE]) -> __off_t
alias fgetpos = fn (UnsafePointer[FILE], UnsafePointer[fpos_t]) -> Int32
alias fsetpos = fn (UnsafePointer[FILE], UnsafePointer[fpos_t]) -> Int32
alias clearerr = fn (UnsafePointer[FILE]) -> NoneType
alias feof = fn (UnsafePointer[FILE]) -> Int32
alias ferror = fn (UnsafePointer[FILE]) -> Int32
alias clearerr_unlocked = fn (UnsafePointer[FILE]) -> NoneType
alias feof_unlocked = fn (UnsafePointer[FILE]) -> Int32
alias ferror_unlocked = fn (UnsafePointer[FILE]) -> Int32
alias perror = fn (UnsafePointer[Int8]) -> NoneType
alias fileno = fn (UnsafePointer[FILE]) -> Int32
alias fileno_unlocked = fn (UnsafePointer[FILE]) -> Int32
alias pclose = fn (UnsafePointer[FILE]) -> Int32
alias popen = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[FILE]
alias ctermid = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias flockfile = fn (UnsafePointer[FILE]) -> NoneType
alias ftrylockfile = fn (UnsafePointer[FILE]) -> Int32
alias funlockfile = fn (UnsafePointer[FILE]) -> NoneType
alias __uflow = fn (UnsafePointer[FILE]) -> Int32
alias __overflow = fn (UnsafePointer[FILE], Int32) -> Int32
alias __gwchar_t = UInt32
struct anonomous_record_1435(Copyable & Movable):
	var quot : ffi.c_long

	var rem : ffi.c_long

alias imaxdiv_t = anonomous_record_1435

alias imaxabs = fn (intmax_t) -> intmax_t
alias imaxdiv = fn (intmax_t, intmax_t) -> imaxdiv_t
alias strtoimax = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> intmax_t
alias strtoumax = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> uintmax_t
alias wcstoimax = fn (UnsafePointer[__gwchar_t], UnsafePointer[UnsafePointer[__gwchar_t]], Int32) -> intmax_t
alias wcstoumax = fn (UnsafePointer[__gwchar_t], UnsafePointer[UnsafePointer[__gwchar_t]], Int32) -> uintmax_t
alias clock_t = __clock_t
struct tm(Copyable & Movable):
	var tm_sec : Int32

	var tm_min : Int32

	var tm_hour : Int32

	var tm_mday : Int32

	var tm_mon : Int32

	var tm_year : Int32

	var tm_wday : Int32

	var tm_yday : Int32

	var tm_isdst : Int32

	var tm_gmtoff : ffi.c_long

	var tm_zone : UnsafePointer[Int8]

alias clockid_t = __clockid_t
alias timer_t = __timer_t
struct itimerspec(Copyable & Movable):
	var it_interval : timespec

	var it_value : timespec

struct sigevent(Copyable & Movable):
	pass
struct __locale_data(Copyable & Movable):
	pass
struct __locale_struct(Copyable & Movable):
	var __locales : __locale_data

	var __ctype_b : UnsafePointer[UInt16]

	var __ctype_tolower : UnsafePointer[Int32]

	var __ctype_toupper : UnsafePointer[Int32]

	var __names : InlineArray[UnsafePointer[Int8], 13]

alias __locale_t = UnsafePointer[__locale_struct
]
alias locale_t = __locale_t
alias clock = fn () -> clock_t
alias time = fn (UnsafePointer[time_t]) -> time_t
alias difftime = fn (time_t, time_t) -> Float64
alias mktime = fn (UnsafePointer[tm]) -> time_t
alias strftime = fn (UnsafePointer[Int8], size_t, UnsafePointer[Int8], UnsafePointer[tm]) -> size_t
alias strftime_l = fn (UnsafePointer[Int8], size_t, UnsafePointer[Int8], UnsafePointer[tm], locale_t) -> size_t
alias gmtime = fn (UnsafePointer[time_t]) -> UnsafePointer[tm]
alias localtime = fn (UnsafePointer[time_t]) -> UnsafePointer[tm]
alias gmtime_r = fn (UnsafePointer[time_t], UnsafePointer[tm]) -> UnsafePointer[tm]
alias localtime_r = fn (UnsafePointer[time_t], UnsafePointer[tm]) -> UnsafePointer[tm]
alias asctime = fn (UnsafePointer[tm]) -> UnsafePointer[Int8]
alias ctime = fn (UnsafePointer[time_t]) -> UnsafePointer[Int8]
alias asctime_r = fn (UnsafePointer[tm], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias ctime_r = fn (UnsafePointer[time_t], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias __tzname = InlineArray[UnsafePointer[Int8], 2]
alias __daylight = Int32
alias __timezone = ffi.c_long
alias tzname = InlineArray[UnsafePointer[Int8], 2]
alias tzset = fn () -> NoneType
alias daylight = Int32
alias timezone = ffi.c_long
alias timegm = fn (UnsafePointer[tm]) -> time_t
alias timelocal = fn (UnsafePointer[tm]) -> time_t
alias dysize = fn (Int32) -> Int32
alias nanosleep = fn (UnsafePointer[timespec], UnsafePointer[timespec]) -> Int32
alias clock_getres = fn (clockid_t, UnsafePointer[timespec]) -> Int32
alias clock_gettime = fn (clockid_t, UnsafePointer[timespec]) -> Int32
alias clock_settime = fn (clockid_t, UnsafePointer[timespec]) -> Int32
alias clock_nanosleep = fn (clockid_t, Int32, UnsafePointer[timespec], UnsafePointer[timespec]) -> Int32
alias clock_getcpuclockid = fn (pid_t, UnsafePointer[clockid_t]) -> Int32
alias timer_create = fn (clockid_t, UnsafePointer[sigevent], UnsafePointer[timer_t]) -> Int32
alias timer_delete = fn (timer_t) -> Int32
alias timer_settime = fn (timer_t, Int32, UnsafePointer[itimerspec], UnsafePointer[itimerspec]) -> Int32
alias timer_gettime = fn (timer_t, UnsafePointer[itimerspec]) -> Int32
alias timer_getoverrun = fn (timer_t) -> Int32
alias timespec_get = fn (UnsafePointer[timespec], Int32) -> Int32
alias ptrdiff_t = ffi.c_long
alias wchar_t = UInt32
struct anonomous_record_1436(Copyable & Movable):
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_1436

alias memcpy = fn (OpaquePointer, OpaquePointer, ffi.c_ulong) -> OpaquePointer
alias memmove = fn (OpaquePointer, OpaquePointer, ffi.c_ulong) -> OpaquePointer
alias memccpy = fn (OpaquePointer, OpaquePointer, Int32, ffi.c_ulong) -> OpaquePointer
alias memset = fn (OpaquePointer, Int32, ffi.c_ulong) -> OpaquePointer
alias memcmp = fn (OpaquePointer, OpaquePointer, ffi.c_ulong) -> Int32
alias __memcmpeq = fn (OpaquePointer, OpaquePointer, size_t) -> Int32
alias memchr = fn (OpaquePointer, Int32, ffi.c_ulong) -> OpaquePointer
alias strcpy = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias strncpy = fn (UnsafePointer[Int8], UnsafePointer[Int8], ffi.c_ulong) -> UnsafePointer[Int8]
alias strcat = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias strncat = fn (UnsafePointer[Int8], UnsafePointer[Int8], ffi.c_ulong) -> UnsafePointer[Int8]
alias strcmp = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> Int32
alias strncmp = fn (UnsafePointer[Int8], UnsafePointer[Int8], ffi.c_ulong) -> Int32
alias strcoll = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> Int32
alias strxfrm = fn (UnsafePointer[Int8], UnsafePointer[Int8], ffi.c_ulong) -> ffi.c_ulong
alias strcoll_l = fn (UnsafePointer[Int8], UnsafePointer[Int8], locale_t) -> Int32
alias strxfrm_l = fn (UnsafePointer[Int8], UnsafePointer[Int8], size_t, locale_t) -> size_t
alias strdup = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias strndup = fn (UnsafePointer[Int8], ffi.c_ulong) -> UnsafePointer[Int8]
alias strchr = fn (UnsafePointer[Int8], Int32) -> UnsafePointer[Int8]
alias strrchr = fn (UnsafePointer[Int8], Int32) -> UnsafePointer[Int8]
alias strcspn = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> ffi.c_ulong
alias strspn = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> ffi.c_ulong
alias strpbrk = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias strstr = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias strtok = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias __strtok_r = fn (UnsafePointer[Int8], UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> UnsafePointer[Int8]
alias strtok_r = fn (UnsafePointer[Int8], UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> UnsafePointer[Int8]
alias strlen = fn (UnsafePointer[Int8]) -> ffi.c_ulong
alias strnlen = fn (UnsafePointer[Int8], size_t) -> size_t
alias strerror = fn (Int32) -> UnsafePointer[Int8]
alias strerror_r = fn (Int32, UnsafePointer[Int8], size_t) -> Int32
alias strerror_l = fn (Int32, locale_t) -> UnsafePointer[Int8]
alias bcmp = fn (OpaquePointer, OpaquePointer, ffi.c_ulong) -> Int32
alias bcopy = fn (OpaquePointer, OpaquePointer, size_t) -> NoneType
alias bzero = fn (OpaquePointer, ffi.c_ulong) -> NoneType
alias index = fn (UnsafePointer[Int8], Int32) -> UnsafePointer[Int8]
alias rindex = fn (UnsafePointer[Int8], Int32) -> UnsafePointer[Int8]
alias ffs = fn (Int32) -> Int32
alias ffsl = fn (ffi.c_long) -> Int32
alias ffsll = fn (ffi.c_long_long) -> Int32
alias strcasecmp = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> Int32
alias strncasecmp = fn (UnsafePointer[Int8], UnsafePointer[Int8], ffi.c_ulong) -> Int32
alias strcasecmp_l = fn (UnsafePointer[Int8], UnsafePointer[Int8], locale_t) -> Int32
alias strncasecmp_l = fn (UnsafePointer[Int8], UnsafePointer[Int8], size_t, locale_t) -> Int32
alias explicit_bzero = fn (OpaquePointer, size_t) -> NoneType
alias strsep = fn (UnsafePointer[UnsafePointer[Int8]], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias strsignal = fn (Int32) -> UnsafePointer[Int8]
alias __stpcpy = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias stpcpy = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias __stpncpy = fn (UnsafePointer[Int8], UnsafePointer[Int8], size_t) -> UnsafePointer[Int8]
alias stpncpy = fn (UnsafePointer[Int8], UnsafePointer[Int8], ffi.c_ulong) -> UnsafePointer[Int8]
alias rte_uuid_t = InlineArray[UInt8, 16]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Struct describing a Universal Unique Identifier

alias rte_uuid_is_null = fn (UnsafePointer[UInt8]) -> Bool
alias rte_uuid_copy = fn (UnsafePointer[UInt8], UnsafePointer[UInt8]) -> NoneType
alias rte_uuid_compare = fn (UnsafePointer[UInt8], UnsafePointer[UInt8]) -> Int32
alias rte_uuid_parse = fn (UnsafePointer[Int8], UnsafePointer[UInt8]) -> Int32
alias rte_uuid_unparse = fn (UnsafePointer[UInt8], UnsafePointer[Int8], size_t) -> NoneType
struct rte_intr_mode(Copyable & Movable):

	alias RTE_INTR_MODE_NONE = 0

	alias RTE_INTR_MODE_LEGACY = 1

	alias RTE_INTR_MODE_MSI = 2

	alias RTE_INTR_MODE_MSIX = 3

struct rte_proc_type_t(Copyable & Movable):

	alias RTE_PROC_AUTO = -1

	alias RTE_PROC_PRIMARY = 0

	alias RTE_PROC_SECONDARY = 1

	alias RTE_PROC_INVALID = 2

alias rte_eal_process_type = fn () -> rte_proc_type_t
alias rte_eal_iopl_init = fn () -> Int32
alias rte_eal_init = fn (Int32, UnsafePointer[UnsafePointer[Int8]]) -> Int32
alias rte_eal_cleanup = fn () -> Int32
alias rte_eal_primary_proc_alive = fn (UnsafePointer[Int8]) -> Int32
alias rte_mp_disable = fn () -> Bool
struct rte_mp_msg(Copyable & Movable):
	var name : InlineArray[Int8, 64]

	var len_param : Int32

	var num_fds : Int32

	var param : InlineArray[UInt8, 256]

	var fds : InlineArray[Int32, 253]

struct rte_mp_reply(Copyable & Movable):
	var nb_sent : Int32

	var nb_received : Int32

	var msgs : UnsafePointer[rte_mp_msg]

alias rte_mp_t = fn(read UnsafePointer[rte_mp_msg], read OpaquePointer) -> Int32
alias rte_mp_async_reply_t = fn(read UnsafePointer[rte_mp_msg], read UnsafePointer[rte_mp_reply]) -> Int32
alias rte_mp_action_register = fn (UnsafePointer[Int8], rte_mp_t) -> Int32
alias rte_mp_action_unregister = fn (UnsafePointer[Int8]) -> NoneType
alias rte_mp_sendmsg = fn (UnsafePointer[rte_mp_msg]) -> Int32
alias rte_mp_request_sync = fn (UnsafePointer[rte_mp_msg], UnsafePointer[rte_mp_reply], UnsafePointer[timespec]) -> Int32
alias rte_mp_request_async = fn (UnsafePointer[rte_mp_msg], UnsafePointer[timespec], rte_mp_async_reply_t) -> Int32
alias rte_usage_hook_t = fn(read UnsafePointer[Int8]) -> NoneType
alias rte_set_application_usage_hook = fn (rte_usage_hook_t) -> rte_usage_hook_t
alias rte_eal_has_hugepages = fn () -> Int32
alias rte_eal_has_pci = fn () -> Int32
alias rte_eal_create_uio_dev = fn () -> Int32
alias rte_eal_vfio_intr_mode = fn () -> rte_intr_mode
alias rte_eal_vfio_get_vf_token = fn (UnsafePointer[UInt8]) -> NoneType
alias rte_sys_gettid = fn () -> Int32
alias per_lcore__thread_id = Int32
alias rte_gettid = fn () -> Int32
alias rte_eal_get_baseaddr = fn () -> ffi.c_ulong
struct rte_iova_mode(Copyable & Movable):

	alias RTE_IOVA_DC = 0

	alias RTE_IOVA_PA = 1

	alias RTE_IOVA_VA = 2

alias rte_eal_iova_mode = fn () -> rte_iova_mode
alias rte_eal_mbuf_user_pool_ops = fn () -> UnsafePointer[Int8]
alias rte_eal_get_runtime_dir = fn () -> UnsafePointer[Int8]
alias rte_eal_parse_coremask = fn (UnsafePointer[Int8], UnsafePointer[Int32]) -> Int32
struct rte_lcore_state_t(Copyable & Movable):

	alias WAIT = 0

	alias RUNNING = 1

alias lcore_function_t = UnsafePointer[fn (OpaquePointer) -> Int32]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Definition of a remote launch function.

alias rte_eal_remote_launch = fn (UnsafePointer[lcore_function_t], OpaquePointer, UInt32) -> Int32
struct rte_rmt_call_main_t(Copyable & Movable):

	alias SKIP_MAIN = 0

	alias CALL_MAIN = 1

alias rte_eal_mp_remote_launch = fn (UnsafePointer[lcore_function_t], OpaquePointer, rte_rmt_call_main_t) -> Int32
alias rte_eal_get_lcore_state = fn (UInt32) -> rte_lcore_state_t
alias rte_eal_wait_lcore = fn (UInt32) -> Int32
alias rte_eal_mp_wait_lcore = fn () -> NoneType
struct anonomous_record_1437(Copyable & Movable):

	var opaque_id : ffi.c_ulong

alias rte_thread_t = anonomous_record_1437

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Thread id descriptor.

alias rte_thread_func = fn(OpaquePointer) -> ffi.c_ulong
struct rte_thread_priority(Copyable & Movable):

	alias RTE_THREAD_PRIORITY_NORMAL = 0

	alias RTE_THREAD_PRIORITY_REALTIME_CRITICAL = 1

struct anonomous_record_1438(Copyable & Movable):

	var priority : rte_thread_priority

alias rte_thread_attr_t = anonomous_record_1438

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Representation for thread attributes.

struct eal_tls_key(Copyable & Movable):
	pass
alias rte_thread_key = UnsafePointer[eal_tls_key
]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  TLS key type, an opaque pointer.

alias rte_thread_create = fn (UnsafePointer[rte_thread_t], UnsafePointer[rte_thread_attr_t], rte_thread_func, OpaquePointer) -> Int32
alias rte_thread_create_control = fn (UnsafePointer[rte_thread_t], UnsafePointer[Int8], rte_thread_func, OpaquePointer) -> Int32
alias rte_thread_create_internal_control = fn (UnsafePointer[rte_thread_t], UnsafePointer[Int8], rte_thread_func, OpaquePointer) -> Int32
alias rte_thread_join = fn (rte_thread_t, UnsafePointer[UInt32]) -> Int32
alias rte_thread_detach = fn (rte_thread_t) -> Int32
alias rte_thread_self = fn () -> rte_thread_t
alias rte_thread_set_name = fn (rte_thread_t, UnsafePointer[Int8]) -> NoneType
alias rte_thread_set_prefixed_name = fn (rte_thread_t, UnsafePointer[Int8]) -> NoneType
alias rte_thread_equal = fn (rte_thread_t, rte_thread_t) -> Int32
alias rte_thread_attr_init = fn (UnsafePointer[rte_thread_attr_t]) -> Int32
alias rte_thread_attr_set_priority = fn (UnsafePointer[rte_thread_attr_t], rte_thread_priority) -> Int32
alias rte_thread_get_priority = fn (rte_thread_t, UnsafePointer[rte_thread_priority]) -> Int32
alias rte_thread_set_priority = fn (rte_thread_t, rte_thread_priority) -> Int32
alias rte_thread_key_create = fn (UnsafePointer[rte_thread_key], fn (OpaquePointer) -> NoneType) -> Int32
alias rte_thread_key_delete = fn (rte_thread_key) -> Int32
alias rte_thread_value_set = fn (rte_thread_key, OpaquePointer) -> Int32
alias rte_thread_value_get = fn (rte_thread_key) -> OpaquePointer
alias per_lcore__lcore_id = UInt32
struct rte_lcore_role_t(Copyable & Movable):

	alias ROLE_RTE = 0

	alias ROLE_OFF = 1

	alias ROLE_SERVICE = 2

	alias ROLE_NON_EAL = 3

alias rte_eal_lcore_role = fn (UInt32) -> rte_lcore_role_t
alias rte_lcore_has_role = fn (UInt32, rte_lcore_role_t) -> Int32
alias rte_lcore_id = fn () -> UInt32
alias rte_get_main_lcore = fn () -> UInt32
alias rte_lcore_count = fn () -> UInt32
alias rte_lcore_index = fn (Int32) -> Int32
alias rte_socket_id = fn () -> UInt32
alias rte_socket_count = fn () -> UInt32
alias rte_socket_id_by_idx = fn (UInt32) -> Int32
alias rte_lcore_to_socket_id = fn (UInt32) -> UInt32
alias rte_lcore_to_cpu_id = fn (Int32) -> Int32
alias rte_lcore_is_enabled = fn (UInt32) -> Int32
alias rte_get_next_lcore = fn (UInt32, Int32, Int32) -> UInt32
alias rte_lcore_init_cb = fn(UInt32, OpaquePointer) -> Int32
alias rte_lcore_uninit_cb = fn(UInt32, OpaquePointer) -> NoneType
alias rte_lcore_callback_register = fn (UnsafePointer[Int8], rte_lcore_init_cb, rte_lcore_uninit_cb, OpaquePointer) -> OpaquePointer
alias rte_lcore_callback_unregister = fn (OpaquePointer) -> NoneType
alias rte_lcore_iterate_cb = fn(UInt32, OpaquePointer) -> Int32
alias rte_lcore_iterate = fn (rte_lcore_iterate_cb, OpaquePointer) -> Int32
struct rte_lcore_usage(Copyable & Movable):

	var total_cycles : ffi.c_ulong

	var busy_cycles : ffi.c_ulong

alias rte_lcore_usage_cb = fn(UInt32, UnsafePointer[rte_lcore_usage]) -> Int32
alias rte_lcore_register_usage_cb = fn (rte_lcore_usage_cb) -> NoneType
alias rte_lcore_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_thread_register = fn () -> Int32
alias rte_thread_unregister = fn () -> NoneType
alias rte_memory_order = Int32
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The memory order is an integer type in GCC built-ins,
# Node: TextComment()
#  not an enumerated type like in C11.

alias rte_atomic_thread_fence = fn (rte_memory_order) -> NoneType
alias rte_atomic16_cmpset = fn (UnsafePointer[Int16], UInt16, UInt16) -> Int32
alias __sync_bool_compare_and_swap = fn () -> NoneType
alias __sync_bool_compare_and_swap_2 = fn (UnsafePointer[Int16], Int16, Int16) -> Bool
alias rte_atomic16_exchange = fn (UnsafePointer[Int16], UInt16) -> UInt16
alias __atomic_exchange_n = fn () -> NoneType
struct anonomous_record_1439(Copyable & Movable):

	var cnt : Int16

alias rte_atomic16_t = anonomous_record_1439

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The atomic counter structure.

alias rte_atomic16_init = fn (UnsafePointer[rte_atomic16_t]) -> NoneType
alias rte_atomic16_read = fn (UnsafePointer[rte_atomic16_t]) -> Int16
alias rte_atomic16_set = fn (UnsafePointer[rte_atomic16_t], Int16) -> NoneType
alias rte_atomic16_add = fn (UnsafePointer[rte_atomic16_t], Int16) -> NoneType
alias __atomic_fetch_add = fn () -> NoneType
alias rte_atomic16_sub = fn (UnsafePointer[rte_atomic16_t], Int16) -> NoneType
alias __atomic_fetch_sub = fn () -> NoneType
alias rte_atomic16_inc = fn (UnsafePointer[rte_atomic16_t]) -> NoneType
alias rte_atomic16_dec = fn (UnsafePointer[rte_atomic16_t]) -> NoneType
alias rte_atomic16_add_return = fn (UnsafePointer[rte_atomic16_t], Int16) -> Int16
alias rte_atomic16_sub_return = fn (UnsafePointer[rte_atomic16_t], Int16) -> Int16
alias rte_atomic16_inc_and_test = fn (UnsafePointer[rte_atomic16_t]) -> Int32
alias rte_atomic16_dec_and_test = fn (UnsafePointer[rte_atomic16_t]) -> Int32
alias rte_atomic16_test_and_set = fn (UnsafePointer[rte_atomic16_t]) -> Int32
alias rte_atomic16_clear = fn (UnsafePointer[rte_atomic16_t]) -> NoneType
alias rte_atomic32_cmpset = fn (UnsafePointer[Int32], UInt32, UInt32) -> Int32
alias __sync_bool_compare_and_swap_4 = fn (UnsafePointer[Int32], Int32, Int32) -> Bool
alias rte_atomic32_exchange = fn (UnsafePointer[Int32], UInt32) -> UInt32
struct anonomous_record_1440(Copyable & Movable):

	var cnt : Int32

alias rte_atomic32_t = anonomous_record_1440

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The atomic counter structure.

alias rte_atomic32_init = fn (UnsafePointer[rte_atomic32_t]) -> NoneType
alias rte_atomic32_read = fn (UnsafePointer[rte_atomic32_t]) -> Int32
alias rte_atomic32_set = fn (UnsafePointer[rte_atomic32_t], Int32) -> NoneType
alias rte_atomic32_add = fn (UnsafePointer[rte_atomic32_t], Int32) -> NoneType
alias rte_atomic32_sub = fn (UnsafePointer[rte_atomic32_t], Int32) -> NoneType
alias rte_atomic32_inc = fn (UnsafePointer[rte_atomic32_t]) -> NoneType
alias rte_atomic32_dec = fn (UnsafePointer[rte_atomic32_t]) -> NoneType
alias rte_atomic32_add_return = fn (UnsafePointer[rte_atomic32_t], Int32) -> Int32
alias rte_atomic32_sub_return = fn (UnsafePointer[rte_atomic32_t], Int32) -> Int32
alias rte_atomic32_inc_and_test = fn (UnsafePointer[rte_atomic32_t]) -> Int32
alias rte_atomic32_dec_and_test = fn (UnsafePointer[rte_atomic32_t]) -> Int32
alias rte_atomic32_test_and_set = fn (UnsafePointer[rte_atomic32_t]) -> Int32
alias rte_atomic32_clear = fn (UnsafePointer[rte_atomic32_t]) -> NoneType
alias rte_atomic64_cmpset = fn (UnsafePointer[ffi.c_long], ffi.c_ulong, ffi.c_ulong) -> Int32
alias __sync_bool_compare_and_swap_8 = fn (UnsafePointer[ffi.c_long_long], ffi.c_long_long, ffi.c_long_long) -> Bool
alias rte_atomic64_exchange = fn (UnsafePointer[ffi.c_long], ffi.c_ulong) -> ffi.c_ulong
struct anonomous_record_1441(Copyable & Movable):

	var cnt : ffi.c_long

alias rte_atomic64_t = anonomous_record_1441

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The atomic counter structure.

alias rte_atomic64_init = fn (UnsafePointer[rte_atomic64_t]) -> NoneType
alias rte_atomic64_read = fn (UnsafePointer[rte_atomic64_t]) -> ffi.c_long
alias rte_atomic64_set = fn (UnsafePointer[rte_atomic64_t], ffi.c_long) -> NoneType
alias rte_atomic64_add = fn (UnsafePointer[rte_atomic64_t], ffi.c_long) -> NoneType
alias rte_atomic64_sub = fn (UnsafePointer[rte_atomic64_t], ffi.c_long) -> NoneType
alias rte_atomic64_inc = fn (UnsafePointer[rte_atomic64_t]) -> NoneType
alias rte_atomic64_dec = fn (UnsafePointer[rte_atomic64_t]) -> NoneType
alias rte_atomic64_add_return = fn (UnsafePointer[rte_atomic64_t], ffi.c_long) -> ffi.c_long
alias rte_atomic64_sub_return = fn (UnsafePointer[rte_atomic64_t], ffi.c_long) -> ffi.c_long
alias rte_atomic64_inc_and_test = fn (UnsafePointer[rte_atomic64_t]) -> Int32
alias rte_atomic64_dec_and_test = fn (UnsafePointer[rte_atomic64_t]) -> Int32
alias rte_atomic64_test_and_set = fn (UnsafePointer[rte_atomic64_t]) -> Int32
alias rte_atomic64_clear = fn (UnsafePointer[rte_atomic64_t]) -> NoneType
alias anonomous_record_1442 = C_Union[InlineArray[ffi.c_ulong_long, 2], ffi.c_long_long]

struct anonomous_record_1443(Copyable & Movable):
# Alignment: 16 


	var union_placeholder_1 : anonomous_record_1442



alias rte_int128_t = anonomous_record_1443

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  128-bit integer structure.

alias rte_openlog_stream = fn (UnsafePointer[FILE]) -> Int32
alias rte_log_get_stream = fn () -> UnsafePointer[FILE]
alias rte_log_set_global_level = fn (UInt32) -> NoneType
alias rte_log_get_global_level = fn () -> UInt32
alias rte_log_get_level = fn (UInt32) -> Int32
alias rte_log_can_log = fn (UInt32, UInt32) -> Bool
alias rte_log_set_level_pattern = fn (UnsafePointer[Int8], UInt32) -> Int32
alias rte_log_set_level_regexp = fn (UnsafePointer[Int8], UInt32) -> Int32
alias rte_log_set_level = fn (UInt32, UInt32) -> Int32
alias rte_log_cur_msg_loglevel = fn () -> Int32
alias rte_log_cur_msg_logtype = fn () -> Int32
alias rte_log_register = fn (UnsafePointer[Int8]) -> Int32
alias rte_log_register_type_and_pick_level = fn (UnsafePointer[Int8], UInt32) -> Int32
alias rte_log_list_types = fn (UnsafePointer[FILE], UnsafePointer[Int8]) -> NoneType
alias rte_log_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_log = fn (UInt32, UInt32, UnsafePointer[Int8]) -> Int32
alias rte_vlog = fn (UInt32, UInt32, UnsafePointer[Int8], va_list) -> Int32
alias rte_dump_stack = fn () -> NoneType
alias __rte_panic = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> NoneType
alias __atomic_thread_fence = fn (Int32) -> NoneType
alias rte_atomic128_cmp_exchange = fn (UnsafePointer[ffi.c_long_long], UnsafePointer[ffi.c_long_long], UnsafePointer[ffi.c_long_long], UInt32, Int32, Int32) -> Int32
alias __builtin_expect = fn (ffi.c_long, ffi.c_long) -> ffi.c_long
alias rte_pause = fn () -> NoneType
alias rte_wait_until_equal_16 = fn (UnsafePointer[Int16], UInt16, rte_memory_order) -> NoneType
alias rte_wait_until_equal_32 = fn (UnsafePointer[Int32], UInt32, rte_memory_order) -> NoneType
alias rte_wait_until_equal_64 = fn (UnsafePointer[ffi.c_long], ffi.c_ulong, rte_memory_order) -> NoneType
alias __atomic_load_n = fn () -> NoneType
struct anonomous_record_1444(Copyable & Movable):

	var locked : Int32

alias rte_spinlock_t = anonomous_record_1444

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The rte_spinlock_t type.

alias rte_spinlock_init = fn (UnsafePointer[rte_spinlock_t]) -> NoneType
alias rte_spinlock_lock = fn (UnsafePointer[rte_spinlock_t]) -> NoneType
alias __atomic_compare_exchange_n = fn () -> NoneType
alias rte_spinlock_unlock = fn (UnsafePointer[rte_spinlock_t]) -> NoneType
alias __atomic_store_n = fn () -> NoneType
alias rte_spinlock_trylock = fn (UnsafePointer[rte_spinlock_t]) -> Int32
alias rte_spinlock_is_locked = fn (UnsafePointer[rte_spinlock_t]) -> Int32
alias rte_tm_supported = fn () -> Int32
alias rte_spinlock_lock_tm = fn (UnsafePointer[rte_spinlock_t]) -> NoneType
alias rte_spinlock_unlock_tm = fn (UnsafePointer[rte_spinlock_t]) -> NoneType
alias rte_spinlock_trylock_tm = fn (UnsafePointer[rte_spinlock_t]) -> Int32
struct anonomous_record_1445(Copyable & Movable):

	var sl : rte_spinlock_t

	var user : Int32

	var count : Int32

alias rte_spinlock_recursive_t = anonomous_record_1445

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The rte_spinlock_recursive_t type.

alias rte_spinlock_recursive_init = fn (UnsafePointer[rte_spinlock_recursive_t]) -> NoneType
alias rte_spinlock_recursive_lock = fn (UnsafePointer[rte_spinlock_recursive_t]) -> NoneType
alias rte_spinlock_recursive_unlock = fn (UnsafePointer[rte_spinlock_recursive_t]) -> NoneType
alias rte_spinlock_recursive_trylock = fn (UnsafePointer[rte_spinlock_recursive_t]) -> Int32
alias rte_spinlock_recursive_lock_tm = fn (UnsafePointer[rte_spinlock_recursive_t]) -> NoneType
alias rte_spinlock_recursive_unlock_tm = fn (UnsafePointer[rte_spinlock_recursive_t]) -> NoneType
alias rte_spinlock_recursive_trylock_tm = fn (UnsafePointer[rte_spinlock_recursive_t]) -> Int32
alias __errno_location = fn () -> UnsafePointer[Int32]
alias rte_bit_relaxed_get32 = fn (UInt32, UnsafePointer[Int32]) -> UInt32
alias rte_bit_relaxed_set32 = fn (UInt32, UnsafePointer[Int32]) -> NoneType
alias rte_bit_relaxed_clear32 = fn (UInt32, UnsafePointer[Int32]) -> NoneType
alias rte_bit_relaxed_test_and_set32 = fn (UInt32, UnsafePointer[Int32]) -> UInt32
alias rte_bit_relaxed_test_and_clear32 = fn (UInt32, UnsafePointer[Int32]) -> UInt32
alias rte_bit_relaxed_get64 = fn (UInt32, UnsafePointer[ffi.c_long]) -> ffi.c_ulong
alias rte_bit_relaxed_set64 = fn (UInt32, UnsafePointer[ffi.c_long]) -> NoneType
alias rte_bit_relaxed_clear64 = fn (UInt32, UnsafePointer[ffi.c_long]) -> NoneType
alias rte_bit_relaxed_test_and_set64 = fn (UInt32, UnsafePointer[ffi.c_long]) -> ffi.c_ulong
alias rte_bit_relaxed_test_and_clear64 = fn (UInt32, UnsafePointer[ffi.c_long]) -> ffi.c_ulong
alias rte_clz32 = fn (UInt32) -> UInt32
alias __builtin_clz = fn (UInt32) -> Int32
alias rte_clz64 = fn (ffi.c_ulong) -> UInt32
alias __builtin_clzll = fn (ffi.c_ulong_long) -> Int32
alias rte_ctz32 = fn (UInt32) -> UInt32
alias __builtin_ctz = fn (UInt32) -> Int32
alias rte_ctz64 = fn (ffi.c_ulong) -> UInt32
alias __builtin_ctzll = fn (ffi.c_ulong_long) -> Int32
alias rte_popcount32 = fn (UInt32) -> UInt32
alias __builtin_popcount = fn (UInt32) -> Int32
alias rte_popcount64 = fn (ffi.c_ulong) -> UInt32
alias __builtin_popcountll = fn (ffi.c_ulong_long) -> Int32
alias rte_ffs32 = fn (UInt32) -> UInt32
alias __builtin_ffs = fn (Int32) -> Int32
alias rte_ffs64 = fn (ffi.c_ulong) -> UInt32
alias __builtin_ffsll = fn (ffi.c_long_long) -> Int32
alias rte_combine32ms1b = fn (UInt32) -> UInt32
alias rte_combine64ms1b = fn (ffi.c_ulong) -> ffi.c_ulong
alias rte_bsf32 = fn (UInt32) -> UInt32
alias rte_bsf32_safe = fn (UInt32, UnsafePointer[UInt32]) -> Int32
alias rte_bsf64 = fn (ffi.c_ulong) -> UInt32
alias rte_bsf64_safe = fn (ffi.c_ulong, UnsafePointer[UInt32]) -> Int32
alias rte_fls_u32 = fn (UInt32) -> UInt32
alias rte_fls_u64 = fn (ffi.c_ulong) -> UInt32
alias rte_is_power_of_2 = fn (UInt32) -> Int32
alias rte_align32pow2 = fn (UInt32) -> UInt32
alias rte_align32prevpow2 = fn (UInt32) -> UInt32
alias rte_align64pow2 = fn (ffi.c_ulong) -> ffi.c_ulong
alias rte_align64prevpow2 = fn (ffi.c_ulong) -> ffi.c_ulong
alias rte_log2_u32 = fn (UInt32) -> UInt32
alias rte_log2_u64 = fn (ffi.c_ulong) -> UInt32
struct anonomous_record_1446(Copyable & Movable):
	var cnt : Int32

alias rte_rwlock_t = anonomous_record_1446

alias rte_rwlock_init = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias rte_rwlock_read_lock = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias rte_rwlock_read_trylock = fn (UnsafePointer[rte_rwlock_t]) -> Int32
alias rte_rwlock_read_unlock = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias rte_rwlock_write_trylock = fn (UnsafePointer[rte_rwlock_t]) -> Int32
alias rte_rwlock_write_lock = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias __atomic_fetch_or = fn () -> NoneType
alias rte_rwlock_write_unlock = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias rte_rwlock_write_is_locked = fn (UnsafePointer[rte_rwlock_t]) -> Int32
alias rte_rwlock_read_lock_tm = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias rte_rwlock_read_unlock_tm = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias rte_rwlock_write_lock_tm = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias rte_rwlock_write_unlock_tm = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias rte_mcfg_mem_get_lock = fn () -> UnsafePointer[rte_rwlock_t]
alias rte_mcfg_tailq_get_lock = fn () -> UnsafePointer[rte_rwlock_t]
alias rte_mcfg_mempool_get_lock = fn () -> UnsafePointer[rte_rwlock_t]
alias rte_mcfg_timer_get_lock = fn () -> UnsafePointer[rte_spinlock_t]
alias rte_mcfg_ethdev_get_lock = fn () -> UnsafePointer[rte_spinlock_t]
alias rte_mcfg_mem_read_lock = fn () -> NoneType
alias rte_mcfg_mem_read_unlock = fn () -> NoneType
alias rte_mcfg_mem_write_lock = fn () -> NoneType
alias rte_mcfg_mem_write_unlock = fn () -> NoneType
alias rte_mcfg_tailq_read_lock = fn () -> NoneType
alias rte_mcfg_tailq_read_unlock = fn () -> NoneType
alias rte_mcfg_tailq_write_lock = fn () -> NoneType
alias rte_mcfg_tailq_write_unlock = fn () -> NoneType
alias rte_mcfg_mempool_read_lock = fn () -> NoneType
alias rte_mcfg_mempool_read_unlock = fn () -> NoneType
alias rte_mcfg_mempool_write_lock = fn () -> NoneType
alias rte_mcfg_mempool_write_unlock = fn () -> NoneType
alias rte_mcfg_timer_lock = fn () -> NoneType
alias rte_mcfg_timer_unlock = fn () -> NoneType
alias rte_mcfg_get_single_file_segments = fn () -> Bool
struct rte_fbarray(Copyable & Movable):
	var name : InlineArray[Int8, 64]

	var count : UInt32

	var len : UInt32

	var elt_sz : UInt32

	var data : OpaquePointer

	var rwlock : rte_rwlock_t

alias rte_fbarray_init = fn (UnsafePointer[rte_fbarray], UnsafePointer[Int8], UInt32, UInt32) -> Int32
alias rte_fbarray_attach = fn (UnsafePointer[rte_fbarray]) -> Int32
alias rte_fbarray_destroy = fn (UnsafePointer[rte_fbarray]) -> Int32
alias rte_fbarray_detach = fn (UnsafePointer[rte_fbarray]) -> Int32
alias rte_fbarray_get = fn (UnsafePointer[rte_fbarray], UInt32) -> OpaquePointer
alias rte_fbarray_find_idx = fn (UnsafePointer[rte_fbarray], OpaquePointer) -> Int32
alias rte_fbarray_set_used = fn (UnsafePointer[rte_fbarray], UInt32) -> Int32
alias rte_fbarray_set_free = fn (UnsafePointer[rte_fbarray], UInt32) -> Int32
alias rte_fbarray_is_used = fn (UnsafePointer[rte_fbarray], UInt32) -> Int32
alias rte_fbarray_find_next_free = fn (UnsafePointer[rte_fbarray], UInt32) -> Int32
alias rte_fbarray_find_next_used = fn (UnsafePointer[rte_fbarray], UInt32) -> Int32
alias rte_fbarray_find_next_n_free = fn (UnsafePointer[rte_fbarray], UInt32, UInt32) -> Int32
alias rte_fbarray_find_next_n_used = fn (UnsafePointer[rte_fbarray], UInt32, UInt32) -> Int32
alias rte_fbarray_find_contig_free = fn (UnsafePointer[rte_fbarray], UInt32) -> Int32
alias rte_fbarray_find_contig_used = fn (UnsafePointer[rte_fbarray], UInt32) -> Int32
alias rte_fbarray_find_prev_free = fn (UnsafePointer[rte_fbarray], UInt32) -> Int32
alias rte_fbarray_find_prev_used = fn (UnsafePointer[rte_fbarray], UInt32) -> Int32
alias rte_fbarray_find_prev_n_free = fn (UnsafePointer[rte_fbarray], UInt32, UInt32) -> Int32
alias rte_fbarray_find_prev_n_used = fn (UnsafePointer[rte_fbarray], UInt32, UInt32) -> Int32
alias rte_fbarray_find_rev_contig_free = fn (UnsafePointer[rte_fbarray], UInt32) -> Int32
alias rte_fbarray_find_rev_contig_used = fn (UnsafePointer[rte_fbarray], UInt32) -> Int32
alias rte_fbarray_find_biggest_free = fn (UnsafePointer[rte_fbarray], UInt32) -> Int32
alias rte_fbarray_find_biggest_used = fn (UnsafePointer[rte_fbarray], UInt32) -> Int32
alias rte_fbarray_find_rev_biggest_free = fn (UnsafePointer[rte_fbarray], UInt32) -> Int32
alias rte_fbarray_find_rev_biggest_used = fn (UnsafePointer[rte_fbarray], UInt32) -> Int32
alias rte_fbarray_dump_metadata = fn (UnsafePointer[rte_fbarray], UnsafePointer[FILE]) -> NoneType
alias anonomous_record_1447 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memseg(Copyable & Movable):


	var iova : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_1447



	var len : ffi.c_ulong

	var hugepage_sz : ffi.c_ulong

	var socket_id : Int32

	var nchannel : UInt32

	var nrank : UInt32

	var flags : UInt32

alias anonomous_record_1448 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memseg_list(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_1448



	var page_sz : ffi.c_ulong

	var socket_id : Int32

	var version : UInt32

	var len : ffi.c_ulong

	var external : UInt32

	var heap : UInt32

	var memseg_arr : rte_fbarray

alias rte_mem_lock_page = fn (OpaquePointer) -> Int32
alias rte_mem_virt2phy = fn (OpaquePointer) -> phys_addr_t
alias rte_mem_virt2iova = fn (OpaquePointer) -> rte_iova_t
alias rte_mem_iova2virt = fn (rte_iova_t) -> OpaquePointer
alias rte_mem_virt2memseg = fn (OpaquePointer, UnsafePointer[rte_memseg_list]) -> UnsafePointer[rte_memseg]
alias rte_mem_virt2memseg_list = fn (OpaquePointer) -> UnsafePointer[rte_memseg_list]
alias rte_memseg_walk_t = fn(read UnsafePointer[rte_memseg_list], read UnsafePointer[rte_memseg], OpaquePointer) -> Int32
alias rte_memseg_contig_walk_t = fn(read UnsafePointer[rte_memseg_list], read UnsafePointer[rte_memseg], size_t, OpaquePointer) -> Int32
alias rte_memseg_list_walk_t = fn(read UnsafePointer[rte_memseg_list], OpaquePointer) -> Int32
alias rte_memseg_walk = fn (rte_memseg_walk_t, OpaquePointer) -> Int32
alias rte_memseg_contig_walk = fn (rte_memseg_contig_walk_t, OpaquePointer) -> Int32
alias rte_memseg_list_walk = fn (rte_memseg_list_walk_t, OpaquePointer) -> Int32
alias rte_memseg_walk_thread_unsafe = fn (rte_memseg_walk_t, OpaquePointer) -> Int32
alias rte_memseg_contig_walk_thread_unsafe = fn (rte_memseg_contig_walk_t, OpaquePointer) -> Int32
alias rte_memseg_list_walk_thread_unsafe = fn (rte_memseg_list_walk_t, OpaquePointer) -> Int32
alias rte_memseg_get_fd = fn (UnsafePointer[rte_memseg]) -> Int32
alias rte_memseg_get_fd_thread_unsafe = fn (UnsafePointer[rte_memseg]) -> Int32
alias rte_memseg_get_fd_offset = fn (UnsafePointer[rte_memseg], UnsafePointer[size_t]) -> Int32
alias rte_memseg_get_fd_offset_thread_unsafe = fn (UnsafePointer[rte_memseg], UnsafePointer[size_t]) -> Int32
alias rte_extmem_register = fn (OpaquePointer, size_t, UnsafePointer[rte_iova_t], UInt32, size_t) -> Int32
alias rte_extmem_unregister = fn (OpaquePointer, size_t) -> Int32
alias rte_extmem_attach = fn (OpaquePointer, size_t) -> Int32
alias rte_extmem_detach = fn (OpaquePointer, size_t) -> Int32
alias rte_dump_physmem_layout = fn (UnsafePointer[FILE]) -> NoneType
alias rte_eal_get_physmem_size = fn () -> ffi.c_ulong
alias rte_memory_get_nchannel = fn () -> UInt32
alias rte_memory_get_nrank = fn () -> UInt32
alias rte_mem_check_dma_mask = fn (UInt8) -> Int32
alias rte_mem_check_dma_mask_thread_unsafe = fn (UInt8) -> Int32
alias rte_mem_set_dma_mask = fn (UInt8) -> NoneType
alias rte_eal_using_phys_addrs = fn () -> Int32
struct rte_mem_event(Copyable & Movable):

	alias RTE_MEM_EVENT_ALLOC = 0

	alias RTE_MEM_EVENT_FREE = 1

alias rte_mem_event_callback_t = fn(rte_mem_event, read OpaquePointer, size_t, OpaquePointer) -> NoneType
alias rte_mem_event_callback_register = fn (UnsafePointer[Int8], rte_mem_event_callback_t, OpaquePointer) -> Int32
alias rte_mem_event_callback_unregister = fn (UnsafePointer[Int8], OpaquePointer) -> Int32
alias rte_mem_alloc_validator_t = fn(Int32, size_t, size_t) -> Int32
alias rte_mem_alloc_validator_register = fn (UnsafePointer[Int8], rte_mem_alloc_validator_t, Int32, size_t) -> Int32
alias rte_mem_alloc_validator_unregister = fn (UnsafePointer[Int8], Int32) -> Int32
alias rte_memzero_explicit = fn (OpaquePointer, size_t) -> NoneType
alias anonomous_record_1449 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memzone(Copyable & Movable):


	var name : InlineArray[Int8, 32]

	var iova : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_1449



	var len : ffi.c_ulong

	var hugepage_sz : ffi.c_ulong

	var socket_id : Int32

	var flags : UInt32

alias rte_memzone_max_set = fn (size_t) -> Int32
alias rte_memzone_max_get = fn () -> size_t
alias rte_memzone_reserve = fn (UnsafePointer[Int8], size_t, Int32, UInt32) -> UnsafePointer[rte_memzone]
alias rte_memzone_reserve_aligned = fn (UnsafePointer[Int8], size_t, Int32, UInt32, UInt32) -> UnsafePointer[rte_memzone]
alias rte_memzone_reserve_bounded = fn (UnsafePointer[Int8], size_t, Int32, UInt32, UInt32, UInt32) -> UnsafePointer[rte_memzone]
alias rte_memzone_free = fn (UnsafePointer[rte_memzone]) -> Int32
alias rte_memzone_lookup = fn (UnsafePointer[Int8]) -> UnsafePointer[rte_memzone]
alias rte_memzone_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_memzone_walk = fn (fn (UnsafePointer[rte_memzone], OpaquePointer) -> NoneType, OpaquePointer) -> NoneType
struct rte_ring_queue_behavior(Copyable & Movable):

	alias RTE_RING_QUEUE_FIXED = 0

	alias RTE_RING_QUEUE_VARIABLE = 1

struct rte_ring_sync_type(Copyable & Movable):

	alias RTE_RING_SYNC_MT = 0

	alias RTE_RING_SYNC_ST = 1

	alias RTE_RING_SYNC_MT_RTS = 2

	alias RTE_RING_SYNC_MT_HTS = 3

alias anonomous_record_1450 = C_Union[rte_ring_sync_type, UInt32]

struct rte_ring_headtail(Copyable & Movable):

	var head : UInt32

	var tail : UInt32

	var union_placeholder_1 : anonomous_record_1450



struct anonomous_record_1451(Copyable & Movable):
	var cnt : UInt32

	var pos : UInt32

alias __rte_ring_rts_poscnt = C_Union[ffi.c_ulong, anonomous_record_1451]

struct rte_ring_rts_headtail(Copyable & Movable):
	var tail : union __rte_ring_rts_poscnt

	var sync_type : rte_ring_sync_type

	var htd_max : UInt32

	var head : union __rte_ring_rts_poscnt

struct anonomous_record_1452(Copyable & Movable):
	var head : UInt32

	var tail : UInt32

alias __rte_ring_hts_pos = C_Union[ffi.c_ulong, anonomous_record_1452]

struct rte_ring_hts_headtail(Copyable & Movable):
	var ht : union __rte_ring_hts_pos

	var sync_type : rte_ring_sync_type

alias anonomous_record_1454 = C_Union[rte_ring_headtail, rte_ring_hts_headtail, rte_ring_rts_headtail]
# Alignment: 128 

alias anonomous_record_1453 = C_Union[rte_ring_headtail, rte_ring_hts_headtail, rte_ring_rts_headtail]
# Alignment: 128 

struct rte_ring(Copyable & Movable):

	var name : InlineArray[Int8, 29]

	var flags : Int32

	var memzone : UnsafePointer[rte_memzone]

	var size : UInt32

	var mask : UInt32

	var capacity : UInt32

	var cache_guard_0 : InlineArray[Int8, 128]

	var union_placeholder_1 : anonomous_record_1453




	var cache_guard_1 : InlineArray[Int8, 128]

	var union_placeholder_2 : anonomous_record_1454




	var cache_guard_2 : InlineArray[Int8, 128]

alias __rte_ring_enqueue_elems_32 = fn (OpaquePointer, OpaquePointer, UInt32, UInt32, UInt32) -> NoneType
alias __rte_ring_enqueue_elems_64 = fn (OpaquePointer, OpaquePointer, UInt32, UInt32, UInt32) -> NoneType
alias __rte_ring_enqueue_elems_128 = fn (OpaquePointer, OpaquePointer, UInt32, UInt32, UInt32) -> NoneType
alias __rte_ring_do_enqueue_elems = fn (OpaquePointer, OpaquePointer, UInt32, UInt32, UInt32, UInt32) -> NoneType
alias __rte_ring_enqueue_elems = fn (UnsafePointer[rte_ring], UInt32, OpaquePointer, UInt32, UInt32) -> NoneType
alias __rte_ring_dequeue_elems_32 = fn (OpaquePointer, OpaquePointer, UInt32, UInt32, UInt32) -> NoneType
alias __rte_ring_dequeue_elems_64 = fn (OpaquePointer, OpaquePointer, UInt32, UInt32, UInt32) -> NoneType
alias __rte_ring_dequeue_elems_128 = fn (OpaquePointer, OpaquePointer, UInt32, UInt32, UInt32) -> NoneType
alias __rte_ring_do_dequeue_elems = fn (OpaquePointer, OpaquePointer, UInt32, UInt32, UInt32, UInt32) -> NoneType
alias __rte_ring_dequeue_elems = fn (UnsafePointer[rte_ring], UInt32, OpaquePointer, UInt32, UInt32) -> NoneType
alias __rte_ring_update_tail = fn (UnsafePointer[rte_ring_headtail], UInt32, UInt32, UInt32, UInt32) -> NoneType
alias __rte_ring_headtail_move_head = fn (UnsafePointer[rte_ring_headtail], UnsafePointer[rte_ring_headtail], UInt32, UInt32, UInt32, rte_ring_queue_behavior, UnsafePointer[UInt32], UnsafePointer[UInt32], UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_move_prod_head = fn (UnsafePointer[rte_ring], UInt32, UInt32, rte_ring_queue_behavior, UnsafePointer[UInt32], UnsafePointer[UInt32], UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_move_cons_head = fn (UnsafePointer[rte_ring], UInt32, UInt32, rte_ring_queue_behavior, UnsafePointer[UInt32], UnsafePointer[UInt32], UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_do_enqueue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, rte_ring_queue_behavior, UInt32, UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_do_dequeue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, rte_ring_queue_behavior, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_get_memsize_elem = fn (UInt32, UInt32) -> ssize_t
alias rte_ring_create_elem = fn (UnsafePointer[Int8], UInt32, UInt32, Int32, UInt32) -> UnsafePointer[rte_ring]
alias rte_ring_mp_enqueue_bulk_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_sp_enqueue_bulk_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_hts_update_tail = fn (UnsafePointer[rte_ring_hts_headtail], UInt32, UInt32, UInt32) -> NoneType
alias __rte_ring_hts_head_wait = fn (UnsafePointer[rte_ring_hts_headtail], UnsafePointer[__rte_ring_hts_pos]) -> NoneType
alias __rte_ring_hts_move_head = fn (UnsafePointer[rte_ring_hts_headtail], UnsafePointer[rte_ring_headtail], UInt32, UInt32, rte_ring_queue_behavior, UnsafePointer[UInt32], UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_hts_move_prod_head = fn (UnsafePointer[rte_ring], UInt32, rte_ring_queue_behavior, UnsafePointer[UInt32], UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_hts_move_cons_head = fn (UnsafePointer[rte_ring], UInt32, rte_ring_queue_behavior, UnsafePointer[UInt32], UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_do_hts_enqueue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, rte_ring_queue_behavior, UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_do_hts_dequeue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, rte_ring_queue_behavior, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_hts_enqueue_bulk_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_hts_dequeue_bulk_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_hts_enqueue_burst_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_hts_dequeue_burst_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_hts_enqueue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer, mut=False], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_hts_dequeue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_hts_enqueue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer, mut=False], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_hts_dequeue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_rts_update_tail = fn (UnsafePointer[rte_ring_rts_headtail]) -> NoneType
alias __rte_ring_rts_head_wait = fn (UnsafePointer[rte_ring_rts_headtail], UnsafePointer[__rte_ring_rts_poscnt]) -> NoneType
alias __rte_ring_rts_move_head = fn (UnsafePointer[rte_ring_rts_headtail], UnsafePointer[rte_ring_headtail], UInt32, UInt32, rte_ring_queue_behavior, UnsafePointer[UInt32], UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_rts_move_prod_head = fn (UnsafePointer[rte_ring], UInt32, rte_ring_queue_behavior, UnsafePointer[UInt32], UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_rts_move_cons_head = fn (UnsafePointer[rte_ring], UInt32, rte_ring_queue_behavior, UnsafePointer[UInt32], UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_do_rts_enqueue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, rte_ring_queue_behavior, UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_do_rts_dequeue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, rte_ring_queue_behavior, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_rts_enqueue_bulk_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_rts_dequeue_bulk_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_rts_enqueue_burst_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_rts_dequeue_burst_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_rts_enqueue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer, mut=False], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_rts_dequeue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_rts_enqueue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer, mut=False], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_rts_dequeue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_get_prod_htd_max = fn (UnsafePointer[rte_ring]) -> UInt32
alias rte_ring_set_prod_htd_max = fn (UnsafePointer[rte_ring], UInt32) -> Int32
alias rte_ring_get_cons_htd_max = fn (UnsafePointer[rte_ring]) -> UInt32
alias rte_ring_set_cons_htd_max = fn (UnsafePointer[rte_ring], UInt32) -> Int32
alias rte_ring_enqueue_bulk_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_enqueue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32) -> Int32
alias rte_ring_sp_enqueue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32) -> Int32
alias rte_ring_enqueue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32) -> Int32
alias rte_ring_mc_dequeue_bulk_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_sc_dequeue_bulk_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_bulk_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_dequeue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32) -> Int32
alias rte_ring_sc_dequeue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32) -> Int32
alias rte_ring_dequeue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32) -> Int32
alias rte_ring_mp_enqueue_burst_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_sp_enqueue_burst_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_burst_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_dequeue_burst_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_sc_dequeue_burst_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_burst_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_st_get_tail = fn (UnsafePointer[rte_ring_headtail], UnsafePointer[UInt32], UInt32) -> UInt32
alias __rte_ring_st_set_head_tail = fn (UnsafePointer[rte_ring_headtail], UInt32, UInt32, UInt32) -> NoneType
alias __rte_ring_hts_get_tail = fn (UnsafePointer[rte_ring_hts_headtail], UnsafePointer[UInt32], UInt32) -> UInt32
alias __rte_ring_hts_set_head_tail = fn (UnsafePointer[rte_ring_hts_headtail], UInt32, UInt32, UInt32) -> NoneType
alias __rte_ring_do_enqueue_start = fn (UnsafePointer[rte_ring], UInt32, rte_ring_queue_behavior, UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_do_dequeue_start = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, rte_ring_queue_behavior, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_bulk_elem_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_bulk_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_burst_elem_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_burst_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_elem_finish = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32) -> NoneType
alias rte_ring_enqueue_finish = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer, mut=False], UInt32) -> NoneType
alias rte_ring_dequeue_bulk_elem_start = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_bulk_start = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_burst_elem_start = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_burst_start = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_elem_finish = fn (UnsafePointer[rte_ring], UInt32) -> NoneType
alias rte_ring_dequeue_finish = fn (UnsafePointer[rte_ring], UInt32) -> NoneType
struct rte_ring_zc_data(Copyable & Movable):
# Alignment: 128 


	var ptr1 : OpaquePointer

	var ptr2 : OpaquePointer

	var n1 : UInt32

alias __rte_ring_get_elem_addr = fn (UnsafePointer[rte_ring], UInt32, UInt32, UInt32, UnsafePointer[OpaquePointer], UnsafePointer[UInt32], UnsafePointer[OpaquePointer]) -> NoneType
alias __rte_ring_do_enqueue_zc_elem_start = fn (UnsafePointer[rte_ring], UInt32, UInt32, rte_ring_queue_behavior, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_zc_bulk_elem_start = fn (UnsafePointer[rte_ring], UInt32, UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_zc_bulk_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_zc_burst_elem_start = fn (UnsafePointer[rte_ring], UInt32, UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_zc_burst_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_zc_elem_finish = fn (UnsafePointer[rte_ring], UInt32) -> NoneType
alias rte_ring_enqueue_zc_finish = fn (UnsafePointer[rte_ring], UInt32) -> NoneType
alias __rte_ring_do_dequeue_zc_elem_start = fn (UnsafePointer[rte_ring], UInt32, UInt32, rte_ring_queue_behavior, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_zc_bulk_elem_start = fn (UnsafePointer[rte_ring], UInt32, UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_zc_bulk_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_zc_burst_elem_start = fn (UnsafePointer[rte_ring], UInt32, UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_zc_burst_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_zc_elem_finish = fn (UnsafePointer[rte_ring], UInt32) -> NoneType
alias rte_ring_dequeue_zc_finish = fn (UnsafePointer[rte_ring], UInt32) -> NoneType
alias rte_ring_get_memsize = fn (UInt32) -> ssize_t
alias rte_ring_init = fn (UnsafePointer[rte_ring], UnsafePointer[Int8], UInt32, UInt32) -> Int32
alias rte_ring_free = fn (UnsafePointer[rte_ring]) -> NoneType
alias rte_ring_create = fn (UnsafePointer[Int8], UInt32, Int32, UInt32) -> UnsafePointer[rte_ring]
alias rte_ring_dump = fn (UnsafePointer[FILE], UnsafePointer[rte_ring]) -> NoneType
alias rte_ring_headtail_dump = fn (UnsafePointer[FILE], UnsafePointer[Int8], UnsafePointer[rte_ring_headtail]) -> NoneType
alias rte_ring_mp_enqueue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer, mut=False], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_sp_enqueue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer, mut=False], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer, mut=False], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_enqueue = fn (UnsafePointer[rte_ring], OpaquePointer) -> Int32
alias rte_ring_sp_enqueue = fn (UnsafePointer[rte_ring], OpaquePointer) -> Int32
alias rte_ring_enqueue = fn (UnsafePointer[rte_ring], OpaquePointer) -> Int32
alias rte_ring_mc_dequeue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_sc_dequeue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_dequeue = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer]) -> Int32
alias rte_ring_sc_dequeue = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer]) -> Int32
alias rte_ring_dequeue = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer]) -> Int32
alias rte_ring_reset = fn (UnsafePointer[rte_ring]) -> NoneType
alias rte_ring_count = fn (UnsafePointer[rte_ring]) -> UInt32
alias rte_ring_free_count = fn (UnsafePointer[rte_ring]) -> UInt32
alias rte_ring_full = fn (UnsafePointer[rte_ring]) -> Int32
alias rte_ring_empty = fn (UnsafePointer[rte_ring]) -> Int32
alias rte_ring_get_size = fn (UnsafePointer[rte_ring]) -> UInt32
alias rte_ring_get_capacity = fn (UnsafePointer[rte_ring]) -> UInt32
alias rte_ring_get_prod_sync_type = fn (UnsafePointer[rte_ring]) -> rte_ring_sync_type
alias rte_ring_is_prod_single = fn (UnsafePointer[rte_ring]) -> Int32
alias rte_ring_get_cons_sync_type = fn (UnsafePointer[rte_ring]) -> rte_ring_sync_type
alias rte_ring_is_cons_single = fn (UnsafePointer[rte_ring]) -> Int32
alias rte_ring_list_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_ring_lookup = fn (UnsafePointer[Int8]) -> UnsafePointer[rte_ring]
alias rte_ring_mp_enqueue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer, mut=False], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_sp_enqueue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer, mut=False], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer, mut=False], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_dequeue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_sc_dequeue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_mov16 = fn (UnsafePointer[UInt8], UnsafePointer[UInt8]) -> NoneType
alias rte_mov32 = fn (UnsafePointer[UInt8], UnsafePointer[UInt8]) -> NoneType
alias rte_mov64 = fn (UnsafePointer[UInt8], UnsafePointer[UInt8]) -> NoneType
alias rte_mov128 = fn (UnsafePointer[UInt8], UnsafePointer[UInt8]) -> NoneType
alias rte_mov256 = fn (UnsafePointer[UInt8], UnsafePointer[UInt8]) -> NoneType
alias rte_mov48 = fn (UnsafePointer[UInt8], UnsafePointer[UInt8]) -> NoneType
struct timer_source(Copyable & Movable):
	alias EAL_TIMER_TSC = 0

	alias EAL_TIMER_HPET = 1

alias eal_timer_source = timer_source
alias rte_get_tsc_hz = fn () -> ffi.c_ulong
alias rte_get_tsc_cycles = fn () -> ffi.c_ulong
alias rte_get_timer_cycles = fn () -> ffi.c_ulong
alias rte_get_timer_hz = fn () -> ffi.c_ulong
alias rte_delay_us = fn(UInt32) -> NoneType
alias rte_delay_ms = fn (UInt32) -> NoneType
alias rte_delay_us_block = fn (UInt32) -> NoneType
alias rte_delay_us_sleep = fn (UInt32) -> NoneType
alias rte_delay_us_callback_register = fn (fn (UInt32) -> NoneType) -> NoneType
alias __rte_arm64_cntfrq = fn () -> ffi.c_ulong
alias __rte_arm64_cntvct = fn () -> ffi.c_ulong
alias __rte_arm64_cntvct_precise = fn () -> ffi.c_ulong
alias rte_rdtsc = fn () -> ffi.c_ulong
alias rte_rdtsc_precise = fn () -> ffi.c_ulong
alias _ISupper = 256

alias _ISlower = 512

alias _ISalpha = 1024

alias _ISdigit = 2048

alias _ISxdigit = 4096

alias _ISspace = 8192

alias _ISprint = 16384

alias _ISgraph = 32768

alias _ISblank = 1

alias _IScntrl = 2

alias _ISpunct = 4

alias _ISalnum = 8

alias __ctype_b_loc = fn () -> UnsafePointer[UnsafePointer[UInt16]]
alias __ctype_tolower_loc = fn () -> UnsafePointer[UnsafePointer[Int32]]
alias __ctype_toupper_loc = fn () -> UnsafePointer[UnsafePointer[Int32]]
alias isalnum = fn (Int32) -> Int32
alias isalpha = fn (Int32) -> Int32
alias iscntrl = fn (Int32) -> Int32
alias isdigit = fn (Int32) -> Int32
alias islower = fn (Int32) -> Int32
alias isgraph = fn (Int32) -> Int32
alias isprint = fn (Int32) -> Int32
alias ispunct = fn (Int32) -> Int32
alias isspace = fn (Int32) -> Int32
alias isupper = fn (Int32) -> Int32
alias isxdigit = fn (Int32) -> Int32
alias tolower = fn (Int32) -> Int32
alias toupper = fn (Int32) -> Int32
alias isblank = fn (Int32) -> Int32
alias isascii = fn (Int32) -> Int32
alias toascii = fn (Int32) -> Int32
alias _toupper = fn (Int32) -> Int32
alias _tolower = fn (Int32) -> Int32
alias isalnum_l = fn (Int32, locale_t) -> Int32
alias isalpha_l = fn (Int32, locale_t) -> Int32
alias iscntrl_l = fn (Int32, locale_t) -> Int32
alias isdigit_l = fn (Int32, locale_t) -> Int32
alias islower_l = fn (Int32, locale_t) -> Int32
alias isgraph_l = fn (Int32, locale_t) -> Int32
alias isprint_l = fn (Int32, locale_t) -> Int32
alias ispunct_l = fn (Int32, locale_t) -> Int32
alias isspace_l = fn (Int32, locale_t) -> Int32
alias isupper_l = fn (Int32, locale_t) -> Int32
alias isxdigit_l = fn (Int32, locale_t) -> Int32
alias isblank_l = fn (Int32, locale_t) -> Int32
alias __tolower_l = fn (Int32, locale_t) -> Int32
alias tolower_l = fn (Int32, locale_t) -> Int32
alias __toupper_l = fn (Int32, locale_t) -> Int32
alias toupper_l = fn (Int32, locale_t) -> Int32
alias rte_strsplit = fn (UnsafePointer[Int8], Int32, UnsafePointer[UnsafePointer[Int8]], Int32, Int8) -> Int32
alias rte_strlcpy = fn (UnsafePointer[Int8], UnsafePointer[Int8], size_t) -> size_t
alias rte_strlcat = fn (UnsafePointer[Int8], UnsafePointer[Int8], size_t) -> size_t
alias rte_strscpy = fn (UnsafePointer[Int8], UnsafePointer[Int8], size_t) -> ssize_t
alias rte_str_skip_leading_spaces = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_trace_is_enabled = fn () -> Bool
alias rte_trace_feature_is_enabled = fn () -> Bool
struct rte_trace_mode(Copyable & Movable):

	alias RTE_TRACE_MODE_OVERWRITE = 0

	alias RTE_TRACE_MODE_DISCARD = 1

alias rte_trace_mode_set = fn (rte_trace_mode) -> NoneType
alias rte_trace_mode_get = fn () -> rte_trace_mode
alias rte_trace_pattern = fn (UnsafePointer[Int8], Bool) -> Int32
alias rte_trace_regexp = fn (UnsafePointer[Int8], Bool) -> Int32
alias rte_trace_save = fn () -> Int32
alias rte_trace_metadata_dump = fn (UnsafePointer[FILE]) -> Int32
alias rte_trace_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_trace_point_t = uint64_t
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The tracepoint object. 

alias rte_trace_point_enable = fn (UnsafePointer[rte_trace_point_t]) -> Int32
alias rte_trace_point_disable = fn (UnsafePointer[rte_trace_point_t]) -> Int32
alias rte_trace_point_is_enabled = fn (UnsafePointer[rte_trace_point_t]) -> Bool
alias rte_trace_point_lookup = fn (UnsafePointer[Int8]) -> UnsafePointer[rte_trace_point_t]
alias __rte_trace_point_fp_is_enabled = fn () -> Bool
alias __rte_trace_mem_per_thread_alloc = fn () -> NoneType
alias __rte_trace_point_emit_field = fn (size_t, UnsafePointer[Int8], UnsafePointer[Int8]) -> NoneType
alias __rte_trace_point_register = fn (UnsafePointer[rte_trace_point_t], UnsafePointer[Int8], fn (NoneType) -> NoneType) -> Int32
alias __rte_mempool_trace_ops_dequeue_bulk = rte_trace_point_t
alias rte_mempool_trace_ops_dequeue_bulk = fn (OpaquePointer, UnsafePointer[OpaquePointer], UInt32) -> NoneType
alias __rte_mempool_trace_ops_dequeue_contig_blocks = rte_trace_point_t
alias rte_mempool_trace_ops_dequeue_contig_blocks = fn (OpaquePointer, UnsafePointer[OpaquePointer], UInt32) -> NoneType
alias __rte_mempool_trace_ops_enqueue_bulk = rte_trace_point_t
alias rte_mempool_trace_ops_enqueue_bulk = fn (OpaquePointer, UnsafePointer[OpaquePointer, mut=False], UInt32) -> NoneType
alias __rte_mempool_trace_generic_put = rte_trace_point_t
alias rte_mempool_trace_generic_put = fn (OpaquePointer, UnsafePointer[OpaquePointer, mut=False], UInt32, OpaquePointer) -> NoneType
alias __rte_mempool_trace_put_bulk = rte_trace_point_t
alias rte_mempool_trace_put_bulk = fn (OpaquePointer, UnsafePointer[OpaquePointer, mut=False], UInt32, OpaquePointer) -> NoneType
alias __rte_mempool_trace_generic_get = rte_trace_point_t
alias rte_mempool_trace_generic_get = fn (OpaquePointer, UnsafePointer[OpaquePointer, mut=False], UInt32, OpaquePointer) -> NoneType
alias __rte_mempool_trace_get_bulk = rte_trace_point_t
alias rte_mempool_trace_get_bulk = fn (OpaquePointer, UnsafePointer[OpaquePointer], UInt32, OpaquePointer) -> NoneType
alias __rte_mempool_trace_get_contig_blocks = rte_trace_point_t
alias rte_mempool_trace_get_contig_blocks = fn (OpaquePointer, UnsafePointer[OpaquePointer], UInt32) -> NoneType
alias __rte_mempool_trace_default_cache = rte_trace_point_t
alias rte_mempool_trace_default_cache = fn (OpaquePointer, UInt32, OpaquePointer) -> NoneType
alias __rte_mempool_trace_cache_flush = rte_trace_point_t
alias rte_mempool_trace_cache_flush = fn (OpaquePointer, OpaquePointer) -> NoneType
struct rte_mempool_cache(Copyable & Movable):
# Alignment: 128 


	var size : UInt32

	var flushthresh : UInt32

	var len : UInt32

	var objs : InlineArray[OpaquePointer, 1024]

struct rte_mempool_objsz(Copyable & Movable):

	var elt_size : UInt32

	var header_size : UInt32

	var trailer_size : UInt32

	var total_size : UInt32

struct rte_mempool(Copyable & Movable):
	pass
struct anonomous_record_1455(Copyable & Movable):
	var stqe_next : UnsafePointer[rte_mempool_objhdr]

struct rte_mempool_objhdr(Copyable & Movable):

	var next : anonomous_record_1455

	var mp : rte_mempool

	var iova : ffi.c_ulong

struct rte_mempool_objhdr_list(Copyable & Movable):

	var stqh_first : UnsafePointer[rte_mempool_objhdr]

	var stqh_last : UnsafePointer[UnsafePointer[rte_mempool_objhdr]]

alias rte_mempool_logtype = Int32
struct rte_mempool_memhdr(Copyable & Movable):
	pass
struct rte_mempool_memhdr_list(Copyable & Movable):

	var stqh_first : rte_mempool_memhdr

	var stqh_last : UnsafePointer[UnsafePointer[rte_mempool_memhdr]]

alias rte_mempool_memchunk_free_cb_t = UnsafePointer[fn (UnsafePointer[rte_mempool_memhdr
], OpaquePointer) -> NoneType]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Callback used to free a memory chunk

struct anonomous_record_1456(Copyable & Movable):
	var stqe_next : UnsafePointer[rte_mempool_memhdr]

struct rte_mempool_info(Copyable & Movable):
# Alignment: 128 


	var contig_block_size : UInt32

alias anonomous_record_1457 = C_Union[OpaquePointer, ffi.c_ulong]

alias rte_mempool_get_header = fn (OpaquePointer) -> UnsafePointer[rte_mempool_objhdr]
alias rte_mempool_from_obj = fn (OpaquePointer) -> UnsafePointer[rte_mempool]
struct rte_mempool_objtlr(Copyable & Movable):
	pass
alias rte_mempool_get_trailer = fn (OpaquePointer) -> UnsafePointer[rte_mempool_objtlr]
alias rte_mempool_check_cookies = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer, mut=False], UInt32, Int32) -> NoneType
alias rte_mempool_contig_blocks_check_cookies = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer, mut=False], UInt32, Int32) -> NoneType
alias rte_mempool_alloc_t = fn(UnsafePointer[rte_mempool]) -> Int32
alias rte_mempool_free_t = fn(UnsafePointer[rte_mempool]) -> NoneType
alias rte_mempool_enqueue_t = fn(UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32
alias rte_mempool_dequeue_t = fn(UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32
alias rte_mempool_dequeue_contig_blocks_t = fn(UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32
alias rte_mempool_get_count = fn(read UnsafePointer[rte_mempool]) -> UInt32
alias rte_mempool_calc_mem_size_t = fn(read UnsafePointer[rte_mempool], ffi.c_ulong, ffi.c_ulong, UnsafePointer[size_t], UnsafePointer[size_t]) -> ssize_t
alias rte_mempool_op_calc_mem_size_helper = fn (UnsafePointer[rte_mempool], UInt32, UInt32, size_t, UnsafePointer[size_t], UnsafePointer[size_t]) -> ssize_t
alias rte_mempool_op_calc_mem_size_default = fn (UnsafePointer[rte_mempool], UInt32, UInt32, UnsafePointer[size_t], UnsafePointer[size_t]) -> ssize_t
alias rte_mempool_populate_obj_cb_t = UnsafePointer[fn (UnsafePointer[rte_mempool
], OpaquePointer, OpaquePointer, rte_iova_t) -> NoneType]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Function to be called for each populated object.
# Node: ParagraphComment()
# Node: TextComment()
#  
#mp: 	# Node: ParagraphComment()
	# Node: TextComment()
	#    A pointer to the mempool structure.
	# Node: TextComment()
	#  
#opaque: 	# Node: ParagraphComment()
	# Node: TextComment()
	#    An opaque pointer passed to iterator.
	# Node: TextComment()
	#  
#vaddr: 	# Node: ParagraphComment()
	# Node: TextComment()
	#    Object virtual address.
	# Node: TextComment()
	#  
#iova: 	# Node: ParagraphComment()
	# Node: TextComment()
	#    Input/output virtual address of the object or RTE_BAD_IOVA.

alias rte_mempool_populate_t = fn(UnsafePointer[rte_mempool], UInt32, OpaquePointer, rte_iova_t, size_t, UnsafePointer[rte_mempool_populate_obj_cb_t], OpaquePointer) -> Int32
alias rte_mempool_op_populate_helper = fn (UnsafePointer[rte_mempool], UInt32, UInt32, OpaquePointer, rte_iova_t, size_t, UnsafePointer[rte_mempool_populate_obj_cb_t], OpaquePointer) -> Int32
alias rte_mempool_op_populate_default = fn (UnsafePointer[rte_mempool], UInt32, OpaquePointer, rte_iova_t, size_t, UnsafePointer[rte_mempool_populate_obj_cb_t], OpaquePointer) -> Int32
alias rte_mempool_get_info_t = fn(read UnsafePointer[rte_mempool], UnsafePointer[rte_mempool_info]) -> Int32
struct rte_mempool_ops(Copyable & Movable):
# Alignment: 128 


	var name : InlineArray[Int8, 32]

	var alloc : fn(UnsafePointer[rte_mempool]) -> Int32

	var free : fn(UnsafePointer[rte_mempool]) -> NoneType

	var enqueue : fn(UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32

	var dequeue : fn(UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32

	var get_count : fn(read UnsafePointer[rte_mempool]) -> UInt32

	var calc_mem_size : fn(read UnsafePointer[rte_mempool], ffi.c_ulong, ffi.c_ulong, UnsafePointer[size_t], UnsafePointer[size_t]) -> ssize_t

	var populate : fn(UnsafePointer[rte_mempool], UInt32, OpaquePointer, rte_iova_t, size_t, UnsafePointer[rte_mempool_populate_obj_cb_t], OpaquePointer) -> Int32

	var get_info : fn(read UnsafePointer[rte_mempool], UnsafePointer[rte_mempool_info]) -> Int32

	var dequeue_contig_blocks : fn(UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32

struct rte_mempool_ops_table(Copyable & Movable):
# Alignment: 128 


	var sl : rte_spinlock_t

	var num_ops : UInt32

	var ops : InlineArray[rte_mempool_ops, 16]

alias rte_mempool_get_ops = fn (Int32) -> UnsafePointer[rte_mempool_ops]
alias rte_mempool_ops_alloc = fn (UnsafePointer[rte_mempool]) -> Int32
alias rte_mempool_ops_dequeue_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32
alias rte_mempool_ops_dequeue_contig_blocks = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32
alias rte_mempool_ops_enqueue_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer, mut=False], UInt32) -> Int32
alias rte_mempool_ops_get_count = fn (UnsafePointer[rte_mempool]) -> UInt32
alias rte_mempool_ops_calc_mem_size = fn (UnsafePointer[rte_mempool], UInt32, UInt32, UnsafePointer[size_t], UnsafePointer[size_t]) -> ssize_t
alias rte_mempool_ops_populate = fn (UnsafePointer[rte_mempool], UInt32, OpaquePointer, rte_iova_t, size_t, UnsafePointer[rte_mempool_populate_obj_cb_t], OpaquePointer) -> Int32
alias rte_mempool_ops_get_info = fn (UnsafePointer[rte_mempool], UnsafePointer[rte_mempool_info]) -> Int32
alias rte_mempool_ops_free = fn (UnsafePointer[rte_mempool]) -> NoneType
alias rte_mempool_set_ops_byname = fn (UnsafePointer[rte_mempool], UnsafePointer[Int8], OpaquePointer) -> Int32
alias rte_mempool_register_ops = fn (UnsafePointer[rte_mempool_ops]) -> Int32
alias rte_mempool_obj_cb_t = UnsafePointer[fn (UnsafePointer[rte_mempool
], OpaquePointer, OpaquePointer, UInt32) -> NoneType]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  An object callback function for mempool.
# Node: ParagraphComment()
# Node: TextComment()
#  Used by rte_mempool_create() and rte_mempool_obj_iter().

alias rte_mempool_obj_ctor_t = rte_mempool_obj_cb_t
alias rte_mempool_mem_cb_t = UnsafePointer[fn (UnsafePointer[rte_mempool
], OpaquePointer, UnsafePointer[rte_mempool_memhdr
], UInt32) -> NoneType]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  A memory callback function for mempool.
# Node: ParagraphComment()
# Node: TextComment()
#  Used by rte_mempool_mem_iter().

alias rte_mempool_ctor_t = UnsafePointer[fn (UnsafePointer[rte_mempool
], OpaquePointer) -> NoneType]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  A mempool constructor callback function.
# Node: ParagraphComment()
# Node: TextComment()
#  Arguments are the mempool and the opaque pointer given by the user in
# Node: TextComment()
#  rte_mempool_create().

alias rte_mempool_free = fn (UnsafePointer[rte_mempool]) -> NoneType
alias rte_mempool_create = fn (UnsafePointer[Int8], UInt32, UInt32, UInt32, UInt32, UnsafePointer[rte_mempool_ctor_t], OpaquePointer, UnsafePointer[rte_mempool_obj_cb_t], OpaquePointer, Int32, UInt32) -> UnsafePointer[rte_mempool]
alias rte_mempool_create_empty = fn (UnsafePointer[Int8], UInt32, UInt32, UInt32, UInt32, Int32, UInt32) -> UnsafePointer[rte_mempool]
alias rte_mempool_populate_iova = fn (UnsafePointer[rte_mempool], UnsafePointer[Int8], rte_iova_t, size_t, UnsafePointer[rte_mempool_memchunk_free_cb_t], OpaquePointer) -> Int32
alias rte_mempool_populate_virt = fn (UnsafePointer[rte_mempool], UnsafePointer[Int8], size_t, size_t, UnsafePointer[rte_mempool_memchunk_free_cb_t], OpaquePointer) -> Int32
alias rte_mempool_populate_default = fn (UnsafePointer[rte_mempool]) -> Int32
alias rte_mempool_populate_anon = fn (UnsafePointer[rte_mempool]) -> Int32
alias rte_mempool_obj_iter = fn (UnsafePointer[rte_mempool], UnsafePointer[rte_mempool_obj_cb_t], OpaquePointer) -> UInt32
alias rte_mempool_mem_iter = fn (UnsafePointer[rte_mempool], UnsafePointer[rte_mempool_mem_cb_t], OpaquePointer) -> UInt32
alias rte_mempool_dump = fn (UnsafePointer[FILE], UnsafePointer[rte_mempool]) -> NoneType
alias rte_mempool_cache_create = fn (UInt32, Int32) -> UnsafePointer[rte_mempool_cache]
alias rte_mempool_cache_free = fn (UnsafePointer[rte_mempool_cache]) -> NoneType
alias rte_mempool_default_cache = fn (UnsafePointer[rte_mempool], UInt32) -> UnsafePointer[rte_mempool_cache]
alias rte_mempool_cache_flush = fn (UnsafePointer[rte_mempool_cache], UnsafePointer[rte_mempool]) -> NoneType
alias rte_mempool_do_generic_put = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer, mut=False], UInt32, UnsafePointer[rte_mempool_cache]) -> NoneType
alias __builtin_assume = fn (Bool) -> NoneType
alias rte_mempool_generic_put = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer, mut=False], UInt32, UnsafePointer[rte_mempool_cache]) -> NoneType
alias rte_mempool_put_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer, mut=False], UInt32) -> NoneType
alias rte_mempool_put = fn (UnsafePointer[rte_mempool], OpaquePointer) -> NoneType
alias rte_mempool_do_generic_get = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[rte_mempool_cache]) -> Int32
alias __builtin_constant_p = fn () -> Int32
alias rte_mempool_generic_get = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[rte_mempool_cache]) -> Int32
alias rte_mempool_get_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32
alias rte_mempool_get = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer]) -> Int32
alias rte_mempool_get_contig_blocks = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32
alias rte_mempool_avail_count = fn (UnsafePointer[rte_mempool]) -> UInt32
alias rte_mempool_in_use_count = fn (UnsafePointer[rte_mempool]) -> UInt32
alias rte_mempool_full = fn (UnsafePointer[rte_mempool]) -> Int32
alias rte_mempool_empty = fn (UnsafePointer[rte_mempool]) -> Int32
alias rte_mempool_virt2iova = fn (OpaquePointer) -> rte_iova_t
alias rte_mempool_audit = fn (UnsafePointer[rte_mempool]) -> NoneType
alias rte_mempool_get_priv = fn (UnsafePointer[rte_mempool]) -> OpaquePointer
alias rte_mempool_list_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_mempool_lookup = fn (UnsafePointer[Int8]) -> UnsafePointer[rte_mempool]
alias rte_mempool_calc_obj_size = fn (UInt32, UInt32, UnsafePointer[rte_mempool_objsz]) -> UInt32
alias rte_mempool_walk = fn (fn (UnsafePointer[rte_mempool], OpaquePointer) -> NoneType, OpaquePointer) -> NoneType
struct rte_mempool_mem_range_info(Copyable & Movable):

	var start : OpaquePointer

	var length : ffi.c_ulong

	var is_contiguous : Bool

alias rte_mempool_get_mem_range = fn (UnsafePointer[rte_mempool], UnsafePointer[rte_mempool_mem_range_info]) -> Int32
alias rte_mempool_get_obj_alignment = fn (UnsafePointer[rte_mempool]) -> size_t
alias rte_mempool_get_page_size = fn (UnsafePointer[rte_mempool], UnsafePointer[size_t]) -> Int32
struct rte_mempool_event(Copyable & Movable):
# #  # 
	alias RTE_MEMPOOL_EVENT_READY = 0

	alias RTE_MEMPOOL_EVENT_DESTROY = 1

alias rte_mempool_event_callback = UnsafePointer[fn (rte_mempool_event, UnsafePointer[rte_mempool
], OpaquePointer) -> NoneType]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  
# #  Mempool event callback.# #  rte_mempool_event_callback_register() may be called from within the callback,#  but the callbacks registered this way will not be invoked for the same event.#  rte_mempool_event_callback_unregister() may only be safely called#  to remove the running callback.#  # 
alias rte_mempool_event_callback_register = fn (UnsafePointer[rte_mempool_event_callback], OpaquePointer) -> Int32
alias rte_mempool_event_callback_unregister = fn (UnsafePointer[rte_mempool_event_callback], OpaquePointer) -> Int32
alias __bswap_16 = fn (Int16) -> Int16
alias __bswap_32 = fn (Int32) -> Int32
alias __bswap_64 = fn (ffi.c_long) -> ffi.c_long
alias __uint16_identity = fn (Int16) -> Int16
alias __uint32_identity = fn (Int32) -> Int32
alias __uint64_identity = fn (ffi.c_long) -> ffi.c_long
alias rte_be16_t = uint16_t
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The following types should be used when handling values according to a
# Node: TextComment()
#  specific byte ordering, which may differ from that of the host CPU.
# Node: ParagraphComment()
# Node: TextComment()
#  Libraries, public APIs and applications are encouraged to use them for
# Node: TextComment()
#  documentation purposes.

alias rte_be32_t = uint32_t
alias rte_be64_t = uint64_t
alias rte_le16_t = uint16_t
alias rte_le32_t = uint32_t
alias rte_le64_t = uint64_t
alias rte_constant_bswap16 = fn (UInt16) -> UInt16
alias rte_constant_bswap32 = fn (UInt32) -> UInt32
alias rte_constant_bswap64 = fn (ffi.c_ulong) -> ffi.c_ulong
struct rte_pdcp_ctrl_pdu_type(Copyable & Movable):

	alias RTE_PDCP_CTRL_PDU_TYPE_STATUS_REPORT = 0

	alias RTE_PDCP_CTRL_PDU_TYPE_ROHC_FEEDBACK = 1

	alias RTE_PDCP_CTRL_PDU_TYPE_EHC_FEEDBACK = 2

	alias RTE_PDCP_CRTL_PDU_TYPE_UDC_FEEDBACK = 3

struct rte_pdcp_pdu_type(Copyable & Movable):

	alias RTE_PDCP_PDU_TYPE_CTRL = 0

	alias RTE_PDCP_PDU_TYPE_DATA = 1

struct rte_pdcp_cp_data_pdu_sn_12_hdr(Copyable & Movable):


	var sn_11_8 : UInt8

	var r : UInt8

	var sn_7_0 : UInt8

struct rte_pdcp_up_data_pdu_sn_12_hdr(Copyable & Movable):


	var sn_11_8 : UInt8

	var r : UInt8

	var d_c : UInt8

	var sn_7_0 : UInt8

struct rte_pdcp_up_data_pdu_sn_18_hdr(Copyable & Movable):


	var sn_17_16 : UInt8

	var r : UInt8

	var d_c : UInt8

	var sn_15_8 : UInt8

	var sn_7_0 : UInt8

struct rte_pdcp_up_ctrl_pdu_hdr(Copyable & Movable):


	var r : UInt8

	var pdu_type : UInt8

	var d_c : UInt8

	var fmc : UInt32

	var bitmap : UnsafePointer[UInt8] # Failed to parse array size

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
alias id_t = __id_t
alias daddr_t = __daddr_t
alias caddr_t = __caddr_t
alias key_t = __key_t
alias ulong = ffi.c_ulong
alias ushort = UInt16
alias uint = UInt32
alias u_int8_t = __uint8_t
alias u_int16_t = __uint16_t
alias u_int32_t = __uint32_t
alias u_int64_t = __uint64_t
alias register_t = ffi.c_long

struct anonomous_record_1458(Copyable & Movable):
	var __val : InlineArray[ffi.c_ulong, 16]

alias __sigset_t = anonomous_record_1458

alias sigset_t = __sigset_t
struct timeval(Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_usec : ffi.c_long

alias suseconds_t = __suseconds_t
alias __fd_mask = ffi.c_long
struct anonomous_record_1459(Copyable & Movable):
	var __fds_bits : InlineArray[__fd_mask, 16]

alias fd_set = anonomous_record_1459

alias fd_mask = __fd_mask
alias select = fn (Int32, UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[timeval]) -> Int32
alias pselect = fn (Int32, UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[timespec], UnsafePointer[__sigset_t]) -> Int32
alias blksize_t = __blksize_t
alias blkcnt_t = __blkcnt_t
alias fsblkcnt_t = __fsblkcnt_t
alias fsfilcnt_t = __fsfilcnt_t
struct anonomous_record_1460(Copyable & Movable):
	var __low : UInt32

	var __high : UInt32

alias anonomous_record_1461 = C_Union[ffi.c_ulong_long, anonomous_record_1460]

alias __atomic_wide_counter = anonomous_record_1461

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
struct anonomous_record_1462(Copyable & Movable):
	var __data : Int32

alias __once_flag = anonomous_record_1462

alias pthread_t = ffi.c_ulong
alias anonomous_record_1463 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_mutexattr_t = anonomous_record_1463

alias anonomous_record_1464 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_condattr_t = anonomous_record_1464

alias pthread_key_t = UInt32
alias pthread_once_t = Int32
alias pthread_attr_t = C_Union[InlineArray[Int8, 64], ffi.c_long]

alias anonomous_record_1465 = C_Union[__pthread_mutex_s, InlineArray[Int8, 48], ffi.c_long]

alias pthread_mutex_t = anonomous_record_1465

alias anonomous_record_1466 = C_Union[__pthread_cond_s, InlineArray[Int8, 48], ffi.c_long_long]

alias pthread_cond_t = anonomous_record_1466

alias anonomous_record_1467 = C_Union[__pthread_rwlock_arch_t, InlineArray[Int8, 56], ffi.c_long]

alias pthread_rwlock_t = anonomous_record_1467

alias anonomous_record_1468 = C_Union[InlineArray[Int8, 8], ffi.c_long]

alias pthread_rwlockattr_t = anonomous_record_1468

alias pthread_spinlock_t = Int32
alias anonomous_record_1469 = C_Union[InlineArray[Int8, 32], ffi.c_long]

alias pthread_barrier_t = anonomous_record_1469

alias anonomous_record_1470 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_barrierattr_t = anonomous_record_1470

alias rte_prefetch0 = fn (OpaquePointer) -> NoneType
alias rte_prefetch1 = fn (OpaquePointer) -> NoneType
alias rte_prefetch2 = fn (OpaquePointer) -> NoneType
alias rte_prefetch_non_temporal = fn (OpaquePointer) -> NoneType
alias rte_prefetch0_write = fn (OpaquePointer) -> NoneType
alias __builtin_prefetch = fn (OpaquePointer) -> NoneType
alias rte_prefetch1_write = fn (OpaquePointer) -> NoneType
alias rte_prefetch2_write = fn (OpaquePointer) -> NoneType
alias rte_cldemote = fn (OpaquePointer) -> NoneType
alias rte_get_ptype_l2_name = fn (UInt32) -> UnsafePointer[Int8]
alias rte_get_ptype_l3_name = fn (UInt32) -> UnsafePointer[Int8]
alias rte_get_ptype_l4_name = fn (UInt32) -> UnsafePointer[Int8]
alias rte_get_ptype_tunnel_name = fn (UInt32) -> UnsafePointer[Int8]
alias rte_get_ptype_inner_l2_name = fn (UInt32) -> UnsafePointer[Int8]
alias rte_get_ptype_inner_l3_name = fn (UInt32) -> UnsafePointer[Int8]
alias rte_get_ptype_inner_l4_name = fn (UInt32) -> UnsafePointer[Int8]
alias rte_get_ptype_name = fn (UInt32, UnsafePointer[Int8], size_t) -> Int32
struct rte_mbuf_sched(Copyable & Movable):
	var queue_id : UInt32

	var traffic_class : UInt8

	var color : UInt8

	var reserved : UInt16


alias RTE_MBUF_L2_LEN_BITS = 7

alias RTE_MBUF_L3_LEN_BITS = 9

alias RTE_MBUF_L4_LEN_BITS = 8

alias RTE_MBUF_TSO_SEGSZ_BITS = 16

alias RTE_MBUF_OUTL3_LEN_BITS = 9

alias RTE_MBUF_OUTL2_LEN_BITS = 7

alias RTE_MBUF_TXOFLD_UNUSED_BITS = 17

alias RTE_MBUF_L2_LEN_OFS = 0

alias RTE_MBUF_L3_LEN_OFS = 7

alias RTE_MBUF_L4_LEN_OFS = 16

alias RTE_MBUF_TSO_SEGSZ_OFS = 24

alias RTE_MBUF_OUTL3_LEN_OFS = 40

alias RTE_MBUF_OUTL2_LEN_OFS = 49

alias RTE_MBUF_TXOFLD_UNUSED_OFS = 56

struct anonomous_record_1471(Copyable & Movable):
	var data_off : UInt16

	var refcnt : UInt16

	var nb_segs : UInt16

	var port : UInt16

struct anonomous_record_1473(Copyable & Movable):
	var inner_l2_type : UInt8

	var inner_l3_type : UInt8

alias anonomous_record_1474 = C_Union[UInt8, anonomous_record_1473, , ]

struct anonomous_record_1475(Copyable & Movable):
	var l2_type : UInt8

	var l3_type : UInt8

	var l4_type : UInt8

	var tun_type : UInt8

	var union_placeholder_1 : anonomous_record_1474




	var inner_l4_type : UInt8

struct anonomous_record_1477(Copyable & Movable):
	var hash : UInt16

	var id : UInt16

alias anonomous_record_1478 = C_Union[anonomous_record_1477, , , UInt32]

struct anonomous_record_1480(Copyable & Movable):
	var reserved1 : UInt32

	var reserved2 : UInt16

	var txq : UInt16

struct anonomous_record_1479(Copyable & Movable):
	var union_placeholder_1 : anonomous_record_1478




	var hi : UInt32

alias anonomous_record_1481 = C_Union[UInt32, anonomous_record_1479, rte_mbuf_sched, anonomous_record_1480, UInt32]

alias anonomous_record_1482 = C_Union[anonomous_record_1481]

alias anonomous_record_1476 = C_Union[UInt32, anonomous_record_1475, , , , , , , , ]

struct anonomous_record_1483(Copyable & Movable):
	var union_placeholder_1 : anonomous_record_1476










	var pkt_len : UInt32

	var data_len : UInt16

	var vlan_tci : UInt16

	var union_placeholder_2 : anonomous_record_1482


	var vlan_tci_outer : UInt16

	var buf_len : UInt16

struct anonomous_record_1485(Copyable & Movable):
	var l2_len : ffi.c_ulong

	var l3_len : ffi.c_ulong

	var l4_len : ffi.c_ulong

	var tso_segsz : ffi.c_ulong

	var outer_l3_len : ffi.c_ulong

	var outer_l2_len : ffi.c_ulong

struct rte_mbuf_ext_shared_info(Copyable & Movable):
	pass
alias anonomous_record_1486 = C_Union[ffi.c_ulong, anonomous_record_1485, , , , , , ]

alias anonomous_record_1484 = C_Union[InlineArray[OpaquePointer, 3], anonomous_record_1483, , , , , , , , , , , , , , , ]

alias anonomous_record_1472 = C_Union[InlineArray[ffi.c_ulong_long, 1], anonomous_record_1471, , , , ]

struct rte_mbuf(Copyable & Movable):
# Alignment: 128 


	var buf_addr : OpaquePointer

	var buf_iova : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_1472






	var ol_flags : ffi.c_ulong

	var union_placeholder_2 : anonomous_record_1484

















	var pool : UnsafePointer[rte_mempool]

	var next : UnsafePointer[rte_mbuf]

	var union_placeholder_3 : anonomous_record_1486








	var shinfo : rte_mbuf_ext_shared_info

	var priv_size : UInt16

	var timesync : UInt16

	var dynfield1 : InlineArray[ffi.c_ulong, 9]

alias rte_mbuf_extbuf_free_callback_t = fn(OpaquePointer, OpaquePointer) -> NoneType
alias rte_get_rx_ol_flag_name = fn (ffi.c_ulong) -> UnsafePointer[Int8]
alias rte_get_rx_ol_flag_list = fn (ffi.c_ulong, UnsafePointer[Int8], size_t) -> Int32
alias rte_get_tx_ol_flag_name = fn (ffi.c_ulong) -> UnsafePointer[Int8]
alias rte_get_tx_ol_flag_list = fn (ffi.c_ulong, UnsafePointer[Int8], size_t) -> Int32
alias rte_mbuf_prefetch_part1 = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias rte_mbuf_prefetch_part2 = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias rte_pktmbuf_priv_size = fn (UnsafePointer[rte_mempool]) -> UInt16
alias rte_mbuf_iova_get = fn (UnsafePointer[rte_mbuf]) -> rte_iova_t
alias rte_mbuf_iova_set = fn (UnsafePointer[rte_mbuf], rte_iova_t) -> NoneType
alias rte_mbuf_data_iova = fn (UnsafePointer[rte_mbuf]) -> rte_iova_t
alias rte_mbuf_data_iova_default = fn (UnsafePointer[rte_mbuf]) -> rte_iova_t
alias rte_mbuf_from_indirect = fn (UnsafePointer[rte_mbuf]) -> UnsafePointer[rte_mbuf]
alias rte_mbuf_buf_addr = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_mempool]) -> UnsafePointer[Int8]
alias rte_mbuf_data_addr_default = fn (UnsafePointer[rte_mbuf]) -> UnsafePointer[Int8]
alias rte_mbuf_to_baddr = fn (UnsafePointer[rte_mbuf]) -> UnsafePointer[Int8]
alias rte_mbuf_to_priv = fn (UnsafePointer[rte_mbuf]) -> OpaquePointer
struct rte_pktmbuf_pool_private(Copyable & Movable):

	var mbuf_data_room_size : UInt16

	var mbuf_priv_size : UInt16

	var flags : UInt32

alias rte_pktmbuf_priv_flags = fn (UnsafePointer[rte_mempool]) -> UInt32
alias rte_mbuf_refcnt_read = fn (UnsafePointer[rte_mbuf]) -> UInt16
alias rte_mbuf_refcnt_set = fn (UnsafePointer[rte_mbuf], UInt16) -> NoneType
alias __rte_mbuf_refcnt_update = fn (UnsafePointer[rte_mbuf], Int16) -> UInt16
alias rte_mbuf_refcnt_update = fn (UnsafePointer[rte_mbuf], Int16) -> UInt16
alias rte_mbuf_ext_refcnt_read = fn (UnsafePointer[rte_mbuf_ext_shared_info]) -> UInt16
alias rte_mbuf_ext_refcnt_set = fn (UnsafePointer[rte_mbuf_ext_shared_info], UInt16) -> NoneType
alias rte_mbuf_ext_refcnt_update = fn (UnsafePointer[rte_mbuf_ext_shared_info], Int16) -> UInt16
alias rte_mbuf_sanity_check = fn (UnsafePointer[rte_mbuf], Int32) -> NoneType
alias rte_mbuf_check = fn (UnsafePointer[rte_mbuf], Int32, UnsafePointer[UnsafePointer[Int8]]) -> Int32
alias __rte_mbuf_raw_sanity_check = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias rte_mbuf_raw_alloc = fn (UnsafePointer[rte_mempool]) -> UnsafePointer[rte_mbuf]
alias rte_mbuf_raw_alloc_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[UnsafePointer[rte_mbuf]], UInt32) -> Int32
alias rte_mbuf_raw_free = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias rte_mbuf_raw_free_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[UnsafePointer[rte_mbuf]], UInt32) -> NoneType
alias rte_pktmbuf_init = fn (UnsafePointer[rte_mempool], OpaquePointer, OpaquePointer, UInt32) -> NoneType
alias rte_pktmbuf_pool_init = fn (UnsafePointer[rte_mempool], OpaquePointer) -> NoneType
alias rte_pktmbuf_pool_create = fn (UnsafePointer[Int8], UInt32, UInt32, UInt16, UInt16, Int32) -> UnsafePointer[rte_mempool]
alias rte_pktmbuf_pool_create_by_ops = fn (UnsafePointer[Int8], UInt32, UInt32, UInt16, UInt16, Int32, UnsafePointer[Int8]) -> UnsafePointer[rte_mempool]
struct rte_pktmbuf_extmem(Copyable & Movable):

	var buf_ptr : OpaquePointer

	var buf_iova : ffi.c_ulong

	var buf_len : ffi.c_ulong

	var elt_size : UInt16

alias rte_pktmbuf_pool_create_extbuf = fn (UnsafePointer[Int8], UInt32, UInt32, UInt16, UInt16, Int32, UnsafePointer[rte_pktmbuf_extmem], UInt32) -> UnsafePointer[rte_mempool]
alias rte_pktmbuf_data_room_size = fn (UnsafePointer[rte_mempool]) -> UInt16
alias rte_pktmbuf_reset_headroom = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias rte_pktmbuf_reset = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias rte_pktmbuf_alloc = fn (UnsafePointer[rte_mempool]) -> UnsafePointer[rte_mbuf]
alias rte_pktmbuf_alloc_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[UnsafePointer[rte_mbuf]], UInt32) -> Int32
alias rte_pktmbuf_ext_shinfo_init_helper = fn (OpaquePointer, UnsafePointer[UInt16], rte_mbuf_extbuf_free_callback_t, OpaquePointer) -> UnsafePointer[rte_mbuf_ext_shared_info]
alias rte_pktmbuf_attach_extbuf = fn (UnsafePointer[rte_mbuf], OpaquePointer, rte_iova_t, UInt16, UnsafePointer[rte_mbuf_ext_shared_info]) -> NoneType
alias rte_mbuf_dynfield_copy = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_mbuf]) -> NoneType
alias __rte_pktmbuf_copy_hdr = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_mbuf]) -> NoneType
alias rte_pktmbuf_attach = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_mbuf]) -> NoneType
alias __rte_pktmbuf_free_extbuf = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias __rte_pktmbuf_free_direct = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias rte_pktmbuf_detach = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias __rte_pktmbuf_pinned_extbuf_decref = fn (UnsafePointer[rte_mbuf]) -> Int32
alias rte_pktmbuf_prefree_seg = fn (UnsafePointer[rte_mbuf]) -> UnsafePointer[rte_mbuf]
alias rte_pktmbuf_free_seg = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias rte_pktmbuf_free = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias rte_pktmbuf_free_bulk = fn (UnsafePointer[UnsafePointer[rte_mbuf]], UInt32) -> NoneType
alias rte_pktmbuf_clone = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_mempool]) -> UnsafePointer[rte_mbuf]
alias rte_pktmbuf_copy = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_mempool], UInt32, UInt32) -> UnsafePointer[rte_mbuf]
alias rte_pktmbuf_refcnt_update = fn (UnsafePointer[rte_mbuf], Int16) -> NoneType
alias rte_pktmbuf_headroom = fn (UnsafePointer[rte_mbuf]) -> UInt16
alias rte_pktmbuf_tailroom = fn (UnsafePointer[rte_mbuf]) -> UInt16
alias rte_pktmbuf_lastseg = fn (UnsafePointer[rte_mbuf]) -> UnsafePointer[rte_mbuf]
alias rte_pktmbuf_prepend = fn (UnsafePointer[rte_mbuf], UInt16) -> UnsafePointer[Int8]
alias rte_pktmbuf_append = fn (UnsafePointer[rte_mbuf], UInt16) -> UnsafePointer[Int8]
alias rte_pktmbuf_adj = fn (UnsafePointer[rte_mbuf], UInt16) -> UnsafePointer[Int8]
alias rte_pktmbuf_trim = fn (UnsafePointer[rte_mbuf], UInt16) -> Int32
alias rte_pktmbuf_is_contiguous = fn (UnsafePointer[rte_mbuf]) -> Int32
alias __rte_pktmbuf_read = fn (UnsafePointer[rte_mbuf], UInt32, UInt32, OpaquePointer) -> OpaquePointer
alias rte_pktmbuf_read = fn (UnsafePointer[rte_mbuf], UInt32, UInt32, OpaquePointer) -> OpaquePointer
alias rte_pktmbuf_chain = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_mbuf]) -> Int32
alias rte_mbuf_tx_offload = fn (ffi.c_ulong, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> ffi.c_ulong
alias rte_validate_tx_offload = fn (UnsafePointer[rte_mbuf]) -> Int32
alias __rte_pktmbuf_linearize = fn (UnsafePointer[rte_mbuf]) -> Int32
alias rte_pktmbuf_linearize = fn (UnsafePointer[rte_mbuf]) -> Int32
alias rte_pktmbuf_dump = fn (UnsafePointer[FILE], UnsafePointer[rte_mbuf], UInt32) -> NoneType
alias rte_mbuf_sched_queue_get = fn (UnsafePointer[rte_mbuf]) -> UInt32
alias rte_mbuf_sched_traffic_class_get = fn (UnsafePointer[rte_mbuf]) -> UInt8
alias rte_mbuf_sched_color_get = fn (UnsafePointer[rte_mbuf]) -> UInt8
alias rte_mbuf_sched_get = fn (UnsafePointer[rte_mbuf], UnsafePointer[UInt32], UnsafePointer[UInt8], UnsafePointer[UInt8]) -> NoneType
alias rte_mbuf_sched_queue_set = fn (UnsafePointer[rte_mbuf], UInt32) -> NoneType
alias rte_mbuf_sched_traffic_class_set = fn (UnsafePointer[rte_mbuf], UInt8) -> NoneType
alias rte_mbuf_sched_color_set = fn (UnsafePointer[rte_mbuf], UInt8) -> NoneType
alias rte_mbuf_sched_set = fn (UnsafePointer[rte_mbuf], UInt32, UInt8, UInt8) -> NoneType
struct rte_crypto_vec(Copyable & Movable):

	var base : OpaquePointer

	var iova : ffi.c_ulong

	var len : UInt32

	var tot_len : UInt32

struct rte_crypto_sgl(Copyable & Movable):

	var vec : UnsafePointer[rte_crypto_vec]

	var num : UInt32

struct rte_crypto_va_iova_ptr(Copyable & Movable):

	var va : OpaquePointer

	var iova : ffi.c_ulong

alias anonomous_record_1487 = C_Union[UnsafePointer[rte_crypto_va_iova_ptr], UnsafePointer[rte_crypto_va_iova_ptr]]

struct rte_crypto_sym_vec(Copyable & Movable):

	var num : UInt32

	var src_sgl : UnsafePointer[rte_crypto_sgl]

	var dest_sgl : UnsafePointer[rte_crypto_sgl]

	var iv : UnsafePointer[rte_crypto_va_iova_ptr]

	var digest : UnsafePointer[rte_crypto_va_iova_ptr]

	var union_placeholder_1 : anonomous_record_1487



	var status : UnsafePointer[ffi.c_long]

struct anonomous_record_1488(Copyable & Movable):
	var head : UInt16

	var tail : UInt16

struct anonomous_record_1489(Copyable & Movable):
	var auth : anonomous_record_1488

	var cipher : rte_crypto_sym_ofs::(unnamed at dpdk/lib/cryptodev/rte_crypto_sym.h:106:3)

alias rte_crypto_sym_ofs = C_Union[ffi.c_ulong, anonomous_record_1489]

struct rte_crypto_cipher_algorithm(Copyable & Movable):

	alias RTE_CRYPTO_CIPHER_NULL = 1

	alias RTE_CRYPTO_CIPHER_3DES_CBC = 2

	alias RTE_CRYPTO_CIPHER_3DES_CTR = 3

	alias RTE_CRYPTO_CIPHER_3DES_ECB = 4

	alias RTE_CRYPTO_CIPHER_AES_CBC = 5

	alias RTE_CRYPTO_CIPHER_AES_CTR = 6

	alias RTE_CRYPTO_CIPHER_AES_ECB = 7

	alias RTE_CRYPTO_CIPHER_AES_F8 = 8

	alias RTE_CRYPTO_CIPHER_AES_XTS = 9

	alias RTE_CRYPTO_CIPHER_ARC4 = 10

	alias RTE_CRYPTO_CIPHER_KASUMI_F8 = 11

	alias RTE_CRYPTO_CIPHER_SNOW3G_UEA2 = 12

	alias RTE_CRYPTO_CIPHER_ZUC_EEA3 = 13

	alias RTE_CRYPTO_CIPHER_DES_CBC = 14

	alias RTE_CRYPTO_CIPHER_AES_DOCSISBPI = 15

	alias RTE_CRYPTO_CIPHER_DES_DOCSISBPI = 16

	alias RTE_CRYPTO_CIPHER_SM4_ECB = 17

	alias RTE_CRYPTO_CIPHER_SM4_CBC = 18

	alias RTE_CRYPTO_CIPHER_SM4_CTR = 19

	alias RTE_CRYPTO_CIPHER_SM4_OFB = 20

	alias RTE_CRYPTO_CIPHER_SM4_CFB = 21

	alias RTE_CRYPTO_CIPHER_SM4_XTS = 22

struct rte_crypto_cipher_operation(Copyable & Movable):

	alias RTE_CRYPTO_CIPHER_OP_ENCRYPT = 0

	alias RTE_CRYPTO_CIPHER_OP_DECRYPT = 1

alias rte_crypto_cipher_operation_strings = UnsafePointer[UnsafePointer[Int8]] # Failed to parse array size
struct anonomous_record_1491(Copyable & Movable):
	var offset : UInt16

	var length : UInt16

struct anonomous_record_1490(Copyable & Movable):
	var data : UnsafePointer[UInt8]

	var length : UInt16

struct rte_crypto_cipher_xform(Copyable & Movable):

	var op : rte_crypto_cipher_operation

	var algo : rte_crypto_cipher_algorithm

	var key : anonomous_record_1490

	var iv : anonomous_record_1491

	var dataunit_len : UInt32

struct rte_crypto_auth_algorithm(Copyable & Movable):

	alias RTE_CRYPTO_AUTH_NULL = 1

	alias RTE_CRYPTO_AUTH_AES_CBC_MAC = 2

	alias RTE_CRYPTO_AUTH_AES_CMAC = 3

	alias RTE_CRYPTO_AUTH_AES_GMAC = 4

	alias RTE_CRYPTO_AUTH_AES_XCBC_MAC = 5

	alias RTE_CRYPTO_AUTH_KASUMI_F9 = 6

	alias RTE_CRYPTO_AUTH_MD5 = 7

	alias RTE_CRYPTO_AUTH_MD5_HMAC = 8

	alias RTE_CRYPTO_AUTH_SHA1 = 9

	alias RTE_CRYPTO_AUTH_SHA1_HMAC = 10

	alias RTE_CRYPTO_AUTH_SHA224 = 11

	alias RTE_CRYPTO_AUTH_SHA224_HMAC = 12

	alias RTE_CRYPTO_AUTH_SHA256 = 13

	alias RTE_CRYPTO_AUTH_SHA256_HMAC = 14

	alias RTE_CRYPTO_AUTH_SHA384 = 15

	alias RTE_CRYPTO_AUTH_SHA384_HMAC = 16

	alias RTE_CRYPTO_AUTH_SHA512 = 17

	alias RTE_CRYPTO_AUTH_SHA512_HMAC = 18

	alias RTE_CRYPTO_AUTH_SNOW3G_UIA2 = 19

	alias RTE_CRYPTO_AUTH_ZUC_EIA3 = 20

	alias RTE_CRYPTO_AUTH_SHA3_224 = 21

	alias RTE_CRYPTO_AUTH_SHA3_224_HMAC = 22

	alias RTE_CRYPTO_AUTH_SHA3_256 = 23

	alias RTE_CRYPTO_AUTH_SHA3_256_HMAC = 24

	alias RTE_CRYPTO_AUTH_SHA3_384 = 25

	alias RTE_CRYPTO_AUTH_SHA3_384_HMAC = 26

	alias RTE_CRYPTO_AUTH_SHA3_512 = 27

	alias RTE_CRYPTO_AUTH_SHA3_512_HMAC = 28

	alias RTE_CRYPTO_AUTH_SM3 = 29

	alias RTE_CRYPTO_AUTH_SHAKE_128 = 30

	alias RTE_CRYPTO_AUTH_SHAKE_256 = 31

	alias RTE_CRYPTO_AUTH_SM3_HMAC = 32

struct rte_crypto_auth_operation(Copyable & Movable):

	alias RTE_CRYPTO_AUTH_OP_VERIFY = 0

	alias RTE_CRYPTO_AUTH_OP_GENERATE = 1

alias rte_crypto_auth_operation_strings = UnsafePointer[UnsafePointer[Int8]] # Failed to parse array size
struct anonomous_record_1493(Copyable & Movable):
	var offset : UInt16

	var length : UInt16

struct anonomous_record_1492(Copyable & Movable):
	var data : UnsafePointer[UInt8]

	var length : UInt16

struct rte_crypto_auth_xform(Copyable & Movable):

	var op : rte_crypto_auth_operation

	var algo : rte_crypto_auth_algorithm

	var key : anonomous_record_1492

	var iv : anonomous_record_1493

	var digest_length : UInt16

struct rte_crypto_aead_algorithm(Copyable & Movable):

	alias RTE_CRYPTO_AEAD_AES_CCM = 1

	alias RTE_CRYPTO_AEAD_AES_GCM = 2

	alias RTE_CRYPTO_AEAD_CHACHA20_POLY1305 = 3

	alias RTE_CRYPTO_AEAD_SM4_GCM = 4

struct rte_crypto_aead_operation(Copyable & Movable):

	alias RTE_CRYPTO_AEAD_OP_ENCRYPT = 0

	alias RTE_CRYPTO_AEAD_OP_DECRYPT = 1

alias rte_crypto_aead_operation_strings = UnsafePointer[UnsafePointer[Int8]] # Failed to parse array size
struct anonomous_record_1495(Copyable & Movable):
	var offset : UInt16

	var length : UInt16

struct anonomous_record_1494(Copyable & Movable):
	var data : UnsafePointer[UInt8]

	var length : UInt16

struct rte_crypto_aead_xform(Copyable & Movable):
	var op : rte_crypto_aead_operation

	var algo : rte_crypto_aead_algorithm

	var key : anonomous_record_1494

	var iv : anonomous_record_1495

	var digest_length : UInt16

	var aad_length : UInt16

struct rte_crypto_sym_xform_type(Copyable & Movable):

	alias RTE_CRYPTO_SYM_XFORM_NOT_SPECIFIED = 0

	alias RTE_CRYPTO_SYM_XFORM_AUTH = 1

	alias RTE_CRYPTO_SYM_XFORM_CIPHER = 2

	alias RTE_CRYPTO_SYM_XFORM_AEAD = 3

alias anonomous_record_1496 = C_Union[rte_crypto_auth_xform, rte_crypto_cipher_xform, rte_crypto_aead_xform]

struct rte_crypto_sym_xform(Copyable & Movable):

	var next : UnsafePointer[rte_crypto_sym_xform]

	var type : rte_crypto_sym_xform_type

	var union_placeholder_1 : anonomous_record_1496




struct anonomous_record_1500(Copyable & Movable):
	var data : UnsafePointer[UInt8]

	var phys_addr : ffi.c_ulong

struct anonomous_record_1499(Copyable & Movable):
	var data : UnsafePointer[UInt8]

	var phys_addr : ffi.c_ulong

struct anonomous_record_1498(Copyable & Movable):
	var offset : UInt32

	var length : UInt32

struct anonomous_record_1502(Copyable & Movable):
	var offset : UInt32

	var length : UInt32

struct anonomous_record_1505(Copyable & Movable):
	var data : UnsafePointer[UInt8]

	var phys_addr : ffi.c_ulong

struct anonomous_record_1504(Copyable & Movable):
	var offset : UInt32

	var length : UInt32

struct anonomous_record_1506(Copyable & Movable):
	var data : anonomous_record_1504

	var digest : anonomous_record_1505

struct anonomous_record_1503(Copyable & Movable):
	var data : anonomous_record_1502

struct anonomous_record_1507(Copyable & Movable):
	var cipher : anonomous_record_1503

	var auth : anonomous_record_1506

struct anonomous_record_1501(Copyable & Movable):
	var data : anonomous_record_1498

	var digest : anonomous_record_1499

	var aad : anonomous_record_1500

alias anonomous_record_1508 = C_Union[anonomous_record_1501, anonomous_record_1507, , ]

alias anonomous_record_1497 = C_Union[OpaquePointer, UnsafePointer[rte_crypto_sym_xform]]

struct rte_crypto_sym_op(Copyable & Movable):

	var m_src : UnsafePointer[rte_mbuf]

	var m_dst : UnsafePointer[rte_mbuf]

	var union_placeholder_1 : anonomous_record_1497



	var union_placeholder_2 : anonomous_record_1508




alias __rte_crypto_sym_op_reset = fn (UnsafePointer[rte_crypto_sym_op]) -> NoneType
alias __rte_crypto_sym_op_sym_xforms_alloc = fn (UnsafePointer[rte_crypto_sym_op], OpaquePointer, UInt8) -> UnsafePointer[rte_crypto_sym_xform]
alias __rte_crypto_sym_op_attach_sym_session = fn (UnsafePointer[rte_crypto_sym_op], OpaquePointer) -> Int32
alias rte_crypto_mbuf_to_vec = fn (UnsafePointer[rte_mbuf], UInt32, UInt32, UnsafePointer[rte_crypto_vec], UInt32) -> Int32
struct rte_cryptodev_asym_session(Copyable & Movable):
	pass
alias rte_crypto_asym_ke_strings = UnsafePointer[UnsafePointer[Int8]] # Failed to parse array size
alias rte_crypto_asym_op_strings = UnsafePointer[UnsafePointer[Int8]] # Failed to parse array size
struct rte_crypto_curve_id(Copyable & Movable):

	alias RTE_CRYPTO_EC_GROUP_SECP192R1 = 19

	alias RTE_CRYPTO_EC_GROUP_SECP224R1 = 21

	alias RTE_CRYPTO_EC_GROUP_SECP256R1 = 23

	alias RTE_CRYPTO_EC_GROUP_SECP384R1 = 24

	alias RTE_CRYPTO_EC_GROUP_SECP521R1 = 25

	alias RTE_CRYPTO_EC_GROUP_ED25519 = 29

	alias RTE_CRYPTO_EC_GROUP_ED448 = 30

	alias RTE_CRYPTO_EC_GROUP_SM2 = 41

struct rte_crypto_edward_instance(Copyable & Movable):

	alias RTE_CRYPTO_EDCURVE_25519 = 0

	alias RTE_CRYPTO_EDCURVE_25519CTX = 1

	alias RTE_CRYPTO_EDCURVE_25519PH = 2

	alias RTE_CRYPTO_EDCURVE_448 = 3

	alias RTE_CRYPTO_EDCURVE_448PH = 4

struct rte_crypto_asym_xform_type(Copyable & Movable):

	alias RTE_CRYPTO_ASYM_XFORM_UNSPECIFIED = 0

	alias RTE_CRYPTO_ASYM_XFORM_NONE = 1

	alias RTE_CRYPTO_ASYM_XFORM_RSA = 2

	alias RTE_CRYPTO_ASYM_XFORM_DH = 3

	alias RTE_CRYPTO_ASYM_XFORM_DSA = 4

	alias RTE_CRYPTO_ASYM_XFORM_MODINV = 5

	alias RTE_CRYPTO_ASYM_XFORM_MODEX = 6

	alias RTE_CRYPTO_ASYM_XFORM_ECDSA = 7

	alias RTE_CRYPTO_ASYM_XFORM_ECDH = 8

	alias RTE_CRYPTO_ASYM_XFORM_ECPM = 9

	alias RTE_CRYPTO_ASYM_XFORM_ECFPM = 10

	alias RTE_CRYPTO_ASYM_XFORM_SM2 = 11

	alias RTE_CRYPTO_ASYM_XFORM_EDDSA = 12

struct rte_crypto_asym_op_type(Copyable & Movable):

	alias RTE_CRYPTO_ASYM_OP_ENCRYPT = 0

	alias RTE_CRYPTO_ASYM_OP_DECRYPT = 1

	alias RTE_CRYPTO_ASYM_OP_SIGN = 2

	alias RTE_CRYPTO_ASYM_OP_VERIFY = 3

	alias RTE_CRYPTO_ASYM_OP_LIST_END = 4

struct rte_crypto_asym_ke_type(Copyable & Movable):

	alias RTE_CRYPTO_ASYM_KE_PRIV_KEY_GENERATE = 0

	alias RTE_CRYPTO_ASYM_KE_PUB_KEY_GENERATE = 1

	alias RTE_CRYPTO_ASYM_KE_SHARED_SECRET_COMPUTE = 2

	alias RTE_CRYPTO_ASYM_KE_PUB_KEY_VERIFY = 3

struct rte_crypto_rsa_padding_type(Copyable & Movable):

	alias RTE_CRYPTO_RSA_PADDING_NONE = 0

	alias RTE_CRYPTO_RSA_PADDING_PKCS1_5 = 1

	alias RTE_CRYPTO_RSA_PADDING_OAEP = 2

	alias RTE_CRYPTO_RSA_PADDING_PSS = 3

struct rte_crypto_rsa_priv_key_type(Copyable & Movable):

	alias RTE_RSA_KEY_TYPE_EXP = 0

	alias RTE_RSA_KEY_TYPE_QT = 1

struct rte_crypto_param_t(Copyable & Movable):

	var data : UnsafePointer[UInt8]

	var iova : ffi.c_ulong

	var length : ffi.c_ulong

alias rte_crypto_param = rte_crypto_param_t

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Buffer to hold crypto params required for asym operations.
# Node: ParagraphComment()
# Node: TextComment()
#  These buffers can be used for both input to PMD and output from PMD. When
# Node: TextComment()
#  used for output from PMD, application has to ensure the buffer is large
# Node: TextComment()
#  enough to hold the target data.
# Node: ParagraphComment()
# Node: TextComment()
#  If an operation requires the PMD to generate a random number,
# Node: TextComment()
#  and the device supports CSRNG, 'data' should be set to NULL.
# Node: TextComment()
#  The crypto parameter in question will not be used by the PMD,
# Node: TextComment()
#  as it is internally generated.

alias rte_crypto_uint = rte_crypto_param
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Unsigned big-integer in big-endian format 

struct rte_crypto_ec_point(Copyable & Movable):

	var x : rte_crypto_param_t

	var y : rte_crypto_param_t

struct rte_crypto_rsa_priv_key_qt(Copyable & Movable):

	var p : rte_crypto_param_t

	var q : rte_crypto_param_t

	var dP : rte_crypto_param_t

	var dQ : rte_crypto_param_t

	var qInv : rte_crypto_param_t

struct rte_crypto_rsa_padding(Copyable & Movable):

	var type : rte_crypto_rsa_padding_type

	var hash : rte_crypto_auth_algorithm

	var mgf1hash : rte_crypto_auth_algorithm

	var pss_saltlen : UInt16

	var oaep_label : rte_crypto_param_t

struct anonomous_record_1509(Copyable & Movable):
	var d : rte_crypto_param_t

	var qt : rte_crypto_rsa_priv_key_qt

struct rte_crypto_rsa_xform(Copyable & Movable):

	var n : rte_crypto_param_t

	var e : rte_crypto_param_t

	var key_type : rte_crypto_rsa_priv_key_type

	var  : anonomous_record_1509



	var padding : rte_crypto_rsa_padding

struct rte_crypto_modex_xform(Copyable & Movable):

	var modulus : rte_crypto_param_t

	var exponent : rte_crypto_param_t

struct rte_crypto_modinv_xform(Copyable & Movable):

	var modulus : rte_crypto_param_t

struct rte_crypto_dh_xform(Copyable & Movable):

	var p : rte_crypto_param_t

	var g : rte_crypto_param_t

struct rte_crypto_dsa_xform(Copyable & Movable):

	var p : rte_crypto_param_t

	var q : rte_crypto_param_t

	var g : rte_crypto_param_t

	var x : rte_crypto_param_t

struct rte_crypto_ec_xform(Copyable & Movable):

	var curve_id : rte_crypto_curve_id

	var pkey : rte_crypto_param_t

	var q : rte_crypto_ec_point

struct rte_crypto_mod_op_param(Copyable & Movable):

	var base : rte_crypto_param_t

	var result : rte_crypto_param_t

struct rte_crypto_rsa_op_param(Copyable & Movable):

	var op_type : rte_crypto_asym_op_type

	var message : rte_crypto_param_t

	var cipher : rte_crypto_param_t

	var sign : rte_crypto_param_t

struct rte_crypto_dh_op_param(Copyable & Movable):
# 
	var ke_type : rte_crypto_asym_ke_type

	var priv_key : rte_crypto_param_t

	var pub_key : rte_crypto_param_t

	var shared_secret : rte_crypto_param_t

struct rte_crypto_ecdh_op_param(Copyable & Movable):

	var ke_type : rte_crypto_asym_ke_type

	var priv_key : rte_crypto_param_t

	var pub_key : rte_crypto_ec_point

	var shared_secret : rte_crypto_ec_point

struct rte_crypto_dsa_op_param(Copyable & Movable):

	var op_type : rte_crypto_asym_op_type

	var message : rte_crypto_param_t

	var k : rte_crypto_param_t

	var r : rte_crypto_param_t

	var s : rte_crypto_param_t

	var y : rte_crypto_param_t

struct rte_crypto_ecdsa_op_param(Copyable & Movable):

	var op_type : rte_crypto_asym_op_type

	var message : rte_crypto_param_t

	var k : rte_crypto_param_t

	var r : rte_crypto_param_t

	var s : rte_crypto_param_t

struct rte_crypto_eddsa_op_param(Copyable & Movable):

	var op_type : rte_crypto_asym_op_type

	var message : rte_crypto_param_t

	var context : rte_crypto_param_t

	var instance : rte_crypto_edward_instance

	var sign : rte_crypto_param_t

struct rte_crypto_ecpm_op_param(Copyable & Movable):

	var p : rte_crypto_ec_point

	var r : rte_crypto_ec_point

	var scalar : rte_crypto_param_t

struct rte_crypto_sm2_op_capa(Copyable & Movable):

	alias RTE_CRYPTO_SM2_RNG = 0

	alias RTE_CRYPTO_SM2_PH = 1

struct rte_crypto_sm2_op_param(Copyable & Movable):

	var op_type : rte_crypto_asym_op_type

	var hash : rte_crypto_auth_algorithm

	var message : rte_crypto_param_t

	var cipher : rte_crypto_param_t

	var id : rte_crypto_param_t

	var k : rte_crypto_param_t

	var r : rte_crypto_param_t

	var s : rte_crypto_param_t

alias anonomous_record_1510 = C_Union[rte_crypto_rsa_xform, rte_crypto_modex_xform, rte_crypto_modinv_xform, rte_crypto_dh_xform, rte_crypto_dsa_xform, rte_crypto_ec_xform]

struct rte_crypto_asym_xform(Copyable & Movable):

	var next : UnsafePointer[rte_crypto_asym_xform]

	var xform_type : rte_crypto_asym_xform_type

	var union_placeholder_1 : anonomous_record_1510







alias anonomous_record_1512 = C_Union[rte_crypto_rsa_op_param, rte_crypto_mod_op_param, rte_crypto_mod_op_param, rte_crypto_dh_op_param, rte_crypto_ecdh_op_param, rte_crypto_dsa_op_param, rte_crypto_ecdsa_op_param, rte_crypto_ecpm_op_param, rte_crypto_sm2_op_param, rte_crypto_eddsa_op_param]

alias anonomous_record_1511 = C_Union[UnsafePointer[rte_cryptodev_asym_session], UnsafePointer[rte_crypto_asym_xform]]

struct rte_crypto_asym_op(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_1511



	var union_placeholder_2 : anonomous_record_1512











	var flags : UInt16

struct rte_crypto_op_type(Copyable & Movable):

	alias RTE_CRYPTO_OP_TYPE_UNDEFINED = 0

	alias RTE_CRYPTO_OP_TYPE_SYMMETRIC = 1

	alias RTE_CRYPTO_OP_TYPE_ASYMMETRIC = 2

struct rte_crypto_op_status(Copyable & Movable):

	alias RTE_CRYPTO_OP_STATUS_SUCCESS = 0

	alias RTE_CRYPTO_OP_STATUS_NOT_PROCESSED = 1

	alias RTE_CRYPTO_OP_STATUS_AUTH_FAILED = 2

	alias RTE_CRYPTO_OP_STATUS_INVALID_SESSION = 3

	alias RTE_CRYPTO_OP_STATUS_INVALID_ARGS = 4

	alias RTE_CRYPTO_OP_STATUS_ERROR = 5

struct rte_crypto_op_sess_type(Copyable & Movable):

	alias RTE_CRYPTO_OP_WITH_SESSION = 0

	alias RTE_CRYPTO_OP_SESSIONLESS = 1

	alias RTE_CRYPTO_OP_SECURITY_SESSION = 2

struct anonomous_record_1513(Copyable & Movable):
	var content_type : UInt8

alias anonomous_record_1514 = C_Union[anonomous_record_1513]

struct anonomous_record_1515(Copyable & Movable):
	var type : UInt8

	var status : UInt8

	var sess_type : UInt8

	var aux_flags : UInt8

	var param1 : anonomous_record_1514

	var reserved : InlineArray[UInt8, 1]

	var private_data_offset : UInt16

alias anonomous_record_1517 = C_Union[InlineArray[rte_crypto_sym_op, 0], InlineArray[rte_crypto_asym_op, 0]]

alias anonomous_record_1516 = C_Union[ffi.c_ulong, anonomous_record_1515, , , , , , , ]

struct rte_crypto_op(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_1516









	var mempool : UnsafePointer[rte_mempool]

	var phys_addr : ffi.c_ulong

	var union_placeholder_2 : anonomous_record_1517



alias __rte_crypto_op_reset = fn (UnsafePointer[rte_crypto_op], rte_crypto_op_type) -> NoneType
struct rte_crypto_op_pool_private(Copyable & Movable):

	var type : rte_crypto_op_type

	var priv_size : UInt16

alias __rte_crypto_op_get_priv_data_size = fn (UnsafePointer[rte_mempool]) -> UInt16
alias rte_crypto_op_pool_create = fn (UnsafePointer[Int8], rte_crypto_op_type, UInt32, UInt32, UInt16, Int32) -> UnsafePointer[rte_mempool]
alias __rte_crypto_op_raw_bulk_alloc = fn (UnsafePointer[rte_mempool], rte_crypto_op_type, UnsafePointer[UnsafePointer[rte_crypto_op]], UInt16) -> Int32
alias rte_crypto_op_alloc = fn (UnsafePointer[rte_mempool], rte_crypto_op_type) -> UnsafePointer[rte_crypto_op]
alias rte_crypto_op_bulk_alloc = fn (UnsafePointer[rte_mempool], rte_crypto_op_type, UnsafePointer[UnsafePointer[rte_crypto_op]], UInt16) -> UInt32
alias __rte_crypto_op_get_priv_data = fn (UnsafePointer[rte_crypto_op], UInt32) -> OpaquePointer
alias rte_crypto_op_free = fn (UnsafePointer[rte_crypto_op]) -> NoneType
alias rte_crypto_sym_op_alloc_from_mbuf_priv_data = fn (UnsafePointer[rte_mbuf]) -> UnsafePointer[rte_crypto_op]
alias rte_crypto_op_sym_xforms_alloc = fn (UnsafePointer[rte_crypto_op], UInt8) -> UnsafePointer[rte_crypto_sym_xform]
alias rte_crypto_op_attach_sym_session = fn (UnsafePointer[rte_crypto_op], OpaquePointer) -> Int32
alias rte_crypto_op_attach_asym_session = fn (UnsafePointer[rte_crypto_op], UnsafePointer[rte_cryptodev_asym_session]) -> Int32
struct iovec(Copyable & Movable):
	var iov_base : OpaquePointer

	var iov_len : ffi.c_ulong

alias socklen_t = __socklen_t
struct __socket_type(Copyable & Movable):
	alias SOCK_STREAM = 1

	alias SOCK_DGRAM = 2

	alias SOCK_RAW = 3

	alias SOCK_RDM = 4

	alias SOCK_SEQPACKET = 5

	alias SOCK_DCCP = 6

	alias SOCK_PACKET = 10

	alias SOCK_CLOEXEC = 524288

	alias SOCK_NONBLOCK = 2048

alias sa_family_t = UInt16
struct sockaddr(Copyable & Movable):
	var sa_family : UInt16

	var sa_data : InlineArray[Int8, 14]

struct sockaddr_storage(Copyable & Movable):
	var ss_family : UInt16

	var __ss_padding : InlineArray[Int8, 118]

	var __ss_align : ffi.c_ulong

alias MSG_OOB = 1

alias MSG_PEEK = 2

alias MSG_DONTROUTE = 4

alias MSG_CTRUNC = 8

alias MSG_PROXY = 16

alias MSG_TRUNC = 32

alias MSG_DONTWAIT = 64

alias MSG_EOR = 128

alias MSG_WAITALL = 256

alias MSG_FIN = 512

alias MSG_SYN = 1024

alias MSG_CONFIRM = 2048

alias MSG_RST = 4096

alias MSG_ERRQUEUE = 8192

alias MSG_NOSIGNAL = 16384

alias MSG_MORE = 32768

alias MSG_WAITFORONE = 65536

alias MSG_BATCH = 262144

alias MSG_ZEROCOPY = 67108864

alias MSG_FASTOPEN = 536870912

alias MSG_CMSG_CLOEXEC = 1073741824

struct msghdr(Copyable & Movable):
	var msg_name : OpaquePointer

	var msg_namelen : UInt32

	var msg_iov : UnsafePointer[iovec]

	var msg_iovlen : ffi.c_ulong

	var msg_control : OpaquePointer

	var msg_controllen : ffi.c_ulong

	var msg_flags : Int32

struct cmsghdr(Copyable & Movable):
	var cmsg_len : ffi.c_ulong

	var cmsg_level : Int32

	var cmsg_type : Int32

	var __cmsg_data : UnsafePointer[UInt8] # Failed to parse array size

alias __cmsg_nxthdr = fn (UnsafePointer[msghdr], UnsafePointer[cmsghdr]) -> UnsafePointer[cmsghdr]
alias SCM_RIGHTS = 1

struct anonomous_record_1518(Copyable & Movable):
	var fds_bits : InlineArray[ffi.c_ulong, 16]

alias __kernel_fd_set = anonomous_record_1518

alias __kernel_sighandler_t = fn(Int32) -> NoneType
alias __kernel_key_t = Int32
alias __kernel_mqd_t = Int32
alias __kernel_old_uid_t = UInt16
alias __kernel_old_gid_t = UInt16
alias __kernel_long_t = ffi.c_long
alias __kernel_ulong_t = ffi.c_ulong
alias __kernel_ino_t = __kernel_ulong_t
alias __kernel_mode_t = UInt32
alias __kernel_pid_t = Int32
alias __kernel_ipc_pid_t = Int32
alias __kernel_uid_t = UInt32
alias __kernel_gid_t = UInt32
alias __kernel_suseconds_t = __kernel_long_t
alias __kernel_daddr_t = Int32
alias __kernel_uid32_t = UInt32
alias __kernel_gid32_t = UInt32
alias __kernel_old_dev_t = UInt32
alias __kernel_size_t = __kernel_ulong_t
alias __kernel_ssize_t = __kernel_long_t
alias __kernel_ptrdiff_t = __kernel_long_t
struct anonomous_record_1519(Copyable & Movable):
	var val : InlineArray[Int32, 2]

alias __kernel_fsid_t = anonomous_record_1519

alias __kernel_off_t = __kernel_long_t
alias __kernel_loff_t = ffi.c_long_long
alias __kernel_old_time_t = __kernel_long_t
alias __kernel_time_t = __kernel_long_t
alias __kernel_time64_t = ffi.c_long_long
alias __kernel_clock_t = __kernel_long_t
alias __kernel_timer_t = Int32
alias __kernel_clockid_t = Int32
alias __kernel_caddr_t = UnsafePointer[Int8]
alias __kernel_uid16_t = UInt16
alias __kernel_gid16_t = UInt16
struct linger(Copyable & Movable):
	var l_onoff : Int32

	var l_linger : Int32

struct osockaddr(Copyable & Movable):
	var sa_family : UInt16

	var sa_data : InlineArray[UInt8, 14]

alias SHUT_RD = 0

alias SHUT_WR = 1

alias SHUT_RDWR = 2

alias socket = fn (Int32, Int32, Int32) -> Int32
alias socketpair = fn (Int32, Int32, Int32, UnsafePointer[Int32]) -> Int32
alias bind = fn (Int32, UnsafePointer[sockaddr], socklen_t) -> Int32
alias getsockname = fn (Int32, UnsafePointer[sockaddr], UnsafePointer[socklen_t]) -> Int32
alias connect = fn (Int32, UnsafePointer[sockaddr], socklen_t) -> Int32
alias getpeername = fn (Int32, UnsafePointer[sockaddr], UnsafePointer[socklen_t]) -> Int32
alias send = fn (Int32, OpaquePointer, size_t, Int32) -> ssize_t
alias recv = fn (Int32, OpaquePointer, size_t, Int32) -> ssize_t
alias sendto = fn (Int32, OpaquePointer, size_t, Int32, UnsafePointer[sockaddr], socklen_t) -> ssize_t
alias recvfrom = fn (Int32, OpaquePointer, size_t, Int32, UnsafePointer[sockaddr], UnsafePointer[socklen_t]) -> ssize_t
alias sendmsg = fn (Int32, UnsafePointer[msghdr], Int32) -> ssize_t
alias recvmsg = fn (Int32, UnsafePointer[msghdr], Int32) -> ssize_t
alias getsockopt = fn (Int32, Int32, Int32, OpaquePointer, UnsafePointer[socklen_t]) -> Int32
alias setsockopt = fn (Int32, Int32, Int32, OpaquePointer, socklen_t) -> Int32
alias listen = fn (Int32, Int32) -> Int32
alias accept = fn (Int32, UnsafePointer[sockaddr], UnsafePointer[socklen_t]) -> Int32
alias shutdown = fn (Int32, Int32) -> Int32
alias sockatmark = fn (Int32) -> Int32
alias isfdtype = fn (Int32, Int32) -> Int32
alias in_addr_t = uint32_t
struct in_addr(Copyable & Movable):
	var s_addr : UInt32

struct ip_opts(Copyable & Movable):
	var ip_dst : in_addr

	var ip_opts : InlineArray[Int8, 40]

struct ip_mreqn(Copyable & Movable):
	var imr_multiaddr : in_addr

	var imr_address : in_addr

	var imr_ifindex : Int32

struct in_pktinfo(Copyable & Movable):
	var ipi_ifindex : Int32

	var ipi_spec_dst : in_addr

	var ipi_addr : in_addr

alias IPPROTO_IP = 0

alias IPPROTO_ICMP = 1

alias IPPROTO_IGMP = 2

alias IPPROTO_IPIP = 4

alias IPPROTO_TCP = 6

alias IPPROTO_EGP = 8

alias IPPROTO_PUP = 12

alias IPPROTO_UDP = 17

alias IPPROTO_IDP = 22

alias IPPROTO_TP = 29

alias IPPROTO_DCCP = 33

alias IPPROTO_IPV6 = 41

alias IPPROTO_RSVP = 46

alias IPPROTO_GRE = 47

alias IPPROTO_ESP = 50

alias IPPROTO_AH = 51

alias IPPROTO_MTP = 92

alias IPPROTO_BEETPH = 94

alias IPPROTO_ENCAP = 98

alias IPPROTO_PIM = 103

alias IPPROTO_COMP = 108

alias IPPROTO_SCTP = 132

alias IPPROTO_UDPLITE = 136

alias IPPROTO_MPLS = 137

alias IPPROTO_ETHERNET = 143

alias IPPROTO_RAW = 255

alias IPPROTO_MPTCP = 262

alias IPPROTO_MAX = 263

alias IPPROTO_HOPOPTS = 0

alias IPPROTO_ROUTING = 43

alias IPPROTO_FRAGMENT = 44

alias IPPROTO_ICMPV6 = 58

alias IPPROTO_NONE = 59

alias IPPROTO_DSTOPTS = 60

alias IPPROTO_MH = 135

alias in_port_t = uint16_t
alias IPPORT_ECHO = 7

alias IPPORT_DISCARD = 9

alias IPPORT_SYSTAT = 11

alias IPPORT_DAYTIME = 13

alias IPPORT_NETSTAT = 15

alias IPPORT_FTP = 21

alias IPPORT_TELNET = 23

alias IPPORT_SMTP = 25

alias IPPORT_TIMESERVER = 37

alias IPPORT_NAMESERVER = 42

alias IPPORT_WHOIS = 43

alias IPPORT_MTP = 57

alias IPPORT_TFTP = 69

alias IPPORT_RJE = 77

alias IPPORT_FINGER = 79

alias IPPORT_TTYLINK = 87

alias IPPORT_SUPDUP = 95

alias IPPORT_EXECSERVER = 512

alias IPPORT_LOGINSERVER = 513

alias IPPORT_CMDSERVER = 514

alias IPPORT_EFSSERVER = 520

alias IPPORT_BIFFUDP = 512

alias IPPORT_WHOSERVER = 513

alias IPPORT_ROUTESERVER = 520

alias IPPORT_RESERVED = 1024

alias IPPORT_USERRESERVED = 5000

alias anonomous_record_1520 = C_Union[InlineArray[UInt8, 16], InlineArray[UInt16, 8], InlineArray[ffi.c_ulong, 4]]

struct in6_addr(Copyable & Movable):
	var __in6_u : anonomous_record_1520

alias in6addr_any = in6_addr
alias in6addr_loopback = in6_addr
struct sockaddr_in(Copyable & Movable):
	var sin_family : UInt16

	var sin_port : UInt16

	var sin_addr : in_addr

	var sin_zero : InlineArray[UInt8, 8]

struct sockaddr_in6(Copyable & Movable):
	var sin6_family : UInt16

	var sin6_port : UInt16

	var sin6_flowinfo : UInt32

	var sin6_addr : in6_addr

	var sin6_scope_id : UInt32

struct ip_mreq(Copyable & Movable):
	var imr_multiaddr : in_addr

	var imr_interface : in_addr

struct ip_mreq_source(Copyable & Movable):
	var imr_multiaddr : in_addr

	var imr_interface : in_addr

	var imr_sourceaddr : in_addr

struct ipv6_mreq(Copyable & Movable):
	var ipv6mr_multiaddr : in6_addr

	var ipv6mr_interface : UInt32

struct group_req(Copyable & Movable):
	var gr_interface : UInt32

	var gr_group : sockaddr_storage

struct group_source_req(Copyable & Movable):
	var gsr_interface : UInt32

	var gsr_group : sockaddr_storage

	var gsr_source : sockaddr_storage

struct ip_msfilter(Copyable & Movable):
	var imsf_multiaddr : in_addr

	var imsf_interface : in_addr

	var imsf_fmode : UInt32

	var imsf_numsrc : UInt32

	var imsf_slist : InlineArray[in_addr, 1]

struct group_filter(Copyable & Movable):
	var gf_interface : UInt32

	var gf_group : sockaddr_storage

	var gf_fmode : UInt32

	var gf_numsrc : UInt32

	var gf_slist : InlineArray[sockaddr_storage, 1]

alias ntohl = fn (UInt32) -> UInt32
alias ntohs = fn (UInt16) -> UInt16
alias htonl = fn (UInt32) -> UInt32
alias htons = fn (UInt16) -> UInt16
alias bindresvport = fn (Int32, UnsafePointer[sockaddr_in]) -> Int32
alias bindresvport6 = fn (Int32, UnsafePointer[sockaddr_in6]) -> Int32
alias inet_addr = fn (UnsafePointer[Int8]) -> in_addr_t
alias inet_lnaof = fn (in_addr) -> in_addr_t
alias inet_makeaddr = fn (in_addr_t, in_addr_t) -> in_addr
alias inet_netof = fn (in_addr) -> in_addr_t
alias inet_network = fn (UnsafePointer[Int8]) -> in_addr_t
alias inet_ntoa = fn (in_addr) -> UnsafePointer[Int8]
alias inet_pton = fn (Int32, UnsafePointer[Int8], OpaquePointer) -> Int32
alias inet_ntop = fn (Int32, OpaquePointer, UnsafePointer[Int8], socklen_t) -> UnsafePointer[Int8]
alias inet_aton = fn (UnsafePointer[Int8], UnsafePointer[in_addr]) -> Int32
alias inet_neta = fn (in_addr_t, UnsafePointer[Int8], size_t) -> UnsafePointer[Int8]
alias inet_net_ntop = fn (Int32, OpaquePointer, Int32, UnsafePointer[Int8], size_t) -> UnsafePointer[Int8]
alias inet_net_pton = fn (Int32, UnsafePointer[Int8], OpaquePointer, size_t) -> Int32
alias inet_nsap_addr = fn (UnsafePointer[Int8], UnsafePointer[UInt8], Int32) -> UInt32
alias inet_nsap_ntoa = fn (Int32, UnsafePointer[UInt8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
struct timestamp(Copyable & Movable):
	var len : UInt8

	var ptr : UInt8

	var flags : UInt32

	var overflow : UInt32

	var data : InlineArray[ffi.c_ulong, 9]

struct iphdr(Copyable & Movable):
	var ihl : UInt32

	var version : UInt32

	var tos : UInt8

	var tot_len : UInt16

	var id : UInt16

	var frag_off : UInt16

	var ttl : UInt8

	var protocol : UInt8

	var check : UInt16

	var saddr : UInt32

	var daddr : UInt32

struct ip(Copyable & Movable):
	var ip_hl : UInt32

	var ip_v : UInt32

	var ip_tos : UInt8

	var ip_len : UInt16

	var ip_id : UInt16

	var ip_off : UInt16

	var ip_ttl : UInt8

	var ip_p : UInt8

	var ip_sum : UInt16

	var ip_src : in_addr

	var ip_dst : in_addr

struct ip_timestamp(Copyable & Movable):
	var ipt_code : UInt8

	var ipt_len : UInt8

	var ipt_ptr : UInt8

	var ipt_flg : UInt32

	var ipt_oflw : UInt32

	var data : InlineArray[ffi.c_ulong, 9]

struct ip6_hdrctl(Copyable & Movable):
	var ip6_un1_flow : UInt32

	var ip6_un1_plen : UInt16

	var ip6_un1_nxt : UInt8

	var ip6_un1_hlim : UInt8

alias anonomous_record_1521 = C_Union[ip6_hdrctl, UInt8]

struct ip6_hdr(Copyable & Movable):
	var ip6_ctlun : anonomous_record_1521

	var ip6_src : in6_addr

	var ip6_dst : in6_addr

struct ip6_ext(Copyable & Movable):
	var ip6e_nxt : UInt8

	var ip6e_len : UInt8

struct ip6_hbh(Copyable & Movable):
	var ip6h_nxt : UInt8

	var ip6h_len : UInt8

struct ip6_dest(Copyable & Movable):
	var ip6d_nxt : UInt8

	var ip6d_len : UInt8

struct ip6_rthdr(Copyable & Movable):
	var ip6r_nxt : UInt8

	var ip6r_len : UInt8

	var ip6r_type : UInt8

	var ip6r_segleft : UInt8

struct ip6_rthdr0(Copyable & Movable):
	var ip6r0_nxt : UInt8

	var ip6r0_len : UInt8

	var ip6r0_type : UInt8

	var ip6r0_segleft : UInt8

	var ip6r0_reserved : UInt8

	var ip6r0_slmap : InlineArray[UInt8, 3]

	var ip6r0_addr : InlineArray[in6_addr, 0]

struct ip6_frag(Copyable & Movable):
	var ip6f_nxt : UInt8

	var ip6f_reserved : UInt8

	var ip6f_offlg : UInt16

	var ip6f_ident : UInt32

struct ip6_opt(Copyable & Movable):
	var ip6o_type : UInt8

	var ip6o_len : UInt8

struct ip6_opt_jumbo(Copyable & Movable):
	var ip6oj_type : UInt8

	var ip6oj_len : UInt8

	var ip6oj_jumbo_len : InlineArray[UInt8, 4]

struct ip6_opt_nsap(Copyable & Movable):
	var ip6on_type : UInt8

	var ip6on_len : UInt8

	var ip6on_src_nsap_len : UInt8

	var ip6on_dst_nsap_len : UInt8

struct ip6_opt_tunnel(Copyable & Movable):
	var ip6ot_type : UInt8

	var ip6ot_len : UInt8

	var ip6ot_encap_limit : UInt8

struct ip6_opt_router(Copyable & Movable):
	var ip6or_type : UInt8

	var ip6or_len : UInt8

	var ip6or_value : InlineArray[UInt8, 2]

alias __rte_raw_cksum = fn (OpaquePointer, size_t, UInt32) -> UInt32
alias __rte_raw_cksum_reduce = fn (UInt32) -> UInt16
alias rte_raw_cksum = fn (OpaquePointer, size_t) -> UInt16
alias rte_raw_cksum_mbuf = fn (UnsafePointer[rte_mbuf], UInt32, UInt32, UnsafePointer[UInt16]) -> Int32
alias __builtin_bswap16 = fn (UInt16) -> UInt16
struct anonomous_record_1522(Copyable & Movable):
	var ihl : UInt8

	var version : UInt8

alias anonomous_record_1523 = C_Union[UInt8, anonomous_record_1522, , ]

struct rte_ipv4_hdr(Copyable & Movable):
# Alignment: 2 



	var union_placeholder_1 : anonomous_record_1523




	var type_of_service : UInt8

	var total_length : UInt16

	var packet_id : UInt16

	var fragment_offset : UInt16

	var time_to_live : UInt8

	var next_proto_id : UInt8

	var hdr_checksum : UInt16

	var src_addr : UInt32

	var dst_addr : UInt32

alias rte_ipv4_hdr_len = fn (UnsafePointer[rte_ipv4_hdr]) -> UInt8
alias rte_ipv4_cksum = fn (UnsafePointer[rte_ipv4_hdr]) -> UInt16
alias rte_ipv4_cksum_simple = fn (UnsafePointer[rte_ipv4_hdr]) -> UInt16
alias rte_ipv4_phdr_cksum = fn (UnsafePointer[rte_ipv4_hdr], ffi.c_ulong) -> UInt16
alias __rte_ipv4_udptcp_cksum = fn (UnsafePointer[rte_ipv4_hdr], OpaquePointer) -> UInt16
alias rte_ipv4_udptcp_cksum = fn (UnsafePointer[rte_ipv4_hdr], OpaquePointer) -> UInt16
alias __rte_ipv4_udptcp_cksum_mbuf = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_ipv4_hdr], UInt16) -> UInt16
alias rte_ipv4_udptcp_cksum_mbuf = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_ipv4_hdr], UInt16) -> UInt16
alias rte_ipv4_udptcp_cksum_verify = fn (UnsafePointer[rte_ipv4_hdr], OpaquePointer) -> Int32
alias rte_ipv4_udptcp_cksum_mbuf_verify = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_ipv4_hdr], UInt16) -> Int32
alias rte_srand = fn (ffi.c_ulong) -> NoneType
alias rte_rand = fn () -> ffi.c_ulong
alias rte_rand_max = fn (ffi.c_ulong) -> ffi.c_ulong
alias rte_drand = fn () -> Float64
struct rte_ether_addr(Copyable & Movable):
# Alignment: 2 


	var addr_bytes : InlineArray[UInt8, 6]

# # Node: PlaceHolder()
# {"id":"0x360acc98","inner":[{"castKind":"IntegralToBoolean","id":"0x360acc08","inner":[{"id":"0x360acb68","inner":[{"argType":{"desugaredQualType":"struct rte_ether_addr","qualType":"struct rte_ether_addr"},"id":"0x360acb10","kind":"UnaryExprOrTypeTraitExpr","name":"sizeof","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2730,"tokLen":6},"end":{"col":43,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2758,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"},{"castKind":"IntegralCast","id":"0x360acb50","inner":[{"id":"0x360acb30","kind":"IntegerLiteral","range":{"begin":{"col":48,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2763,"tokLen":1},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2763,"tokLen":1}},"type":{"qualType":"int"},"value":"6","valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":48,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2763,"tokLen":1},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2763,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"}],"kind":"BinaryOperator","opcode":"==","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2730,"tokLen":6},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2763,"tokLen":1}},"type":{"qualType":"int"},"valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":80,"offset":2730,"tokLen":6},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2763,"tokLen":1}},"type":{"qualType":"bool"},"valueCategory":"prvalue"},{"id":"0x360acbc8","kind":"StringLiteral","range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":81,"offset":2768,"tokLen":36},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2768,"tokLen":36}},"type":{"qualType":"char[35]"},"value":"\"sizeof(struct rte_ether_addr) == 6\"","valueCategory":"lvalue"}],"kind":"StaticAssertDecl","loc":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":80,"offset":2716,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"range":{"begin":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":80,"offset":2716,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"end":{"col":39,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":81,"offset":2804,"tokLen":1}}}
# # Node: PlaceHolder()
# {"id":"0x360aceb0","inner":[{"castKind":"IntegralToBoolean","id":"0x360ace78","inner":[{"id":"0x360acd50","inner":[{"argType":{"desugaredQualType":"struct rte_ether_addr","qualType":"struct rte_ether_addr"},"id":"0x360accf8","kind":"UnaryExprOrTypeTraitExpr","name":"alignof","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":82,"offset":2821,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":44,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2850,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"},{"castKind":"IntegralCast","id":"0x360acd38","inner":[{"id":"0x360acd18","kind":"IntegerLiteral","range":{"begin":{"col":49,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2855,"tokLen":1},"end":{"col":49,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2855,"tokLen":1}},"type":{"qualType":"int"},"value":"2","valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":49,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2855,"tokLen":1},"end":{"col":49,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2855,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"}],"kind":"BinaryOperator","opcode":"==","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":82,"offset":2821,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":49,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2855,"tokLen":1}},"type":{"qualType":"int"},"valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":82,"offset":2821,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":49,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2855,"tokLen":1}},"type":{"qualType":"bool"},"valueCategory":"prvalue"},{"id":"0x360acda8","kind":"StringLiteral","range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":83,"offset":2860,"tokLen":37},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":2860,"tokLen":37}},"type":{"qualType":"char[36]"},"value":"\"alignof(struct rte_ether_addr) == 2\"","valueCategory":"lvalue"}],"kind":"StaticAssertDecl","loc":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":82,"offset":2807,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"range":{"begin":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":82,"offset":2807,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"end":{"col":40,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":83,"offset":2897,"tokLen":1}}}
alias rte_is_same_ether_addr = fn (UnsafePointer[rte_ether_addr], UnsafePointer[rte_ether_addr]) -> Int32
alias rte_is_zero_ether_addr = fn (UnsafePointer[rte_ether_addr]) -> Int32
alias rte_is_unicast_ether_addr = fn (UnsafePointer[rte_ether_addr]) -> Int32
alias rte_is_multicast_ether_addr = fn (UnsafePointer[rte_ether_addr]) -> Int32
alias rte_is_broadcast_ether_addr = fn (UnsafePointer[rte_ether_addr]) -> Int32
alias rte_is_universal_ether_addr = fn (UnsafePointer[rte_ether_addr]) -> Int32
alias rte_is_local_admin_ether_addr = fn (UnsafePointer[rte_ether_addr]) -> Int32
alias rte_is_valid_assigned_ether_addr = fn (UnsafePointer[rte_ether_addr]) -> Int32
alias rte_eth_random_addr = fn (UnsafePointer[UInt8]) -> NoneType
alias rte_ether_addr_copy = fn (UnsafePointer[rte_ether_addr], UnsafePointer[rte_ether_addr]) -> NoneType
alias rte_ether_format_addr = fn (UnsafePointer[Int8], UInt16, UnsafePointer[rte_ether_addr]) -> NoneType
alias rte_ether_unformat_addr = fn (UnsafePointer[Int8], UnsafePointer[rte_ether_addr]) -> Int32
struct rte_ether_hdr(Copyable & Movable):

	var dst_addr : rte_ether_addr

	var src_addr : rte_ether_addr

	var ether_type : UInt16

# # Node: PlaceHolder()
# {"id":"0x35d16c38","inner":[{"castKind":"IntegralToBoolean","id":"0x35d16b98","inner":[{"id":"0x35d16b38","inner":[{"argType":{"desugaredQualType":"struct rte_ether_hdr","qualType":"struct rte_ether_hdr"},"id":"0x35d16ae0","kind":"UnaryExprOrTypeTraitExpr","name":"sizeof","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9215,"tokLen":6},"end":{"col":42,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9242,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"},{"castKind":"IntegralCast","id":"0x35d16b20","inner":[{"id":"0x35d16b00","kind":"IntegerLiteral","range":{"begin":{"col":47,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9247,"tokLen":2},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9247,"tokLen":2}},"type":{"qualType":"int"},"value":"14","valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":47,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9247,"tokLen":2},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9247,"tokLen":2}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"}],"kind":"BinaryOperator","opcode":"==","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9215,"tokLen":6},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9247,"tokLen":2}},"type":{"qualType":"int"},"valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":306,"offset":9215,"tokLen":6},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9247,"tokLen":2}},"type":{"qualType":"bool"},"valueCategory":"prvalue"},{"id":"0x35d16b58","kind":"StringLiteral","range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":307,"offset":9253,"tokLen":36},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9253,"tokLen":36}},"type":{"qualType":"char[35]"},"value":"\"sizeof(struct rte_ether_hdr) == 14\"","valueCategory":"lvalue"}],"kind":"StaticAssertDecl","loc":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":306,"offset":9201,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"range":{"begin":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":306,"offset":9201,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"end":{"col":39,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":307,"offset":9289,"tokLen":1}}}
# # Node: PlaceHolder()
# {"id":"0x35d16db0","inner":[{"castKind":"IntegralToBoolean","id":"0x35d16d78","inner":[{"id":"0x35d16cf0","inner":[{"argType":{"desugaredQualType":"struct rte_ether_hdr","qualType":"struct rte_ether_hdr"},"id":"0x35d16c98","kind":"UnaryExprOrTypeTraitExpr","name":"alignof","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":308,"offset":9306,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":43,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9334,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"},{"castKind":"IntegralCast","id":"0x35d16cd8","inner":[{"id":"0x35d16cb8","kind":"IntegerLiteral","range":{"begin":{"col":48,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9339,"tokLen":1},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9339,"tokLen":1}},"type":{"qualType":"int"},"value":"2","valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":48,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9339,"tokLen":1},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9339,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"}],"kind":"BinaryOperator","opcode":"==","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":308,"offset":9306,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9339,"tokLen":1}},"type":{"qualType":"int"},"valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":308,"offset":9306,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9339,"tokLen":1}},"type":{"qualType":"bool"},"valueCategory":"prvalue"},{"id":"0x35d16d10","kind":"StringLiteral","range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":309,"offset":9344,"tokLen":36},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9344,"tokLen":36}},"type":{"qualType":"char[35]"},"value":"\"alignof(struct rte_ether_hdr) == 2\"","valueCategory":"lvalue"}],"kind":"StaticAssertDecl","loc":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":308,"offset":9292,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"range":{"begin":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":308,"offset":9292,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"end":{"col":39,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":309,"offset":9380,"tokLen":1}}}
struct rte_vlan_hdr(Copyable & Movable):

	var vlan_tci : UInt16

	var eth_proto : UInt16

# # Node: PlaceHolder()
# {"id":"0x35d17188","inner":[{"castKind":"IntegralToBoolean","id":"0x35d170f0","inner":[{"id":"0x35d17058","inner":[{"argType":{"desugaredQualType":"struct rte_vlan_hdr","qualType":"struct rte_vlan_hdr"},"id":"0x35d17000","kind":"UnaryExprOrTypeTraitExpr","name":"sizeof","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9705,"tokLen":6},"end":{"col":41,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9731,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"},{"castKind":"IntegralCast","id":"0x35d17040","inner":[{"id":"0x35d17020","kind":"IntegerLiteral","range":{"begin":{"col":46,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9736,"tokLen":1},"end":{"col":46,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9736,"tokLen":1}},"type":{"qualType":"int"},"value":"4","valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":46,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9736,"tokLen":1},"end":{"col":46,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9736,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"}],"kind":"BinaryOperator","opcode":"==","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9705,"tokLen":6},"end":{"col":46,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9736,"tokLen":1}},"type":{"qualType":"int"},"valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":321,"offset":9705,"tokLen":6},"end":{"col":46,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9736,"tokLen":1}},"type":{"qualType":"bool"},"valueCategory":"prvalue"},{"id":"0x35d170b8","kind":"StringLiteral","range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":322,"offset":9741,"tokLen":34},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9741,"tokLen":34}},"type":{"qualType":"char[33]"},"value":"\"sizeof(struct rte_vlan_hdr) == 4\"","valueCategory":"lvalue"}],"kind":"StaticAssertDecl","loc":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":321,"offset":9691,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"range":{"begin":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":321,"offset":9691,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"end":{"col":37,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":322,"offset":9775,"tokLen":1}}}
# # Node: PlaceHolder()
# {"id":"0x35d17700","inner":[{"castKind":"IntegralToBoolean","id":"0x35d176c8","inner":[{"id":"0x35d17240","inner":[{"argType":{"desugaredQualType":"struct rte_vlan_hdr","qualType":"struct rte_vlan_hdr"},"id":"0x35d171e8","kind":"UnaryExprOrTypeTraitExpr","name":"alignof","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":323,"offset":9792,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":42,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9819,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"},{"castKind":"IntegralCast","id":"0x35d17228","inner":[{"id":"0x35d17208","kind":"IntegerLiteral","range":{"begin":{"col":47,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9824,"tokLen":1},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9824,"tokLen":1}},"type":{"qualType":"int"},"value":"2","valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":47,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9824,"tokLen":1},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9824,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"}],"kind":"BinaryOperator","opcode":"==","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":323,"offset":9792,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9824,"tokLen":1}},"type":{"qualType":"int"},"valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":323,"offset":9792,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9824,"tokLen":1}},"type":{"qualType":"bool"},"valueCategory":"prvalue"},{"id":"0x35d17298","kind":"StringLiteral","range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":324,"offset":9829,"tokLen":35},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"offset":9829,"tokLen":35}},"type":{"qualType":"char[34]"},"value":"\"alignof(struct rte_vlan_hdr) == 2\"","valueCategory":"lvalue"}],"kind":"StaticAssertDecl","loc":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":323,"offset":9778,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"range":{"begin":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":323,"offset":9778,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"end":{"col":38,"includedFrom":{"file":"dpdk/lib/net/rte_ip6.h"},"line":324,"offset":9864,"tokLen":1}}}
alias rte_vlan_strip = fn (UnsafePointer[rte_mbuf]) -> Int32
alias rte_vlan_insert = fn (UnsafePointer[UnsafePointer[rte_mbuf]]) -> Int32
struct rte_ipv6_addr(Copyable & Movable):

	var a : InlineArray[UInt8, 16]

alias rte_ipv6_addr_eq = fn (UnsafePointer[rte_ipv6_addr], UnsafePointer[rte_ipv6_addr]) -> Bool
alias rte_ipv6_addr_mask = fn (UnsafePointer[rte_ipv6_addr], UInt8) -> NoneType
alias rte_ipv6_addr_eq_prefix = fn (UnsafePointer[rte_ipv6_addr], UnsafePointer[rte_ipv6_addr], UInt8) -> Bool
alias rte_ipv6_mask_depth = fn (UnsafePointer[rte_ipv6_addr]) -> UInt8
alias rte_ipv6_addr_is_unspec = fn (UnsafePointer[rte_ipv6_addr]) -> Bool
alias rte_ipv6_addr_is_loopback = fn (UnsafePointer[rte_ipv6_addr]) -> Bool
alias rte_ipv6_addr_is_linklocal = fn (UnsafePointer[rte_ipv6_addr]) -> Bool
alias rte_ipv6_addr_is_sitelocal = fn (UnsafePointer[rte_ipv6_addr]) -> Bool
alias rte_ipv6_addr_is_v4compat = fn (UnsafePointer[rte_ipv6_addr]) -> Bool
alias rte_ipv6_addr_is_v4mapped = fn (UnsafePointer[rte_ipv6_addr]) -> Bool
alias rte_ipv6_addr_is_mcast = fn (UnsafePointer[rte_ipv6_addr]) -> Bool
struct rte_ipv6_mc_scope(Copyable & Movable):

	alias RTE_IPV6_MC_SCOPE_NONE = 0

	alias RTE_IPV6_MC_SCOPE_IFACELOCAL = 1

	alias RTE_IPV6_MC_SCOPE_LINKLOCAL = 2

	alias RTE_IPV6_MC_SCOPE_SITELOCAL = 5

	alias RTE_IPV6_MC_SCOPE_ORGLOCAL = 8

	alias RTE_IPV6_MC_SCOPE_GLOBAL = 14

alias rte_ipv6_llocal_from_ethernet = fn (UnsafePointer[rte_ipv6_addr], UnsafePointer[rte_ether_addr]) -> NoneType
alias rte_ipv6_solnode_from_addr = fn (UnsafePointer[rte_ipv6_addr], UnsafePointer[rte_ipv6_addr]) -> NoneType
alias rte_ether_mcast_from_ipv6 = fn (UnsafePointer[rte_ether_addr], UnsafePointer[rte_ipv6_addr]) -> NoneType
struct anonomous_record_1524(Copyable & Movable):
	var flow_label : UInt32

	var ecn : UInt32

	var ds : UInt32

	var version : UInt32

alias anonomous_record_1525 = C_Union[UInt32, anonomous_record_1524, , , , ]

struct rte_ipv6_hdr(Copyable & Movable):
# Alignment: 2 



	var union_placeholder_1 : anonomous_record_1525






	var payload_len : UInt16

	var proto : UInt8

	var hop_limits : UInt8

	var src_addr : rte_ipv6_addr

	var dst_addr : rte_ipv6_addr

alias rte_ipv6_check_version = fn (UnsafePointer[rte_ipv6_hdr]) -> Int32
struct anonomous_record_1526(Copyable & Movable):
	var last_entry : UInt8

	var flag : UInt8

	var tag : UInt16

alias anonomous_record_1527 = C_Union[UInt32, anonomous_record_1526, , , ]

struct rte_ipv6_routing_ext(Copyable & Movable):
# Alignment: 2 



	var next_hdr : UInt8

	var hdr_len : UInt8

	var type : UInt8

	var segments_left : UInt8

	var union_placeholder_1 : anonomous_record_1527





alias rte_ipv6_phdr_cksum = fn (UnsafePointer[rte_ipv6_hdr], ffi.c_ulong) -> UInt16
alias __rte_ipv6_udptcp_cksum = fn (UnsafePointer[rte_ipv6_hdr], OpaquePointer) -> UInt16
alias rte_ipv6_udptcp_cksum = fn (UnsafePointer[rte_ipv6_hdr], OpaquePointer) -> UInt16
alias __rte_ipv6_udptcp_cksum_mbuf = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_ipv6_hdr], UInt16) -> UInt16
alias rte_ipv6_udptcp_cksum_mbuf = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_ipv6_hdr], UInt16) -> UInt16
alias rte_ipv6_udptcp_cksum_verify = fn (UnsafePointer[rte_ipv6_hdr], OpaquePointer) -> Int32
alias rte_ipv6_udptcp_cksum_mbuf_verify = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_ipv6_hdr], UInt16) -> Int32
struct rte_ipv6_fragment_ext(Copyable & Movable):
# Alignment: 2 


	var next_header : UInt8

	var reserved : UInt8

	var frag_data : UInt16

	var id : UInt32

alias rte_ipv6_get_next_ext = fn (UnsafePointer[UInt8], Int32, UnsafePointer[size_t]) -> Int32
struct rte_mbuf_dynfield(Copyable & Movable):

	var name : InlineArray[Int8, 64]

	var size : ffi.c_ulong

	var align : ffi.c_ulong

	var flags : UInt32

struct rte_mbuf_dynflag(Copyable & Movable):

	var name : InlineArray[Int8, 64]

	var flags : UInt32

alias rte_mbuf_dynfield_register = fn (UnsafePointer[rte_mbuf_dynfield]) -> Int32
alias rte_mbuf_dynfield_register_offset = fn (UnsafePointer[rte_mbuf_dynfield], size_t) -> Int32
alias rte_mbuf_dynfield_lookup = fn (UnsafePointer[Int8], UnsafePointer[rte_mbuf_dynfield]) -> Int32
alias rte_mbuf_dynflag_register = fn (UnsafePointer[rte_mbuf_dynflag]) -> Int32
alias rte_mbuf_dynflag_register_bitnum = fn (UnsafePointer[rte_mbuf_dynflag], UInt32) -> Int32
alias rte_mbuf_dynflag_lookup = fn (UnsafePointer[Int8], UnsafePointer[rte_mbuf_dynflag]) -> Int32
alias rte_mbuf_dyn_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_mbuf_timestamp_t = uint64_t
alias rte_mbuf_dyn_rx_timestamp_register = fn (UnsafePointer[Int32], UnsafePointer[ffi.c_ulong]) -> Int32
alias rte_mbuf_dyn_tx_timestamp_register = fn (UnsafePointer[Int32], UnsafePointer[ffi.c_ulong]) -> Int32
struct rte_security_ipsec_sa_mode(Copyable & Movable):

	alias RTE_SECURITY_IPSEC_SA_MODE_TRANSPORT = 1

	alias RTE_SECURITY_IPSEC_SA_MODE_TUNNEL = 2

struct rte_security_ipsec_sa_protocol(Copyable & Movable):

	alias RTE_SECURITY_IPSEC_SA_PROTO_AH = 1

	alias RTE_SECURITY_IPSEC_SA_PROTO_ESP = 2

struct rte_security_ipsec_tunnel_type(Copyable & Movable):

	alias RTE_SECURITY_IPSEC_TUNNEL_IPV4 = 1

	alias RTE_SECURITY_IPSEC_TUNNEL_IPV6 = 2

struct anonomous_record_1529(Copyable & Movable):
	var src_addr : rte_ipv6_addr

	var dst_addr : rte_ipv6_addr

	var dscp : UInt8

	var flabel : UInt32

	var hlimit : UInt8

struct anonomous_record_1528(Copyable & Movable):
	var src_ip : in_addr

	var dst_ip : in_addr

	var dscp : UInt8

	var df : UInt8

	var ttl : UInt8

alias anonomous_record_1530 = C_Union[anonomous_record_1528, anonomous_record_1529]

struct rte_security_ipsec_tunnel_param(Copyable & Movable):

	var type : rte_security_ipsec_tunnel_type

	var union_placeholder_1 : anonomous_record_1530



struct rte_security_ipsec_udp_param(Copyable & Movable):
	var sport : UInt16

	var dport : UInt16

struct rte_security_ipsec_sa_options(Copyable & Movable):

	var esn : UInt32

	var udp_encap : UInt32

	var copy_dscp : UInt32

	var copy_flabel : UInt32

	var copy_df : UInt32

	var dec_ttl : UInt32

	var ecn : UInt32

	var stats : UInt32

	var iv_gen_disable : UInt32

	var tunnel_hdr_verify : UInt32

	var udp_ports_verify : UInt32

	var ip_csum_enable : UInt32

	var l4_csum_enable : UInt32

	var ip_reassembly_en : UInt32

	var ingress_oop : UInt32

struct rte_security_ipsec_sa_direction(Copyable & Movable):

	alias RTE_SECURITY_IPSEC_SA_DIR_EGRESS = 0

	alias RTE_SECURITY_IPSEC_SA_DIR_INGRESS = 1

struct rte_security_ipsec_lifetime(Copyable & Movable):

	var packets_soft_limit : ffi.c_ulong

	var bytes_soft_limit : ffi.c_ulong

	var packets_hard_limit : ffi.c_ulong

	var bytes_hard_limit : ffi.c_ulong

struct anonomous_record_1531(Copyable & Movable):
	var low : UInt32

	var hi : UInt32

alias anonomous_record_1532 = C_Union[ffi.c_ulong, anonomous_record_1531, , ]

struct rte_security_ipsec_xform(Copyable & Movable):

	var spi : UInt32

	var salt : UInt32

	var options : rte_security_ipsec_sa_options

	var direction : rte_security_ipsec_sa_direction

	var proto : rte_security_ipsec_sa_protocol

	var mode : rte_security_ipsec_sa_mode

	var tunnel : rte_security_ipsec_tunnel_param

	var life : rte_security_ipsec_lifetime

	var replay_win_sz : UInt32

	var esn : anonomous_record_1532

	var udp : rte_security_ipsec_udp_param

struct rte_security_macsec_direction(Copyable & Movable):

	alias RTE_SECURITY_MACSEC_DIR_TX = 0

	alias RTE_SECURITY_MACSEC_DIR_RX = 1

struct anonomous_record_1533(Copyable & Movable):

	var data : UnsafePointer[UInt8]

	var length : UInt16

struct rte_security_macsec_sa(Copyable & Movable):

	var dir : rte_security_macsec_direction

	var key : anonomous_record_1533

	var salt : InlineArray[UInt8, 12]

	var an : UInt8

	var ssci : UInt32

	var xpn : UInt32

	var next_pn : UInt32

struct anonomous_record_1535(Copyable & Movable):
	var sa_id : UInt16

	var sa_id_rekey : UInt16

	var sci : ffi.c_ulong

	var active : UInt8

	var re_key_en : UInt8

	var is_xpn : UInt8

	var reserved : UInt8

struct anonomous_record_1534(Copyable & Movable):
	var sa_id : InlineArray[UInt16, 4]

	var sa_in_use : InlineArray[UInt8, 4]

	var active : UInt8

	var is_xpn : UInt8

	var reserved : UInt8

alias anonomous_record_1536 = C_Union[anonomous_record_1534, anonomous_record_1535]

struct rte_security_macsec_sc(Copyable & Movable):

	var dir : rte_security_macsec_direction

	var pn_threshold : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_1536



struct rte_security_macsec_alg(Copyable & Movable):

	alias RTE_SECURITY_MACSEC_ALG_GCM_128 = 0

	alias RTE_SECURITY_MACSEC_ALG_GCM_256 = 1

	alias RTE_SECURITY_MACSEC_ALG_GCM_XPN_128 = 2

	alias RTE_SECURITY_MACSEC_ALG_GCM_XPN_256 = 3

struct anonomous_record_1538(Copyable & Movable):
	var replay_win_sz : UInt32

	var validate_frames : UInt16

	var icv_include_da_sa : UInt16

	var ctrl_port_enable : UInt16

	var preserve_sectag : UInt16

	var preserve_icv : UInt16

	var replay_protect : UInt16

	var reserved : UInt16

struct anonomous_record_1537(Copyable & Movable):
	var mtu : UInt16

	var sectag_off : UInt8

	var protect_frames : UInt16

	var sectag_insert_mode : UInt16

	var icv_include_da_sa : UInt16

	var ctrl_port_enable : UInt16

	var sectag_version : UInt16

	var end_station : UInt16

	var send_sci : UInt16

	var scb : UInt16

	var encrypt : UInt16

	var reserved : UInt16

alias anonomous_record_1539 = C_Union[anonomous_record_1537, anonomous_record_1538]

struct rte_security_macsec_xform(Copyable & Movable):

	var dir : rte_security_macsec_direction

	var alg : rte_security_macsec_alg

	var cipher_off : UInt8

	var sci : ffi.c_ulong

	var sc_id : UInt16

	var union_placeholder_1 : anonomous_record_1539



struct rte_security_pdcp_domain(Copyable & Movable):

	alias RTE_SECURITY_PDCP_MODE_CONTROL = 0

	alias RTE_SECURITY_PDCP_MODE_DATA = 1

	alias RTE_SECURITY_PDCP_MODE_SHORT_MAC = 2

struct rte_security_pdcp_direction(Copyable & Movable):

	alias RTE_SECURITY_PDCP_UPLINK = 0

	alias RTE_SECURITY_PDCP_DOWNLINK = 1

struct rte_security_pdcp_sn_size(Copyable & Movable):

	alias RTE_SECURITY_PDCP_SN_SIZE_5 = 5

	alias RTE_SECURITY_PDCP_SN_SIZE_7 = 7

	alias RTE_SECURITY_PDCP_SN_SIZE_12 = 12

	alias RTE_SECURITY_PDCP_SN_SIZE_15 = 15

	alias RTE_SECURITY_PDCP_SN_SIZE_18 = 18

struct rte_security_pdcp_xform(Copyable & Movable):

	var bearer : Int8

	var en_ordering : UInt8

	var remove_duplicates : UInt8

	var domain : rte_security_pdcp_domain

	var pkt_dir : rte_security_pdcp_direction

	var sn_size : rte_security_pdcp_sn_size

	var hfn : UInt32

	var hfn_threshold : UInt32

	var hfn_ovrd : UInt8

	var sdap_enabled : UInt8

	var reserved : UInt16

struct rte_security_docsis_direction(Copyable & Movable):

	alias RTE_SECURITY_DOCSIS_UPLINK = 0

	alias RTE_SECURITY_DOCSIS_DOWNLINK = 1

struct rte_security_docsis_xform(Copyable & Movable):

	var direction : rte_security_docsis_direction

struct rte_security_tls_version(Copyable & Movable):

	alias RTE_SECURITY_VERSION_TLS_1_2 = 0

	alias RTE_SECURITY_VERSION_TLS_1_3 = 1

	alias RTE_SECURITY_VERSION_DTLS_1_2 = 2

struct rte_security_tls_sess_type(Copyable & Movable):

	alias RTE_SECURITY_TLS_SESS_TYPE_READ = 0

	alias RTE_SECURITY_TLS_SESS_TYPE_WRITE = 1

struct rte_security_tls_record_sess_options(Copyable & Movable):

	var iv_gen_disable : UInt32

	var extra_padding_enable : UInt32

struct rte_security_tls_record_lifetime(Copyable & Movable):

	var packets_soft_limit : ffi.c_ulong

	var packets_hard_limit : ffi.c_ulong

struct anonomous_record_1542(Copyable & Movable):

	var epoch : UInt16

	var seq_no : ffi.c_ulong

	var imp_nonce : InlineArray[UInt8, 4]

	var ar_win_sz : UInt32

struct anonomous_record_1541(Copyable & Movable):

	var seq_no : ffi.c_ulong

	var imp_nonce : InlineArray[UInt8, 12]

	var min_payload_len : UInt32

struct anonomous_record_1540(Copyable & Movable):

	var seq_no : ffi.c_ulong

	var imp_nonce : InlineArray[UInt8, 4]

alias anonomous_record_1543 = C_Union[anonomous_record_1540, anonomous_record_1541, anonomous_record_1542]

struct rte_security_tls_record_xform(Copyable & Movable):

	var ver : rte_security_tls_version

	var type : rte_security_tls_sess_type

	var options : rte_security_tls_record_sess_options

	var life : rte_security_tls_record_lifetime

	var union_placeholder_1 : anonomous_record_1543




struct rte_security_session_action_type(Copyable & Movable):

	alias RTE_SECURITY_ACTION_TYPE_NONE = 0

	alias RTE_SECURITY_ACTION_TYPE_INLINE_CRYPTO = 1

	alias RTE_SECURITY_ACTION_TYPE_INLINE_PROTOCOL = 2

	alias RTE_SECURITY_ACTION_TYPE_LOOKASIDE_PROTOCOL = 3

	alias RTE_SECURITY_ACTION_TYPE_CPU_CRYPTO = 4

struct rte_security_session_protocol(Copyable & Movable):

	alias RTE_SECURITY_PROTOCOL_IPSEC = 1

	alias RTE_SECURITY_PROTOCOL_MACSEC = 2

	alias RTE_SECURITY_PROTOCOL_PDCP = 3

	alias RTE_SECURITY_PROTOCOL_DOCSIS = 4

	alias RTE_SECURITY_PROTOCOL_TLS_RECORD = 5

alias anonomous_record_1544 = C_Union[rte_security_ipsec_xform, rte_security_macsec_xform, rte_security_pdcp_xform, rte_security_docsis_xform, rte_security_tls_record_xform]

struct rte_security_session_conf(Copyable & Movable):

	var action_type : rte_security_session_action_type

	var protocol : rte_security_session_protocol

	var union_placeholder_1 : anonomous_record_1544






	var crypto_xform : UnsafePointer[rte_crypto_sym_xform]

	var userdata : OpaquePointer

alias rte_security_session_create = fn (OpaquePointer, UnsafePointer[rte_security_session_conf], UnsafePointer[rte_mempool]) -> OpaquePointer
alias rte_security_session_update = fn (OpaquePointer, OpaquePointer, UnsafePointer[rte_security_session_conf]) -> Int32
alias rte_security_session_get_size = fn (OpaquePointer) -> UInt32
alias rte_security_session_destroy = fn (OpaquePointer, OpaquePointer) -> Int32
alias rte_security_macsec_sc_create = fn (OpaquePointer, UnsafePointer[rte_security_macsec_sc]) -> Int32
alias rte_security_macsec_sc_destroy = fn (OpaquePointer, UInt16, rte_security_macsec_direction) -> Int32
alias rte_security_macsec_sa_create = fn (OpaquePointer, UnsafePointer[rte_security_macsec_sa]) -> Int32
alias rte_security_macsec_sa_destroy = fn (OpaquePointer, UInt16, rte_security_macsec_direction) -> Int32
alias rte_security_dynfield_t = uint64_t
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Device-specific metadata field type 

alias rte_security_dynfield_offset = Int32
alias rte_security_oop_dynfield_t = UnsafePointer[rte_mbuf
]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Out-of-Place(OOP) processing field type 

alias rte_security_oop_dynfield_offset = Int32
alias rte_security_dynfield = fn (UnsafePointer[rte_mbuf]) -> UnsafePointer[rte_security_dynfield_t]
alias rte_security_oop_dynfield = fn (UnsafePointer[rte_mbuf]) -> UnsafePointer[rte_security_oop_dynfield_t]
alias rte_security_dynfield_is_registered = fn () -> Bool
alias rte_security_ctx_flags_get = fn (OpaquePointer) -> UInt32
alias rte_security_ctx_flags_set = fn (OpaquePointer, UInt32) -> NoneType
alias rte_security_session_opaque_data_get = fn (OpaquePointer) -> ffi.c_ulong
alias rte_security_session_opaque_data_set = fn (OpaquePointer, ffi.c_ulong) -> NoneType
alias rte_security_session_fast_mdata_get = fn (OpaquePointer) -> ffi.c_ulong
alias rte_security_session_fast_mdata_set = fn (OpaquePointer, ffi.c_ulong) -> NoneType
alias __rte_security_set_pkt_metadata = fn (OpaquePointer, OpaquePointer, UnsafePointer[rte_mbuf], OpaquePointer) -> Int32
alias rte_security_set_pkt_metadata = fn (OpaquePointer, OpaquePointer, UnsafePointer[rte_mbuf], OpaquePointer) -> Int32
alias __rte_security_attach_session = fn (UnsafePointer[rte_crypto_sym_op], OpaquePointer) -> Int32
alias rte_security_attach_session = fn (UnsafePointer[rte_crypto_op], OpaquePointer) -> Int32
struct rte_security_macsec_secy_stats(Copyable & Movable):
	var ctl_pkt_bcast_cnt : ffi.c_ulong

	var ctl_pkt_mcast_cnt : ffi.c_ulong

	var ctl_pkt_ucast_cnt : ffi.c_ulong

	var ctl_octet_cnt : ffi.c_ulong

	var unctl_pkt_bcast_cnt : ffi.c_ulong

	var unctl_pkt_mcast_cnt : ffi.c_ulong

	var unctl_pkt_ucast_cnt : ffi.c_ulong

	var unctl_octet_cnt : ffi.c_ulong

	var octet_decrypted_cnt : ffi.c_ulong

	var octet_validated_cnt : ffi.c_ulong

	var pkt_port_disabled_cnt : ffi.c_ulong

	var pkt_badtag_cnt : ffi.c_ulong

	var pkt_nosa_cnt : ffi.c_ulong

	var pkt_nosaerror_cnt : ffi.c_ulong

	var pkt_tagged_ctl_cnt : ffi.c_ulong

	var pkt_untaged_cnt : ffi.c_ulong

	var pkt_ctl_cnt : ffi.c_ulong

	var pkt_notag_cnt : ffi.c_ulong

	var octet_encrypted_cnt : ffi.c_ulong

	var octet_protected_cnt : ffi.c_ulong

	var pkt_noactivesa_cnt : ffi.c_ulong

	var pkt_toolong_cnt : ffi.c_ulong

	var pkt_untagged_cnt : ffi.c_ulong

struct rte_security_macsec_sc_stats(Copyable & Movable):
	var hit_cnt : ffi.c_ulong

	var pkt_invalid_cnt : ffi.c_ulong

	var pkt_late_cnt : ffi.c_ulong

	var pkt_notvalid_cnt : ffi.c_ulong

	var pkt_unchecked_cnt : ffi.c_ulong

	var pkt_delay_cnt : ffi.c_ulong

	var pkt_ok_cnt : ffi.c_ulong

	var octet_decrypt_cnt : ffi.c_ulong

	var octet_validate_cnt : ffi.c_ulong

	var pkt_encrypt_cnt : ffi.c_ulong

	var pkt_protected_cnt : ffi.c_ulong

	var octet_encrypt_cnt : ffi.c_ulong

	var octet_protected_cnt : ffi.c_ulong

struct rte_security_macsec_sa_stats(Copyable & Movable):
	var pkt_invalid_cnt : ffi.c_ulong

	var pkt_nosaerror_cnt : ffi.c_ulong

	var pkt_notvalid_cnt : ffi.c_ulong

	var pkt_ok_cnt : ffi.c_ulong

	var pkt_nosa_cnt : ffi.c_ulong

	var pkt_encrypt_cnt : ffi.c_ulong

	var pkt_protected_cnt : ffi.c_ulong

struct rte_security_ipsec_stats(Copyable & Movable):
	var ipackets : ffi.c_ulong

	var opackets : ffi.c_ulong

	var ibytes : ffi.c_ulong

	var obytes : ffi.c_ulong

	var ierrors : ffi.c_ulong

	var oerrors : ffi.c_ulong

	var reserved1 : ffi.c_ulong

	var reserved2 : ffi.c_ulong

struct rte_security_pdcp_stats(Copyable & Movable):
	var reserved : ffi.c_ulong

struct rte_security_docsis_stats(Copyable & Movable):
	var reserved : ffi.c_ulong

alias anonomous_record_1545 = C_Union[rte_security_macsec_secy_stats, rte_security_ipsec_stats, rte_security_pdcp_stats, rte_security_docsis_stats]

struct rte_security_stats(Copyable & Movable):
	var protocol : rte_security_session_protocol

	var union_placeholder_1 : anonomous_record_1545





alias rte_security_session_stats_get = fn (OpaquePointer, OpaquePointer, UnsafePointer[rte_security_stats]) -> Int32
alias rte_security_macsec_sa_stats_get = fn (OpaquePointer, UInt16, rte_security_macsec_direction, UnsafePointer[rte_security_macsec_sa_stats]) -> Int32
alias rte_security_macsec_sc_stats_get = fn (OpaquePointer, UInt16, rte_security_macsec_direction, UnsafePointer[rte_security_macsec_sc_stats]) -> Int32
struct anonomous_record_1550(Copyable & Movable):
	var ver : rte_security_tls_version

	var type : rte_security_tls_sess_type

	var ar_win_size : UInt32

struct anonomous_record_1549(Copyable & Movable):
	var direction : rte_security_docsis_direction

struct anonomous_record_1548(Copyable & Movable):
	var domain : rte_security_pdcp_domain

	var capa_flags : UInt32

struct anonomous_record_1547(Copyable & Movable):
	var mtu : UInt16

	var alg : rte_security_macsec_alg

	var max_nb_sc : UInt16

	var max_nb_sa : UInt16

	var max_nb_sess : UInt16

	var replay_win_sz : UInt32

	var relative_sectag_insert : UInt16

	var fixed_sectag_insert : UInt16

	var icv_include_da_sa : UInt16

	var ctrl_port_enable : UInt16

	var preserve_sectag : UInt16

	var preserve_icv : UInt16

	var validate_frames : UInt16

	var re_key : UInt16

	var anti_replay : UInt16

	var reserved : UInt16

struct anonomous_record_1546(Copyable & Movable):
	var proto : rte_security_ipsec_sa_protocol

	var mode : rte_security_ipsec_sa_mode

	var direction : rte_security_ipsec_sa_direction

	var options : rte_security_ipsec_sa_options

	var replay_win_sz_max : UInt32

struct rte_cryptodev_capabilities(Copyable & Movable):
	pass
alias anonomous_record_1551 = C_Union[anonomous_record_1546, anonomous_record_1547, anonomous_record_1548, anonomous_record_1549, anonomous_record_1550]

struct rte_security_capability(Copyable & Movable):

	var action : rte_security_session_action_type

	var protocol : rte_security_session_protocol

	var union_placeholder_1 : anonomous_record_1551






	var crypto_capabilities : rte_cryptodev_capabilities

	var ol_flags : UInt32

struct anonomous_record_1556(Copyable & Movable):
	var ver : rte_security_tls_version

	var type : rte_security_tls_sess_type

struct anonomous_record_1555(Copyable & Movable):
	var alg : rte_security_macsec_alg

struct anonomous_record_1554(Copyable & Movable):
	var direction : rte_security_docsis_direction

struct anonomous_record_1553(Copyable & Movable):
	var domain : rte_security_pdcp_domain

	var capa_flags : UInt32

struct anonomous_record_1552(Copyable & Movable):
	var proto : rte_security_ipsec_sa_protocol

	var mode : rte_security_ipsec_sa_mode

	var direction : rte_security_ipsec_sa_direction

alias anonomous_record_1557 = C_Union[anonomous_record_1552, anonomous_record_1553, anonomous_record_1554, anonomous_record_1555, anonomous_record_1556]

struct rte_security_capability_idx(Copyable & Movable):

	var action : rte_security_session_action_type

	var protocol : rte_security_session_protocol

	var union_placeholder_1 : anonomous_record_1557






alias rte_security_capabilities_get = fn (OpaquePointer) -> UnsafePointer[rte_security_capability]
alias rte_security_capability_get = fn (OpaquePointer, UnsafePointer[rte_security_capability_idx]) -> UnsafePointer[rte_security_capability]
alias rte_security_rx_inject_configure = fn (OpaquePointer, UInt16, Bool) -> Int32
alias rte_security_inb_pkt_rx_inject = fn (OpaquePointer, UnsafePointer[UnsafePointer[rte_mbuf]], UnsafePointer[OpaquePointer], UInt16) -> UInt16
struct rte_pdcp_entity(Copyable & Movable):

	pass
alias rte_pdcp_pre_p_t = fn(read UnsafePointer[rte_pdcp_entity], UnsafePointer[UnsafePointer[rte_mbuf]], UnsafePointer[UnsafePointer[rte_crypto_op]], UInt16, UnsafePointer[UInt16]) -> UInt16
alias rte_pdcp_post_p_t = fn(read UnsafePointer[rte_pdcp_entity], UnsafePointer[UnsafePointer[rte_mbuf]], UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, UnsafePointer[UInt16]) -> UInt16
alias rte_pdcp_t_reordering_start_cb_t = fn(OpaquePointer, OpaquePointer) -> NoneType
alias rte_pdcp_t_reordering_stop_cb_t = fn(OpaquePointer, OpaquePointer) -> NoneType
struct rte_pdcp_t_reordering(Copyable & Movable):

	var timer : OpaquePointer

	var args : OpaquePointer

	var start : fn(OpaquePointer, OpaquePointer) -> NoneType

	var stop : fn(OpaquePointer, OpaquePointer) -> NoneType

struct rte_pdcp_entity_conf(Copyable & Movable):

	var pdcp_xfrm : rte_security_pdcp_xform

	var crypto_xfrm : UnsafePointer[rte_crypto_sym_xform]

	var sess_mpool : UnsafePointer[rte_mempool]

	var cop_pool : UnsafePointer[rte_mempool]

	var ctrl_pdu_pool : UnsafePointer[rte_mempool]

	var sn : UInt32

	var is_slrb : Bool

	var en_sec_offload : Bool

	var dev_id : UInt8

	var reverse_iv_direction : Bool

	var status_report_required : Bool

	var out_of_order_delivery : Bool

	var t_reordering : rte_pdcp_t_reordering

alias rte_pdcp_entity_establish = fn (UnsafePointer[rte_pdcp_entity_conf]) -> UnsafePointer[rte_pdcp_entity]
alias rte_pdcp_entity_release = fn (UnsafePointer[rte_pdcp_entity], UnsafePointer[UnsafePointer[rte_mbuf]]) -> Int32
alias rte_pdcp_entity_suspend = fn (UnsafePointer[rte_pdcp_entity], UnsafePointer[UnsafePointer[rte_mbuf]]) -> Int32
alias rte_pdcp_control_pdu_create = fn (UnsafePointer[rte_pdcp_entity], rte_pdcp_ctrl_pdu_type) -> UnsafePointer[rte_mbuf]
alias rte_pdcp_pkt_pre_process = fn (UnsafePointer[rte_pdcp_entity], UnsafePointer[UnsafePointer[rte_mbuf]], UnsafePointer[UnsafePointer[rte_crypto_op]], UInt16, UnsafePointer[UInt16]) -> UInt16
alias rte_pdcp_pkt_post_process = fn (UnsafePointer[rte_pdcp_entity], UnsafePointer[UnsafePointer[rte_mbuf]], UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, UnsafePointer[UInt16]) -> UInt16
alias rte_pdcp_t_reordering_expiry_handle = fn (UnsafePointer[rte_pdcp_entity], UnsafePointer[UnsafePointer[rte_mbuf]]) -> UInt16
alias arg_handler_t = fn(read UnsafePointer[Int8], read UnsafePointer[Int8], OpaquePointer) -> Int32
struct rte_kvargs_pair(Copyable & Movable):

	var key : UnsafePointer[Int8]

	var value : UnsafePointer[Int8]

struct rte_kvargs(Copyable & Movable):

	var str : UnsafePointer[Int8]

	var count : UInt32

	var pairs : InlineArray[rte_kvargs_pair, 32]

alias rte_kvargs_parse = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8], mut=False]) -> UnsafePointer[rte_kvargs]
alias rte_kvargs_parse_delim = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8], mut=False], UnsafePointer[Int8]) -> UnsafePointer[rte_kvargs]
alias rte_kvargs_free = fn (UnsafePointer[rte_kvargs]) -> NoneType
alias rte_kvargs_get = fn (UnsafePointer[rte_kvargs], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_kvargs_get_with_value = fn (UnsafePointer[rte_kvargs], UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_kvargs_process = fn (UnsafePointer[rte_kvargs], UnsafePointer[Int8], arg_handler_t, OpaquePointer) -> Int32
alias rte_kvargs_process_opt = fn (UnsafePointer[rte_kvargs], UnsafePointer[Int8], arg_handler_t, OpaquePointer) -> Int32
alias rte_kvargs_count = fn (UnsafePointer[rte_kvargs], UnsafePointer[Int8]) -> UInt32
alias rte_rcu_log_type = Int32
struct rte_rcu_qsbr_cnt(Copyable & Movable):
# Alignment: 128 


	var cnt : ffi.c_ulong

	var lock_cnt : UInt32

struct rte_rcu_qsbr(Copyable & Movable):
# Alignment: 128 


	var token : ffi.c_ulong

	var acked_token : ffi.c_ulong

	var num_elems : UInt32

	var num_threads : UInt32

	var max_threads : UInt32

	var qsbr_cnt : UnsafePointer[rte_rcu_qsbr_cnt] # Failed to parse array size

alias rte_rcu_qsbr_free_resource_t = fn(OpaquePointer, OpaquePointer, UInt32) -> NoneType
struct rte_rcu_qsbr_dq_parameters(Copyable & Movable):

	var name : UnsafePointer[Int8]

	var flags : UInt32

	var size : UInt32

	var esize : UInt32

	var trigger_reclaim_limit : UInt32

	var max_reclaim_size : UInt32

	var free_fn : fn(OpaquePointer, OpaquePointer, UInt32) -> NoneType

	var p : OpaquePointer

	var v : UnsafePointer[rte_rcu_qsbr]

struct rte_rcu_qsbr_dq(Copyable & Movable):

	pass
alias rte_rcu_qsbr_get_memsize = fn (UInt32) -> size_t
alias rte_rcu_qsbr_init = fn (UnsafePointer[rte_rcu_qsbr], UInt32) -> Int32
alias rte_rcu_qsbr_thread_register = fn (UnsafePointer[rte_rcu_qsbr], UInt32) -> Int32
alias rte_rcu_qsbr_thread_unregister = fn (UnsafePointer[rte_rcu_qsbr], UInt32) -> Int32
alias rte_rcu_qsbr_thread_online = fn (UnsafePointer[rte_rcu_qsbr], UInt32) -> NoneType
alias rte_rcu_qsbr_thread_offline = fn (UnsafePointer[rte_rcu_qsbr], UInt32) -> NoneType
alias rte_rcu_qsbr_lock = fn (UnsafePointer[rte_rcu_qsbr], # # Node: PlaceHolder()
# {"id":"0x36138b48","kind":"UnusedAttr","range":{"begin":{"expansionLoc":{"col":4,"file":"dpdk/lib/rcu/rte_rcu_qsbr.h","includedFrom":{"file":"dpdk/lib/cryptodev/rte_cryptodev.h"},"line":387,"offset":12804,"tokLen":12},"spellingLoc":{"col":37,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/pdcp/rte_pdcp.h"},"line":248,"offset":7106,"tokLen":10}},"end":{"expansionLoc":{"col":4,"file":"dpdk/lib/rcu/rte_rcu_qsbr.h","includedFrom":{"file":"dpdk/lib/cryptodev/rte_cryptodev.h"},"line":387,"offset":12804,"tokLen":12},"spellingLoc":{"col":37,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/pdcp/rte_pdcp.h"},"line":248,"offset":7106,"tokLen":10}}}}
Int32) -> NoneType
alias rte_rcu_qsbr_unlock = fn (UnsafePointer[rte_rcu_qsbr], # # Node: PlaceHolder()
# {"id":"0x361391c8","kind":"UnusedAttr","range":{"begin":{"expansionLoc":{"col":4,"file":"dpdk/lib/rcu/rte_rcu_qsbr.h","includedFrom":{"file":"dpdk/lib/cryptodev/rte_cryptodev.h"},"line":420,"offset":13729,"tokLen":12},"spellingLoc":{"col":37,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/pdcp/rte_pdcp.h"},"line":248,"offset":7106,"tokLen":10}},"end":{"expansionLoc":{"col":4,"file":"dpdk/lib/rcu/rte_rcu_qsbr.h","includedFrom":{"file":"dpdk/lib/cryptodev/rte_cryptodev.h"},"line":420,"offset":13729,"tokLen":12},"spellingLoc":{"col":37,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/pdcp/rte_pdcp.h"},"line":248,"offset":7106,"tokLen":10}}}}
Int32) -> NoneType
alias rte_rcu_qsbr_start = fn (UnsafePointer[rte_rcu_qsbr]) -> ffi.c_ulong
alias rte_rcu_qsbr_quiescent = fn (UnsafePointer[rte_rcu_qsbr], UInt32) -> NoneType
alias __rte_rcu_qsbr_check_selective = fn (UnsafePointer[rte_rcu_qsbr], ffi.c_ulong, Bool) -> Int32
alias __rte_rcu_qsbr_check_all = fn (UnsafePointer[rte_rcu_qsbr], ffi.c_ulong, Bool) -> Int32
alias rte_rcu_qsbr_check = fn (UnsafePointer[rte_rcu_qsbr], ffi.c_ulong, Bool) -> Int32
alias rte_rcu_qsbr_synchronize = fn (UnsafePointer[rte_rcu_qsbr], UInt32) -> NoneType
alias rte_rcu_qsbr_dump = fn (UnsafePointer[FILE], UnsafePointer[rte_rcu_qsbr]) -> Int32
alias rte_rcu_qsbr_dq_create = fn (UnsafePointer[rte_rcu_qsbr_dq_parameters]) -> UnsafePointer[rte_rcu_qsbr_dq]
alias rte_rcu_qsbr_dq_enqueue = fn (UnsafePointer[rte_rcu_qsbr_dq], OpaquePointer) -> Int32
alias rte_rcu_qsbr_dq_reclaim = fn (UnsafePointer[rte_rcu_qsbr_dq], UInt32, UnsafePointer[UInt32], UnsafePointer[UInt32], UnsafePointer[UInt32]) -> Int32
alias rte_rcu_qsbr_dq_delete = fn (UnsafePointer[rte_rcu_qsbr_dq]) -> Int32
alias __rte_cryptodev_trace_enqueue_burst = rte_trace_point_t
alias rte_cryptodev_trace_enqueue_burst = fn (UInt8, UInt16, UnsafePointer[OpaquePointer], UInt16) -> NoneType
alias __rte_cryptodev_trace_dequeue_burst = rte_trace_point_t
alias rte_cryptodev_trace_dequeue_burst = fn (UInt8, UInt16, UnsafePointer[OpaquePointer], UInt16) -> NoneType
alias __rte_cryptodev_trace_qp_depth_used = rte_trace_point_t
alias rte_cryptodev_trace_qp_depth_used = fn (UInt8, UInt16) -> NoneType
alias rte_cryptodev_logtype = Int32
struct rte_crypto_param_range(Copyable & Movable):

	var min : UInt16

	var max : UInt16

	var increment : UInt16

struct anonomous_record_1560(Copyable & Movable):
	var algo : rte_crypto_aead_algorithm

	var block_size : UInt16

	var key_size : rte_crypto_param_range

	var digest_size : rte_crypto_param_range

	var aad_size : rte_crypto_param_range

	var iv_size : rte_crypto_param_range

struct anonomous_record_1559(Copyable & Movable):
	var algo : rte_crypto_cipher_algorithm

	var block_size : UInt16

	var key_size : rte_crypto_param_range

	var iv_size : rte_crypto_param_range

	var dataunit_set : UInt32

struct anonomous_record_1558(Copyable & Movable):
	var algo : rte_crypto_auth_algorithm

	var block_size : UInt16

	var key_size : rte_crypto_param_range

	var digest_size : rte_crypto_param_range

	var aad_size : rte_crypto_param_range

	var iv_size : rte_crypto_param_range

alias anonomous_record_1561 = C_Union[anonomous_record_1558, anonomous_record_1559, anonomous_record_1560]

struct rte_cryptodev_symmetric_capability(Copyable & Movable):

	var xform_type : rte_crypto_sym_xform_type

	var union_placeholder_1 : anonomous_record_1561




alias anonomous_record_1562 = C_Union[rte_crypto_param_range, UInt8, InlineArray[ffi.c_ulong, 4]]

struct rte_cryptodev_asymmetric_xform_capability(Copyable & Movable):

	var xform_type : rte_crypto_asym_xform_type

	var op_types : UInt32

	var union_placeholder_1 : anonomous_record_1562




	var hash_algos : ffi.c_ulong

struct rte_cryptodev_asymmetric_capability(Copyable & Movable):

	var xform_capa : rte_cryptodev_asymmetric_xform_capability

alias anonomous_record_1563 = C_Union[rte_cryptodev_symmetric_capability, rte_cryptodev_asymmetric_capability]

alias anonomous_record_1564 = C_Union[rte_crypto_cipher_algorithm, rte_crypto_auth_algorithm, rte_crypto_aead_algorithm]

struct rte_cryptodev_sym_capability_idx(Copyable & Movable):

	var type : rte_crypto_sym_xform_type

	var algo : anonomous_record_1564

struct rte_cryptodev_asym_capability_idx(Copyable & Movable):

	var type : rte_crypto_asym_xform_type

alias rte_cryptodev_sym_capability_get = fn (UInt8, UnsafePointer[rte_cryptodev_sym_capability_idx]) -> UnsafePointer[rte_cryptodev_symmetric_capability]
alias rte_cryptodev_asym_capability_get = fn (UInt8, UnsafePointer[rte_cryptodev_asym_capability_idx]) -> UnsafePointer[rte_cryptodev_asymmetric_xform_capability]
alias rte_cryptodev_sym_capability_check_cipher = fn (UnsafePointer[rte_cryptodev_symmetric_capability], UInt16, UInt16) -> Int32
alias rte_cryptodev_sym_capability_check_auth = fn (UnsafePointer[rte_cryptodev_symmetric_capability], UInt16, UInt16, UInt16) -> Int32
alias rte_cryptodev_sym_capability_check_aead = fn (UnsafePointer[rte_cryptodev_symmetric_capability], UInt16, UInt16, UInt16, UInt16) -> Int32
alias rte_cryptodev_asym_xform_capability_check_optype = fn (UnsafePointer[rte_cryptodev_asymmetric_xform_capability], rte_crypto_asym_op_type) -> Int32
alias rte_cryptodev_asym_xform_capability_check_modlen = fn (UnsafePointer[rte_cryptodev_asymmetric_xform_capability], UInt16) -> Int32
alias rte_cryptodev_asym_xform_capability_check_hash = fn (UnsafePointer[rte_cryptodev_asymmetric_xform_capability], rte_crypto_auth_algorithm) -> Bool
alias rte_cryptodev_asym_xform_capability_check_opcap = fn (UnsafePointer[rte_cryptodev_asymmetric_xform_capability], rte_crypto_asym_op_type, UInt8) -> Int32
alias rte_cryptodev_get_cipher_algo_enum = fn (UnsafePointer[rte_crypto_cipher_algorithm], UnsafePointer[Int8]) -> Int32
alias rte_cryptodev_get_auth_algo_enum = fn (UnsafePointer[rte_crypto_auth_algorithm], UnsafePointer[Int8]) -> Int32
alias rte_cryptodev_get_aead_algo_enum = fn (UnsafePointer[rte_crypto_aead_algorithm], UnsafePointer[Int8]) -> Int32
alias rte_cryptodev_asym_get_xform_enum = fn (UnsafePointer[rte_crypto_asym_xform_type], UnsafePointer[Int8]) -> Int32
alias rte_cryptodev_get_cipher_algo_string = fn (rte_crypto_cipher_algorithm) -> UnsafePointer[Int8]
alias rte_cryptodev_get_auth_algo_string = fn (rte_crypto_auth_algorithm) -> UnsafePointer[Int8]
alias rte_cryptodev_get_aead_algo_string = fn (rte_crypto_aead_algorithm) -> UnsafePointer[Int8]
alias rte_cryptodev_asym_get_xform_string = fn (rte_crypto_asym_xform_type) -> UnsafePointer[Int8]
alias rte_cryptodev_get_feature_name = fn (ffi.c_ulong) -> UnsafePointer[Int8]
struct anonomous_record_1565(Copyable & Movable):
	var max_nb_sessions : UInt32

struct rte_device(Copyable & Movable):
	pass
struct rte_cryptodev_info(Copyable & Movable):

	var driver_name : UnsafePointer[Int8]

	var driver_id : UInt8

	var device : rte_device

	var feature_flags : ffi.c_ulong

	var capabilities : UnsafePointer[rte_cryptodev_capabilities]

	var max_nb_queue_pairs : UInt32

	var min_mbuf_headroom_req : UInt16

	var min_mbuf_tailroom_req : UInt16

	var sym : anonomous_record_1565

struct rte_cryptodev_event_type(Copyable & Movable):

	alias RTE_CRYPTODEV_EVENT_UNKNOWN = 0

	alias RTE_CRYPTODEV_EVENT_ERROR = 1

	alias RTE_CRYPTODEV_EVENT_MAX = 2

struct rte_cryptodev_qp_conf(Copyable & Movable):

	var nb_descriptors : UInt32

	var mp_session : UnsafePointer[rte_mempool]

	var priority : UInt8

alias rte_cryptodev_callback_fn = fn(UInt16, UInt16, UnsafePointer[UnsafePointer[rte_crypto_op]], UInt16, OpaquePointer) -> UInt16
alias rte_cryptodev_cb_fn = fn(UInt8, rte_cryptodev_event_type, OpaquePointer) -> NoneType
struct rte_cryptodev_stats(Copyable & Movable):

	var enqueued_count : ffi.c_ulong

	var dequeued_count : ffi.c_ulong

	var enqueue_err_count : ffi.c_ulong

	var dequeue_err_count : ffi.c_ulong

alias rte_cryptodev_get_dev_id = fn (UnsafePointer[Int8]) -> Int32
alias rte_cryptodev_name_get = fn (UInt8) -> UnsafePointer[Int8]
alias rte_cryptodev_count = fn () -> UInt8
alias rte_cryptodev_device_count_by_driver = fn (UInt8) -> UInt8
alias rte_cryptodev_devices_get = fn (UnsafePointer[Int8], UnsafePointer[UInt8], UInt8) -> UInt8
alias rte_cryptodev_socket_id = fn (UInt8) -> Int32
struct rte_cryptodev_config(Copyable & Movable):

	var socket_id : Int32

	var nb_queue_pairs : UInt16

	var ff_disable : ffi.c_ulong

alias rte_cryptodev_configure = fn (UInt8, UnsafePointer[rte_cryptodev_config]) -> Int32
alias rte_cryptodev_start = fn (UInt8) -> Int32
alias rte_cryptodev_stop = fn (UInt8) -> NoneType
alias rte_cryptodev_close = fn (UInt8) -> Int32
alias rte_cryptodev_queue_pair_setup = fn (UInt8, UInt16, UnsafePointer[rte_cryptodev_qp_conf], Int32) -> Int32
alias rte_cryptodev_queue_pair_reset = fn (UInt8, UInt16, UnsafePointer[rte_cryptodev_qp_conf], Int32) -> Int32
alias rte_cryptodev_get_qp_status = fn (UInt8, UInt16) -> Int32
alias rte_cryptodev_queue_pair_count = fn (UInt8) -> UInt16
alias rte_cryptodev_stats_get = fn (UInt8, UnsafePointer[rte_cryptodev_stats]) -> Int32
alias rte_cryptodev_stats_reset = fn (UInt8) -> NoneType
alias rte_cryptodev_info_get = fn (UInt8, UnsafePointer[rte_cryptodev_info]) -> NoneType
alias rte_cryptodev_callback_register = fn (UInt8, rte_cryptodev_event_type, rte_cryptodev_cb_fn, OpaquePointer) -> Int32
alias rte_cryptodev_callback_unregister = fn (UInt8, rte_cryptodev_event_type, rte_cryptodev_cb_fn, OpaquePointer) -> Int32
alias rte_cryptodev_queue_pair_event_error_query = fn (UInt8, UInt16) -> Int32
struct rte_cryptodev_callback(Copyable & Movable):
	pass
struct rte_cryptodev_cb_list(Copyable & Movable):

	var tqh_first : UnsafePointer[rte_cryptodev_callback]

	var tqh_last : UnsafePointer[UnsafePointer[rte_cryptodev_callback]]

struct rte_cryptodev_cb(Copyable & Movable):

	var next : UnsafePointer[rte_cryptodev_cb]

	var fn_ : fn(UInt16, UInt16, UnsafePointer[UnsafePointer[rte_crypto_op]], UInt16, OpaquePointer) -> UInt16

	var arg : OpaquePointer

struct rte_cryptodev_cb_rcu(Copyable & Movable):
# #  Structure used to hold information about the RCU for a queue pair.#  # 
	var next : UnsafePointer[rte_cryptodev_cb]

	var qsbr : UnsafePointer[rte_rcu_qsbr]

alias rte_cryptodev_get_sec_ctx = fn (UInt8) -> OpaquePointer
alias rte_cryptodev_sym_session_pool_create = fn (UnsafePointer[Int8], UInt32, UInt32, UInt32, UInt16, Int32) -> UnsafePointer[rte_mempool]
alias rte_cryptodev_asym_session_pool_create = fn (UnsafePointer[Int8], UInt32, UInt32, UInt16, Int32) -> UnsafePointer[rte_mempool]
alias rte_cryptodev_sym_session_create = fn (UInt8, UnsafePointer[rte_crypto_sym_xform], UnsafePointer[rte_mempool]) -> OpaquePointer
alias rte_cryptodev_asym_session_create = fn (UInt8, UnsafePointer[rte_crypto_asym_xform], UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer]) -> Int32
alias rte_cryptodev_sym_session_free = fn (UInt8, OpaquePointer) -> Int32
alias rte_cryptodev_asym_session_free = fn (UInt8, OpaquePointer) -> Int32
alias rte_cryptodev_asym_get_header_session_size = fn () -> UInt32
alias rte_cryptodev_sym_get_private_session_size = fn (UInt8) -> UInt32
alias rte_cryptodev_asym_get_private_session_size = fn (UInt8) -> UInt32
alias rte_cryptodev_is_valid_dev = fn (UInt8) -> UInt32
alias rte_cryptodev_driver_id_get = fn (UnsafePointer[Int8]) -> Int32
alias rte_cryptodev_driver_name_get = fn (UInt8) -> UnsafePointer[Int8]
alias rte_cryptodev_sym_session_set_user_data = fn (OpaquePointer, OpaquePointer, UInt16) -> Int32
alias rte_cryptodev_sym_session_opaque_data_get = fn (OpaquePointer) -> ffi.c_ulong
alias rte_cryptodev_sym_session_opaque_data_set = fn (OpaquePointer, ffi.c_ulong) -> NoneType
alias rte_cryptodev_sym_session_get_user_data = fn (OpaquePointer) -> OpaquePointer
alias rte_cryptodev_asym_session_set_user_data = fn (OpaquePointer, OpaquePointer, UInt16) -> Int32
alias rte_cryptodev_asym_session_get_user_data = fn (OpaquePointer) -> OpaquePointer
alias rte_cryptodev_sym_cpu_crypto_process = fn (UInt8, OpaquePointer, rte_crypto_sym_ofs, UnsafePointer[rte_crypto_sym_vec]) -> UInt32
alias rte_cryptodev_get_raw_dp_ctx_size = fn (UInt8) -> Int32
alias rte_cryptodev_session_event_mdata_set = fn (UInt8, OpaquePointer, rte_crypto_op_type, rte_crypto_op_sess_type, OpaquePointer, UInt16) -> Int32
struct rte_security_session(Copyable & Movable):
	pass
alias rte_cryptodev_session_ctx = C_Union[OpaquePointer, UnsafePointer[rte_crypto_sym_xform], rte_security_session]

alias cryptodev_sym_raw_enqueue_burst_t = fn(OpaquePointer, UnsafePointer[UInt8], UnsafePointer[rte_crypto_sym_vec], union rte_crypto_sym_ofs, UnsafePointer[OpaquePointer], UnsafePointer[Int32]) -> ffi.c_ulong
alias cryptodev_sym_raw_enqueue_t = fn(OpaquePointer, UnsafePointer[UInt8], UnsafePointer[rte_crypto_vec], UInt16, union rte_crypto_sym_ofs, UnsafePointer[rte_crypto_va_iova_ptr], UnsafePointer[rte_crypto_va_iova_ptr], UnsafePointer[rte_crypto_va_iova_ptr], OpaquePointer) -> Int32
alias cryptodev_sym_raw_operation_done_t = fn(OpaquePointer, UnsafePointer[UInt8], ffi.c_ulong) -> Int32
alias rte_cryptodev_raw_get_dequeue_count_t = fn(OpaquePointer) -> ffi.c_ulong
alias rte_cryptodev_raw_post_dequeue_t = fn(OpaquePointer, ffi.c_ulong, UInt8) -> NoneType
alias cryptodev_sym_raw_dequeue_burst_t = fn(OpaquePointer, UnsafePointer[UInt8], rte_cryptodev_raw_get_dequeue_count_t, ffi.c_ulong, rte_cryptodev_raw_post_dequeue_t, UnsafePointer[OpaquePointer], UInt8, UnsafePointer[ffi.c_ulong], UnsafePointer[Int32]) -> ffi.c_ulong
alias cryptodev_sym_raw_dequeue_t = fn(OpaquePointer, UnsafePointer[UInt8], UnsafePointer[Int32], UnsafePointer[rte_crypto_op_status]) -> OpaquePointer
struct rte_crypto_raw_dp_ctx(Copyable & Movable):

	var qp_data : OpaquePointer

	var enqueue : fn(OpaquePointer, UnsafePointer[UInt8], UnsafePointer[rte_crypto_vec], UInt16, union rte_crypto_sym_ofs, UnsafePointer[rte_crypto_va_iova_ptr], UnsafePointer[rte_crypto_va_iova_ptr], UnsafePointer[rte_crypto_va_iova_ptr], OpaquePointer) -> Int32

	var enqueue_burst : fn(OpaquePointer, UnsafePointer[UInt8], UnsafePointer[rte_crypto_sym_vec], union rte_crypto_sym_ofs, UnsafePointer[OpaquePointer], UnsafePointer[Int32]) -> ffi.c_ulong

	var enqueue_done : fn(OpaquePointer, UnsafePointer[UInt8], ffi.c_ulong) -> Int32

	var dequeue : fn(OpaquePointer, UnsafePointer[UInt8], UnsafePointer[Int32], UnsafePointer[rte_crypto_op_status]) -> OpaquePointer

	var dequeue_burst : fn(OpaquePointer, UnsafePointer[UInt8], rte_cryptodev_raw_get_dequeue_count_t, ffi.c_ulong, rte_cryptodev_raw_post_dequeue_t, UnsafePointer[OpaquePointer], UInt8, UnsafePointer[ffi.c_ulong], UnsafePointer[Int32]) -> ffi.c_ulong

	var dequeue_done : fn(OpaquePointer, UnsafePointer[UInt8], ffi.c_ulong) -> Int32

	var drv_ctx_data : UnsafePointer[UInt8] # Failed to parse array size

alias rte_cryptodev_configure_raw_dp_ctx = fn (UInt8, UInt16, UnsafePointer[rte_crypto_raw_dp_ctx], rte_crypto_op_sess_type, rte_cryptodev_session_ctx, UInt8) -> Int32
alias rte_cryptodev_raw_enqueue_burst = fn (UnsafePointer[rte_crypto_raw_dp_ctx], UnsafePointer[rte_crypto_sym_vec], rte_crypto_sym_ofs, UnsafePointer[OpaquePointer], UnsafePointer[Int32]) -> UInt32
alias rte_cryptodev_raw_enqueue = fn (UnsafePointer[rte_crypto_raw_dp_ctx], UnsafePointer[rte_crypto_vec], UInt16, rte_crypto_sym_ofs, UnsafePointer[rte_crypto_va_iova_ptr], UnsafePointer[rte_crypto_va_iova_ptr], UnsafePointer[rte_crypto_va_iova_ptr], OpaquePointer) -> Int32
alias rte_cryptodev_raw_enqueue_done = fn (UnsafePointer[rte_crypto_raw_dp_ctx], UInt32) -> Int32
alias rte_cryptodev_raw_dequeue_burst = fn (UnsafePointer[rte_crypto_raw_dp_ctx], rte_cryptodev_raw_get_dequeue_count_t, UInt32, rte_cryptodev_raw_post_dequeue_t, UnsafePointer[OpaquePointer], UInt8, UnsafePointer[UInt32], UnsafePointer[Int32]) -> UInt32
alias rte_cryptodev_raw_dequeue = fn (UnsafePointer[rte_crypto_raw_dp_ctx], UnsafePointer[Int32], UnsafePointer[rte_crypto_op_status]) -> OpaquePointer
alias rte_cryptodev_raw_dequeue_done = fn (UnsafePointer[rte_crypto_raw_dp_ctx], UInt32) -> Int32
alias rte_cryptodev_add_enq_callback = fn (UInt8, UInt16, rte_cryptodev_callback_fn, OpaquePointer) -> UnsafePointer[rte_cryptodev_cb]
alias rte_cryptodev_remove_enq_callback = fn (UInt8, UInt16, UnsafePointer[rte_cryptodev_cb]) -> Int32
alias rte_cryptodev_add_deq_callback = fn (UInt8, UInt16, rte_cryptodev_callback_fn, OpaquePointer) -> UnsafePointer[rte_cryptodev_cb]
alias rte_cryptodev_remove_deq_callback = fn (UInt8, UInt16, UnsafePointer[rte_cryptodev_cb]) -> Int32
alias dequeue_pkt_burst_t = fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_crypto_op]], UInt16) -> UInt16
alias enqueue_pkt_burst_t = fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_crypto_op]], UInt16) -> UInt16
alias crypto_qp_depth_used_t = fn(OpaquePointer) -> ffi.c_ulong
struct rte_cryptodev_qpdata(Copyable & Movable):
# #  Structure used to hold opaque pointers to internal ethdev Rx/Tx#  queues data.#  The main purpose to expose these pointers at all - allow compiler#  to fetch this data for fast-path cryptodev inline functions in advance.#  # 
	var data : UnsafePointer[OpaquePointer]

	var enq_cb : UnsafePointer[rte_cryptodev_cb_rcu]

	var deq_cb : UnsafePointer[rte_cryptodev_cb_rcu]

struct rte_crypto_fp_ops(Copyable & Movable):
# Alignment: 128 

	var enqueue_burst : fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_crypto_op]], UInt16) -> UInt16

	var dequeue_burst : fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_crypto_op]], UInt16) -> UInt16

	var qp : rte_cryptodev_qpdata

	var qp_depth_used : fn(OpaquePointer) -> ffi.c_ulong

	var reserved : InlineArray[uintptr_t, 2]

struct rte_cryptodev(Copyable & Movable):
	pass
alias rte_cryptodevs = UnsafePointer[rte_cryptodev]
alias rte_cryptodev_dequeue_burst = fn (UInt8, UInt16, UnsafePointer[UnsafePointer[rte_crypto_op]], UInt16) -> UInt16
alias rte_cryptodev_enqueue_burst = fn (UInt8, UInt16, UnsafePointer[UnsafePointer[rte_crypto_op]], UInt16) -> UInt16
alias rte_cryptodev_qp_depth_used = fn (UInt8, UInt16) -> Int32
alias anonomous_record_1566 = C_Union[ffi.c_ulong, OpaquePointer]

struct rte_pdcp_group(Copyable & Movable):

	var id : anonomous_record_1566

	var m : UnsafePointer[UnsafePointer[rte_mbuf]]

	var cnt : UInt32

	var rc : Int32

alias rte_pdcp_en_from_cop = fn (UnsafePointer[rte_crypto_op]) -> UnsafePointer[rte_pdcp_entity]
alias rte_pdcp_pkt_crypto_group = fn (UnsafePointer[UnsafePointer[rte_crypto_op]], UnsafePointer[UnsafePointer[rte_mbuf]], UnsafePointer[rte_pdcp_group], UInt16) -> UInt16


alias rte_pdcp_alloca = ExternalFunction['alloca', alloca]
alias rte_pdcp_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_pdcp_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_pdcp_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_pdcp_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_pdcp_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_pdcp_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_pdcp_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_pdcp_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_pdcp_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_pdcp_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_pdcp_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_pdcp_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_pdcp_remove = ExternalFunction['remove', remove]
alias rte_pdcp_rename = ExternalFunction['rename', rename]
alias rte_pdcp_renameat = ExternalFunction['renameat', renameat]
alias rte_pdcp_fclose = ExternalFunction['fclose', fclose]
alias rte_pdcp_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias rte_pdcp_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias rte_pdcp_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias rte_pdcp_tempnam = ExternalFunction['tempnam', tempnam]
alias rte_pdcp_fflush = ExternalFunction['fflush', fflush]
alias rte_pdcp_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias rte_pdcp_fopen = ExternalFunction['fopen', fopen]
alias rte_pdcp_freopen = ExternalFunction['freopen', freopen]
alias rte_pdcp_fdopen = ExternalFunction['fdopen', fdopen]
alias rte_pdcp_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias rte_pdcp_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias rte_pdcp_setbuf = ExternalFunction['setbuf', setbuf]
alias rte_pdcp_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias rte_pdcp_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias rte_pdcp_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias rte_pdcp_fprintf = ExternalFunction['fprintf', fprintf]
alias rte_pdcp_printf = ExternalFunction['printf', printf]
alias rte_pdcp_sprintf = ExternalFunction['sprintf', sprintf]
alias rte_pdcp_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias rte_pdcp_vprintf = ExternalFunction['vprintf', vprintf]
alias rte_pdcp_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias rte_pdcp_snprintf = ExternalFunction['snprintf', snprintf]
alias rte_pdcp_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias rte_pdcp_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias rte_pdcp_dprintf = ExternalFunction['dprintf', dprintf]
alias rte_pdcp_fscanf = ExternalFunction['fscanf', fscanf]
alias rte_pdcp_scanf = ExternalFunction['scanf', scanf]
alias rte_pdcp_sscanf = ExternalFunction['sscanf', sscanf]
alias rte_pdcp_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias rte_pdcp_vscanf = ExternalFunction['vscanf', vscanf]
alias rte_pdcp_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias rte_pdcp_fgetc = ExternalFunction['fgetc', fgetc]
alias rte_pdcp_getc = ExternalFunction['getc', getc]
alias rte_pdcp_getchar = ExternalFunction['getchar', getchar]
alias rte_pdcp_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias rte_pdcp_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias rte_pdcp_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias rte_pdcp_fputc = ExternalFunction['fputc', fputc]
alias rte_pdcp_putc = ExternalFunction['putc', putc]
alias rte_pdcp_putchar = ExternalFunction['putchar', putchar]
alias rte_pdcp_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias rte_pdcp_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias rte_pdcp_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias rte_pdcp_getw = ExternalFunction['getw', getw]
alias rte_pdcp_putw = ExternalFunction['putw', putw]
alias rte_pdcp_fgets = ExternalFunction['fgets', fgets]
alias rte_pdcp_getdelim = ExternalFunction['getdelim', getdelim]
alias rte_pdcp_getline = ExternalFunction['getline', getline]
alias rte_pdcp_fputs = ExternalFunction['fputs', fputs]
alias rte_pdcp_puts = ExternalFunction['puts', puts]
alias rte_pdcp_ungetc = ExternalFunction['ungetc', ungetc]
alias rte_pdcp_fread = ExternalFunction['fread', fread]
alias rte_pdcp_fwrite = ExternalFunction['fwrite', fwrite]
alias rte_pdcp_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias rte_pdcp_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias rte_pdcp_fseek = ExternalFunction['fseek', fseek]
alias rte_pdcp_ftell = ExternalFunction['ftell', ftell]
alias rte_pdcp_rewind = ExternalFunction['rewind', rewind]
alias rte_pdcp_fseeko = ExternalFunction['fseeko', fseeko]
alias rte_pdcp_ftello = ExternalFunction['ftello', ftello]
alias rte_pdcp_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias rte_pdcp_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias rte_pdcp_clearerr = ExternalFunction['clearerr', clearerr]
alias rte_pdcp_feof = ExternalFunction['feof', feof]
alias rte_pdcp_ferror = ExternalFunction['ferror', ferror]
alias rte_pdcp_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias rte_pdcp_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias rte_pdcp_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias rte_pdcp_perror = ExternalFunction['perror', perror]
alias rte_pdcp_fileno = ExternalFunction['fileno', fileno]
alias rte_pdcp_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias rte_pdcp_pclose = ExternalFunction['pclose', pclose]
alias rte_pdcp_popen = ExternalFunction['popen', popen]
alias rte_pdcp_ctermid = ExternalFunction['ctermid', ctermid]
alias rte_pdcp_flockfile = ExternalFunction['flockfile', flockfile]
alias rte_pdcp_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias rte_pdcp_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias rte_pdcp_imaxabs = ExternalFunction['imaxabs', imaxabs]
alias rte_pdcp_imaxdiv = ExternalFunction['imaxdiv', imaxdiv]
alias rte_pdcp_strtoimax = ExternalFunction['strtoimax', strtoimax]
alias rte_pdcp_strtoumax = ExternalFunction['strtoumax', strtoumax]
alias rte_pdcp_wcstoimax = ExternalFunction['wcstoimax', wcstoimax]
alias rte_pdcp_wcstoumax = ExternalFunction['wcstoumax', wcstoumax]
alias rte_pdcp_clock = ExternalFunction['clock', clock]
alias rte_pdcp_time = ExternalFunction['time', time]
alias rte_pdcp_difftime = ExternalFunction['difftime', difftime]
alias rte_pdcp_mktime = ExternalFunction['mktime', mktime]
alias rte_pdcp_strftime = ExternalFunction['strftime', strftime]
alias rte_pdcp_strftime_l = ExternalFunction['strftime_l', strftime_l]
alias rte_pdcp_gmtime = ExternalFunction['gmtime', gmtime]
alias rte_pdcp_localtime = ExternalFunction['localtime', localtime]
alias rte_pdcp_gmtime_r = ExternalFunction['gmtime_r', gmtime_r]
alias rte_pdcp_localtime_r = ExternalFunction['localtime_r', localtime_r]
alias rte_pdcp_asctime = ExternalFunction['asctime', asctime]
alias rte_pdcp_ctime = ExternalFunction['ctime', ctime]
alias rte_pdcp_asctime_r = ExternalFunction['asctime_r', asctime_r]
alias rte_pdcp_ctime_r = ExternalFunction['ctime_r', ctime_r]
alias rte_pdcp_tzset = ExternalFunction['tzset', tzset]
alias rte_pdcp_timegm = ExternalFunction['timegm', timegm]
alias rte_pdcp_timelocal = ExternalFunction['timelocal', timelocal]
alias rte_pdcp_dysize = ExternalFunction['dysize', dysize]
alias rte_pdcp_nanosleep = ExternalFunction['nanosleep', nanosleep]
alias rte_pdcp_clock_getres = ExternalFunction['clock_getres', clock_getres]
alias rte_pdcp_clock_gettime = ExternalFunction['clock_gettime', clock_gettime]
alias rte_pdcp_clock_settime = ExternalFunction['clock_settime', clock_settime]
alias rte_pdcp_clock_nanosleep = ExternalFunction['clock_nanosleep', clock_nanosleep]
alias rte_pdcp_clock_getcpuclockid = ExternalFunction['clock_getcpuclockid', clock_getcpuclockid]
alias rte_pdcp_timer_create = ExternalFunction['timer_create', timer_create]
alias rte_pdcp_timer_delete = ExternalFunction['timer_delete', timer_delete]
alias rte_pdcp_timer_settime = ExternalFunction['timer_settime', timer_settime]
alias rte_pdcp_timer_gettime = ExternalFunction['timer_gettime', timer_gettime]
alias rte_pdcp_timer_getoverrun = ExternalFunction['timer_getoverrun', timer_getoverrun]
alias rte_pdcp_timespec_get = ExternalFunction['timespec_get', timespec_get]
alias rte_pdcp_memcpy = ExternalFunction['memcpy', memcpy]
alias rte_pdcp_memmove = ExternalFunction['memmove', memmove]
alias rte_pdcp_memccpy = ExternalFunction['memccpy', memccpy]
alias rte_pdcp_memset = ExternalFunction['memset', memset]
alias rte_pdcp_memcmp = ExternalFunction['memcmp', memcmp]
alias rte_pdcp_memchr = ExternalFunction['memchr', memchr]
alias rte_pdcp_strcpy = ExternalFunction['strcpy', strcpy]
alias rte_pdcp_strncpy = ExternalFunction['strncpy', strncpy]
alias rte_pdcp_strcat = ExternalFunction['strcat', strcat]
alias rte_pdcp_strncat = ExternalFunction['strncat', strncat]
alias rte_pdcp_strcmp = ExternalFunction['strcmp', strcmp]
alias rte_pdcp_strncmp = ExternalFunction['strncmp', strncmp]
alias rte_pdcp_strcoll = ExternalFunction['strcoll', strcoll]
alias rte_pdcp_strxfrm = ExternalFunction['strxfrm', strxfrm]
alias rte_pdcp_strcoll_l = ExternalFunction['strcoll_l', strcoll_l]
alias rte_pdcp_strxfrm_l = ExternalFunction['strxfrm_l', strxfrm_l]
alias rte_pdcp_strdup = ExternalFunction['strdup', strdup]
alias rte_pdcp_strndup = ExternalFunction['strndup', strndup]
alias rte_pdcp_strchr = ExternalFunction['strchr', strchr]
alias rte_pdcp_strrchr = ExternalFunction['strrchr', strrchr]
alias rte_pdcp_strcspn = ExternalFunction['strcspn', strcspn]
alias rte_pdcp_strspn = ExternalFunction['strspn', strspn]
alias rte_pdcp_strpbrk = ExternalFunction['strpbrk', strpbrk]
alias rte_pdcp_strstr = ExternalFunction['strstr', strstr]
alias rte_pdcp_strtok = ExternalFunction['strtok', strtok]
alias rte_pdcp_strtok_r = ExternalFunction['strtok_r', strtok_r]
alias rte_pdcp_strlen = ExternalFunction['strlen', strlen]
alias rte_pdcp_strnlen = ExternalFunction['strnlen', strnlen]
alias rte_pdcp_strerror = ExternalFunction['strerror', strerror]
alias rte_pdcp_strerror_r = ExternalFunction['strerror_r', strerror_r]
alias rte_pdcp_strerror_l = ExternalFunction['strerror_l', strerror_l]
alias rte_pdcp_bcmp = ExternalFunction['bcmp', bcmp]
alias rte_pdcp_bcopy = ExternalFunction['bcopy', bcopy]
alias rte_pdcp_bzero = ExternalFunction['bzero', bzero]
alias rte_pdcp_index = ExternalFunction['index', index]
alias rte_pdcp_rindex = ExternalFunction['rindex', rindex]
alias rte_pdcp_ffs = ExternalFunction['ffs', ffs]
alias rte_pdcp_ffsl = ExternalFunction['ffsl', ffsl]
alias rte_pdcp_ffsll = ExternalFunction['ffsll', ffsll]
alias rte_pdcp_strcasecmp = ExternalFunction['strcasecmp', strcasecmp]
alias rte_pdcp_strncasecmp = ExternalFunction['strncasecmp', strncasecmp]
alias rte_pdcp_strcasecmp_l = ExternalFunction['strcasecmp_l', strcasecmp_l]
alias rte_pdcp_strncasecmp_l = ExternalFunction['strncasecmp_l', strncasecmp_l]
alias rte_pdcp_explicit_bzero = ExternalFunction['explicit_bzero', explicit_bzero]
alias rte_pdcp_strsep = ExternalFunction['strsep', strsep]
alias rte_pdcp_strsignal = ExternalFunction['strsignal', strsignal]
alias rte_pdcp_stpcpy = ExternalFunction['stpcpy', stpcpy]
alias rte_pdcp_stpncpy = ExternalFunction['stpncpy', stpncpy]
alias rte_pdcp_rte_uuid_is_null = ExternalFunction['rte_uuid_is_null', rte_uuid_is_null]
alias rte_pdcp_rte_uuid_copy = ExternalFunction['rte_uuid_copy', rte_uuid_copy]
alias rte_pdcp_rte_uuid_compare = ExternalFunction['rte_uuid_compare', rte_uuid_compare]
alias rte_pdcp_rte_uuid_parse = ExternalFunction['rte_uuid_parse', rte_uuid_parse]
alias rte_pdcp_rte_uuid_unparse = ExternalFunction['rte_uuid_unparse', rte_uuid_unparse]
alias rte_pdcp_rte_eal_process_type = ExternalFunction['rte_eal_process_type', rte_eal_process_type]
alias rte_pdcp_rte_eal_iopl_init = ExternalFunction['rte_eal_iopl_init', rte_eal_iopl_init]
alias rte_pdcp_rte_eal_init = ExternalFunction['rte_eal_init', rte_eal_init]
alias rte_pdcp_rte_eal_cleanup = ExternalFunction['rte_eal_cleanup', rte_eal_cleanup]
alias rte_pdcp_rte_eal_primary_proc_alive = ExternalFunction['rte_eal_primary_proc_alive', rte_eal_primary_proc_alive]
alias rte_pdcp_rte_mp_disable = ExternalFunction['rte_mp_disable', rte_mp_disable]
alias rte_pdcp_rte_mp_action_register = ExternalFunction['rte_mp_action_register', rte_mp_action_register]
alias rte_pdcp_rte_mp_action_unregister = ExternalFunction['rte_mp_action_unregister', rte_mp_action_unregister]
alias rte_pdcp_rte_mp_sendmsg = ExternalFunction['rte_mp_sendmsg', rte_mp_sendmsg]
alias rte_pdcp_rte_mp_request_sync = ExternalFunction['rte_mp_request_sync', rte_mp_request_sync]
alias rte_pdcp_rte_mp_request_async = ExternalFunction['rte_mp_request_async', rte_mp_request_async]
alias rte_pdcp_rte_set_application_usage_hook = ExternalFunction['rte_set_application_usage_hook', rte_set_application_usage_hook]
alias rte_pdcp_rte_eal_has_hugepages = ExternalFunction['rte_eal_has_hugepages', rte_eal_has_hugepages]
alias rte_pdcp_rte_eal_has_pci = ExternalFunction['rte_eal_has_pci', rte_eal_has_pci]
alias rte_pdcp_rte_eal_create_uio_dev = ExternalFunction['rte_eal_create_uio_dev', rte_eal_create_uio_dev]
alias rte_pdcp_rte_eal_vfio_intr_mode = ExternalFunction['rte_eal_vfio_intr_mode', rte_eal_vfio_intr_mode]
alias rte_pdcp_rte_eal_vfio_get_vf_token = ExternalFunction['rte_eal_vfio_get_vf_token', rte_eal_vfio_get_vf_token]
alias rte_pdcp_rte_sys_gettid = ExternalFunction['rte_sys_gettid', rte_sys_gettid]
alias rte_pdcp_rte_gettid = ExternalFunction['rte_gettid', rte_gettid]
alias rte_pdcp_rte_eal_get_baseaddr = ExternalFunction['rte_eal_get_baseaddr', rte_eal_get_baseaddr]
alias rte_pdcp_rte_eal_iova_mode = ExternalFunction['rte_eal_iova_mode', rte_eal_iova_mode]
alias rte_pdcp_rte_eal_mbuf_user_pool_ops = ExternalFunction['rte_eal_mbuf_user_pool_ops', rte_eal_mbuf_user_pool_ops]
alias rte_pdcp_rte_eal_get_runtime_dir = ExternalFunction['rte_eal_get_runtime_dir', rte_eal_get_runtime_dir]
alias rte_pdcp_rte_eal_parse_coremask = ExternalFunction['rte_eal_parse_coremask', rte_eal_parse_coremask]
alias rte_pdcp_rte_eal_remote_launch = ExternalFunction['rte_eal_remote_launch', rte_eal_remote_launch]
alias rte_pdcp_rte_eal_mp_remote_launch = ExternalFunction['rte_eal_mp_remote_launch', rte_eal_mp_remote_launch]
alias rte_pdcp_rte_eal_get_lcore_state = ExternalFunction['rte_eal_get_lcore_state', rte_eal_get_lcore_state]
alias rte_pdcp_rte_eal_wait_lcore = ExternalFunction['rte_eal_wait_lcore', rte_eal_wait_lcore]
alias rte_pdcp_rte_eal_mp_wait_lcore = ExternalFunction['rte_eal_mp_wait_lcore', rte_eal_mp_wait_lcore]
alias rte_pdcp_rte_thread_create = ExternalFunction['rte_thread_create', rte_thread_create]
alias rte_pdcp_rte_thread_create_control = ExternalFunction['rte_thread_create_control', rte_thread_create_control]
alias rte_pdcp_rte_thread_create_internal_control = ExternalFunction['rte_thread_create_internal_control', rte_thread_create_internal_control]
alias rte_pdcp_rte_thread_join = ExternalFunction['rte_thread_join', rte_thread_join]
alias rte_pdcp_rte_thread_detach = ExternalFunction['rte_thread_detach', rte_thread_detach]
alias rte_pdcp_rte_thread_self = ExternalFunction['rte_thread_self', rte_thread_self]
alias rte_pdcp_rte_thread_set_name = ExternalFunction['rte_thread_set_name', rte_thread_set_name]
alias rte_pdcp_rte_thread_set_prefixed_name = ExternalFunction['rte_thread_set_prefixed_name', rte_thread_set_prefixed_name]
alias rte_pdcp_rte_thread_equal = ExternalFunction['rte_thread_equal', rte_thread_equal]
alias rte_pdcp_rte_thread_attr_init = ExternalFunction['rte_thread_attr_init', rte_thread_attr_init]
alias rte_pdcp_rte_thread_attr_set_priority = ExternalFunction['rte_thread_attr_set_priority', rte_thread_attr_set_priority]
alias rte_pdcp_rte_thread_get_priority = ExternalFunction['rte_thread_get_priority', rte_thread_get_priority]
alias rte_pdcp_rte_thread_set_priority = ExternalFunction['rte_thread_set_priority', rte_thread_set_priority]
alias rte_pdcp_rte_thread_key_create = ExternalFunction['rte_thread_key_create', rte_thread_key_create]
alias rte_pdcp_rte_thread_key_delete = ExternalFunction['rte_thread_key_delete', rte_thread_key_delete]
alias rte_pdcp_rte_thread_value_set = ExternalFunction['rte_thread_value_set', rte_thread_value_set]
alias rte_pdcp_rte_thread_value_get = ExternalFunction['rte_thread_value_get', rte_thread_value_get]
alias rte_pdcp_rte_eal_lcore_role = ExternalFunction['rte_eal_lcore_role', rte_eal_lcore_role]
alias rte_pdcp_rte_lcore_has_role = ExternalFunction['rte_lcore_has_role', rte_lcore_has_role]
alias rte_pdcp_rte_lcore_id = ExternalFunction['rte_lcore_id', rte_lcore_id]
alias rte_pdcp_rte_get_main_lcore = ExternalFunction['rte_get_main_lcore', rte_get_main_lcore]
alias rte_pdcp_rte_lcore_count = ExternalFunction['rte_lcore_count', rte_lcore_count]
alias rte_pdcp_rte_lcore_index = ExternalFunction['rte_lcore_index', rte_lcore_index]
alias rte_pdcp_rte_socket_id = ExternalFunction['rte_socket_id', rte_socket_id]
alias rte_pdcp_rte_socket_count = ExternalFunction['rte_socket_count', rte_socket_count]
alias rte_pdcp_rte_socket_id_by_idx = ExternalFunction['rte_socket_id_by_idx', rte_socket_id_by_idx]
alias rte_pdcp_rte_lcore_to_socket_id = ExternalFunction['rte_lcore_to_socket_id', rte_lcore_to_socket_id]
alias rte_pdcp_rte_lcore_to_cpu_id = ExternalFunction['rte_lcore_to_cpu_id', rte_lcore_to_cpu_id]
alias rte_pdcp_rte_lcore_is_enabled = ExternalFunction['rte_lcore_is_enabled', rte_lcore_is_enabled]
alias rte_pdcp_rte_get_next_lcore = ExternalFunction['rte_get_next_lcore', rte_get_next_lcore]
alias rte_pdcp_rte_lcore_callback_register = ExternalFunction['rte_lcore_callback_register', rte_lcore_callback_register]
alias rte_pdcp_rte_lcore_callback_unregister = ExternalFunction['rte_lcore_callback_unregister', rte_lcore_callback_unregister]
alias rte_pdcp_rte_lcore_iterate = ExternalFunction['rte_lcore_iterate', rte_lcore_iterate]
alias rte_pdcp_rte_lcore_register_usage_cb = ExternalFunction['rte_lcore_register_usage_cb', rte_lcore_register_usage_cb]
alias rte_pdcp_rte_lcore_dump = ExternalFunction['rte_lcore_dump', rte_lcore_dump]
alias rte_pdcp_rte_thread_register = ExternalFunction['rte_thread_register', rte_thread_register]
alias rte_pdcp_rte_thread_unregister = ExternalFunction['rte_thread_unregister', rte_thread_unregister]
alias rte_pdcp_rte_atomic_thread_fence = ExternalFunction['rte_atomic_thread_fence', rte_atomic_thread_fence]
alias rte_pdcp_rte_atomic16_cmpset = ExternalFunction['rte_atomic16_cmpset', rte_atomic16_cmpset]
alias rte_pdcp_rte_atomic16_exchange = ExternalFunction['rte_atomic16_exchange', rte_atomic16_exchange]
alias rte_pdcp_rte_atomic16_init = ExternalFunction['rte_atomic16_init', rte_atomic16_init]
alias rte_pdcp_rte_atomic16_read = ExternalFunction['rte_atomic16_read', rte_atomic16_read]
alias rte_pdcp_rte_atomic16_set = ExternalFunction['rte_atomic16_set', rte_atomic16_set]
alias rte_pdcp_rte_atomic16_add = ExternalFunction['rte_atomic16_add', rte_atomic16_add]
alias rte_pdcp_rte_atomic16_sub = ExternalFunction['rte_atomic16_sub', rte_atomic16_sub]
alias rte_pdcp_rte_atomic16_inc = ExternalFunction['rte_atomic16_inc', rte_atomic16_inc]
alias rte_pdcp_rte_atomic16_dec = ExternalFunction['rte_atomic16_dec', rte_atomic16_dec]
alias rte_pdcp_rte_atomic16_add_return = ExternalFunction['rte_atomic16_add_return', rte_atomic16_add_return]
alias rte_pdcp_rte_atomic16_sub_return = ExternalFunction['rte_atomic16_sub_return', rte_atomic16_sub_return]
alias rte_pdcp_rte_atomic16_inc_and_test = ExternalFunction['rte_atomic16_inc_and_test', rte_atomic16_inc_and_test]
alias rte_pdcp_rte_atomic16_dec_and_test = ExternalFunction['rte_atomic16_dec_and_test', rte_atomic16_dec_and_test]
alias rte_pdcp_rte_atomic16_test_and_set = ExternalFunction['rte_atomic16_test_and_set', rte_atomic16_test_and_set]
alias rte_pdcp_rte_atomic16_clear = ExternalFunction['rte_atomic16_clear', rte_atomic16_clear]
alias rte_pdcp_rte_atomic32_cmpset = ExternalFunction['rte_atomic32_cmpset', rte_atomic32_cmpset]
alias rte_pdcp_rte_atomic32_exchange = ExternalFunction['rte_atomic32_exchange', rte_atomic32_exchange]
alias rte_pdcp_rte_atomic32_init = ExternalFunction['rte_atomic32_init', rte_atomic32_init]
alias rte_pdcp_rte_atomic32_read = ExternalFunction['rte_atomic32_read', rte_atomic32_read]
alias rte_pdcp_rte_atomic32_set = ExternalFunction['rte_atomic32_set', rte_atomic32_set]
alias rte_pdcp_rte_atomic32_add = ExternalFunction['rte_atomic32_add', rte_atomic32_add]
alias rte_pdcp_rte_atomic32_sub = ExternalFunction['rte_atomic32_sub', rte_atomic32_sub]
alias rte_pdcp_rte_atomic32_inc = ExternalFunction['rte_atomic32_inc', rte_atomic32_inc]
alias rte_pdcp_rte_atomic32_dec = ExternalFunction['rte_atomic32_dec', rte_atomic32_dec]
alias rte_pdcp_rte_atomic32_add_return = ExternalFunction['rte_atomic32_add_return', rte_atomic32_add_return]
alias rte_pdcp_rte_atomic32_sub_return = ExternalFunction['rte_atomic32_sub_return', rte_atomic32_sub_return]
alias rte_pdcp_rte_atomic32_inc_and_test = ExternalFunction['rte_atomic32_inc_and_test', rte_atomic32_inc_and_test]
alias rte_pdcp_rte_atomic32_dec_and_test = ExternalFunction['rte_atomic32_dec_and_test', rte_atomic32_dec_and_test]
alias rte_pdcp_rte_atomic32_test_and_set = ExternalFunction['rte_atomic32_test_and_set', rte_atomic32_test_and_set]
alias rte_pdcp_rte_atomic32_clear = ExternalFunction['rte_atomic32_clear', rte_atomic32_clear]
alias rte_pdcp_rte_atomic64_cmpset = ExternalFunction['rte_atomic64_cmpset', rte_atomic64_cmpset]
alias rte_pdcp_rte_atomic64_exchange = ExternalFunction['rte_atomic64_exchange', rte_atomic64_exchange]
alias rte_pdcp_rte_atomic64_init = ExternalFunction['rte_atomic64_init', rte_atomic64_init]
alias rte_pdcp_rte_atomic64_read = ExternalFunction['rte_atomic64_read', rte_atomic64_read]
alias rte_pdcp_rte_atomic64_set = ExternalFunction['rte_atomic64_set', rte_atomic64_set]
alias rte_pdcp_rte_atomic64_add = ExternalFunction['rte_atomic64_add', rte_atomic64_add]
alias rte_pdcp_rte_atomic64_sub = ExternalFunction['rte_atomic64_sub', rte_atomic64_sub]
alias rte_pdcp_rte_atomic64_inc = ExternalFunction['rte_atomic64_inc', rte_atomic64_inc]
alias rte_pdcp_rte_atomic64_dec = ExternalFunction['rte_atomic64_dec', rte_atomic64_dec]
alias rte_pdcp_rte_atomic64_add_return = ExternalFunction['rte_atomic64_add_return', rte_atomic64_add_return]
alias rte_pdcp_rte_atomic64_sub_return = ExternalFunction['rte_atomic64_sub_return', rte_atomic64_sub_return]
alias rte_pdcp_rte_atomic64_inc_and_test = ExternalFunction['rte_atomic64_inc_and_test', rte_atomic64_inc_and_test]
alias rte_pdcp_rte_atomic64_dec_and_test = ExternalFunction['rte_atomic64_dec_and_test', rte_atomic64_dec_and_test]
alias rte_pdcp_rte_atomic64_test_and_set = ExternalFunction['rte_atomic64_test_and_set', rte_atomic64_test_and_set]
alias rte_pdcp_rte_atomic64_clear = ExternalFunction['rte_atomic64_clear', rte_atomic64_clear]
alias rte_pdcp_rte_openlog_stream = ExternalFunction['rte_openlog_stream', rte_openlog_stream]
alias rte_pdcp_rte_log_get_stream = ExternalFunction['rte_log_get_stream', rte_log_get_stream]
alias rte_pdcp_rte_log_set_global_level = ExternalFunction['rte_log_set_global_level', rte_log_set_global_level]
alias rte_pdcp_rte_log_get_global_level = ExternalFunction['rte_log_get_global_level', rte_log_get_global_level]
alias rte_pdcp_rte_log_get_level = ExternalFunction['rte_log_get_level', rte_log_get_level]
alias rte_pdcp_rte_log_can_log = ExternalFunction['rte_log_can_log', rte_log_can_log]
alias rte_pdcp_rte_log_set_level_pattern = ExternalFunction['rte_log_set_level_pattern', rte_log_set_level_pattern]
alias rte_pdcp_rte_log_set_level_regexp = ExternalFunction['rte_log_set_level_regexp', rte_log_set_level_regexp]
alias rte_pdcp_rte_log_set_level = ExternalFunction['rte_log_set_level', rte_log_set_level]
alias rte_pdcp_rte_log_cur_msg_loglevel = ExternalFunction['rte_log_cur_msg_loglevel', rte_log_cur_msg_loglevel]
alias rte_pdcp_rte_log_cur_msg_logtype = ExternalFunction['rte_log_cur_msg_logtype', rte_log_cur_msg_logtype]
alias rte_pdcp_rte_log_register = ExternalFunction['rte_log_register', rte_log_register]
alias rte_pdcp_rte_log_register_type_and_pick_level = ExternalFunction['rte_log_register_type_and_pick_level', rte_log_register_type_and_pick_level]
alias rte_pdcp_rte_log_list_types = ExternalFunction['rte_log_list_types', rte_log_list_types]
alias rte_pdcp_rte_log_dump = ExternalFunction['rte_log_dump', rte_log_dump]
alias rte_pdcp_rte_log = ExternalFunction['rte_log', rte_log]
alias rte_pdcp_rte_vlog = ExternalFunction['rte_vlog', rte_vlog]
alias rte_pdcp_rte_dump_stack = ExternalFunction['rte_dump_stack', rte_dump_stack]
alias rte_pdcp_rte_atomic128_cmp_exchange = ExternalFunction['rte_atomic128_cmp_exchange', rte_atomic128_cmp_exchange]
alias rte_pdcp_rte_pause = ExternalFunction['rte_pause', rte_pause]
alias rte_pdcp_rte_wait_until_equal_16 = ExternalFunction['rte_wait_until_equal_16', rte_wait_until_equal_16]
alias rte_pdcp_rte_wait_until_equal_32 = ExternalFunction['rte_wait_until_equal_32', rte_wait_until_equal_32]
alias rte_pdcp_rte_wait_until_equal_64 = ExternalFunction['rte_wait_until_equal_64', rte_wait_until_equal_64]
alias rte_pdcp_rte_spinlock_init = ExternalFunction['rte_spinlock_init', rte_spinlock_init]
alias rte_pdcp_rte_spinlock_lock = ExternalFunction['rte_spinlock_lock', rte_spinlock_lock]
alias rte_pdcp_rte_spinlock_unlock = ExternalFunction['rte_spinlock_unlock', rte_spinlock_unlock]
alias rte_pdcp_rte_spinlock_trylock = ExternalFunction['rte_spinlock_trylock', rte_spinlock_trylock]
alias rte_pdcp_rte_spinlock_is_locked = ExternalFunction['rte_spinlock_is_locked', rte_spinlock_is_locked]
alias rte_pdcp_rte_tm_supported = ExternalFunction['rte_tm_supported', rte_tm_supported]
alias rte_pdcp_rte_spinlock_lock_tm = ExternalFunction['rte_spinlock_lock_tm', rte_spinlock_lock_tm]
alias rte_pdcp_rte_spinlock_unlock_tm = ExternalFunction['rte_spinlock_unlock_tm', rte_spinlock_unlock_tm]
alias rte_pdcp_rte_spinlock_trylock_tm = ExternalFunction['rte_spinlock_trylock_tm', rte_spinlock_trylock_tm]
alias rte_pdcp_rte_spinlock_recursive_init = ExternalFunction['rte_spinlock_recursive_init', rte_spinlock_recursive_init]
alias rte_pdcp_rte_spinlock_recursive_lock = ExternalFunction['rte_spinlock_recursive_lock', rte_spinlock_recursive_lock]
alias rte_pdcp_rte_spinlock_recursive_unlock = ExternalFunction['rte_spinlock_recursive_unlock', rte_spinlock_recursive_unlock]
alias rte_pdcp_rte_spinlock_recursive_trylock = ExternalFunction['rte_spinlock_recursive_trylock', rte_spinlock_recursive_trylock]
alias rte_pdcp_rte_spinlock_recursive_lock_tm = ExternalFunction['rte_spinlock_recursive_lock_tm', rte_spinlock_recursive_lock_tm]
alias rte_pdcp_rte_spinlock_recursive_unlock_tm = ExternalFunction['rte_spinlock_recursive_unlock_tm', rte_spinlock_recursive_unlock_tm]
alias rte_pdcp_rte_spinlock_recursive_trylock_tm = ExternalFunction['rte_spinlock_recursive_trylock_tm', rte_spinlock_recursive_trylock_tm]
alias rte_pdcp_rte_bit_relaxed_get32 = ExternalFunction['rte_bit_relaxed_get32', rte_bit_relaxed_get32]
alias rte_pdcp_rte_bit_relaxed_set32 = ExternalFunction['rte_bit_relaxed_set32', rte_bit_relaxed_set32]
alias rte_pdcp_rte_bit_relaxed_clear32 = ExternalFunction['rte_bit_relaxed_clear32', rte_bit_relaxed_clear32]
alias rte_pdcp_rte_bit_relaxed_test_and_set32 = ExternalFunction['rte_bit_relaxed_test_and_set32', rte_bit_relaxed_test_and_set32]
alias rte_pdcp_rte_bit_relaxed_test_and_clear32 = ExternalFunction['rte_bit_relaxed_test_and_clear32', rte_bit_relaxed_test_and_clear32]
alias rte_pdcp_rte_bit_relaxed_get64 = ExternalFunction['rte_bit_relaxed_get64', rte_bit_relaxed_get64]
alias rte_pdcp_rte_bit_relaxed_set64 = ExternalFunction['rte_bit_relaxed_set64', rte_bit_relaxed_set64]
alias rte_pdcp_rte_bit_relaxed_clear64 = ExternalFunction['rte_bit_relaxed_clear64', rte_bit_relaxed_clear64]
alias rte_pdcp_rte_bit_relaxed_test_and_set64 = ExternalFunction['rte_bit_relaxed_test_and_set64', rte_bit_relaxed_test_and_set64]
alias rte_pdcp_rte_bit_relaxed_test_and_clear64 = ExternalFunction['rte_bit_relaxed_test_and_clear64', rte_bit_relaxed_test_and_clear64]
alias rte_pdcp_rte_clz32 = ExternalFunction['rte_clz32', rte_clz32]
alias rte_pdcp_rte_clz64 = ExternalFunction['rte_clz64', rte_clz64]
alias rte_pdcp_rte_ctz32 = ExternalFunction['rte_ctz32', rte_ctz32]
alias rte_pdcp_rte_ctz64 = ExternalFunction['rte_ctz64', rte_ctz64]
alias rte_pdcp_rte_popcount32 = ExternalFunction['rte_popcount32', rte_popcount32]
alias rte_pdcp_rte_popcount64 = ExternalFunction['rte_popcount64', rte_popcount64]
alias rte_pdcp_rte_ffs32 = ExternalFunction['rte_ffs32', rte_ffs32]
alias rte_pdcp_rte_ffs64 = ExternalFunction['rte_ffs64', rte_ffs64]
alias rte_pdcp_rte_combine32ms1b = ExternalFunction['rte_combine32ms1b', rte_combine32ms1b]
alias rte_pdcp_rte_combine64ms1b = ExternalFunction['rte_combine64ms1b', rte_combine64ms1b]
alias rte_pdcp_rte_bsf32 = ExternalFunction['rte_bsf32', rte_bsf32]
alias rte_pdcp_rte_bsf32_safe = ExternalFunction['rte_bsf32_safe', rte_bsf32_safe]
alias rte_pdcp_rte_bsf64 = ExternalFunction['rte_bsf64', rte_bsf64]
alias rte_pdcp_rte_bsf64_safe = ExternalFunction['rte_bsf64_safe', rte_bsf64_safe]
alias rte_pdcp_rte_fls_u32 = ExternalFunction['rte_fls_u32', rte_fls_u32]
alias rte_pdcp_rte_fls_u64 = ExternalFunction['rte_fls_u64', rte_fls_u64]
alias rte_pdcp_rte_is_power_of_2 = ExternalFunction['rte_is_power_of_2', rte_is_power_of_2]
alias rte_pdcp_rte_align32pow2 = ExternalFunction['rte_align32pow2', rte_align32pow2]
alias rte_pdcp_rte_align32prevpow2 = ExternalFunction['rte_align32prevpow2', rte_align32prevpow2]
alias rte_pdcp_rte_align64pow2 = ExternalFunction['rte_align64pow2', rte_align64pow2]
alias rte_pdcp_rte_align64prevpow2 = ExternalFunction['rte_align64prevpow2', rte_align64prevpow2]
alias rte_pdcp_rte_log2_u32 = ExternalFunction['rte_log2_u32', rte_log2_u32]
alias rte_pdcp_rte_log2_u64 = ExternalFunction['rte_log2_u64', rte_log2_u64]
alias rte_pdcp_rte_rwlock_init = ExternalFunction['rte_rwlock_init', rte_rwlock_init]
alias rte_pdcp_rte_rwlock_read_lock = ExternalFunction['rte_rwlock_read_lock', rte_rwlock_read_lock]
alias rte_pdcp_rte_rwlock_read_trylock = ExternalFunction['rte_rwlock_read_trylock', rte_rwlock_read_trylock]
alias rte_pdcp_rte_rwlock_read_unlock = ExternalFunction['rte_rwlock_read_unlock', rte_rwlock_read_unlock]
alias rte_pdcp_rte_rwlock_write_trylock = ExternalFunction['rte_rwlock_write_trylock', rte_rwlock_write_trylock]
alias rte_pdcp_rte_rwlock_write_lock = ExternalFunction['rte_rwlock_write_lock', rte_rwlock_write_lock]
alias rte_pdcp_rte_rwlock_write_unlock = ExternalFunction['rte_rwlock_write_unlock', rte_rwlock_write_unlock]
alias rte_pdcp_rte_rwlock_write_is_locked = ExternalFunction['rte_rwlock_write_is_locked', rte_rwlock_write_is_locked]
alias rte_pdcp_rte_rwlock_read_lock_tm = ExternalFunction['rte_rwlock_read_lock_tm', rte_rwlock_read_lock_tm]
alias rte_pdcp_rte_rwlock_read_unlock_tm = ExternalFunction['rte_rwlock_read_unlock_tm', rte_rwlock_read_unlock_tm]
alias rte_pdcp_rte_rwlock_write_lock_tm = ExternalFunction['rte_rwlock_write_lock_tm', rte_rwlock_write_lock_tm]
alias rte_pdcp_rte_rwlock_write_unlock_tm = ExternalFunction['rte_rwlock_write_unlock_tm', rte_rwlock_write_unlock_tm]
alias rte_pdcp_rte_mcfg_mem_get_lock = ExternalFunction['rte_mcfg_mem_get_lock', rte_mcfg_mem_get_lock]
alias rte_pdcp_rte_mcfg_tailq_get_lock = ExternalFunction['rte_mcfg_tailq_get_lock', rte_mcfg_tailq_get_lock]
alias rte_pdcp_rte_mcfg_mempool_get_lock = ExternalFunction['rte_mcfg_mempool_get_lock', rte_mcfg_mempool_get_lock]
alias rte_pdcp_rte_mcfg_timer_get_lock = ExternalFunction['rte_mcfg_timer_get_lock', rte_mcfg_timer_get_lock]
alias rte_pdcp_rte_mcfg_ethdev_get_lock = ExternalFunction['rte_mcfg_ethdev_get_lock', rte_mcfg_ethdev_get_lock]
alias rte_pdcp_rte_mcfg_mem_read_lock = ExternalFunction['rte_mcfg_mem_read_lock', rte_mcfg_mem_read_lock]
alias rte_pdcp_rte_mcfg_mem_read_unlock = ExternalFunction['rte_mcfg_mem_read_unlock', rte_mcfg_mem_read_unlock]
alias rte_pdcp_rte_mcfg_mem_write_lock = ExternalFunction['rte_mcfg_mem_write_lock', rte_mcfg_mem_write_lock]
alias rte_pdcp_rte_mcfg_mem_write_unlock = ExternalFunction['rte_mcfg_mem_write_unlock', rte_mcfg_mem_write_unlock]
alias rte_pdcp_rte_mcfg_tailq_read_lock = ExternalFunction['rte_mcfg_tailq_read_lock', rte_mcfg_tailq_read_lock]
alias rte_pdcp_rte_mcfg_tailq_read_unlock = ExternalFunction['rte_mcfg_tailq_read_unlock', rte_mcfg_tailq_read_unlock]
alias rte_pdcp_rte_mcfg_tailq_write_lock = ExternalFunction['rte_mcfg_tailq_write_lock', rte_mcfg_tailq_write_lock]
alias rte_pdcp_rte_mcfg_tailq_write_unlock = ExternalFunction['rte_mcfg_tailq_write_unlock', rte_mcfg_tailq_write_unlock]
alias rte_pdcp_rte_mcfg_mempool_read_lock = ExternalFunction['rte_mcfg_mempool_read_lock', rte_mcfg_mempool_read_lock]
alias rte_pdcp_rte_mcfg_mempool_read_unlock = ExternalFunction['rte_mcfg_mempool_read_unlock', rte_mcfg_mempool_read_unlock]
alias rte_pdcp_rte_mcfg_mempool_write_lock = ExternalFunction['rte_mcfg_mempool_write_lock', rte_mcfg_mempool_write_lock]
alias rte_pdcp_rte_mcfg_mempool_write_unlock = ExternalFunction['rte_mcfg_mempool_write_unlock', rte_mcfg_mempool_write_unlock]
alias rte_pdcp_rte_mcfg_timer_lock = ExternalFunction['rte_mcfg_timer_lock', rte_mcfg_timer_lock]
alias rte_pdcp_rte_mcfg_timer_unlock = ExternalFunction['rte_mcfg_timer_unlock', rte_mcfg_timer_unlock]
alias rte_pdcp_rte_mcfg_get_single_file_segments = ExternalFunction['rte_mcfg_get_single_file_segments', rte_mcfg_get_single_file_segments]
alias rte_pdcp_rte_fbarray_init = ExternalFunction['rte_fbarray_init', rte_fbarray_init]
alias rte_pdcp_rte_fbarray_attach = ExternalFunction['rte_fbarray_attach', rte_fbarray_attach]
alias rte_pdcp_rte_fbarray_destroy = ExternalFunction['rte_fbarray_destroy', rte_fbarray_destroy]
alias rte_pdcp_rte_fbarray_detach = ExternalFunction['rte_fbarray_detach', rte_fbarray_detach]
alias rte_pdcp_rte_fbarray_get = ExternalFunction['rte_fbarray_get', rte_fbarray_get]
alias rte_pdcp_rte_fbarray_find_idx = ExternalFunction['rte_fbarray_find_idx', rte_fbarray_find_idx]
alias rte_pdcp_rte_fbarray_set_used = ExternalFunction['rte_fbarray_set_used', rte_fbarray_set_used]
alias rte_pdcp_rte_fbarray_set_free = ExternalFunction['rte_fbarray_set_free', rte_fbarray_set_free]
alias rte_pdcp_rte_fbarray_is_used = ExternalFunction['rte_fbarray_is_used', rte_fbarray_is_used]
alias rte_pdcp_rte_fbarray_find_next_free = ExternalFunction['rte_fbarray_find_next_free', rte_fbarray_find_next_free]
alias rte_pdcp_rte_fbarray_find_next_used = ExternalFunction['rte_fbarray_find_next_used', rte_fbarray_find_next_used]
alias rte_pdcp_rte_fbarray_find_next_n_free = ExternalFunction['rte_fbarray_find_next_n_free', rte_fbarray_find_next_n_free]
alias rte_pdcp_rte_fbarray_find_next_n_used = ExternalFunction['rte_fbarray_find_next_n_used', rte_fbarray_find_next_n_used]
alias rte_pdcp_rte_fbarray_find_contig_free = ExternalFunction['rte_fbarray_find_contig_free', rte_fbarray_find_contig_free]
alias rte_pdcp_rte_fbarray_find_contig_used = ExternalFunction['rte_fbarray_find_contig_used', rte_fbarray_find_contig_used]
alias rte_pdcp_rte_fbarray_find_prev_free = ExternalFunction['rte_fbarray_find_prev_free', rte_fbarray_find_prev_free]
alias rte_pdcp_rte_fbarray_find_prev_used = ExternalFunction['rte_fbarray_find_prev_used', rte_fbarray_find_prev_used]
alias rte_pdcp_rte_fbarray_find_prev_n_free = ExternalFunction['rte_fbarray_find_prev_n_free', rte_fbarray_find_prev_n_free]
alias rte_pdcp_rte_fbarray_find_prev_n_used = ExternalFunction['rte_fbarray_find_prev_n_used', rte_fbarray_find_prev_n_used]
alias rte_pdcp_rte_fbarray_find_rev_contig_free = ExternalFunction['rte_fbarray_find_rev_contig_free', rte_fbarray_find_rev_contig_free]
alias rte_pdcp_rte_fbarray_find_rev_contig_used = ExternalFunction['rte_fbarray_find_rev_contig_used', rte_fbarray_find_rev_contig_used]
alias rte_pdcp_rte_fbarray_find_biggest_free = ExternalFunction['rte_fbarray_find_biggest_free', rte_fbarray_find_biggest_free]
alias rte_pdcp_rte_fbarray_find_biggest_used = ExternalFunction['rte_fbarray_find_biggest_used', rte_fbarray_find_biggest_used]
alias rte_pdcp_rte_fbarray_find_rev_biggest_free = ExternalFunction['rte_fbarray_find_rev_biggest_free', rte_fbarray_find_rev_biggest_free]
alias rte_pdcp_rte_fbarray_find_rev_biggest_used = ExternalFunction['rte_fbarray_find_rev_biggest_used', rte_fbarray_find_rev_biggest_used]
alias rte_pdcp_rte_fbarray_dump_metadata = ExternalFunction['rte_fbarray_dump_metadata', rte_fbarray_dump_metadata]
alias rte_pdcp_rte_mem_lock_page = ExternalFunction['rte_mem_lock_page', rte_mem_lock_page]
alias rte_pdcp_rte_mem_virt2phy = ExternalFunction['rte_mem_virt2phy', rte_mem_virt2phy]
alias rte_pdcp_rte_mem_virt2iova = ExternalFunction['rte_mem_virt2iova', rte_mem_virt2iova]
alias rte_pdcp_rte_mem_iova2virt = ExternalFunction['rte_mem_iova2virt', rte_mem_iova2virt]
alias rte_pdcp_rte_mem_virt2memseg = ExternalFunction['rte_mem_virt2memseg', rte_mem_virt2memseg]
alias rte_pdcp_rte_mem_virt2memseg_list = ExternalFunction['rte_mem_virt2memseg_list', rte_mem_virt2memseg_list]
alias rte_pdcp_rte_memseg_walk = ExternalFunction['rte_memseg_walk', rte_memseg_walk]
alias rte_pdcp_rte_memseg_contig_walk = ExternalFunction['rte_memseg_contig_walk', rte_memseg_contig_walk]
alias rte_pdcp_rte_memseg_list_walk = ExternalFunction['rte_memseg_list_walk', rte_memseg_list_walk]
alias rte_pdcp_rte_memseg_walk_thread_unsafe = ExternalFunction['rte_memseg_walk_thread_unsafe', rte_memseg_walk_thread_unsafe]
alias rte_pdcp_rte_memseg_contig_walk_thread_unsafe = ExternalFunction['rte_memseg_contig_walk_thread_unsafe', rte_memseg_contig_walk_thread_unsafe]
alias rte_pdcp_rte_memseg_list_walk_thread_unsafe = ExternalFunction['rte_memseg_list_walk_thread_unsafe', rte_memseg_list_walk_thread_unsafe]
alias rte_pdcp_rte_memseg_get_fd = ExternalFunction['rte_memseg_get_fd', rte_memseg_get_fd]
alias rte_pdcp_rte_memseg_get_fd_thread_unsafe = ExternalFunction['rte_memseg_get_fd_thread_unsafe', rte_memseg_get_fd_thread_unsafe]
alias rte_pdcp_rte_memseg_get_fd_offset = ExternalFunction['rte_memseg_get_fd_offset', rte_memseg_get_fd_offset]
alias rte_pdcp_rte_memseg_get_fd_offset_thread_unsafe = ExternalFunction['rte_memseg_get_fd_offset_thread_unsafe', rte_memseg_get_fd_offset_thread_unsafe]
alias rte_pdcp_rte_extmem_register = ExternalFunction['rte_extmem_register', rte_extmem_register]
alias rte_pdcp_rte_extmem_unregister = ExternalFunction['rte_extmem_unregister', rte_extmem_unregister]
alias rte_pdcp_rte_extmem_attach = ExternalFunction['rte_extmem_attach', rte_extmem_attach]
alias rte_pdcp_rte_extmem_detach = ExternalFunction['rte_extmem_detach', rte_extmem_detach]
alias rte_pdcp_rte_dump_physmem_layout = ExternalFunction['rte_dump_physmem_layout', rte_dump_physmem_layout]
alias rte_pdcp_rte_eal_get_physmem_size = ExternalFunction['rte_eal_get_physmem_size', rte_eal_get_physmem_size]
alias rte_pdcp_rte_memory_get_nchannel = ExternalFunction['rte_memory_get_nchannel', rte_memory_get_nchannel]
alias rte_pdcp_rte_memory_get_nrank = ExternalFunction['rte_memory_get_nrank', rte_memory_get_nrank]
alias rte_pdcp_rte_mem_check_dma_mask = ExternalFunction['rte_mem_check_dma_mask', rte_mem_check_dma_mask]
alias rte_pdcp_rte_mem_check_dma_mask_thread_unsafe = ExternalFunction['rte_mem_check_dma_mask_thread_unsafe', rte_mem_check_dma_mask_thread_unsafe]
alias rte_pdcp_rte_mem_set_dma_mask = ExternalFunction['rte_mem_set_dma_mask', rte_mem_set_dma_mask]
alias rte_pdcp_rte_eal_using_phys_addrs = ExternalFunction['rte_eal_using_phys_addrs', rte_eal_using_phys_addrs]
alias rte_pdcp_rte_mem_event_callback_register = ExternalFunction['rte_mem_event_callback_register', rte_mem_event_callback_register]
alias rte_pdcp_rte_mem_event_callback_unregister = ExternalFunction['rte_mem_event_callback_unregister', rte_mem_event_callback_unregister]
alias rte_pdcp_rte_mem_alloc_validator_register = ExternalFunction['rte_mem_alloc_validator_register', rte_mem_alloc_validator_register]
alias rte_pdcp_rte_mem_alloc_validator_unregister = ExternalFunction['rte_mem_alloc_validator_unregister', rte_mem_alloc_validator_unregister]
alias rte_pdcp_rte_memzero_explicit = ExternalFunction['rte_memzero_explicit', rte_memzero_explicit]
alias rte_pdcp_rte_memzone_max_set = ExternalFunction['rte_memzone_max_set', rte_memzone_max_set]
alias rte_pdcp_rte_memzone_max_get = ExternalFunction['rte_memzone_max_get', rte_memzone_max_get]
alias rte_pdcp_rte_memzone_reserve = ExternalFunction['rte_memzone_reserve', rte_memzone_reserve]
alias rte_pdcp_rte_memzone_reserve_aligned = ExternalFunction['rte_memzone_reserve_aligned', rte_memzone_reserve_aligned]
alias rte_pdcp_rte_memzone_reserve_bounded = ExternalFunction['rte_memzone_reserve_bounded', rte_memzone_reserve_bounded]
alias rte_pdcp_rte_memzone_free = ExternalFunction['rte_memzone_free', rte_memzone_free]
alias rte_pdcp_rte_memzone_lookup = ExternalFunction['rte_memzone_lookup', rte_memzone_lookup]
alias rte_pdcp_rte_memzone_dump = ExternalFunction['rte_memzone_dump', rte_memzone_dump]
alias rte_pdcp_rte_memzone_walk = ExternalFunction['rte_memzone_walk', rte_memzone_walk]
alias rte_pdcp_rte_ring_get_memsize_elem = ExternalFunction['rte_ring_get_memsize_elem', rte_ring_get_memsize_elem]
alias rte_pdcp_rte_ring_create_elem = ExternalFunction['rte_ring_create_elem', rte_ring_create_elem]
alias rte_pdcp_rte_ring_mp_enqueue_bulk_elem = ExternalFunction['rte_ring_mp_enqueue_bulk_elem', rte_ring_mp_enqueue_bulk_elem]
alias rte_pdcp_rte_ring_sp_enqueue_bulk_elem = ExternalFunction['rte_ring_sp_enqueue_bulk_elem', rte_ring_sp_enqueue_bulk_elem]
alias rte_pdcp_rte_ring_mp_hts_enqueue_bulk_elem = ExternalFunction['rte_ring_mp_hts_enqueue_bulk_elem', rte_ring_mp_hts_enqueue_bulk_elem]
alias rte_pdcp_rte_ring_mc_hts_dequeue_bulk_elem = ExternalFunction['rte_ring_mc_hts_dequeue_bulk_elem', rte_ring_mc_hts_dequeue_bulk_elem]
alias rte_pdcp_rte_ring_mp_hts_enqueue_burst_elem = ExternalFunction['rte_ring_mp_hts_enqueue_burst_elem', rte_ring_mp_hts_enqueue_burst_elem]
alias rte_pdcp_rte_ring_mc_hts_dequeue_burst_elem = ExternalFunction['rte_ring_mc_hts_dequeue_burst_elem', rte_ring_mc_hts_dequeue_burst_elem]
alias rte_pdcp_rte_ring_mp_hts_enqueue_bulk = ExternalFunction['rte_ring_mp_hts_enqueue_bulk', rte_ring_mp_hts_enqueue_bulk]
alias rte_pdcp_rte_ring_mc_hts_dequeue_bulk = ExternalFunction['rte_ring_mc_hts_dequeue_bulk', rte_ring_mc_hts_dequeue_bulk]
alias rte_pdcp_rte_ring_mp_hts_enqueue_burst = ExternalFunction['rte_ring_mp_hts_enqueue_burst', rte_ring_mp_hts_enqueue_burst]
alias rte_pdcp_rte_ring_mc_hts_dequeue_burst = ExternalFunction['rte_ring_mc_hts_dequeue_burst', rte_ring_mc_hts_dequeue_burst]
alias rte_pdcp_rte_ring_mp_rts_enqueue_bulk_elem = ExternalFunction['rte_ring_mp_rts_enqueue_bulk_elem', rte_ring_mp_rts_enqueue_bulk_elem]
alias rte_pdcp_rte_ring_mc_rts_dequeue_bulk_elem = ExternalFunction['rte_ring_mc_rts_dequeue_bulk_elem', rte_ring_mc_rts_dequeue_bulk_elem]
alias rte_pdcp_rte_ring_mp_rts_enqueue_burst_elem = ExternalFunction['rte_ring_mp_rts_enqueue_burst_elem', rte_ring_mp_rts_enqueue_burst_elem]
alias rte_pdcp_rte_ring_mc_rts_dequeue_burst_elem = ExternalFunction['rte_ring_mc_rts_dequeue_burst_elem', rte_ring_mc_rts_dequeue_burst_elem]
alias rte_pdcp_rte_ring_mp_rts_enqueue_bulk = ExternalFunction['rte_ring_mp_rts_enqueue_bulk', rte_ring_mp_rts_enqueue_bulk]
alias rte_pdcp_rte_ring_mc_rts_dequeue_bulk = ExternalFunction['rte_ring_mc_rts_dequeue_bulk', rte_ring_mc_rts_dequeue_bulk]
alias rte_pdcp_rte_ring_mp_rts_enqueue_burst = ExternalFunction['rte_ring_mp_rts_enqueue_burst', rte_ring_mp_rts_enqueue_burst]
alias rte_pdcp_rte_ring_mc_rts_dequeue_burst = ExternalFunction['rte_ring_mc_rts_dequeue_burst', rte_ring_mc_rts_dequeue_burst]
alias rte_pdcp_rte_ring_get_prod_htd_max = ExternalFunction['rte_ring_get_prod_htd_max', rte_ring_get_prod_htd_max]
alias rte_pdcp_rte_ring_set_prod_htd_max = ExternalFunction['rte_ring_set_prod_htd_max', rte_ring_set_prod_htd_max]
alias rte_pdcp_rte_ring_get_cons_htd_max = ExternalFunction['rte_ring_get_cons_htd_max', rte_ring_get_cons_htd_max]
alias rte_pdcp_rte_ring_set_cons_htd_max = ExternalFunction['rte_ring_set_cons_htd_max', rte_ring_set_cons_htd_max]
alias rte_pdcp_rte_ring_enqueue_bulk_elem = ExternalFunction['rte_ring_enqueue_bulk_elem', rte_ring_enqueue_bulk_elem]
alias rte_pdcp_rte_ring_mp_enqueue_elem = ExternalFunction['rte_ring_mp_enqueue_elem', rte_ring_mp_enqueue_elem]
alias rte_pdcp_rte_ring_sp_enqueue_elem = ExternalFunction['rte_ring_sp_enqueue_elem', rte_ring_sp_enqueue_elem]
alias rte_pdcp_rte_ring_enqueue_elem = ExternalFunction['rte_ring_enqueue_elem', rte_ring_enqueue_elem]
alias rte_pdcp_rte_ring_mc_dequeue_bulk_elem = ExternalFunction['rte_ring_mc_dequeue_bulk_elem', rte_ring_mc_dequeue_bulk_elem]
alias rte_pdcp_rte_ring_sc_dequeue_bulk_elem = ExternalFunction['rte_ring_sc_dequeue_bulk_elem', rte_ring_sc_dequeue_bulk_elem]
alias rte_pdcp_rte_ring_dequeue_bulk_elem = ExternalFunction['rte_ring_dequeue_bulk_elem', rte_ring_dequeue_bulk_elem]
alias rte_pdcp_rte_ring_mc_dequeue_elem = ExternalFunction['rte_ring_mc_dequeue_elem', rte_ring_mc_dequeue_elem]
alias rte_pdcp_rte_ring_sc_dequeue_elem = ExternalFunction['rte_ring_sc_dequeue_elem', rte_ring_sc_dequeue_elem]
alias rte_pdcp_rte_ring_dequeue_elem = ExternalFunction['rte_ring_dequeue_elem', rte_ring_dequeue_elem]
alias rte_pdcp_rte_ring_mp_enqueue_burst_elem = ExternalFunction['rte_ring_mp_enqueue_burst_elem', rte_ring_mp_enqueue_burst_elem]
alias rte_pdcp_rte_ring_sp_enqueue_burst_elem = ExternalFunction['rte_ring_sp_enqueue_burst_elem', rte_ring_sp_enqueue_burst_elem]
alias rte_pdcp_rte_ring_enqueue_burst_elem = ExternalFunction['rte_ring_enqueue_burst_elem', rte_ring_enqueue_burst_elem]
alias rte_pdcp_rte_ring_mc_dequeue_burst_elem = ExternalFunction['rte_ring_mc_dequeue_burst_elem', rte_ring_mc_dequeue_burst_elem]
alias rte_pdcp_rte_ring_sc_dequeue_burst_elem = ExternalFunction['rte_ring_sc_dequeue_burst_elem', rte_ring_sc_dequeue_burst_elem]
alias rte_pdcp_rte_ring_dequeue_burst_elem = ExternalFunction['rte_ring_dequeue_burst_elem', rte_ring_dequeue_burst_elem]
alias rte_pdcp_rte_ring_enqueue_bulk_elem_start = ExternalFunction['rte_ring_enqueue_bulk_elem_start', rte_ring_enqueue_bulk_elem_start]
alias rte_pdcp_rte_ring_enqueue_bulk_start = ExternalFunction['rte_ring_enqueue_bulk_start', rte_ring_enqueue_bulk_start]
alias rte_pdcp_rte_ring_enqueue_burst_elem_start = ExternalFunction['rte_ring_enqueue_burst_elem_start', rte_ring_enqueue_burst_elem_start]
alias rte_pdcp_rte_ring_enqueue_burst_start = ExternalFunction['rte_ring_enqueue_burst_start', rte_ring_enqueue_burst_start]
alias rte_pdcp_rte_ring_enqueue_elem_finish = ExternalFunction['rte_ring_enqueue_elem_finish', rte_ring_enqueue_elem_finish]
alias rte_pdcp_rte_ring_enqueue_finish = ExternalFunction['rte_ring_enqueue_finish', rte_ring_enqueue_finish]
alias rte_pdcp_rte_ring_dequeue_bulk_elem_start = ExternalFunction['rte_ring_dequeue_bulk_elem_start', rte_ring_dequeue_bulk_elem_start]
alias rte_pdcp_rte_ring_dequeue_bulk_start = ExternalFunction['rte_ring_dequeue_bulk_start', rte_ring_dequeue_bulk_start]
alias rte_pdcp_rte_ring_dequeue_burst_elem_start = ExternalFunction['rte_ring_dequeue_burst_elem_start', rte_ring_dequeue_burst_elem_start]
alias rte_pdcp_rte_ring_dequeue_burst_start = ExternalFunction['rte_ring_dequeue_burst_start', rte_ring_dequeue_burst_start]
alias rte_pdcp_rte_ring_dequeue_elem_finish = ExternalFunction['rte_ring_dequeue_elem_finish', rte_ring_dequeue_elem_finish]
alias rte_pdcp_rte_ring_dequeue_finish = ExternalFunction['rte_ring_dequeue_finish', rte_ring_dequeue_finish]
alias rte_pdcp_rte_ring_enqueue_zc_bulk_elem_start = ExternalFunction['rte_ring_enqueue_zc_bulk_elem_start', rte_ring_enqueue_zc_bulk_elem_start]
alias rte_pdcp_rte_ring_enqueue_zc_bulk_start = ExternalFunction['rte_ring_enqueue_zc_bulk_start', rte_ring_enqueue_zc_bulk_start]
alias rte_pdcp_rte_ring_enqueue_zc_burst_elem_start = ExternalFunction['rte_ring_enqueue_zc_burst_elem_start', rte_ring_enqueue_zc_burst_elem_start]
alias rte_pdcp_rte_ring_enqueue_zc_burst_start = ExternalFunction['rte_ring_enqueue_zc_burst_start', rte_ring_enqueue_zc_burst_start]
alias rte_pdcp_rte_ring_enqueue_zc_elem_finish = ExternalFunction['rte_ring_enqueue_zc_elem_finish', rte_ring_enqueue_zc_elem_finish]
alias rte_pdcp_rte_ring_enqueue_zc_finish = ExternalFunction['rte_ring_enqueue_zc_finish', rte_ring_enqueue_zc_finish]
alias rte_pdcp_rte_ring_dequeue_zc_bulk_elem_start = ExternalFunction['rte_ring_dequeue_zc_bulk_elem_start', rte_ring_dequeue_zc_bulk_elem_start]
alias rte_pdcp_rte_ring_dequeue_zc_bulk_start = ExternalFunction['rte_ring_dequeue_zc_bulk_start', rte_ring_dequeue_zc_bulk_start]
alias rte_pdcp_rte_ring_dequeue_zc_burst_elem_start = ExternalFunction['rte_ring_dequeue_zc_burst_elem_start', rte_ring_dequeue_zc_burst_elem_start]
alias rte_pdcp_rte_ring_dequeue_zc_burst_start = ExternalFunction['rte_ring_dequeue_zc_burst_start', rte_ring_dequeue_zc_burst_start]
alias rte_pdcp_rte_ring_dequeue_zc_elem_finish = ExternalFunction['rte_ring_dequeue_zc_elem_finish', rte_ring_dequeue_zc_elem_finish]
alias rte_pdcp_rte_ring_dequeue_zc_finish = ExternalFunction['rte_ring_dequeue_zc_finish', rte_ring_dequeue_zc_finish]
alias rte_pdcp_rte_ring_get_memsize = ExternalFunction['rte_ring_get_memsize', rte_ring_get_memsize]
alias rte_pdcp_rte_ring_init = ExternalFunction['rte_ring_init', rte_ring_init]
alias rte_pdcp_rte_ring_free = ExternalFunction['rte_ring_free', rte_ring_free]
alias rte_pdcp_rte_ring_create = ExternalFunction['rte_ring_create', rte_ring_create]
alias rte_pdcp_rte_ring_dump = ExternalFunction['rte_ring_dump', rte_ring_dump]
alias rte_pdcp_rte_ring_headtail_dump = ExternalFunction['rte_ring_headtail_dump', rte_ring_headtail_dump]
alias rte_pdcp_rte_ring_mp_enqueue_bulk = ExternalFunction['rte_ring_mp_enqueue_bulk', rte_ring_mp_enqueue_bulk]
alias rte_pdcp_rte_ring_sp_enqueue_bulk = ExternalFunction['rte_ring_sp_enqueue_bulk', rte_ring_sp_enqueue_bulk]
alias rte_pdcp_rte_ring_enqueue_bulk = ExternalFunction['rte_ring_enqueue_bulk', rte_ring_enqueue_bulk]
alias rte_pdcp_rte_ring_mp_enqueue = ExternalFunction['rte_ring_mp_enqueue', rte_ring_mp_enqueue]
alias rte_pdcp_rte_ring_sp_enqueue = ExternalFunction['rte_ring_sp_enqueue', rte_ring_sp_enqueue]
alias rte_pdcp_rte_ring_enqueue = ExternalFunction['rte_ring_enqueue', rte_ring_enqueue]
alias rte_pdcp_rte_ring_mc_dequeue_bulk = ExternalFunction['rte_ring_mc_dequeue_bulk', rte_ring_mc_dequeue_bulk]
alias rte_pdcp_rte_ring_sc_dequeue_bulk = ExternalFunction['rte_ring_sc_dequeue_bulk', rte_ring_sc_dequeue_bulk]
alias rte_pdcp_rte_ring_dequeue_bulk = ExternalFunction['rte_ring_dequeue_bulk', rte_ring_dequeue_bulk]
alias rte_pdcp_rte_ring_mc_dequeue = ExternalFunction['rte_ring_mc_dequeue', rte_ring_mc_dequeue]
alias rte_pdcp_rte_ring_sc_dequeue = ExternalFunction['rte_ring_sc_dequeue', rte_ring_sc_dequeue]
alias rte_pdcp_rte_ring_dequeue = ExternalFunction['rte_ring_dequeue', rte_ring_dequeue]
alias rte_pdcp_rte_ring_reset = ExternalFunction['rte_ring_reset', rte_ring_reset]
alias rte_pdcp_rte_ring_count = ExternalFunction['rte_ring_count', rte_ring_count]
alias rte_pdcp_rte_ring_free_count = ExternalFunction['rte_ring_free_count', rte_ring_free_count]
alias rte_pdcp_rte_ring_full = ExternalFunction['rte_ring_full', rte_ring_full]
alias rte_pdcp_rte_ring_empty = ExternalFunction['rte_ring_empty', rte_ring_empty]
alias rte_pdcp_rte_ring_get_size = ExternalFunction['rte_ring_get_size', rte_ring_get_size]
alias rte_pdcp_rte_ring_get_capacity = ExternalFunction['rte_ring_get_capacity', rte_ring_get_capacity]
alias rte_pdcp_rte_ring_get_prod_sync_type = ExternalFunction['rte_ring_get_prod_sync_type', rte_ring_get_prod_sync_type]
alias rte_pdcp_rte_ring_is_prod_single = ExternalFunction['rte_ring_is_prod_single', rte_ring_is_prod_single]
alias rte_pdcp_rte_ring_get_cons_sync_type = ExternalFunction['rte_ring_get_cons_sync_type', rte_ring_get_cons_sync_type]
alias rte_pdcp_rte_ring_is_cons_single = ExternalFunction['rte_ring_is_cons_single', rte_ring_is_cons_single]
alias rte_pdcp_rte_ring_list_dump = ExternalFunction['rte_ring_list_dump', rte_ring_list_dump]
alias rte_pdcp_rte_ring_lookup = ExternalFunction['rte_ring_lookup', rte_ring_lookup]
alias rte_pdcp_rte_ring_mp_enqueue_burst = ExternalFunction['rte_ring_mp_enqueue_burst', rte_ring_mp_enqueue_burst]
alias rte_pdcp_rte_ring_sp_enqueue_burst = ExternalFunction['rte_ring_sp_enqueue_burst', rte_ring_sp_enqueue_burst]
alias rte_pdcp_rte_ring_enqueue_burst = ExternalFunction['rte_ring_enqueue_burst', rte_ring_enqueue_burst]
alias rte_pdcp_rte_ring_mc_dequeue_burst = ExternalFunction['rte_ring_mc_dequeue_burst', rte_ring_mc_dequeue_burst]
alias rte_pdcp_rte_ring_sc_dequeue_burst = ExternalFunction['rte_ring_sc_dequeue_burst', rte_ring_sc_dequeue_burst]
alias rte_pdcp_rte_ring_dequeue_burst = ExternalFunction['rte_ring_dequeue_burst', rte_ring_dequeue_burst]
alias rte_pdcp_rte_mov16 = ExternalFunction['rte_mov16', rte_mov16]
alias rte_pdcp_rte_mov32 = ExternalFunction['rte_mov32', rte_mov32]
alias rte_pdcp_rte_mov64 = ExternalFunction['rte_mov64', rte_mov64]
alias rte_pdcp_rte_mov128 = ExternalFunction['rte_mov128', rte_mov128]
alias rte_pdcp_rte_mov256 = ExternalFunction['rte_mov256', rte_mov256]
alias rte_pdcp_rte_mov48 = ExternalFunction['rte_mov48', rte_mov48]
alias rte_pdcp_rte_get_tsc_hz = ExternalFunction['rte_get_tsc_hz', rte_get_tsc_hz]
alias rte_pdcp_rte_get_tsc_cycles = ExternalFunction['rte_get_tsc_cycles', rte_get_tsc_cycles]
alias rte_pdcp_rte_get_timer_cycles = ExternalFunction['rte_get_timer_cycles', rte_get_timer_cycles]
alias rte_pdcp_rte_get_timer_hz = ExternalFunction['rte_get_timer_hz', rte_get_timer_hz]
alias rte_pdcp_rte_delay_ms = ExternalFunction['rte_delay_ms', rte_delay_ms]
alias rte_pdcp_rte_delay_us_block = ExternalFunction['rte_delay_us_block', rte_delay_us_block]
alias rte_pdcp_rte_delay_us_sleep = ExternalFunction['rte_delay_us_sleep', rte_delay_us_sleep]
alias rte_pdcp_rte_delay_us_callback_register = ExternalFunction['rte_delay_us_callback_register', rte_delay_us_callback_register]
alias rte_pdcp_rte_rdtsc = ExternalFunction['rte_rdtsc', rte_rdtsc]
alias rte_pdcp_rte_rdtsc_precise = ExternalFunction['rte_rdtsc_precise', rte_rdtsc_precise]
alias rte_pdcp_isalnum = ExternalFunction['isalnum', isalnum]
alias rte_pdcp_isalpha = ExternalFunction['isalpha', isalpha]
alias rte_pdcp_iscntrl = ExternalFunction['iscntrl', iscntrl]
alias rte_pdcp_isdigit = ExternalFunction['isdigit', isdigit]
alias rte_pdcp_islower = ExternalFunction['islower', islower]
alias rte_pdcp_isgraph = ExternalFunction['isgraph', isgraph]
alias rte_pdcp_isprint = ExternalFunction['isprint', isprint]
alias rte_pdcp_ispunct = ExternalFunction['ispunct', ispunct]
alias rte_pdcp_isspace = ExternalFunction['isspace', isspace]
alias rte_pdcp_isupper = ExternalFunction['isupper', isupper]
alias rte_pdcp_isxdigit = ExternalFunction['isxdigit', isxdigit]
alias rte_pdcp_tolower = ExternalFunction['tolower', tolower]
alias rte_pdcp_toupper = ExternalFunction['toupper', toupper]
alias rte_pdcp_isblank = ExternalFunction['isblank', isblank]
alias rte_pdcp_isascii = ExternalFunction['isascii', isascii]
alias rte_pdcp_toascii = ExternalFunction['toascii', toascii]
alias rte_pdcp_isalnum_l = ExternalFunction['isalnum_l', isalnum_l]
alias rte_pdcp_isalpha_l = ExternalFunction['isalpha_l', isalpha_l]
alias rte_pdcp_iscntrl_l = ExternalFunction['iscntrl_l', iscntrl_l]
alias rte_pdcp_isdigit_l = ExternalFunction['isdigit_l', isdigit_l]
alias rte_pdcp_islower_l = ExternalFunction['islower_l', islower_l]
alias rte_pdcp_isgraph_l = ExternalFunction['isgraph_l', isgraph_l]
alias rte_pdcp_isprint_l = ExternalFunction['isprint_l', isprint_l]
alias rte_pdcp_ispunct_l = ExternalFunction['ispunct_l', ispunct_l]
alias rte_pdcp_isspace_l = ExternalFunction['isspace_l', isspace_l]
alias rte_pdcp_isupper_l = ExternalFunction['isupper_l', isupper_l]
alias rte_pdcp_isxdigit_l = ExternalFunction['isxdigit_l', isxdigit_l]
alias rte_pdcp_isblank_l = ExternalFunction['isblank_l', isblank_l]
alias rte_pdcp_tolower_l = ExternalFunction['tolower_l', tolower_l]
alias rte_pdcp_toupper_l = ExternalFunction['toupper_l', toupper_l]
alias rte_pdcp_rte_strsplit = ExternalFunction['rte_strsplit', rte_strsplit]
alias rte_pdcp_rte_strlcpy = ExternalFunction['rte_strlcpy', rte_strlcpy]
alias rte_pdcp_rte_strlcat = ExternalFunction['rte_strlcat', rte_strlcat]
alias rte_pdcp_rte_strscpy = ExternalFunction['rte_strscpy', rte_strscpy]
alias rte_pdcp_rte_str_skip_leading_spaces = ExternalFunction['rte_str_skip_leading_spaces', rte_str_skip_leading_spaces]
alias rte_pdcp_rte_trace_is_enabled = ExternalFunction['rte_trace_is_enabled', rte_trace_is_enabled]
alias rte_pdcp_rte_trace_feature_is_enabled = ExternalFunction['rte_trace_feature_is_enabled', rte_trace_feature_is_enabled]
alias rte_pdcp_rte_trace_mode_set = ExternalFunction['rte_trace_mode_set', rte_trace_mode_set]
alias rte_pdcp_rte_trace_mode_get = ExternalFunction['rte_trace_mode_get', rte_trace_mode_get]
alias rte_pdcp_rte_trace_pattern = ExternalFunction['rte_trace_pattern', rte_trace_pattern]
alias rte_pdcp_rte_trace_regexp = ExternalFunction['rte_trace_regexp', rte_trace_regexp]
alias rte_pdcp_rte_trace_save = ExternalFunction['rte_trace_save', rte_trace_save]
alias rte_pdcp_rte_trace_metadata_dump = ExternalFunction['rte_trace_metadata_dump', rte_trace_metadata_dump]
alias rte_pdcp_rte_trace_dump = ExternalFunction['rte_trace_dump', rte_trace_dump]
alias rte_pdcp_rte_trace_point_enable = ExternalFunction['rte_trace_point_enable', rte_trace_point_enable]
alias rte_pdcp_rte_trace_point_disable = ExternalFunction['rte_trace_point_disable', rte_trace_point_disable]
alias rte_pdcp_rte_trace_point_is_enabled = ExternalFunction['rte_trace_point_is_enabled', rte_trace_point_is_enabled]
alias rte_pdcp_rte_trace_point_lookup = ExternalFunction['rte_trace_point_lookup', rte_trace_point_lookup]
alias rte_pdcp_rte_mempool_trace_ops_dequeue_bulk = ExternalFunction['rte_mempool_trace_ops_dequeue_bulk', rte_mempool_trace_ops_dequeue_bulk]
alias rte_pdcp_rte_mempool_trace_ops_dequeue_contig_blocks = ExternalFunction['rte_mempool_trace_ops_dequeue_contig_blocks', rte_mempool_trace_ops_dequeue_contig_blocks]
alias rte_pdcp_rte_mempool_trace_ops_enqueue_bulk = ExternalFunction['rte_mempool_trace_ops_enqueue_bulk', rte_mempool_trace_ops_enqueue_bulk]
alias rte_pdcp_rte_mempool_trace_generic_put = ExternalFunction['rte_mempool_trace_generic_put', rte_mempool_trace_generic_put]
alias rte_pdcp_rte_mempool_trace_put_bulk = ExternalFunction['rte_mempool_trace_put_bulk', rte_mempool_trace_put_bulk]
alias rte_pdcp_rte_mempool_trace_generic_get = ExternalFunction['rte_mempool_trace_generic_get', rte_mempool_trace_generic_get]
alias rte_pdcp_rte_mempool_trace_get_bulk = ExternalFunction['rte_mempool_trace_get_bulk', rte_mempool_trace_get_bulk]
alias rte_pdcp_rte_mempool_trace_get_contig_blocks = ExternalFunction['rte_mempool_trace_get_contig_blocks', rte_mempool_trace_get_contig_blocks]
alias rte_pdcp_rte_mempool_trace_default_cache = ExternalFunction['rte_mempool_trace_default_cache', rte_mempool_trace_default_cache]
alias rte_pdcp_rte_mempool_trace_cache_flush = ExternalFunction['rte_mempool_trace_cache_flush', rte_mempool_trace_cache_flush]
alias rte_pdcp_rte_mempool_get_header = ExternalFunction['rte_mempool_get_header', rte_mempool_get_header]
alias rte_pdcp_rte_mempool_from_obj = ExternalFunction['rte_mempool_from_obj', rte_mempool_from_obj]
alias rte_pdcp_rte_mempool_get_trailer = ExternalFunction['rte_mempool_get_trailer', rte_mempool_get_trailer]
alias rte_pdcp_rte_mempool_check_cookies = ExternalFunction['rte_mempool_check_cookies', rte_mempool_check_cookies]
alias rte_pdcp_rte_mempool_contig_blocks_check_cookies = ExternalFunction['rte_mempool_contig_blocks_check_cookies', rte_mempool_contig_blocks_check_cookies]
alias rte_pdcp_rte_mempool_op_calc_mem_size_helper = ExternalFunction['rte_mempool_op_calc_mem_size_helper', rte_mempool_op_calc_mem_size_helper]
alias rte_pdcp_rte_mempool_op_calc_mem_size_default = ExternalFunction['rte_mempool_op_calc_mem_size_default', rte_mempool_op_calc_mem_size_default]
alias rte_pdcp_rte_mempool_op_populate_helper = ExternalFunction['rte_mempool_op_populate_helper', rte_mempool_op_populate_helper]
alias rte_pdcp_rte_mempool_op_populate_default = ExternalFunction['rte_mempool_op_populate_default', rte_mempool_op_populate_default]
alias rte_pdcp_rte_mempool_get_ops = ExternalFunction['rte_mempool_get_ops', rte_mempool_get_ops]
alias rte_pdcp_rte_mempool_ops_alloc = ExternalFunction['rte_mempool_ops_alloc', rte_mempool_ops_alloc]
alias rte_pdcp_rte_mempool_ops_dequeue_bulk = ExternalFunction['rte_mempool_ops_dequeue_bulk', rte_mempool_ops_dequeue_bulk]
alias rte_pdcp_rte_mempool_ops_dequeue_contig_blocks = ExternalFunction['rte_mempool_ops_dequeue_contig_blocks', rte_mempool_ops_dequeue_contig_blocks]
alias rte_pdcp_rte_mempool_ops_enqueue_bulk = ExternalFunction['rte_mempool_ops_enqueue_bulk', rte_mempool_ops_enqueue_bulk]
alias rte_pdcp_rte_mempool_ops_get_count = ExternalFunction['rte_mempool_ops_get_count', rte_mempool_ops_get_count]
alias rte_pdcp_rte_mempool_ops_calc_mem_size = ExternalFunction['rte_mempool_ops_calc_mem_size', rte_mempool_ops_calc_mem_size]
alias rte_pdcp_rte_mempool_ops_populate = ExternalFunction['rte_mempool_ops_populate', rte_mempool_ops_populate]
alias rte_pdcp_rte_mempool_ops_get_info = ExternalFunction['rte_mempool_ops_get_info', rte_mempool_ops_get_info]
alias rte_pdcp_rte_mempool_ops_free = ExternalFunction['rte_mempool_ops_free', rte_mempool_ops_free]
alias rte_pdcp_rte_mempool_set_ops_byname = ExternalFunction['rte_mempool_set_ops_byname', rte_mempool_set_ops_byname]
alias rte_pdcp_rte_mempool_register_ops = ExternalFunction['rte_mempool_register_ops', rte_mempool_register_ops]
alias rte_pdcp_rte_mempool_free = ExternalFunction['rte_mempool_free', rte_mempool_free]
alias rte_pdcp_rte_mempool_create = ExternalFunction['rte_mempool_create', rte_mempool_create]
alias rte_pdcp_rte_mempool_create_empty = ExternalFunction['rte_mempool_create_empty', rte_mempool_create_empty]
alias rte_pdcp_rte_mempool_populate_iova = ExternalFunction['rte_mempool_populate_iova', rte_mempool_populate_iova]
alias rte_pdcp_rte_mempool_populate_virt = ExternalFunction['rte_mempool_populate_virt', rte_mempool_populate_virt]
alias rte_pdcp_rte_mempool_populate_default = ExternalFunction['rte_mempool_populate_default', rte_mempool_populate_default]
alias rte_pdcp_rte_mempool_populate_anon = ExternalFunction['rte_mempool_populate_anon', rte_mempool_populate_anon]
alias rte_pdcp_rte_mempool_obj_iter = ExternalFunction['rte_mempool_obj_iter', rte_mempool_obj_iter]
alias rte_pdcp_rte_mempool_mem_iter = ExternalFunction['rte_mempool_mem_iter', rte_mempool_mem_iter]
alias rte_pdcp_rte_mempool_dump = ExternalFunction['rte_mempool_dump', rte_mempool_dump]
alias rte_pdcp_rte_mempool_cache_create = ExternalFunction['rte_mempool_cache_create', rte_mempool_cache_create]
alias rte_pdcp_rte_mempool_cache_free = ExternalFunction['rte_mempool_cache_free', rte_mempool_cache_free]
alias rte_pdcp_rte_mempool_default_cache = ExternalFunction['rte_mempool_default_cache', rte_mempool_default_cache]
alias rte_pdcp_rte_mempool_cache_flush = ExternalFunction['rte_mempool_cache_flush', rte_mempool_cache_flush]
alias rte_pdcp_rte_mempool_do_generic_put = ExternalFunction['rte_mempool_do_generic_put', rte_mempool_do_generic_put]
alias rte_pdcp_rte_mempool_generic_put = ExternalFunction['rte_mempool_generic_put', rte_mempool_generic_put]
alias rte_pdcp_rte_mempool_put_bulk = ExternalFunction['rte_mempool_put_bulk', rte_mempool_put_bulk]
alias rte_pdcp_rte_mempool_put = ExternalFunction['rte_mempool_put', rte_mempool_put]
alias rte_pdcp_rte_mempool_do_generic_get = ExternalFunction['rte_mempool_do_generic_get', rte_mempool_do_generic_get]
alias rte_pdcp_rte_mempool_generic_get = ExternalFunction['rte_mempool_generic_get', rte_mempool_generic_get]
alias rte_pdcp_rte_mempool_get_bulk = ExternalFunction['rte_mempool_get_bulk', rte_mempool_get_bulk]
alias rte_pdcp_rte_mempool_get = ExternalFunction['rte_mempool_get', rte_mempool_get]
alias rte_pdcp_rte_mempool_get_contig_blocks = ExternalFunction['rte_mempool_get_contig_blocks', rte_mempool_get_contig_blocks]
alias rte_pdcp_rte_mempool_avail_count = ExternalFunction['rte_mempool_avail_count', rte_mempool_avail_count]
alias rte_pdcp_rte_mempool_in_use_count = ExternalFunction['rte_mempool_in_use_count', rte_mempool_in_use_count]
alias rte_pdcp_rte_mempool_full = ExternalFunction['rte_mempool_full', rte_mempool_full]
alias rte_pdcp_rte_mempool_empty = ExternalFunction['rte_mempool_empty', rte_mempool_empty]
alias rte_pdcp_rte_mempool_virt2iova = ExternalFunction['rte_mempool_virt2iova', rte_mempool_virt2iova]
alias rte_pdcp_rte_mempool_audit = ExternalFunction['rte_mempool_audit', rte_mempool_audit]
alias rte_pdcp_rte_mempool_get_priv = ExternalFunction['rte_mempool_get_priv', rte_mempool_get_priv]
alias rte_pdcp_rte_mempool_list_dump = ExternalFunction['rte_mempool_list_dump', rte_mempool_list_dump]
alias rte_pdcp_rte_mempool_lookup = ExternalFunction['rte_mempool_lookup', rte_mempool_lookup]
alias rte_pdcp_rte_mempool_calc_obj_size = ExternalFunction['rte_mempool_calc_obj_size', rte_mempool_calc_obj_size]
alias rte_pdcp_rte_mempool_walk = ExternalFunction['rte_mempool_walk', rte_mempool_walk]
alias rte_pdcp_rte_mempool_get_mem_range = ExternalFunction['rte_mempool_get_mem_range', rte_mempool_get_mem_range]
alias rte_pdcp_rte_mempool_get_obj_alignment = ExternalFunction['rte_mempool_get_obj_alignment', rte_mempool_get_obj_alignment]
alias rte_pdcp_rte_mempool_get_page_size = ExternalFunction['rte_mempool_get_page_size', rte_mempool_get_page_size]
alias rte_pdcp_rte_mempool_event_callback_register = ExternalFunction['rte_mempool_event_callback_register', rte_mempool_event_callback_register]
alias rte_pdcp_rte_mempool_event_callback_unregister = ExternalFunction['rte_mempool_event_callback_unregister', rte_mempool_event_callback_unregister]
alias rte_pdcp_rte_constant_bswap16 = ExternalFunction['rte_constant_bswap16', rte_constant_bswap16]
alias rte_pdcp_rte_constant_bswap32 = ExternalFunction['rte_constant_bswap32', rte_constant_bswap32]
alias rte_pdcp_rte_constant_bswap64 = ExternalFunction['rte_constant_bswap64', rte_constant_bswap64]
alias rte_pdcp_select = ExternalFunction['select', select]
alias rte_pdcp_pselect = ExternalFunction['pselect', pselect]
alias rte_pdcp_rte_prefetch0 = ExternalFunction['rte_prefetch0', rte_prefetch0]
alias rte_pdcp_rte_prefetch1 = ExternalFunction['rte_prefetch1', rte_prefetch1]
alias rte_pdcp_rte_prefetch2 = ExternalFunction['rte_prefetch2', rte_prefetch2]
alias rte_pdcp_rte_prefetch_non_temporal = ExternalFunction['rte_prefetch_non_temporal', rte_prefetch_non_temporal]
alias rte_pdcp_rte_prefetch0_write = ExternalFunction['rte_prefetch0_write', rte_prefetch0_write]
alias rte_pdcp_rte_prefetch1_write = ExternalFunction['rte_prefetch1_write', rte_prefetch1_write]
alias rte_pdcp_rte_prefetch2_write = ExternalFunction['rte_prefetch2_write', rte_prefetch2_write]
alias rte_pdcp_rte_cldemote = ExternalFunction['rte_cldemote', rte_cldemote]
alias rte_pdcp_rte_get_ptype_l2_name = ExternalFunction['rte_get_ptype_l2_name', rte_get_ptype_l2_name]
alias rte_pdcp_rte_get_ptype_l3_name = ExternalFunction['rte_get_ptype_l3_name', rte_get_ptype_l3_name]
alias rte_pdcp_rte_get_ptype_l4_name = ExternalFunction['rte_get_ptype_l4_name', rte_get_ptype_l4_name]
alias rte_pdcp_rte_get_ptype_tunnel_name = ExternalFunction['rte_get_ptype_tunnel_name', rte_get_ptype_tunnel_name]
alias rte_pdcp_rte_get_ptype_inner_l2_name = ExternalFunction['rte_get_ptype_inner_l2_name', rte_get_ptype_inner_l2_name]
alias rte_pdcp_rte_get_ptype_inner_l3_name = ExternalFunction['rte_get_ptype_inner_l3_name', rte_get_ptype_inner_l3_name]
alias rte_pdcp_rte_get_ptype_inner_l4_name = ExternalFunction['rte_get_ptype_inner_l4_name', rte_get_ptype_inner_l4_name]
alias rte_pdcp_rte_get_ptype_name = ExternalFunction['rte_get_ptype_name', rte_get_ptype_name]
alias rte_pdcp_rte_get_rx_ol_flag_name = ExternalFunction['rte_get_rx_ol_flag_name', rte_get_rx_ol_flag_name]
alias rte_pdcp_rte_get_rx_ol_flag_list = ExternalFunction['rte_get_rx_ol_flag_list', rte_get_rx_ol_flag_list]
alias rte_pdcp_rte_get_tx_ol_flag_name = ExternalFunction['rte_get_tx_ol_flag_name', rte_get_tx_ol_flag_name]
alias rte_pdcp_rte_get_tx_ol_flag_list = ExternalFunction['rte_get_tx_ol_flag_list', rte_get_tx_ol_flag_list]
alias rte_pdcp_rte_mbuf_prefetch_part1 = ExternalFunction['rte_mbuf_prefetch_part1', rte_mbuf_prefetch_part1]
alias rte_pdcp_rte_mbuf_prefetch_part2 = ExternalFunction['rte_mbuf_prefetch_part2', rte_mbuf_prefetch_part2]
alias rte_pdcp_rte_pktmbuf_priv_size = ExternalFunction['rte_pktmbuf_priv_size', rte_pktmbuf_priv_size]
alias rte_pdcp_rte_mbuf_iova_get = ExternalFunction['rte_mbuf_iova_get', rte_mbuf_iova_get]
alias rte_pdcp_rte_mbuf_iova_set = ExternalFunction['rte_mbuf_iova_set', rte_mbuf_iova_set]
alias rte_pdcp_rte_mbuf_data_iova = ExternalFunction['rte_mbuf_data_iova', rte_mbuf_data_iova]
alias rte_pdcp_rte_mbuf_data_iova_default = ExternalFunction['rte_mbuf_data_iova_default', rte_mbuf_data_iova_default]
alias rte_pdcp_rte_mbuf_from_indirect = ExternalFunction['rte_mbuf_from_indirect', rte_mbuf_from_indirect]
alias rte_pdcp_rte_mbuf_buf_addr = ExternalFunction['rte_mbuf_buf_addr', rte_mbuf_buf_addr]
alias rte_pdcp_rte_mbuf_data_addr_default = ExternalFunction['rte_mbuf_data_addr_default', rte_mbuf_data_addr_default]
alias rte_pdcp_rte_mbuf_to_baddr = ExternalFunction['rte_mbuf_to_baddr', rte_mbuf_to_baddr]
alias rte_pdcp_rte_mbuf_to_priv = ExternalFunction['rte_mbuf_to_priv', rte_mbuf_to_priv]
alias rte_pdcp_rte_pktmbuf_priv_flags = ExternalFunction['rte_pktmbuf_priv_flags', rte_pktmbuf_priv_flags]
alias rte_pdcp_rte_mbuf_refcnt_read = ExternalFunction['rte_mbuf_refcnt_read', rte_mbuf_refcnt_read]
alias rte_pdcp_rte_mbuf_refcnt_set = ExternalFunction['rte_mbuf_refcnt_set', rte_mbuf_refcnt_set]
alias rte_pdcp_rte_mbuf_refcnt_update = ExternalFunction['rte_mbuf_refcnt_update', rte_mbuf_refcnt_update]
alias rte_pdcp_rte_mbuf_ext_refcnt_read = ExternalFunction['rte_mbuf_ext_refcnt_read', rte_mbuf_ext_refcnt_read]
alias rte_pdcp_rte_mbuf_ext_refcnt_set = ExternalFunction['rte_mbuf_ext_refcnt_set', rte_mbuf_ext_refcnt_set]
alias rte_pdcp_rte_mbuf_ext_refcnt_update = ExternalFunction['rte_mbuf_ext_refcnt_update', rte_mbuf_ext_refcnt_update]
alias rte_pdcp_rte_mbuf_sanity_check = ExternalFunction['rte_mbuf_sanity_check', rte_mbuf_sanity_check]
alias rte_pdcp_rte_mbuf_check = ExternalFunction['rte_mbuf_check', rte_mbuf_check]
alias rte_pdcp_rte_mbuf_raw_alloc = ExternalFunction['rte_mbuf_raw_alloc', rte_mbuf_raw_alloc]
alias rte_pdcp_rte_mbuf_raw_alloc_bulk = ExternalFunction['rte_mbuf_raw_alloc_bulk', rte_mbuf_raw_alloc_bulk]
alias rte_pdcp_rte_mbuf_raw_free = ExternalFunction['rte_mbuf_raw_free', rte_mbuf_raw_free]
alias rte_pdcp_rte_mbuf_raw_free_bulk = ExternalFunction['rte_mbuf_raw_free_bulk', rte_mbuf_raw_free_bulk]
alias rte_pdcp_rte_pktmbuf_init = ExternalFunction['rte_pktmbuf_init', rte_pktmbuf_init]
alias rte_pdcp_rte_pktmbuf_pool_init = ExternalFunction['rte_pktmbuf_pool_init', rte_pktmbuf_pool_init]
alias rte_pdcp_rte_pktmbuf_pool_create = ExternalFunction['rte_pktmbuf_pool_create', rte_pktmbuf_pool_create]
alias rte_pdcp_rte_pktmbuf_pool_create_by_ops = ExternalFunction['rte_pktmbuf_pool_create_by_ops', rte_pktmbuf_pool_create_by_ops]
alias rte_pdcp_rte_pktmbuf_pool_create_extbuf = ExternalFunction['rte_pktmbuf_pool_create_extbuf', rte_pktmbuf_pool_create_extbuf]
alias rte_pdcp_rte_pktmbuf_data_room_size = ExternalFunction['rte_pktmbuf_data_room_size', rte_pktmbuf_data_room_size]
alias rte_pdcp_rte_pktmbuf_reset_headroom = ExternalFunction['rte_pktmbuf_reset_headroom', rte_pktmbuf_reset_headroom]
alias rte_pdcp_rte_pktmbuf_reset = ExternalFunction['rte_pktmbuf_reset', rte_pktmbuf_reset]
alias rte_pdcp_rte_pktmbuf_alloc = ExternalFunction['rte_pktmbuf_alloc', rte_pktmbuf_alloc]
alias rte_pdcp_rte_pktmbuf_alloc_bulk = ExternalFunction['rte_pktmbuf_alloc_bulk', rte_pktmbuf_alloc_bulk]
alias rte_pdcp_rte_pktmbuf_ext_shinfo_init_helper = ExternalFunction['rte_pktmbuf_ext_shinfo_init_helper', rte_pktmbuf_ext_shinfo_init_helper]
alias rte_pdcp_rte_pktmbuf_attach_extbuf = ExternalFunction['rte_pktmbuf_attach_extbuf', rte_pktmbuf_attach_extbuf]
alias rte_pdcp_rte_mbuf_dynfield_copy = ExternalFunction['rte_mbuf_dynfield_copy', rte_mbuf_dynfield_copy]
alias rte_pdcp_rte_pktmbuf_attach = ExternalFunction['rte_pktmbuf_attach', rte_pktmbuf_attach]
alias rte_pdcp_rte_pktmbuf_detach = ExternalFunction['rte_pktmbuf_detach', rte_pktmbuf_detach]
alias rte_pdcp_rte_pktmbuf_prefree_seg = ExternalFunction['rte_pktmbuf_prefree_seg', rte_pktmbuf_prefree_seg]
alias rte_pdcp_rte_pktmbuf_free_seg = ExternalFunction['rte_pktmbuf_free_seg', rte_pktmbuf_free_seg]
alias rte_pdcp_rte_pktmbuf_free = ExternalFunction['rte_pktmbuf_free', rte_pktmbuf_free]
alias rte_pdcp_rte_pktmbuf_free_bulk = ExternalFunction['rte_pktmbuf_free_bulk', rte_pktmbuf_free_bulk]
alias rte_pdcp_rte_pktmbuf_clone = ExternalFunction['rte_pktmbuf_clone', rte_pktmbuf_clone]
alias rte_pdcp_rte_pktmbuf_copy = ExternalFunction['rte_pktmbuf_copy', rte_pktmbuf_copy]
alias rte_pdcp_rte_pktmbuf_refcnt_update = ExternalFunction['rte_pktmbuf_refcnt_update', rte_pktmbuf_refcnt_update]
alias rte_pdcp_rte_pktmbuf_headroom = ExternalFunction['rte_pktmbuf_headroom', rte_pktmbuf_headroom]
alias rte_pdcp_rte_pktmbuf_tailroom = ExternalFunction['rte_pktmbuf_tailroom', rte_pktmbuf_tailroom]
alias rte_pdcp_rte_pktmbuf_lastseg = ExternalFunction['rte_pktmbuf_lastseg', rte_pktmbuf_lastseg]
alias rte_pdcp_rte_pktmbuf_prepend = ExternalFunction['rte_pktmbuf_prepend', rte_pktmbuf_prepend]
alias rte_pdcp_rte_pktmbuf_append = ExternalFunction['rte_pktmbuf_append', rte_pktmbuf_append]
alias rte_pdcp_rte_pktmbuf_adj = ExternalFunction['rte_pktmbuf_adj', rte_pktmbuf_adj]
alias rte_pdcp_rte_pktmbuf_trim = ExternalFunction['rte_pktmbuf_trim', rte_pktmbuf_trim]
alias rte_pdcp_rte_pktmbuf_is_contiguous = ExternalFunction['rte_pktmbuf_is_contiguous', rte_pktmbuf_is_contiguous]
alias rte_pdcp_rte_pktmbuf_read = ExternalFunction['rte_pktmbuf_read', rte_pktmbuf_read]
alias rte_pdcp_rte_pktmbuf_chain = ExternalFunction['rte_pktmbuf_chain', rte_pktmbuf_chain]
alias rte_pdcp_rte_mbuf_tx_offload = ExternalFunction['rte_mbuf_tx_offload', rte_mbuf_tx_offload]
alias rte_pdcp_rte_validate_tx_offload = ExternalFunction['rte_validate_tx_offload', rte_validate_tx_offload]
alias rte_pdcp_rte_pktmbuf_linearize = ExternalFunction['rte_pktmbuf_linearize', rte_pktmbuf_linearize]
alias rte_pdcp_rte_pktmbuf_dump = ExternalFunction['rte_pktmbuf_dump', rte_pktmbuf_dump]
alias rte_pdcp_rte_mbuf_sched_queue_get = ExternalFunction['rte_mbuf_sched_queue_get', rte_mbuf_sched_queue_get]
alias rte_pdcp_rte_mbuf_sched_traffic_class_get = ExternalFunction['rte_mbuf_sched_traffic_class_get', rte_mbuf_sched_traffic_class_get]
alias rte_pdcp_rte_mbuf_sched_color_get = ExternalFunction['rte_mbuf_sched_color_get', rte_mbuf_sched_color_get]
alias rte_pdcp_rte_mbuf_sched_get = ExternalFunction['rte_mbuf_sched_get', rte_mbuf_sched_get]
alias rte_pdcp_rte_mbuf_sched_queue_set = ExternalFunction['rte_mbuf_sched_queue_set', rte_mbuf_sched_queue_set]
alias rte_pdcp_rte_mbuf_sched_traffic_class_set = ExternalFunction['rte_mbuf_sched_traffic_class_set', rte_mbuf_sched_traffic_class_set]
alias rte_pdcp_rte_mbuf_sched_color_set = ExternalFunction['rte_mbuf_sched_color_set', rte_mbuf_sched_color_set]
alias rte_pdcp_rte_mbuf_sched_set = ExternalFunction['rte_mbuf_sched_set', rte_mbuf_sched_set]
alias rte_pdcp_rte_crypto_mbuf_to_vec = ExternalFunction['rte_crypto_mbuf_to_vec', rte_crypto_mbuf_to_vec]
alias rte_pdcp_rte_crypto_op_pool_create = ExternalFunction['rte_crypto_op_pool_create', rte_crypto_op_pool_create]
alias rte_pdcp_rte_crypto_op_alloc = ExternalFunction['rte_crypto_op_alloc', rte_crypto_op_alloc]
alias rte_pdcp_rte_crypto_op_bulk_alloc = ExternalFunction['rte_crypto_op_bulk_alloc', rte_crypto_op_bulk_alloc]
alias rte_pdcp_rte_crypto_op_free = ExternalFunction['rte_crypto_op_free', rte_crypto_op_free]
alias rte_pdcp_rte_crypto_sym_op_alloc_from_mbuf_priv_data = ExternalFunction['rte_crypto_sym_op_alloc_from_mbuf_priv_data', rte_crypto_sym_op_alloc_from_mbuf_priv_data]
alias rte_pdcp_rte_crypto_op_sym_xforms_alloc = ExternalFunction['rte_crypto_op_sym_xforms_alloc', rte_crypto_op_sym_xforms_alloc]
alias rte_pdcp_rte_crypto_op_attach_sym_session = ExternalFunction['rte_crypto_op_attach_sym_session', rte_crypto_op_attach_sym_session]
alias rte_pdcp_rte_crypto_op_attach_asym_session = ExternalFunction['rte_crypto_op_attach_asym_session', rte_crypto_op_attach_asym_session]
alias rte_pdcp_socket = ExternalFunction['socket', socket]
alias rte_pdcp_socketpair = ExternalFunction['socketpair', socketpair]
alias rte_pdcp_bind = ExternalFunction['bind', bind]
alias rte_pdcp_getsockname = ExternalFunction['getsockname', getsockname]
alias rte_pdcp_connect = ExternalFunction['connect', connect]
alias rte_pdcp_getpeername = ExternalFunction['getpeername', getpeername]
alias rte_pdcp_send = ExternalFunction['send', send]
alias rte_pdcp_recv = ExternalFunction['recv', recv]
alias rte_pdcp_sendto = ExternalFunction['sendto', sendto]
alias rte_pdcp_recvfrom = ExternalFunction['recvfrom', recvfrom]
alias rte_pdcp_sendmsg = ExternalFunction['sendmsg', sendmsg]
alias rte_pdcp_recvmsg = ExternalFunction['recvmsg', recvmsg]
alias rte_pdcp_getsockopt = ExternalFunction['getsockopt', getsockopt]
alias rte_pdcp_setsockopt = ExternalFunction['setsockopt', setsockopt]
alias rte_pdcp_listen = ExternalFunction['listen', listen]
alias rte_pdcp_accept = ExternalFunction['accept', accept]
alias rte_pdcp_shutdown = ExternalFunction['shutdown', shutdown]
alias rte_pdcp_sockatmark = ExternalFunction['sockatmark', sockatmark]
alias rte_pdcp_isfdtype = ExternalFunction['isfdtype', isfdtype]
alias rte_pdcp_ntohl = ExternalFunction['ntohl', ntohl]
alias rte_pdcp_ntohs = ExternalFunction['ntohs', ntohs]
alias rte_pdcp_htonl = ExternalFunction['htonl', htonl]
alias rte_pdcp_htons = ExternalFunction['htons', htons]
alias rte_pdcp_bindresvport = ExternalFunction['bindresvport', bindresvport]
alias rte_pdcp_bindresvport6 = ExternalFunction['bindresvport6', bindresvport6]
alias rte_pdcp_inet_addr = ExternalFunction['inet_addr', inet_addr]
alias rte_pdcp_inet_lnaof = ExternalFunction['inet_lnaof', inet_lnaof]
alias rte_pdcp_inet_makeaddr = ExternalFunction['inet_makeaddr', inet_makeaddr]
alias rte_pdcp_inet_netof = ExternalFunction['inet_netof', inet_netof]
alias rte_pdcp_inet_network = ExternalFunction['inet_network', inet_network]
alias rte_pdcp_inet_ntoa = ExternalFunction['inet_ntoa', inet_ntoa]
alias rte_pdcp_inet_pton = ExternalFunction['inet_pton', inet_pton]
alias rte_pdcp_inet_ntop = ExternalFunction['inet_ntop', inet_ntop]
alias rte_pdcp_inet_aton = ExternalFunction['inet_aton', inet_aton]
alias rte_pdcp_inet_neta = ExternalFunction['inet_neta', inet_neta]
alias rte_pdcp_inet_net_ntop = ExternalFunction['inet_net_ntop', inet_net_ntop]
alias rte_pdcp_inet_net_pton = ExternalFunction['inet_net_pton', inet_net_pton]
alias rte_pdcp_inet_nsap_addr = ExternalFunction['inet_nsap_addr', inet_nsap_addr]
alias rte_pdcp_inet_nsap_ntoa = ExternalFunction['inet_nsap_ntoa', inet_nsap_ntoa]
alias rte_pdcp_rte_raw_cksum = ExternalFunction['rte_raw_cksum', rte_raw_cksum]
alias rte_pdcp_rte_raw_cksum_mbuf = ExternalFunction['rte_raw_cksum_mbuf', rte_raw_cksum_mbuf]
alias rte_pdcp_rte_ipv4_hdr_len = ExternalFunction['rte_ipv4_hdr_len', rte_ipv4_hdr_len]
alias rte_pdcp_rte_ipv4_cksum = ExternalFunction['rte_ipv4_cksum', rte_ipv4_cksum]
alias rte_pdcp_rte_ipv4_cksum_simple = ExternalFunction['rte_ipv4_cksum_simple', rte_ipv4_cksum_simple]
alias rte_pdcp_rte_ipv4_phdr_cksum = ExternalFunction['rte_ipv4_phdr_cksum', rte_ipv4_phdr_cksum]
alias rte_pdcp_rte_ipv4_udptcp_cksum = ExternalFunction['rte_ipv4_udptcp_cksum', rte_ipv4_udptcp_cksum]
alias rte_pdcp_rte_ipv4_udptcp_cksum_mbuf = ExternalFunction['rte_ipv4_udptcp_cksum_mbuf', rte_ipv4_udptcp_cksum_mbuf]
alias rte_pdcp_rte_ipv4_udptcp_cksum_verify = ExternalFunction['rte_ipv4_udptcp_cksum_verify', rte_ipv4_udptcp_cksum_verify]
alias rte_pdcp_rte_ipv4_udptcp_cksum_mbuf_verify = ExternalFunction['rte_ipv4_udptcp_cksum_mbuf_verify', rte_ipv4_udptcp_cksum_mbuf_verify]
alias rte_pdcp_rte_srand = ExternalFunction['rte_srand', rte_srand]
alias rte_pdcp_rte_rand = ExternalFunction['rte_rand', rte_rand]
alias rte_pdcp_rte_rand_max = ExternalFunction['rte_rand_max', rte_rand_max]
alias rte_pdcp_rte_drand = ExternalFunction['rte_drand', rte_drand]
alias rte_pdcp_rte_is_same_ether_addr = ExternalFunction['rte_is_same_ether_addr', rte_is_same_ether_addr]
alias rte_pdcp_rte_is_zero_ether_addr = ExternalFunction['rte_is_zero_ether_addr', rte_is_zero_ether_addr]
alias rte_pdcp_rte_is_unicast_ether_addr = ExternalFunction['rte_is_unicast_ether_addr', rte_is_unicast_ether_addr]
alias rte_pdcp_rte_is_multicast_ether_addr = ExternalFunction['rte_is_multicast_ether_addr', rte_is_multicast_ether_addr]
alias rte_pdcp_rte_is_broadcast_ether_addr = ExternalFunction['rte_is_broadcast_ether_addr', rte_is_broadcast_ether_addr]
alias rte_pdcp_rte_is_universal_ether_addr = ExternalFunction['rte_is_universal_ether_addr', rte_is_universal_ether_addr]
alias rte_pdcp_rte_is_local_admin_ether_addr = ExternalFunction['rte_is_local_admin_ether_addr', rte_is_local_admin_ether_addr]
alias rte_pdcp_rte_is_valid_assigned_ether_addr = ExternalFunction['rte_is_valid_assigned_ether_addr', rte_is_valid_assigned_ether_addr]
alias rte_pdcp_rte_eth_random_addr = ExternalFunction['rte_eth_random_addr', rte_eth_random_addr]
alias rte_pdcp_rte_ether_addr_copy = ExternalFunction['rte_ether_addr_copy', rte_ether_addr_copy]
alias rte_pdcp_rte_ether_format_addr = ExternalFunction['rte_ether_format_addr', rte_ether_format_addr]
alias rte_pdcp_rte_ether_unformat_addr = ExternalFunction['rte_ether_unformat_addr', rte_ether_unformat_addr]
alias rte_pdcp_rte_vlan_strip = ExternalFunction['rte_vlan_strip', rte_vlan_strip]
alias rte_pdcp_rte_vlan_insert = ExternalFunction['rte_vlan_insert', rte_vlan_insert]
alias rte_pdcp_rte_ipv6_addr_eq = ExternalFunction['rte_ipv6_addr_eq', rte_ipv6_addr_eq]
alias rte_pdcp_rte_ipv6_addr_mask = ExternalFunction['rte_ipv6_addr_mask', rte_ipv6_addr_mask]
alias rte_pdcp_rte_ipv6_addr_eq_prefix = ExternalFunction['rte_ipv6_addr_eq_prefix', rte_ipv6_addr_eq_prefix]
alias rte_pdcp_rte_ipv6_mask_depth = ExternalFunction['rte_ipv6_mask_depth', rte_ipv6_mask_depth]
alias rte_pdcp_rte_ipv6_addr_is_unspec = ExternalFunction['rte_ipv6_addr_is_unspec', rte_ipv6_addr_is_unspec]
alias rte_pdcp_rte_ipv6_addr_is_loopback = ExternalFunction['rte_ipv6_addr_is_loopback', rte_ipv6_addr_is_loopback]
alias rte_pdcp_rte_ipv6_addr_is_linklocal = ExternalFunction['rte_ipv6_addr_is_linklocal', rte_ipv6_addr_is_linklocal]
alias rte_pdcp_rte_ipv6_addr_is_sitelocal = ExternalFunction['rte_ipv6_addr_is_sitelocal', rte_ipv6_addr_is_sitelocal]
alias rte_pdcp_rte_ipv6_addr_is_v4compat = ExternalFunction['rte_ipv6_addr_is_v4compat', rte_ipv6_addr_is_v4compat]
alias rte_pdcp_rte_ipv6_addr_is_v4mapped = ExternalFunction['rte_ipv6_addr_is_v4mapped', rte_ipv6_addr_is_v4mapped]
alias rte_pdcp_rte_ipv6_addr_is_mcast = ExternalFunction['rte_ipv6_addr_is_mcast', rte_ipv6_addr_is_mcast]
alias rte_pdcp_rte_ipv6_llocal_from_ethernet = ExternalFunction['rte_ipv6_llocal_from_ethernet', rte_ipv6_llocal_from_ethernet]
alias rte_pdcp_rte_ipv6_solnode_from_addr = ExternalFunction['rte_ipv6_solnode_from_addr', rte_ipv6_solnode_from_addr]
alias rte_pdcp_rte_ether_mcast_from_ipv6 = ExternalFunction['rte_ether_mcast_from_ipv6', rte_ether_mcast_from_ipv6]
alias rte_pdcp_rte_ipv6_check_version = ExternalFunction['rte_ipv6_check_version', rte_ipv6_check_version]
alias rte_pdcp_rte_ipv6_phdr_cksum = ExternalFunction['rte_ipv6_phdr_cksum', rte_ipv6_phdr_cksum]
alias rte_pdcp_rte_ipv6_udptcp_cksum = ExternalFunction['rte_ipv6_udptcp_cksum', rte_ipv6_udptcp_cksum]
alias rte_pdcp_rte_ipv6_udptcp_cksum_mbuf = ExternalFunction['rte_ipv6_udptcp_cksum_mbuf', rte_ipv6_udptcp_cksum_mbuf]
alias rte_pdcp_rte_ipv6_udptcp_cksum_verify = ExternalFunction['rte_ipv6_udptcp_cksum_verify', rte_ipv6_udptcp_cksum_verify]
alias rte_pdcp_rte_ipv6_udptcp_cksum_mbuf_verify = ExternalFunction['rte_ipv6_udptcp_cksum_mbuf_verify', rte_ipv6_udptcp_cksum_mbuf_verify]
alias rte_pdcp_rte_ipv6_get_next_ext = ExternalFunction['rte_ipv6_get_next_ext', rte_ipv6_get_next_ext]
alias rte_pdcp_rte_mbuf_dynfield_register = ExternalFunction['rte_mbuf_dynfield_register', rte_mbuf_dynfield_register]
alias rte_pdcp_rte_mbuf_dynfield_register_offset = ExternalFunction['rte_mbuf_dynfield_register_offset', rte_mbuf_dynfield_register_offset]
alias rte_pdcp_rte_mbuf_dynfield_lookup = ExternalFunction['rte_mbuf_dynfield_lookup', rte_mbuf_dynfield_lookup]
alias rte_pdcp_rte_mbuf_dynflag_register = ExternalFunction['rte_mbuf_dynflag_register', rte_mbuf_dynflag_register]
alias rte_pdcp_rte_mbuf_dynflag_register_bitnum = ExternalFunction['rte_mbuf_dynflag_register_bitnum', rte_mbuf_dynflag_register_bitnum]
alias rte_pdcp_rte_mbuf_dynflag_lookup = ExternalFunction['rte_mbuf_dynflag_lookup', rte_mbuf_dynflag_lookup]
alias rte_pdcp_rte_mbuf_dyn_dump = ExternalFunction['rte_mbuf_dyn_dump', rte_mbuf_dyn_dump]
alias rte_pdcp_rte_mbuf_dyn_rx_timestamp_register = ExternalFunction['rte_mbuf_dyn_rx_timestamp_register', rte_mbuf_dyn_rx_timestamp_register]
alias rte_pdcp_rte_mbuf_dyn_tx_timestamp_register = ExternalFunction['rte_mbuf_dyn_tx_timestamp_register', rte_mbuf_dyn_tx_timestamp_register]
alias rte_pdcp_rte_security_session_create = ExternalFunction['rte_security_session_create', rte_security_session_create]
alias rte_pdcp_rte_security_session_update = ExternalFunction['rte_security_session_update', rte_security_session_update]
alias rte_pdcp_rte_security_session_get_size = ExternalFunction['rte_security_session_get_size', rte_security_session_get_size]
alias rte_pdcp_rte_security_session_destroy = ExternalFunction['rte_security_session_destroy', rte_security_session_destroy]
alias rte_pdcp_rte_security_macsec_sc_create = ExternalFunction['rte_security_macsec_sc_create', rte_security_macsec_sc_create]
alias rte_pdcp_rte_security_macsec_sc_destroy = ExternalFunction['rte_security_macsec_sc_destroy', rte_security_macsec_sc_destroy]
alias rte_pdcp_rte_security_macsec_sa_create = ExternalFunction['rte_security_macsec_sa_create', rte_security_macsec_sa_create]
alias rte_pdcp_rte_security_macsec_sa_destroy = ExternalFunction['rte_security_macsec_sa_destroy', rte_security_macsec_sa_destroy]
alias rte_pdcp_rte_security_dynfield = ExternalFunction['rte_security_dynfield', rte_security_dynfield]
alias rte_pdcp_rte_security_oop_dynfield = ExternalFunction['rte_security_oop_dynfield', rte_security_oop_dynfield]
alias rte_pdcp_rte_security_dynfield_is_registered = ExternalFunction['rte_security_dynfield_is_registered', rte_security_dynfield_is_registered]
alias rte_pdcp_rte_security_ctx_flags_get = ExternalFunction['rte_security_ctx_flags_get', rte_security_ctx_flags_get]
alias rte_pdcp_rte_security_ctx_flags_set = ExternalFunction['rte_security_ctx_flags_set', rte_security_ctx_flags_set]
alias rte_pdcp_rte_security_session_opaque_data_get = ExternalFunction['rte_security_session_opaque_data_get', rte_security_session_opaque_data_get]
alias rte_pdcp_rte_security_session_opaque_data_set = ExternalFunction['rte_security_session_opaque_data_set', rte_security_session_opaque_data_set]
alias rte_pdcp_rte_security_session_fast_mdata_get = ExternalFunction['rte_security_session_fast_mdata_get', rte_security_session_fast_mdata_get]
alias rte_pdcp_rte_security_session_fast_mdata_set = ExternalFunction['rte_security_session_fast_mdata_set', rte_security_session_fast_mdata_set]
alias rte_pdcp_rte_security_set_pkt_metadata = ExternalFunction['rte_security_set_pkt_metadata', rte_security_set_pkt_metadata]
alias rte_pdcp_rte_security_attach_session = ExternalFunction['rte_security_attach_session', rte_security_attach_session]
alias rte_pdcp_rte_security_session_stats_get = ExternalFunction['rte_security_session_stats_get', rte_security_session_stats_get]
alias rte_pdcp_rte_security_macsec_sa_stats_get = ExternalFunction['rte_security_macsec_sa_stats_get', rte_security_macsec_sa_stats_get]
alias rte_pdcp_rte_security_macsec_sc_stats_get = ExternalFunction['rte_security_macsec_sc_stats_get', rte_security_macsec_sc_stats_get]
alias rte_pdcp_rte_security_capabilities_get = ExternalFunction['rte_security_capabilities_get', rte_security_capabilities_get]
alias rte_pdcp_rte_security_capability_get = ExternalFunction['rte_security_capability_get', rte_security_capability_get]
alias rte_pdcp_rte_security_rx_inject_configure = ExternalFunction['rte_security_rx_inject_configure', rte_security_rx_inject_configure]
alias rte_pdcp_rte_security_inb_pkt_rx_inject = ExternalFunction['rte_security_inb_pkt_rx_inject', rte_security_inb_pkt_rx_inject]
alias rte_pdcp_rte_pdcp_entity_establish = ExternalFunction['rte_pdcp_entity_establish', rte_pdcp_entity_establish]
alias rte_pdcp_rte_pdcp_entity_release = ExternalFunction['rte_pdcp_entity_release', rte_pdcp_entity_release]
alias rte_pdcp_rte_pdcp_entity_suspend = ExternalFunction['rte_pdcp_entity_suspend', rte_pdcp_entity_suspend]
alias rte_pdcp_rte_pdcp_control_pdu_create = ExternalFunction['rte_pdcp_control_pdu_create', rte_pdcp_control_pdu_create]
alias rte_pdcp_rte_pdcp_pkt_pre_process = ExternalFunction['rte_pdcp_pkt_pre_process', rte_pdcp_pkt_pre_process]
alias rte_pdcp_rte_pdcp_pkt_post_process = ExternalFunction['rte_pdcp_pkt_post_process', rte_pdcp_pkt_post_process]
alias rte_pdcp_rte_pdcp_t_reordering_expiry_handle = ExternalFunction['rte_pdcp_t_reordering_expiry_handle', rte_pdcp_t_reordering_expiry_handle]
alias rte_pdcp_rte_kvargs_parse = ExternalFunction['rte_kvargs_parse', rte_kvargs_parse]
alias rte_pdcp_rte_kvargs_parse_delim = ExternalFunction['rte_kvargs_parse_delim', rte_kvargs_parse_delim]
alias rte_pdcp_rte_kvargs_free = ExternalFunction['rte_kvargs_free', rte_kvargs_free]
alias rte_pdcp_rte_kvargs_get = ExternalFunction['rte_kvargs_get', rte_kvargs_get]
alias rte_pdcp_rte_kvargs_get_with_value = ExternalFunction['rte_kvargs_get_with_value', rte_kvargs_get_with_value]
alias rte_pdcp_rte_kvargs_process = ExternalFunction['rte_kvargs_process', rte_kvargs_process]
alias rte_pdcp_rte_kvargs_process_opt = ExternalFunction['rte_kvargs_process_opt', rte_kvargs_process_opt]
alias rte_pdcp_rte_kvargs_count = ExternalFunction['rte_kvargs_count', rte_kvargs_count]
alias rte_pdcp_rte_rcu_qsbr_get_memsize = ExternalFunction['rte_rcu_qsbr_get_memsize', rte_rcu_qsbr_get_memsize]
alias rte_pdcp_rte_rcu_qsbr_init = ExternalFunction['rte_rcu_qsbr_init', rte_rcu_qsbr_init]
alias rte_pdcp_rte_rcu_qsbr_thread_register = ExternalFunction['rte_rcu_qsbr_thread_register', rte_rcu_qsbr_thread_register]
alias rte_pdcp_rte_rcu_qsbr_thread_unregister = ExternalFunction['rte_rcu_qsbr_thread_unregister', rte_rcu_qsbr_thread_unregister]
alias rte_pdcp_rte_rcu_qsbr_thread_online = ExternalFunction['rte_rcu_qsbr_thread_online', rte_rcu_qsbr_thread_online]
alias rte_pdcp_rte_rcu_qsbr_thread_offline = ExternalFunction['rte_rcu_qsbr_thread_offline', rte_rcu_qsbr_thread_offline]
alias rte_pdcp_rte_rcu_qsbr_lock = ExternalFunction['rte_rcu_qsbr_lock', rte_rcu_qsbr_lock]
alias rte_pdcp_rte_rcu_qsbr_unlock = ExternalFunction['rte_rcu_qsbr_unlock', rte_rcu_qsbr_unlock]
alias rte_pdcp_rte_rcu_qsbr_start = ExternalFunction['rte_rcu_qsbr_start', rte_rcu_qsbr_start]
alias rte_pdcp_rte_rcu_qsbr_quiescent = ExternalFunction['rte_rcu_qsbr_quiescent', rte_rcu_qsbr_quiescent]
alias rte_pdcp_rte_rcu_qsbr_check = ExternalFunction['rte_rcu_qsbr_check', rte_rcu_qsbr_check]
alias rte_pdcp_rte_rcu_qsbr_synchronize = ExternalFunction['rte_rcu_qsbr_synchronize', rte_rcu_qsbr_synchronize]
alias rte_pdcp_rte_rcu_qsbr_dump = ExternalFunction['rte_rcu_qsbr_dump', rte_rcu_qsbr_dump]
alias rte_pdcp_rte_rcu_qsbr_dq_create = ExternalFunction['rte_rcu_qsbr_dq_create', rte_rcu_qsbr_dq_create]
alias rte_pdcp_rte_rcu_qsbr_dq_enqueue = ExternalFunction['rte_rcu_qsbr_dq_enqueue', rte_rcu_qsbr_dq_enqueue]
alias rte_pdcp_rte_rcu_qsbr_dq_reclaim = ExternalFunction['rte_rcu_qsbr_dq_reclaim', rte_rcu_qsbr_dq_reclaim]
alias rte_pdcp_rte_rcu_qsbr_dq_delete = ExternalFunction['rte_rcu_qsbr_dq_delete', rte_rcu_qsbr_dq_delete]
alias rte_pdcp_rte_cryptodev_trace_enqueue_burst = ExternalFunction['rte_cryptodev_trace_enqueue_burst', rte_cryptodev_trace_enqueue_burst]
alias rte_pdcp_rte_cryptodev_trace_dequeue_burst = ExternalFunction['rte_cryptodev_trace_dequeue_burst', rte_cryptodev_trace_dequeue_burst]
alias rte_pdcp_rte_cryptodev_trace_qp_depth_used = ExternalFunction['rte_cryptodev_trace_qp_depth_used', rte_cryptodev_trace_qp_depth_used]
alias rte_pdcp_rte_cryptodev_sym_capability_get = ExternalFunction['rte_cryptodev_sym_capability_get', rte_cryptodev_sym_capability_get]
alias rte_pdcp_rte_cryptodev_asym_capability_get = ExternalFunction['rte_cryptodev_asym_capability_get', rte_cryptodev_asym_capability_get]
alias rte_pdcp_rte_cryptodev_sym_capability_check_cipher = ExternalFunction['rte_cryptodev_sym_capability_check_cipher', rte_cryptodev_sym_capability_check_cipher]
alias rte_pdcp_rte_cryptodev_sym_capability_check_auth = ExternalFunction['rte_cryptodev_sym_capability_check_auth', rte_cryptodev_sym_capability_check_auth]
alias rte_pdcp_rte_cryptodev_sym_capability_check_aead = ExternalFunction['rte_cryptodev_sym_capability_check_aead', rte_cryptodev_sym_capability_check_aead]
alias rte_pdcp_rte_cryptodev_asym_xform_capability_check_optype = ExternalFunction['rte_cryptodev_asym_xform_capability_check_optype', rte_cryptodev_asym_xform_capability_check_optype]
alias rte_pdcp_rte_cryptodev_asym_xform_capability_check_modlen = ExternalFunction['rte_cryptodev_asym_xform_capability_check_modlen', rte_cryptodev_asym_xform_capability_check_modlen]
alias rte_pdcp_rte_cryptodev_asym_xform_capability_check_hash = ExternalFunction['rte_cryptodev_asym_xform_capability_check_hash', rte_cryptodev_asym_xform_capability_check_hash]
alias rte_pdcp_rte_cryptodev_asym_xform_capability_check_opcap = ExternalFunction['rte_cryptodev_asym_xform_capability_check_opcap', rte_cryptodev_asym_xform_capability_check_opcap]
alias rte_pdcp_rte_cryptodev_get_cipher_algo_enum = ExternalFunction['rte_cryptodev_get_cipher_algo_enum', rte_cryptodev_get_cipher_algo_enum]
alias rte_pdcp_rte_cryptodev_get_auth_algo_enum = ExternalFunction['rte_cryptodev_get_auth_algo_enum', rte_cryptodev_get_auth_algo_enum]
alias rte_pdcp_rte_cryptodev_get_aead_algo_enum = ExternalFunction['rte_cryptodev_get_aead_algo_enum', rte_cryptodev_get_aead_algo_enum]
alias rte_pdcp_rte_cryptodev_asym_get_xform_enum = ExternalFunction['rte_cryptodev_asym_get_xform_enum', rte_cryptodev_asym_get_xform_enum]
alias rte_pdcp_rte_cryptodev_get_cipher_algo_string = ExternalFunction['rte_cryptodev_get_cipher_algo_string', rte_cryptodev_get_cipher_algo_string]
alias rte_pdcp_rte_cryptodev_get_auth_algo_string = ExternalFunction['rte_cryptodev_get_auth_algo_string', rte_cryptodev_get_auth_algo_string]
alias rte_pdcp_rte_cryptodev_get_aead_algo_string = ExternalFunction['rte_cryptodev_get_aead_algo_string', rte_cryptodev_get_aead_algo_string]
alias rte_pdcp_rte_cryptodev_asym_get_xform_string = ExternalFunction['rte_cryptodev_asym_get_xform_string', rte_cryptodev_asym_get_xform_string]
alias rte_pdcp_rte_cryptodev_get_feature_name = ExternalFunction['rte_cryptodev_get_feature_name', rte_cryptodev_get_feature_name]
alias rte_pdcp_rte_cryptodev_get_dev_id = ExternalFunction['rte_cryptodev_get_dev_id', rte_cryptodev_get_dev_id]
alias rte_pdcp_rte_cryptodev_name_get = ExternalFunction['rte_cryptodev_name_get', rte_cryptodev_name_get]
alias rte_pdcp_rte_cryptodev_count = ExternalFunction['rte_cryptodev_count', rte_cryptodev_count]
alias rte_pdcp_rte_cryptodev_device_count_by_driver = ExternalFunction['rte_cryptodev_device_count_by_driver', rte_cryptodev_device_count_by_driver]
alias rte_pdcp_rte_cryptodev_devices_get = ExternalFunction['rte_cryptodev_devices_get', rte_cryptodev_devices_get]
alias rte_pdcp_rte_cryptodev_socket_id = ExternalFunction['rte_cryptodev_socket_id', rte_cryptodev_socket_id]
alias rte_pdcp_rte_cryptodev_configure = ExternalFunction['rte_cryptodev_configure', rte_cryptodev_configure]
alias rte_pdcp_rte_cryptodev_start = ExternalFunction['rte_cryptodev_start', rte_cryptodev_start]
alias rte_pdcp_rte_cryptodev_stop = ExternalFunction['rte_cryptodev_stop', rte_cryptodev_stop]
alias rte_pdcp_rte_cryptodev_close = ExternalFunction['rte_cryptodev_close', rte_cryptodev_close]
alias rte_pdcp_rte_cryptodev_queue_pair_setup = ExternalFunction['rte_cryptodev_queue_pair_setup', rte_cryptodev_queue_pair_setup]
alias rte_pdcp_rte_cryptodev_queue_pair_reset = ExternalFunction['rte_cryptodev_queue_pair_reset', rte_cryptodev_queue_pair_reset]
alias rte_pdcp_rte_cryptodev_get_qp_status = ExternalFunction['rte_cryptodev_get_qp_status', rte_cryptodev_get_qp_status]
alias rte_pdcp_rte_cryptodev_queue_pair_count = ExternalFunction['rte_cryptodev_queue_pair_count', rte_cryptodev_queue_pair_count]
alias rte_pdcp_rte_cryptodev_stats_get = ExternalFunction['rte_cryptodev_stats_get', rte_cryptodev_stats_get]
alias rte_pdcp_rte_cryptodev_stats_reset = ExternalFunction['rte_cryptodev_stats_reset', rte_cryptodev_stats_reset]
alias rte_pdcp_rte_cryptodev_info_get = ExternalFunction['rte_cryptodev_info_get', rte_cryptodev_info_get]
alias rte_pdcp_rte_cryptodev_callback_register = ExternalFunction['rte_cryptodev_callback_register', rte_cryptodev_callback_register]
alias rte_pdcp_rte_cryptodev_callback_unregister = ExternalFunction['rte_cryptodev_callback_unregister', rte_cryptodev_callback_unregister]
alias rte_pdcp_rte_cryptodev_queue_pair_event_error_query = ExternalFunction['rte_cryptodev_queue_pair_event_error_query', rte_cryptodev_queue_pair_event_error_query]
alias rte_pdcp_rte_cryptodev_get_sec_ctx = ExternalFunction['rte_cryptodev_get_sec_ctx', rte_cryptodev_get_sec_ctx]
alias rte_pdcp_rte_cryptodev_sym_session_pool_create = ExternalFunction['rte_cryptodev_sym_session_pool_create', rte_cryptodev_sym_session_pool_create]
alias rte_pdcp_rte_cryptodev_asym_session_pool_create = ExternalFunction['rte_cryptodev_asym_session_pool_create', rte_cryptodev_asym_session_pool_create]
alias rte_pdcp_rte_cryptodev_sym_session_create = ExternalFunction['rte_cryptodev_sym_session_create', rte_cryptodev_sym_session_create]
alias rte_pdcp_rte_cryptodev_asym_session_create = ExternalFunction['rte_cryptodev_asym_session_create', rte_cryptodev_asym_session_create]
alias rte_pdcp_rte_cryptodev_sym_session_free = ExternalFunction['rte_cryptodev_sym_session_free', rte_cryptodev_sym_session_free]
alias rte_pdcp_rte_cryptodev_asym_session_free = ExternalFunction['rte_cryptodev_asym_session_free', rte_cryptodev_asym_session_free]
alias rte_pdcp_rte_cryptodev_asym_get_header_session_size = ExternalFunction['rte_cryptodev_asym_get_header_session_size', rte_cryptodev_asym_get_header_session_size]
alias rte_pdcp_rte_cryptodev_sym_get_private_session_size = ExternalFunction['rte_cryptodev_sym_get_private_session_size', rte_cryptodev_sym_get_private_session_size]
alias rte_pdcp_rte_cryptodev_asym_get_private_session_size = ExternalFunction['rte_cryptodev_asym_get_private_session_size', rte_cryptodev_asym_get_private_session_size]
alias rte_pdcp_rte_cryptodev_is_valid_dev = ExternalFunction['rte_cryptodev_is_valid_dev', rte_cryptodev_is_valid_dev]
alias rte_pdcp_rte_cryptodev_driver_id_get = ExternalFunction['rte_cryptodev_driver_id_get', rte_cryptodev_driver_id_get]
alias rte_pdcp_rte_cryptodev_driver_name_get = ExternalFunction['rte_cryptodev_driver_name_get', rte_cryptodev_driver_name_get]
alias rte_pdcp_rte_cryptodev_sym_session_set_user_data = ExternalFunction['rte_cryptodev_sym_session_set_user_data', rte_cryptodev_sym_session_set_user_data]
alias rte_pdcp_rte_cryptodev_sym_session_opaque_data_get = ExternalFunction['rte_cryptodev_sym_session_opaque_data_get', rte_cryptodev_sym_session_opaque_data_get]
alias rte_pdcp_rte_cryptodev_sym_session_opaque_data_set = ExternalFunction['rte_cryptodev_sym_session_opaque_data_set', rte_cryptodev_sym_session_opaque_data_set]
alias rte_pdcp_rte_cryptodev_sym_session_get_user_data = ExternalFunction['rte_cryptodev_sym_session_get_user_data', rte_cryptodev_sym_session_get_user_data]
alias rte_pdcp_rte_cryptodev_asym_session_set_user_data = ExternalFunction['rte_cryptodev_asym_session_set_user_data', rte_cryptodev_asym_session_set_user_data]
alias rte_pdcp_rte_cryptodev_asym_session_get_user_data = ExternalFunction['rte_cryptodev_asym_session_get_user_data', rte_cryptodev_asym_session_get_user_data]
alias rte_pdcp_rte_cryptodev_sym_cpu_crypto_process = ExternalFunction['rte_cryptodev_sym_cpu_crypto_process', rte_cryptodev_sym_cpu_crypto_process]
alias rte_pdcp_rte_cryptodev_get_raw_dp_ctx_size = ExternalFunction['rte_cryptodev_get_raw_dp_ctx_size', rte_cryptodev_get_raw_dp_ctx_size]
alias rte_pdcp_rte_cryptodev_session_event_mdata_set = ExternalFunction['rte_cryptodev_session_event_mdata_set', rte_cryptodev_session_event_mdata_set]
alias rte_pdcp_rte_cryptodev_configure_raw_dp_ctx = ExternalFunction['rte_cryptodev_configure_raw_dp_ctx', rte_cryptodev_configure_raw_dp_ctx]
alias rte_pdcp_rte_cryptodev_raw_enqueue_burst = ExternalFunction['rte_cryptodev_raw_enqueue_burst', rte_cryptodev_raw_enqueue_burst]
alias rte_pdcp_rte_cryptodev_raw_enqueue = ExternalFunction['rte_cryptodev_raw_enqueue', rte_cryptodev_raw_enqueue]
alias rte_pdcp_rte_cryptodev_raw_enqueue_done = ExternalFunction['rte_cryptodev_raw_enqueue_done', rte_cryptodev_raw_enqueue_done]
alias rte_pdcp_rte_cryptodev_raw_dequeue_burst = ExternalFunction['rte_cryptodev_raw_dequeue_burst', rte_cryptodev_raw_dequeue_burst]
alias rte_pdcp_rte_cryptodev_raw_dequeue = ExternalFunction['rte_cryptodev_raw_dequeue', rte_cryptodev_raw_dequeue]
alias rte_pdcp_rte_cryptodev_raw_dequeue_done = ExternalFunction['rte_cryptodev_raw_dequeue_done', rte_cryptodev_raw_dequeue_done]
alias rte_pdcp_rte_cryptodev_add_enq_callback = ExternalFunction['rte_cryptodev_add_enq_callback', rte_cryptodev_add_enq_callback]
alias rte_pdcp_rte_cryptodev_remove_enq_callback = ExternalFunction['rte_cryptodev_remove_enq_callback', rte_cryptodev_remove_enq_callback]
alias rte_pdcp_rte_cryptodev_add_deq_callback = ExternalFunction['rte_cryptodev_add_deq_callback', rte_cryptodev_add_deq_callback]
alias rte_pdcp_rte_cryptodev_remove_deq_callback = ExternalFunction['rte_cryptodev_remove_deq_callback', rte_cryptodev_remove_deq_callback]
alias rte_pdcp_rte_cryptodev_dequeue_burst = ExternalFunction['rte_cryptodev_dequeue_burst', rte_cryptodev_dequeue_burst]
alias rte_pdcp_rte_cryptodev_enqueue_burst = ExternalFunction['rte_cryptodev_enqueue_burst', rte_cryptodev_enqueue_burst]
alias rte_pdcp_rte_cryptodev_qp_depth_used = ExternalFunction['rte_cryptodev_qp_depth_used', rte_cryptodev_qp_depth_used]
alias rte_pdcp_rte_pdcp_en_from_cop = ExternalFunction['rte_pdcp_en_from_cop', rte_pdcp_en_from_cop]
alias rte_pdcp_rte_pdcp_pkt_crypto_group = ExternalFunction['rte_pdcp_pkt_crypto_group', rte_pdcp_pkt_crypto_group]

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
struct rte_pdcp(Copyable, Movable):
    var lib: DLHandle
    
    var alloca: rte_pdcp_alloca.type
    var sched_setparam: rte_pdcp_sched_setparam.type
    var sched_getparam: rte_pdcp_sched_getparam.type
    var sched_setscheduler: rte_pdcp_sched_setscheduler.type
    var sched_getscheduler: rte_pdcp_sched_getscheduler.type
    var sched_yield: rte_pdcp_sched_yield.type
    var sched_get_priority_max: rte_pdcp_sched_get_priority_max.type
    var sched_get_priority_min: rte_pdcp_sched_get_priority_min.type
    var sched_rr_get_interval: rte_pdcp_sched_rr_get_interval.type
    var rte_is_aligned: rte_pdcp_rte_is_aligned.type
    var rte_str_to_size: rte_pdcp_rte_str_to_size.type
    var rte_size_to_str: rte_pdcp_rte_size_to_str.type
    var rte_exit: rte_pdcp_rte_exit.type
    var remove: rte_pdcp_remove.type
    var rename: rte_pdcp_rename.type
    var renameat: rte_pdcp_renameat.type
    var fclose: rte_pdcp_fclose.type
    var tmpfile: rte_pdcp_tmpfile.type
    var tmpnam: rte_pdcp_tmpnam.type
    var tmpnam_r: rte_pdcp_tmpnam_r.type
    var tempnam: rte_pdcp_tempnam.type
    var fflush: rte_pdcp_fflush.type
    var fflush_unlocked: rte_pdcp_fflush_unlocked.type
    var fopen: rte_pdcp_fopen.type
    var freopen: rte_pdcp_freopen.type
    var fdopen: rte_pdcp_fdopen.type
    var fmemopen: rte_pdcp_fmemopen.type
    var open_memstream: rte_pdcp_open_memstream.type
    var setbuf: rte_pdcp_setbuf.type
    var setvbuf: rte_pdcp_setvbuf.type
    var setbuffer: rte_pdcp_setbuffer.type
    var setlinebuf: rte_pdcp_setlinebuf.type
    var fprintf: rte_pdcp_fprintf.type
    var printf: rte_pdcp_printf.type
    var sprintf: rte_pdcp_sprintf.type
    var vfprintf: rte_pdcp_vfprintf.type
    var vprintf: rte_pdcp_vprintf.type
    var vsprintf: rte_pdcp_vsprintf.type
    var snprintf: rte_pdcp_snprintf.type
    var vsnprintf: rte_pdcp_vsnprintf.type
    var vdprintf: rte_pdcp_vdprintf.type
    var dprintf: rte_pdcp_dprintf.type
    var fscanf: rte_pdcp_fscanf.type
    var scanf: rte_pdcp_scanf.type
    var sscanf: rte_pdcp_sscanf.type
    var vfscanf: rte_pdcp_vfscanf.type
    var vscanf: rte_pdcp_vscanf.type
    var vsscanf: rte_pdcp_vsscanf.type
    var fgetc: rte_pdcp_fgetc.type
    var getc: rte_pdcp_getc.type
    var getchar: rte_pdcp_getchar.type
    var getc_unlocked: rte_pdcp_getc_unlocked.type
    var getchar_unlocked: rte_pdcp_getchar_unlocked.type
    var fgetc_unlocked: rte_pdcp_fgetc_unlocked.type
    var fputc: rte_pdcp_fputc.type
    var putc: rte_pdcp_putc.type
    var putchar: rte_pdcp_putchar.type
    var fputc_unlocked: rte_pdcp_fputc_unlocked.type
    var putc_unlocked: rte_pdcp_putc_unlocked.type
    var putchar_unlocked: rte_pdcp_putchar_unlocked.type
    var getw: rte_pdcp_getw.type
    var putw: rte_pdcp_putw.type
    var fgets: rte_pdcp_fgets.type
    var getdelim: rte_pdcp_getdelim.type
    var getline: rte_pdcp_getline.type
    var fputs: rte_pdcp_fputs.type
    var puts: rte_pdcp_puts.type
    var ungetc: rte_pdcp_ungetc.type
    var fread: rte_pdcp_fread.type
    var fwrite: rte_pdcp_fwrite.type
    var fread_unlocked: rte_pdcp_fread_unlocked.type
    var fwrite_unlocked: rte_pdcp_fwrite_unlocked.type
    var fseek: rte_pdcp_fseek.type
    var ftell: rte_pdcp_ftell.type
    var rewind: rte_pdcp_rewind.type
    var fseeko: rte_pdcp_fseeko.type
    var ftello: rte_pdcp_ftello.type
    var fgetpos: rte_pdcp_fgetpos.type
    var fsetpos: rte_pdcp_fsetpos.type
    var clearerr: rte_pdcp_clearerr.type
    var feof: rte_pdcp_feof.type
    var ferror: rte_pdcp_ferror.type
    var clearerr_unlocked: rte_pdcp_clearerr_unlocked.type
    var feof_unlocked: rte_pdcp_feof_unlocked.type
    var ferror_unlocked: rte_pdcp_ferror_unlocked.type
    var perror: rte_pdcp_perror.type
    var fileno: rte_pdcp_fileno.type
    var fileno_unlocked: rte_pdcp_fileno_unlocked.type
    var pclose: rte_pdcp_pclose.type
    var popen: rte_pdcp_popen.type
    var ctermid: rte_pdcp_ctermid.type
    var flockfile: rte_pdcp_flockfile.type
    var ftrylockfile: rte_pdcp_ftrylockfile.type
    var funlockfile: rte_pdcp_funlockfile.type
    var imaxabs: rte_pdcp_imaxabs.type
    var imaxdiv: rte_pdcp_imaxdiv.type
    var strtoimax: rte_pdcp_strtoimax.type
    var strtoumax: rte_pdcp_strtoumax.type
    var wcstoimax: rte_pdcp_wcstoimax.type
    var wcstoumax: rte_pdcp_wcstoumax.type
    var clock: rte_pdcp_clock.type
    var time: rte_pdcp_time.type
    var difftime: rte_pdcp_difftime.type
    var mktime: rte_pdcp_mktime.type
    var strftime: rte_pdcp_strftime.type
    var strftime_l: rte_pdcp_strftime_l.type
    var gmtime: rte_pdcp_gmtime.type
    var localtime: rte_pdcp_localtime.type
    var gmtime_r: rte_pdcp_gmtime_r.type
    var localtime_r: rte_pdcp_localtime_r.type
    var asctime: rte_pdcp_asctime.type
    var ctime: rte_pdcp_ctime.type
    var asctime_r: rte_pdcp_asctime_r.type
    var ctime_r: rte_pdcp_ctime_r.type
    var tzset: rte_pdcp_tzset.type
    var timegm: rte_pdcp_timegm.type
    var timelocal: rte_pdcp_timelocal.type
    var dysize: rte_pdcp_dysize.type
    var nanosleep: rte_pdcp_nanosleep.type
    var clock_getres: rte_pdcp_clock_getres.type
    var clock_gettime: rte_pdcp_clock_gettime.type
    var clock_settime: rte_pdcp_clock_settime.type
    var clock_nanosleep: rte_pdcp_clock_nanosleep.type
    var clock_getcpuclockid: rte_pdcp_clock_getcpuclockid.type
    var timer_create: rte_pdcp_timer_create.type
    var timer_delete: rte_pdcp_timer_delete.type
    var timer_settime: rte_pdcp_timer_settime.type
    var timer_gettime: rte_pdcp_timer_gettime.type
    var timer_getoverrun: rte_pdcp_timer_getoverrun.type
    var timespec_get: rte_pdcp_timespec_get.type
    var memcpy: rte_pdcp_memcpy.type
    var memmove: rte_pdcp_memmove.type
    var memccpy: rte_pdcp_memccpy.type
    var memset: rte_pdcp_memset.type
    var memcmp: rte_pdcp_memcmp.type
    var memchr: rte_pdcp_memchr.type
    var strcpy: rte_pdcp_strcpy.type
    var strncpy: rte_pdcp_strncpy.type
    var strcat: rte_pdcp_strcat.type
    var strncat: rte_pdcp_strncat.type
    var strcmp: rte_pdcp_strcmp.type
    var strncmp: rte_pdcp_strncmp.type
    var strcoll: rte_pdcp_strcoll.type
    var strxfrm: rte_pdcp_strxfrm.type
    var strcoll_l: rte_pdcp_strcoll_l.type
    var strxfrm_l: rte_pdcp_strxfrm_l.type
    var strdup: rte_pdcp_strdup.type
    var strndup: rte_pdcp_strndup.type
    var strchr: rte_pdcp_strchr.type
    var strrchr: rte_pdcp_strrchr.type
    var strcspn: rte_pdcp_strcspn.type
    var strspn: rte_pdcp_strspn.type
    var strpbrk: rte_pdcp_strpbrk.type
    var strstr: rte_pdcp_strstr.type
    var strtok: rte_pdcp_strtok.type
    var strtok_r: rte_pdcp_strtok_r.type
    var strlen: rte_pdcp_strlen.type
    var strnlen: rte_pdcp_strnlen.type
    var strerror: rte_pdcp_strerror.type
    var strerror_r: rte_pdcp_strerror_r.type
    var strerror_l: rte_pdcp_strerror_l.type
    var bcmp: rte_pdcp_bcmp.type
    var bcopy: rte_pdcp_bcopy.type
    var bzero: rte_pdcp_bzero.type
    var index: rte_pdcp_index.type
    var rindex: rte_pdcp_rindex.type
    var ffs: rte_pdcp_ffs.type
    var ffsl: rte_pdcp_ffsl.type
    var ffsll: rte_pdcp_ffsll.type
    var strcasecmp: rte_pdcp_strcasecmp.type
    var strncasecmp: rte_pdcp_strncasecmp.type
    var strcasecmp_l: rte_pdcp_strcasecmp_l.type
    var strncasecmp_l: rte_pdcp_strncasecmp_l.type
    var explicit_bzero: rte_pdcp_explicit_bzero.type
    var strsep: rte_pdcp_strsep.type
    var strsignal: rte_pdcp_strsignal.type
    var stpcpy: rte_pdcp_stpcpy.type
    var stpncpy: rte_pdcp_stpncpy.type
    var rte_uuid_is_null: rte_pdcp_rte_uuid_is_null.type
    var rte_uuid_copy: rte_pdcp_rte_uuid_copy.type
    var rte_uuid_compare: rte_pdcp_rte_uuid_compare.type
    var rte_uuid_parse: rte_pdcp_rte_uuid_parse.type
    var rte_uuid_unparse: rte_pdcp_rte_uuid_unparse.type
    var rte_eal_process_type: rte_pdcp_rte_eal_process_type.type
    var rte_eal_iopl_init: rte_pdcp_rte_eal_iopl_init.type
    var rte_eal_init: rte_pdcp_rte_eal_init.type
    var rte_eal_cleanup: rte_pdcp_rte_eal_cleanup.type
    var rte_eal_primary_proc_alive: rte_pdcp_rte_eal_primary_proc_alive.type
    var rte_mp_disable: rte_pdcp_rte_mp_disable.type
    var rte_mp_action_register: rte_pdcp_rte_mp_action_register.type
    var rte_mp_action_unregister: rte_pdcp_rte_mp_action_unregister.type
    var rte_mp_sendmsg: rte_pdcp_rte_mp_sendmsg.type
    var rte_mp_request_sync: rte_pdcp_rte_mp_request_sync.type
    var rte_mp_request_async: rte_pdcp_rte_mp_request_async.type
    var rte_set_application_usage_hook: rte_pdcp_rte_set_application_usage_hook.type
    var rte_eal_has_hugepages: rte_pdcp_rte_eal_has_hugepages.type
    var rte_eal_has_pci: rte_pdcp_rte_eal_has_pci.type
    var rte_eal_create_uio_dev: rte_pdcp_rte_eal_create_uio_dev.type
    var rte_eal_vfio_intr_mode: rte_pdcp_rte_eal_vfio_intr_mode.type
    var rte_eal_vfio_get_vf_token: rte_pdcp_rte_eal_vfio_get_vf_token.type
    var rte_sys_gettid: rte_pdcp_rte_sys_gettid.type
    var rte_gettid: rte_pdcp_rte_gettid.type
    var rte_eal_get_baseaddr: rte_pdcp_rte_eal_get_baseaddr.type
    var rte_eal_iova_mode: rte_pdcp_rte_eal_iova_mode.type
    var rte_eal_mbuf_user_pool_ops: rte_pdcp_rte_eal_mbuf_user_pool_ops.type
    var rte_eal_get_runtime_dir: rte_pdcp_rte_eal_get_runtime_dir.type
    var rte_eal_parse_coremask: rte_pdcp_rte_eal_parse_coremask.type
    var rte_eal_remote_launch: rte_pdcp_rte_eal_remote_launch.type
    var rte_eal_mp_remote_launch: rte_pdcp_rte_eal_mp_remote_launch.type
    var rte_eal_get_lcore_state: rte_pdcp_rte_eal_get_lcore_state.type
    var rte_eal_wait_lcore: rte_pdcp_rte_eal_wait_lcore.type
    var rte_eal_mp_wait_lcore: rte_pdcp_rte_eal_mp_wait_lcore.type
    var rte_thread_create: rte_pdcp_rte_thread_create.type
    var rte_thread_create_control: rte_pdcp_rte_thread_create_control.type
    var rte_thread_create_internal_control: rte_pdcp_rte_thread_create_internal_control.type
    var rte_thread_join: rte_pdcp_rte_thread_join.type
    var rte_thread_detach: rte_pdcp_rte_thread_detach.type
    var rte_thread_self: rte_pdcp_rte_thread_self.type
    var rte_thread_set_name: rte_pdcp_rte_thread_set_name.type
    var rte_thread_set_prefixed_name: rte_pdcp_rte_thread_set_prefixed_name.type
    var rte_thread_equal: rte_pdcp_rte_thread_equal.type
    var rte_thread_attr_init: rte_pdcp_rte_thread_attr_init.type
    var rte_thread_attr_set_priority: rte_pdcp_rte_thread_attr_set_priority.type
    var rte_thread_get_priority: rte_pdcp_rte_thread_get_priority.type
    var rte_thread_set_priority: rte_pdcp_rte_thread_set_priority.type
    var rte_thread_key_create: rte_pdcp_rte_thread_key_create.type
    var rte_thread_key_delete: rte_pdcp_rte_thread_key_delete.type
    var rte_thread_value_set: rte_pdcp_rte_thread_value_set.type
    var rte_thread_value_get: rte_pdcp_rte_thread_value_get.type
    var rte_eal_lcore_role: rte_pdcp_rte_eal_lcore_role.type
    var rte_lcore_has_role: rte_pdcp_rte_lcore_has_role.type
    var rte_lcore_id: rte_pdcp_rte_lcore_id.type
    var rte_get_main_lcore: rte_pdcp_rte_get_main_lcore.type
    var rte_lcore_count: rte_pdcp_rte_lcore_count.type
    var rte_lcore_index: rte_pdcp_rte_lcore_index.type
    var rte_socket_id: rte_pdcp_rte_socket_id.type
    var rte_socket_count: rte_pdcp_rte_socket_count.type
    var rte_socket_id_by_idx: rte_pdcp_rte_socket_id_by_idx.type
    var rte_lcore_to_socket_id: rte_pdcp_rte_lcore_to_socket_id.type
    var rte_lcore_to_cpu_id: rte_pdcp_rte_lcore_to_cpu_id.type
    var rte_lcore_is_enabled: rte_pdcp_rte_lcore_is_enabled.type
    var rte_get_next_lcore: rte_pdcp_rte_get_next_lcore.type
    var rte_lcore_callback_register: rte_pdcp_rte_lcore_callback_register.type
    var rte_lcore_callback_unregister: rte_pdcp_rte_lcore_callback_unregister.type
    var rte_lcore_iterate: rte_pdcp_rte_lcore_iterate.type
    var rte_lcore_register_usage_cb: rte_pdcp_rte_lcore_register_usage_cb.type
    var rte_lcore_dump: rte_pdcp_rte_lcore_dump.type
    var rte_thread_register: rte_pdcp_rte_thread_register.type
    var rte_thread_unregister: rte_pdcp_rte_thread_unregister.type
    var rte_atomic_thread_fence: rte_pdcp_rte_atomic_thread_fence.type
    var rte_atomic16_cmpset: rte_pdcp_rte_atomic16_cmpset.type
    var rte_atomic16_exchange: rte_pdcp_rte_atomic16_exchange.type
    var rte_atomic16_init: rte_pdcp_rte_atomic16_init.type
    var rte_atomic16_read: rte_pdcp_rte_atomic16_read.type
    var rte_atomic16_set: rte_pdcp_rte_atomic16_set.type
    var rte_atomic16_add: rte_pdcp_rte_atomic16_add.type
    var rte_atomic16_sub: rte_pdcp_rte_atomic16_sub.type
    var rte_atomic16_inc: rte_pdcp_rte_atomic16_inc.type
    var rte_atomic16_dec: rte_pdcp_rte_atomic16_dec.type
    var rte_atomic16_add_return: rte_pdcp_rte_atomic16_add_return.type
    var rte_atomic16_sub_return: rte_pdcp_rte_atomic16_sub_return.type
    var rte_atomic16_inc_and_test: rte_pdcp_rte_atomic16_inc_and_test.type
    var rte_atomic16_dec_and_test: rte_pdcp_rte_atomic16_dec_and_test.type
    var rte_atomic16_test_and_set: rte_pdcp_rte_atomic16_test_and_set.type
    var rte_atomic16_clear: rte_pdcp_rte_atomic16_clear.type
    var rte_atomic32_cmpset: rte_pdcp_rte_atomic32_cmpset.type
    var rte_atomic32_exchange: rte_pdcp_rte_atomic32_exchange.type
    var rte_atomic32_init: rte_pdcp_rte_atomic32_init.type
    var rte_atomic32_read: rte_pdcp_rte_atomic32_read.type
    var rte_atomic32_set: rte_pdcp_rte_atomic32_set.type
    var rte_atomic32_add: rte_pdcp_rte_atomic32_add.type
    var rte_atomic32_sub: rte_pdcp_rte_atomic32_sub.type
    var rte_atomic32_inc: rte_pdcp_rte_atomic32_inc.type
    var rte_atomic32_dec: rte_pdcp_rte_atomic32_dec.type
    var rte_atomic32_add_return: rte_pdcp_rte_atomic32_add_return.type
    var rte_atomic32_sub_return: rte_pdcp_rte_atomic32_sub_return.type
    var rte_atomic32_inc_and_test: rte_pdcp_rte_atomic32_inc_and_test.type
    var rte_atomic32_dec_and_test: rte_pdcp_rte_atomic32_dec_and_test.type
    var rte_atomic32_test_and_set: rte_pdcp_rte_atomic32_test_and_set.type
    var rte_atomic32_clear: rte_pdcp_rte_atomic32_clear.type
    var rte_atomic64_cmpset: rte_pdcp_rte_atomic64_cmpset.type
    var rte_atomic64_exchange: rte_pdcp_rte_atomic64_exchange.type
    var rte_atomic64_init: rte_pdcp_rte_atomic64_init.type
    var rte_atomic64_read: rte_pdcp_rte_atomic64_read.type
    var rte_atomic64_set: rte_pdcp_rte_atomic64_set.type
    var rte_atomic64_add: rte_pdcp_rte_atomic64_add.type
    var rte_atomic64_sub: rte_pdcp_rte_atomic64_sub.type
    var rte_atomic64_inc: rte_pdcp_rte_atomic64_inc.type
    var rte_atomic64_dec: rte_pdcp_rte_atomic64_dec.type
    var rte_atomic64_add_return: rte_pdcp_rte_atomic64_add_return.type
    var rte_atomic64_sub_return: rte_pdcp_rte_atomic64_sub_return.type
    var rte_atomic64_inc_and_test: rte_pdcp_rte_atomic64_inc_and_test.type
    var rte_atomic64_dec_and_test: rte_pdcp_rte_atomic64_dec_and_test.type
    var rte_atomic64_test_and_set: rte_pdcp_rte_atomic64_test_and_set.type
    var rte_atomic64_clear: rte_pdcp_rte_atomic64_clear.type
    var rte_openlog_stream: rte_pdcp_rte_openlog_stream.type
    var rte_log_get_stream: rte_pdcp_rte_log_get_stream.type
    var rte_log_set_global_level: rte_pdcp_rte_log_set_global_level.type
    var rte_log_get_global_level: rte_pdcp_rte_log_get_global_level.type
    var rte_log_get_level: rte_pdcp_rte_log_get_level.type
    var rte_log_can_log: rte_pdcp_rte_log_can_log.type
    var rte_log_set_level_pattern: rte_pdcp_rte_log_set_level_pattern.type
    var rte_log_set_level_regexp: rte_pdcp_rte_log_set_level_regexp.type
    var rte_log_set_level: rte_pdcp_rte_log_set_level.type
    var rte_log_cur_msg_loglevel: rte_pdcp_rte_log_cur_msg_loglevel.type
    var rte_log_cur_msg_logtype: rte_pdcp_rte_log_cur_msg_logtype.type
    var rte_log_register: rte_pdcp_rte_log_register.type
    var rte_log_register_type_and_pick_level: rte_pdcp_rte_log_register_type_and_pick_level.type
    var rte_log_list_types: rte_pdcp_rte_log_list_types.type
    var rte_log_dump: rte_pdcp_rte_log_dump.type
    var rte_log: rte_pdcp_rte_log.type
    var rte_vlog: rte_pdcp_rte_vlog.type
    var rte_dump_stack: rte_pdcp_rte_dump_stack.type
    var rte_atomic128_cmp_exchange: rte_pdcp_rte_atomic128_cmp_exchange.type
    var rte_pause: rte_pdcp_rte_pause.type
    var rte_wait_until_equal_16: rte_pdcp_rte_wait_until_equal_16.type
    var rte_wait_until_equal_32: rte_pdcp_rte_wait_until_equal_32.type
    var rte_wait_until_equal_64: rte_pdcp_rte_wait_until_equal_64.type
    var rte_spinlock_init: rte_pdcp_rte_spinlock_init.type
    var rte_spinlock_lock: rte_pdcp_rte_spinlock_lock.type
    var rte_spinlock_unlock: rte_pdcp_rte_spinlock_unlock.type
    var rte_spinlock_trylock: rte_pdcp_rte_spinlock_trylock.type
    var rte_spinlock_is_locked: rte_pdcp_rte_spinlock_is_locked.type
    var rte_tm_supported: rte_pdcp_rte_tm_supported.type
    var rte_spinlock_lock_tm: rte_pdcp_rte_spinlock_lock_tm.type
    var rte_spinlock_unlock_tm: rte_pdcp_rte_spinlock_unlock_tm.type
    var rte_spinlock_trylock_tm: rte_pdcp_rte_spinlock_trylock_tm.type
    var rte_spinlock_recursive_init: rte_pdcp_rte_spinlock_recursive_init.type
    var rte_spinlock_recursive_lock: rte_pdcp_rte_spinlock_recursive_lock.type
    var rte_spinlock_recursive_unlock: rte_pdcp_rte_spinlock_recursive_unlock.type
    var rte_spinlock_recursive_trylock: rte_pdcp_rte_spinlock_recursive_trylock.type
    var rte_spinlock_recursive_lock_tm: rte_pdcp_rte_spinlock_recursive_lock_tm.type
    var rte_spinlock_recursive_unlock_tm: rte_pdcp_rte_spinlock_recursive_unlock_tm.type
    var rte_spinlock_recursive_trylock_tm: rte_pdcp_rte_spinlock_recursive_trylock_tm.type
    var rte_bit_relaxed_get32: rte_pdcp_rte_bit_relaxed_get32.type
    var rte_bit_relaxed_set32: rte_pdcp_rte_bit_relaxed_set32.type
    var rte_bit_relaxed_clear32: rte_pdcp_rte_bit_relaxed_clear32.type
    var rte_bit_relaxed_test_and_set32: rte_pdcp_rte_bit_relaxed_test_and_set32.type
    var rte_bit_relaxed_test_and_clear32: rte_pdcp_rte_bit_relaxed_test_and_clear32.type
    var rte_bit_relaxed_get64: rte_pdcp_rte_bit_relaxed_get64.type
    var rte_bit_relaxed_set64: rte_pdcp_rte_bit_relaxed_set64.type
    var rte_bit_relaxed_clear64: rte_pdcp_rte_bit_relaxed_clear64.type
    var rte_bit_relaxed_test_and_set64: rte_pdcp_rte_bit_relaxed_test_and_set64.type
    var rte_bit_relaxed_test_and_clear64: rte_pdcp_rte_bit_relaxed_test_and_clear64.type
    var rte_clz32: rte_pdcp_rte_clz32.type
    var rte_clz64: rte_pdcp_rte_clz64.type
    var rte_ctz32: rte_pdcp_rte_ctz32.type
    var rte_ctz64: rte_pdcp_rte_ctz64.type
    var rte_popcount32: rte_pdcp_rte_popcount32.type
    var rte_popcount64: rte_pdcp_rte_popcount64.type
    var rte_ffs32: rte_pdcp_rte_ffs32.type
    var rte_ffs64: rte_pdcp_rte_ffs64.type
    var rte_combine32ms1b: rte_pdcp_rte_combine32ms1b.type
    var rte_combine64ms1b: rte_pdcp_rte_combine64ms1b.type
    var rte_bsf32: rte_pdcp_rte_bsf32.type
    var rte_bsf32_safe: rte_pdcp_rte_bsf32_safe.type
    var rte_bsf64: rte_pdcp_rte_bsf64.type
    var rte_bsf64_safe: rte_pdcp_rte_bsf64_safe.type
    var rte_fls_u32: rte_pdcp_rte_fls_u32.type
    var rte_fls_u64: rte_pdcp_rte_fls_u64.type
    var rte_is_power_of_2: rte_pdcp_rte_is_power_of_2.type
    var rte_align32pow2: rte_pdcp_rte_align32pow2.type
    var rte_align32prevpow2: rte_pdcp_rte_align32prevpow2.type
    var rte_align64pow2: rte_pdcp_rte_align64pow2.type
    var rte_align64prevpow2: rte_pdcp_rte_align64prevpow2.type
    var rte_log2_u32: rte_pdcp_rte_log2_u32.type
    var rte_log2_u64: rte_pdcp_rte_log2_u64.type
    var rte_rwlock_init: rte_pdcp_rte_rwlock_init.type
    var rte_rwlock_read_lock: rte_pdcp_rte_rwlock_read_lock.type
    var rte_rwlock_read_trylock: rte_pdcp_rte_rwlock_read_trylock.type
    var rte_rwlock_read_unlock: rte_pdcp_rte_rwlock_read_unlock.type
    var rte_rwlock_write_trylock: rte_pdcp_rte_rwlock_write_trylock.type
    var rte_rwlock_write_lock: rte_pdcp_rte_rwlock_write_lock.type
    var rte_rwlock_write_unlock: rte_pdcp_rte_rwlock_write_unlock.type
    var rte_rwlock_write_is_locked: rte_pdcp_rte_rwlock_write_is_locked.type
    var rte_rwlock_read_lock_tm: rte_pdcp_rte_rwlock_read_lock_tm.type
    var rte_rwlock_read_unlock_tm: rte_pdcp_rte_rwlock_read_unlock_tm.type
    var rte_rwlock_write_lock_tm: rte_pdcp_rte_rwlock_write_lock_tm.type
    var rte_rwlock_write_unlock_tm: rte_pdcp_rte_rwlock_write_unlock_tm.type
    var rte_mcfg_mem_get_lock: rte_pdcp_rte_mcfg_mem_get_lock.type
    var rte_mcfg_tailq_get_lock: rte_pdcp_rte_mcfg_tailq_get_lock.type
    var rte_mcfg_mempool_get_lock: rte_pdcp_rte_mcfg_mempool_get_lock.type
    var rte_mcfg_timer_get_lock: rte_pdcp_rte_mcfg_timer_get_lock.type
    var rte_mcfg_ethdev_get_lock: rte_pdcp_rte_mcfg_ethdev_get_lock.type
    var rte_mcfg_mem_read_lock: rte_pdcp_rte_mcfg_mem_read_lock.type
    var rte_mcfg_mem_read_unlock: rte_pdcp_rte_mcfg_mem_read_unlock.type
    var rte_mcfg_mem_write_lock: rte_pdcp_rte_mcfg_mem_write_lock.type
    var rte_mcfg_mem_write_unlock: rte_pdcp_rte_mcfg_mem_write_unlock.type
    var rte_mcfg_tailq_read_lock: rte_pdcp_rte_mcfg_tailq_read_lock.type
    var rte_mcfg_tailq_read_unlock: rte_pdcp_rte_mcfg_tailq_read_unlock.type
    var rte_mcfg_tailq_write_lock: rte_pdcp_rte_mcfg_tailq_write_lock.type
    var rte_mcfg_tailq_write_unlock: rte_pdcp_rte_mcfg_tailq_write_unlock.type
    var rte_mcfg_mempool_read_lock: rte_pdcp_rte_mcfg_mempool_read_lock.type
    var rte_mcfg_mempool_read_unlock: rte_pdcp_rte_mcfg_mempool_read_unlock.type
    var rte_mcfg_mempool_write_lock: rte_pdcp_rte_mcfg_mempool_write_lock.type
    var rte_mcfg_mempool_write_unlock: rte_pdcp_rte_mcfg_mempool_write_unlock.type
    var rte_mcfg_timer_lock: rte_pdcp_rte_mcfg_timer_lock.type
    var rte_mcfg_timer_unlock: rte_pdcp_rte_mcfg_timer_unlock.type
    var rte_mcfg_get_single_file_segments: rte_pdcp_rte_mcfg_get_single_file_segments.type
    var rte_fbarray_init: rte_pdcp_rte_fbarray_init.type
    var rte_fbarray_attach: rte_pdcp_rte_fbarray_attach.type
    var rte_fbarray_destroy: rte_pdcp_rte_fbarray_destroy.type
    var rte_fbarray_detach: rte_pdcp_rte_fbarray_detach.type
    var rte_fbarray_get: rte_pdcp_rte_fbarray_get.type
    var rte_fbarray_find_idx: rte_pdcp_rte_fbarray_find_idx.type
    var rte_fbarray_set_used: rte_pdcp_rte_fbarray_set_used.type
    var rte_fbarray_set_free: rte_pdcp_rte_fbarray_set_free.type
    var rte_fbarray_is_used: rte_pdcp_rte_fbarray_is_used.type
    var rte_fbarray_find_next_free: rte_pdcp_rte_fbarray_find_next_free.type
    var rte_fbarray_find_next_used: rte_pdcp_rte_fbarray_find_next_used.type
    var rte_fbarray_find_next_n_free: rte_pdcp_rte_fbarray_find_next_n_free.type
    var rte_fbarray_find_next_n_used: rte_pdcp_rte_fbarray_find_next_n_used.type
    var rte_fbarray_find_contig_free: rte_pdcp_rte_fbarray_find_contig_free.type
    var rte_fbarray_find_contig_used: rte_pdcp_rte_fbarray_find_contig_used.type
    var rte_fbarray_find_prev_free: rte_pdcp_rte_fbarray_find_prev_free.type
    var rte_fbarray_find_prev_used: rte_pdcp_rte_fbarray_find_prev_used.type
    var rte_fbarray_find_prev_n_free: rte_pdcp_rte_fbarray_find_prev_n_free.type
    var rte_fbarray_find_prev_n_used: rte_pdcp_rte_fbarray_find_prev_n_used.type
    var rte_fbarray_find_rev_contig_free: rte_pdcp_rte_fbarray_find_rev_contig_free.type
    var rte_fbarray_find_rev_contig_used: rte_pdcp_rte_fbarray_find_rev_contig_used.type
    var rte_fbarray_find_biggest_free: rte_pdcp_rte_fbarray_find_biggest_free.type
    var rte_fbarray_find_biggest_used: rte_pdcp_rte_fbarray_find_biggest_used.type
    var rte_fbarray_find_rev_biggest_free: rte_pdcp_rte_fbarray_find_rev_biggest_free.type
    var rte_fbarray_find_rev_biggest_used: rte_pdcp_rte_fbarray_find_rev_biggest_used.type
    var rte_fbarray_dump_metadata: rte_pdcp_rte_fbarray_dump_metadata.type
    var rte_mem_lock_page: rte_pdcp_rte_mem_lock_page.type
    var rte_mem_virt2phy: rte_pdcp_rte_mem_virt2phy.type
    var rte_mem_virt2iova: rte_pdcp_rte_mem_virt2iova.type
    var rte_mem_iova2virt: rte_pdcp_rte_mem_iova2virt.type
    var rte_mem_virt2memseg: rte_pdcp_rte_mem_virt2memseg.type
    var rte_mem_virt2memseg_list: rte_pdcp_rte_mem_virt2memseg_list.type
    var rte_memseg_walk: rte_pdcp_rte_memseg_walk.type
    var rte_memseg_contig_walk: rte_pdcp_rte_memseg_contig_walk.type
    var rte_memseg_list_walk: rte_pdcp_rte_memseg_list_walk.type
    var rte_memseg_walk_thread_unsafe: rte_pdcp_rte_memseg_walk_thread_unsafe.type
    var rte_memseg_contig_walk_thread_unsafe: rte_pdcp_rte_memseg_contig_walk_thread_unsafe.type
    var rte_memseg_list_walk_thread_unsafe: rte_pdcp_rte_memseg_list_walk_thread_unsafe.type
    var rte_memseg_get_fd: rte_pdcp_rte_memseg_get_fd.type
    var rte_memseg_get_fd_thread_unsafe: rte_pdcp_rte_memseg_get_fd_thread_unsafe.type
    var rte_memseg_get_fd_offset: rte_pdcp_rte_memseg_get_fd_offset.type
    var rte_memseg_get_fd_offset_thread_unsafe: rte_pdcp_rte_memseg_get_fd_offset_thread_unsafe.type
    var rte_extmem_register: rte_pdcp_rte_extmem_register.type
    var rte_extmem_unregister: rte_pdcp_rte_extmem_unregister.type
    var rte_extmem_attach: rte_pdcp_rte_extmem_attach.type
    var rte_extmem_detach: rte_pdcp_rte_extmem_detach.type
    var rte_dump_physmem_layout: rte_pdcp_rte_dump_physmem_layout.type
    var rte_eal_get_physmem_size: rte_pdcp_rte_eal_get_physmem_size.type
    var rte_memory_get_nchannel: rte_pdcp_rte_memory_get_nchannel.type
    var rte_memory_get_nrank: rte_pdcp_rte_memory_get_nrank.type
    var rte_mem_check_dma_mask: rte_pdcp_rte_mem_check_dma_mask.type
    var rte_mem_check_dma_mask_thread_unsafe: rte_pdcp_rte_mem_check_dma_mask_thread_unsafe.type
    var rte_mem_set_dma_mask: rte_pdcp_rte_mem_set_dma_mask.type
    var rte_eal_using_phys_addrs: rte_pdcp_rte_eal_using_phys_addrs.type
    var rte_mem_event_callback_register: rte_pdcp_rte_mem_event_callback_register.type
    var rte_mem_event_callback_unregister: rte_pdcp_rte_mem_event_callback_unregister.type
    var rte_mem_alloc_validator_register: rte_pdcp_rte_mem_alloc_validator_register.type
    var rte_mem_alloc_validator_unregister: rte_pdcp_rte_mem_alloc_validator_unregister.type
    var rte_memzero_explicit: rte_pdcp_rte_memzero_explicit.type
    var rte_memzone_max_set: rte_pdcp_rte_memzone_max_set.type
    var rte_memzone_max_get: rte_pdcp_rte_memzone_max_get.type
    var rte_memzone_reserve: rte_pdcp_rte_memzone_reserve.type
    var rte_memzone_reserve_aligned: rte_pdcp_rte_memzone_reserve_aligned.type
    var rte_memzone_reserve_bounded: rte_pdcp_rte_memzone_reserve_bounded.type
    var rte_memzone_free: rte_pdcp_rte_memzone_free.type
    var rte_memzone_lookup: rte_pdcp_rte_memzone_lookup.type
    var rte_memzone_dump: rte_pdcp_rte_memzone_dump.type
    var rte_memzone_walk: rte_pdcp_rte_memzone_walk.type
    var rte_ring_get_memsize_elem: rte_pdcp_rte_ring_get_memsize_elem.type
    var rte_ring_create_elem: rte_pdcp_rte_ring_create_elem.type
    var rte_ring_mp_enqueue_bulk_elem: rte_pdcp_rte_ring_mp_enqueue_bulk_elem.type
    var rte_ring_sp_enqueue_bulk_elem: rte_pdcp_rte_ring_sp_enqueue_bulk_elem.type
    var rte_ring_mp_hts_enqueue_bulk_elem: rte_pdcp_rte_ring_mp_hts_enqueue_bulk_elem.type
    var rte_ring_mc_hts_dequeue_bulk_elem: rte_pdcp_rte_ring_mc_hts_dequeue_bulk_elem.type
    var rte_ring_mp_hts_enqueue_burst_elem: rte_pdcp_rte_ring_mp_hts_enqueue_burst_elem.type
    var rte_ring_mc_hts_dequeue_burst_elem: rte_pdcp_rte_ring_mc_hts_dequeue_burst_elem.type
    var rte_ring_mp_hts_enqueue_bulk: rte_pdcp_rte_ring_mp_hts_enqueue_bulk.type
    var rte_ring_mc_hts_dequeue_bulk: rte_pdcp_rte_ring_mc_hts_dequeue_bulk.type
    var rte_ring_mp_hts_enqueue_burst: rte_pdcp_rte_ring_mp_hts_enqueue_burst.type
    var rte_ring_mc_hts_dequeue_burst: rte_pdcp_rte_ring_mc_hts_dequeue_burst.type
    var rte_ring_mp_rts_enqueue_bulk_elem: rte_pdcp_rte_ring_mp_rts_enqueue_bulk_elem.type
    var rte_ring_mc_rts_dequeue_bulk_elem: rte_pdcp_rte_ring_mc_rts_dequeue_bulk_elem.type
    var rte_ring_mp_rts_enqueue_burst_elem: rte_pdcp_rte_ring_mp_rts_enqueue_burst_elem.type
    var rte_ring_mc_rts_dequeue_burst_elem: rte_pdcp_rte_ring_mc_rts_dequeue_burst_elem.type
    var rte_ring_mp_rts_enqueue_bulk: rte_pdcp_rte_ring_mp_rts_enqueue_bulk.type
    var rte_ring_mc_rts_dequeue_bulk: rte_pdcp_rte_ring_mc_rts_dequeue_bulk.type
    var rte_ring_mp_rts_enqueue_burst: rte_pdcp_rte_ring_mp_rts_enqueue_burst.type
    var rte_ring_mc_rts_dequeue_burst: rte_pdcp_rte_ring_mc_rts_dequeue_burst.type
    var rte_ring_get_prod_htd_max: rte_pdcp_rte_ring_get_prod_htd_max.type
    var rte_ring_set_prod_htd_max: rte_pdcp_rte_ring_set_prod_htd_max.type
    var rte_ring_get_cons_htd_max: rte_pdcp_rte_ring_get_cons_htd_max.type
    var rte_ring_set_cons_htd_max: rte_pdcp_rte_ring_set_cons_htd_max.type
    var rte_ring_enqueue_bulk_elem: rte_pdcp_rte_ring_enqueue_bulk_elem.type
    var rte_ring_mp_enqueue_elem: rte_pdcp_rte_ring_mp_enqueue_elem.type
    var rte_ring_sp_enqueue_elem: rte_pdcp_rte_ring_sp_enqueue_elem.type
    var rte_ring_enqueue_elem: rte_pdcp_rte_ring_enqueue_elem.type
    var rte_ring_mc_dequeue_bulk_elem: rte_pdcp_rte_ring_mc_dequeue_bulk_elem.type
    var rte_ring_sc_dequeue_bulk_elem: rte_pdcp_rte_ring_sc_dequeue_bulk_elem.type
    var rte_ring_dequeue_bulk_elem: rte_pdcp_rte_ring_dequeue_bulk_elem.type
    var rte_ring_mc_dequeue_elem: rte_pdcp_rte_ring_mc_dequeue_elem.type
    var rte_ring_sc_dequeue_elem: rte_pdcp_rte_ring_sc_dequeue_elem.type
    var rte_ring_dequeue_elem: rte_pdcp_rte_ring_dequeue_elem.type
    var rte_ring_mp_enqueue_burst_elem: rte_pdcp_rte_ring_mp_enqueue_burst_elem.type
    var rte_ring_sp_enqueue_burst_elem: rte_pdcp_rte_ring_sp_enqueue_burst_elem.type
    var rte_ring_enqueue_burst_elem: rte_pdcp_rte_ring_enqueue_burst_elem.type
    var rte_ring_mc_dequeue_burst_elem: rte_pdcp_rte_ring_mc_dequeue_burst_elem.type
    var rte_ring_sc_dequeue_burst_elem: rte_pdcp_rte_ring_sc_dequeue_burst_elem.type
    var rte_ring_dequeue_burst_elem: rte_pdcp_rte_ring_dequeue_burst_elem.type
    var rte_ring_enqueue_bulk_elem_start: rte_pdcp_rte_ring_enqueue_bulk_elem_start.type
    var rte_ring_enqueue_bulk_start: rte_pdcp_rte_ring_enqueue_bulk_start.type
    var rte_ring_enqueue_burst_elem_start: rte_pdcp_rte_ring_enqueue_burst_elem_start.type
    var rte_ring_enqueue_burst_start: rte_pdcp_rte_ring_enqueue_burst_start.type
    var rte_ring_enqueue_elem_finish: rte_pdcp_rte_ring_enqueue_elem_finish.type
    var rte_ring_enqueue_finish: rte_pdcp_rte_ring_enqueue_finish.type
    var rte_ring_dequeue_bulk_elem_start: rte_pdcp_rte_ring_dequeue_bulk_elem_start.type
    var rte_ring_dequeue_bulk_start: rte_pdcp_rte_ring_dequeue_bulk_start.type
    var rte_ring_dequeue_burst_elem_start: rte_pdcp_rte_ring_dequeue_burst_elem_start.type
    var rte_ring_dequeue_burst_start: rte_pdcp_rte_ring_dequeue_burst_start.type
    var rte_ring_dequeue_elem_finish: rte_pdcp_rte_ring_dequeue_elem_finish.type
    var rte_ring_dequeue_finish: rte_pdcp_rte_ring_dequeue_finish.type
    var rte_ring_enqueue_zc_bulk_elem_start: rte_pdcp_rte_ring_enqueue_zc_bulk_elem_start.type
    var rte_ring_enqueue_zc_bulk_start: rte_pdcp_rte_ring_enqueue_zc_bulk_start.type
    var rte_ring_enqueue_zc_burst_elem_start: rte_pdcp_rte_ring_enqueue_zc_burst_elem_start.type
    var rte_ring_enqueue_zc_burst_start: rte_pdcp_rte_ring_enqueue_zc_burst_start.type
    var rte_ring_enqueue_zc_elem_finish: rte_pdcp_rte_ring_enqueue_zc_elem_finish.type
    var rte_ring_enqueue_zc_finish: rte_pdcp_rte_ring_enqueue_zc_finish.type
    var rte_ring_dequeue_zc_bulk_elem_start: rte_pdcp_rte_ring_dequeue_zc_bulk_elem_start.type
    var rte_ring_dequeue_zc_bulk_start: rte_pdcp_rte_ring_dequeue_zc_bulk_start.type
    var rte_ring_dequeue_zc_burst_elem_start: rte_pdcp_rte_ring_dequeue_zc_burst_elem_start.type
    var rte_ring_dequeue_zc_burst_start: rte_pdcp_rte_ring_dequeue_zc_burst_start.type
    var rte_ring_dequeue_zc_elem_finish: rte_pdcp_rte_ring_dequeue_zc_elem_finish.type
    var rte_ring_dequeue_zc_finish: rte_pdcp_rte_ring_dequeue_zc_finish.type
    var rte_ring_get_memsize: rte_pdcp_rte_ring_get_memsize.type
    var rte_ring_init: rte_pdcp_rte_ring_init.type
    var rte_ring_free: rte_pdcp_rte_ring_free.type
    var rte_ring_create: rte_pdcp_rte_ring_create.type
    var rte_ring_dump: rte_pdcp_rte_ring_dump.type
    var rte_ring_headtail_dump: rte_pdcp_rte_ring_headtail_dump.type
    var rte_ring_mp_enqueue_bulk: rte_pdcp_rte_ring_mp_enqueue_bulk.type
    var rte_ring_sp_enqueue_bulk: rte_pdcp_rte_ring_sp_enqueue_bulk.type
    var rte_ring_enqueue_bulk: rte_pdcp_rte_ring_enqueue_bulk.type
    var rte_ring_mp_enqueue: rte_pdcp_rte_ring_mp_enqueue.type
    var rte_ring_sp_enqueue: rte_pdcp_rte_ring_sp_enqueue.type
    var rte_ring_enqueue: rte_pdcp_rte_ring_enqueue.type
    var rte_ring_mc_dequeue_bulk: rte_pdcp_rte_ring_mc_dequeue_bulk.type
    var rte_ring_sc_dequeue_bulk: rte_pdcp_rte_ring_sc_dequeue_bulk.type
    var rte_ring_dequeue_bulk: rte_pdcp_rte_ring_dequeue_bulk.type
    var rte_ring_mc_dequeue: rte_pdcp_rte_ring_mc_dequeue.type
    var rte_ring_sc_dequeue: rte_pdcp_rte_ring_sc_dequeue.type
    var rte_ring_dequeue: rte_pdcp_rte_ring_dequeue.type
    var rte_ring_reset: rte_pdcp_rte_ring_reset.type
    var rte_ring_count: rte_pdcp_rte_ring_count.type
    var rte_ring_free_count: rte_pdcp_rte_ring_free_count.type
    var rte_ring_full: rte_pdcp_rte_ring_full.type
    var rte_ring_empty: rte_pdcp_rte_ring_empty.type
    var rte_ring_get_size: rte_pdcp_rte_ring_get_size.type
    var rte_ring_get_capacity: rte_pdcp_rte_ring_get_capacity.type
    var rte_ring_get_prod_sync_type: rte_pdcp_rte_ring_get_prod_sync_type.type
    var rte_ring_is_prod_single: rte_pdcp_rte_ring_is_prod_single.type
    var rte_ring_get_cons_sync_type: rte_pdcp_rte_ring_get_cons_sync_type.type
    var rte_ring_is_cons_single: rte_pdcp_rte_ring_is_cons_single.type
    var rte_ring_list_dump: rte_pdcp_rte_ring_list_dump.type
    var rte_ring_lookup: rte_pdcp_rte_ring_lookup.type
    var rte_ring_mp_enqueue_burst: rte_pdcp_rte_ring_mp_enqueue_burst.type
    var rte_ring_sp_enqueue_burst: rte_pdcp_rte_ring_sp_enqueue_burst.type
    var rte_ring_enqueue_burst: rte_pdcp_rte_ring_enqueue_burst.type
    var rte_ring_mc_dequeue_burst: rte_pdcp_rte_ring_mc_dequeue_burst.type
    var rte_ring_sc_dequeue_burst: rte_pdcp_rte_ring_sc_dequeue_burst.type
    var rte_ring_dequeue_burst: rte_pdcp_rte_ring_dequeue_burst.type
    var rte_mov16: rte_pdcp_rte_mov16.type
    var rte_mov32: rte_pdcp_rte_mov32.type
    var rte_mov64: rte_pdcp_rte_mov64.type
    var rte_mov128: rte_pdcp_rte_mov128.type
    var rte_mov256: rte_pdcp_rte_mov256.type
    var rte_mov48: rte_pdcp_rte_mov48.type
    var rte_get_tsc_hz: rte_pdcp_rte_get_tsc_hz.type
    var rte_get_tsc_cycles: rte_pdcp_rte_get_tsc_cycles.type
    var rte_get_timer_cycles: rte_pdcp_rte_get_timer_cycles.type
    var rte_get_timer_hz: rte_pdcp_rte_get_timer_hz.type
    var rte_delay_ms: rte_pdcp_rte_delay_ms.type
    var rte_delay_us_block: rte_pdcp_rte_delay_us_block.type
    var rte_delay_us_sleep: rte_pdcp_rte_delay_us_sleep.type
    var rte_delay_us_callback_register: rte_pdcp_rte_delay_us_callback_register.type
    var rte_rdtsc: rte_pdcp_rte_rdtsc.type
    var rte_rdtsc_precise: rte_pdcp_rte_rdtsc_precise.type
    var isalnum: rte_pdcp_isalnum.type
    var isalpha: rte_pdcp_isalpha.type
    var iscntrl: rte_pdcp_iscntrl.type
    var isdigit: rte_pdcp_isdigit.type
    var islower: rte_pdcp_islower.type
    var isgraph: rte_pdcp_isgraph.type
    var isprint: rte_pdcp_isprint.type
    var ispunct: rte_pdcp_ispunct.type
    var isspace: rte_pdcp_isspace.type
    var isupper: rte_pdcp_isupper.type
    var isxdigit: rte_pdcp_isxdigit.type
    var tolower: rte_pdcp_tolower.type
    var toupper: rte_pdcp_toupper.type
    var isblank: rte_pdcp_isblank.type
    var isascii: rte_pdcp_isascii.type
    var toascii: rte_pdcp_toascii.type
    var isalnum_l: rte_pdcp_isalnum_l.type
    var isalpha_l: rte_pdcp_isalpha_l.type
    var iscntrl_l: rte_pdcp_iscntrl_l.type
    var isdigit_l: rte_pdcp_isdigit_l.type
    var islower_l: rte_pdcp_islower_l.type
    var isgraph_l: rte_pdcp_isgraph_l.type
    var isprint_l: rte_pdcp_isprint_l.type
    var ispunct_l: rte_pdcp_ispunct_l.type
    var isspace_l: rte_pdcp_isspace_l.type
    var isupper_l: rte_pdcp_isupper_l.type
    var isxdigit_l: rte_pdcp_isxdigit_l.type
    var isblank_l: rte_pdcp_isblank_l.type
    var tolower_l: rte_pdcp_tolower_l.type
    var toupper_l: rte_pdcp_toupper_l.type
    var rte_strsplit: rte_pdcp_rte_strsplit.type
    var rte_strlcpy: rte_pdcp_rte_strlcpy.type
    var rte_strlcat: rte_pdcp_rte_strlcat.type
    var rte_strscpy: rte_pdcp_rte_strscpy.type
    var rte_str_skip_leading_spaces: rte_pdcp_rte_str_skip_leading_spaces.type
    var rte_trace_is_enabled: rte_pdcp_rte_trace_is_enabled.type
    var rte_trace_feature_is_enabled: rte_pdcp_rte_trace_feature_is_enabled.type
    var rte_trace_mode_set: rte_pdcp_rte_trace_mode_set.type
    var rte_trace_mode_get: rte_pdcp_rte_trace_mode_get.type
    var rte_trace_pattern: rte_pdcp_rte_trace_pattern.type
    var rte_trace_regexp: rte_pdcp_rte_trace_regexp.type
    var rte_trace_save: rte_pdcp_rte_trace_save.type
    var rte_trace_metadata_dump: rte_pdcp_rte_trace_metadata_dump.type
    var rte_trace_dump: rte_pdcp_rte_trace_dump.type
    var rte_trace_point_enable: rte_pdcp_rte_trace_point_enable.type
    var rte_trace_point_disable: rte_pdcp_rte_trace_point_disable.type
    var rte_trace_point_is_enabled: rte_pdcp_rte_trace_point_is_enabled.type
    var rte_trace_point_lookup: rte_pdcp_rte_trace_point_lookup.type
    var rte_mempool_trace_ops_dequeue_bulk: rte_pdcp_rte_mempool_trace_ops_dequeue_bulk.type
    var rte_mempool_trace_ops_dequeue_contig_blocks: rte_pdcp_rte_mempool_trace_ops_dequeue_contig_blocks.type
    var rte_mempool_trace_ops_enqueue_bulk: rte_pdcp_rte_mempool_trace_ops_enqueue_bulk.type
    var rte_mempool_trace_generic_put: rte_pdcp_rte_mempool_trace_generic_put.type
    var rte_mempool_trace_put_bulk: rte_pdcp_rte_mempool_trace_put_bulk.type
    var rte_mempool_trace_generic_get: rte_pdcp_rte_mempool_trace_generic_get.type
    var rte_mempool_trace_get_bulk: rte_pdcp_rte_mempool_trace_get_bulk.type
    var rte_mempool_trace_get_contig_blocks: rte_pdcp_rte_mempool_trace_get_contig_blocks.type
    var rte_mempool_trace_default_cache: rte_pdcp_rte_mempool_trace_default_cache.type
    var rte_mempool_trace_cache_flush: rte_pdcp_rte_mempool_trace_cache_flush.type
    var rte_mempool_get_header: rte_pdcp_rte_mempool_get_header.type
    var rte_mempool_from_obj: rte_pdcp_rte_mempool_from_obj.type
    var rte_mempool_get_trailer: rte_pdcp_rte_mempool_get_trailer.type
    var rte_mempool_check_cookies: rte_pdcp_rte_mempool_check_cookies.type
    var rte_mempool_contig_blocks_check_cookies: rte_pdcp_rte_mempool_contig_blocks_check_cookies.type
    var rte_mempool_op_calc_mem_size_helper: rte_pdcp_rte_mempool_op_calc_mem_size_helper.type
    var rte_mempool_op_calc_mem_size_default: rte_pdcp_rte_mempool_op_calc_mem_size_default.type
    var rte_mempool_op_populate_helper: rte_pdcp_rte_mempool_op_populate_helper.type
    var rte_mempool_op_populate_default: rte_pdcp_rte_mempool_op_populate_default.type
    var rte_mempool_get_ops: rte_pdcp_rte_mempool_get_ops.type
    var rte_mempool_ops_alloc: rte_pdcp_rte_mempool_ops_alloc.type
    var rte_mempool_ops_dequeue_bulk: rte_pdcp_rte_mempool_ops_dequeue_bulk.type
    var rte_mempool_ops_dequeue_contig_blocks: rte_pdcp_rte_mempool_ops_dequeue_contig_blocks.type
    var rte_mempool_ops_enqueue_bulk: rte_pdcp_rte_mempool_ops_enqueue_bulk.type
    var rte_mempool_ops_get_count: rte_pdcp_rte_mempool_ops_get_count.type
    var rte_mempool_ops_calc_mem_size: rte_pdcp_rte_mempool_ops_calc_mem_size.type
    var rte_mempool_ops_populate: rte_pdcp_rte_mempool_ops_populate.type
    var rte_mempool_ops_get_info: rte_pdcp_rte_mempool_ops_get_info.type
    var rte_mempool_ops_free: rte_pdcp_rte_mempool_ops_free.type
    var rte_mempool_set_ops_byname: rte_pdcp_rte_mempool_set_ops_byname.type
    var rte_mempool_register_ops: rte_pdcp_rte_mempool_register_ops.type
    var rte_mempool_free: rte_pdcp_rte_mempool_free.type
    var rte_mempool_create: rte_pdcp_rte_mempool_create.type
    var rte_mempool_create_empty: rte_pdcp_rte_mempool_create_empty.type
    var rte_mempool_populate_iova: rte_pdcp_rte_mempool_populate_iova.type
    var rte_mempool_populate_virt: rte_pdcp_rte_mempool_populate_virt.type
    var rte_mempool_populate_default: rte_pdcp_rte_mempool_populate_default.type
    var rte_mempool_populate_anon: rte_pdcp_rte_mempool_populate_anon.type
    var rte_mempool_obj_iter: rte_pdcp_rte_mempool_obj_iter.type
    var rte_mempool_mem_iter: rte_pdcp_rte_mempool_mem_iter.type
    var rte_mempool_dump: rte_pdcp_rte_mempool_dump.type
    var rte_mempool_cache_create: rte_pdcp_rte_mempool_cache_create.type
    var rte_mempool_cache_free: rte_pdcp_rte_mempool_cache_free.type
    var rte_mempool_default_cache: rte_pdcp_rte_mempool_default_cache.type
    var rte_mempool_cache_flush: rte_pdcp_rte_mempool_cache_flush.type
    var rte_mempool_do_generic_put: rte_pdcp_rte_mempool_do_generic_put.type
    var rte_mempool_generic_put: rte_pdcp_rte_mempool_generic_put.type
    var rte_mempool_put_bulk: rte_pdcp_rte_mempool_put_bulk.type
    var rte_mempool_put: rte_pdcp_rte_mempool_put.type
    var rte_mempool_do_generic_get: rte_pdcp_rte_mempool_do_generic_get.type
    var rte_mempool_generic_get: rte_pdcp_rte_mempool_generic_get.type
    var rte_mempool_get_bulk: rte_pdcp_rte_mempool_get_bulk.type
    var rte_mempool_get: rte_pdcp_rte_mempool_get.type
    var rte_mempool_get_contig_blocks: rte_pdcp_rte_mempool_get_contig_blocks.type
    var rte_mempool_avail_count: rte_pdcp_rte_mempool_avail_count.type
    var rte_mempool_in_use_count: rte_pdcp_rte_mempool_in_use_count.type
    var rte_mempool_full: rte_pdcp_rte_mempool_full.type
    var rte_mempool_empty: rte_pdcp_rte_mempool_empty.type
    var rte_mempool_virt2iova: rte_pdcp_rte_mempool_virt2iova.type
    var rte_mempool_audit: rte_pdcp_rte_mempool_audit.type
    var rte_mempool_get_priv: rte_pdcp_rte_mempool_get_priv.type
    var rte_mempool_list_dump: rte_pdcp_rte_mempool_list_dump.type
    var rte_mempool_lookup: rte_pdcp_rte_mempool_lookup.type
    var rte_mempool_calc_obj_size: rte_pdcp_rte_mempool_calc_obj_size.type
    var rte_mempool_walk: rte_pdcp_rte_mempool_walk.type
    var rte_mempool_get_mem_range: rte_pdcp_rte_mempool_get_mem_range.type
    var rte_mempool_get_obj_alignment: rte_pdcp_rte_mempool_get_obj_alignment.type
    var rte_mempool_get_page_size: rte_pdcp_rte_mempool_get_page_size.type
    var rte_mempool_event_callback_register: rte_pdcp_rte_mempool_event_callback_register.type
    var rte_mempool_event_callback_unregister: rte_pdcp_rte_mempool_event_callback_unregister.type
    var rte_constant_bswap16: rte_pdcp_rte_constant_bswap16.type
    var rte_constant_bswap32: rte_pdcp_rte_constant_bswap32.type
    var rte_constant_bswap64: rte_pdcp_rte_constant_bswap64.type
    var select: rte_pdcp_select.type
    var pselect: rte_pdcp_pselect.type
    var rte_prefetch0: rte_pdcp_rte_prefetch0.type
    var rte_prefetch1: rte_pdcp_rte_prefetch1.type
    var rte_prefetch2: rte_pdcp_rte_prefetch2.type
    var rte_prefetch_non_temporal: rte_pdcp_rte_prefetch_non_temporal.type
    var rte_prefetch0_write: rte_pdcp_rte_prefetch0_write.type
    var rte_prefetch1_write: rte_pdcp_rte_prefetch1_write.type
    var rte_prefetch2_write: rte_pdcp_rte_prefetch2_write.type
    var rte_cldemote: rte_pdcp_rte_cldemote.type
    var rte_get_ptype_l2_name: rte_pdcp_rte_get_ptype_l2_name.type
    var rte_get_ptype_l3_name: rte_pdcp_rte_get_ptype_l3_name.type
    var rte_get_ptype_l4_name: rte_pdcp_rte_get_ptype_l4_name.type
    var rte_get_ptype_tunnel_name: rte_pdcp_rte_get_ptype_tunnel_name.type
    var rte_get_ptype_inner_l2_name: rte_pdcp_rte_get_ptype_inner_l2_name.type
    var rte_get_ptype_inner_l3_name: rte_pdcp_rte_get_ptype_inner_l3_name.type
    var rte_get_ptype_inner_l4_name: rte_pdcp_rte_get_ptype_inner_l4_name.type
    var rte_get_ptype_name: rte_pdcp_rte_get_ptype_name.type
    var rte_get_rx_ol_flag_name: rte_pdcp_rte_get_rx_ol_flag_name.type
    var rte_get_rx_ol_flag_list: rte_pdcp_rte_get_rx_ol_flag_list.type
    var rte_get_tx_ol_flag_name: rte_pdcp_rte_get_tx_ol_flag_name.type
    var rte_get_tx_ol_flag_list: rte_pdcp_rte_get_tx_ol_flag_list.type
    var rte_mbuf_prefetch_part1: rte_pdcp_rte_mbuf_prefetch_part1.type
    var rte_mbuf_prefetch_part2: rte_pdcp_rte_mbuf_prefetch_part2.type
    var rte_pktmbuf_priv_size: rte_pdcp_rte_pktmbuf_priv_size.type
    var rte_mbuf_iova_get: rte_pdcp_rte_mbuf_iova_get.type
    var rte_mbuf_iova_set: rte_pdcp_rte_mbuf_iova_set.type
    var rte_mbuf_data_iova: rte_pdcp_rte_mbuf_data_iova.type
    var rte_mbuf_data_iova_default: rte_pdcp_rte_mbuf_data_iova_default.type
    var rte_mbuf_from_indirect: rte_pdcp_rte_mbuf_from_indirect.type
    var rte_mbuf_buf_addr: rte_pdcp_rte_mbuf_buf_addr.type
    var rte_mbuf_data_addr_default: rte_pdcp_rte_mbuf_data_addr_default.type
    var rte_mbuf_to_baddr: rte_pdcp_rte_mbuf_to_baddr.type
    var rte_mbuf_to_priv: rte_pdcp_rte_mbuf_to_priv.type
    var rte_pktmbuf_priv_flags: rte_pdcp_rte_pktmbuf_priv_flags.type
    var rte_mbuf_refcnt_read: rte_pdcp_rte_mbuf_refcnt_read.type
    var rte_mbuf_refcnt_set: rte_pdcp_rte_mbuf_refcnt_set.type
    var rte_mbuf_refcnt_update: rte_pdcp_rte_mbuf_refcnt_update.type
    var rte_mbuf_ext_refcnt_read: rte_pdcp_rte_mbuf_ext_refcnt_read.type
    var rte_mbuf_ext_refcnt_set: rte_pdcp_rte_mbuf_ext_refcnt_set.type
    var rte_mbuf_ext_refcnt_update: rte_pdcp_rte_mbuf_ext_refcnt_update.type
    var rte_mbuf_sanity_check: rte_pdcp_rte_mbuf_sanity_check.type
    var rte_mbuf_check: rte_pdcp_rte_mbuf_check.type
    var rte_mbuf_raw_alloc: rte_pdcp_rte_mbuf_raw_alloc.type
    var rte_mbuf_raw_alloc_bulk: rte_pdcp_rte_mbuf_raw_alloc_bulk.type
    var rte_mbuf_raw_free: rte_pdcp_rte_mbuf_raw_free.type
    var rte_mbuf_raw_free_bulk: rte_pdcp_rte_mbuf_raw_free_bulk.type
    var rte_pktmbuf_init: rte_pdcp_rte_pktmbuf_init.type
    var rte_pktmbuf_pool_init: rte_pdcp_rte_pktmbuf_pool_init.type
    var rte_pktmbuf_pool_create: rte_pdcp_rte_pktmbuf_pool_create.type
    var rte_pktmbuf_pool_create_by_ops: rte_pdcp_rte_pktmbuf_pool_create_by_ops.type
    var rte_pktmbuf_pool_create_extbuf: rte_pdcp_rte_pktmbuf_pool_create_extbuf.type
    var rte_pktmbuf_data_room_size: rte_pdcp_rte_pktmbuf_data_room_size.type
    var rte_pktmbuf_reset_headroom: rte_pdcp_rte_pktmbuf_reset_headroom.type
    var rte_pktmbuf_reset: rte_pdcp_rte_pktmbuf_reset.type
    var rte_pktmbuf_alloc: rte_pdcp_rte_pktmbuf_alloc.type
    var rte_pktmbuf_alloc_bulk: rte_pdcp_rte_pktmbuf_alloc_bulk.type
    var rte_pktmbuf_ext_shinfo_init_helper: rte_pdcp_rte_pktmbuf_ext_shinfo_init_helper.type
    var rte_pktmbuf_attach_extbuf: rte_pdcp_rte_pktmbuf_attach_extbuf.type
    var rte_mbuf_dynfield_copy: rte_pdcp_rte_mbuf_dynfield_copy.type
    var rte_pktmbuf_attach: rte_pdcp_rte_pktmbuf_attach.type
    var rte_pktmbuf_detach: rte_pdcp_rte_pktmbuf_detach.type
    var rte_pktmbuf_prefree_seg: rte_pdcp_rte_pktmbuf_prefree_seg.type
    var rte_pktmbuf_free_seg: rte_pdcp_rte_pktmbuf_free_seg.type
    var rte_pktmbuf_free: rte_pdcp_rte_pktmbuf_free.type
    var rte_pktmbuf_free_bulk: rte_pdcp_rte_pktmbuf_free_bulk.type
    var rte_pktmbuf_clone: rte_pdcp_rte_pktmbuf_clone.type
    var rte_pktmbuf_copy: rte_pdcp_rte_pktmbuf_copy.type
    var rte_pktmbuf_refcnt_update: rte_pdcp_rte_pktmbuf_refcnt_update.type
    var rte_pktmbuf_headroom: rte_pdcp_rte_pktmbuf_headroom.type
    var rte_pktmbuf_tailroom: rte_pdcp_rte_pktmbuf_tailroom.type
    var rte_pktmbuf_lastseg: rte_pdcp_rte_pktmbuf_lastseg.type
    var rte_pktmbuf_prepend: rte_pdcp_rte_pktmbuf_prepend.type
    var rte_pktmbuf_append: rte_pdcp_rte_pktmbuf_append.type
    var rte_pktmbuf_adj: rte_pdcp_rte_pktmbuf_adj.type
    var rte_pktmbuf_trim: rte_pdcp_rte_pktmbuf_trim.type
    var rte_pktmbuf_is_contiguous: rte_pdcp_rte_pktmbuf_is_contiguous.type
    var rte_pktmbuf_read: rte_pdcp_rte_pktmbuf_read.type
    var rte_pktmbuf_chain: rte_pdcp_rte_pktmbuf_chain.type
    var rte_mbuf_tx_offload: rte_pdcp_rte_mbuf_tx_offload.type
    var rte_validate_tx_offload: rte_pdcp_rte_validate_tx_offload.type
    var rte_pktmbuf_linearize: rte_pdcp_rte_pktmbuf_linearize.type
    var rte_pktmbuf_dump: rte_pdcp_rte_pktmbuf_dump.type
    var rte_mbuf_sched_queue_get: rte_pdcp_rte_mbuf_sched_queue_get.type
    var rte_mbuf_sched_traffic_class_get: rte_pdcp_rte_mbuf_sched_traffic_class_get.type
    var rte_mbuf_sched_color_get: rte_pdcp_rte_mbuf_sched_color_get.type
    var rte_mbuf_sched_get: rte_pdcp_rte_mbuf_sched_get.type
    var rte_mbuf_sched_queue_set: rte_pdcp_rte_mbuf_sched_queue_set.type
    var rte_mbuf_sched_traffic_class_set: rte_pdcp_rte_mbuf_sched_traffic_class_set.type
    var rte_mbuf_sched_color_set: rte_pdcp_rte_mbuf_sched_color_set.type
    var rte_mbuf_sched_set: rte_pdcp_rte_mbuf_sched_set.type
    var rte_crypto_mbuf_to_vec: rte_pdcp_rte_crypto_mbuf_to_vec.type
    var rte_crypto_op_pool_create: rte_pdcp_rte_crypto_op_pool_create.type
    var rte_crypto_op_alloc: rte_pdcp_rte_crypto_op_alloc.type
    var rte_crypto_op_bulk_alloc: rte_pdcp_rte_crypto_op_bulk_alloc.type
    var rte_crypto_op_free: rte_pdcp_rte_crypto_op_free.type
    var rte_crypto_sym_op_alloc_from_mbuf_priv_data: rte_pdcp_rte_crypto_sym_op_alloc_from_mbuf_priv_data.type
    var rte_crypto_op_sym_xforms_alloc: rte_pdcp_rte_crypto_op_sym_xforms_alloc.type
    var rte_crypto_op_attach_sym_session: rte_pdcp_rte_crypto_op_attach_sym_session.type
    var rte_crypto_op_attach_asym_session: rte_pdcp_rte_crypto_op_attach_asym_session.type
    var socket: rte_pdcp_socket.type
    var socketpair: rte_pdcp_socketpair.type
    var bind: rte_pdcp_bind.type
    var getsockname: rte_pdcp_getsockname.type
    var connect: rte_pdcp_connect.type
    var getpeername: rte_pdcp_getpeername.type
    var send: rte_pdcp_send.type
    var recv: rte_pdcp_recv.type
    var sendto: rte_pdcp_sendto.type
    var recvfrom: rte_pdcp_recvfrom.type
    var sendmsg: rte_pdcp_sendmsg.type
    var recvmsg: rte_pdcp_recvmsg.type
    var getsockopt: rte_pdcp_getsockopt.type
    var setsockopt: rte_pdcp_setsockopt.type
    var listen: rte_pdcp_listen.type
    var accept: rte_pdcp_accept.type
    var shutdown: rte_pdcp_shutdown.type
    var sockatmark: rte_pdcp_sockatmark.type
    var isfdtype: rte_pdcp_isfdtype.type
    var ntohl: rte_pdcp_ntohl.type
    var ntohs: rte_pdcp_ntohs.type
    var htonl: rte_pdcp_htonl.type
    var htons: rte_pdcp_htons.type
    var bindresvport: rte_pdcp_bindresvport.type
    var bindresvport6: rte_pdcp_bindresvport6.type
    var inet_addr: rte_pdcp_inet_addr.type
    var inet_lnaof: rte_pdcp_inet_lnaof.type
    var inet_makeaddr: rte_pdcp_inet_makeaddr.type
    var inet_netof: rte_pdcp_inet_netof.type
    var inet_network: rte_pdcp_inet_network.type
    var inet_ntoa: rte_pdcp_inet_ntoa.type
    var inet_pton: rte_pdcp_inet_pton.type
    var inet_ntop: rte_pdcp_inet_ntop.type
    var inet_aton: rte_pdcp_inet_aton.type
    var inet_neta: rte_pdcp_inet_neta.type
    var inet_net_ntop: rte_pdcp_inet_net_ntop.type
    var inet_net_pton: rte_pdcp_inet_net_pton.type
    var inet_nsap_addr: rte_pdcp_inet_nsap_addr.type
    var inet_nsap_ntoa: rte_pdcp_inet_nsap_ntoa.type
    var rte_raw_cksum: rte_pdcp_rte_raw_cksum.type
    var rte_raw_cksum_mbuf: rte_pdcp_rte_raw_cksum_mbuf.type
    var rte_ipv4_hdr_len: rte_pdcp_rte_ipv4_hdr_len.type
    var rte_ipv4_cksum: rte_pdcp_rte_ipv4_cksum.type
    var rte_ipv4_cksum_simple: rte_pdcp_rte_ipv4_cksum_simple.type
    var rte_ipv4_phdr_cksum: rte_pdcp_rte_ipv4_phdr_cksum.type
    var rte_ipv4_udptcp_cksum: rte_pdcp_rte_ipv4_udptcp_cksum.type
    var rte_ipv4_udptcp_cksum_mbuf: rte_pdcp_rte_ipv4_udptcp_cksum_mbuf.type
    var rte_ipv4_udptcp_cksum_verify: rte_pdcp_rte_ipv4_udptcp_cksum_verify.type
    var rte_ipv4_udptcp_cksum_mbuf_verify: rte_pdcp_rte_ipv4_udptcp_cksum_mbuf_verify.type
    var rte_srand: rte_pdcp_rte_srand.type
    var rte_rand: rte_pdcp_rte_rand.type
    var rte_rand_max: rte_pdcp_rte_rand_max.type
    var rte_drand: rte_pdcp_rte_drand.type
    var rte_is_same_ether_addr: rte_pdcp_rte_is_same_ether_addr.type
    var rte_is_zero_ether_addr: rte_pdcp_rte_is_zero_ether_addr.type
    var rte_is_unicast_ether_addr: rte_pdcp_rte_is_unicast_ether_addr.type
    var rte_is_multicast_ether_addr: rte_pdcp_rte_is_multicast_ether_addr.type
    var rte_is_broadcast_ether_addr: rte_pdcp_rte_is_broadcast_ether_addr.type
    var rte_is_universal_ether_addr: rte_pdcp_rte_is_universal_ether_addr.type
    var rte_is_local_admin_ether_addr: rte_pdcp_rte_is_local_admin_ether_addr.type
    var rte_is_valid_assigned_ether_addr: rte_pdcp_rte_is_valid_assigned_ether_addr.type
    var rte_eth_random_addr: rte_pdcp_rte_eth_random_addr.type
    var rte_ether_addr_copy: rte_pdcp_rte_ether_addr_copy.type
    var rte_ether_format_addr: rte_pdcp_rte_ether_format_addr.type
    var rte_ether_unformat_addr: rte_pdcp_rte_ether_unformat_addr.type
    var rte_vlan_strip: rte_pdcp_rte_vlan_strip.type
    var rte_vlan_insert: rte_pdcp_rte_vlan_insert.type
    var rte_ipv6_addr_eq: rte_pdcp_rte_ipv6_addr_eq.type
    var rte_ipv6_addr_mask: rte_pdcp_rte_ipv6_addr_mask.type
    var rte_ipv6_addr_eq_prefix: rte_pdcp_rte_ipv6_addr_eq_prefix.type
    var rte_ipv6_mask_depth: rte_pdcp_rte_ipv6_mask_depth.type
    var rte_ipv6_addr_is_unspec: rte_pdcp_rte_ipv6_addr_is_unspec.type
    var rte_ipv6_addr_is_loopback: rte_pdcp_rte_ipv6_addr_is_loopback.type
    var rte_ipv6_addr_is_linklocal: rte_pdcp_rte_ipv6_addr_is_linklocal.type
    var rte_ipv6_addr_is_sitelocal: rte_pdcp_rte_ipv6_addr_is_sitelocal.type
    var rte_ipv6_addr_is_v4compat: rte_pdcp_rte_ipv6_addr_is_v4compat.type
    var rte_ipv6_addr_is_v4mapped: rte_pdcp_rte_ipv6_addr_is_v4mapped.type
    var rte_ipv6_addr_is_mcast: rte_pdcp_rte_ipv6_addr_is_mcast.type
    var rte_ipv6_llocal_from_ethernet: rte_pdcp_rte_ipv6_llocal_from_ethernet.type
    var rte_ipv6_solnode_from_addr: rte_pdcp_rte_ipv6_solnode_from_addr.type
    var rte_ether_mcast_from_ipv6: rte_pdcp_rte_ether_mcast_from_ipv6.type
    var rte_ipv6_check_version: rte_pdcp_rte_ipv6_check_version.type
    var rte_ipv6_phdr_cksum: rte_pdcp_rte_ipv6_phdr_cksum.type
    var rte_ipv6_udptcp_cksum: rte_pdcp_rte_ipv6_udptcp_cksum.type
    var rte_ipv6_udptcp_cksum_mbuf: rte_pdcp_rte_ipv6_udptcp_cksum_mbuf.type
    var rte_ipv6_udptcp_cksum_verify: rte_pdcp_rte_ipv6_udptcp_cksum_verify.type
    var rte_ipv6_udptcp_cksum_mbuf_verify: rte_pdcp_rte_ipv6_udptcp_cksum_mbuf_verify.type
    var rte_ipv6_get_next_ext: rte_pdcp_rte_ipv6_get_next_ext.type
    var rte_mbuf_dynfield_register: rte_pdcp_rte_mbuf_dynfield_register.type
    var rte_mbuf_dynfield_register_offset: rte_pdcp_rte_mbuf_dynfield_register_offset.type
    var rte_mbuf_dynfield_lookup: rte_pdcp_rte_mbuf_dynfield_lookup.type
    var rte_mbuf_dynflag_register: rte_pdcp_rte_mbuf_dynflag_register.type
    var rte_mbuf_dynflag_register_bitnum: rte_pdcp_rte_mbuf_dynflag_register_bitnum.type
    var rte_mbuf_dynflag_lookup: rte_pdcp_rte_mbuf_dynflag_lookup.type
    var rte_mbuf_dyn_dump: rte_pdcp_rte_mbuf_dyn_dump.type
    var rte_mbuf_dyn_rx_timestamp_register: rte_pdcp_rte_mbuf_dyn_rx_timestamp_register.type
    var rte_mbuf_dyn_tx_timestamp_register: rte_pdcp_rte_mbuf_dyn_tx_timestamp_register.type
    var rte_security_session_create: rte_pdcp_rte_security_session_create.type
    var rte_security_session_update: rte_pdcp_rte_security_session_update.type
    var rte_security_session_get_size: rte_pdcp_rte_security_session_get_size.type
    var rte_security_session_destroy: rte_pdcp_rte_security_session_destroy.type
    var rte_security_macsec_sc_create: rte_pdcp_rte_security_macsec_sc_create.type
    var rte_security_macsec_sc_destroy: rte_pdcp_rte_security_macsec_sc_destroy.type
    var rte_security_macsec_sa_create: rte_pdcp_rte_security_macsec_sa_create.type
    var rte_security_macsec_sa_destroy: rte_pdcp_rte_security_macsec_sa_destroy.type
    var rte_security_dynfield: rte_pdcp_rte_security_dynfield.type
    var rte_security_oop_dynfield: rte_pdcp_rte_security_oop_dynfield.type
    var rte_security_dynfield_is_registered: rte_pdcp_rte_security_dynfield_is_registered.type
    var rte_security_ctx_flags_get: rte_pdcp_rte_security_ctx_flags_get.type
    var rte_security_ctx_flags_set: rte_pdcp_rte_security_ctx_flags_set.type
    var rte_security_session_opaque_data_get: rte_pdcp_rte_security_session_opaque_data_get.type
    var rte_security_session_opaque_data_set: rte_pdcp_rte_security_session_opaque_data_set.type
    var rte_security_session_fast_mdata_get: rte_pdcp_rte_security_session_fast_mdata_get.type
    var rte_security_session_fast_mdata_set: rte_pdcp_rte_security_session_fast_mdata_set.type
    var rte_security_set_pkt_metadata: rte_pdcp_rte_security_set_pkt_metadata.type
    var rte_security_attach_session: rte_pdcp_rte_security_attach_session.type
    var rte_security_session_stats_get: rte_pdcp_rte_security_session_stats_get.type
    var rte_security_macsec_sa_stats_get: rte_pdcp_rte_security_macsec_sa_stats_get.type
    var rte_security_macsec_sc_stats_get: rte_pdcp_rte_security_macsec_sc_stats_get.type
    var rte_security_capabilities_get: rte_pdcp_rte_security_capabilities_get.type
    var rte_security_capability_get: rte_pdcp_rte_security_capability_get.type
    var rte_security_rx_inject_configure: rte_pdcp_rte_security_rx_inject_configure.type
    var rte_security_inb_pkt_rx_inject: rte_pdcp_rte_security_inb_pkt_rx_inject.type
    var rte_pdcp_entity_establish: rte_pdcp_rte_pdcp_entity_establish.type
    var rte_pdcp_entity_release: rte_pdcp_rte_pdcp_entity_release.type
    var rte_pdcp_entity_suspend: rte_pdcp_rte_pdcp_entity_suspend.type
    var rte_pdcp_control_pdu_create: rte_pdcp_rte_pdcp_control_pdu_create.type
    var rte_pdcp_pkt_pre_process: rte_pdcp_rte_pdcp_pkt_pre_process.type
    var rte_pdcp_pkt_post_process: rte_pdcp_rte_pdcp_pkt_post_process.type
    var rte_pdcp_t_reordering_expiry_handle: rte_pdcp_rte_pdcp_t_reordering_expiry_handle.type
    var rte_kvargs_parse: rte_pdcp_rte_kvargs_parse.type
    var rte_kvargs_parse_delim: rte_pdcp_rte_kvargs_parse_delim.type
    var rte_kvargs_free: rte_pdcp_rte_kvargs_free.type
    var rte_kvargs_get: rte_pdcp_rte_kvargs_get.type
    var rte_kvargs_get_with_value: rte_pdcp_rte_kvargs_get_with_value.type
    var rte_kvargs_process: rte_pdcp_rte_kvargs_process.type
    var rte_kvargs_process_opt: rte_pdcp_rte_kvargs_process_opt.type
    var rte_kvargs_count: rte_pdcp_rte_kvargs_count.type
    var rte_rcu_qsbr_get_memsize: rte_pdcp_rte_rcu_qsbr_get_memsize.type
    var rte_rcu_qsbr_init: rte_pdcp_rte_rcu_qsbr_init.type
    var rte_rcu_qsbr_thread_register: rte_pdcp_rte_rcu_qsbr_thread_register.type
    var rte_rcu_qsbr_thread_unregister: rte_pdcp_rte_rcu_qsbr_thread_unregister.type
    var rte_rcu_qsbr_thread_online: rte_pdcp_rte_rcu_qsbr_thread_online.type
    var rte_rcu_qsbr_thread_offline: rte_pdcp_rte_rcu_qsbr_thread_offline.type
    var rte_rcu_qsbr_lock: rte_pdcp_rte_rcu_qsbr_lock.type
    var rte_rcu_qsbr_unlock: rte_pdcp_rte_rcu_qsbr_unlock.type
    var rte_rcu_qsbr_start: rte_pdcp_rte_rcu_qsbr_start.type
    var rte_rcu_qsbr_quiescent: rte_pdcp_rte_rcu_qsbr_quiescent.type
    var rte_rcu_qsbr_check: rte_pdcp_rte_rcu_qsbr_check.type
    var rte_rcu_qsbr_synchronize: rte_pdcp_rte_rcu_qsbr_synchronize.type
    var rte_rcu_qsbr_dump: rte_pdcp_rte_rcu_qsbr_dump.type
    var rte_rcu_qsbr_dq_create: rte_pdcp_rte_rcu_qsbr_dq_create.type
    var rte_rcu_qsbr_dq_enqueue: rte_pdcp_rte_rcu_qsbr_dq_enqueue.type
    var rte_rcu_qsbr_dq_reclaim: rte_pdcp_rte_rcu_qsbr_dq_reclaim.type
    var rte_rcu_qsbr_dq_delete: rte_pdcp_rte_rcu_qsbr_dq_delete.type
    var rte_cryptodev_trace_enqueue_burst: rte_pdcp_rte_cryptodev_trace_enqueue_burst.type
    var rte_cryptodev_trace_dequeue_burst: rte_pdcp_rte_cryptodev_trace_dequeue_burst.type
    var rte_cryptodev_trace_qp_depth_used: rte_pdcp_rte_cryptodev_trace_qp_depth_used.type
    var rte_cryptodev_sym_capability_get: rte_pdcp_rte_cryptodev_sym_capability_get.type
    var rte_cryptodev_asym_capability_get: rte_pdcp_rte_cryptodev_asym_capability_get.type
    var rte_cryptodev_sym_capability_check_cipher: rte_pdcp_rte_cryptodev_sym_capability_check_cipher.type
    var rte_cryptodev_sym_capability_check_auth: rte_pdcp_rte_cryptodev_sym_capability_check_auth.type
    var rte_cryptodev_sym_capability_check_aead: rte_pdcp_rte_cryptodev_sym_capability_check_aead.type
    var rte_cryptodev_asym_xform_capability_check_optype: rte_pdcp_rte_cryptodev_asym_xform_capability_check_optype.type
    var rte_cryptodev_asym_xform_capability_check_modlen: rte_pdcp_rte_cryptodev_asym_xform_capability_check_modlen.type
    var rte_cryptodev_asym_xform_capability_check_hash: rte_pdcp_rte_cryptodev_asym_xform_capability_check_hash.type
    var rte_cryptodev_asym_xform_capability_check_opcap: rte_pdcp_rte_cryptodev_asym_xform_capability_check_opcap.type
    var rte_cryptodev_get_cipher_algo_enum: rte_pdcp_rte_cryptodev_get_cipher_algo_enum.type
    var rte_cryptodev_get_auth_algo_enum: rte_pdcp_rte_cryptodev_get_auth_algo_enum.type
    var rte_cryptodev_get_aead_algo_enum: rte_pdcp_rte_cryptodev_get_aead_algo_enum.type
    var rte_cryptodev_asym_get_xform_enum: rte_pdcp_rte_cryptodev_asym_get_xform_enum.type
    var rte_cryptodev_get_cipher_algo_string: rte_pdcp_rte_cryptodev_get_cipher_algo_string.type
    var rte_cryptodev_get_auth_algo_string: rte_pdcp_rte_cryptodev_get_auth_algo_string.type
    var rte_cryptodev_get_aead_algo_string: rte_pdcp_rte_cryptodev_get_aead_algo_string.type
    var rte_cryptodev_asym_get_xform_string: rte_pdcp_rte_cryptodev_asym_get_xform_string.type
    var rte_cryptodev_get_feature_name: rte_pdcp_rte_cryptodev_get_feature_name.type
    var rte_cryptodev_get_dev_id: rte_pdcp_rte_cryptodev_get_dev_id.type
    var rte_cryptodev_name_get: rte_pdcp_rte_cryptodev_name_get.type
    var rte_cryptodev_count: rte_pdcp_rte_cryptodev_count.type
    var rte_cryptodev_device_count_by_driver: rte_pdcp_rte_cryptodev_device_count_by_driver.type
    var rte_cryptodev_devices_get: rte_pdcp_rte_cryptodev_devices_get.type
    var rte_cryptodev_socket_id: rte_pdcp_rte_cryptodev_socket_id.type
    var rte_cryptodev_configure: rte_pdcp_rte_cryptodev_configure.type
    var rte_cryptodev_start: rte_pdcp_rte_cryptodev_start.type
    var rte_cryptodev_stop: rte_pdcp_rte_cryptodev_stop.type
    var rte_cryptodev_close: rte_pdcp_rte_cryptodev_close.type
    var rte_cryptodev_queue_pair_setup: rte_pdcp_rte_cryptodev_queue_pair_setup.type
    var rte_cryptodev_queue_pair_reset: rte_pdcp_rte_cryptodev_queue_pair_reset.type
    var rte_cryptodev_get_qp_status: rte_pdcp_rte_cryptodev_get_qp_status.type
    var rte_cryptodev_queue_pair_count: rte_pdcp_rte_cryptodev_queue_pair_count.type
    var rte_cryptodev_stats_get: rte_pdcp_rte_cryptodev_stats_get.type
    var rte_cryptodev_stats_reset: rte_pdcp_rte_cryptodev_stats_reset.type
    var rte_cryptodev_info_get: rte_pdcp_rte_cryptodev_info_get.type
    var rte_cryptodev_callback_register: rte_pdcp_rte_cryptodev_callback_register.type
    var rte_cryptodev_callback_unregister: rte_pdcp_rte_cryptodev_callback_unregister.type
    var rte_cryptodev_queue_pair_event_error_query: rte_pdcp_rte_cryptodev_queue_pair_event_error_query.type
    var rte_cryptodev_get_sec_ctx: rte_pdcp_rte_cryptodev_get_sec_ctx.type
    var rte_cryptodev_sym_session_pool_create: rte_pdcp_rte_cryptodev_sym_session_pool_create.type
    var rte_cryptodev_asym_session_pool_create: rte_pdcp_rte_cryptodev_asym_session_pool_create.type
    var rte_cryptodev_sym_session_create: rte_pdcp_rte_cryptodev_sym_session_create.type
    var rte_cryptodev_asym_session_create: rte_pdcp_rte_cryptodev_asym_session_create.type
    var rte_cryptodev_sym_session_free: rte_pdcp_rte_cryptodev_sym_session_free.type
    var rte_cryptodev_asym_session_free: rte_pdcp_rte_cryptodev_asym_session_free.type
    var rte_cryptodev_asym_get_header_session_size: rte_pdcp_rte_cryptodev_asym_get_header_session_size.type
    var rte_cryptodev_sym_get_private_session_size: rte_pdcp_rte_cryptodev_sym_get_private_session_size.type
    var rte_cryptodev_asym_get_private_session_size: rte_pdcp_rte_cryptodev_asym_get_private_session_size.type
    var rte_cryptodev_is_valid_dev: rte_pdcp_rte_cryptodev_is_valid_dev.type
    var rte_cryptodev_driver_id_get: rte_pdcp_rte_cryptodev_driver_id_get.type
    var rte_cryptodev_driver_name_get: rte_pdcp_rte_cryptodev_driver_name_get.type
    var rte_cryptodev_sym_session_set_user_data: rte_pdcp_rte_cryptodev_sym_session_set_user_data.type
    var rte_cryptodev_sym_session_opaque_data_get: rte_pdcp_rte_cryptodev_sym_session_opaque_data_get.type
    var rte_cryptodev_sym_session_opaque_data_set: rte_pdcp_rte_cryptodev_sym_session_opaque_data_set.type
    var rte_cryptodev_sym_session_get_user_data: rte_pdcp_rte_cryptodev_sym_session_get_user_data.type
    var rte_cryptodev_asym_session_set_user_data: rte_pdcp_rte_cryptodev_asym_session_set_user_data.type
    var rte_cryptodev_asym_session_get_user_data: rte_pdcp_rte_cryptodev_asym_session_get_user_data.type
    var rte_cryptodev_sym_cpu_crypto_process: rte_pdcp_rte_cryptodev_sym_cpu_crypto_process.type
    var rte_cryptodev_get_raw_dp_ctx_size: rte_pdcp_rte_cryptodev_get_raw_dp_ctx_size.type
    var rte_cryptodev_session_event_mdata_set: rte_pdcp_rte_cryptodev_session_event_mdata_set.type
    var rte_cryptodev_configure_raw_dp_ctx: rte_pdcp_rte_cryptodev_configure_raw_dp_ctx.type
    var rte_cryptodev_raw_enqueue_burst: rte_pdcp_rte_cryptodev_raw_enqueue_burst.type
    var rte_cryptodev_raw_enqueue: rte_pdcp_rte_cryptodev_raw_enqueue.type
    var rte_cryptodev_raw_enqueue_done: rte_pdcp_rte_cryptodev_raw_enqueue_done.type
    var rte_cryptodev_raw_dequeue_burst: rte_pdcp_rte_cryptodev_raw_dequeue_burst.type
    var rte_cryptodev_raw_dequeue: rte_pdcp_rte_cryptodev_raw_dequeue.type
    var rte_cryptodev_raw_dequeue_done: rte_pdcp_rte_cryptodev_raw_dequeue_done.type
    var rte_cryptodev_add_enq_callback: rte_pdcp_rte_cryptodev_add_enq_callback.type
    var rte_cryptodev_remove_enq_callback: rte_pdcp_rte_cryptodev_remove_enq_callback.type
    var rte_cryptodev_add_deq_callback: rte_pdcp_rte_cryptodev_add_deq_callback.type
    var rte_cryptodev_remove_deq_callback: rte_pdcp_rte_cryptodev_remove_deq_callback.type
    var rte_cryptodev_dequeue_burst: rte_pdcp_rte_cryptodev_dequeue_burst.type
    var rte_cryptodev_enqueue_burst: rte_pdcp_rte_cryptodev_enqueue_burst.type
    var rte_cryptodev_qp_depth_used: rte_pdcp_rte_cryptodev_qp_depth_used.type
    var rte_pdcp_en_from_cop: rte_pdcp_rte_pdcp_en_from_cop.type
    var rte_pdcp_pkt_crypto_group: rte_pdcp_rte_pdcp_pkt_crypto_group.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_pdcp.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_pdcp from", 'librte_pdcp.so', ":\n", e)
            )

    
        self.alloca = rte_pdcp_alloca.load(self.lib)
        self.sched_setparam = rte_pdcp_sched_setparam.load(self.lib)
        self.sched_getparam = rte_pdcp_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_pdcp_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_pdcp_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_pdcp_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_pdcp_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_pdcp_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_pdcp_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_pdcp_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_pdcp_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_pdcp_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_pdcp_rte_exit.load(self.lib)
        self.remove = rte_pdcp_remove.load(self.lib)
        self.rename = rte_pdcp_rename.load(self.lib)
        self.renameat = rte_pdcp_renameat.load(self.lib)
        self.fclose = rte_pdcp_fclose.load(self.lib)
        self.tmpfile = rte_pdcp_tmpfile.load(self.lib)
        self.tmpnam = rte_pdcp_tmpnam.load(self.lib)
        self.tmpnam_r = rte_pdcp_tmpnam_r.load(self.lib)
        self.tempnam = rte_pdcp_tempnam.load(self.lib)
        self.fflush = rte_pdcp_fflush.load(self.lib)
        self.fflush_unlocked = rte_pdcp_fflush_unlocked.load(self.lib)
        self.fopen = rte_pdcp_fopen.load(self.lib)
        self.freopen = rte_pdcp_freopen.load(self.lib)
        self.fdopen = rte_pdcp_fdopen.load(self.lib)
        self.fmemopen = rte_pdcp_fmemopen.load(self.lib)
        self.open_memstream = rte_pdcp_open_memstream.load(self.lib)
        self.setbuf = rte_pdcp_setbuf.load(self.lib)
        self.setvbuf = rte_pdcp_setvbuf.load(self.lib)
        self.setbuffer = rte_pdcp_setbuffer.load(self.lib)
        self.setlinebuf = rte_pdcp_setlinebuf.load(self.lib)
        self.fprintf = rte_pdcp_fprintf.load(self.lib)
        self.printf = rte_pdcp_printf.load(self.lib)
        self.sprintf = rte_pdcp_sprintf.load(self.lib)
        self.vfprintf = rte_pdcp_vfprintf.load(self.lib)
        self.vprintf = rte_pdcp_vprintf.load(self.lib)
        self.vsprintf = rte_pdcp_vsprintf.load(self.lib)
        self.snprintf = rte_pdcp_snprintf.load(self.lib)
        self.vsnprintf = rte_pdcp_vsnprintf.load(self.lib)
        self.vdprintf = rte_pdcp_vdprintf.load(self.lib)
        self.dprintf = rte_pdcp_dprintf.load(self.lib)
        self.fscanf = rte_pdcp_fscanf.load(self.lib)
        self.scanf = rte_pdcp_scanf.load(self.lib)
        self.sscanf = rte_pdcp_sscanf.load(self.lib)
        self.vfscanf = rte_pdcp_vfscanf.load(self.lib)
        self.vscanf = rte_pdcp_vscanf.load(self.lib)
        self.vsscanf = rte_pdcp_vsscanf.load(self.lib)
        self.fgetc = rte_pdcp_fgetc.load(self.lib)
        self.getc = rte_pdcp_getc.load(self.lib)
        self.getchar = rte_pdcp_getchar.load(self.lib)
        self.getc_unlocked = rte_pdcp_getc_unlocked.load(self.lib)
        self.getchar_unlocked = rte_pdcp_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = rte_pdcp_fgetc_unlocked.load(self.lib)
        self.fputc = rte_pdcp_fputc.load(self.lib)
        self.putc = rte_pdcp_putc.load(self.lib)
        self.putchar = rte_pdcp_putchar.load(self.lib)
        self.fputc_unlocked = rte_pdcp_fputc_unlocked.load(self.lib)
        self.putc_unlocked = rte_pdcp_putc_unlocked.load(self.lib)
        self.putchar_unlocked = rte_pdcp_putchar_unlocked.load(self.lib)
        self.getw = rte_pdcp_getw.load(self.lib)
        self.putw = rte_pdcp_putw.load(self.lib)
        self.fgets = rte_pdcp_fgets.load(self.lib)
        self.getdelim = rte_pdcp_getdelim.load(self.lib)
        self.getline = rte_pdcp_getline.load(self.lib)
        self.fputs = rte_pdcp_fputs.load(self.lib)
        self.puts = rte_pdcp_puts.load(self.lib)
        self.ungetc = rte_pdcp_ungetc.load(self.lib)
        self.fread = rte_pdcp_fread.load(self.lib)
        self.fwrite = rte_pdcp_fwrite.load(self.lib)
        self.fread_unlocked = rte_pdcp_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = rte_pdcp_fwrite_unlocked.load(self.lib)
        self.fseek = rte_pdcp_fseek.load(self.lib)
        self.ftell = rte_pdcp_ftell.load(self.lib)
        self.rewind = rte_pdcp_rewind.load(self.lib)
        self.fseeko = rte_pdcp_fseeko.load(self.lib)
        self.ftello = rte_pdcp_ftello.load(self.lib)
        self.fgetpos = rte_pdcp_fgetpos.load(self.lib)
        self.fsetpos = rte_pdcp_fsetpos.load(self.lib)
        self.clearerr = rte_pdcp_clearerr.load(self.lib)
        self.feof = rte_pdcp_feof.load(self.lib)
        self.ferror = rte_pdcp_ferror.load(self.lib)
        self.clearerr_unlocked = rte_pdcp_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = rte_pdcp_feof_unlocked.load(self.lib)
        self.ferror_unlocked = rte_pdcp_ferror_unlocked.load(self.lib)
        self.perror = rte_pdcp_perror.load(self.lib)
        self.fileno = rte_pdcp_fileno.load(self.lib)
        self.fileno_unlocked = rte_pdcp_fileno_unlocked.load(self.lib)
        self.pclose = rte_pdcp_pclose.load(self.lib)
        self.popen = rte_pdcp_popen.load(self.lib)
        self.ctermid = rte_pdcp_ctermid.load(self.lib)
        self.flockfile = rte_pdcp_flockfile.load(self.lib)
        self.ftrylockfile = rte_pdcp_ftrylockfile.load(self.lib)
        self.funlockfile = rte_pdcp_funlockfile.load(self.lib)
        self.imaxabs = rte_pdcp_imaxabs.load(self.lib)
        self.imaxdiv = rte_pdcp_imaxdiv.load(self.lib)
        self.strtoimax = rte_pdcp_strtoimax.load(self.lib)
        self.strtoumax = rte_pdcp_strtoumax.load(self.lib)
        self.wcstoimax = rte_pdcp_wcstoimax.load(self.lib)
        self.wcstoumax = rte_pdcp_wcstoumax.load(self.lib)
        self.clock = rte_pdcp_clock.load(self.lib)
        self.time = rte_pdcp_time.load(self.lib)
        self.difftime = rte_pdcp_difftime.load(self.lib)
        self.mktime = rte_pdcp_mktime.load(self.lib)
        self.strftime = rte_pdcp_strftime.load(self.lib)
        self.strftime_l = rte_pdcp_strftime_l.load(self.lib)
        self.gmtime = rte_pdcp_gmtime.load(self.lib)
        self.localtime = rte_pdcp_localtime.load(self.lib)
        self.gmtime_r = rte_pdcp_gmtime_r.load(self.lib)
        self.localtime_r = rte_pdcp_localtime_r.load(self.lib)
        self.asctime = rte_pdcp_asctime.load(self.lib)
        self.ctime = rte_pdcp_ctime.load(self.lib)
        self.asctime_r = rte_pdcp_asctime_r.load(self.lib)
        self.ctime_r = rte_pdcp_ctime_r.load(self.lib)
        self.tzset = rte_pdcp_tzset.load(self.lib)
        self.timegm = rte_pdcp_timegm.load(self.lib)
        self.timelocal = rte_pdcp_timelocal.load(self.lib)
        self.dysize = rte_pdcp_dysize.load(self.lib)
        self.nanosleep = rte_pdcp_nanosleep.load(self.lib)
        self.clock_getres = rte_pdcp_clock_getres.load(self.lib)
        self.clock_gettime = rte_pdcp_clock_gettime.load(self.lib)
        self.clock_settime = rte_pdcp_clock_settime.load(self.lib)
        self.clock_nanosleep = rte_pdcp_clock_nanosleep.load(self.lib)
        self.clock_getcpuclockid = rte_pdcp_clock_getcpuclockid.load(self.lib)
        self.timer_create = rte_pdcp_timer_create.load(self.lib)
        self.timer_delete = rte_pdcp_timer_delete.load(self.lib)
        self.timer_settime = rte_pdcp_timer_settime.load(self.lib)
        self.timer_gettime = rte_pdcp_timer_gettime.load(self.lib)
        self.timer_getoverrun = rte_pdcp_timer_getoverrun.load(self.lib)
        self.timespec_get = rte_pdcp_timespec_get.load(self.lib)
        self.memcpy = rte_pdcp_memcpy.load(self.lib)
        self.memmove = rte_pdcp_memmove.load(self.lib)
        self.memccpy = rte_pdcp_memccpy.load(self.lib)
        self.memset = rte_pdcp_memset.load(self.lib)
        self.memcmp = rte_pdcp_memcmp.load(self.lib)
        self.memchr = rte_pdcp_memchr.load(self.lib)
        self.strcpy = rte_pdcp_strcpy.load(self.lib)
        self.strncpy = rte_pdcp_strncpy.load(self.lib)
        self.strcat = rte_pdcp_strcat.load(self.lib)
        self.strncat = rte_pdcp_strncat.load(self.lib)
        self.strcmp = rte_pdcp_strcmp.load(self.lib)
        self.strncmp = rte_pdcp_strncmp.load(self.lib)
        self.strcoll = rte_pdcp_strcoll.load(self.lib)
        self.strxfrm = rte_pdcp_strxfrm.load(self.lib)
        self.strcoll_l = rte_pdcp_strcoll_l.load(self.lib)
        self.strxfrm_l = rte_pdcp_strxfrm_l.load(self.lib)
        self.strdup = rte_pdcp_strdup.load(self.lib)
        self.strndup = rte_pdcp_strndup.load(self.lib)
        self.strchr = rte_pdcp_strchr.load(self.lib)
        self.strrchr = rte_pdcp_strrchr.load(self.lib)
        self.strcspn = rte_pdcp_strcspn.load(self.lib)
        self.strspn = rte_pdcp_strspn.load(self.lib)
        self.strpbrk = rte_pdcp_strpbrk.load(self.lib)
        self.strstr = rte_pdcp_strstr.load(self.lib)
        self.strtok = rte_pdcp_strtok.load(self.lib)
        self.strtok_r = rte_pdcp_strtok_r.load(self.lib)
        self.strlen = rte_pdcp_strlen.load(self.lib)
        self.strnlen = rte_pdcp_strnlen.load(self.lib)
        self.strerror = rte_pdcp_strerror.load(self.lib)
        self.strerror_r = rte_pdcp_strerror_r.load(self.lib)
        self.strerror_l = rte_pdcp_strerror_l.load(self.lib)
        self.bcmp = rte_pdcp_bcmp.load(self.lib)
        self.bcopy = rte_pdcp_bcopy.load(self.lib)
        self.bzero = rte_pdcp_bzero.load(self.lib)
        self.index = rte_pdcp_index.load(self.lib)
        self.rindex = rte_pdcp_rindex.load(self.lib)
        self.ffs = rte_pdcp_ffs.load(self.lib)
        self.ffsl = rte_pdcp_ffsl.load(self.lib)
        self.ffsll = rte_pdcp_ffsll.load(self.lib)
        self.strcasecmp = rte_pdcp_strcasecmp.load(self.lib)
        self.strncasecmp = rte_pdcp_strncasecmp.load(self.lib)
        self.strcasecmp_l = rte_pdcp_strcasecmp_l.load(self.lib)
        self.strncasecmp_l = rte_pdcp_strncasecmp_l.load(self.lib)
        self.explicit_bzero = rte_pdcp_explicit_bzero.load(self.lib)
        self.strsep = rte_pdcp_strsep.load(self.lib)
        self.strsignal = rte_pdcp_strsignal.load(self.lib)
        self.stpcpy = rte_pdcp_stpcpy.load(self.lib)
        self.stpncpy = rte_pdcp_stpncpy.load(self.lib)
        self.rte_uuid_is_null = rte_pdcp_rte_uuid_is_null.load(self.lib)
        self.rte_uuid_copy = rte_pdcp_rte_uuid_copy.load(self.lib)
        self.rte_uuid_compare = rte_pdcp_rte_uuid_compare.load(self.lib)
        self.rte_uuid_parse = rte_pdcp_rte_uuid_parse.load(self.lib)
        self.rte_uuid_unparse = rte_pdcp_rte_uuid_unparse.load(self.lib)
        self.rte_eal_process_type = rte_pdcp_rte_eal_process_type.load(self.lib)
        self.rte_eal_iopl_init = rte_pdcp_rte_eal_iopl_init.load(self.lib)
        self.rte_eal_init = rte_pdcp_rte_eal_init.load(self.lib)
        self.rte_eal_cleanup = rte_pdcp_rte_eal_cleanup.load(self.lib)
        self.rte_eal_primary_proc_alive = rte_pdcp_rte_eal_primary_proc_alive.load(self.lib)
        self.rte_mp_disable = rte_pdcp_rte_mp_disable.load(self.lib)
        self.rte_mp_action_register = rte_pdcp_rte_mp_action_register.load(self.lib)
        self.rte_mp_action_unregister = rte_pdcp_rte_mp_action_unregister.load(self.lib)
        self.rte_mp_sendmsg = rte_pdcp_rte_mp_sendmsg.load(self.lib)
        self.rte_mp_request_sync = rte_pdcp_rte_mp_request_sync.load(self.lib)
        self.rte_mp_request_async = rte_pdcp_rte_mp_request_async.load(self.lib)
        self.rte_set_application_usage_hook = rte_pdcp_rte_set_application_usage_hook.load(self.lib)
        self.rte_eal_has_hugepages = rte_pdcp_rte_eal_has_hugepages.load(self.lib)
        self.rte_eal_has_pci = rte_pdcp_rte_eal_has_pci.load(self.lib)
        self.rte_eal_create_uio_dev = rte_pdcp_rte_eal_create_uio_dev.load(self.lib)
        self.rte_eal_vfio_intr_mode = rte_pdcp_rte_eal_vfio_intr_mode.load(self.lib)
        self.rte_eal_vfio_get_vf_token = rte_pdcp_rte_eal_vfio_get_vf_token.load(self.lib)
        self.rte_sys_gettid = rte_pdcp_rte_sys_gettid.load(self.lib)
        self.rte_gettid = rte_pdcp_rte_gettid.load(self.lib)
        self.rte_eal_get_baseaddr = rte_pdcp_rte_eal_get_baseaddr.load(self.lib)
        self.rte_eal_iova_mode = rte_pdcp_rte_eal_iova_mode.load(self.lib)
        self.rte_eal_mbuf_user_pool_ops = rte_pdcp_rte_eal_mbuf_user_pool_ops.load(self.lib)
        self.rte_eal_get_runtime_dir = rte_pdcp_rte_eal_get_runtime_dir.load(self.lib)
        self.rte_eal_parse_coremask = rte_pdcp_rte_eal_parse_coremask.load(self.lib)
        self.rte_eal_remote_launch = rte_pdcp_rte_eal_remote_launch.load(self.lib)
        self.rte_eal_mp_remote_launch = rte_pdcp_rte_eal_mp_remote_launch.load(self.lib)
        self.rte_eal_get_lcore_state = rte_pdcp_rte_eal_get_lcore_state.load(self.lib)
        self.rte_eal_wait_lcore = rte_pdcp_rte_eal_wait_lcore.load(self.lib)
        self.rte_eal_mp_wait_lcore = rte_pdcp_rte_eal_mp_wait_lcore.load(self.lib)
        self.rte_thread_create = rte_pdcp_rte_thread_create.load(self.lib)
        self.rte_thread_create_control = rte_pdcp_rte_thread_create_control.load(self.lib)
        self.rte_thread_create_internal_control = rte_pdcp_rte_thread_create_internal_control.load(self.lib)
        self.rte_thread_join = rte_pdcp_rte_thread_join.load(self.lib)
        self.rte_thread_detach = rte_pdcp_rte_thread_detach.load(self.lib)
        self.rte_thread_self = rte_pdcp_rte_thread_self.load(self.lib)
        self.rte_thread_set_name = rte_pdcp_rte_thread_set_name.load(self.lib)
        self.rte_thread_set_prefixed_name = rte_pdcp_rte_thread_set_prefixed_name.load(self.lib)
        self.rte_thread_equal = rte_pdcp_rte_thread_equal.load(self.lib)
        self.rte_thread_attr_init = rte_pdcp_rte_thread_attr_init.load(self.lib)
        self.rte_thread_attr_set_priority = rte_pdcp_rte_thread_attr_set_priority.load(self.lib)
        self.rte_thread_get_priority = rte_pdcp_rte_thread_get_priority.load(self.lib)
        self.rte_thread_set_priority = rte_pdcp_rte_thread_set_priority.load(self.lib)
        self.rte_thread_key_create = rte_pdcp_rte_thread_key_create.load(self.lib)
        self.rte_thread_key_delete = rte_pdcp_rte_thread_key_delete.load(self.lib)
        self.rte_thread_value_set = rte_pdcp_rte_thread_value_set.load(self.lib)
        self.rte_thread_value_get = rte_pdcp_rte_thread_value_get.load(self.lib)
        self.rte_eal_lcore_role = rte_pdcp_rte_eal_lcore_role.load(self.lib)
        self.rte_lcore_has_role = rte_pdcp_rte_lcore_has_role.load(self.lib)
        self.rte_lcore_id = rte_pdcp_rte_lcore_id.load(self.lib)
        self.rte_get_main_lcore = rte_pdcp_rte_get_main_lcore.load(self.lib)
        self.rte_lcore_count = rte_pdcp_rte_lcore_count.load(self.lib)
        self.rte_lcore_index = rte_pdcp_rte_lcore_index.load(self.lib)
        self.rte_socket_id = rte_pdcp_rte_socket_id.load(self.lib)
        self.rte_socket_count = rte_pdcp_rte_socket_count.load(self.lib)
        self.rte_socket_id_by_idx = rte_pdcp_rte_socket_id_by_idx.load(self.lib)
        self.rte_lcore_to_socket_id = rte_pdcp_rte_lcore_to_socket_id.load(self.lib)
        self.rte_lcore_to_cpu_id = rte_pdcp_rte_lcore_to_cpu_id.load(self.lib)
        self.rte_lcore_is_enabled = rte_pdcp_rte_lcore_is_enabled.load(self.lib)
        self.rte_get_next_lcore = rte_pdcp_rte_get_next_lcore.load(self.lib)
        self.rte_lcore_callback_register = rte_pdcp_rte_lcore_callback_register.load(self.lib)
        self.rte_lcore_callback_unregister = rte_pdcp_rte_lcore_callback_unregister.load(self.lib)
        self.rte_lcore_iterate = rte_pdcp_rte_lcore_iterate.load(self.lib)
        self.rte_lcore_register_usage_cb = rte_pdcp_rte_lcore_register_usage_cb.load(self.lib)
        self.rte_lcore_dump = rte_pdcp_rte_lcore_dump.load(self.lib)
        self.rte_thread_register = rte_pdcp_rte_thread_register.load(self.lib)
        self.rte_thread_unregister = rte_pdcp_rte_thread_unregister.load(self.lib)
        self.rte_atomic_thread_fence = rte_pdcp_rte_atomic_thread_fence.load(self.lib)
        self.rte_atomic16_cmpset = rte_pdcp_rte_atomic16_cmpset.load(self.lib)
        self.rte_atomic16_exchange = rte_pdcp_rte_atomic16_exchange.load(self.lib)
        self.rte_atomic16_init = rte_pdcp_rte_atomic16_init.load(self.lib)
        self.rte_atomic16_read = rte_pdcp_rte_atomic16_read.load(self.lib)
        self.rte_atomic16_set = rte_pdcp_rte_atomic16_set.load(self.lib)
        self.rte_atomic16_add = rte_pdcp_rte_atomic16_add.load(self.lib)
        self.rte_atomic16_sub = rte_pdcp_rte_atomic16_sub.load(self.lib)
        self.rte_atomic16_inc = rte_pdcp_rte_atomic16_inc.load(self.lib)
        self.rte_atomic16_dec = rte_pdcp_rte_atomic16_dec.load(self.lib)
        self.rte_atomic16_add_return = rte_pdcp_rte_atomic16_add_return.load(self.lib)
        self.rte_atomic16_sub_return = rte_pdcp_rte_atomic16_sub_return.load(self.lib)
        self.rte_atomic16_inc_and_test = rte_pdcp_rte_atomic16_inc_and_test.load(self.lib)
        self.rte_atomic16_dec_and_test = rte_pdcp_rte_atomic16_dec_and_test.load(self.lib)
        self.rte_atomic16_test_and_set = rte_pdcp_rte_atomic16_test_and_set.load(self.lib)
        self.rte_atomic16_clear = rte_pdcp_rte_atomic16_clear.load(self.lib)
        self.rte_atomic32_cmpset = rte_pdcp_rte_atomic32_cmpset.load(self.lib)
        self.rte_atomic32_exchange = rte_pdcp_rte_atomic32_exchange.load(self.lib)
        self.rte_atomic32_init = rte_pdcp_rte_atomic32_init.load(self.lib)
        self.rte_atomic32_read = rte_pdcp_rte_atomic32_read.load(self.lib)
        self.rte_atomic32_set = rte_pdcp_rte_atomic32_set.load(self.lib)
        self.rte_atomic32_add = rte_pdcp_rte_atomic32_add.load(self.lib)
        self.rte_atomic32_sub = rte_pdcp_rte_atomic32_sub.load(self.lib)
        self.rte_atomic32_inc = rte_pdcp_rte_atomic32_inc.load(self.lib)
        self.rte_atomic32_dec = rte_pdcp_rte_atomic32_dec.load(self.lib)
        self.rte_atomic32_add_return = rte_pdcp_rte_atomic32_add_return.load(self.lib)
        self.rte_atomic32_sub_return = rte_pdcp_rte_atomic32_sub_return.load(self.lib)
        self.rte_atomic32_inc_and_test = rte_pdcp_rte_atomic32_inc_and_test.load(self.lib)
        self.rte_atomic32_dec_and_test = rte_pdcp_rte_atomic32_dec_and_test.load(self.lib)
        self.rte_atomic32_test_and_set = rte_pdcp_rte_atomic32_test_and_set.load(self.lib)
        self.rte_atomic32_clear = rte_pdcp_rte_atomic32_clear.load(self.lib)
        self.rte_atomic64_cmpset = rte_pdcp_rte_atomic64_cmpset.load(self.lib)
        self.rte_atomic64_exchange = rte_pdcp_rte_atomic64_exchange.load(self.lib)
        self.rte_atomic64_init = rte_pdcp_rte_atomic64_init.load(self.lib)
        self.rte_atomic64_read = rte_pdcp_rte_atomic64_read.load(self.lib)
        self.rte_atomic64_set = rte_pdcp_rte_atomic64_set.load(self.lib)
        self.rte_atomic64_add = rte_pdcp_rte_atomic64_add.load(self.lib)
        self.rte_atomic64_sub = rte_pdcp_rte_atomic64_sub.load(self.lib)
        self.rte_atomic64_inc = rte_pdcp_rte_atomic64_inc.load(self.lib)
        self.rte_atomic64_dec = rte_pdcp_rte_atomic64_dec.load(self.lib)
        self.rte_atomic64_add_return = rte_pdcp_rte_atomic64_add_return.load(self.lib)
        self.rte_atomic64_sub_return = rte_pdcp_rte_atomic64_sub_return.load(self.lib)
        self.rte_atomic64_inc_and_test = rte_pdcp_rte_atomic64_inc_and_test.load(self.lib)
        self.rte_atomic64_dec_and_test = rte_pdcp_rte_atomic64_dec_and_test.load(self.lib)
        self.rte_atomic64_test_and_set = rte_pdcp_rte_atomic64_test_and_set.load(self.lib)
        self.rte_atomic64_clear = rte_pdcp_rte_atomic64_clear.load(self.lib)
        self.rte_openlog_stream = rte_pdcp_rte_openlog_stream.load(self.lib)
        self.rte_log_get_stream = rte_pdcp_rte_log_get_stream.load(self.lib)
        self.rte_log_set_global_level = rte_pdcp_rte_log_set_global_level.load(self.lib)
        self.rte_log_get_global_level = rte_pdcp_rte_log_get_global_level.load(self.lib)
        self.rte_log_get_level = rte_pdcp_rte_log_get_level.load(self.lib)
        self.rte_log_can_log = rte_pdcp_rte_log_can_log.load(self.lib)
        self.rte_log_set_level_pattern = rte_pdcp_rte_log_set_level_pattern.load(self.lib)
        self.rte_log_set_level_regexp = rte_pdcp_rte_log_set_level_regexp.load(self.lib)
        self.rte_log_set_level = rte_pdcp_rte_log_set_level.load(self.lib)
        self.rte_log_cur_msg_loglevel = rte_pdcp_rte_log_cur_msg_loglevel.load(self.lib)
        self.rte_log_cur_msg_logtype = rte_pdcp_rte_log_cur_msg_logtype.load(self.lib)
        self.rte_log_register = rte_pdcp_rte_log_register.load(self.lib)
        self.rte_log_register_type_and_pick_level = rte_pdcp_rte_log_register_type_and_pick_level.load(self.lib)
        self.rte_log_list_types = rte_pdcp_rte_log_list_types.load(self.lib)
        self.rte_log_dump = rte_pdcp_rte_log_dump.load(self.lib)
        self.rte_log = rte_pdcp_rte_log.load(self.lib)
        self.rte_vlog = rte_pdcp_rte_vlog.load(self.lib)
        self.rte_dump_stack = rte_pdcp_rte_dump_stack.load(self.lib)
        self.rte_atomic128_cmp_exchange = rte_pdcp_rte_atomic128_cmp_exchange.load(self.lib)
        self.rte_pause = rte_pdcp_rte_pause.load(self.lib)
        self.rte_wait_until_equal_16 = rte_pdcp_rte_wait_until_equal_16.load(self.lib)
        self.rte_wait_until_equal_32 = rte_pdcp_rte_wait_until_equal_32.load(self.lib)
        self.rte_wait_until_equal_64 = rte_pdcp_rte_wait_until_equal_64.load(self.lib)
        self.rte_spinlock_init = rte_pdcp_rte_spinlock_init.load(self.lib)
        self.rte_spinlock_lock = rte_pdcp_rte_spinlock_lock.load(self.lib)
        self.rte_spinlock_unlock = rte_pdcp_rte_spinlock_unlock.load(self.lib)
        self.rte_spinlock_trylock = rte_pdcp_rte_spinlock_trylock.load(self.lib)
        self.rte_spinlock_is_locked = rte_pdcp_rte_spinlock_is_locked.load(self.lib)
        self.rte_tm_supported = rte_pdcp_rte_tm_supported.load(self.lib)
        self.rte_spinlock_lock_tm = rte_pdcp_rte_spinlock_lock_tm.load(self.lib)
        self.rte_spinlock_unlock_tm = rte_pdcp_rte_spinlock_unlock_tm.load(self.lib)
        self.rte_spinlock_trylock_tm = rte_pdcp_rte_spinlock_trylock_tm.load(self.lib)
        self.rte_spinlock_recursive_init = rte_pdcp_rte_spinlock_recursive_init.load(self.lib)
        self.rte_spinlock_recursive_lock = rte_pdcp_rte_spinlock_recursive_lock.load(self.lib)
        self.rte_spinlock_recursive_unlock = rte_pdcp_rte_spinlock_recursive_unlock.load(self.lib)
        self.rte_spinlock_recursive_trylock = rte_pdcp_rte_spinlock_recursive_trylock.load(self.lib)
        self.rte_spinlock_recursive_lock_tm = rte_pdcp_rte_spinlock_recursive_lock_tm.load(self.lib)
        self.rte_spinlock_recursive_unlock_tm = rte_pdcp_rte_spinlock_recursive_unlock_tm.load(self.lib)
        self.rte_spinlock_recursive_trylock_tm = rte_pdcp_rte_spinlock_recursive_trylock_tm.load(self.lib)
        self.rte_bit_relaxed_get32 = rte_pdcp_rte_bit_relaxed_get32.load(self.lib)
        self.rte_bit_relaxed_set32 = rte_pdcp_rte_bit_relaxed_set32.load(self.lib)
        self.rte_bit_relaxed_clear32 = rte_pdcp_rte_bit_relaxed_clear32.load(self.lib)
        self.rte_bit_relaxed_test_and_set32 = rte_pdcp_rte_bit_relaxed_test_and_set32.load(self.lib)
        self.rte_bit_relaxed_test_and_clear32 = rte_pdcp_rte_bit_relaxed_test_and_clear32.load(self.lib)
        self.rte_bit_relaxed_get64 = rte_pdcp_rte_bit_relaxed_get64.load(self.lib)
        self.rte_bit_relaxed_set64 = rte_pdcp_rte_bit_relaxed_set64.load(self.lib)
        self.rte_bit_relaxed_clear64 = rte_pdcp_rte_bit_relaxed_clear64.load(self.lib)
        self.rte_bit_relaxed_test_and_set64 = rte_pdcp_rte_bit_relaxed_test_and_set64.load(self.lib)
        self.rte_bit_relaxed_test_and_clear64 = rte_pdcp_rte_bit_relaxed_test_and_clear64.load(self.lib)
        self.rte_clz32 = rte_pdcp_rte_clz32.load(self.lib)
        self.rte_clz64 = rte_pdcp_rte_clz64.load(self.lib)
        self.rte_ctz32 = rte_pdcp_rte_ctz32.load(self.lib)
        self.rte_ctz64 = rte_pdcp_rte_ctz64.load(self.lib)
        self.rte_popcount32 = rte_pdcp_rte_popcount32.load(self.lib)
        self.rte_popcount64 = rte_pdcp_rte_popcount64.load(self.lib)
        self.rte_ffs32 = rte_pdcp_rte_ffs32.load(self.lib)
        self.rte_ffs64 = rte_pdcp_rte_ffs64.load(self.lib)
        self.rte_combine32ms1b = rte_pdcp_rte_combine32ms1b.load(self.lib)
        self.rte_combine64ms1b = rte_pdcp_rte_combine64ms1b.load(self.lib)
        self.rte_bsf32 = rte_pdcp_rte_bsf32.load(self.lib)
        self.rte_bsf32_safe = rte_pdcp_rte_bsf32_safe.load(self.lib)
        self.rte_bsf64 = rte_pdcp_rte_bsf64.load(self.lib)
        self.rte_bsf64_safe = rte_pdcp_rte_bsf64_safe.load(self.lib)
        self.rte_fls_u32 = rte_pdcp_rte_fls_u32.load(self.lib)
        self.rte_fls_u64 = rte_pdcp_rte_fls_u64.load(self.lib)
        self.rte_is_power_of_2 = rte_pdcp_rte_is_power_of_2.load(self.lib)
        self.rte_align32pow2 = rte_pdcp_rte_align32pow2.load(self.lib)
        self.rte_align32prevpow2 = rte_pdcp_rte_align32prevpow2.load(self.lib)
        self.rte_align64pow2 = rte_pdcp_rte_align64pow2.load(self.lib)
        self.rte_align64prevpow2 = rte_pdcp_rte_align64prevpow2.load(self.lib)
        self.rte_log2_u32 = rte_pdcp_rte_log2_u32.load(self.lib)
        self.rte_log2_u64 = rte_pdcp_rte_log2_u64.load(self.lib)
        self.rte_rwlock_init = rte_pdcp_rte_rwlock_init.load(self.lib)
        self.rte_rwlock_read_lock = rte_pdcp_rte_rwlock_read_lock.load(self.lib)
        self.rte_rwlock_read_trylock = rte_pdcp_rte_rwlock_read_trylock.load(self.lib)
        self.rte_rwlock_read_unlock = rte_pdcp_rte_rwlock_read_unlock.load(self.lib)
        self.rte_rwlock_write_trylock = rte_pdcp_rte_rwlock_write_trylock.load(self.lib)
        self.rte_rwlock_write_lock = rte_pdcp_rte_rwlock_write_lock.load(self.lib)
        self.rte_rwlock_write_unlock = rte_pdcp_rte_rwlock_write_unlock.load(self.lib)
        self.rte_rwlock_write_is_locked = rte_pdcp_rte_rwlock_write_is_locked.load(self.lib)
        self.rte_rwlock_read_lock_tm = rte_pdcp_rte_rwlock_read_lock_tm.load(self.lib)
        self.rte_rwlock_read_unlock_tm = rte_pdcp_rte_rwlock_read_unlock_tm.load(self.lib)
        self.rte_rwlock_write_lock_tm = rte_pdcp_rte_rwlock_write_lock_tm.load(self.lib)
        self.rte_rwlock_write_unlock_tm = rte_pdcp_rte_rwlock_write_unlock_tm.load(self.lib)
        self.rte_mcfg_mem_get_lock = rte_pdcp_rte_mcfg_mem_get_lock.load(self.lib)
        self.rte_mcfg_tailq_get_lock = rte_pdcp_rte_mcfg_tailq_get_lock.load(self.lib)
        self.rte_mcfg_mempool_get_lock = rte_pdcp_rte_mcfg_mempool_get_lock.load(self.lib)
        self.rte_mcfg_timer_get_lock = rte_pdcp_rte_mcfg_timer_get_lock.load(self.lib)
        self.rte_mcfg_ethdev_get_lock = rte_pdcp_rte_mcfg_ethdev_get_lock.load(self.lib)
        self.rte_mcfg_mem_read_lock = rte_pdcp_rte_mcfg_mem_read_lock.load(self.lib)
        self.rte_mcfg_mem_read_unlock = rte_pdcp_rte_mcfg_mem_read_unlock.load(self.lib)
        self.rte_mcfg_mem_write_lock = rte_pdcp_rte_mcfg_mem_write_lock.load(self.lib)
        self.rte_mcfg_mem_write_unlock = rte_pdcp_rte_mcfg_mem_write_unlock.load(self.lib)
        self.rte_mcfg_tailq_read_lock = rte_pdcp_rte_mcfg_tailq_read_lock.load(self.lib)
        self.rte_mcfg_tailq_read_unlock = rte_pdcp_rte_mcfg_tailq_read_unlock.load(self.lib)
        self.rte_mcfg_tailq_write_lock = rte_pdcp_rte_mcfg_tailq_write_lock.load(self.lib)
        self.rte_mcfg_tailq_write_unlock = rte_pdcp_rte_mcfg_tailq_write_unlock.load(self.lib)
        self.rte_mcfg_mempool_read_lock = rte_pdcp_rte_mcfg_mempool_read_lock.load(self.lib)
        self.rte_mcfg_mempool_read_unlock = rte_pdcp_rte_mcfg_mempool_read_unlock.load(self.lib)
        self.rte_mcfg_mempool_write_lock = rte_pdcp_rte_mcfg_mempool_write_lock.load(self.lib)
        self.rte_mcfg_mempool_write_unlock = rte_pdcp_rte_mcfg_mempool_write_unlock.load(self.lib)
        self.rte_mcfg_timer_lock = rte_pdcp_rte_mcfg_timer_lock.load(self.lib)
        self.rte_mcfg_timer_unlock = rte_pdcp_rte_mcfg_timer_unlock.load(self.lib)
        self.rte_mcfg_get_single_file_segments = rte_pdcp_rte_mcfg_get_single_file_segments.load(self.lib)
        self.rte_fbarray_init = rte_pdcp_rte_fbarray_init.load(self.lib)
        self.rte_fbarray_attach = rte_pdcp_rte_fbarray_attach.load(self.lib)
        self.rte_fbarray_destroy = rte_pdcp_rte_fbarray_destroy.load(self.lib)
        self.rte_fbarray_detach = rte_pdcp_rte_fbarray_detach.load(self.lib)
        self.rte_fbarray_get = rte_pdcp_rte_fbarray_get.load(self.lib)
        self.rte_fbarray_find_idx = rte_pdcp_rte_fbarray_find_idx.load(self.lib)
        self.rte_fbarray_set_used = rte_pdcp_rte_fbarray_set_used.load(self.lib)
        self.rte_fbarray_set_free = rte_pdcp_rte_fbarray_set_free.load(self.lib)
        self.rte_fbarray_is_used = rte_pdcp_rte_fbarray_is_used.load(self.lib)
        self.rte_fbarray_find_next_free = rte_pdcp_rte_fbarray_find_next_free.load(self.lib)
        self.rte_fbarray_find_next_used = rte_pdcp_rte_fbarray_find_next_used.load(self.lib)
        self.rte_fbarray_find_next_n_free = rte_pdcp_rte_fbarray_find_next_n_free.load(self.lib)
        self.rte_fbarray_find_next_n_used = rte_pdcp_rte_fbarray_find_next_n_used.load(self.lib)
        self.rte_fbarray_find_contig_free = rte_pdcp_rte_fbarray_find_contig_free.load(self.lib)
        self.rte_fbarray_find_contig_used = rte_pdcp_rte_fbarray_find_contig_used.load(self.lib)
        self.rte_fbarray_find_prev_free = rte_pdcp_rte_fbarray_find_prev_free.load(self.lib)
        self.rte_fbarray_find_prev_used = rte_pdcp_rte_fbarray_find_prev_used.load(self.lib)
        self.rte_fbarray_find_prev_n_free = rte_pdcp_rte_fbarray_find_prev_n_free.load(self.lib)
        self.rte_fbarray_find_prev_n_used = rte_pdcp_rte_fbarray_find_prev_n_used.load(self.lib)
        self.rte_fbarray_find_rev_contig_free = rte_pdcp_rte_fbarray_find_rev_contig_free.load(self.lib)
        self.rte_fbarray_find_rev_contig_used = rte_pdcp_rte_fbarray_find_rev_contig_used.load(self.lib)
        self.rte_fbarray_find_biggest_free = rte_pdcp_rte_fbarray_find_biggest_free.load(self.lib)
        self.rte_fbarray_find_biggest_used = rte_pdcp_rte_fbarray_find_biggest_used.load(self.lib)
        self.rte_fbarray_find_rev_biggest_free = rte_pdcp_rte_fbarray_find_rev_biggest_free.load(self.lib)
        self.rte_fbarray_find_rev_biggest_used = rte_pdcp_rte_fbarray_find_rev_biggest_used.load(self.lib)
        self.rte_fbarray_dump_metadata = rte_pdcp_rte_fbarray_dump_metadata.load(self.lib)
        self.rte_mem_lock_page = rte_pdcp_rte_mem_lock_page.load(self.lib)
        self.rte_mem_virt2phy = rte_pdcp_rte_mem_virt2phy.load(self.lib)
        self.rte_mem_virt2iova = rte_pdcp_rte_mem_virt2iova.load(self.lib)
        self.rte_mem_iova2virt = rte_pdcp_rte_mem_iova2virt.load(self.lib)
        self.rte_mem_virt2memseg = rte_pdcp_rte_mem_virt2memseg.load(self.lib)
        self.rte_mem_virt2memseg_list = rte_pdcp_rte_mem_virt2memseg_list.load(self.lib)
        self.rte_memseg_walk = rte_pdcp_rte_memseg_walk.load(self.lib)
        self.rte_memseg_contig_walk = rte_pdcp_rte_memseg_contig_walk.load(self.lib)
        self.rte_memseg_list_walk = rte_pdcp_rte_memseg_list_walk.load(self.lib)
        self.rte_memseg_walk_thread_unsafe = rte_pdcp_rte_memseg_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_contig_walk_thread_unsafe = rte_pdcp_rte_memseg_contig_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_list_walk_thread_unsafe = rte_pdcp_rte_memseg_list_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_get_fd = rte_pdcp_rte_memseg_get_fd.load(self.lib)
        self.rte_memseg_get_fd_thread_unsafe = rte_pdcp_rte_memseg_get_fd_thread_unsafe.load(self.lib)
        self.rte_memseg_get_fd_offset = rte_pdcp_rte_memseg_get_fd_offset.load(self.lib)
        self.rte_memseg_get_fd_offset_thread_unsafe = rte_pdcp_rte_memseg_get_fd_offset_thread_unsafe.load(self.lib)
        self.rte_extmem_register = rte_pdcp_rte_extmem_register.load(self.lib)
        self.rte_extmem_unregister = rte_pdcp_rte_extmem_unregister.load(self.lib)
        self.rte_extmem_attach = rte_pdcp_rte_extmem_attach.load(self.lib)
        self.rte_extmem_detach = rte_pdcp_rte_extmem_detach.load(self.lib)
        self.rte_dump_physmem_layout = rte_pdcp_rte_dump_physmem_layout.load(self.lib)
        self.rte_eal_get_physmem_size = rte_pdcp_rte_eal_get_physmem_size.load(self.lib)
        self.rte_memory_get_nchannel = rte_pdcp_rte_memory_get_nchannel.load(self.lib)
        self.rte_memory_get_nrank = rte_pdcp_rte_memory_get_nrank.load(self.lib)
        self.rte_mem_check_dma_mask = rte_pdcp_rte_mem_check_dma_mask.load(self.lib)
        self.rte_mem_check_dma_mask_thread_unsafe = rte_pdcp_rte_mem_check_dma_mask_thread_unsafe.load(self.lib)
        self.rte_mem_set_dma_mask = rte_pdcp_rte_mem_set_dma_mask.load(self.lib)
        self.rte_eal_using_phys_addrs = rte_pdcp_rte_eal_using_phys_addrs.load(self.lib)
        self.rte_mem_event_callback_register = rte_pdcp_rte_mem_event_callback_register.load(self.lib)
        self.rte_mem_event_callback_unregister = rte_pdcp_rte_mem_event_callback_unregister.load(self.lib)
        self.rte_mem_alloc_validator_register = rte_pdcp_rte_mem_alloc_validator_register.load(self.lib)
        self.rte_mem_alloc_validator_unregister = rte_pdcp_rte_mem_alloc_validator_unregister.load(self.lib)
        self.rte_memzero_explicit = rte_pdcp_rte_memzero_explicit.load(self.lib)
        self.rte_memzone_max_set = rte_pdcp_rte_memzone_max_set.load(self.lib)
        self.rte_memzone_max_get = rte_pdcp_rte_memzone_max_get.load(self.lib)
        self.rte_memzone_reserve = rte_pdcp_rte_memzone_reserve.load(self.lib)
        self.rte_memzone_reserve_aligned = rte_pdcp_rte_memzone_reserve_aligned.load(self.lib)
        self.rte_memzone_reserve_bounded = rte_pdcp_rte_memzone_reserve_bounded.load(self.lib)
        self.rte_memzone_free = rte_pdcp_rte_memzone_free.load(self.lib)
        self.rte_memzone_lookup = rte_pdcp_rte_memzone_lookup.load(self.lib)
        self.rte_memzone_dump = rte_pdcp_rte_memzone_dump.load(self.lib)
        self.rte_memzone_walk = rte_pdcp_rte_memzone_walk.load(self.lib)
        self.rte_ring_get_memsize_elem = rte_pdcp_rte_ring_get_memsize_elem.load(self.lib)
        self.rte_ring_create_elem = rte_pdcp_rte_ring_create_elem.load(self.lib)
        self.rte_ring_mp_enqueue_bulk_elem = rte_pdcp_rte_ring_mp_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_sp_enqueue_bulk_elem = rte_pdcp_rte_ring_sp_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mp_hts_enqueue_bulk_elem = rte_pdcp_rte_ring_mp_hts_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mc_hts_dequeue_bulk_elem = rte_pdcp_rte_ring_mc_hts_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_mp_hts_enqueue_burst_elem = rte_pdcp_rte_ring_mp_hts_enqueue_burst_elem.load(self.lib)
        self.rte_ring_mc_hts_dequeue_burst_elem = rte_pdcp_rte_ring_mc_hts_dequeue_burst_elem.load(self.lib)
        self.rte_ring_mp_hts_enqueue_bulk = rte_pdcp_rte_ring_mp_hts_enqueue_bulk.load(self.lib)
        self.rte_ring_mc_hts_dequeue_bulk = rte_pdcp_rte_ring_mc_hts_dequeue_bulk.load(self.lib)
        self.rte_ring_mp_hts_enqueue_burst = rte_pdcp_rte_ring_mp_hts_enqueue_burst.load(self.lib)
        self.rte_ring_mc_hts_dequeue_burst = rte_pdcp_rte_ring_mc_hts_dequeue_burst.load(self.lib)
        self.rte_ring_mp_rts_enqueue_bulk_elem = rte_pdcp_rte_ring_mp_rts_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mc_rts_dequeue_bulk_elem = rte_pdcp_rte_ring_mc_rts_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_mp_rts_enqueue_burst_elem = rte_pdcp_rte_ring_mp_rts_enqueue_burst_elem.load(self.lib)
        self.rte_ring_mc_rts_dequeue_burst_elem = rte_pdcp_rte_ring_mc_rts_dequeue_burst_elem.load(self.lib)
        self.rte_ring_mp_rts_enqueue_bulk = rte_pdcp_rte_ring_mp_rts_enqueue_bulk.load(self.lib)
        self.rte_ring_mc_rts_dequeue_bulk = rte_pdcp_rte_ring_mc_rts_dequeue_bulk.load(self.lib)
        self.rte_ring_mp_rts_enqueue_burst = rte_pdcp_rte_ring_mp_rts_enqueue_burst.load(self.lib)
        self.rte_ring_mc_rts_dequeue_burst = rte_pdcp_rte_ring_mc_rts_dequeue_burst.load(self.lib)
        self.rte_ring_get_prod_htd_max = rte_pdcp_rte_ring_get_prod_htd_max.load(self.lib)
        self.rte_ring_set_prod_htd_max = rte_pdcp_rte_ring_set_prod_htd_max.load(self.lib)
        self.rte_ring_get_cons_htd_max = rte_pdcp_rte_ring_get_cons_htd_max.load(self.lib)
        self.rte_ring_set_cons_htd_max = rte_pdcp_rte_ring_set_cons_htd_max.load(self.lib)
        self.rte_ring_enqueue_bulk_elem = rte_pdcp_rte_ring_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mp_enqueue_elem = rte_pdcp_rte_ring_mp_enqueue_elem.load(self.lib)
        self.rte_ring_sp_enqueue_elem = rte_pdcp_rte_ring_sp_enqueue_elem.load(self.lib)
        self.rte_ring_enqueue_elem = rte_pdcp_rte_ring_enqueue_elem.load(self.lib)
        self.rte_ring_mc_dequeue_bulk_elem = rte_pdcp_rte_ring_mc_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_sc_dequeue_bulk_elem = rte_pdcp_rte_ring_sc_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_dequeue_bulk_elem = rte_pdcp_rte_ring_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_mc_dequeue_elem = rte_pdcp_rte_ring_mc_dequeue_elem.load(self.lib)
        self.rte_ring_sc_dequeue_elem = rte_pdcp_rte_ring_sc_dequeue_elem.load(self.lib)
        self.rte_ring_dequeue_elem = rte_pdcp_rte_ring_dequeue_elem.load(self.lib)
        self.rte_ring_mp_enqueue_burst_elem = rte_pdcp_rte_ring_mp_enqueue_burst_elem.load(self.lib)
        self.rte_ring_sp_enqueue_burst_elem = rte_pdcp_rte_ring_sp_enqueue_burst_elem.load(self.lib)
        self.rte_ring_enqueue_burst_elem = rte_pdcp_rte_ring_enqueue_burst_elem.load(self.lib)
        self.rte_ring_mc_dequeue_burst_elem = rte_pdcp_rte_ring_mc_dequeue_burst_elem.load(self.lib)
        self.rte_ring_sc_dequeue_burst_elem = rte_pdcp_rte_ring_sc_dequeue_burst_elem.load(self.lib)
        self.rte_ring_dequeue_burst_elem = rte_pdcp_rte_ring_dequeue_burst_elem.load(self.lib)
        self.rte_ring_enqueue_bulk_elem_start = rte_pdcp_rte_ring_enqueue_bulk_elem_start.load(self.lib)
        self.rte_ring_enqueue_bulk_start = rte_pdcp_rte_ring_enqueue_bulk_start.load(self.lib)
        self.rte_ring_enqueue_burst_elem_start = rte_pdcp_rte_ring_enqueue_burst_elem_start.load(self.lib)
        self.rte_ring_enqueue_burst_start = rte_pdcp_rte_ring_enqueue_burst_start.load(self.lib)
        self.rte_ring_enqueue_elem_finish = rte_pdcp_rte_ring_enqueue_elem_finish.load(self.lib)
        self.rte_ring_enqueue_finish = rte_pdcp_rte_ring_enqueue_finish.load(self.lib)
        self.rte_ring_dequeue_bulk_elem_start = rte_pdcp_rte_ring_dequeue_bulk_elem_start.load(self.lib)
        self.rte_ring_dequeue_bulk_start = rte_pdcp_rte_ring_dequeue_bulk_start.load(self.lib)
        self.rte_ring_dequeue_burst_elem_start = rte_pdcp_rte_ring_dequeue_burst_elem_start.load(self.lib)
        self.rte_ring_dequeue_burst_start = rte_pdcp_rte_ring_dequeue_burst_start.load(self.lib)
        self.rte_ring_dequeue_elem_finish = rte_pdcp_rte_ring_dequeue_elem_finish.load(self.lib)
        self.rte_ring_dequeue_finish = rte_pdcp_rte_ring_dequeue_finish.load(self.lib)
        self.rte_ring_enqueue_zc_bulk_elem_start = rte_pdcp_rte_ring_enqueue_zc_bulk_elem_start.load(self.lib)
        self.rte_ring_enqueue_zc_bulk_start = rte_pdcp_rte_ring_enqueue_zc_bulk_start.load(self.lib)
        self.rte_ring_enqueue_zc_burst_elem_start = rte_pdcp_rte_ring_enqueue_zc_burst_elem_start.load(self.lib)
        self.rte_ring_enqueue_zc_burst_start = rte_pdcp_rte_ring_enqueue_zc_burst_start.load(self.lib)
        self.rte_ring_enqueue_zc_elem_finish = rte_pdcp_rte_ring_enqueue_zc_elem_finish.load(self.lib)
        self.rte_ring_enqueue_zc_finish = rte_pdcp_rte_ring_enqueue_zc_finish.load(self.lib)
        self.rte_ring_dequeue_zc_bulk_elem_start = rte_pdcp_rte_ring_dequeue_zc_bulk_elem_start.load(self.lib)
        self.rte_ring_dequeue_zc_bulk_start = rte_pdcp_rte_ring_dequeue_zc_bulk_start.load(self.lib)
        self.rte_ring_dequeue_zc_burst_elem_start = rte_pdcp_rte_ring_dequeue_zc_burst_elem_start.load(self.lib)
        self.rte_ring_dequeue_zc_burst_start = rte_pdcp_rte_ring_dequeue_zc_burst_start.load(self.lib)
        self.rte_ring_dequeue_zc_elem_finish = rte_pdcp_rte_ring_dequeue_zc_elem_finish.load(self.lib)
        self.rte_ring_dequeue_zc_finish = rte_pdcp_rte_ring_dequeue_zc_finish.load(self.lib)
        self.rte_ring_get_memsize = rte_pdcp_rte_ring_get_memsize.load(self.lib)
        self.rte_ring_init = rte_pdcp_rte_ring_init.load(self.lib)
        self.rte_ring_free = rte_pdcp_rte_ring_free.load(self.lib)
        self.rte_ring_create = rte_pdcp_rte_ring_create.load(self.lib)
        self.rte_ring_dump = rte_pdcp_rte_ring_dump.load(self.lib)
        self.rte_ring_headtail_dump = rte_pdcp_rte_ring_headtail_dump.load(self.lib)
        self.rte_ring_mp_enqueue_bulk = rte_pdcp_rte_ring_mp_enqueue_bulk.load(self.lib)
        self.rte_ring_sp_enqueue_bulk = rte_pdcp_rte_ring_sp_enqueue_bulk.load(self.lib)
        self.rte_ring_enqueue_bulk = rte_pdcp_rte_ring_enqueue_bulk.load(self.lib)
        self.rte_ring_mp_enqueue = rte_pdcp_rte_ring_mp_enqueue.load(self.lib)
        self.rte_ring_sp_enqueue = rte_pdcp_rte_ring_sp_enqueue.load(self.lib)
        self.rte_ring_enqueue = rte_pdcp_rte_ring_enqueue.load(self.lib)
        self.rte_ring_mc_dequeue_bulk = rte_pdcp_rte_ring_mc_dequeue_bulk.load(self.lib)
        self.rte_ring_sc_dequeue_bulk = rte_pdcp_rte_ring_sc_dequeue_bulk.load(self.lib)
        self.rte_ring_dequeue_bulk = rte_pdcp_rte_ring_dequeue_bulk.load(self.lib)
        self.rte_ring_mc_dequeue = rte_pdcp_rte_ring_mc_dequeue.load(self.lib)
        self.rte_ring_sc_dequeue = rte_pdcp_rte_ring_sc_dequeue.load(self.lib)
        self.rte_ring_dequeue = rte_pdcp_rte_ring_dequeue.load(self.lib)
        self.rte_ring_reset = rte_pdcp_rte_ring_reset.load(self.lib)
        self.rte_ring_count = rte_pdcp_rte_ring_count.load(self.lib)
        self.rte_ring_free_count = rte_pdcp_rte_ring_free_count.load(self.lib)
        self.rte_ring_full = rte_pdcp_rte_ring_full.load(self.lib)
        self.rte_ring_empty = rte_pdcp_rte_ring_empty.load(self.lib)
        self.rte_ring_get_size = rte_pdcp_rte_ring_get_size.load(self.lib)
        self.rte_ring_get_capacity = rte_pdcp_rte_ring_get_capacity.load(self.lib)
        self.rte_ring_get_prod_sync_type = rte_pdcp_rte_ring_get_prod_sync_type.load(self.lib)
        self.rte_ring_is_prod_single = rte_pdcp_rte_ring_is_prod_single.load(self.lib)
        self.rte_ring_get_cons_sync_type = rte_pdcp_rte_ring_get_cons_sync_type.load(self.lib)
        self.rte_ring_is_cons_single = rte_pdcp_rte_ring_is_cons_single.load(self.lib)
        self.rte_ring_list_dump = rte_pdcp_rte_ring_list_dump.load(self.lib)
        self.rte_ring_lookup = rte_pdcp_rte_ring_lookup.load(self.lib)
        self.rte_ring_mp_enqueue_burst = rte_pdcp_rte_ring_mp_enqueue_burst.load(self.lib)
        self.rte_ring_sp_enqueue_burst = rte_pdcp_rte_ring_sp_enqueue_burst.load(self.lib)
        self.rte_ring_enqueue_burst = rte_pdcp_rte_ring_enqueue_burst.load(self.lib)
        self.rte_ring_mc_dequeue_burst = rte_pdcp_rte_ring_mc_dequeue_burst.load(self.lib)
        self.rte_ring_sc_dequeue_burst = rte_pdcp_rte_ring_sc_dequeue_burst.load(self.lib)
        self.rte_ring_dequeue_burst = rte_pdcp_rte_ring_dequeue_burst.load(self.lib)
        self.rte_mov16 = rte_pdcp_rte_mov16.load(self.lib)
        self.rte_mov32 = rte_pdcp_rte_mov32.load(self.lib)
        self.rte_mov64 = rte_pdcp_rte_mov64.load(self.lib)
        self.rte_mov128 = rte_pdcp_rte_mov128.load(self.lib)
        self.rte_mov256 = rte_pdcp_rte_mov256.load(self.lib)
        self.rte_mov48 = rte_pdcp_rte_mov48.load(self.lib)
        self.rte_get_tsc_hz = rte_pdcp_rte_get_tsc_hz.load(self.lib)
        self.rte_get_tsc_cycles = rte_pdcp_rte_get_tsc_cycles.load(self.lib)
        self.rte_get_timer_cycles = rte_pdcp_rte_get_timer_cycles.load(self.lib)
        self.rte_get_timer_hz = rte_pdcp_rte_get_timer_hz.load(self.lib)
        self.rte_delay_ms = rte_pdcp_rte_delay_ms.load(self.lib)
        self.rte_delay_us_block = rte_pdcp_rte_delay_us_block.load(self.lib)
        self.rte_delay_us_sleep = rte_pdcp_rte_delay_us_sleep.load(self.lib)
        self.rte_delay_us_callback_register = rte_pdcp_rte_delay_us_callback_register.load(self.lib)
        self.rte_rdtsc = rte_pdcp_rte_rdtsc.load(self.lib)
        self.rte_rdtsc_precise = rte_pdcp_rte_rdtsc_precise.load(self.lib)
        self.isalnum = rte_pdcp_isalnum.load(self.lib)
        self.isalpha = rte_pdcp_isalpha.load(self.lib)
        self.iscntrl = rte_pdcp_iscntrl.load(self.lib)
        self.isdigit = rte_pdcp_isdigit.load(self.lib)
        self.islower = rte_pdcp_islower.load(self.lib)
        self.isgraph = rte_pdcp_isgraph.load(self.lib)
        self.isprint = rte_pdcp_isprint.load(self.lib)
        self.ispunct = rte_pdcp_ispunct.load(self.lib)
        self.isspace = rte_pdcp_isspace.load(self.lib)
        self.isupper = rte_pdcp_isupper.load(self.lib)
        self.isxdigit = rte_pdcp_isxdigit.load(self.lib)
        self.tolower = rte_pdcp_tolower.load(self.lib)
        self.toupper = rte_pdcp_toupper.load(self.lib)
        self.isblank = rte_pdcp_isblank.load(self.lib)
        self.isascii = rte_pdcp_isascii.load(self.lib)
        self.toascii = rte_pdcp_toascii.load(self.lib)
        self.isalnum_l = rte_pdcp_isalnum_l.load(self.lib)
        self.isalpha_l = rte_pdcp_isalpha_l.load(self.lib)
        self.iscntrl_l = rte_pdcp_iscntrl_l.load(self.lib)
        self.isdigit_l = rte_pdcp_isdigit_l.load(self.lib)
        self.islower_l = rte_pdcp_islower_l.load(self.lib)
        self.isgraph_l = rte_pdcp_isgraph_l.load(self.lib)
        self.isprint_l = rte_pdcp_isprint_l.load(self.lib)
        self.ispunct_l = rte_pdcp_ispunct_l.load(self.lib)
        self.isspace_l = rte_pdcp_isspace_l.load(self.lib)
        self.isupper_l = rte_pdcp_isupper_l.load(self.lib)
        self.isxdigit_l = rte_pdcp_isxdigit_l.load(self.lib)
        self.isblank_l = rte_pdcp_isblank_l.load(self.lib)
        self.tolower_l = rte_pdcp_tolower_l.load(self.lib)
        self.toupper_l = rte_pdcp_toupper_l.load(self.lib)
        self.rte_strsplit = rte_pdcp_rte_strsplit.load(self.lib)
        self.rte_strlcpy = rte_pdcp_rte_strlcpy.load(self.lib)
        self.rte_strlcat = rte_pdcp_rte_strlcat.load(self.lib)
        self.rte_strscpy = rte_pdcp_rte_strscpy.load(self.lib)
        self.rte_str_skip_leading_spaces = rte_pdcp_rte_str_skip_leading_spaces.load(self.lib)
        self.rte_trace_is_enabled = rte_pdcp_rte_trace_is_enabled.load(self.lib)
        self.rte_trace_feature_is_enabled = rte_pdcp_rte_trace_feature_is_enabled.load(self.lib)
        self.rte_trace_mode_set = rte_pdcp_rte_trace_mode_set.load(self.lib)
        self.rte_trace_mode_get = rte_pdcp_rte_trace_mode_get.load(self.lib)
        self.rte_trace_pattern = rte_pdcp_rte_trace_pattern.load(self.lib)
        self.rte_trace_regexp = rte_pdcp_rte_trace_regexp.load(self.lib)
        self.rte_trace_save = rte_pdcp_rte_trace_save.load(self.lib)
        self.rte_trace_metadata_dump = rte_pdcp_rte_trace_metadata_dump.load(self.lib)
        self.rte_trace_dump = rte_pdcp_rte_trace_dump.load(self.lib)
        self.rte_trace_point_enable = rte_pdcp_rte_trace_point_enable.load(self.lib)
        self.rte_trace_point_disable = rte_pdcp_rte_trace_point_disable.load(self.lib)
        self.rte_trace_point_is_enabled = rte_pdcp_rte_trace_point_is_enabled.load(self.lib)
        self.rte_trace_point_lookup = rte_pdcp_rte_trace_point_lookup.load(self.lib)
        self.rte_mempool_trace_ops_dequeue_bulk = rte_pdcp_rte_mempool_trace_ops_dequeue_bulk.load(self.lib)
        self.rte_mempool_trace_ops_dequeue_contig_blocks = rte_pdcp_rte_mempool_trace_ops_dequeue_contig_blocks.load(self.lib)
        self.rte_mempool_trace_ops_enqueue_bulk = rte_pdcp_rte_mempool_trace_ops_enqueue_bulk.load(self.lib)
        self.rte_mempool_trace_generic_put = rte_pdcp_rte_mempool_trace_generic_put.load(self.lib)
        self.rte_mempool_trace_put_bulk = rte_pdcp_rte_mempool_trace_put_bulk.load(self.lib)
        self.rte_mempool_trace_generic_get = rte_pdcp_rte_mempool_trace_generic_get.load(self.lib)
        self.rte_mempool_trace_get_bulk = rte_pdcp_rte_mempool_trace_get_bulk.load(self.lib)
        self.rte_mempool_trace_get_contig_blocks = rte_pdcp_rte_mempool_trace_get_contig_blocks.load(self.lib)
        self.rte_mempool_trace_default_cache = rte_pdcp_rte_mempool_trace_default_cache.load(self.lib)
        self.rte_mempool_trace_cache_flush = rte_pdcp_rte_mempool_trace_cache_flush.load(self.lib)
        self.rte_mempool_get_header = rte_pdcp_rte_mempool_get_header.load(self.lib)
        self.rte_mempool_from_obj = rte_pdcp_rte_mempool_from_obj.load(self.lib)
        self.rte_mempool_get_trailer = rte_pdcp_rte_mempool_get_trailer.load(self.lib)
        self.rte_mempool_check_cookies = rte_pdcp_rte_mempool_check_cookies.load(self.lib)
        self.rte_mempool_contig_blocks_check_cookies = rte_pdcp_rte_mempool_contig_blocks_check_cookies.load(self.lib)
        self.rte_mempool_op_calc_mem_size_helper = rte_pdcp_rte_mempool_op_calc_mem_size_helper.load(self.lib)
        self.rte_mempool_op_calc_mem_size_default = rte_pdcp_rte_mempool_op_calc_mem_size_default.load(self.lib)
        self.rte_mempool_op_populate_helper = rte_pdcp_rte_mempool_op_populate_helper.load(self.lib)
        self.rte_mempool_op_populate_default = rte_pdcp_rte_mempool_op_populate_default.load(self.lib)
        self.rte_mempool_get_ops = rte_pdcp_rte_mempool_get_ops.load(self.lib)
        self.rte_mempool_ops_alloc = rte_pdcp_rte_mempool_ops_alloc.load(self.lib)
        self.rte_mempool_ops_dequeue_bulk = rte_pdcp_rte_mempool_ops_dequeue_bulk.load(self.lib)
        self.rte_mempool_ops_dequeue_contig_blocks = rte_pdcp_rte_mempool_ops_dequeue_contig_blocks.load(self.lib)
        self.rte_mempool_ops_enqueue_bulk = rte_pdcp_rte_mempool_ops_enqueue_bulk.load(self.lib)
        self.rte_mempool_ops_get_count = rte_pdcp_rte_mempool_ops_get_count.load(self.lib)
        self.rte_mempool_ops_calc_mem_size = rte_pdcp_rte_mempool_ops_calc_mem_size.load(self.lib)
        self.rte_mempool_ops_populate = rte_pdcp_rte_mempool_ops_populate.load(self.lib)
        self.rte_mempool_ops_get_info = rte_pdcp_rte_mempool_ops_get_info.load(self.lib)
        self.rte_mempool_ops_free = rte_pdcp_rte_mempool_ops_free.load(self.lib)
        self.rte_mempool_set_ops_byname = rte_pdcp_rte_mempool_set_ops_byname.load(self.lib)
        self.rte_mempool_register_ops = rte_pdcp_rte_mempool_register_ops.load(self.lib)
        self.rte_mempool_free = rte_pdcp_rte_mempool_free.load(self.lib)
        self.rte_mempool_create = rte_pdcp_rte_mempool_create.load(self.lib)
        self.rte_mempool_create_empty = rte_pdcp_rte_mempool_create_empty.load(self.lib)
        self.rte_mempool_populate_iova = rte_pdcp_rte_mempool_populate_iova.load(self.lib)
        self.rte_mempool_populate_virt = rte_pdcp_rte_mempool_populate_virt.load(self.lib)
        self.rte_mempool_populate_default = rte_pdcp_rte_mempool_populate_default.load(self.lib)
        self.rte_mempool_populate_anon = rte_pdcp_rte_mempool_populate_anon.load(self.lib)
        self.rte_mempool_obj_iter = rte_pdcp_rte_mempool_obj_iter.load(self.lib)
        self.rte_mempool_mem_iter = rte_pdcp_rte_mempool_mem_iter.load(self.lib)
        self.rte_mempool_dump = rte_pdcp_rte_mempool_dump.load(self.lib)
        self.rte_mempool_cache_create = rte_pdcp_rte_mempool_cache_create.load(self.lib)
        self.rte_mempool_cache_free = rte_pdcp_rte_mempool_cache_free.load(self.lib)
        self.rte_mempool_default_cache = rte_pdcp_rte_mempool_default_cache.load(self.lib)
        self.rte_mempool_cache_flush = rte_pdcp_rte_mempool_cache_flush.load(self.lib)
        self.rte_mempool_do_generic_put = rte_pdcp_rte_mempool_do_generic_put.load(self.lib)
        self.rte_mempool_generic_put = rte_pdcp_rte_mempool_generic_put.load(self.lib)
        self.rte_mempool_put_bulk = rte_pdcp_rte_mempool_put_bulk.load(self.lib)
        self.rte_mempool_put = rte_pdcp_rte_mempool_put.load(self.lib)
        self.rte_mempool_do_generic_get = rte_pdcp_rte_mempool_do_generic_get.load(self.lib)
        self.rte_mempool_generic_get = rte_pdcp_rte_mempool_generic_get.load(self.lib)
        self.rte_mempool_get_bulk = rte_pdcp_rte_mempool_get_bulk.load(self.lib)
        self.rte_mempool_get = rte_pdcp_rte_mempool_get.load(self.lib)
        self.rte_mempool_get_contig_blocks = rte_pdcp_rte_mempool_get_contig_blocks.load(self.lib)
        self.rte_mempool_avail_count = rte_pdcp_rte_mempool_avail_count.load(self.lib)
        self.rte_mempool_in_use_count = rte_pdcp_rte_mempool_in_use_count.load(self.lib)
        self.rte_mempool_full = rte_pdcp_rte_mempool_full.load(self.lib)
        self.rte_mempool_empty = rte_pdcp_rte_mempool_empty.load(self.lib)
        self.rte_mempool_virt2iova = rte_pdcp_rte_mempool_virt2iova.load(self.lib)
        self.rte_mempool_audit = rte_pdcp_rte_mempool_audit.load(self.lib)
        self.rte_mempool_get_priv = rte_pdcp_rte_mempool_get_priv.load(self.lib)
        self.rte_mempool_list_dump = rte_pdcp_rte_mempool_list_dump.load(self.lib)
        self.rte_mempool_lookup = rte_pdcp_rte_mempool_lookup.load(self.lib)
        self.rte_mempool_calc_obj_size = rte_pdcp_rte_mempool_calc_obj_size.load(self.lib)
        self.rte_mempool_walk = rte_pdcp_rte_mempool_walk.load(self.lib)
        self.rte_mempool_get_mem_range = rte_pdcp_rte_mempool_get_mem_range.load(self.lib)
        self.rte_mempool_get_obj_alignment = rte_pdcp_rte_mempool_get_obj_alignment.load(self.lib)
        self.rte_mempool_get_page_size = rte_pdcp_rte_mempool_get_page_size.load(self.lib)
        self.rte_mempool_event_callback_register = rte_pdcp_rte_mempool_event_callback_register.load(self.lib)
        self.rte_mempool_event_callback_unregister = rte_pdcp_rte_mempool_event_callback_unregister.load(self.lib)
        self.rte_constant_bswap16 = rte_pdcp_rte_constant_bswap16.load(self.lib)
        self.rte_constant_bswap32 = rte_pdcp_rte_constant_bswap32.load(self.lib)
        self.rte_constant_bswap64 = rte_pdcp_rte_constant_bswap64.load(self.lib)
        self.select = rte_pdcp_select.load(self.lib)
        self.pselect = rte_pdcp_pselect.load(self.lib)
        self.rte_prefetch0 = rte_pdcp_rte_prefetch0.load(self.lib)
        self.rte_prefetch1 = rte_pdcp_rte_prefetch1.load(self.lib)
        self.rte_prefetch2 = rte_pdcp_rte_prefetch2.load(self.lib)
        self.rte_prefetch_non_temporal = rte_pdcp_rte_prefetch_non_temporal.load(self.lib)
        self.rte_prefetch0_write = rte_pdcp_rte_prefetch0_write.load(self.lib)
        self.rte_prefetch1_write = rte_pdcp_rte_prefetch1_write.load(self.lib)
        self.rte_prefetch2_write = rte_pdcp_rte_prefetch2_write.load(self.lib)
        self.rte_cldemote = rte_pdcp_rte_cldemote.load(self.lib)
        self.rte_get_ptype_l2_name = rte_pdcp_rte_get_ptype_l2_name.load(self.lib)
        self.rte_get_ptype_l3_name = rte_pdcp_rte_get_ptype_l3_name.load(self.lib)
        self.rte_get_ptype_l4_name = rte_pdcp_rte_get_ptype_l4_name.load(self.lib)
        self.rte_get_ptype_tunnel_name = rte_pdcp_rte_get_ptype_tunnel_name.load(self.lib)
        self.rte_get_ptype_inner_l2_name = rte_pdcp_rte_get_ptype_inner_l2_name.load(self.lib)
        self.rte_get_ptype_inner_l3_name = rte_pdcp_rte_get_ptype_inner_l3_name.load(self.lib)
        self.rte_get_ptype_inner_l4_name = rte_pdcp_rte_get_ptype_inner_l4_name.load(self.lib)
        self.rte_get_ptype_name = rte_pdcp_rte_get_ptype_name.load(self.lib)
        self.rte_get_rx_ol_flag_name = rte_pdcp_rte_get_rx_ol_flag_name.load(self.lib)
        self.rte_get_rx_ol_flag_list = rte_pdcp_rte_get_rx_ol_flag_list.load(self.lib)
        self.rte_get_tx_ol_flag_name = rte_pdcp_rte_get_tx_ol_flag_name.load(self.lib)
        self.rte_get_tx_ol_flag_list = rte_pdcp_rte_get_tx_ol_flag_list.load(self.lib)
        self.rte_mbuf_prefetch_part1 = rte_pdcp_rte_mbuf_prefetch_part1.load(self.lib)
        self.rte_mbuf_prefetch_part2 = rte_pdcp_rte_mbuf_prefetch_part2.load(self.lib)
        self.rte_pktmbuf_priv_size = rte_pdcp_rte_pktmbuf_priv_size.load(self.lib)
        self.rte_mbuf_iova_get = rte_pdcp_rte_mbuf_iova_get.load(self.lib)
        self.rte_mbuf_iova_set = rte_pdcp_rte_mbuf_iova_set.load(self.lib)
        self.rte_mbuf_data_iova = rte_pdcp_rte_mbuf_data_iova.load(self.lib)
        self.rte_mbuf_data_iova_default = rte_pdcp_rte_mbuf_data_iova_default.load(self.lib)
        self.rte_mbuf_from_indirect = rte_pdcp_rte_mbuf_from_indirect.load(self.lib)
        self.rte_mbuf_buf_addr = rte_pdcp_rte_mbuf_buf_addr.load(self.lib)
        self.rte_mbuf_data_addr_default = rte_pdcp_rte_mbuf_data_addr_default.load(self.lib)
        self.rte_mbuf_to_baddr = rte_pdcp_rte_mbuf_to_baddr.load(self.lib)
        self.rte_mbuf_to_priv = rte_pdcp_rte_mbuf_to_priv.load(self.lib)
        self.rte_pktmbuf_priv_flags = rte_pdcp_rte_pktmbuf_priv_flags.load(self.lib)
        self.rte_mbuf_refcnt_read = rte_pdcp_rte_mbuf_refcnt_read.load(self.lib)
        self.rte_mbuf_refcnt_set = rte_pdcp_rte_mbuf_refcnt_set.load(self.lib)
        self.rte_mbuf_refcnt_update = rte_pdcp_rte_mbuf_refcnt_update.load(self.lib)
        self.rte_mbuf_ext_refcnt_read = rte_pdcp_rte_mbuf_ext_refcnt_read.load(self.lib)
        self.rte_mbuf_ext_refcnt_set = rte_pdcp_rte_mbuf_ext_refcnt_set.load(self.lib)
        self.rte_mbuf_ext_refcnt_update = rte_pdcp_rte_mbuf_ext_refcnt_update.load(self.lib)
        self.rte_mbuf_sanity_check = rte_pdcp_rte_mbuf_sanity_check.load(self.lib)
        self.rte_mbuf_check = rte_pdcp_rte_mbuf_check.load(self.lib)
        self.rte_mbuf_raw_alloc = rte_pdcp_rte_mbuf_raw_alloc.load(self.lib)
        self.rte_mbuf_raw_alloc_bulk = rte_pdcp_rte_mbuf_raw_alloc_bulk.load(self.lib)
        self.rte_mbuf_raw_free = rte_pdcp_rte_mbuf_raw_free.load(self.lib)
        self.rte_mbuf_raw_free_bulk = rte_pdcp_rte_mbuf_raw_free_bulk.load(self.lib)
        self.rte_pktmbuf_init = rte_pdcp_rte_pktmbuf_init.load(self.lib)
        self.rte_pktmbuf_pool_init = rte_pdcp_rte_pktmbuf_pool_init.load(self.lib)
        self.rte_pktmbuf_pool_create = rte_pdcp_rte_pktmbuf_pool_create.load(self.lib)
        self.rte_pktmbuf_pool_create_by_ops = rte_pdcp_rte_pktmbuf_pool_create_by_ops.load(self.lib)
        self.rte_pktmbuf_pool_create_extbuf = rte_pdcp_rte_pktmbuf_pool_create_extbuf.load(self.lib)
        self.rte_pktmbuf_data_room_size = rte_pdcp_rte_pktmbuf_data_room_size.load(self.lib)
        self.rte_pktmbuf_reset_headroom = rte_pdcp_rte_pktmbuf_reset_headroom.load(self.lib)
        self.rte_pktmbuf_reset = rte_pdcp_rte_pktmbuf_reset.load(self.lib)
        self.rte_pktmbuf_alloc = rte_pdcp_rte_pktmbuf_alloc.load(self.lib)
        self.rte_pktmbuf_alloc_bulk = rte_pdcp_rte_pktmbuf_alloc_bulk.load(self.lib)
        self.rte_pktmbuf_ext_shinfo_init_helper = rte_pdcp_rte_pktmbuf_ext_shinfo_init_helper.load(self.lib)
        self.rte_pktmbuf_attach_extbuf = rte_pdcp_rte_pktmbuf_attach_extbuf.load(self.lib)
        self.rte_mbuf_dynfield_copy = rte_pdcp_rte_mbuf_dynfield_copy.load(self.lib)
        self.rte_pktmbuf_attach = rte_pdcp_rte_pktmbuf_attach.load(self.lib)
        self.rte_pktmbuf_detach = rte_pdcp_rte_pktmbuf_detach.load(self.lib)
        self.rte_pktmbuf_prefree_seg = rte_pdcp_rte_pktmbuf_prefree_seg.load(self.lib)
        self.rte_pktmbuf_free_seg = rte_pdcp_rte_pktmbuf_free_seg.load(self.lib)
        self.rte_pktmbuf_free = rte_pdcp_rte_pktmbuf_free.load(self.lib)
        self.rte_pktmbuf_free_bulk = rte_pdcp_rte_pktmbuf_free_bulk.load(self.lib)
        self.rte_pktmbuf_clone = rte_pdcp_rte_pktmbuf_clone.load(self.lib)
        self.rte_pktmbuf_copy = rte_pdcp_rte_pktmbuf_copy.load(self.lib)
        self.rte_pktmbuf_refcnt_update = rte_pdcp_rte_pktmbuf_refcnt_update.load(self.lib)
        self.rte_pktmbuf_headroom = rte_pdcp_rte_pktmbuf_headroom.load(self.lib)
        self.rte_pktmbuf_tailroom = rte_pdcp_rte_pktmbuf_tailroom.load(self.lib)
        self.rte_pktmbuf_lastseg = rte_pdcp_rte_pktmbuf_lastseg.load(self.lib)
        self.rte_pktmbuf_prepend = rte_pdcp_rte_pktmbuf_prepend.load(self.lib)
        self.rte_pktmbuf_append = rte_pdcp_rte_pktmbuf_append.load(self.lib)
        self.rte_pktmbuf_adj = rte_pdcp_rte_pktmbuf_adj.load(self.lib)
        self.rte_pktmbuf_trim = rte_pdcp_rte_pktmbuf_trim.load(self.lib)
        self.rte_pktmbuf_is_contiguous = rte_pdcp_rte_pktmbuf_is_contiguous.load(self.lib)
        self.rte_pktmbuf_read = rte_pdcp_rte_pktmbuf_read.load(self.lib)
        self.rte_pktmbuf_chain = rte_pdcp_rte_pktmbuf_chain.load(self.lib)
        self.rte_mbuf_tx_offload = rte_pdcp_rte_mbuf_tx_offload.load(self.lib)
        self.rte_validate_tx_offload = rte_pdcp_rte_validate_tx_offload.load(self.lib)
        self.rte_pktmbuf_linearize = rte_pdcp_rte_pktmbuf_linearize.load(self.lib)
        self.rte_pktmbuf_dump = rte_pdcp_rte_pktmbuf_dump.load(self.lib)
        self.rte_mbuf_sched_queue_get = rte_pdcp_rte_mbuf_sched_queue_get.load(self.lib)
        self.rte_mbuf_sched_traffic_class_get = rte_pdcp_rte_mbuf_sched_traffic_class_get.load(self.lib)
        self.rte_mbuf_sched_color_get = rte_pdcp_rte_mbuf_sched_color_get.load(self.lib)
        self.rte_mbuf_sched_get = rte_pdcp_rte_mbuf_sched_get.load(self.lib)
        self.rte_mbuf_sched_queue_set = rte_pdcp_rte_mbuf_sched_queue_set.load(self.lib)
        self.rte_mbuf_sched_traffic_class_set = rte_pdcp_rte_mbuf_sched_traffic_class_set.load(self.lib)
        self.rte_mbuf_sched_color_set = rte_pdcp_rte_mbuf_sched_color_set.load(self.lib)
        self.rte_mbuf_sched_set = rte_pdcp_rte_mbuf_sched_set.load(self.lib)
        self.rte_crypto_mbuf_to_vec = rte_pdcp_rte_crypto_mbuf_to_vec.load(self.lib)
        self.rte_crypto_op_pool_create = rte_pdcp_rte_crypto_op_pool_create.load(self.lib)
        self.rte_crypto_op_alloc = rte_pdcp_rte_crypto_op_alloc.load(self.lib)
        self.rte_crypto_op_bulk_alloc = rte_pdcp_rte_crypto_op_bulk_alloc.load(self.lib)
        self.rte_crypto_op_free = rte_pdcp_rte_crypto_op_free.load(self.lib)
        self.rte_crypto_sym_op_alloc_from_mbuf_priv_data = rte_pdcp_rte_crypto_sym_op_alloc_from_mbuf_priv_data.load(self.lib)
        self.rte_crypto_op_sym_xforms_alloc = rte_pdcp_rte_crypto_op_sym_xforms_alloc.load(self.lib)
        self.rte_crypto_op_attach_sym_session = rte_pdcp_rte_crypto_op_attach_sym_session.load(self.lib)
        self.rte_crypto_op_attach_asym_session = rte_pdcp_rte_crypto_op_attach_asym_session.load(self.lib)
        self.socket = rte_pdcp_socket.load(self.lib)
        self.socketpair = rte_pdcp_socketpair.load(self.lib)
        self.bind = rte_pdcp_bind.load(self.lib)
        self.getsockname = rte_pdcp_getsockname.load(self.lib)
        self.connect = rte_pdcp_connect.load(self.lib)
        self.getpeername = rte_pdcp_getpeername.load(self.lib)
        self.send = rte_pdcp_send.load(self.lib)
        self.recv = rte_pdcp_recv.load(self.lib)
        self.sendto = rte_pdcp_sendto.load(self.lib)
        self.recvfrom = rte_pdcp_recvfrom.load(self.lib)
        self.sendmsg = rte_pdcp_sendmsg.load(self.lib)
        self.recvmsg = rte_pdcp_recvmsg.load(self.lib)
        self.getsockopt = rte_pdcp_getsockopt.load(self.lib)
        self.setsockopt = rte_pdcp_setsockopt.load(self.lib)
        self.listen = rte_pdcp_listen.load(self.lib)
        self.accept = rte_pdcp_accept.load(self.lib)
        self.shutdown = rte_pdcp_shutdown.load(self.lib)
        self.sockatmark = rte_pdcp_sockatmark.load(self.lib)
        self.isfdtype = rte_pdcp_isfdtype.load(self.lib)
        self.ntohl = rte_pdcp_ntohl.load(self.lib)
        self.ntohs = rte_pdcp_ntohs.load(self.lib)
        self.htonl = rte_pdcp_htonl.load(self.lib)
        self.htons = rte_pdcp_htons.load(self.lib)
        self.bindresvport = rte_pdcp_bindresvport.load(self.lib)
        self.bindresvport6 = rte_pdcp_bindresvport6.load(self.lib)
        self.inet_addr = rte_pdcp_inet_addr.load(self.lib)
        self.inet_lnaof = rte_pdcp_inet_lnaof.load(self.lib)
        self.inet_makeaddr = rte_pdcp_inet_makeaddr.load(self.lib)
        self.inet_netof = rte_pdcp_inet_netof.load(self.lib)
        self.inet_network = rte_pdcp_inet_network.load(self.lib)
        self.inet_ntoa = rte_pdcp_inet_ntoa.load(self.lib)
        self.inet_pton = rte_pdcp_inet_pton.load(self.lib)
        self.inet_ntop = rte_pdcp_inet_ntop.load(self.lib)
        self.inet_aton = rte_pdcp_inet_aton.load(self.lib)
        self.inet_neta = rte_pdcp_inet_neta.load(self.lib)
        self.inet_net_ntop = rte_pdcp_inet_net_ntop.load(self.lib)
        self.inet_net_pton = rte_pdcp_inet_net_pton.load(self.lib)
        self.inet_nsap_addr = rte_pdcp_inet_nsap_addr.load(self.lib)
        self.inet_nsap_ntoa = rte_pdcp_inet_nsap_ntoa.load(self.lib)
        self.rte_raw_cksum = rte_pdcp_rte_raw_cksum.load(self.lib)
        self.rte_raw_cksum_mbuf = rte_pdcp_rte_raw_cksum_mbuf.load(self.lib)
        self.rte_ipv4_hdr_len = rte_pdcp_rte_ipv4_hdr_len.load(self.lib)
        self.rte_ipv4_cksum = rte_pdcp_rte_ipv4_cksum.load(self.lib)
        self.rte_ipv4_cksum_simple = rte_pdcp_rte_ipv4_cksum_simple.load(self.lib)
        self.rte_ipv4_phdr_cksum = rte_pdcp_rte_ipv4_phdr_cksum.load(self.lib)
        self.rte_ipv4_udptcp_cksum = rte_pdcp_rte_ipv4_udptcp_cksum.load(self.lib)
        self.rte_ipv4_udptcp_cksum_mbuf = rte_pdcp_rte_ipv4_udptcp_cksum_mbuf.load(self.lib)
        self.rte_ipv4_udptcp_cksum_verify = rte_pdcp_rte_ipv4_udptcp_cksum_verify.load(self.lib)
        self.rte_ipv4_udptcp_cksum_mbuf_verify = rte_pdcp_rte_ipv4_udptcp_cksum_mbuf_verify.load(self.lib)
        self.rte_srand = rte_pdcp_rte_srand.load(self.lib)
        self.rte_rand = rte_pdcp_rte_rand.load(self.lib)
        self.rte_rand_max = rte_pdcp_rte_rand_max.load(self.lib)
        self.rte_drand = rte_pdcp_rte_drand.load(self.lib)
        self.rte_is_same_ether_addr = rte_pdcp_rte_is_same_ether_addr.load(self.lib)
        self.rte_is_zero_ether_addr = rte_pdcp_rte_is_zero_ether_addr.load(self.lib)
        self.rte_is_unicast_ether_addr = rte_pdcp_rte_is_unicast_ether_addr.load(self.lib)
        self.rte_is_multicast_ether_addr = rte_pdcp_rte_is_multicast_ether_addr.load(self.lib)
        self.rte_is_broadcast_ether_addr = rte_pdcp_rte_is_broadcast_ether_addr.load(self.lib)
        self.rte_is_universal_ether_addr = rte_pdcp_rte_is_universal_ether_addr.load(self.lib)
        self.rte_is_local_admin_ether_addr = rte_pdcp_rte_is_local_admin_ether_addr.load(self.lib)
        self.rte_is_valid_assigned_ether_addr = rte_pdcp_rte_is_valid_assigned_ether_addr.load(self.lib)
        self.rte_eth_random_addr = rte_pdcp_rte_eth_random_addr.load(self.lib)
        self.rte_ether_addr_copy = rte_pdcp_rte_ether_addr_copy.load(self.lib)
        self.rte_ether_format_addr = rte_pdcp_rte_ether_format_addr.load(self.lib)
        self.rte_ether_unformat_addr = rte_pdcp_rte_ether_unformat_addr.load(self.lib)
        self.rte_vlan_strip = rte_pdcp_rte_vlan_strip.load(self.lib)
        self.rte_vlan_insert = rte_pdcp_rte_vlan_insert.load(self.lib)
        self.rte_ipv6_addr_eq = rte_pdcp_rte_ipv6_addr_eq.load(self.lib)
        self.rte_ipv6_addr_mask = rte_pdcp_rte_ipv6_addr_mask.load(self.lib)
        self.rte_ipv6_addr_eq_prefix = rte_pdcp_rte_ipv6_addr_eq_prefix.load(self.lib)
        self.rte_ipv6_mask_depth = rte_pdcp_rte_ipv6_mask_depth.load(self.lib)
        self.rte_ipv6_addr_is_unspec = rte_pdcp_rte_ipv6_addr_is_unspec.load(self.lib)
        self.rte_ipv6_addr_is_loopback = rte_pdcp_rte_ipv6_addr_is_loopback.load(self.lib)
        self.rte_ipv6_addr_is_linklocal = rte_pdcp_rte_ipv6_addr_is_linklocal.load(self.lib)
        self.rte_ipv6_addr_is_sitelocal = rte_pdcp_rte_ipv6_addr_is_sitelocal.load(self.lib)
        self.rte_ipv6_addr_is_v4compat = rte_pdcp_rte_ipv6_addr_is_v4compat.load(self.lib)
        self.rte_ipv6_addr_is_v4mapped = rte_pdcp_rte_ipv6_addr_is_v4mapped.load(self.lib)
        self.rte_ipv6_addr_is_mcast = rte_pdcp_rte_ipv6_addr_is_mcast.load(self.lib)
        self.rte_ipv6_llocal_from_ethernet = rte_pdcp_rte_ipv6_llocal_from_ethernet.load(self.lib)
        self.rte_ipv6_solnode_from_addr = rte_pdcp_rte_ipv6_solnode_from_addr.load(self.lib)
        self.rte_ether_mcast_from_ipv6 = rte_pdcp_rte_ether_mcast_from_ipv6.load(self.lib)
        self.rte_ipv6_check_version = rte_pdcp_rte_ipv6_check_version.load(self.lib)
        self.rte_ipv6_phdr_cksum = rte_pdcp_rte_ipv6_phdr_cksum.load(self.lib)
        self.rte_ipv6_udptcp_cksum = rte_pdcp_rte_ipv6_udptcp_cksum.load(self.lib)
        self.rte_ipv6_udptcp_cksum_mbuf = rte_pdcp_rte_ipv6_udptcp_cksum_mbuf.load(self.lib)
        self.rte_ipv6_udptcp_cksum_verify = rte_pdcp_rte_ipv6_udptcp_cksum_verify.load(self.lib)
        self.rte_ipv6_udptcp_cksum_mbuf_verify = rte_pdcp_rte_ipv6_udptcp_cksum_mbuf_verify.load(self.lib)
        self.rte_ipv6_get_next_ext = rte_pdcp_rte_ipv6_get_next_ext.load(self.lib)
        self.rte_mbuf_dynfield_register = rte_pdcp_rte_mbuf_dynfield_register.load(self.lib)
        self.rte_mbuf_dynfield_register_offset = rte_pdcp_rte_mbuf_dynfield_register_offset.load(self.lib)
        self.rte_mbuf_dynfield_lookup = rte_pdcp_rte_mbuf_dynfield_lookup.load(self.lib)
        self.rte_mbuf_dynflag_register = rte_pdcp_rte_mbuf_dynflag_register.load(self.lib)
        self.rte_mbuf_dynflag_register_bitnum = rte_pdcp_rte_mbuf_dynflag_register_bitnum.load(self.lib)
        self.rte_mbuf_dynflag_lookup = rte_pdcp_rte_mbuf_dynflag_lookup.load(self.lib)
        self.rte_mbuf_dyn_dump = rte_pdcp_rte_mbuf_dyn_dump.load(self.lib)
        self.rte_mbuf_dyn_rx_timestamp_register = rte_pdcp_rte_mbuf_dyn_rx_timestamp_register.load(self.lib)
        self.rte_mbuf_dyn_tx_timestamp_register = rte_pdcp_rte_mbuf_dyn_tx_timestamp_register.load(self.lib)
        self.rte_security_session_create = rte_pdcp_rte_security_session_create.load(self.lib)
        self.rte_security_session_update = rte_pdcp_rte_security_session_update.load(self.lib)
        self.rte_security_session_get_size = rte_pdcp_rte_security_session_get_size.load(self.lib)
        self.rte_security_session_destroy = rte_pdcp_rte_security_session_destroy.load(self.lib)
        self.rte_security_macsec_sc_create = rte_pdcp_rte_security_macsec_sc_create.load(self.lib)
        self.rte_security_macsec_sc_destroy = rte_pdcp_rte_security_macsec_sc_destroy.load(self.lib)
        self.rte_security_macsec_sa_create = rte_pdcp_rte_security_macsec_sa_create.load(self.lib)
        self.rte_security_macsec_sa_destroy = rte_pdcp_rte_security_macsec_sa_destroy.load(self.lib)
        self.rte_security_dynfield = rte_pdcp_rte_security_dynfield.load(self.lib)
        self.rte_security_oop_dynfield = rte_pdcp_rte_security_oop_dynfield.load(self.lib)
        self.rte_security_dynfield_is_registered = rte_pdcp_rte_security_dynfield_is_registered.load(self.lib)
        self.rte_security_ctx_flags_get = rte_pdcp_rte_security_ctx_flags_get.load(self.lib)
        self.rte_security_ctx_flags_set = rte_pdcp_rte_security_ctx_flags_set.load(self.lib)
        self.rte_security_session_opaque_data_get = rte_pdcp_rte_security_session_opaque_data_get.load(self.lib)
        self.rte_security_session_opaque_data_set = rte_pdcp_rte_security_session_opaque_data_set.load(self.lib)
        self.rte_security_session_fast_mdata_get = rte_pdcp_rte_security_session_fast_mdata_get.load(self.lib)
        self.rte_security_session_fast_mdata_set = rte_pdcp_rte_security_session_fast_mdata_set.load(self.lib)
        self.rte_security_set_pkt_metadata = rte_pdcp_rte_security_set_pkt_metadata.load(self.lib)
        self.rte_security_attach_session = rte_pdcp_rte_security_attach_session.load(self.lib)
        self.rte_security_session_stats_get = rte_pdcp_rte_security_session_stats_get.load(self.lib)
        self.rte_security_macsec_sa_stats_get = rte_pdcp_rte_security_macsec_sa_stats_get.load(self.lib)
        self.rte_security_macsec_sc_stats_get = rte_pdcp_rte_security_macsec_sc_stats_get.load(self.lib)
        self.rte_security_capabilities_get = rte_pdcp_rte_security_capabilities_get.load(self.lib)
        self.rte_security_capability_get = rte_pdcp_rte_security_capability_get.load(self.lib)
        self.rte_security_rx_inject_configure = rte_pdcp_rte_security_rx_inject_configure.load(self.lib)
        self.rte_security_inb_pkt_rx_inject = rte_pdcp_rte_security_inb_pkt_rx_inject.load(self.lib)
        self.rte_pdcp_entity_establish = rte_pdcp_rte_pdcp_entity_establish.load(self.lib)
        self.rte_pdcp_entity_release = rte_pdcp_rte_pdcp_entity_release.load(self.lib)
        self.rte_pdcp_entity_suspend = rte_pdcp_rte_pdcp_entity_suspend.load(self.lib)
        self.rte_pdcp_control_pdu_create = rte_pdcp_rte_pdcp_control_pdu_create.load(self.lib)
        self.rte_pdcp_pkt_pre_process = rte_pdcp_rte_pdcp_pkt_pre_process.load(self.lib)
        self.rte_pdcp_pkt_post_process = rte_pdcp_rte_pdcp_pkt_post_process.load(self.lib)
        self.rte_pdcp_t_reordering_expiry_handle = rte_pdcp_rte_pdcp_t_reordering_expiry_handle.load(self.lib)
        self.rte_kvargs_parse = rte_pdcp_rte_kvargs_parse.load(self.lib)
        self.rte_kvargs_parse_delim = rte_pdcp_rte_kvargs_parse_delim.load(self.lib)
        self.rte_kvargs_free = rte_pdcp_rte_kvargs_free.load(self.lib)
        self.rte_kvargs_get = rte_pdcp_rte_kvargs_get.load(self.lib)
        self.rte_kvargs_get_with_value = rte_pdcp_rte_kvargs_get_with_value.load(self.lib)
        self.rte_kvargs_process = rte_pdcp_rte_kvargs_process.load(self.lib)
        self.rte_kvargs_process_opt = rte_pdcp_rte_kvargs_process_opt.load(self.lib)
        self.rte_kvargs_count = rte_pdcp_rte_kvargs_count.load(self.lib)
        self.rte_rcu_qsbr_get_memsize = rte_pdcp_rte_rcu_qsbr_get_memsize.load(self.lib)
        self.rte_rcu_qsbr_init = rte_pdcp_rte_rcu_qsbr_init.load(self.lib)
        self.rte_rcu_qsbr_thread_register = rte_pdcp_rte_rcu_qsbr_thread_register.load(self.lib)
        self.rte_rcu_qsbr_thread_unregister = rte_pdcp_rte_rcu_qsbr_thread_unregister.load(self.lib)
        self.rte_rcu_qsbr_thread_online = rte_pdcp_rte_rcu_qsbr_thread_online.load(self.lib)
        self.rte_rcu_qsbr_thread_offline = rte_pdcp_rte_rcu_qsbr_thread_offline.load(self.lib)
        self.rte_rcu_qsbr_lock = rte_pdcp_rte_rcu_qsbr_lock.load(self.lib)
        self.rte_rcu_qsbr_unlock = rte_pdcp_rte_rcu_qsbr_unlock.load(self.lib)
        self.rte_rcu_qsbr_start = rte_pdcp_rte_rcu_qsbr_start.load(self.lib)
        self.rte_rcu_qsbr_quiescent = rte_pdcp_rte_rcu_qsbr_quiescent.load(self.lib)
        self.rte_rcu_qsbr_check = rte_pdcp_rte_rcu_qsbr_check.load(self.lib)
        self.rte_rcu_qsbr_synchronize = rte_pdcp_rte_rcu_qsbr_synchronize.load(self.lib)
        self.rte_rcu_qsbr_dump = rte_pdcp_rte_rcu_qsbr_dump.load(self.lib)
        self.rte_rcu_qsbr_dq_create = rte_pdcp_rte_rcu_qsbr_dq_create.load(self.lib)
        self.rte_rcu_qsbr_dq_enqueue = rte_pdcp_rte_rcu_qsbr_dq_enqueue.load(self.lib)
        self.rte_rcu_qsbr_dq_reclaim = rte_pdcp_rte_rcu_qsbr_dq_reclaim.load(self.lib)
        self.rte_rcu_qsbr_dq_delete = rte_pdcp_rte_rcu_qsbr_dq_delete.load(self.lib)
        self.rte_cryptodev_trace_enqueue_burst = rte_pdcp_rte_cryptodev_trace_enqueue_burst.load(self.lib)
        self.rte_cryptodev_trace_dequeue_burst = rte_pdcp_rte_cryptodev_trace_dequeue_burst.load(self.lib)
        self.rte_cryptodev_trace_qp_depth_used = rte_pdcp_rte_cryptodev_trace_qp_depth_used.load(self.lib)
        self.rte_cryptodev_sym_capability_get = rte_pdcp_rte_cryptodev_sym_capability_get.load(self.lib)
        self.rte_cryptodev_asym_capability_get = rte_pdcp_rte_cryptodev_asym_capability_get.load(self.lib)
        self.rte_cryptodev_sym_capability_check_cipher = rte_pdcp_rte_cryptodev_sym_capability_check_cipher.load(self.lib)
        self.rte_cryptodev_sym_capability_check_auth = rte_pdcp_rte_cryptodev_sym_capability_check_auth.load(self.lib)
        self.rte_cryptodev_sym_capability_check_aead = rte_pdcp_rte_cryptodev_sym_capability_check_aead.load(self.lib)
        self.rte_cryptodev_asym_xform_capability_check_optype = rte_pdcp_rte_cryptodev_asym_xform_capability_check_optype.load(self.lib)
        self.rte_cryptodev_asym_xform_capability_check_modlen = rte_pdcp_rte_cryptodev_asym_xform_capability_check_modlen.load(self.lib)
        self.rte_cryptodev_asym_xform_capability_check_hash = rte_pdcp_rte_cryptodev_asym_xform_capability_check_hash.load(self.lib)
        self.rte_cryptodev_asym_xform_capability_check_opcap = rte_pdcp_rte_cryptodev_asym_xform_capability_check_opcap.load(self.lib)
        self.rte_cryptodev_get_cipher_algo_enum = rte_pdcp_rte_cryptodev_get_cipher_algo_enum.load(self.lib)
        self.rte_cryptodev_get_auth_algo_enum = rte_pdcp_rte_cryptodev_get_auth_algo_enum.load(self.lib)
        self.rte_cryptodev_get_aead_algo_enum = rte_pdcp_rte_cryptodev_get_aead_algo_enum.load(self.lib)
        self.rte_cryptodev_asym_get_xform_enum = rte_pdcp_rte_cryptodev_asym_get_xform_enum.load(self.lib)
        self.rte_cryptodev_get_cipher_algo_string = rte_pdcp_rte_cryptodev_get_cipher_algo_string.load(self.lib)
        self.rte_cryptodev_get_auth_algo_string = rte_pdcp_rte_cryptodev_get_auth_algo_string.load(self.lib)
        self.rte_cryptodev_get_aead_algo_string = rte_pdcp_rte_cryptodev_get_aead_algo_string.load(self.lib)
        self.rte_cryptodev_asym_get_xform_string = rte_pdcp_rte_cryptodev_asym_get_xform_string.load(self.lib)
        self.rte_cryptodev_get_feature_name = rte_pdcp_rte_cryptodev_get_feature_name.load(self.lib)
        self.rte_cryptodev_get_dev_id = rte_pdcp_rte_cryptodev_get_dev_id.load(self.lib)
        self.rte_cryptodev_name_get = rte_pdcp_rte_cryptodev_name_get.load(self.lib)
        self.rte_cryptodev_count = rte_pdcp_rte_cryptodev_count.load(self.lib)
        self.rte_cryptodev_device_count_by_driver = rte_pdcp_rte_cryptodev_device_count_by_driver.load(self.lib)
        self.rte_cryptodev_devices_get = rte_pdcp_rte_cryptodev_devices_get.load(self.lib)
        self.rte_cryptodev_socket_id = rte_pdcp_rte_cryptodev_socket_id.load(self.lib)
        self.rte_cryptodev_configure = rte_pdcp_rte_cryptodev_configure.load(self.lib)
        self.rte_cryptodev_start = rte_pdcp_rte_cryptodev_start.load(self.lib)
        self.rte_cryptodev_stop = rte_pdcp_rte_cryptodev_stop.load(self.lib)
        self.rte_cryptodev_close = rte_pdcp_rte_cryptodev_close.load(self.lib)
        self.rte_cryptodev_queue_pair_setup = rte_pdcp_rte_cryptodev_queue_pair_setup.load(self.lib)
        self.rte_cryptodev_queue_pair_reset = rte_pdcp_rte_cryptodev_queue_pair_reset.load(self.lib)
        self.rte_cryptodev_get_qp_status = rte_pdcp_rte_cryptodev_get_qp_status.load(self.lib)
        self.rte_cryptodev_queue_pair_count = rte_pdcp_rte_cryptodev_queue_pair_count.load(self.lib)
        self.rte_cryptodev_stats_get = rte_pdcp_rte_cryptodev_stats_get.load(self.lib)
        self.rte_cryptodev_stats_reset = rte_pdcp_rte_cryptodev_stats_reset.load(self.lib)
        self.rte_cryptodev_info_get = rte_pdcp_rte_cryptodev_info_get.load(self.lib)
        self.rte_cryptodev_callback_register = rte_pdcp_rte_cryptodev_callback_register.load(self.lib)
        self.rte_cryptodev_callback_unregister = rte_pdcp_rte_cryptodev_callback_unregister.load(self.lib)
        self.rte_cryptodev_queue_pair_event_error_query = rte_pdcp_rte_cryptodev_queue_pair_event_error_query.load(self.lib)
        self.rte_cryptodev_get_sec_ctx = rte_pdcp_rte_cryptodev_get_sec_ctx.load(self.lib)
        self.rte_cryptodev_sym_session_pool_create = rte_pdcp_rte_cryptodev_sym_session_pool_create.load(self.lib)
        self.rte_cryptodev_asym_session_pool_create = rte_pdcp_rte_cryptodev_asym_session_pool_create.load(self.lib)
        self.rte_cryptodev_sym_session_create = rte_pdcp_rte_cryptodev_sym_session_create.load(self.lib)
        self.rte_cryptodev_asym_session_create = rte_pdcp_rte_cryptodev_asym_session_create.load(self.lib)
        self.rte_cryptodev_sym_session_free = rte_pdcp_rte_cryptodev_sym_session_free.load(self.lib)
        self.rte_cryptodev_asym_session_free = rte_pdcp_rte_cryptodev_asym_session_free.load(self.lib)
        self.rte_cryptodev_asym_get_header_session_size = rte_pdcp_rte_cryptodev_asym_get_header_session_size.load(self.lib)
        self.rte_cryptodev_sym_get_private_session_size = rte_pdcp_rte_cryptodev_sym_get_private_session_size.load(self.lib)
        self.rte_cryptodev_asym_get_private_session_size = rte_pdcp_rte_cryptodev_asym_get_private_session_size.load(self.lib)
        self.rte_cryptodev_is_valid_dev = rte_pdcp_rte_cryptodev_is_valid_dev.load(self.lib)
        self.rte_cryptodev_driver_id_get = rte_pdcp_rte_cryptodev_driver_id_get.load(self.lib)
        self.rte_cryptodev_driver_name_get = rte_pdcp_rte_cryptodev_driver_name_get.load(self.lib)
        self.rte_cryptodev_sym_session_set_user_data = rte_pdcp_rte_cryptodev_sym_session_set_user_data.load(self.lib)
        self.rte_cryptodev_sym_session_opaque_data_get = rte_pdcp_rte_cryptodev_sym_session_opaque_data_get.load(self.lib)
        self.rte_cryptodev_sym_session_opaque_data_set = rte_pdcp_rte_cryptodev_sym_session_opaque_data_set.load(self.lib)
        self.rte_cryptodev_sym_session_get_user_data = rte_pdcp_rte_cryptodev_sym_session_get_user_data.load(self.lib)
        self.rte_cryptodev_asym_session_set_user_data = rte_pdcp_rte_cryptodev_asym_session_set_user_data.load(self.lib)
        self.rte_cryptodev_asym_session_get_user_data = rte_pdcp_rte_cryptodev_asym_session_get_user_data.load(self.lib)
        self.rte_cryptodev_sym_cpu_crypto_process = rte_pdcp_rte_cryptodev_sym_cpu_crypto_process.load(self.lib)
        self.rte_cryptodev_get_raw_dp_ctx_size = rte_pdcp_rte_cryptodev_get_raw_dp_ctx_size.load(self.lib)
        self.rte_cryptodev_session_event_mdata_set = rte_pdcp_rte_cryptodev_session_event_mdata_set.load(self.lib)
        self.rte_cryptodev_configure_raw_dp_ctx = rte_pdcp_rte_cryptodev_configure_raw_dp_ctx.load(self.lib)
        self.rte_cryptodev_raw_enqueue_burst = rte_pdcp_rte_cryptodev_raw_enqueue_burst.load(self.lib)
        self.rte_cryptodev_raw_enqueue = rte_pdcp_rte_cryptodev_raw_enqueue.load(self.lib)
        self.rte_cryptodev_raw_enqueue_done = rte_pdcp_rte_cryptodev_raw_enqueue_done.load(self.lib)
        self.rte_cryptodev_raw_dequeue_burst = rte_pdcp_rte_cryptodev_raw_dequeue_burst.load(self.lib)
        self.rte_cryptodev_raw_dequeue = rte_pdcp_rte_cryptodev_raw_dequeue.load(self.lib)
        self.rte_cryptodev_raw_dequeue_done = rte_pdcp_rte_cryptodev_raw_dequeue_done.load(self.lib)
        self.rte_cryptodev_add_enq_callback = rte_pdcp_rte_cryptodev_add_enq_callback.load(self.lib)
        self.rte_cryptodev_remove_enq_callback = rte_pdcp_rte_cryptodev_remove_enq_callback.load(self.lib)
        self.rte_cryptodev_add_deq_callback = rte_pdcp_rte_cryptodev_add_deq_callback.load(self.lib)
        self.rte_cryptodev_remove_deq_callback = rte_pdcp_rte_cryptodev_remove_deq_callback.load(self.lib)
        self.rte_cryptodev_dequeue_burst = rte_pdcp_rte_cryptodev_dequeue_burst.load(self.lib)
        self.rte_cryptodev_enqueue_burst = rte_pdcp_rte_cryptodev_enqueue_burst.load(self.lib)
        self.rte_cryptodev_qp_depth_used = rte_pdcp_rte_cryptodev_qp_depth_used.load(self.lib)
        self.rte_pdcp_en_from_cop = rte_pdcp_rte_pdcp_en_from_cop.load(self.lib)
        self.rte_pdcp_pkt_crypto_group = rte_pdcp_rte_pdcp_pkt_crypto_group.load(self.lib)

