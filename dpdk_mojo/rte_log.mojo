
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

alias __assert_fail = fn (UnsafePointer[Int8], UnsafePointer[Int8], ffi.c_int, UnsafePointer[Int8]) -> NoneType
alias __assert_perror_fail = fn (ffi.c_int, UnsafePointer[Int8], ffi.c_int, UnsafePointer[Int8]) -> NoneType
alias __assert = fn (UnsafePointer[Int8], UnsafePointer[Int8], ffi.c_int) -> NoneType
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
struct anonomous_record_1(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_1

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
alias size_t = ffi.c_ulong
alias va_list = __builtin_va_list
alias __gnuc_va_list = __builtin_va_list
alias anonomous_record_2 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_3(Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_2

alias __mbstate_t = anonomous_record_3

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
alias alloca = fn (ffi.c_ulong) -> OpaquePointer
alias time_t = __time_t
struct timespec(Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_nsec : ffi.c_long

alias pid_t = __pid_t
struct sched_param(Copyable & Movable):
	var sched_priority : Int32

alias __cpu_mask = ffi.c_ulong
struct anonomous_record_4(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_4

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
alias rte_openlog_stream = fn (UnsafePointer[FILE]) -> ffi.c_int
alias rte_log_get_stream = fn () -> UnsafePointer[FILE]
alias rte_log_set_global_level = fn (ffi.c_int) -> NoneType
alias rte_log_get_global_level = fn () -> ffi.c_int
alias rte_log_get_level = fn (ffi.c_int) -> ffi.c_int
alias rte_log_can_log = fn (ffi.c_int, ffi.c_int) -> Bool
alias rte_log_set_level_pattern = fn (UnsafePointer[Int8], ffi.c_int) -> ffi.c_int
alias rte_log_set_level_regexp = fn (UnsafePointer[Int8], ffi.c_int) -> ffi.c_int
alias rte_log_set_level = fn (ffi.c_int, ffi.c_int) -> ffi.c_int
alias rte_log_cur_msg_loglevel = fn () -> ffi.c_int
alias rte_log_cur_msg_logtype = fn () -> ffi.c_int
alias rte_log_register = fn (UnsafePointer[Int8]) -> ffi.c_int
alias rte_log_register_type_and_pick_level = fn (UnsafePointer[Int8], ffi.c_int) -> ffi.c_int
alias rte_log_list_types = fn (UnsafePointer[FILE], UnsafePointer[Int8]) -> NoneType
alias rte_log_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_log = fn (ffi.c_int, ffi.c_int, UnsafePointer[Int8]) -> ffi.c_int
alias rte_vlog = fn (ffi.c_int, ffi.c_int, UnsafePointer[Int8], va_list) -> ffi.c_int


alias rte_log_remove = ExternalFunction['remove', remove]
alias rte_log_rename = ExternalFunction['rename', rename]
alias rte_log_renameat = ExternalFunction['renameat', renameat]
alias rte_log_fclose = ExternalFunction['fclose', fclose]
alias rte_log_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias rte_log_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias rte_log_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias rte_log_tempnam = ExternalFunction['tempnam', tempnam]
alias rte_log_fflush = ExternalFunction['fflush', fflush]
alias rte_log_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias rte_log_fopen = ExternalFunction['fopen', fopen]
alias rte_log_freopen = ExternalFunction['freopen', freopen]
alias rte_log_fdopen = ExternalFunction['fdopen', fdopen]
alias rte_log_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias rte_log_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias rte_log_setbuf = ExternalFunction['setbuf', setbuf]
alias rte_log_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias rte_log_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias rte_log_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias rte_log_fprintf = ExternalFunction['fprintf', fprintf]
alias rte_log_printf = ExternalFunction['printf', printf]
alias rte_log_sprintf = ExternalFunction['sprintf', sprintf]
alias rte_log_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias rte_log_vprintf = ExternalFunction['vprintf', vprintf]
alias rte_log_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias rte_log_snprintf = ExternalFunction['snprintf', snprintf]
alias rte_log_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias rte_log_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias rte_log_dprintf = ExternalFunction['dprintf', dprintf]
alias rte_log_fscanf = ExternalFunction['fscanf', fscanf]
alias rte_log_scanf = ExternalFunction['scanf', scanf]
alias rte_log_sscanf = ExternalFunction['sscanf', sscanf]
alias rte_log_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias rte_log_vscanf = ExternalFunction['vscanf', vscanf]
alias rte_log_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias rte_log_fgetc = ExternalFunction['fgetc', fgetc]
alias rte_log_getc = ExternalFunction['getc', getc]
alias rte_log_getchar = ExternalFunction['getchar', getchar]
alias rte_log_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias rte_log_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias rte_log_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias rte_log_fputc = ExternalFunction['fputc', fputc]
alias rte_log_putc = ExternalFunction['putc', putc]
alias rte_log_putchar = ExternalFunction['putchar', putchar]
alias rte_log_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias rte_log_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias rte_log_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias rte_log_getw = ExternalFunction['getw', getw]
alias rte_log_putw = ExternalFunction['putw', putw]
alias rte_log_fgets = ExternalFunction['fgets', fgets]
alias rte_log_getdelim = ExternalFunction['getdelim', getdelim]
alias rte_log_getline = ExternalFunction['getline', getline]
alias rte_log_fputs = ExternalFunction['fputs', fputs]
alias rte_log_puts = ExternalFunction['puts', puts]
alias rte_log_ungetc = ExternalFunction['ungetc', ungetc]
alias rte_log_fread = ExternalFunction['fread', fread]
alias rte_log_fwrite = ExternalFunction['fwrite', fwrite]
alias rte_log_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias rte_log_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias rte_log_fseek = ExternalFunction['fseek', fseek]
alias rte_log_ftell = ExternalFunction['ftell', ftell]
alias rte_log_rewind = ExternalFunction['rewind', rewind]
alias rte_log_fseeko = ExternalFunction['fseeko', fseeko]
alias rte_log_ftello = ExternalFunction['ftello', ftello]
alias rte_log_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias rte_log_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias rte_log_clearerr = ExternalFunction['clearerr', clearerr]
alias rte_log_feof = ExternalFunction['feof', feof]
alias rte_log_ferror = ExternalFunction['ferror', ferror]
alias rte_log_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias rte_log_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias rte_log_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias rte_log_perror = ExternalFunction['perror', perror]
alias rte_log_fileno = ExternalFunction['fileno', fileno]
alias rte_log_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias rte_log_pclose = ExternalFunction['pclose', pclose]
alias rte_log_popen = ExternalFunction['popen', popen]
alias rte_log_ctermid = ExternalFunction['ctermid', ctermid]
alias rte_log_flockfile = ExternalFunction['flockfile', flockfile]
alias rte_log_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias rte_log_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias rte_log_alloca = ExternalFunction['alloca', alloca]
alias rte_log_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_log_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_log_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_log_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_log_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_log_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_log_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_log_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_log_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_log_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_log_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_log_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_log_rte_openlog_stream = ExternalFunction['rte_openlog_stream', rte_openlog_stream]
alias rte_log_rte_log_get_stream = ExternalFunction['rte_log_get_stream', rte_log_get_stream]
alias rte_log_rte_log_set_global_level = ExternalFunction['rte_log_set_global_level', rte_log_set_global_level]
alias rte_log_rte_log_get_global_level = ExternalFunction['rte_log_get_global_level', rte_log_get_global_level]
alias rte_log_rte_log_get_level = ExternalFunction['rte_log_get_level', rte_log_get_level]
alias rte_log_rte_log_can_log = ExternalFunction['rte_log_can_log', rte_log_can_log]
alias rte_log_rte_log_set_level_pattern = ExternalFunction['rte_log_set_level_pattern', rte_log_set_level_pattern]
alias rte_log_rte_log_set_level_regexp = ExternalFunction['rte_log_set_level_regexp', rte_log_set_level_regexp]
alias rte_log_rte_log_set_level = ExternalFunction['rte_log_set_level', rte_log_set_level]
alias rte_log_rte_log_cur_msg_loglevel = ExternalFunction['rte_log_cur_msg_loglevel', rte_log_cur_msg_loglevel]
alias rte_log_rte_log_cur_msg_logtype = ExternalFunction['rte_log_cur_msg_logtype', rte_log_cur_msg_logtype]
alias rte_log_rte_log_register = ExternalFunction['rte_log_register', rte_log_register]
alias rte_log_rte_log_register_type_and_pick_level = ExternalFunction['rte_log_register_type_and_pick_level', rte_log_register_type_and_pick_level]
alias rte_log_rte_log_list_types = ExternalFunction['rte_log_list_types', rte_log_list_types]
alias rte_log_rte_log_dump = ExternalFunction['rte_log_dump', rte_log_dump]
alias rte_log_rte_log = ExternalFunction['rte_log', rte_log]
alias rte_log_rte_vlog = ExternalFunction['rte_vlog', rte_vlog]

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
struct rte_log(Copyable, Movable):
    var lib: DLHandle
    
    var remove: rte_log_remove.type
    var rename: rte_log_rename.type
    var renameat: rte_log_renameat.type
    var fclose: rte_log_fclose.type
    var tmpfile: rte_log_tmpfile.type
    var tmpnam: rte_log_tmpnam.type
    var tmpnam_r: rte_log_tmpnam_r.type
    var tempnam: rte_log_tempnam.type
    var fflush: rte_log_fflush.type
    var fflush_unlocked: rte_log_fflush_unlocked.type
    var fopen: rte_log_fopen.type
    var freopen: rte_log_freopen.type
    var fdopen: rte_log_fdopen.type
    var fmemopen: rte_log_fmemopen.type
    var open_memstream: rte_log_open_memstream.type
    var setbuf: rte_log_setbuf.type
    var setvbuf: rte_log_setvbuf.type
    var setbuffer: rte_log_setbuffer.type
    var setlinebuf: rte_log_setlinebuf.type
    var fprintf: rte_log_fprintf.type
    var printf: rte_log_printf.type
    var sprintf: rte_log_sprintf.type
    var vfprintf: rte_log_vfprintf.type
    var vprintf: rte_log_vprintf.type
    var vsprintf: rte_log_vsprintf.type
    var snprintf: rte_log_snprintf.type
    var vsnprintf: rte_log_vsnprintf.type
    var vdprintf: rte_log_vdprintf.type
    var dprintf: rte_log_dprintf.type
    var fscanf: rte_log_fscanf.type
    var scanf: rte_log_scanf.type
    var sscanf: rte_log_sscanf.type
    var vfscanf: rte_log_vfscanf.type
    var vscanf: rte_log_vscanf.type
    var vsscanf: rte_log_vsscanf.type
    var fgetc: rte_log_fgetc.type
    var getc: rte_log_getc.type
    var getchar: rte_log_getchar.type
    var getc_unlocked: rte_log_getc_unlocked.type
    var getchar_unlocked: rte_log_getchar_unlocked.type
    var fgetc_unlocked: rte_log_fgetc_unlocked.type
    var fputc: rte_log_fputc.type
    var putc: rte_log_putc.type
    var putchar: rte_log_putchar.type
    var fputc_unlocked: rte_log_fputc_unlocked.type
    var putc_unlocked: rte_log_putc_unlocked.type
    var putchar_unlocked: rte_log_putchar_unlocked.type
    var getw: rte_log_getw.type
    var putw: rte_log_putw.type
    var fgets: rte_log_fgets.type
    var getdelim: rte_log_getdelim.type
    var getline: rte_log_getline.type
    var fputs: rte_log_fputs.type
    var puts: rte_log_puts.type
    var ungetc: rte_log_ungetc.type
    var fread: rte_log_fread.type
    var fwrite: rte_log_fwrite.type
    var fread_unlocked: rte_log_fread_unlocked.type
    var fwrite_unlocked: rte_log_fwrite_unlocked.type
    var fseek: rte_log_fseek.type
    var ftell: rte_log_ftell.type
    var rewind: rte_log_rewind.type
    var fseeko: rte_log_fseeko.type
    var ftello: rte_log_ftello.type
    var fgetpos: rte_log_fgetpos.type
    var fsetpos: rte_log_fsetpos.type
    var clearerr: rte_log_clearerr.type
    var feof: rte_log_feof.type
    var ferror: rte_log_ferror.type
    var clearerr_unlocked: rte_log_clearerr_unlocked.type
    var feof_unlocked: rte_log_feof_unlocked.type
    var ferror_unlocked: rte_log_ferror_unlocked.type
    var perror: rte_log_perror.type
    var fileno: rte_log_fileno.type
    var fileno_unlocked: rte_log_fileno_unlocked.type
    var pclose: rte_log_pclose.type
    var popen: rte_log_popen.type
    var ctermid: rte_log_ctermid.type
    var flockfile: rte_log_flockfile.type
    var ftrylockfile: rte_log_ftrylockfile.type
    var funlockfile: rte_log_funlockfile.type
    var alloca: rte_log_alloca.type
    var sched_setparam: rte_log_sched_setparam.type
    var sched_getparam: rte_log_sched_getparam.type
    var sched_setscheduler: rte_log_sched_setscheduler.type
    var sched_getscheduler: rte_log_sched_getscheduler.type
    var sched_yield: rte_log_sched_yield.type
    var sched_get_priority_max: rte_log_sched_get_priority_max.type
    var sched_get_priority_min: rte_log_sched_get_priority_min.type
    var sched_rr_get_interval: rte_log_sched_rr_get_interval.type
    var rte_is_aligned: rte_log_rte_is_aligned.type
    var rte_str_to_size: rte_log_rte_str_to_size.type
    var rte_size_to_str: rte_log_rte_size_to_str.type
    var rte_exit: rte_log_rte_exit.type
    var rte_openlog_stream: rte_log_rte_openlog_stream.type
    var rte_log_get_stream: rte_log_rte_log_get_stream.type
    var rte_log_set_global_level: rte_log_rte_log_set_global_level.type
    var rte_log_get_global_level: rte_log_rte_log_get_global_level.type
    var rte_log_get_level: rte_log_rte_log_get_level.type
    var rte_log_can_log: rte_log_rte_log_can_log.type
    var rte_log_set_level_pattern: rte_log_rte_log_set_level_pattern.type
    var rte_log_set_level_regexp: rte_log_rte_log_set_level_regexp.type
    var rte_log_set_level: rte_log_rte_log_set_level.type
    var rte_log_cur_msg_loglevel: rte_log_rte_log_cur_msg_loglevel.type
    var rte_log_cur_msg_logtype: rte_log_rte_log_cur_msg_logtype.type
    var rte_log_register: rte_log_rte_log_register.type
    var rte_log_register_type_and_pick_level: rte_log_rte_log_register_type_and_pick_level.type
    var rte_log_list_types: rte_log_rte_log_list_types.type
    var rte_log_dump: rte_log_rte_log_dump.type
    var rte_log: rte_log_rte_log.type
    var rte_vlog: rte_log_rte_vlog.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_log.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_log from", 'librte_log.so', ":\n", e)
            )

    
        self.remove = rte_log_remove.load(self.lib)
        self.rename = rte_log_rename.load(self.lib)
        self.renameat = rte_log_renameat.load(self.lib)
        self.fclose = rte_log_fclose.load(self.lib)
        self.tmpfile = rte_log_tmpfile.load(self.lib)
        self.tmpnam = rte_log_tmpnam.load(self.lib)
        self.tmpnam_r = rte_log_tmpnam_r.load(self.lib)
        self.tempnam = rte_log_tempnam.load(self.lib)
        self.fflush = rte_log_fflush.load(self.lib)
        self.fflush_unlocked = rte_log_fflush_unlocked.load(self.lib)
        self.fopen = rte_log_fopen.load(self.lib)
        self.freopen = rte_log_freopen.load(self.lib)
        self.fdopen = rte_log_fdopen.load(self.lib)
        self.fmemopen = rte_log_fmemopen.load(self.lib)
        self.open_memstream = rte_log_open_memstream.load(self.lib)
        self.setbuf = rte_log_setbuf.load(self.lib)
        self.setvbuf = rte_log_setvbuf.load(self.lib)
        self.setbuffer = rte_log_setbuffer.load(self.lib)
        self.setlinebuf = rte_log_setlinebuf.load(self.lib)
        self.fprintf = rte_log_fprintf.load(self.lib)
        self.printf = rte_log_printf.load(self.lib)
        self.sprintf = rte_log_sprintf.load(self.lib)
        self.vfprintf = rte_log_vfprintf.load(self.lib)
        self.vprintf = rte_log_vprintf.load(self.lib)
        self.vsprintf = rte_log_vsprintf.load(self.lib)
        self.snprintf = rte_log_snprintf.load(self.lib)
        self.vsnprintf = rte_log_vsnprintf.load(self.lib)
        self.vdprintf = rte_log_vdprintf.load(self.lib)
        self.dprintf = rte_log_dprintf.load(self.lib)
        self.fscanf = rte_log_fscanf.load(self.lib)
        self.scanf = rte_log_scanf.load(self.lib)
        self.sscanf = rte_log_sscanf.load(self.lib)
        self.vfscanf = rte_log_vfscanf.load(self.lib)
        self.vscanf = rte_log_vscanf.load(self.lib)
        self.vsscanf = rte_log_vsscanf.load(self.lib)
        self.fgetc = rte_log_fgetc.load(self.lib)
        self.getc = rte_log_getc.load(self.lib)
        self.getchar = rte_log_getchar.load(self.lib)
        self.getc_unlocked = rte_log_getc_unlocked.load(self.lib)
        self.getchar_unlocked = rte_log_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = rte_log_fgetc_unlocked.load(self.lib)
        self.fputc = rte_log_fputc.load(self.lib)
        self.putc = rte_log_putc.load(self.lib)
        self.putchar = rte_log_putchar.load(self.lib)
        self.fputc_unlocked = rte_log_fputc_unlocked.load(self.lib)
        self.putc_unlocked = rte_log_putc_unlocked.load(self.lib)
        self.putchar_unlocked = rte_log_putchar_unlocked.load(self.lib)
        self.getw = rte_log_getw.load(self.lib)
        self.putw = rte_log_putw.load(self.lib)
        self.fgets = rte_log_fgets.load(self.lib)
        self.getdelim = rte_log_getdelim.load(self.lib)
        self.getline = rte_log_getline.load(self.lib)
        self.fputs = rte_log_fputs.load(self.lib)
        self.puts = rte_log_puts.load(self.lib)
        self.ungetc = rte_log_ungetc.load(self.lib)
        self.fread = rte_log_fread.load(self.lib)
        self.fwrite = rte_log_fwrite.load(self.lib)
        self.fread_unlocked = rte_log_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = rte_log_fwrite_unlocked.load(self.lib)
        self.fseek = rte_log_fseek.load(self.lib)
        self.ftell = rte_log_ftell.load(self.lib)
        self.rewind = rte_log_rewind.load(self.lib)
        self.fseeko = rte_log_fseeko.load(self.lib)
        self.ftello = rte_log_ftello.load(self.lib)
        self.fgetpos = rte_log_fgetpos.load(self.lib)
        self.fsetpos = rte_log_fsetpos.load(self.lib)
        self.clearerr = rte_log_clearerr.load(self.lib)
        self.feof = rte_log_feof.load(self.lib)
        self.ferror = rte_log_ferror.load(self.lib)
        self.clearerr_unlocked = rte_log_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = rte_log_feof_unlocked.load(self.lib)
        self.ferror_unlocked = rte_log_ferror_unlocked.load(self.lib)
        self.perror = rte_log_perror.load(self.lib)
        self.fileno = rte_log_fileno.load(self.lib)
        self.fileno_unlocked = rte_log_fileno_unlocked.load(self.lib)
        self.pclose = rte_log_pclose.load(self.lib)
        self.popen = rte_log_popen.load(self.lib)
        self.ctermid = rte_log_ctermid.load(self.lib)
        self.flockfile = rte_log_flockfile.load(self.lib)
        self.ftrylockfile = rte_log_ftrylockfile.load(self.lib)
        self.funlockfile = rte_log_funlockfile.load(self.lib)
        self.alloca = rte_log_alloca.load(self.lib)
        self.sched_setparam = rte_log_sched_setparam.load(self.lib)
        self.sched_getparam = rte_log_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_log_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_log_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_log_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_log_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_log_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_log_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_log_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_log_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_log_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_log_rte_exit.load(self.lib)
        self.rte_openlog_stream = rte_log_rte_openlog_stream.load(self.lib)
        self.rte_log_get_stream = rte_log_rte_log_get_stream.load(self.lib)
        self.rte_log_set_global_level = rte_log_rte_log_set_global_level.load(self.lib)
        self.rte_log_get_global_level = rte_log_rte_log_get_global_level.load(self.lib)
        self.rte_log_get_level = rte_log_rte_log_get_level.load(self.lib)
        self.rte_log_can_log = rte_log_rte_log_can_log.load(self.lib)
        self.rte_log_set_level_pattern = rte_log_rte_log_set_level_pattern.load(self.lib)
        self.rte_log_set_level_regexp = rte_log_rte_log_set_level_regexp.load(self.lib)
        self.rte_log_set_level = rte_log_rte_log_set_level.load(self.lib)
        self.rte_log_cur_msg_loglevel = rte_log_rte_log_cur_msg_loglevel.load(self.lib)
        self.rte_log_cur_msg_logtype = rte_log_rte_log_cur_msg_logtype.load(self.lib)
        self.rte_log_register = rte_log_rte_log_register.load(self.lib)
        self.rte_log_register_type_and_pick_level = rte_log_rte_log_register_type_and_pick_level.load(self.lib)
        self.rte_log_list_types = rte_log_rte_log_list_types.load(self.lib)
        self.rte_log_dump = rte_log_rte_log_dump.load(self.lib)
        self.rte_log = rte_log_rte_log.load(self.lib)
        self.rte_vlog = rte_log_rte_vlog.load(self.lib)

