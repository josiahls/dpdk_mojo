
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
struct anonomous_record_5(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_5

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
alias va_list = __builtin_va_list
alias __gnuc_va_list = __builtin_va_list
alias anonomous_record_6 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_7(Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_6

alias __mbstate_t = anonomous_record_7

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
struct anonomous_record_8(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_8

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
alias rte_dump_stack = fn () -> NoneType
alias __rte_panic = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> NoneType
alias rte_memory_order = ffi.c_int
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The memory order is an integer type in GCC built-ins,
# Node: TextComment()
#  not an enumerated type like in C11.

alias rte_bit_relaxed_get32 = fn (ffi.c_int, UnsafePointer[ffi.c_int]) -> ffi.c_int
alias rte_bit_relaxed_set32 = fn (ffi.c_int, UnsafePointer[ffi.c_int]) -> NoneType
alias rte_bit_relaxed_clear32 = fn (ffi.c_int, UnsafePointer[ffi.c_int]) -> NoneType
alias rte_bit_relaxed_test_and_set32 = fn (ffi.c_int, UnsafePointer[ffi.c_int]) -> ffi.c_int
alias rte_bit_relaxed_test_and_clear32 = fn (ffi.c_int, UnsafePointer[ffi.c_int]) -> ffi.c_int
alias rte_bit_relaxed_get64 = fn (ffi.c_int, UnsafePointer[ffi.c_long_long]) -> ffi.c_ulong_long
alias rte_bit_relaxed_set64 = fn (ffi.c_int, UnsafePointer[ffi.c_long_long]) -> NoneType
alias rte_bit_relaxed_clear64 = fn (ffi.c_int, UnsafePointer[ffi.c_long_long]) -> NoneType
alias rte_bit_relaxed_test_and_set64 = fn (ffi.c_int, UnsafePointer[ffi.c_long_long]) -> ffi.c_ulong_long
alias rte_bit_relaxed_test_and_clear64 = fn (ffi.c_int, UnsafePointer[ffi.c_long_long]) -> ffi.c_ulong_long
alias rte_clz32 = fn (ffi.c_int) -> ffi.c_int
alias __builtin_clz = fn (ffi.c_int) -> ffi.c_int
alias rte_clz64 = fn (ffi.c_ulong_long) -> ffi.c_int
alias __builtin_clzll = fn (ffi.c_ulong_long) -> ffi.c_int
alias rte_ctz32 = fn (ffi.c_int) -> ffi.c_int
alias __builtin_ctz = fn (ffi.c_int) -> ffi.c_int
alias rte_ctz64 = fn (ffi.c_ulong_long) -> ffi.c_int
alias __builtin_ctzll = fn (ffi.c_ulong_long) -> ffi.c_int
alias rte_popcount32 = fn (ffi.c_int) -> ffi.c_int
alias __builtin_popcount = fn (ffi.c_int) -> ffi.c_int
alias rte_popcount64 = fn (ffi.c_ulong_long) -> ffi.c_int
alias __builtin_popcountll = fn (ffi.c_ulong_long) -> ffi.c_int
alias rte_ffs32 = fn (ffi.c_int) -> ffi.c_int
alias __builtin_ffs = fn (ffi.c_int) -> ffi.c_int
alias rte_ffs64 = fn (ffi.c_ulong_long) -> ffi.c_int
alias __builtin_ffsll = fn (ffi.c_long_long) -> ffi.c_int
alias rte_combine32ms1b = fn (ffi.c_int) -> ffi.c_int
alias rte_combine64ms1b = fn (ffi.c_ulong_long) -> ffi.c_ulong_long
alias rte_bsf32 = fn (ffi.c_int) -> ffi.c_int
alias rte_bsf32_safe = fn (ffi.c_int, UnsafePointer[ffi.c_int]) -> ffi.c_int
alias rte_bsf64 = fn (ffi.c_ulong_long) -> ffi.c_int
alias rte_bsf64_safe = fn (ffi.c_ulong_long, UnsafePointer[ffi.c_int]) -> ffi.c_int
alias rte_fls_u32 = fn (ffi.c_int) -> ffi.c_int
alias rte_fls_u64 = fn (ffi.c_ulong_long) -> ffi.c_int
alias rte_is_power_of_2 = fn (ffi.c_int) -> ffi.c_int
alias rte_align32pow2 = fn (ffi.c_int) -> ffi.c_int
alias rte_align32prevpow2 = fn (ffi.c_int) -> ffi.c_int
alias rte_align64pow2 = fn (ffi.c_ulong_long) -> ffi.c_ulong_long
alias rte_align64prevpow2 = fn (ffi.c_ulong_long) -> ffi.c_ulong_long
alias rte_log2_u32 = fn (ffi.c_int) -> ffi.c_int
alias rte_log2_u64 = fn (ffi.c_ulong_long) -> ffi.c_int
struct rte_argparse_value_required(Copyable & Movable):

	alias RTE_ARGPARSE_VALUE_NONE = 0

	alias RTE_ARGPARSE_VALUE_REQUIRED = 1

	alias RTE_ARGPARSE_VALUE_OPTIONAL = 2

struct rte_argparse_value_type(Copyable & Movable):

	alias RTE_ARGPARSE_VALUE_TYPE_NONE = 0

	alias RTE_ARGPARSE_VALUE_TYPE_INT = 1

	alias RTE_ARGPARSE_VALUE_TYPE_U8 = 2

	alias RTE_ARGPARSE_VALUE_TYPE_U16 = 3

	alias RTE_ARGPARSE_VALUE_TYPE_U32 = 4

	alias RTE_ARGPARSE_VALUE_TYPE_U64 = 5

	alias RTE_ARGPARSE_VALUE_TYPE_STR = 6

	alias RTE_ARGPARSE_VALUE_TYPE_BOOL = 7

struct rte_argparse_arg_flags(Copyable & Movable):

	alias RTE_ARGPARSE_FLAG_SUPPORT_MULTI = 0

struct rte_argparse_arg(Copyable & Movable):

	var name_long : UnsafePointer[Int8]

	var name_short : UnsafePointer[Int8]

	var help : UnsafePointer[Int8]

	var val_saver : OpaquePointer

	var val_set : OpaquePointer

	var value_required : rte_argparse_value_required

	var value_type : rte_argparse_value_type

	var flags : UInt32

alias rte_arg_parser_t = fn(ffi.c_ulong, read UnsafePointer[Int8], OpaquePointer) -> Int32
struct rte_argparse(Copyable & Movable):

	var prog_name : UnsafePointer[Int8]

	var usage : UnsafePointer[Int8]

	var descriptor : UnsafePointer[Int8]

	var epilog : UnsafePointer[Int8]

	var exit_on_error : Bool

	var callback : fn(ffi.c_ulong, read UnsafePointer[Int8], OpaquePointer) -> Int32

	var opaque : OpaquePointer

	var reserved : InlineArray[OpaquePointer, 16]

	var args : UnsafePointer[rte_argparse_arg] # Failed to parse array size

alias rte_argparse_parse = fn (UnsafePointer[rte_argparse], ffi.c_int, UnsafePointer[UnsafePointer[Int8]]) -> ffi.c_int
alias rte_argparse_parse_type = fn (UnsafePointer[Int8], rte_argparse_value_type, OpaquePointer) -> ffi.c_int


alias rte_argparse_remove = ExternalFunction['remove', remove]
alias rte_argparse_rename = ExternalFunction['rename', rename]
alias rte_argparse_renameat = ExternalFunction['renameat', renameat]
alias rte_argparse_fclose = ExternalFunction['fclose', fclose]
alias rte_argparse_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias rte_argparse_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias rte_argparse_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias rte_argparse_tempnam = ExternalFunction['tempnam', tempnam]
alias rte_argparse_fflush = ExternalFunction['fflush', fflush]
alias rte_argparse_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias rte_argparse_fopen = ExternalFunction['fopen', fopen]
alias rte_argparse_freopen = ExternalFunction['freopen', freopen]
alias rte_argparse_fdopen = ExternalFunction['fdopen', fdopen]
alias rte_argparse_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias rte_argparse_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias rte_argparse_setbuf = ExternalFunction['setbuf', setbuf]
alias rte_argparse_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias rte_argparse_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias rte_argparse_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias rte_argparse_fprintf = ExternalFunction['fprintf', fprintf]
alias rte_argparse_printf = ExternalFunction['printf', printf]
alias rte_argparse_sprintf = ExternalFunction['sprintf', sprintf]
alias rte_argparse_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias rte_argparse_vprintf = ExternalFunction['vprintf', vprintf]
alias rte_argparse_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias rte_argparse_snprintf = ExternalFunction['snprintf', snprintf]
alias rte_argparse_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias rte_argparse_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias rte_argparse_dprintf = ExternalFunction['dprintf', dprintf]
alias rte_argparse_fscanf = ExternalFunction['fscanf', fscanf]
alias rte_argparse_scanf = ExternalFunction['scanf', scanf]
alias rte_argparse_sscanf = ExternalFunction['sscanf', sscanf]
alias rte_argparse_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias rte_argparse_vscanf = ExternalFunction['vscanf', vscanf]
alias rte_argparse_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias rte_argparse_fgetc = ExternalFunction['fgetc', fgetc]
alias rte_argparse_getc = ExternalFunction['getc', getc]
alias rte_argparse_getchar = ExternalFunction['getchar', getchar]
alias rte_argparse_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias rte_argparse_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias rte_argparse_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias rte_argparse_fputc = ExternalFunction['fputc', fputc]
alias rte_argparse_putc = ExternalFunction['putc', putc]
alias rte_argparse_putchar = ExternalFunction['putchar', putchar]
alias rte_argparse_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias rte_argparse_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias rte_argparse_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias rte_argparse_getw = ExternalFunction['getw', getw]
alias rte_argparse_putw = ExternalFunction['putw', putw]
alias rte_argparse_fgets = ExternalFunction['fgets', fgets]
alias rte_argparse_getdelim = ExternalFunction['getdelim', getdelim]
alias rte_argparse_getline = ExternalFunction['getline', getline]
alias rte_argparse_fputs = ExternalFunction['fputs', fputs]
alias rte_argparse_puts = ExternalFunction['puts', puts]
alias rte_argparse_ungetc = ExternalFunction['ungetc', ungetc]
alias rte_argparse_fread = ExternalFunction['fread', fread]
alias rte_argparse_fwrite = ExternalFunction['fwrite', fwrite]
alias rte_argparse_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias rte_argparse_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias rte_argparse_fseek = ExternalFunction['fseek', fseek]
alias rte_argparse_ftell = ExternalFunction['ftell', ftell]
alias rte_argparse_rewind = ExternalFunction['rewind', rewind]
alias rte_argparse_fseeko = ExternalFunction['fseeko', fseeko]
alias rte_argparse_ftello = ExternalFunction['ftello', ftello]
alias rte_argparse_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias rte_argparse_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias rte_argparse_clearerr = ExternalFunction['clearerr', clearerr]
alias rte_argparse_feof = ExternalFunction['feof', feof]
alias rte_argparse_ferror = ExternalFunction['ferror', ferror]
alias rte_argparse_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias rte_argparse_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias rte_argparse_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias rte_argparse_perror = ExternalFunction['perror', perror]
alias rte_argparse_fileno = ExternalFunction['fileno', fileno]
alias rte_argparse_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias rte_argparse_pclose = ExternalFunction['pclose', pclose]
alias rte_argparse_popen = ExternalFunction['popen', popen]
alias rte_argparse_ctermid = ExternalFunction['ctermid', ctermid]
alias rte_argparse_flockfile = ExternalFunction['flockfile', flockfile]
alias rte_argparse_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias rte_argparse_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias rte_argparse_alloca = ExternalFunction['alloca', alloca]
alias rte_argparse_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_argparse_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_argparse_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_argparse_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_argparse_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_argparse_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_argparse_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_argparse_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_argparse_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_argparse_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_argparse_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_argparse_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_argparse_rte_openlog_stream = ExternalFunction['rte_openlog_stream', rte_openlog_stream]
alias rte_argparse_rte_log_get_stream = ExternalFunction['rte_log_get_stream', rte_log_get_stream]
alias rte_argparse_rte_log_set_global_level = ExternalFunction['rte_log_set_global_level', rte_log_set_global_level]
alias rte_argparse_rte_log_get_global_level = ExternalFunction['rte_log_get_global_level', rte_log_get_global_level]
alias rte_argparse_rte_log_get_level = ExternalFunction['rte_log_get_level', rte_log_get_level]
alias rte_argparse_rte_log_can_log = ExternalFunction['rte_log_can_log', rte_log_can_log]
alias rte_argparse_rte_log_set_level_pattern = ExternalFunction['rte_log_set_level_pattern', rte_log_set_level_pattern]
alias rte_argparse_rte_log_set_level_regexp = ExternalFunction['rte_log_set_level_regexp', rte_log_set_level_regexp]
alias rte_argparse_rte_log_set_level = ExternalFunction['rte_log_set_level', rte_log_set_level]
alias rte_argparse_rte_log_cur_msg_loglevel = ExternalFunction['rte_log_cur_msg_loglevel', rte_log_cur_msg_loglevel]
alias rte_argparse_rte_log_cur_msg_logtype = ExternalFunction['rte_log_cur_msg_logtype', rte_log_cur_msg_logtype]
alias rte_argparse_rte_log_register = ExternalFunction['rte_log_register', rte_log_register]
alias rte_argparse_rte_log_register_type_and_pick_level = ExternalFunction['rte_log_register_type_and_pick_level', rte_log_register_type_and_pick_level]
alias rte_argparse_rte_log_list_types = ExternalFunction['rte_log_list_types', rte_log_list_types]
alias rte_argparse_rte_log_dump = ExternalFunction['rte_log_dump', rte_log_dump]
alias rte_argparse_rte_log = ExternalFunction['rte_log', rte_log]
alias rte_argparse_rte_vlog = ExternalFunction['rte_vlog', rte_vlog]
alias rte_argparse_rte_dump_stack = ExternalFunction['rte_dump_stack', rte_dump_stack]
alias rte_argparse_rte_bit_relaxed_get32 = ExternalFunction['rte_bit_relaxed_get32', rte_bit_relaxed_get32]
alias rte_argparse_rte_bit_relaxed_set32 = ExternalFunction['rte_bit_relaxed_set32', rte_bit_relaxed_set32]
alias rte_argparse_rte_bit_relaxed_clear32 = ExternalFunction['rte_bit_relaxed_clear32', rte_bit_relaxed_clear32]
alias rte_argparse_rte_bit_relaxed_test_and_set32 = ExternalFunction['rte_bit_relaxed_test_and_set32', rte_bit_relaxed_test_and_set32]
alias rte_argparse_rte_bit_relaxed_test_and_clear32 = ExternalFunction['rte_bit_relaxed_test_and_clear32', rte_bit_relaxed_test_and_clear32]
alias rte_argparse_rte_bit_relaxed_get64 = ExternalFunction['rte_bit_relaxed_get64', rte_bit_relaxed_get64]
alias rte_argparse_rte_bit_relaxed_set64 = ExternalFunction['rte_bit_relaxed_set64', rte_bit_relaxed_set64]
alias rte_argparse_rte_bit_relaxed_clear64 = ExternalFunction['rte_bit_relaxed_clear64', rte_bit_relaxed_clear64]
alias rte_argparse_rte_bit_relaxed_test_and_set64 = ExternalFunction['rte_bit_relaxed_test_and_set64', rte_bit_relaxed_test_and_set64]
alias rte_argparse_rte_bit_relaxed_test_and_clear64 = ExternalFunction['rte_bit_relaxed_test_and_clear64', rte_bit_relaxed_test_and_clear64]
alias rte_argparse_rte_clz32 = ExternalFunction['rte_clz32', rte_clz32]
alias rte_argparse_rte_clz64 = ExternalFunction['rte_clz64', rte_clz64]
alias rte_argparse_rte_ctz32 = ExternalFunction['rte_ctz32', rte_ctz32]
alias rte_argparse_rte_ctz64 = ExternalFunction['rte_ctz64', rte_ctz64]
alias rte_argparse_rte_popcount32 = ExternalFunction['rte_popcount32', rte_popcount32]
alias rte_argparse_rte_popcount64 = ExternalFunction['rte_popcount64', rte_popcount64]
alias rte_argparse_rte_ffs32 = ExternalFunction['rte_ffs32', rte_ffs32]
alias rte_argparse_rte_ffs64 = ExternalFunction['rte_ffs64', rte_ffs64]
alias rte_argparse_rte_combine32ms1b = ExternalFunction['rte_combine32ms1b', rte_combine32ms1b]
alias rte_argparse_rte_combine64ms1b = ExternalFunction['rte_combine64ms1b', rte_combine64ms1b]
alias rte_argparse_rte_bsf32 = ExternalFunction['rte_bsf32', rte_bsf32]
alias rte_argparse_rte_bsf32_safe = ExternalFunction['rte_bsf32_safe', rte_bsf32_safe]
alias rte_argparse_rte_bsf64 = ExternalFunction['rte_bsf64', rte_bsf64]
alias rte_argparse_rte_bsf64_safe = ExternalFunction['rte_bsf64_safe', rte_bsf64_safe]
alias rte_argparse_rte_fls_u32 = ExternalFunction['rte_fls_u32', rte_fls_u32]
alias rte_argparse_rte_fls_u64 = ExternalFunction['rte_fls_u64', rte_fls_u64]
alias rte_argparse_rte_is_power_of_2 = ExternalFunction['rte_is_power_of_2', rte_is_power_of_2]
alias rte_argparse_rte_align32pow2 = ExternalFunction['rte_align32pow2', rte_align32pow2]
alias rte_argparse_rte_align32prevpow2 = ExternalFunction['rte_align32prevpow2', rte_align32prevpow2]
alias rte_argparse_rte_align64pow2 = ExternalFunction['rte_align64pow2', rte_align64pow2]
alias rte_argparse_rte_align64prevpow2 = ExternalFunction['rte_align64prevpow2', rte_align64prevpow2]
alias rte_argparse_rte_log2_u32 = ExternalFunction['rte_log2_u32', rte_log2_u32]
alias rte_argparse_rte_log2_u64 = ExternalFunction['rte_log2_u64', rte_log2_u64]
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
    var lib: DLHandle
    
    var remove: rte_argparse_remove.type
    var rename: rte_argparse_rename.type
    var renameat: rte_argparse_renameat.type
    var fclose: rte_argparse_fclose.type
    var tmpfile: rte_argparse_tmpfile.type
    var tmpnam: rte_argparse_tmpnam.type
    var tmpnam_r: rte_argparse_tmpnam_r.type
    var tempnam: rte_argparse_tempnam.type
    var fflush: rte_argparse_fflush.type
    var fflush_unlocked: rte_argparse_fflush_unlocked.type
    var fopen: rte_argparse_fopen.type
    var freopen: rte_argparse_freopen.type
    var fdopen: rte_argparse_fdopen.type
    var fmemopen: rte_argparse_fmemopen.type
    var open_memstream: rte_argparse_open_memstream.type
    var setbuf: rte_argparse_setbuf.type
    var setvbuf: rte_argparse_setvbuf.type
    var setbuffer: rte_argparse_setbuffer.type
    var setlinebuf: rte_argparse_setlinebuf.type
    var fprintf: rte_argparse_fprintf.type
    var printf: rte_argparse_printf.type
    var sprintf: rte_argparse_sprintf.type
    var vfprintf: rte_argparse_vfprintf.type
    var vprintf: rte_argparse_vprintf.type
    var vsprintf: rte_argparse_vsprintf.type
    var snprintf: rte_argparse_snprintf.type
    var vsnprintf: rte_argparse_vsnprintf.type
    var vdprintf: rte_argparse_vdprintf.type
    var dprintf: rte_argparse_dprintf.type
    var fscanf: rte_argparse_fscanf.type
    var scanf: rte_argparse_scanf.type
    var sscanf: rte_argparse_sscanf.type
    var vfscanf: rte_argparse_vfscanf.type
    var vscanf: rte_argparse_vscanf.type
    var vsscanf: rte_argparse_vsscanf.type
    var fgetc: rte_argparse_fgetc.type
    var getc: rte_argparse_getc.type
    var getchar: rte_argparse_getchar.type
    var getc_unlocked: rte_argparse_getc_unlocked.type
    var getchar_unlocked: rte_argparse_getchar_unlocked.type
    var fgetc_unlocked: rte_argparse_fgetc_unlocked.type
    var fputc: rte_argparse_fputc.type
    var putc: rte_argparse_putc.type
    var putchar: rte_argparse_putchar.type
    var fputc_unlocked: rte_argparse_fputc_unlocked.type
    var putc_unlocked: rte_argparse_putc_unlocked.type
    var putchar_unlocked: rte_argparse_putchar_unlocked.type
    var getw: rte_argparse_getw.type
    var putw: rte_argparse_putw.type
    var fgets: rte_argparse_fgets.type
    var getdelim: rte_argparse_getdelim.type
    var getline: rte_argparse_getline.type
    var fputs: rte_argparse_fputs.type
    var puts: rte_argparse_puts.type
    var ungetc: rte_argparse_ungetc.type
    var fread: rte_argparse_fread.type
    var fwrite: rte_argparse_fwrite.type
    var fread_unlocked: rte_argparse_fread_unlocked.type
    var fwrite_unlocked: rte_argparse_fwrite_unlocked.type
    var fseek: rte_argparse_fseek.type
    var ftell: rte_argparse_ftell.type
    var rewind: rte_argparse_rewind.type
    var fseeko: rte_argparse_fseeko.type
    var ftello: rte_argparse_ftello.type
    var fgetpos: rte_argparse_fgetpos.type
    var fsetpos: rte_argparse_fsetpos.type
    var clearerr: rte_argparse_clearerr.type
    var feof: rte_argparse_feof.type
    var ferror: rte_argparse_ferror.type
    var clearerr_unlocked: rte_argparse_clearerr_unlocked.type
    var feof_unlocked: rte_argparse_feof_unlocked.type
    var ferror_unlocked: rte_argparse_ferror_unlocked.type
    var perror: rte_argparse_perror.type
    var fileno: rte_argparse_fileno.type
    var fileno_unlocked: rte_argparse_fileno_unlocked.type
    var pclose: rte_argparse_pclose.type
    var popen: rte_argparse_popen.type
    var ctermid: rte_argparse_ctermid.type
    var flockfile: rte_argparse_flockfile.type
    var ftrylockfile: rte_argparse_ftrylockfile.type
    var funlockfile: rte_argparse_funlockfile.type
    var alloca: rte_argparse_alloca.type
    var sched_setparam: rte_argparse_sched_setparam.type
    var sched_getparam: rte_argparse_sched_getparam.type
    var sched_setscheduler: rte_argparse_sched_setscheduler.type
    var sched_getscheduler: rte_argparse_sched_getscheduler.type
    var sched_yield: rte_argparse_sched_yield.type
    var sched_get_priority_max: rte_argparse_sched_get_priority_max.type
    var sched_get_priority_min: rte_argparse_sched_get_priority_min.type
    var sched_rr_get_interval: rte_argparse_sched_rr_get_interval.type
    var rte_is_aligned: rte_argparse_rte_is_aligned.type
    var rte_str_to_size: rte_argparse_rte_str_to_size.type
    var rte_size_to_str: rte_argparse_rte_size_to_str.type
    var rte_exit: rte_argparse_rte_exit.type
    var rte_openlog_stream: rte_argparse_rte_openlog_stream.type
    var rte_log_get_stream: rte_argparse_rte_log_get_stream.type
    var rte_log_set_global_level: rte_argparse_rte_log_set_global_level.type
    var rte_log_get_global_level: rte_argparse_rte_log_get_global_level.type
    var rte_log_get_level: rte_argparse_rte_log_get_level.type
    var rte_log_can_log: rte_argparse_rte_log_can_log.type
    var rte_log_set_level_pattern: rte_argparse_rte_log_set_level_pattern.type
    var rte_log_set_level_regexp: rte_argparse_rte_log_set_level_regexp.type
    var rte_log_set_level: rte_argparse_rte_log_set_level.type
    var rte_log_cur_msg_loglevel: rte_argparse_rte_log_cur_msg_loglevel.type
    var rte_log_cur_msg_logtype: rte_argparse_rte_log_cur_msg_logtype.type
    var rte_log_register: rte_argparse_rte_log_register.type
    var rte_log_register_type_and_pick_level: rte_argparse_rte_log_register_type_and_pick_level.type
    var rte_log_list_types: rte_argparse_rte_log_list_types.type
    var rte_log_dump: rte_argparse_rte_log_dump.type
    var rte_log: rte_argparse_rte_log.type
    var rte_vlog: rte_argparse_rte_vlog.type
    var rte_dump_stack: rte_argparse_rte_dump_stack.type
    var rte_bit_relaxed_get32: rte_argparse_rte_bit_relaxed_get32.type
    var rte_bit_relaxed_set32: rte_argparse_rte_bit_relaxed_set32.type
    var rte_bit_relaxed_clear32: rte_argparse_rte_bit_relaxed_clear32.type
    var rte_bit_relaxed_test_and_set32: rte_argparse_rte_bit_relaxed_test_and_set32.type
    var rte_bit_relaxed_test_and_clear32: rte_argparse_rte_bit_relaxed_test_and_clear32.type
    var rte_bit_relaxed_get64: rte_argparse_rte_bit_relaxed_get64.type
    var rte_bit_relaxed_set64: rte_argparse_rte_bit_relaxed_set64.type
    var rte_bit_relaxed_clear64: rte_argparse_rte_bit_relaxed_clear64.type
    var rte_bit_relaxed_test_and_set64: rte_argparse_rte_bit_relaxed_test_and_set64.type
    var rte_bit_relaxed_test_and_clear64: rte_argparse_rte_bit_relaxed_test_and_clear64.type
    var rte_clz32: rte_argparse_rte_clz32.type
    var rte_clz64: rte_argparse_rte_clz64.type
    var rte_ctz32: rte_argparse_rte_ctz32.type
    var rte_ctz64: rte_argparse_rte_ctz64.type
    var rte_popcount32: rte_argparse_rte_popcount32.type
    var rte_popcount64: rte_argparse_rte_popcount64.type
    var rte_ffs32: rte_argparse_rte_ffs32.type
    var rte_ffs64: rte_argparse_rte_ffs64.type
    var rte_combine32ms1b: rte_argparse_rte_combine32ms1b.type
    var rte_combine64ms1b: rte_argparse_rte_combine64ms1b.type
    var rte_bsf32: rte_argparse_rte_bsf32.type
    var rte_bsf32_safe: rte_argparse_rte_bsf32_safe.type
    var rte_bsf64: rte_argparse_rte_bsf64.type
    var rte_bsf64_safe: rte_argparse_rte_bsf64_safe.type
    var rte_fls_u32: rte_argparse_rte_fls_u32.type
    var rte_fls_u64: rte_argparse_rte_fls_u64.type
    var rte_is_power_of_2: rte_argparse_rte_is_power_of_2.type
    var rte_align32pow2: rte_argparse_rte_align32pow2.type
    var rte_align32prevpow2: rte_argparse_rte_align32prevpow2.type
    var rte_align64pow2: rte_argparse_rte_align64pow2.type
    var rte_align64prevpow2: rte_argparse_rte_align64prevpow2.type
    var rte_log2_u32: rte_argparse_rte_log2_u32.type
    var rte_log2_u64: rte_argparse_rte_log2_u64.type
    var rte_argparse_parse: rte_argparse_rte_argparse_parse.type
    var rte_argparse_parse_type: rte_argparse_rte_argparse_parse_type.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_argparse.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_argparse from", 'librte_argparse.so', ":\n", e)
            )

    
        self.remove = rte_argparse_remove.load(self.lib)
        self.rename = rte_argparse_rename.load(self.lib)
        self.renameat = rte_argparse_renameat.load(self.lib)
        self.fclose = rte_argparse_fclose.load(self.lib)
        self.tmpfile = rte_argparse_tmpfile.load(self.lib)
        self.tmpnam = rte_argparse_tmpnam.load(self.lib)
        self.tmpnam_r = rte_argparse_tmpnam_r.load(self.lib)
        self.tempnam = rte_argparse_tempnam.load(self.lib)
        self.fflush = rte_argparse_fflush.load(self.lib)
        self.fflush_unlocked = rte_argparse_fflush_unlocked.load(self.lib)
        self.fopen = rte_argparse_fopen.load(self.lib)
        self.freopen = rte_argparse_freopen.load(self.lib)
        self.fdopen = rte_argparse_fdopen.load(self.lib)
        self.fmemopen = rte_argparse_fmemopen.load(self.lib)
        self.open_memstream = rte_argparse_open_memstream.load(self.lib)
        self.setbuf = rte_argparse_setbuf.load(self.lib)
        self.setvbuf = rte_argparse_setvbuf.load(self.lib)
        self.setbuffer = rte_argparse_setbuffer.load(self.lib)
        self.setlinebuf = rte_argparse_setlinebuf.load(self.lib)
        self.fprintf = rte_argparse_fprintf.load(self.lib)
        self.printf = rte_argparse_printf.load(self.lib)
        self.sprintf = rte_argparse_sprintf.load(self.lib)
        self.vfprintf = rte_argparse_vfprintf.load(self.lib)
        self.vprintf = rte_argparse_vprintf.load(self.lib)
        self.vsprintf = rte_argparse_vsprintf.load(self.lib)
        self.snprintf = rte_argparse_snprintf.load(self.lib)
        self.vsnprintf = rte_argparse_vsnprintf.load(self.lib)
        self.vdprintf = rte_argparse_vdprintf.load(self.lib)
        self.dprintf = rte_argparse_dprintf.load(self.lib)
        self.fscanf = rte_argparse_fscanf.load(self.lib)
        self.scanf = rte_argparse_scanf.load(self.lib)
        self.sscanf = rte_argparse_sscanf.load(self.lib)
        self.vfscanf = rte_argparse_vfscanf.load(self.lib)
        self.vscanf = rte_argparse_vscanf.load(self.lib)
        self.vsscanf = rte_argparse_vsscanf.load(self.lib)
        self.fgetc = rte_argparse_fgetc.load(self.lib)
        self.getc = rte_argparse_getc.load(self.lib)
        self.getchar = rte_argparse_getchar.load(self.lib)
        self.getc_unlocked = rte_argparse_getc_unlocked.load(self.lib)
        self.getchar_unlocked = rte_argparse_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = rte_argparse_fgetc_unlocked.load(self.lib)
        self.fputc = rte_argparse_fputc.load(self.lib)
        self.putc = rte_argparse_putc.load(self.lib)
        self.putchar = rte_argparse_putchar.load(self.lib)
        self.fputc_unlocked = rte_argparse_fputc_unlocked.load(self.lib)
        self.putc_unlocked = rte_argparse_putc_unlocked.load(self.lib)
        self.putchar_unlocked = rte_argparse_putchar_unlocked.load(self.lib)
        self.getw = rte_argparse_getw.load(self.lib)
        self.putw = rte_argparse_putw.load(self.lib)
        self.fgets = rte_argparse_fgets.load(self.lib)
        self.getdelim = rte_argparse_getdelim.load(self.lib)
        self.getline = rte_argparse_getline.load(self.lib)
        self.fputs = rte_argparse_fputs.load(self.lib)
        self.puts = rte_argparse_puts.load(self.lib)
        self.ungetc = rte_argparse_ungetc.load(self.lib)
        self.fread = rte_argparse_fread.load(self.lib)
        self.fwrite = rte_argparse_fwrite.load(self.lib)
        self.fread_unlocked = rte_argparse_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = rte_argparse_fwrite_unlocked.load(self.lib)
        self.fseek = rte_argparse_fseek.load(self.lib)
        self.ftell = rte_argparse_ftell.load(self.lib)
        self.rewind = rte_argparse_rewind.load(self.lib)
        self.fseeko = rte_argparse_fseeko.load(self.lib)
        self.ftello = rte_argparse_ftello.load(self.lib)
        self.fgetpos = rte_argparse_fgetpos.load(self.lib)
        self.fsetpos = rte_argparse_fsetpos.load(self.lib)
        self.clearerr = rte_argparse_clearerr.load(self.lib)
        self.feof = rte_argparse_feof.load(self.lib)
        self.ferror = rte_argparse_ferror.load(self.lib)
        self.clearerr_unlocked = rte_argparse_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = rte_argparse_feof_unlocked.load(self.lib)
        self.ferror_unlocked = rte_argparse_ferror_unlocked.load(self.lib)
        self.perror = rte_argparse_perror.load(self.lib)
        self.fileno = rte_argparse_fileno.load(self.lib)
        self.fileno_unlocked = rte_argparse_fileno_unlocked.load(self.lib)
        self.pclose = rte_argparse_pclose.load(self.lib)
        self.popen = rte_argparse_popen.load(self.lib)
        self.ctermid = rte_argparse_ctermid.load(self.lib)
        self.flockfile = rte_argparse_flockfile.load(self.lib)
        self.ftrylockfile = rte_argparse_ftrylockfile.load(self.lib)
        self.funlockfile = rte_argparse_funlockfile.load(self.lib)
        self.alloca = rte_argparse_alloca.load(self.lib)
        self.sched_setparam = rte_argparse_sched_setparam.load(self.lib)
        self.sched_getparam = rte_argparse_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_argparse_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_argparse_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_argparse_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_argparse_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_argparse_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_argparse_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_argparse_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_argparse_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_argparse_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_argparse_rte_exit.load(self.lib)
        self.rte_openlog_stream = rte_argparse_rte_openlog_stream.load(self.lib)
        self.rte_log_get_stream = rte_argparse_rte_log_get_stream.load(self.lib)
        self.rte_log_set_global_level = rte_argparse_rte_log_set_global_level.load(self.lib)
        self.rte_log_get_global_level = rte_argparse_rte_log_get_global_level.load(self.lib)
        self.rte_log_get_level = rte_argparse_rte_log_get_level.load(self.lib)
        self.rte_log_can_log = rte_argparse_rte_log_can_log.load(self.lib)
        self.rte_log_set_level_pattern = rte_argparse_rte_log_set_level_pattern.load(self.lib)
        self.rte_log_set_level_regexp = rte_argparse_rte_log_set_level_regexp.load(self.lib)
        self.rte_log_set_level = rte_argparse_rte_log_set_level.load(self.lib)
        self.rte_log_cur_msg_loglevel = rte_argparse_rte_log_cur_msg_loglevel.load(self.lib)
        self.rte_log_cur_msg_logtype = rte_argparse_rte_log_cur_msg_logtype.load(self.lib)
        self.rte_log_register = rte_argparse_rte_log_register.load(self.lib)
        self.rte_log_register_type_and_pick_level = rte_argparse_rte_log_register_type_and_pick_level.load(self.lib)
        self.rte_log_list_types = rte_argparse_rte_log_list_types.load(self.lib)
        self.rte_log_dump = rte_argparse_rte_log_dump.load(self.lib)
        self.rte_log = rte_argparse_rte_log.load(self.lib)
        self.rte_vlog = rte_argparse_rte_vlog.load(self.lib)
        self.rte_dump_stack = rte_argparse_rte_dump_stack.load(self.lib)
        self.rte_bit_relaxed_get32 = rte_argparse_rte_bit_relaxed_get32.load(self.lib)
        self.rte_bit_relaxed_set32 = rte_argparse_rte_bit_relaxed_set32.load(self.lib)
        self.rte_bit_relaxed_clear32 = rte_argparse_rte_bit_relaxed_clear32.load(self.lib)
        self.rte_bit_relaxed_test_and_set32 = rte_argparse_rte_bit_relaxed_test_and_set32.load(self.lib)
        self.rte_bit_relaxed_test_and_clear32 = rte_argparse_rte_bit_relaxed_test_and_clear32.load(self.lib)
        self.rte_bit_relaxed_get64 = rte_argparse_rte_bit_relaxed_get64.load(self.lib)
        self.rte_bit_relaxed_set64 = rte_argparse_rte_bit_relaxed_set64.load(self.lib)
        self.rte_bit_relaxed_clear64 = rte_argparse_rte_bit_relaxed_clear64.load(self.lib)
        self.rte_bit_relaxed_test_and_set64 = rte_argparse_rte_bit_relaxed_test_and_set64.load(self.lib)
        self.rte_bit_relaxed_test_and_clear64 = rte_argparse_rte_bit_relaxed_test_and_clear64.load(self.lib)
        self.rte_clz32 = rte_argparse_rte_clz32.load(self.lib)
        self.rte_clz64 = rte_argparse_rte_clz64.load(self.lib)
        self.rte_ctz32 = rte_argparse_rte_ctz32.load(self.lib)
        self.rte_ctz64 = rte_argparse_rte_ctz64.load(self.lib)
        self.rte_popcount32 = rte_argparse_rte_popcount32.load(self.lib)
        self.rte_popcount64 = rte_argparse_rte_popcount64.load(self.lib)
        self.rte_ffs32 = rte_argparse_rte_ffs32.load(self.lib)
        self.rte_ffs64 = rte_argparse_rte_ffs64.load(self.lib)
        self.rte_combine32ms1b = rte_argparse_rte_combine32ms1b.load(self.lib)
        self.rte_combine64ms1b = rte_argparse_rte_combine64ms1b.load(self.lib)
        self.rte_bsf32 = rte_argparse_rte_bsf32.load(self.lib)
        self.rte_bsf32_safe = rte_argparse_rte_bsf32_safe.load(self.lib)
        self.rte_bsf64 = rte_argparse_rte_bsf64.load(self.lib)
        self.rte_bsf64_safe = rte_argparse_rte_bsf64_safe.load(self.lib)
        self.rte_fls_u32 = rte_argparse_rte_fls_u32.load(self.lib)
        self.rte_fls_u64 = rte_argparse_rte_fls_u64.load(self.lib)
        self.rte_is_power_of_2 = rte_argparse_rte_is_power_of_2.load(self.lib)
        self.rte_align32pow2 = rte_argparse_rte_align32pow2.load(self.lib)
        self.rte_align32prevpow2 = rte_argparse_rte_align32prevpow2.load(self.lib)
        self.rte_align64pow2 = rte_argparse_rte_align64pow2.load(self.lib)
        self.rte_align64prevpow2 = rte_argparse_rte_align64prevpow2.load(self.lib)
        self.rte_log2_u32 = rte_argparse_rte_log2_u32.load(self.lib)
        self.rte_log2_u64 = rte_argparse_rte_log2_u64.load(self.lib)
        self.rte_argparse_parse = rte_argparse_rte_argparse_parse.load(self.lib)
        self.rte_argparse_parse_type = rte_argparse_rte_argparse_parse_type.load(self.lib)

