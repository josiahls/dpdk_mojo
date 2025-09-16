
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
struct anonomous_record_105(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_105

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
alias __assert_fail = fn (UnsafePointer[Int8], UnsafePointer[Int8], UInt32, UnsafePointer[Int8]) -> NoneType
alias __assert_perror_fail = fn (Int32, UnsafePointer[Int8], UInt32, UnsafePointer[Int8]) -> NoneType
alias __assert = fn (UnsafePointer[Int8], UnsafePointer[Int8], Int32) -> NoneType
alias size_t = ffi.c_ulong
alias va_list = __builtin_va_list
alias __gnuc_va_list = __builtin_va_list
alias anonomous_record_106 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_107(Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_106

alias __mbstate_t = anonomous_record_107

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
alias alloca = fn (ffi.c_ulong) -> OpaquePointer
alias time_t = __time_t
struct timespec(Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_nsec : ffi.c_long

alias pid_t = __pid_t
struct sched_param(Copyable & Movable):
	var sched_priority : Int32

alias __cpu_mask = ffi.c_ulong
struct anonomous_record_108(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_108

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
alias rte_memory_order = Int32
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The memory order is an integer type in GCC built-ins,
# Node: TextComment()
#  not an enumerated type like in C11.

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
struct rte_cman_mode(Copyable & Movable):

	alias RTE_CMAN_RED = 0

struct rte_cman_red_params(Copyable & Movable):

	var min_th : UInt8

	var max_th : UInt8

	var maxp_inv : UInt16

alias rte_intr_event_cb_t = fn(Int32, OpaquePointer) -> NoneType
struct rte_epoll_data(Copyable & Movable):
	var event : UInt32

	var data : OpaquePointer

	var cb_fun : fn(Int32, OpaquePointer) -> NoneType

	var cb_arg : OpaquePointer

alias RTE_EPOLL_INVALID = 0

alias RTE_EPOLL_VALID = 1

alias RTE_EPOLL_EXEC = 2

struct rte_epoll_event(Copyable & Movable):

	var status : UInt32

	var fd : Int32

	var epfd : Int32

	var epdata : rte_epoll_data

alias rte_epoll_wait = fn (Int32, UnsafePointer[rte_epoll_event], Int32, Int32) -> Int32
alias rte_epoll_wait_interruptible = fn (Int32, UnsafePointer[rte_epoll_event], Int32, Int32) -> Int32
alias rte_epoll_ctl = fn (Int32, Int32, Int32, UnsafePointer[rte_epoll_event]) -> Int32
struct rte_intr_handle(Copyable & Movable):

	pass
struct rte_intr_handle_type(Copyable & Movable):

	alias RTE_INTR_HANDLE_UNKNOWN = 0

	alias RTE_INTR_HANDLE_UIO = 1

	alias RTE_INTR_HANDLE_UIO_INTX = 2

	alias RTE_INTR_HANDLE_VFIO_LEGACY = 3

	alias RTE_INTR_HANDLE_VFIO_MSI = 4

	alias RTE_INTR_HANDLE_VFIO_MSIX = 5

	alias RTE_INTR_HANDLE_ALARM = 6

	alias RTE_INTR_HANDLE_EXT = 7

	alias RTE_INTR_HANDLE_VDEV = 8

	alias RTE_INTR_HANDLE_DEV_EVENT = 9

	alias RTE_INTR_HANDLE_VFIO_REQ = 10

	alias RTE_INTR_HANDLE_MAX = 11

alias rte_intr_callback_fn = fn(OpaquePointer) -> NoneType
alias rte_intr_unregister_callback_fn = fn(UnsafePointer[rte_intr_handle], OpaquePointer) -> NoneType
alias rte_intr_callback_register = fn (UnsafePointer[rte_intr_handle], rte_intr_callback_fn, OpaquePointer) -> Int32
alias rte_intr_callback_unregister = fn (UnsafePointer[rte_intr_handle], rte_intr_callback_fn, OpaquePointer) -> Int32
alias rte_intr_callback_unregister_pending = fn (UnsafePointer[rte_intr_handle], rte_intr_callback_fn, OpaquePointer, rte_intr_unregister_callback_fn) -> Int32
alias rte_intr_callback_unregister_sync = fn (UnsafePointer[rte_intr_handle], rte_intr_callback_fn, OpaquePointer) -> Int32
alias rte_intr_enable = fn (UnsafePointer[rte_intr_handle]) -> Int32
alias rte_intr_disable = fn (UnsafePointer[rte_intr_handle]) -> Int32
alias rte_intr_ack = fn (UnsafePointer[rte_intr_handle]) -> Int32
alias rte_thread_is_intr = fn () -> Int32
alias rte_intr_instance_alloc = fn (UInt32) -> UnsafePointer[rte_intr_handle]
alias rte_intr_instance_free = fn (UnsafePointer[rte_intr_handle]) -> NoneType
alias rte_intr_fd_set = fn (UnsafePointer[rte_intr_handle], Int32) -> Int32
alias rte_intr_fd_get = fn (UnsafePointer[rte_intr_handle]) -> Int32
alias rte_intr_type_set = fn (UnsafePointer[rte_intr_handle], rte_intr_handle_type) -> Int32
alias rte_intr_type_get = fn (UnsafePointer[rte_intr_handle]) -> rte_intr_handle_type
alias rte_intr_tls_epfd = fn () -> Int32
alias rte_intr_rx_ctl = fn (UnsafePointer[rte_intr_handle], Int32, Int32, UInt32, OpaquePointer) -> Int32
alias rte_intr_free_epoll_fd = fn (UnsafePointer[rte_intr_handle]) -> NoneType
alias rte_intr_efd_enable = fn (UnsafePointer[rte_intr_handle], UInt32) -> Int32
alias rte_intr_efd_disable = fn (UnsafePointer[rte_intr_handle]) -> NoneType
alias rte_intr_dp_is_en = fn (UnsafePointer[rte_intr_handle]) -> Int32
alias rte_intr_allow_others = fn (UnsafePointer[rte_intr_handle]) -> Int32
alias rte_intr_cap_multiple = fn (UnsafePointer[rte_intr_handle]) -> Int32
alias rte_intr_instance_dup = fn (UnsafePointer[rte_intr_handle]) -> UnsafePointer[rte_intr_handle]
alias rte_intr_dev_fd_set = fn (UnsafePointer[rte_intr_handle], Int32) -> Int32
alias rte_intr_dev_fd_get = fn (UnsafePointer[rte_intr_handle]) -> Int32
alias rte_intr_max_intr_set = fn (UnsafePointer[rte_intr_handle], Int32) -> Int32
alias rte_intr_max_intr_get = fn (UnsafePointer[rte_intr_handle]) -> Int32
alias rte_intr_nb_efd_set = fn (UnsafePointer[rte_intr_handle], Int32) -> Int32
alias rte_intr_nb_efd_get = fn (UnsafePointer[rte_intr_handle]) -> Int32
alias rte_intr_nb_intr_get = fn (UnsafePointer[rte_intr_handle]) -> Int32
alias rte_intr_efd_counter_size_set = fn (UnsafePointer[rte_intr_handle], UInt8) -> Int32
alias rte_intr_efd_counter_size_get = fn (UnsafePointer[rte_intr_handle]) -> Int32
alias rte_intr_efds_index_set = fn (UnsafePointer[rte_intr_handle], Int32, Int32) -> Int32
alias rte_intr_efds_index_get = fn (UnsafePointer[rte_intr_handle], Int32) -> Int32
alias rte_intr_elist_index_set = fn (UnsafePointer[rte_intr_handle], Int32, rte_epoll_event) -> Int32
alias rte_intr_elist_index_get = fn (UnsafePointer[rte_intr_handle], Int32) -> UnsafePointer[rte_epoll_event]
alias rte_intr_vec_list_alloc = fn (UnsafePointer[rte_intr_handle], UnsafePointer[Int8], Int32) -> Int32
alias rte_intr_vec_list_index_set = fn (UnsafePointer[rte_intr_handle], Int32, Int32) -> Int32
alias rte_intr_vec_list_index_get = fn (UnsafePointer[rte_intr_handle], Int32) -> Int32
alias rte_intr_vec_list_free = fn (UnsafePointer[rte_intr_handle]) -> NoneType
alias rte_intr_event_list_update = fn (UnsafePointer[rte_intr_handle], Int32) -> Int32
alias rte_intr_instance_windows_handle_get = fn (UnsafePointer[rte_intr_handle]) -> OpaquePointer
alias rte_intr_instance_windows_handle_set = fn (UnsafePointer[rte_intr_handle], OpaquePointer) -> Int32
struct rte_bus(Copyable & Movable):
	pass
struct rte_devargs(Copyable & Movable):
	pass
struct rte_device(Copyable & Movable):
	pass
struct rte_driver(Copyable & Movable):
	pass
struct rte_dev_event_type(Copyable & Movable):

	alias RTE_DEV_EVENT_ADD = 0

	alias RTE_DEV_EVENT_REMOVE = 1

	alias RTE_DEV_EVENT_MAX = 2

alias rte_dev_event_cb_fn = fn(read UnsafePointer[Int8], rte_dev_event_type, OpaquePointer) -> NoneType
struct rte_dev_policy(Copyable & Movable):

	alias RTE_DEV_ALLOWED = 0

	alias RTE_DEV_BLOCKED = 1

struct rte_mem_resource(Copyable & Movable):

	var phys_addr : ffi.c_ulong

	var len : ffi.c_ulong

	var addr : OpaquePointer

alias rte_driver_name = fn (UnsafePointer[rte_driver]) -> UnsafePointer[Int8]
alias rte_dev_bus = fn (UnsafePointer[rte_device]) -> UnsafePointer[rte_bus]
alias rte_dev_bus_info = fn (UnsafePointer[rte_device]) -> UnsafePointer[Int8]
alias rte_dev_devargs = fn (UnsafePointer[rte_device]) -> UnsafePointer[rte_devargs]
alias rte_dev_driver = fn (UnsafePointer[rte_device]) -> UnsafePointer[rte_driver]
alias rte_dev_name = fn (UnsafePointer[rte_device]) -> UnsafePointer[Int8]
alias rte_dev_numa_node = fn (UnsafePointer[rte_device]) -> Int32
alias rte_dev_is_probed = fn (UnsafePointer[rte_device]) -> Int32
alias rte_eal_hotplug_add = fn (UnsafePointer[Int8], UnsafePointer[Int8], UnsafePointer[Int8]) -> Int32
alias rte_dev_probe = fn (UnsafePointer[Int8]) -> Int32
alias rte_eal_hotplug_remove = fn (UnsafePointer[Int8], UnsafePointer[Int8]) -> Int32
alias rte_dev_remove = fn (UnsafePointer[rte_device]) -> Int32
alias rte_dev_cmp_t = fn(read UnsafePointer[rte_device], read OpaquePointer) -> Int32
struct rte_class(Copyable & Movable):
	pass
struct rte_dev_iterator(Copyable & Movable):

	var dev_str : UnsafePointer[Int8]

	var bus_str : UnsafePointer[Int8]

	var cls_str : UnsafePointer[Int8]

	var bus : UnsafePointer[rte_bus]

	var cls : rte_class

	var device : UnsafePointer[rte_device]

	var class_device : OpaquePointer

alias rte_dev_iterate_t = fn(read OpaquePointer, read UnsafePointer[Int8], read UnsafePointer[rte_dev_iterator]) -> OpaquePointer
alias rte_dev_iterator_init = fn (UnsafePointer[rte_dev_iterator], UnsafePointer[Int8]) -> Int32
alias rte_dev_iterator_next = fn (UnsafePointer[rte_dev_iterator]) -> UnsafePointer[rte_device]
alias rte_dev_event_callback_register = fn (UnsafePointer[Int8], rte_dev_event_cb_fn, OpaquePointer) -> Int32
alias rte_dev_event_callback_unregister = fn (UnsafePointer[Int8], rte_dev_event_cb_fn, OpaquePointer) -> Int32
alias rte_dev_event_callback_process = fn (UnsafePointer[Int8], rte_dev_event_type) -> NoneType
alias rte_dev_event_monitor_start = fn () -> Int32
alias rte_dev_event_monitor_stop = fn () -> Int32
alias rte_dev_hotplug_handle_enable = fn () -> Int32
alias rte_dev_hotplug_handle_disable = fn () -> Int32
alias rte_dev_dma_map = fn (UnsafePointer[rte_device], OpaquePointer, ffi.c_ulong, size_t) -> Int32
alias rte_dev_dma_unmap = fn (UnsafePointer[rte_device], OpaquePointer, ffi.c_ulong, size_t) -> Int32
struct rte_devtype(Copyable & Movable):

	alias RTE_DEVTYPE_ALLOWED = 0

	alias RTE_DEVTYPE_BLOCKED = 1

	alias RTE_DEVTYPE_VIRTUAL = 2

alias anonomous_record_110 = C_Union[UnsafePointer[Int8], UnsafePointer[Int8]]

struct anonomous_record_109(Copyable & Movable):
	var tqe_next : UnsafePointer[rte_devargs]

	var tqe_prev : UnsafePointer[UnsafePointer[rte_devargs]]

alias rte_devargs_parse = fn (UnsafePointer[rte_devargs], UnsafePointer[Int8]) -> Int32
alias rte_devargs_parsef = fn (UnsafePointer[rte_devargs], UnsafePointer[Int8]) -> Int32
alias rte_devargs_reset = fn (UnsafePointer[rte_devargs]) -> NoneType
alias rte_devargs_insert = fn (UnsafePointer[UnsafePointer[rte_devargs]]) -> Int32
alias rte_devargs_add = fn (rte_devtype, UnsafePointer[Int8]) -> Int32
alias rte_devargs_remove = fn (UnsafePointer[rte_devargs]) -> Int32
alias rte_devargs_type_count = fn (rte_devtype) -> UInt32
alias rte_devargs_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_devargs_next = fn (UnsafePointer[Int8], UnsafePointer[rte_devargs]) -> UnsafePointer[rte_devargs]
alias per_lcore__rte_errno = Int32
alias rte_strerror = fn (Int32) -> UnsafePointer[Int8]

alias RTE_MIN_ERRNO = 1000

alias E_RTE_SECONDARY = 1001

alias E_RTE_NO_CONFIG = 1002

alias RTE_MAX_ERRNO = 1003

alias __gwchar_t = UInt32
struct anonomous_record_111(Copyable & Movable):
	var quot : ffi.c_long

	var rem : ffi.c_long

alias imaxdiv_t = anonomous_record_111

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
struct anonomous_record_112(Copyable & Movable):
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_112

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
struct anonomous_record_113(Copyable & Movable):

	var opaque_id : ffi.c_ulong

alias rte_thread_t = anonomous_record_113

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Thread id descriptor.

alias rte_thread_func = fn(OpaquePointer) -> ffi.c_ulong
struct rte_thread_priority(Copyable & Movable):

	alias RTE_THREAD_PRIORITY_NORMAL = 0

	alias RTE_THREAD_PRIORITY_REALTIME_CRITICAL = 1

struct anonomous_record_114(Copyable & Movable):

	var priority : rte_thread_priority

alias rte_thread_attr_t = anonomous_record_114

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
alias rte_atomic_thread_fence = fn (rte_memory_order) -> NoneType
alias rte_atomic16_cmpset = fn (UnsafePointer[Int16], UInt16, UInt16) -> Int32
alias __sync_bool_compare_and_swap = fn () -> NoneType
alias __sync_bool_compare_and_swap_2 = fn (UnsafePointer[Int16], Int16, Int16) -> Bool
alias rte_atomic16_exchange = fn (UnsafePointer[Int16], UInt16) -> UInt16
alias __atomic_exchange_n = fn () -> NoneType
struct anonomous_record_115(Copyable & Movable):

	var cnt : Int16

alias rte_atomic16_t = anonomous_record_115

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
struct anonomous_record_116(Copyable & Movable):

	var cnt : Int32

alias rte_atomic32_t = anonomous_record_116

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
struct anonomous_record_117(Copyable & Movable):

	var cnt : ffi.c_long

alias rte_atomic64_t = anonomous_record_117

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
alias anonomous_record_118 = C_Union[InlineArray[ffi.c_ulong_long, 2], ffi.c_long_long]

struct anonomous_record_119(Copyable & Movable):
# Alignment: 16 


	var union_placeholder_1 : anonomous_record_118



alias rte_int128_t = anonomous_record_119

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  128-bit integer structure.

alias __atomic_thread_fence = fn (Int32) -> NoneType
alias rte_atomic128_cmp_exchange = fn (UnsafePointer[ffi.c_long_long], UnsafePointer[ffi.c_long_long], UnsafePointer[ffi.c_long_long], UInt32, Int32, Int32) -> Int32
alias __builtin_expect = fn (ffi.c_long, ffi.c_long) -> ffi.c_long
alias rte_pause = fn () -> NoneType
alias rte_wait_until_equal_16 = fn (UnsafePointer[Int16], UInt16, rte_memory_order) -> NoneType
alias rte_wait_until_equal_32 = fn (UnsafePointer[Int32], UInt32, rte_memory_order) -> NoneType
alias rte_wait_until_equal_64 = fn (UnsafePointer[ffi.c_long], ffi.c_ulong, rte_memory_order) -> NoneType
alias __atomic_load_n = fn () -> NoneType
struct anonomous_record_120(Copyable & Movable):

	var locked : Int32

alias rte_spinlock_t = anonomous_record_120

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
struct anonomous_record_121(Copyable & Movable):

	var sl : rte_spinlock_t

	var user : Int32

	var count : Int32

alias rte_spinlock_recursive_t = anonomous_record_121

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
alias rte_power_monitor_clb_t = fn(read ffi.c_ulong_long, read UnsafePointer[ffi.c_ulong_long]) -> Int32
struct rte_power_monitor_cond(Copyable & Movable):
	var addr : OpaquePointer

	var size : UInt8

	var fn_ : fn(read ffi.c_ulong_long, read UnsafePointer[ffi.c_ulong_long]) -> Int32

	var opaque : InlineArray[ffi.c_ulong_long, 4]

alias rte_power_monitor = fn (UnsafePointer[rte_power_monitor_cond], ffi.c_long) -> Int32
alias rte_power_monitor_wakeup = fn (UInt32) -> Int32
alias rte_power_pause = fn (ffi.c_long) -> Int32
alias rte_power_monitor_multi = fn (UnsafePointer[rte_power_monitor_cond], Int32, ffi.c_long) -> Int32
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
alias __rte_ethdev_trace_rx_burst_empty = rte_trace_point_t
alias rte_ethdev_trace_rx_burst_empty = fn (UInt16, UInt16, UnsafePointer[OpaquePointer]) -> NoneType
alias __rte_ethdev_trace_rx_burst_nonempty = rte_trace_point_t
alias rte_ethdev_trace_rx_burst_nonempty = fn (UInt16, UInt16, UnsafePointer[OpaquePointer], UInt16) -> NoneType
alias __rte_ethdev_trace_tx_burst = rte_trace_point_t
alias rte_ethdev_trace_tx_burst = fn (UInt16, UInt16, UnsafePointer[OpaquePointer], UInt16) -> NoneType
alias __rte_eth_trace_call_rx_callbacks_empty = rte_trace_point_t
alias rte_eth_trace_call_rx_callbacks_empty = fn (UInt16, UInt16, UnsafePointer[OpaquePointer], UInt16) -> NoneType
alias __rte_eth_trace_call_rx_callbacks_nonempty = rte_trace_point_t
alias rte_eth_trace_call_rx_callbacks_nonempty = fn (UInt16, UInt16, UnsafePointer[OpaquePointer], UInt16, UInt16) -> NoneType
alias __rte_eth_trace_call_tx_callbacks = rte_trace_point_t
alias rte_eth_trace_call_tx_callbacks = fn (UInt16, UInt16, UnsafePointer[OpaquePointer], UInt16) -> NoneType
alias __rte_eth_trace_tx_buffer_drop_callback = rte_trace_point_t
alias rte_eth_trace_tx_buffer_drop_callback = fn (UnsafePointer[OpaquePointer], UInt16) -> NoneType
alias __rte_eth_trace_tx_buffer_count_callback = rte_trace_point_t
alias rte_eth_trace_tx_buffer_count_callback = fn (UnsafePointer[OpaquePointer], UInt16, ffi.c_ulong) -> NoneType
alias __rte_eth_trace_tx_queue_count = rte_trace_point_t
alias rte_eth_trace_tx_queue_count = fn (UInt16, UInt16, Int32) -> NoneType
struct rte_eth_reg_name(Copyable & Movable):
	var name : InlineArray[Int8, 64]

struct rte_dev_reg_info(Copyable & Movable):

	var data : OpaquePointer

	var offset : UInt32

	var length : UInt32

	var width : UInt32

	var version : UInt32

	var filter : UnsafePointer[Int8]

	var names : UnsafePointer[rte_eth_reg_name]

struct rte_dev_eeprom_info(Copyable & Movable):

	var data : OpaquePointer

	var offset : UInt32

	var length : UInt32

	var magic : UInt32

struct rte_eth_dev_module_info(Copyable & Movable):

	var type : UInt32

	var eeprom_len : UInt32

alias rte_eth_dev_logtype = Int32
struct rte_mbuf(Copyable & Movable):
	pass
alias rte_eth_iterator_init = fn (UnsafePointer[rte_dev_iterator], UnsafePointer[Int8]) -> Int32
alias rte_eth_iterator_next = fn (UnsafePointer[rte_dev_iterator]) -> UInt16
alias rte_eth_iterator_cleanup = fn (UnsafePointer[rte_dev_iterator]) -> NoneType
struct rte_eth_stats(Copyable & Movable):

	var ipackets : ffi.c_ulong

	var opackets : ffi.c_ulong

	var ibytes : ffi.c_ulong

	var obytes : ffi.c_ulong

	var imissed : ffi.c_ulong

	var ierrors : ffi.c_ulong

	var oerrors : ffi.c_ulong

	var rx_nombuf : ffi.c_ulong

	var q_ipackets : InlineArray[ffi.c_ulong_long, 16]

	var q_opackets : InlineArray[ffi.c_ulong_long, 16]

	var q_ibytes : InlineArray[ffi.c_ulong_long, 16]

	var q_obytes : InlineArray[ffi.c_ulong_long, 16]

	var q_errors : InlineArray[ffi.c_ulong_long, 16]

struct anonomous_record_122(Copyable & Movable):
	var link_speed : UInt32

	var link_duplex : UInt16

	var link_autoneg : UInt16

	var link_status : UInt16

alias anonomous_record_123 = C_Union[ffi.c_ulong, anonomous_record_122, , , , ]

struct rte_eth_link(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_123






struct rte_eth_speed_lanes_capa(Copyable & Movable):

	var speed : UInt32

	var capa : UInt32

struct rte_eth_thresh(Copyable & Movable):

	var pthresh : UInt8

	var hthresh : UInt8

	var wthresh : UInt8

struct rte_eth_rx_mq_mode(Copyable & Movable):

	alias RTE_ETH_MQ_RX_NONE = 0

	alias RTE_ETH_MQ_RX_RSS = 1

	alias RTE_ETH_MQ_RX_DCB = 2

	alias RTE_ETH_MQ_RX_DCB_RSS = 3

	alias RTE_ETH_MQ_RX_VMDQ_ONLY = 4

	alias RTE_ETH_MQ_RX_VMDQ_RSS = 5

	alias RTE_ETH_MQ_RX_VMDQ_DCB = 6

	alias RTE_ETH_MQ_RX_VMDQ_DCB_RSS = 7

struct rte_eth_tx_mq_mode(Copyable & Movable):

	alias RTE_ETH_MQ_TX_NONE = 0

	alias RTE_ETH_MQ_TX_DCB = 1

	alias RTE_ETH_MQ_TX_VMDQ_DCB = 2

	alias RTE_ETH_MQ_TX_VMDQ_ONLY = 3

struct rte_eth_rxmode(Copyable & Movable):

	var mq_mode : rte_eth_rx_mq_mode

	var mtu : UInt32

	var max_lro_pkt_size : UInt32

	var offloads : ffi.c_ulong

	var reserved_64s : InlineArray[ffi.c_ulong_long, 2]

	var reserved_ptrs : InlineArray[OpaquePointer, 2]

struct rte_vlan_type(Copyable & Movable):

	alias RTE_ETH_VLAN_TYPE_UNKNOWN = 0

	alias RTE_ETH_VLAN_TYPE_INNER = 1

	alias RTE_ETH_VLAN_TYPE_OUTER = 2

	alias RTE_ETH_VLAN_TYPE_MAX = 3

struct rte_vlan_filter_conf(Copyable & Movable):

	var ids : InlineArray[ffi.c_ulong_long, 64]

struct rte_eth_hash_function(Copyable & Movable):

	alias RTE_ETH_HASH_FUNCTION_DEFAULT = 0

	alias RTE_ETH_HASH_FUNCTION_TOEPLITZ = 1

	alias RTE_ETH_HASH_FUNCTION_SIMPLE_XOR = 2

	alias RTE_ETH_HASH_FUNCTION_SYMMETRIC_TOEPLITZ = 3

	alias RTE_ETH_HASH_FUNCTION_SYMMETRIC_TOEPLITZ_SORT = 4

	alias RTE_ETH_HASH_FUNCTION_MAX = 5

struct rte_eth_rss_conf(Copyable & Movable):

	var rss_key : UnsafePointer[UInt8]

	var rss_key_len : UInt8

	var rss_hf : ffi.c_ulong

	var algorithm : rte_eth_hash_function

alias rte_eth_rss_hf_refine = fn (ffi.c_ulong) -> ffi.c_ulong
struct rte_eth_rss_reta_entry64(Copyable & Movable):

	var mask : ffi.c_ulong

	var reta : InlineArray[UInt16, 64]

struct rte_eth_nb_tcs(Copyable & Movable):

	alias RTE_ETH_4_TCS = 4

	alias RTE_ETH_8_TCS = 8

struct rte_eth_nb_pools(Copyable & Movable):

	alias RTE_ETH_8_POOLS = 8

	alias RTE_ETH_16_POOLS = 16

	alias RTE_ETH_32_POOLS = 32

	alias RTE_ETH_64_POOLS = 64

struct rte_eth_dcb_rx_conf(Copyable & Movable):

	var nb_tcs : rte_eth_nb_tcs

	var dcb_tc : InlineArray[UInt8, 8]

struct rte_eth_vmdq_dcb_tx_conf(Copyable & Movable):
	var nb_queue_pools : rte_eth_nb_pools

	var dcb_tc : InlineArray[UInt8, 8]

struct rte_eth_dcb_tx_conf(Copyable & Movable):
	var nb_tcs : rte_eth_nb_tcs

	var dcb_tc : InlineArray[UInt8, 8]

struct rte_eth_vmdq_tx_conf(Copyable & Movable):
	var nb_queue_pools : rte_eth_nb_pools

struct anonomous_record_124(Copyable & Movable):
	var vlan_id : UInt16

	var pools : ffi.c_ulong

struct rte_eth_vmdq_dcb_conf(Copyable & Movable):

	var nb_queue_pools : rte_eth_nb_pools

	var enable_default_pool : UInt8

	var default_pool : UInt8

	var nb_pool_maps : UInt8

	var pool_map : anonomous_record_124

	var dcb_tc : InlineArray[UInt8, 8]

struct anonomous_record_125(Copyable & Movable):
	var vlan_id : UInt16

	var pools : ffi.c_ulong

struct rte_eth_vmdq_rx_conf(Copyable & Movable):

	var nb_queue_pools : rte_eth_nb_pools

	var enable_default_pool : UInt8

	var default_pool : UInt8

	var enable_loop_back : UInt8

	var nb_pool_maps : UInt8

	var rx_mode : UInt32

	var pool_map : anonomous_record_125

struct rte_eth_txmode(Copyable & Movable):

	var mq_mode : rte_eth_tx_mq_mode

	var offloads : ffi.c_ulong

	var pvid : UInt16

	var hw_vlan_reject_tagged : UInt8

	var hw_vlan_reject_untagged : UInt8

	var hw_vlan_insert_pvid : UInt8

	var reserved_64s : InlineArray[ffi.c_ulong_long, 2]

	var reserved_ptrs : InlineArray[OpaquePointer, 2]

struct rte_mempool(Copyable & Movable):
	pass
struct rte_eth_rxseg_split(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0xff4cd0","kind":"InlineCommandComment","loc":{"col":4,"offset":38980,"tokLen":1},"name":"b","range":{"begin":{"col":4,"offset":38980,"tokLen":1},"end":{"col":5,"offset":38981,"tokLen":1}},"renderKind":"bold"}

	var mp : rte_mempool

	var length : UInt16

	var offset : UInt16

	var proto_hdr : UInt32

alias rte_eth_rxseg = C_Union[rte_eth_rxseg_split]
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0xff5c10","kind":"InlineCommandComment","loc":{"col":4,"offset":42508,"tokLen":1},"name":"b","range":{"begin":{"col":4,"offset":42508,"tokLen":1},"end":{"col":5,"offset":42509,"tokLen":1}},"renderKind":"bold"}

struct rte_eth_rxconf(Copyable & Movable):

	var rx_thresh : rte_eth_thresh

	var rx_free_thresh : UInt16

	var rx_drop_en : UInt8

	var rx_deferred_start : UInt8

	var rx_nseg : UInt16

	var share_group : UInt16

	var share_qid : UInt16

	var offloads : ffi.c_ulong

	var rx_seg : UnsafePointer[union rte_eth_rxseg]

	var rx_mempools : UnsafePointer[UnsafePointer[rte_mempool]]

	var rx_nmempool : UInt16

	var reserved_64s : InlineArray[ffi.c_ulong_long, 2]

	var reserved_ptrs : InlineArray[OpaquePointer, 2]

struct rte_eth_txconf(Copyable & Movable):

	var tx_thresh : rte_eth_thresh

	var tx_rs_thresh : UInt16

	var tx_free_thresh : UInt16

	var tx_deferred_start : UInt8

	var offloads : ffi.c_ulong

	var reserved_64s : InlineArray[ffi.c_ulong_long, 2]

	var reserved_ptrs : InlineArray[OpaquePointer, 2]

struct rte_eth_hairpin_queue_cap(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0xff7480","kind":"InlineCommandComment","loc":{"col":4,"offset":45917,"tokLen":1},"name":"b","range":{"begin":{"col":4,"offset":45917,"tokLen":1},"end":{"col":5,"offset":45918,"tokLen":1}},"renderKind":"bold"}

	var locked_device_memory : UInt32

	var rte_memory : UInt32

	var reserved : UInt32

struct rte_eth_hairpin_cap(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0xff7960","kind":"InlineCommandComment","loc":{"col":4,"offset":46467,"tokLen":1},"name":"b","range":{"begin":{"col":4,"offset":46467,"tokLen":1},"end":{"col":5,"offset":46468,"tokLen":1}},"renderKind":"bold"}

	var max_nb_queues : UInt16

	var max_rx_2_tx : UInt16

	var max_tx_2_rx : UInt16

	var max_nb_desc : UInt16

	var rx_cap : rte_eth_hairpin_queue_cap

	var tx_cap : rte_eth_hairpin_queue_cap

struct rte_eth_hairpin_peer(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0xff80a0","kind":"InlineCommandComment","loc":{"col":4,"offset":47198,"tokLen":1},"name":"b","range":{"begin":{"col":4,"offset":47198,"tokLen":1},"end":{"col":5,"offset":47199,"tokLen":1}},"renderKind":"bold"}

	var port : UInt16

	var queue : UInt16

struct rte_eth_hairpin_conf(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0xff8470","kind":"InlineCommandComment","loc":{"col":4,"offset":47451,"tokLen":1},"name":"b","range":{"begin":{"col":4,"offset":47451,"tokLen":1},"end":{"col":5,"offset":47452,"tokLen":1}},"renderKind":"bold"}

	var peer_count : UInt32

	var tx_explicit : UInt32

	var manual_bind : UInt32

	var use_locked_device_memory : UInt32

	var use_rte_memory : UInt32

	var force_memory : UInt32

	var reserved : UInt32

	var peers : InlineArray[rte_eth_hairpin_peer, 32]

struct rte_eth_desc_lim(Copyable & Movable):

	var nb_max : UInt16

	var nb_min : UInt16

	var nb_align : UInt16

	var nb_seg_max : UInt16

	var nb_mtu_seg_max : UInt16

struct rte_eth_fc_mode(Copyable & Movable):

	alias RTE_ETH_FC_NONE = 0

	alias RTE_ETH_FC_RX_PAUSE = 1

	alias RTE_ETH_FC_TX_PAUSE = 2

	alias RTE_ETH_FC_FULL = 3

struct rte_eth_fc_conf(Copyable & Movable):

	var high_water : UInt32

	var low_water : UInt32

	var pause_time : UInt16

	var send_xon : UInt16

	var mode : rte_eth_fc_mode

	var mac_ctrl_frame_fwd : UInt8

	var autoneg : UInt8

struct rte_eth_pfc_conf(Copyable & Movable):

	var fc : rte_eth_fc_conf

	var priority : UInt8

struct rte_eth_pfc_queue_info(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0xffa890","kind":"InlineCommandComment","loc":{"col":4,"offset":52235,"tokLen":1},"name":"b","range":{"begin":{"col":4,"offset":52235,"tokLen":1},"end":{"col":5,"offset":52236,"tokLen":1}},"renderKind":"bold"}

	var tc_max : UInt8

	var mode_capa : rte_eth_fc_mode

struct anonomous_record_127(Copyable & Movable):
	var pause_time : UInt16

	var rx_qid : UInt16

	var tc : UInt8

struct anonomous_record_126(Copyable & Movable):
	var tx_qid : UInt16

	var tc : UInt8

struct rte_eth_pfc_queue_conf(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0xffac60","kind":"InlineCommandComment","loc":{"col":4,"offset":52605,"tokLen":1},"name":"b","range":{"begin":{"col":4,"offset":52605,"tokLen":1},"end":{"col":5,"offset":52606,"tokLen":1}},"renderKind":"bold"}

	var mode : rte_eth_fc_mode

	var rx_pause : anonomous_record_126

	var tx_pause : anonomous_record_127

struct rte_eth_tunnel_type(Copyable & Movable):
# 
	alias RTE_ETH_TUNNEL_TYPE_NONE = 0

	alias RTE_ETH_TUNNEL_TYPE_VXLAN = 1

	alias RTE_ETH_TUNNEL_TYPE_GENEVE = 2

	alias RTE_ETH_TUNNEL_TYPE_TEREDO = 3

	alias RTE_ETH_TUNNEL_TYPE_NVGRE = 4

	alias RTE_ETH_TUNNEL_TYPE_IP_IN_GRE = 5

	alias RTE_ETH_L2_TUNNEL_TYPE_E_TAG = 6

	alias RTE_ETH_TUNNEL_TYPE_VXLAN_GPE = 7

	alias RTE_ETH_TUNNEL_TYPE_ECPRI = 8

	alias RTE_ETH_TUNNEL_TYPE_MAX = 9

alias rte_srand = fn (ffi.c_ulong) -> NoneType
alias rte_rand = fn () -> ffi.c_ulong
alias rte_rand_max = fn (ffi.c_ulong) -> ffi.c_ulong
alias rte_drand = fn () -> Float64
alias __errno_location = fn () -> UnsafePointer[Int32]
struct anonomous_record_128(Copyable & Movable):
	var cnt : Int32

alias rte_rwlock_t = anonomous_record_128

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
alias anonomous_record_129 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memseg(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xbeae78","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/eal/include/rte_memory.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring_core.h"},"line":61,"offset":1680,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/eal/include/rte_memory.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring_core.h"},"line":61,"offset":1680,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var iova : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_129



	var len : ffi.c_ulong

	var hugepage_sz : ffi.c_ulong

	var socket_id : Int32

	var nchannel : UInt32

	var nrank : UInt32

	var flags : UInt32

alias anonomous_record_130 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memseg_list(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_130



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
alias anonomous_record_131 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memzone(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xbf3158","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/eal/include/rte_memzone.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring_core.h"},"line":65,"offset":2366,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/eal/include/rte_memzone.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring_core.h"},"line":65,"offset":2366,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var name : InlineArray[Int8, 32]

	var iova : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_131



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

alias anonomous_record_132 = C_Union[rte_ring_sync_type, UInt32]

struct rte_ring_headtail(Copyable & Movable):

	var head : UInt32

	var tail : UInt32

	var union_placeholder_1 : anonomous_record_132



struct anonomous_record_133(Copyable & Movable):
	var cnt : UInt32

	var pos : UInt32

alias __rte_ring_rts_poscnt = C_Union[ffi.c_ulong, anonomous_record_133]

struct rte_ring_rts_headtail(Copyable & Movable):
	var tail : union __rte_ring_rts_poscnt

	var sync_type : rte_ring_sync_type

	var htd_max : UInt32

	var head : union __rte_ring_rts_poscnt

struct anonomous_record_134(Copyable & Movable):
	var head : UInt32

	var tail : UInt32

alias __rte_ring_hts_pos = C_Union[ffi.c_ulong, anonomous_record_134]

struct rte_ring_hts_headtail(Copyable & Movable):
	var ht : union __rte_ring_hts_pos

	var sync_type : rte_ring_sync_type

alias anonomous_record_136 = C_Union[rte_ring_headtail, rte_ring_hts_headtail, rte_ring_rts_headtail]
# Alignment: 128 

alias anonomous_record_135 = C_Union[rte_ring_headtail, rte_ring_hts_headtail, rte_ring_rts_headtail]
# Alignment: 128 

struct rte_ring(Copyable & Movable):

	var name : InlineArray[Int8, 29]

	var flags : Int32

	var memzone : UnsafePointer[rte_memzone]

	var size : UInt32

	var mask : UInt32

	var capacity : UInt32

	var cache_guard_0 : InlineArray[Int8, 128]

	var union_placeholder_1 : anonomous_record_135




	var cache_guard_1 : InlineArray[Int8, 128]

	var union_placeholder_2 : anonomous_record_136




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

struct anonomous_record_137(Copyable & Movable):
	var stqe_next : UnsafePointer[rte_mempool_objhdr]

struct rte_mempool_objhdr(Copyable & Movable):

	var next : anonomous_record_137

	var mp : UnsafePointer[rte_mempool]

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

struct anonomous_record_138(Copyable & Movable):
	var stqe_next : UnsafePointer[rte_mempool_memhdr]

struct rte_mempool_info(Copyable & Movable):
# Alignment: 128 


	var contig_block_size : UInt32

alias anonomous_record_139 = C_Union[OpaquePointer, ffi.c_ulong]

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

struct anonomous_record_140(Copyable & Movable):
	var data_off : UInt16

	var refcnt : UInt16

	var nb_segs : UInt16

	var port : UInt16

struct anonomous_record_142(Copyable & Movable):
	var inner_l2_type : UInt8

	var inner_l3_type : UInt8

alias anonomous_record_143 = C_Union[UInt8, anonomous_record_142, , ]

struct anonomous_record_144(Copyable & Movable):
	var l2_type : UInt8

	var l3_type : UInt8

	var l4_type : UInt8

	var tun_type : UInt8

	var union_placeholder_1 : anonomous_record_143




	var inner_l4_type : UInt8

struct anonomous_record_146(Copyable & Movable):
	var hash : UInt16

	var id : UInt16

alias anonomous_record_147 = C_Union[anonomous_record_146, , , UInt32]

struct anonomous_record_149(Copyable & Movable):
	var reserved1 : UInt32

	var reserved2 : UInt16

	var txq : UInt16

struct anonomous_record_148(Copyable & Movable):
	var union_placeholder_1 : anonomous_record_147




	var hi : UInt32

alias anonomous_record_150 = C_Union[UInt32, anonomous_record_148, rte_mbuf_sched, anonomous_record_149, UInt32]

alias anonomous_record_151 = C_Union[anonomous_record_150]

alias anonomous_record_145 = C_Union[UInt32, anonomous_record_144, , , , , , , , ]

struct anonomous_record_152(Copyable & Movable):
	var union_placeholder_1 : anonomous_record_145










	var pkt_len : UInt32

	var data_len : UInt16

	var vlan_tci : UInt16

	var union_placeholder_2 : anonomous_record_151


	var vlan_tci_outer : UInt16

	var buf_len : UInt16

struct anonomous_record_154(Copyable & Movable):
	var l2_len : ffi.c_ulong

	var l3_len : ffi.c_ulong

	var l4_len : ffi.c_ulong

	var tso_segsz : ffi.c_ulong

	var outer_l3_len : ffi.c_ulong

	var outer_l2_len : ffi.c_ulong

struct rte_mbuf_ext_shared_info(Copyable & Movable):
	pass
alias anonomous_record_155 = C_Union[ffi.c_ulong, anonomous_record_154, , , , , , ]

alias anonomous_record_153 = C_Union[InlineArray[OpaquePointer, 3], anonomous_record_152, , , , , , , , , , , , , , , ]

alias anonomous_record_141 = C_Union[InlineArray[ffi.c_ulong_long, 1], anonomous_record_140, , , , ]

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
struct rte_ether_addr(Copyable & Movable):
# Alignment: 2 


	var addr_bytes : InlineArray[UInt8, 6]

# # Node: PlaceHolder()
# {"id":"0xd48128","inner":[{"castKind":"IntegralToBoolean","id":"0xd48098","inner":[{"id":"0xd47ff8","inner":[{"argType":{"desugaredQualType":"struct rte_ether_addr","qualType":"struct rte_ether_addr"},"id":"0xd47fa0","kind":"UnaryExprOrTypeTraitExpr","name":"sizeof","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2730,"tokLen":6},"end":{"col":43,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2758,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"},{"castKind":"IntegralCast","id":"0xd47fe0","inner":[{"id":"0xd47fc0","kind":"IntegerLiteral","range":{"begin":{"col":48,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2763,"tokLen":1},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2763,"tokLen":1}},"type":{"qualType":"int"},"value":"6","valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":48,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2763,"tokLen":1},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2763,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"}],"kind":"BinaryOperator","opcode":"==","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2730,"tokLen":6},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2763,"tokLen":1}},"type":{"qualType":"int"},"valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":80,"offset":2730,"tokLen":6},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2763,"tokLen":1}},"type":{"qualType":"bool"},"valueCategory":"prvalue"},{"id":"0xd48058","kind":"StringLiteral","range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":81,"offset":2768,"tokLen":36},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2768,"tokLen":36}},"type":{"qualType":"char[35]"},"value":"\"sizeof(struct rte_ether_addr) == 6\"","valueCategory":"lvalue"}],"kind":"StaticAssertDecl","loc":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":80,"offset":2716,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"range":{"begin":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":80,"offset":2716,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"end":{"col":39,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":81,"offset":2804,"tokLen":1}}}
# # Node: PlaceHolder()
# {"id":"0xd48340","inner":[{"castKind":"IntegralToBoolean","id":"0xd48308","inner":[{"id":"0xd481e0","inner":[{"argType":{"desugaredQualType":"struct rte_ether_addr","qualType":"struct rte_ether_addr"},"id":"0xd48188","kind":"UnaryExprOrTypeTraitExpr","name":"alignof","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":82,"offset":2821,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":44,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2850,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"},{"castKind":"IntegralCast","id":"0xd481c8","inner":[{"id":"0xd481a8","kind":"IntegerLiteral","range":{"begin":{"col":49,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2855,"tokLen":1},"end":{"col":49,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2855,"tokLen":1}},"type":{"qualType":"int"},"value":"2","valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":49,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2855,"tokLen":1},"end":{"col":49,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2855,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"}],"kind":"BinaryOperator","opcode":"==","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":82,"offset":2821,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":49,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2855,"tokLen":1}},"type":{"qualType":"int"},"valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":82,"offset":2821,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":49,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2855,"tokLen":1}},"type":{"qualType":"bool"},"valueCategory":"prvalue"},{"id":"0xd48238","kind":"StringLiteral","range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":83,"offset":2860,"tokLen":37},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":2860,"tokLen":37}},"type":{"qualType":"char[36]"},"value":"\"alignof(struct rte_ether_addr) == 2\"","valueCategory":"lvalue"}],"kind":"StaticAssertDecl","loc":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":82,"offset":2807,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"range":{"begin":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":82,"offset":2807,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"end":{"col":40,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":83,"offset":2897,"tokLen":1}}}
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
# {"id":"0xd4f5f8","inner":[{"castKind":"IntegralToBoolean","id":"0xd4f558","inner":[{"id":"0xd4f4f8","inner":[{"argType":{"desugaredQualType":"struct rte_ether_hdr","qualType":"struct rte_ether_hdr"},"id":"0xd4f4a0","kind":"UnaryExprOrTypeTraitExpr","name":"sizeof","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9215,"tokLen":6},"end":{"col":42,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9242,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"},{"castKind":"IntegralCast","id":"0xd4f4e0","inner":[{"id":"0xd4f4c0","kind":"IntegerLiteral","range":{"begin":{"col":47,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9247,"tokLen":2},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9247,"tokLen":2}},"type":{"qualType":"int"},"value":"14","valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":47,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9247,"tokLen":2},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9247,"tokLen":2}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"}],"kind":"BinaryOperator","opcode":"==","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9215,"tokLen":6},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9247,"tokLen":2}},"type":{"qualType":"int"},"valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":306,"offset":9215,"tokLen":6},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9247,"tokLen":2}},"type":{"qualType":"bool"},"valueCategory":"prvalue"},{"id":"0xd4f518","kind":"StringLiteral","range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":307,"offset":9253,"tokLen":36},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9253,"tokLen":36}},"type":{"qualType":"char[35]"},"value":"\"sizeof(struct rte_ether_hdr) == 14\"","valueCategory":"lvalue"}],"kind":"StaticAssertDecl","loc":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":306,"offset":9201,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"range":{"begin":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":306,"offset":9201,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"end":{"col":39,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":307,"offset":9289,"tokLen":1}}}
# # Node: PlaceHolder()
# {"id":"0xd4f770","inner":[{"castKind":"IntegralToBoolean","id":"0xd4f738","inner":[{"id":"0xd4f6b0","inner":[{"argType":{"desugaredQualType":"struct rte_ether_hdr","qualType":"struct rte_ether_hdr"},"id":"0xd4f658","kind":"UnaryExprOrTypeTraitExpr","name":"alignof","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":308,"offset":9306,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":43,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9334,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"},{"castKind":"IntegralCast","id":"0xd4f698","inner":[{"id":"0xd4f678","kind":"IntegerLiteral","range":{"begin":{"col":48,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9339,"tokLen":1},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9339,"tokLen":1}},"type":{"qualType":"int"},"value":"2","valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":48,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9339,"tokLen":1},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9339,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"}],"kind":"BinaryOperator","opcode":"==","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":308,"offset":9306,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9339,"tokLen":1}},"type":{"qualType":"int"},"valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":308,"offset":9306,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9339,"tokLen":1}},"type":{"qualType":"bool"},"valueCategory":"prvalue"},{"id":"0xd4f6d0","kind":"StringLiteral","range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":309,"offset":9344,"tokLen":36},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9344,"tokLen":36}},"type":{"qualType":"char[35]"},"value":"\"alignof(struct rte_ether_hdr) == 2\"","valueCategory":"lvalue"}],"kind":"StaticAssertDecl","loc":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":308,"offset":9292,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"range":{"begin":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":308,"offset":9292,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"end":{"col":39,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":309,"offset":9380,"tokLen":1}}}
struct rte_vlan_hdr(Copyable & Movable):

	var vlan_tci : UInt16

	var eth_proto : UInt16

# # Node: PlaceHolder()
# {"id":"0xd4fb48","inner":[{"castKind":"IntegralToBoolean","id":"0xd4fab0","inner":[{"id":"0xd4fa18","inner":[{"argType":{"desugaredQualType":"struct rte_vlan_hdr","qualType":"struct rte_vlan_hdr"},"id":"0xd4f9c0","kind":"UnaryExprOrTypeTraitExpr","name":"sizeof","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9705,"tokLen":6},"end":{"col":41,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9731,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"},{"castKind":"IntegralCast","id":"0xd4fa00","inner":[{"id":"0xd4f9e0","kind":"IntegerLiteral","range":{"begin":{"col":46,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9736,"tokLen":1},"end":{"col":46,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9736,"tokLen":1}},"type":{"qualType":"int"},"value":"4","valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":46,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9736,"tokLen":1},"end":{"col":46,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9736,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"}],"kind":"BinaryOperator","opcode":"==","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9705,"tokLen":6},"end":{"col":46,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9736,"tokLen":1}},"type":{"qualType":"int"},"valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":15,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":321,"offset":9705,"tokLen":6},"end":{"col":46,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9736,"tokLen":1}},"type":{"qualType":"bool"},"valueCategory":"prvalue"},{"id":"0xd4fa78","kind":"StringLiteral","range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":322,"offset":9741,"tokLen":34},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9741,"tokLen":34}},"type":{"qualType":"char[33]"},"value":"\"sizeof(struct rte_vlan_hdr) == 4\"","valueCategory":"lvalue"}],"kind":"StaticAssertDecl","loc":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":321,"offset":9691,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"range":{"begin":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":321,"offset":9691,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"end":{"col":37,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":322,"offset":9775,"tokLen":1}}}
# # Node: PlaceHolder()
# {"id":"0xd500c0","inner":[{"castKind":"IntegralToBoolean","id":"0xd50088","inner":[{"id":"0xd4fc00","inner":[{"argType":{"desugaredQualType":"struct rte_vlan_hdr","qualType":"struct rte_vlan_hdr"},"id":"0xd4fba8","kind":"UnaryExprOrTypeTraitExpr","name":"alignof","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":323,"offset":9792,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":42,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9819,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"},{"castKind":"IntegralCast","id":"0xd4fbe8","inner":[{"id":"0xd4fbc8","kind":"IntegerLiteral","range":{"begin":{"col":47,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9824,"tokLen":1},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9824,"tokLen":1}},"type":{"qualType":"int"},"value":"2","valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"col":47,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9824,"tokLen":1},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9824,"tokLen":1}},"type":{"qualType":"unsigned long"},"valueCategory":"prvalue"}],"kind":"BinaryOperator","opcode":"==","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":323,"offset":9792,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9824,"tokLen":1}},"type":{"qualType":"int"},"valueCategory":"prvalue"}],"kind":"ImplicitCastExpr","range":{"begin":{"expansionLoc":{"col":15,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":323,"offset":9792,"tokLen":7},"spellingLoc":{"col":17,"file":"/usr/lib/llvm-14/lib/clang/14.0.0/include/stdalign.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_common.h"},"line":15,"offset":477,"tokLen":8}},"end":{"col":47,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9824,"tokLen":1}},"type":{"qualType":"bool"},"valueCategory":"prvalue"},{"id":"0xd4fc58","kind":"StringLiteral","range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":324,"offset":9829,"tokLen":35},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":9829,"tokLen":35}},"type":{"qualType":"char[34]"},"value":"\"alignof(struct rte_vlan_hdr) == 2\"","valueCategory":"lvalue"}],"kind":"StaticAssertDecl","loc":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":323,"offset":9778,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"range":{"begin":{"expansionLoc":{"col":1,"file":"dpdk/lib/net/rte_ether.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":323,"offset":9778,"tokLen":13},"spellingLoc":{"col":24,"file":"/usr/include/assert.h","includedFrom":{"file":"dpdk/lib/net/rte_ether.h"},"line":143,"offset":4621,"tokLen":14}},"end":{"col":38,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":324,"offset":9864,"tokLen":1}}}
alias rte_vlan_strip = fn (UnsafePointer[rte_mbuf]) -> Int32
alias __builtin_bswap16 = fn (UInt16) -> UInt16
alias rte_vlan_insert = fn (UnsafePointer[UnsafePointer[rte_mbuf]]) -> Int32
struct rte_arp_ipv4(Copyable & Movable):
# Alignment: 2 

	# # Node: PlaceHolder()
	# {"id":"0xd5bea8","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_arp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":29,"offset":591,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_arp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":29,"offset":591,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var arp_sha : rte_ether_addr

	var arp_sip : UInt32

	var arp_tha : rte_ether_addr

	var arp_tip : UInt32

struct rte_arp_hdr(Copyable & Movable):
# Alignment: 2 

	# # Node: PlaceHolder()
	# {"id":"0xd5c500","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_arp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":50,"offset":1513,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_arp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":50,"offset":1513,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var arp_hardware : UInt16

	var arp_protocol : UInt16

	var arp_hlen : UInt8

	var arp_plen : UInt8

	var arp_opcode : UInt16

	var arp_data : rte_arp_ipv4

alias rte_net_make_rarp_packet = fn (UnsafePointer[rte_mempool], UnsafePointer[rte_ether_addr]) -> UnsafePointer[rte_mbuf]
struct rte_icmp_base_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xd5ca70","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_icmp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":28,"offset":459,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_icmp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":28,"offset":459,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var type : UInt8

	var code : UInt8

	var checksum : UInt16

struct rte_icmp_echo_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xd5cd00","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_icmp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":37,"offset":632,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_icmp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":37,"offset":632,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var base : rte_icmp_base_hdr

	var identifier : UInt16

	var sequence : UInt16

struct rte_icmp_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xd5ee98","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_icmp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":50,"offset":1030,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_icmp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":50,"offset":1030,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}

# 
	var icmp_type : UInt8

	var icmp_code : UInt8

	var icmp_cksum : UInt16

	var icmp_ident : UInt16

	var icmp_seq_nb : UInt16

struct iovec(Copyable & Movable):
	var iov_base : OpaquePointer

	var iov_len : ffi.c_ulong

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

struct anonomous_record_156(Copyable & Movable):
	var __val : InlineArray[ffi.c_ulong, 16]

alias __sigset_t = anonomous_record_156

alias sigset_t = __sigset_t
struct timeval(Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_usec : ffi.c_long

alias suseconds_t = __suseconds_t
alias __fd_mask = ffi.c_long
struct anonomous_record_157(Copyable & Movable):
	var __fds_bits : InlineArray[__fd_mask, 16]

alias fd_set = anonomous_record_157

alias fd_mask = __fd_mask
alias select = fn (Int32, UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[timeval]) -> Int32
alias pselect = fn (Int32, UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[timespec], UnsafePointer[__sigset_t]) -> Int32
alias blksize_t = __blksize_t
alias blkcnt_t = __blkcnt_t
alias fsblkcnt_t = __fsblkcnt_t
alias fsfilcnt_t = __fsfilcnt_t
struct anonomous_record_158(Copyable & Movable):
	var __low : UInt32

	var __high : UInt32

alias anonomous_record_159 = C_Union[ffi.c_ulong_long, anonomous_record_158]

alias __atomic_wide_counter = anonomous_record_159

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
struct anonomous_record_160(Copyable & Movable):
	var __data : Int32

alias __once_flag = anonomous_record_160

alias pthread_t = ffi.c_ulong
alias anonomous_record_161 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_mutexattr_t = anonomous_record_161

alias anonomous_record_162 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_condattr_t = anonomous_record_162

alias pthread_key_t = UInt32
alias pthread_once_t = Int32
alias pthread_attr_t = C_Union[InlineArray[Int8, 64], ffi.c_long]

alias anonomous_record_163 = C_Union[__pthread_mutex_s, InlineArray[Int8, 48], ffi.c_long]

alias pthread_mutex_t = anonomous_record_163

alias anonomous_record_164 = C_Union[__pthread_cond_s, InlineArray[Int8, 48], ffi.c_long_long]

alias pthread_cond_t = anonomous_record_164

alias anonomous_record_165 = C_Union[__pthread_rwlock_arch_t, InlineArray[Int8, 56], ffi.c_long]

alias pthread_rwlock_t = anonomous_record_165

alias anonomous_record_166 = C_Union[InlineArray[Int8, 8], ffi.c_long]

alias pthread_rwlockattr_t = anonomous_record_166

alias pthread_spinlock_t = Int32
alias anonomous_record_167 = C_Union[InlineArray[Int8, 32], ffi.c_long]

alias pthread_barrier_t = anonomous_record_167

alias anonomous_record_168 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_barrierattr_t = anonomous_record_168

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

struct anonomous_record_169(Copyable & Movable):
	var fds_bits : InlineArray[ffi.c_ulong, 16]

alias __kernel_fd_set = anonomous_record_169

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
struct anonomous_record_170(Copyable & Movable):
	var val : InlineArray[Int32, 2]

alias __kernel_fsid_t = anonomous_record_170

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

alias anonomous_record_171 = C_Union[InlineArray[UInt8, 16], InlineArray[UInt16, 8], InlineArray[ffi.c_ulong, 4]]

struct in6_addr(Copyable & Movable):
	var __in6_u : anonomous_record_171

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

alias anonomous_record_172 = C_Union[ip6_hdrctl, UInt8]

struct ip6_hdr(Copyable & Movable):
	var ip6_ctlun : anonomous_record_172

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
struct anonomous_record_173(Copyable & Movable):
	var ihl : UInt8

	var version : UInt8

alias anonomous_record_174 = C_Union[UInt8, anonomous_record_173, , ]

struct rte_ipv4_hdr(Copyable & Movable):
# Alignment: 2 

	# # Node: PlaceHolder()
	# {"id":"0xe0e4a8","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_ip4.h","includedFrom":{"file":"dpdk/lib/net/rte_ip.h"},"line":65,"offset":1544,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_ip4.h","includedFrom":{"file":"dpdk/lib/net/rte_ip.h"},"line":65,"offset":1544,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var union_placeholder_1 : anonomous_record_174




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
struct anonomous_record_175(Copyable & Movable):
	var flow_label : UInt32

	var ecn : UInt32

	var ds : UInt32

	var version : UInt32

alias anonomous_record_176 = C_Union[UInt32, anonomous_record_175, , , , ]

struct rte_ipv6_hdr(Copyable & Movable):
# Alignment: 2 

	# # Node: PlaceHolder()
	# {"id":"0xe34708","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_ip6.h","includedFrom":{"file":"dpdk/lib/net/rte_ip.h"},"line":487,"offset":12833,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_ip6.h","includedFrom":{"file":"dpdk/lib/net/rte_ip.h"},"line":487,"offset":12833,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var union_placeholder_1 : anonomous_record_176






	var payload_len : UInt16

	var proto : UInt8

	var hop_limits : UInt8

	var src_addr : rte_ipv6_addr

	var dst_addr : rte_ipv6_addr

alias rte_ipv6_check_version = fn (UnsafePointer[rte_ipv6_hdr]) -> Int32
struct anonomous_record_177(Copyable & Movable):
	var last_entry : UInt8

	var flag : UInt8

	var tag : UInt16

alias anonomous_record_178 = C_Union[UInt32, anonomous_record_177, , , ]

struct rte_ipv6_routing_ext(Copyable & Movable):
# Alignment: 2 

	# # Node: PlaceHolder()
	# {"id":"0xe35908","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_ip6.h","includedFrom":{"file":"dpdk/lib/net/rte_ip.h"},"line":526,"offset":13936,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_ip6.h","includedFrom":{"file":"dpdk/lib/net/rte_ip.h"},"line":526,"offset":13936,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var next_hdr : UInt8

	var hdr_len : UInt8

	var type : UInt8

	var segments_left : UInt8

	var union_placeholder_1 : anonomous_record_178





alias rte_ipv6_phdr_cksum = fn (UnsafePointer[rte_ipv6_hdr], ffi.c_ulong) -> UInt16
alias __rte_ipv6_udptcp_cksum = fn (UnsafePointer[rte_ipv6_hdr], OpaquePointer) -> UInt16
alias rte_ipv6_udptcp_cksum = fn (UnsafePointer[rte_ipv6_hdr], OpaquePointer) -> UInt16
alias __rte_ipv6_udptcp_cksum_mbuf = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_ipv6_hdr], UInt16) -> UInt16
alias rte_ipv6_udptcp_cksum_mbuf = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_ipv6_hdr], UInt16) -> UInt16
alias rte_ipv6_udptcp_cksum_verify = fn (UnsafePointer[rte_ipv6_hdr], OpaquePointer) -> Int32
alias rte_ipv6_udptcp_cksum_mbuf_verify = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_ipv6_hdr], UInt16) -> Int32
struct rte_ipv6_fragment_ext(Copyable & Movable):
# Alignment: 2 

	# # Node: PlaceHolder()
	# {"id":"0xe3ea38","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_ip6.h","includedFrom":{"file":"dpdk/lib/net/rte_ip.h"},"line":760,"offset":20634,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_ip6.h","includedFrom":{"file":"dpdk/lib/net/rte_ip.h"},"line":760,"offset":20634,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}

	var next_header : UInt8

	var reserved : UInt8

	var frag_data : UInt16

	var id : UInt32

alias rte_ipv6_get_next_ext = fn (UnsafePointer[UInt8], Int32, UnsafePointer[size_t]) -> Int32
struct rte_sctp_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xe3fc98","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_sctp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":29,"offset":582,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_sctp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":29,"offset":582,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var src_port : UInt16

	var dst_port : UInt16

	var tag : UInt32

	var cksum : UInt32

struct rte_tcp_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xe40358","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_tcp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":34,"offset":868,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_tcp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":34,"offset":868,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var src_port : UInt16

	var dst_port : UInt16

	var sent_seq : UInt32

	var recv_ack : UInt32

	var data_off : UInt8

	var tcp_flags : UInt8

	var rx_win : UInt16

	var cksum : UInt16

	var tcp_urp : UInt16

struct rte_udp_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xe408f8","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_udp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":29,"offset":618,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_udp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":29,"offset":618,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var src_port : UInt16

	var dst_port : UInt16

	var dgram_len : UInt16

	var dgram_cksum : UInt16

struct anonomous_record_179(Copyable & Movable):
					# # Node: PlaceHolder()
					# {"id":"0xe41340","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":7,"file":"dpdk/lib/net/rte_vxlan.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":54,"offset":1368,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":7,"file":"dpdk/lib/net/rte_vxlan.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":54,"offset":1368,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}

	var flag_o : UInt8

	var flag_b : UInt8

	var flag_p : UInt8

	var flag_i : UInt8

	var flag_ver : UInt8

	var flag_rsvd : UInt8

	var flag_g : UInt8

struct anonomous_record_181(Copyable & Movable):
							# # Node: PlaceHolder()
							# {"id":"0xe422d8","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":9,"file":"dpdk/lib/net/rte_vxlan.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":82,"offset":2232,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":9,"file":"dpdk/lib/net/rte_vxlan.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":82,"offset":2232,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}

	var rsvd0_gpe : UInt8

	var proto : UInt8

alias anonomous_record_182 = C_Union[UInt16, anonomous_record_181, , ]

struct anonomous_record_183(Copyable & Movable):
					# # Node: PlaceHolder()
					# {"id":"0xe48ad0","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":7,"file":"dpdk/lib/net/rte_vxlan.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":84,"offset":2264,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":7,"file":"dpdk/lib/net/rte_vxlan.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":84,"offset":2264,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}

	var rsvd0_gbp3 : UInt8

	var flag_a : UInt8

	var rsvd0_gbp2 : UInt8

	var flag_d : UInt8

	var rsvd0_gbp1 : UInt8

	var union_placeholder_1 : anonomous_record_182




alias anonomous_record_184 = C_Union[InlineArray[UInt8, 3], anonomous_record_183, , , , , , , , ]

alias anonomous_record_180 = C_Union[UInt8, anonomous_record_179, , , , , , , ]

struct anonomous_record_185(Copyable & Movable):
			# # Node: PlaceHolder()
			# {"id":"0xe492e8","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":5,"file":"dpdk/lib/net/rte_vxlan.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":86,"offset":2292,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":5,"file":"dpdk/lib/net/rte_vxlan.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":86,"offset":2292,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}

	var union_placeholder_1 : anonomous_record_180









	var union_placeholder_2 : anonomous_record_184










alias anonomous_record_187 = C_Union[UInt8, UInt8]

struct anonomous_record_188(Copyable & Movable):
			# # Node: PlaceHolder()
			# {"id":"0xe4aa68","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":5,"file":"dpdk/lib/net/rte_vxlan.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":96,"offset":2611,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":5,"file":"dpdk/lib/net/rte_vxlan.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":96,"offset":2611,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}

	var vni : InlineArray[UInt8, 3]

	var union_placeholder_1 : anonomous_record_187



alias anonomous_record_189 = C_Union[UInt32, anonomous_record_188, , , ]

alias anonomous_record_186 = C_Union[UInt32, anonomous_record_185, , , , , , , , , , , , , , , , , ]

struct rte_vxlan_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xe4aed8","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_vxlan.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":98,"offset":2664,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_vxlan.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":98,"offset":2664,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}

	var union_placeholder_1 : anonomous_record_186



















	var union_placeholder_2 : anonomous_record_189





struct anonomous_record_191(Copyable & Movable):
	var flags : UInt8

	var rsvd0 : InlineArray[UInt8, 2]

	var proto : UInt8

	var vni : InlineArray[UInt8, 3]

	var rsvd1 : UInt8

struct anonomous_record_190(Copyable & Movable):
	var vx_flags : UInt8

	var reserved : InlineArray[UInt8, 2]

	var protocol : UInt8

	var vx_vni : UInt32

alias anonomous_record_192 = C_Union[anonomous_record_190, , , , , anonomous_record_191, , , , , ]

struct rte_vxlan_gpe_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xe4c388","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_vxlan.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":130,"offset":3588,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_vxlan.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":130,"offset":3588,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}

	var union_placeholder_1 : anonomous_record_192










struct rte_esp_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xe4c8e8","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_esp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":22,"offset":369,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_esp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":22,"offset":369,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var spi : UInt32

	var seq : UInt32

struct rte_esp_tail(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xe4e228","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_esp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":30,"offset":576,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_esp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":30,"offset":576,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var pad_len : UInt8

	var next_proto : UInt8

struct rte_higig2_frc(Copyable & Movable):

	var ksop : UInt32

	var tc : UInt32

	var mcst : UInt32

	var resv : UInt32

	var dst_modid : UInt32

	var dst_pid : UInt32

	var src_modid : UInt32

	var src_pid : UInt32

	var lbid : UInt32

	var ppd_type : UInt32

	var resv1 : UInt32

	var dp : UInt32

struct rte_higig2_ppt_type0(Copyable & Movable):

	var mirror : UInt32

	var mirror_done : UInt32

	var mirror_only : UInt32

	var ingress_tagged : UInt32

	var dst_tgid : UInt32

	var dst_t : UInt32

	var vc_label2 : UInt32

	var label_present : UInt32

	var l3 : UInt32

	var res : UInt32

	var vc_label1 : UInt32

	var vc_label0 : UInt32

	var vid_high : UInt32

	var vid_low : UInt32

	var opc : UInt32

	var res1 : UInt32

	var srce_t : UInt32

	var pf : UInt32

	var res2 : UInt32

	var hdr_ext_length : UInt32

struct rte_higig2_ppt_type1(Copyable & Movable):

	var classification : UInt16

	var resv : UInt16

	var vid : UInt16

	var opcode : UInt16

	var resv1 : UInt16

	var src_t : UInt16

	var pfm : UInt16

	var resv2 : UInt16

	var hdr_ext_len : UInt16

alias anonomous_record_193 = C_Union[rte_higig2_ppt_type0, rte_higig2_ppt_type1]

struct rte_higig2_hdr(Copyable & Movable):

	var fcr : rte_higig2_frc

	var union_placeholder_1 : anonomous_record_193



struct anonomous_record_194(Copyable & Movable):
	var size : UInt32

	var type : UInt32

	var c : UInt32

	var res : UInt32

	var revision : UInt32

alias anonomous_record_195 = C_Union[UInt32, anonomous_record_194, , , , , ]

struct rte_ecpri_common_hdr(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_195







struct rte_ecpri_msg_iq_data(Copyable & Movable):

	var pc_id : UInt16

	var seq_id : UInt16

struct rte_ecpri_msg_bit_seq(Copyable & Movable):

	var pc_id : UInt16

	var seq_id : UInt16

struct rte_ecpri_msg_rtc_ctrl(Copyable & Movable):

	var rtc_id : UInt16

	var seq_id : UInt16

struct rte_ecpri_msg_gen_data(Copyable & Movable):

	var pc_id : UInt32

	var seq_id : UInt32

struct rte_ecpri_msg_rm_access(Copyable & Movable):

	var ele_id : UInt32

	var rr : UInt32

	var rw : UInt32

	var rma_id : UInt32

	var addr : InlineArray[UInt8, 6]

	var length : UInt16

struct rte_ecpri_msg_delay_measure(Copyable & Movable):

	var msr_id : UInt8

	var act_type : UInt8

struct rte_ecpri_msg_remote_reset(Copyable & Movable):

	var rst_id : UInt16

	var rst_op : UInt8

struct rte_ecpri_msg_event_ind(Copyable & Movable):

	var evt_id : UInt8

	var evt_type : UInt8

	var seq : UInt8

	var number : UInt8

alias anonomous_record_196 = C_Union[rte_ecpri_msg_iq_data, rte_ecpri_msg_bit_seq, rte_ecpri_msg_rtc_ctrl, rte_ecpri_msg_gen_data, rte_ecpri_msg_rm_access, rte_ecpri_msg_delay_measure, rte_ecpri_msg_remote_reset, rte_ecpri_msg_event_ind, InlineArray[rte_be32_t, 3]]

struct rte_ecpri_combined_msg_hdr(Copyable & Movable):

	var common : rte_ecpri_common_hdr

	var union_placeholder_1 : anonomous_record_196










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
struct anonomous_record_197(Copyable & Movable):
	var pn : UInt8

	var s : UInt8

	var e : UInt8

	var res1 : UInt8

	var pt : UInt8

	var ver : UInt8

alias anonomous_record_198 = C_Union[UInt8, anonomous_record_197, , , , , , ]

struct rte_gtp_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xe78278","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gtp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":51,"offset":1472,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gtp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":51,"offset":1472,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var union_placeholder_1 : anonomous_record_198








	var msg_type : UInt8

	var plen : UInt16

	var teid : UInt32

struct rte_gtp_hdr_ext_word(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xe78628","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gtp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":58,"offset":1762,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gtp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":58,"offset":1762,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var sqn : UInt16

	var npdu : UInt8

	var next_ext : UInt8

struct rte_gtp_psc_generic_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xe78cc8","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gtp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":81,"offset":2574,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gtp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":81,"offset":2574,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var ext_hdr_len : UInt8

	var pad : UInt8

	var qmp : UInt8

	var type : UInt8

	var qfi : UInt8

	var spare : UInt8

	var data : InlineArray[UInt8, 0]

struct rte_gtp_psc_type0_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xe79508","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gtp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":108,"offset":3589,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gtp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":108,"offset":3589,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var ext_hdr_len : UInt8

	var spare_dl1 : UInt8

	var snp : UInt8

	var qmp : UInt8

	var type : UInt8

	var qfi : UInt8

	var rqi : UInt8

	var ppp : UInt8

	var data : InlineArray[UInt8, 0]

struct rte_gtp_psc_type1_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xe79e18","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gtp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":137,"offset":4762,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gtp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":137,"offset":4762,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var ext_hdr_len : UInt8

	var snp : UInt8

	var ul_delay_ind : UInt8

	var dl_delay_ind : UInt8

	var qmp : UInt8

	var type : UInt8

	var qfi : UInt8

	var spare_ul2 : UInt8

	var n_delay_ind : UInt8

	var data : InlineArray[UInt8, 0]

struct anonomous_record_199(Copyable & Movable):
	var ver : UInt16

	var res3 : UInt16

	var p : UInt16

	var o : UInt16

	var res2 : UInt16

	var s : UInt16

	var res1 : UInt16

	var l : UInt16

	var t : UInt16

alias anonomous_record_200 = C_Union[UInt16, anonomous_record_199, , , , , , , , , ]

struct rte_l2tpv2_common_hdr(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_200











struct rte_l2tpv2_msg_with_all_options(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xe7b848","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_l2tpv2.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":136,"offset":4515,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_l2tpv2.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":136,"offset":4515,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var length : UInt16

	var tunnel_id : UInt16

	var session_id : UInt16

	var ns : UInt16

	var nr : UInt16

	var offset_size : UInt16

	var offset_padding : UnsafePointer[UInt8]

struct rte_l2tpv2_msg_without_length(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xb40248","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_l2tpv2.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":149,"offset":4981,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_l2tpv2.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":149,"offset":4981,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var tunnel_id : UInt16

	var session_id : UInt16

	var ns : UInt16

	var nr : UInt16

	var offset_size : UInt16

	var offset_padding : UnsafePointer[UInt8]

struct rte_l2tpv2_msg_without_ns_nr(Copyable & Movable):

	var length : UInt16

	var tunnel_id : UInt16

	var session_id : UInt16

	var offset_size : UInt16

	var offset_padding : UnsafePointer[UInt8]

struct rte_l2tpv2_msg_without_offset(Copyable & Movable):

	var length : UInt16

	var tunnel_id : UInt16

	var session_id : UInt16

	var ns : UInt16

	var nr : UInt16

struct rte_l2tpv2_msg_with_offset(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xb40ce8","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_l2tpv2.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":184,"offset":6163,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_l2tpv2.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":184,"offset":6163,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var tunnel_id : UInt16

	var session_id : UInt16

	var offset_size : UInt16

	var offset_padding : UnsafePointer[UInt8]

struct rte_l2tpv2_msg_with_ns_nr(Copyable & Movable):

	var tunnel_id : UInt16

	var session_id : UInt16

	var ns : UInt16

	var nr : UInt16

struct rte_l2tpv2_msg_with_length(Copyable & Movable):

	var length : UInt16

	var tunnel_id : UInt16

	var session_id : UInt16

struct rte_l2tpv2_msg_without_all_options(Copyable & Movable):

	var tunnel_id : UInt16

	var session_id : UInt16

alias anonomous_record_201 = C_Union[rte_l2tpv2_msg_with_all_options, rte_l2tpv2_msg_without_length, rte_l2tpv2_msg_without_ns_nr, rte_l2tpv2_msg_without_offset, rte_l2tpv2_msg_with_offset, rte_l2tpv2_msg_with_ns_nr, rte_l2tpv2_msg_with_length, rte_l2tpv2_msg_without_all_options]

struct rte_l2tpv2_combined_msg_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xb42178","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_l2tpv2.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":236,"offset":7753,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_l2tpv2.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":236,"offset":7753,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var common : rte_l2tpv2_common_hdr

	var union_placeholder_1 : anonomous_record_201









struct rte_ppp_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xb42538","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_ppp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":24,"offset":421,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_ppp.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":24,"offset":421,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var addr : UInt8

	var ctrl : UInt8

	var proto_id : UInt16

struct rte_gre_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xb42d28","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gre.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":45,"offset":1234,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gre.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":45,"offset":1234,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var res2 : UInt16

	var s : UInt16

	var k : UInt16

	var res1 : UInt16

	var c : UInt16

	var ver : UInt16

	var res3 : UInt16

	var proto : UInt16

struct rte_gre_hdr_opt_checksum_rsvd(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xb42f10","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gre.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":53,"offset":1407,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gre.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":53,"offset":1407,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var checksum : UInt16

	var reserved1 : UInt16

struct rte_gre_hdr_opt_key(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xb430a0","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gre.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":60,"offset":1537,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gre.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":60,"offset":1537,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var key : UInt32

struct rte_gre_hdr_opt_sequence(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xb43230","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gre.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":67,"offset":1682,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_gre.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":67,"offset":1682,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var sequence : UInt32

struct rte_macsec_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xb437c8","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_macsec.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":42,"offset":1330,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_macsec.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":42,"offset":1330,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var tci_an : UInt8

	var short_length : UInt8

	var unused : UInt8

	var packet_number : UInt32

struct rte_macsec_sci_hdr(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xb439f8","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_macsec.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":53,"offset":1656,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_macsec.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":53,"offset":1656,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var sci : InlineArray[UInt8, 8]

struct rte_ib_bth(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0xe9a748","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_ib.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":57,"offset":1565,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/net/rte_ib.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_flow.h"},"line":57,"offset":1565,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var opcode : UInt8

	var tver : UInt8

	var padcnt : UInt8

	var m : UInt8

	var se : UInt8

	var pkey : UInt16

	var rsvd0 : UInt8

	var b : UInt8

	var f : UInt8

	var dst_qp : InlineArray[UInt8, 3]

	var rsvd1 : UInt8

	var a : UInt8

	var psn : InlineArray[UInt8, 3]

struct rte_flow_attr(Copyable & Movable):

	var group : UInt32

	var priority : UInt32

	var ingress : UInt32

	var egress : UInt32

	var transfer : UInt32

	var reserved : UInt32

struct rte_flow_group_attr(Copyable & Movable):
	var ingress : UInt32

	var egress : UInt32

	var transfer : UInt32

struct rte_flow_item_type(Copyable & Movable):

	alias RTE_FLOW_ITEM_TYPE_END = 0

	alias RTE_FLOW_ITEM_TYPE_VOID = 1

	alias RTE_FLOW_ITEM_TYPE_INVERT = 2

	alias RTE_FLOW_ITEM_TYPE_ANY = 3

	alias RTE_FLOW_ITEM_TYPE_PORT_ID = 4

	alias RTE_FLOW_ITEM_TYPE_RAW = 5

	alias RTE_FLOW_ITEM_TYPE_ETH = 6

	alias RTE_FLOW_ITEM_TYPE_VLAN = 7

	alias RTE_FLOW_ITEM_TYPE_IPV4 = 8

	alias RTE_FLOW_ITEM_TYPE_IPV6 = 9

	alias RTE_FLOW_ITEM_TYPE_ICMP = 10

	alias RTE_FLOW_ITEM_TYPE_UDP = 11

	alias RTE_FLOW_ITEM_TYPE_TCP = 12

	alias RTE_FLOW_ITEM_TYPE_SCTP = 13

	alias RTE_FLOW_ITEM_TYPE_VXLAN = 14

	alias RTE_FLOW_ITEM_TYPE_E_TAG = 15

	alias RTE_FLOW_ITEM_TYPE_NVGRE = 16

	alias RTE_FLOW_ITEM_TYPE_MPLS = 17

	alias RTE_FLOW_ITEM_TYPE_GRE = 18

	alias RTE_FLOW_ITEM_TYPE_FUZZY = 19

	alias RTE_FLOW_ITEM_TYPE_GTP = 20

	alias RTE_FLOW_ITEM_TYPE_GTPC = 21

	alias RTE_FLOW_ITEM_TYPE_GTPU = 22

	alias RTE_FLOW_ITEM_TYPE_ESP = 23

	alias RTE_FLOW_ITEM_TYPE_GENEVE = 24

	alias RTE_FLOW_ITEM_TYPE_VXLAN_GPE = 25

	alias RTE_FLOW_ITEM_TYPE_ARP_ETH_IPV4 = 26

	alias RTE_FLOW_ITEM_TYPE_IPV6_EXT = 27

	alias RTE_FLOW_ITEM_TYPE_ICMP6 = 28

	alias RTE_FLOW_ITEM_TYPE_ICMP6_ND_NS = 29

	alias RTE_FLOW_ITEM_TYPE_ICMP6_ND_NA = 30

	alias RTE_FLOW_ITEM_TYPE_ICMP6_ND_OPT = 31

	alias RTE_FLOW_ITEM_TYPE_ICMP6_ND_OPT_SLA_ETH = 32

	alias RTE_FLOW_ITEM_TYPE_ICMP6_ND_OPT_TLA_ETH = 33

	alias RTE_FLOW_ITEM_TYPE_MARK = 34

	alias RTE_FLOW_ITEM_TYPE_META = 35

	alias RTE_FLOW_ITEM_TYPE_GRE_KEY = 36

	alias RTE_FLOW_ITEM_TYPE_GTP_PSC = 37

	alias RTE_FLOW_ITEM_TYPE_PPPOES = 38

	alias RTE_FLOW_ITEM_TYPE_PPPOED = 39

	alias RTE_FLOW_ITEM_TYPE_PPPOE_PROTO_ID = 40

	alias RTE_FLOW_ITEM_TYPE_NSH = 41

	alias RTE_FLOW_ITEM_TYPE_IGMP = 42

	alias RTE_FLOW_ITEM_TYPE_AH = 43

	alias RTE_FLOW_ITEM_TYPE_HIGIG2 = 44

	alias RTE_FLOW_ITEM_TYPE_TAG = 45

	alias RTE_FLOW_ITEM_TYPE_L2TPV3OIP = 46

	alias RTE_FLOW_ITEM_TYPE_PFCP = 47

	alias RTE_FLOW_ITEM_TYPE_ECPRI = 48

	alias RTE_FLOW_ITEM_TYPE_IPV6_FRAG_EXT = 49

	alias RTE_FLOW_ITEM_TYPE_GENEVE_OPT = 50

	alias RTE_FLOW_ITEM_TYPE_INTEGRITY = 51

	alias RTE_FLOW_ITEM_TYPE_CONNTRACK = 52

	alias RTE_FLOW_ITEM_TYPE_PORT_REPRESENTOR = 53

	alias RTE_FLOW_ITEM_TYPE_REPRESENTED_PORT = 54

	alias RTE_FLOW_ITEM_TYPE_FLEX = 55

	alias RTE_FLOW_ITEM_TYPE_L2TPV2 = 56

	alias RTE_FLOW_ITEM_TYPE_PPP = 57

	alias RTE_FLOW_ITEM_TYPE_GRE_OPTION = 58

	alias RTE_FLOW_ITEM_TYPE_MACSEC = 59

	alias RTE_FLOW_ITEM_TYPE_METER_COLOR = 60

	alias RTE_FLOW_ITEM_TYPE_IPV6_ROUTING_EXT = 61

	alias RTE_FLOW_ITEM_TYPE_ICMP6_ECHO_REQUEST = 62

	alias RTE_FLOW_ITEM_TYPE_ICMP6_ECHO_REPLY = 63

	alias RTE_FLOW_ITEM_TYPE_QUOTA = 64

	alias RTE_FLOW_ITEM_TYPE_AGGR_AFFINITY = 65

	alias RTE_FLOW_ITEM_TYPE_TX_QUEUE = 66

	alias RTE_FLOW_ITEM_TYPE_IB_BTH = 67

	alias RTE_FLOW_ITEM_TYPE_PTYPE = 68

	alias RTE_FLOW_ITEM_TYPE_RANDOM = 69

	alias RTE_FLOW_ITEM_TYPE_COMPARE = 70

struct rte_flow_quota_state(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10b64e0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":15673,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":15673,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":15674,"tokLen":1}},"renderKind":"bold"}
# 
	alias RTE_FLOW_QUOTA_STATE_PASS = 0

	alias RTE_FLOW_QUOTA_STATE_BLOCK = 1

struct rte_flow_item_quota(Copyable & Movable):

	var state : rte_flow_quota_state

alias rte_flow_item_quota_mask = rte_flow_item_quota
struct rte_flow_item_higig2_hdr(Copyable & Movable):

	var hdr : rte_higig2_hdr

alias rte_flow_item_higig2_hdr_mask = rte_flow_item_higig2_hdr
struct rte_flow_item_any(Copyable & Movable):

	var num : UInt32

alias rte_flow_item_any_mask = rte_flow_item_any
struct rte_flow_item_port_id(Copyable & Movable):
# # # 
	var id : UInt32

alias rte_flow_item_port_id_mask = rte_flow_item_port_id
struct rte_flow_item_raw(Copyable & Movable):

	var relative : UInt32

	var search : UInt32

	var reserved : UInt32

	var offset : Int32

	var limit : UInt16

	var length : UInt16

	var pattern : UnsafePointer[UInt8]

alias rte_flow_item_raw_mask = rte_flow_item_raw
struct anonomous_record_202(Copyable & Movable):
	var dst : rte_ether_addr

	var src : rte_ether_addr

	var type : UInt16

alias anonomous_record_203 = C_Union[anonomous_record_202, , , , rte_ether_hdr]

struct rte_flow_item_eth(Copyable & Movable):
# # Node: PlaceHolder()
# {"args":["hdr"],"id":"0x10b7c60","kind":"InlineCommandComment","loc":{"col":11,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":19349,"tokLen":1},"name":"p","range":{"begin":{"col":11,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":19349,"tokLen":1},"end":{"col":12,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":19350,"tokLen":1}},"renderKind":"monospaced"}
# # Node: PlaceHolder()
# {"args":["ether_type"],"id":"0x10b7cd0","kind":"InlineCommandComment","loc":{"col":39,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":19377,"tokLen":1},"name":"p","range":{"begin":{"col":39,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":19377,"tokLen":1},"end":{"col":40,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":19378,"tokLen":1}},"renderKind":"monospaced"}
# # Node: PlaceHolder()
# {"args":["has_vlan"],"id":"0x10b7e90","kind":"InlineCommandComment","loc":{"col":53,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":19956,"tokLen":1},"name":"p","range":{"begin":{"col":53,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":19956,"tokLen":1},"end":{"col":54,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":19957,"tokLen":1}},"renderKind":"monospaced"}

	var union_placeholder_1 : anonomous_record_203





	var has_vlan : UInt32

	var reserved : UInt32

alias rte_flow_item_eth_mask = rte_flow_item_eth
struct anonomous_record_204(Copyable & Movable):
	var tci : UInt16

	var inner_type : UInt16

alias anonomous_record_205 = C_Union[anonomous_record_204, , , rte_vlan_hdr]

struct rte_flow_item_vlan(Copyable & Movable):
# # Node: PlaceHolder()
# {"args":["VLAN"],"id":"0x10b85a0","kind":"InlineCommandComment","loc":{"col":9,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21194,"tokLen":1},"name":"p","range":{"begin":{"col":9,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21194,"tokLen":1},"end":{"col":10,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21195,"tokLen":1}},"renderKind":"monospaced"}
# # Node: PlaceHolder()
# {"args":["has_more_vlan"],"id":"0x10b8650","kind":"InlineCommandComment","loc":{"col":14,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21299,"tokLen":1},"name":"p","range":{"begin":{"col":14,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21299,"tokLen":1},"end":{"col":15,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21300,"tokLen":1}},"renderKind":"monospaced"}
# # Node: PlaceHolder()
# {"args":["eth_proto"],"id":"0x10b86e0","kind":"InlineCommandComment","loc":{"col":25,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21389,"tokLen":1},"name":"p","range":{"begin":{"col":25,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21389,"tokLen":1},"end":{"col":26,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21390,"tokLen":1}},"renderKind":"monospaced"}
# # Node: PlaceHolder()
# {"args":["hdr."],"id":"0x10b8750","kind":"InlineCommandComment","loc":{"col":47,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21411,"tokLen":1},"name":"p","range":{"begin":{"col":47,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21411,"tokLen":1},"end":{"col":48,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21412,"tokLen":1}},"renderKind":"monospaced"}
# # Node: PlaceHolder()
# {"args":["eth_proto"],"id":"0x10b87c0","kind":"InlineCommandComment","loc":{"col":11,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21429,"tokLen":1},"name":"p","range":{"begin":{"col":11,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21429,"tokLen":1},"end":{"col":12,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21430,"tokLen":1}},"renderKind":"monospaced"}
# # Node: PlaceHolder()
# {"args":["hdr"],"id":"0x10b8830","kind":"InlineCommandComment","loc":{"col":27,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21445,"tokLen":1},"name":"p","range":{"begin":{"col":27,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21445,"tokLen":1},"end":{"col":28,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21446,"tokLen":1}},"renderKind":"monospaced"}
# # Node: PlaceHolder()
# {"args":["has_more_vlan"],"id":"0x10b88a0","kind":"InlineCommandComment","loc":{"col":38,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21456,"tokLen":1},"name":"p","range":{"begin":{"col":38,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21456,"tokLen":1},"end":{"col":39,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":21457,"tokLen":1}},"renderKind":"monospaced"}

	var union_placeholder_1 : anonomous_record_205




	var has_more_vlan : UInt32

	var reserved : UInt32

alias rte_flow_item_vlan_mask = rte_flow_item_vlan
struct rte_flow_item_ipv4(Copyable & Movable):

	var hdr : rte_ipv4_hdr

alias rte_flow_item_ipv4_mask = rte_flow_item_ipv4
struct rte_flow_item_ipv6(Copyable & Movable):

	var hdr : rte_ipv6_hdr

	var has_hop_ext : UInt32

	var has_route_ext : UInt32

	var has_frag_ext : UInt32

	var has_auth_ext : UInt32

	var has_esp_ext : UInt32

	var has_dest_ext : UInt32

	var has_mobil_ext : UInt32

	var has_hip_ext : UInt32

	var has_shim6_ext : UInt32

	var reserved : UInt32

alias rte_flow_item_ipv6_mask = rte_flow_item_ipv6
struct rte_flow_item_ipv6_routing_ext(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10b9b30","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":24020,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":24020,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":24021,"tokLen":1}},"renderKind":"bold"}

	var hdr : rte_ipv6_routing_ext

struct rte_flow_item_icmp(Copyable & Movable):

	var hdr : rte_icmp_hdr

alias rte_flow_item_icmp_mask = rte_flow_item_icmp
struct rte_flow_item_udp(Copyable & Movable):

	var hdr : rte_udp_hdr

alias rte_flow_item_udp_mask = rte_flow_item_udp
struct rte_flow_item_tcp(Copyable & Movable):

	var hdr : rte_tcp_hdr

alias rte_flow_item_tcp_mask = rte_flow_item_tcp
struct rte_flow_item_sctp(Copyable & Movable):

	var hdr : rte_sctp_hdr

alias rte_flow_item_sctp_mask = rte_flow_item_sctp
struct anonomous_record_206(Copyable & Movable):
	var flags : UInt8

	var rsvd0 : InlineArray[UInt8, 3]

	var vni : InlineArray[UInt8, 3]

	var rsvd1 : UInt8

alias anonomous_record_207 = C_Union[anonomous_record_206, , , , , rte_vxlan_hdr]

struct rte_flow_item_vxlan(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_207






alias rte_flow_item_vxlan_mask = rte_flow_item_vxlan
struct rte_flow_item_e_tag(Copyable & Movable):

	var epcp_edei_in_ecid_b : UInt16

	var rsvd_grp_ecid_b : UInt16

	var in_ecid_e : UInt8

	var ecid_e : UInt8

	var inner_type : UInt16

alias rte_flow_item_e_tag_mask = rte_flow_item_e_tag
struct rte_flow_item_nvgre(Copyable & Movable):

	var c_k_s_rsvd0_ver : UInt16

	var protocol : UInt16

	var tni : InlineArray[UInt8, 3]

	var flow_id : UInt8

alias rte_flow_item_nvgre_mask = rte_flow_item_nvgre
struct rte_flow_item_mpls(Copyable & Movable):

	var label_tc_s : InlineArray[UInt8, 3]

	var ttl : UInt8

alias rte_flow_item_mpls_mask = rte_flow_item_mpls
struct rte_flow_item_gre(Copyable & Movable):

	var c_rsvd0_ver : UInt16

	var protocol : UInt16

alias rte_flow_item_gre_mask = rte_flow_item_gre
struct rte_flow_item_gre_opt(Copyable & Movable):

	var checksum_rsvd : rte_gre_hdr_opt_checksum_rsvd

	var key : rte_gre_hdr_opt_key

	var sequence : rte_gre_hdr_opt_sequence

struct rte_flow_item_macsec(Copyable & Movable):

	var macsec_hdr : rte_macsec_hdr

struct rte_flow_item_fuzzy(Copyable & Movable):

	var thresh : UInt32

alias rte_flow_item_fuzzy_mask = rte_flow_item_fuzzy
struct anonomous_record_208(Copyable & Movable):
	var v_pt_rsv_flags : UInt8

	var msg_type : UInt8

	var msg_len : UInt16

	var teid : UInt32

alias anonomous_record_209 = C_Union[anonomous_record_208, , , , , rte_gtp_hdr]

struct rte_flow_item_gtp(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_209






alias rte_flow_item_gtp_mask = rte_flow_item_gtp
struct rte_flow_item_esp(Copyable & Movable):

	var hdr : rte_esp_hdr

alias rte_flow_item_esp_mask = rte_flow_item_esp
struct rte_flow_item_geneve(Copyable & Movable):

	var ver_opt_len_o_c_rsvd0 : UInt16

	var protocol : UInt16

	var vni : InlineArray[UInt8, 3]

	var rsvd1 : UInt8

alias rte_flow_item_geneve_mask = rte_flow_item_geneve
struct anonomous_record_210(Copyable & Movable):
	var flags : UInt8

	var rsvd0 : InlineArray[UInt8, 2]

	var protocol : UInt8

	var vni : InlineArray[UInt8, 3]

	var rsvd1 : UInt8

alias anonomous_record_211 = C_Union[anonomous_record_210, , , , , , rte_vxlan_gpe_hdr]

struct rte_flow_item_vxlan_gpe(Copyable & Movable):
# # 
	var union_placeholder_1 : anonomous_record_211







alias rte_flow_item_vxlan_gpe_mask = rte_flow_item_vxlan_gpe
struct anonomous_record_212(Copyable & Movable):
	var hrd : UInt16

	var pro : UInt16

	var hln : UInt8

	var pln : UInt8

	var op : UInt16

	var sha : rte_ether_addr

	var spa : UInt32

	var tha : rte_ether_addr

	var tpa : UInt32

alias anonomous_record_213 = C_Union[anonomous_record_212, , , , , , , , , , rte_arp_hdr]

struct rte_flow_item_arp_eth_ipv4(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_213











alias rte_flow_item_arp_eth_ipv4_mask = rte_flow_item_arp_eth_ipv4
struct rte_flow_item_ipv6_ext(Copyable & Movable):

	var next_hdr : UInt8

alias rte_flow_item_ipv6_ext_mask = rte_flow_item_ipv6_ext
struct rte_flow_item_ipv6_frag_ext(Copyable & Movable):

	var hdr : rte_ipv6_fragment_ext

struct rte_flow_item_icmp6(Copyable & Movable):

	var type : UInt8

	var code : UInt8

	var checksum : UInt16

alias rte_flow_item_icmp6_mask = rte_flow_item_icmp6
struct rte_flow_item_icmp6_echo(Copyable & Movable):

	var hdr : rte_icmp_echo_hdr

struct rte_flow_item_icmp6_nd_ns(Copyable & Movable):

	var type : UInt8

	var code : UInt8

	var checksum : UInt16

	var reserved : UInt32

	var target_addr : rte_ipv6_addr

alias rte_flow_item_icmp6_nd_ns_mask = rte_flow_item_icmp6_nd_ns
struct rte_flow_item_icmp6_nd_na(Copyable & Movable):

	var type : UInt8

	var code : UInt8

	var checksum : UInt16

	var rso_reserved : UInt32

	var target_addr : rte_ipv6_addr

alias rte_flow_item_icmp6_nd_na_mask = rte_flow_item_icmp6_nd_na
struct rte_flow_item_icmp6_nd_opt(Copyable & Movable):

	var type : UInt8

	var length : UInt8

alias rte_flow_item_icmp6_nd_opt_mask = rte_flow_item_icmp6_nd_opt
struct rte_flow_item_icmp6_nd_opt_sla_eth(Copyable & Movable):

	var type : UInt8

	var length : UInt8

	var sla : rte_ether_addr

alias rte_flow_item_icmp6_nd_opt_sla_eth_mask = rte_flow_item_icmp6_nd_opt_sla_eth
struct rte_flow_item_icmp6_nd_opt_tla_eth(Copyable & Movable):

	var type : UInt8

	var length : UInt8

	var tla : rte_ether_addr

alias rte_flow_item_icmp6_nd_opt_tla_eth_mask = rte_flow_item_icmp6_nd_opt_tla_eth
struct rte_flow_item_meta(Copyable & Movable):

	var data : UInt32

alias rte_flow_item_meta_mask = rte_flow_item_meta
struct rte_flow_item_gtp_psc(Copyable & Movable):

	var hdr : rte_gtp_psc_generic_hdr

alias rte_flow_item_gtp_psc_mask = rte_flow_item_gtp_psc
struct rte_flow_item_pppoe(Copyable & Movable):

	var version_type : UInt8

	var code : UInt8

	var session_id : UInt16

	var length : UInt16

struct rte_flow_item_pppoe_proto_id(Copyable & Movable):

	var proto_id : UInt16

alias rte_flow_item_pppoe_proto_id_mask = rte_flow_item_pppoe_proto_id
struct rte_flow_item_tag(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c08f0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":40512,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":40512,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":40513,"tokLen":1}},"renderKind":"bold"}

	var data : UInt32

	var index : UInt8

alias rte_flow_item_tag_mask = rte_flow_item_tag
struct rte_flow_item_l2tpv3oip(Copyable & Movable):

	var session_id : UInt32

alias rte_flow_item_l2tpv3oip_mask = rte_flow_item_l2tpv3oip
struct rte_flow_item_mark(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c0d60","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":41293,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":41293,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":41294,"tokLen":1}},"renderKind":"bold"}

	var id : UInt32

alias rte_flow_item_mark_mask = rte_flow_item_mark
struct rte_flow_item_nsh(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c1240","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":42185,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":42185,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":42186,"tokLen":1}},"renderKind":"bold"}

	var version : UInt32

	var oam_pkt : UInt32

	var reserved : UInt32

	var ttl : UInt32

	var length : UInt32

	var reserved1 : UInt32

	var mdtype : UInt32

	var next_proto : UInt32

	var spi : UInt32

	var sindex : UInt32

alias rte_flow_item_nsh_mask = rte_flow_item_nsh
struct rte_flow_item_igmp(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c14c0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":42805,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":42805,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":42806,"tokLen":1}},"renderKind":"bold"}

	var type : UInt32

	var max_resp_time : UInt32

	var checksum : UInt32

	var group_addr : UInt32

alias rte_flow_item_igmp_mask = rte_flow_item_igmp
struct rte_flow_item_ah(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c1740","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":43282,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":43282,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":43283,"tokLen":1}},"renderKind":"bold"}

	var next_hdr : UInt32

	var payload_len : UInt32

	var reserved : UInt32

	var spi : UInt32

	var seq_num : UInt32

alias rte_flow_item_ah_mask = rte_flow_item_ah
struct rte_flow_item_pfcp(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c19c0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":43744,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":43744,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":43745,"tokLen":1}},"renderKind":"bold"}

	var s_field : UInt8

	var msg_type : UInt8

	var msg_len : UInt16

	var seid : ffi.c_ulong

alias rte_flow_item_pfcp_mask = rte_flow_item_pfcp
struct rte_flow_item_ecpri(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c1c40","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":44207,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":44207,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":44208,"tokLen":1}},"renderKind":"bold"}

	var hdr : rte_ecpri_combined_msg_hdr

alias rte_flow_item_ecpri_mask = rte_flow_item_ecpri
struct rte_flow_item_geneve_opt(Copyable & Movable):

	var option_class : UInt16

	var option_type : UInt8

	var option_len : UInt8

	var data : UnsafePointer[ffi.c_ulong]

alias rte_flow_item_geneve_opt_mask = rte_flow_item_geneve_opt
struct anonomous_record_214(Copyable & Movable):
	var packet_ok : ffi.c_ulong

	var l2_ok : ffi.c_ulong

	var l3_ok : ffi.c_ulong

	var l4_ok : ffi.c_ulong

	var l2_crc_ok : ffi.c_ulong

	var ipv4_csum_ok : ffi.c_ulong

	var l4_csum_ok : ffi.c_ulong

	var l3_len_ok : ffi.c_ulong

	var reserved : ffi.c_ulong

alias anonomous_record_215 = C_Union[anonomous_record_214, , , , , , , , , , ffi.c_ulong]

struct rte_flow_item_integrity(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c1fe0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":45019,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":45019,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":45020,"tokLen":1}},"renderKind":"bold"}

	var level : UInt32

	var union_placeholder_1 : anonomous_record_215











alias rte_flow_item_integrity_mask = rte_flow_item_integrity
struct rte_flow_item_conntrack(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c2a50","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":46855,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":46855,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":46856,"tokLen":1}},"renderKind":"bold"}

	var flags : UInt32

alias rte_flow_item_conntrack_mask = rte_flow_item_conntrack
struct rte_flow_item_ethdev(Copyable & Movable):

	var port_id : UInt16

alias rte_flow_item_ethdev_mask = rte_flow_item_ethdev
struct rte_flow_item_l2tpv2(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c2f10","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":47829,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":47829,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":47830,"tokLen":1}},"renderKind":"bold"}

	var hdr : rte_l2tpv2_combined_msg_hdr

alias rte_flow_item_l2tpv2_mask = rte_flow_item_l2tpv2
struct rte_flow_item_ppp(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c3190","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":48387,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":48387,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":48388,"tokLen":1}},"renderKind":"bold"}

	var hdr : rte_ppp_hdr

alias rte_flow_item_ppp_mask = rte_flow_item_ppp
struct rte_flow_item_ib_bth(Copyable & Movable):

	var hdr : rte_ib_bth

alias rte_flow_item_ib_bth_mask = rte_flow_item_ib_bth
struct rte_flow_item_random(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c3600","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":49240,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":49240,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":49241,"tokLen":1}},"renderKind":"bold"}

	var value : UInt32

alias rte_flow_item_random_mask = rte_flow_item_random
struct rte_flow_item(Copyable & Movable):

	var type : rte_flow_item_type

	var spec : OpaquePointer

	var last : OpaquePointer

	var mask : OpaquePointer

struct rte_flow_item_flex_handle(Copyable & Movable):
	pass
struct rte_flow_item_flex(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c4170","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":51497,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":51497,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":51498,"tokLen":1}},"renderKind":"bold"}

	var handle : rte_flow_item_flex_handle

	var length : UInt32

	var pattern : UnsafePointer[UInt8]

struct rte_flow_item_flex_field_mode(Copyable & Movable):

	alias FIELD_MODE_DUMMY = 0

	alias FIELD_MODE_FIXED = 1

	alias FIELD_MODE_OFFSET = 2

	alias FIELD_MODE_BITMASK = 3

struct rte_flow_item_flex_tunnel_mode(Copyable & Movable):

	alias FLEX_TUNNEL_MODE_SINGLE = 0

	alias FLEX_TUNNEL_MODE_OUTER = 1

	alias FLEX_TUNNEL_MODE_INNER = 2

	alias FLEX_TUNNEL_MODE_MULTI = 3

	alias FLEX_TUNNEL_MODE_TUNNEL = 4

struct rte_flow_item_flex_field(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c5480","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":54112,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":54112,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":54113,"tokLen":1}},"renderKind":"bold"}

	var field_mode : rte_flow_item_flex_field_mode

	var field_size : UInt32

	var field_base : Int32

	var offset_base : UInt32

	var offset_mask : UInt32

	var offset_shift : Int32

	var field_id : UInt32

	var reserved : UInt32

struct rte_flow_item_flex_link(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c5cd0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":54785,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":54785,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":54786,"tokLen":1}},"renderKind":"bold"}

	var item : rte_flow_item

	var next : UInt32

struct rte_flow_item_flex_conf(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c60b0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":55270,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":55270,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":55271,"tokLen":1}},"renderKind":"bold"}

	var tunnel : rte_flow_item_flex_tunnel_mode

	var next_header : rte_flow_item_flex_field

	var next_protocol : rte_flow_item_flex_field

	var sample_data : UnsafePointer[rte_flow_item_flex_field]

	var nb_samples : UInt32

	var input_link : UnsafePointer[rte_flow_item_flex_link]

	var nb_inputs : UInt32

	var output_link : UnsafePointer[rte_flow_item_flex_link]

	var nb_outputs : UInt32

struct rte_flow_item_meter_color(Copyable & Movable):

	var color : rte_color

alias rte_flow_item_meter_color_mask = rte_flow_item_meter_color
struct rte_flow_item_aggr_affinity(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10c6dc0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":57535,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":57535,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":57536,"tokLen":1}},"renderKind":"bold"}

	var affinity : UInt8

alias rte_flow_item_aggr_affinity_mask = rte_flow_item_aggr_affinity
struct rte_flow_item_tx_queue(Copyable & Movable):
# 
	var tx_queue : UInt16

alias rte_flow_item_tx_queue_mask = rte_flow_item_tx_queue
struct rte_flow_item_ptype(Copyable & Movable):

	var packet_type : UInt32

alias rte_flow_item_ptype_mask = rte_flow_item_ptype
struct rte_flow_field_id(Copyable & Movable):

	alias RTE_FLOW_FIELD_START = 0

	alias RTE_FLOW_FIELD_MAC_DST = 1

	alias RTE_FLOW_FIELD_MAC_SRC = 2

	alias RTE_FLOW_FIELD_VLAN_TYPE = 3

	alias RTE_FLOW_FIELD_VLAN_ID = 4

	alias RTE_FLOW_FIELD_MAC_TYPE = 5

	alias RTE_FLOW_FIELD_IPV4_DSCP = 6

	alias RTE_FLOW_FIELD_IPV4_TTL = 7

	alias RTE_FLOW_FIELD_IPV4_SRC = 8

	alias RTE_FLOW_FIELD_IPV4_DST = 9

	alias RTE_FLOW_FIELD_IPV6_DSCP = 10

	alias RTE_FLOW_FIELD_IPV6_HOPLIMIT = 11

	alias RTE_FLOW_FIELD_IPV6_SRC = 12

	alias RTE_FLOW_FIELD_IPV6_DST = 13

	alias RTE_FLOW_FIELD_TCP_PORT_SRC = 14

	alias RTE_FLOW_FIELD_TCP_PORT_DST = 15

	alias RTE_FLOW_FIELD_TCP_SEQ_NUM = 16

	alias RTE_FLOW_FIELD_TCP_ACK_NUM = 17

	alias RTE_FLOW_FIELD_TCP_FLAGS = 18

	alias RTE_FLOW_FIELD_UDP_PORT_SRC = 19

	alias RTE_FLOW_FIELD_UDP_PORT_DST = 20

	alias RTE_FLOW_FIELD_VXLAN_VNI = 21

	alias RTE_FLOW_FIELD_GENEVE_VNI = 22

	alias RTE_FLOW_FIELD_GTP_TEID = 23

	alias RTE_FLOW_FIELD_TAG = 24

	alias RTE_FLOW_FIELD_MARK = 25

	alias RTE_FLOW_FIELD_META = 26

	alias RTE_FLOW_FIELD_POINTER = 27

	alias RTE_FLOW_FIELD_VALUE = 28

	alias RTE_FLOW_FIELD_IPV4_ECN = 29

	alias RTE_FLOW_FIELD_IPV6_ECN = 30

	alias RTE_FLOW_FIELD_GTP_PSC_QFI = 31

	alias RTE_FLOW_FIELD_METER_COLOR = 32

	alias RTE_FLOW_FIELD_IPV6_PROTO = 33

	alias RTE_FLOW_FIELD_FLEX_ITEM = 34

	alias RTE_FLOW_FIELD_HASH_RESULT = 35

	alias RTE_FLOW_FIELD_GENEVE_OPT_TYPE = 36

	alias RTE_FLOW_FIELD_GENEVE_OPT_CLASS = 37

	alias RTE_FLOW_FIELD_GENEVE_OPT_DATA = 38

	alias RTE_FLOW_FIELD_MPLS = 39

	alias RTE_FLOW_FIELD_TCP_DATA_OFFSET = 40

	alias RTE_FLOW_FIELD_IPV4_IHL = 41

	alias RTE_FLOW_FIELD_IPV4_TOTAL_LEN = 42

	alias RTE_FLOW_FIELD_IPV6_PAYLOAD_LEN = 43

	alias RTE_FLOW_FIELD_IPV4_PROTO = 44

	alias RTE_FLOW_FIELD_IPV6_FLOW_LABEL = 45

	alias RTE_FLOW_FIELD_IPV6_TRAFFIC_CLASS = 46

	alias RTE_FLOW_FIELD_ESP_SPI = 47

	alias RTE_FLOW_FIELD_ESP_SEQ_NUM = 48

	alias RTE_FLOW_FIELD_ESP_PROTO = 49

	alias RTE_FLOW_FIELD_RANDOM = 50

	alias RTE_FLOW_FIELD_VXLAN_LAST_RSVD = 51

struct anonomous_record_216(Copyable & Movable):

	var type : UInt8

	var class_id : UInt16

alias anonomous_record_217 = C_Union[UInt8, anonomous_record_216, , ]

struct anonomous_record_218(Copyable & Movable):
	var level : UInt8

	var union_placeholder_1 : anonomous_record_217




alias anonomous_record_219 = C_Union[anonomous_record_218, , , , , UnsafePointer[rte_flow_item_flex_handle]]

struct anonomous_record_220(Copyable & Movable):
	var union_placeholder_1 : anonomous_record_219






	var offset : UInt32

alias anonomous_record_221 = C_Union[anonomous_record_220, , , , , , , InlineArray[UInt8, 16], OpaquePointer]

struct rte_flow_field_data(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10ca190","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":62196,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":62196,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":62197,"tokLen":1}},"renderKind":"bold"}

	var field : rte_flow_field_id

	var union_placeholder_1 : anonomous_record_221









struct rte_flow_item_compare_op(Copyable & Movable):

	alias RTE_FLOW_ITEM_COMPARE_EQ = 0

	alias RTE_FLOW_ITEM_COMPARE_NE = 1

	alias RTE_FLOW_ITEM_COMPARE_LT = 2

	alias RTE_FLOW_ITEM_COMPARE_LE = 3

	alias RTE_FLOW_ITEM_COMPARE_GT = 4

	alias RTE_FLOW_ITEM_COMPARE_GE = 5

struct rte_flow_item_compare(Copyable & Movable):

	var operation : rte_flow_item_compare_op

	var a : rte_flow_field_data

	var b : rte_flow_field_data

	var width : UInt32

struct rte_flow_action_type(Copyable & Movable):

	alias RTE_FLOW_ACTION_TYPE_END = 0

	alias RTE_FLOW_ACTION_TYPE_VOID = 1

	alias RTE_FLOW_ACTION_TYPE_PASSTHRU = 2

	alias RTE_FLOW_ACTION_TYPE_JUMP = 3

	alias RTE_FLOW_ACTION_TYPE_MARK = 4

	alias RTE_FLOW_ACTION_TYPE_FLAG = 5

	alias RTE_FLOW_ACTION_TYPE_QUEUE = 6

	alias RTE_FLOW_ACTION_TYPE_DROP = 7

	alias RTE_FLOW_ACTION_TYPE_COUNT = 8

	alias RTE_FLOW_ACTION_TYPE_RSS = 9

	alias RTE_FLOW_ACTION_TYPE_PF = 10

	alias RTE_FLOW_ACTION_TYPE_VF = 11

	alias RTE_FLOW_ACTION_TYPE_PORT_ID = 12

	alias RTE_FLOW_ACTION_TYPE_METER = 13

	alias RTE_FLOW_ACTION_TYPE_SECURITY = 14

	alias RTE_FLOW_ACTION_TYPE_OF_DEC_NW_TTL = 15

	alias RTE_FLOW_ACTION_TYPE_OF_POP_VLAN = 16

	alias RTE_FLOW_ACTION_TYPE_OF_PUSH_VLAN = 17

	alias RTE_FLOW_ACTION_TYPE_OF_SET_VLAN_VID = 18

	alias RTE_FLOW_ACTION_TYPE_OF_SET_VLAN_PCP = 19

	alias RTE_FLOW_ACTION_TYPE_OF_POP_MPLS = 20

	alias RTE_FLOW_ACTION_TYPE_OF_PUSH_MPLS = 21

	alias RTE_FLOW_ACTION_TYPE_VXLAN_ENCAP = 22

	alias RTE_FLOW_ACTION_TYPE_VXLAN_DECAP = 23

	alias RTE_FLOW_ACTION_TYPE_NVGRE_ENCAP = 24

	alias RTE_FLOW_ACTION_TYPE_NVGRE_DECAP = 25

	alias RTE_FLOW_ACTION_TYPE_RAW_ENCAP = 26

	alias RTE_FLOW_ACTION_TYPE_RAW_DECAP = 27

	alias RTE_FLOW_ACTION_TYPE_SET_IPV4_SRC = 28

	alias RTE_FLOW_ACTION_TYPE_SET_IPV4_DST = 29

	alias RTE_FLOW_ACTION_TYPE_SET_IPV6_SRC = 30

	alias RTE_FLOW_ACTION_TYPE_SET_IPV6_DST = 31

	alias RTE_FLOW_ACTION_TYPE_SET_TP_SRC = 32

	alias RTE_FLOW_ACTION_TYPE_SET_TP_DST = 33

	alias RTE_FLOW_ACTION_TYPE_MAC_SWAP = 34

	alias RTE_FLOW_ACTION_TYPE_DEC_TTL = 35

	alias RTE_FLOW_ACTION_TYPE_SET_TTL = 36

	alias RTE_FLOW_ACTION_TYPE_SET_MAC_SRC = 37

	alias RTE_FLOW_ACTION_TYPE_SET_MAC_DST = 38

	alias RTE_FLOW_ACTION_TYPE_INC_TCP_SEQ = 39

	alias RTE_FLOW_ACTION_TYPE_DEC_TCP_SEQ = 40

	alias RTE_FLOW_ACTION_TYPE_INC_TCP_ACK = 41

	alias RTE_FLOW_ACTION_TYPE_DEC_TCP_ACK = 42

	alias RTE_FLOW_ACTION_TYPE_SET_TAG = 43

	alias RTE_FLOW_ACTION_TYPE_SET_META = 44

	alias RTE_FLOW_ACTION_TYPE_SET_IPV4_DSCP = 45

	alias RTE_FLOW_ACTION_TYPE_SET_IPV6_DSCP = 46

	alias RTE_FLOW_ACTION_TYPE_AGE = 47

	alias RTE_FLOW_ACTION_TYPE_SAMPLE = 48

	alias RTE_FLOW_ACTION_TYPE_SHARED = 49

	alias RTE_FLOW_ACTION_TYPE_MODIFY_FIELD = 50

	alias RTE_FLOW_ACTION_TYPE_INDIRECT = 51

	alias RTE_FLOW_ACTION_TYPE_CONNTRACK = 52

	alias RTE_FLOW_ACTION_TYPE_METER_COLOR = 53

	alias RTE_FLOW_ACTION_TYPE_PORT_REPRESENTOR = 54

	alias RTE_FLOW_ACTION_TYPE_REPRESENTED_PORT = 55

	alias RTE_FLOW_ACTION_TYPE_METER_MARK = 56

	alias RTE_FLOW_ACTION_TYPE_SEND_TO_KERNEL = 57

	alias RTE_FLOW_ACTION_TYPE_QUOTA = 58

	alias RTE_FLOW_ACTION_TYPE_SKIP_CMAN = 59

	alias RTE_FLOW_ACTION_TYPE_IPV6_EXT_PUSH = 60

	alias RTE_FLOW_ACTION_TYPE_IPV6_EXT_REMOVE = 61

	alias RTE_FLOW_ACTION_TYPE_INDIRECT_LIST = 62

	alias RTE_FLOW_ACTION_TYPE_PROG = 63

	alias RTE_FLOW_ACTION_TYPE_NAT64 = 64

	alias RTE_FLOW_ACTION_TYPE_JUMP_TO_TABLE_INDEX = 65

struct rte_flow_quota_mode(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10dd600","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":83932,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":83932,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":83933,"tokLen":1}},"renderKind":"bold"}
# 
	alias RTE_FLOW_QUOTA_MODE_PACKET = 1

	alias RTE_FLOW_QUOTA_MODE_L2 = 2

	alias RTE_FLOW_QUOTA_MODE_L3 = 3

struct rte_flow_action_quota(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10ddb80","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":84319,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":84319,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":84320,"tokLen":1}},"renderKind":"bold"}
# 
	var mode : rte_flow_quota_mode

	var quota : ffi.c_long

struct rte_flow_query_quota(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10de030","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":84618,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":84618,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":84619,"tokLen":1}},"renderKind":"bold"}
# 
	var quota : ffi.c_long

struct rte_flow_update_quota_op(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10de410","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":84844,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":84844,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":84845,"tokLen":1}},"renderKind":"bold"}
# 
	alias RTE_FLOW_UPDATE_QUOTA_SET = 0

	alias RTE_FLOW_UPDATE_QUOTA_ADD = 1

struct rte_flow_update_quota(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10de8c0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":85157,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":85157,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":85158,"tokLen":1}},"renderKind":"bold"}
# 
	var op : rte_flow_update_quota_op

	var quota : ffi.c_long

struct rte_flow_action_mark(Copyable & Movable):

	var id : UInt32

struct rte_flow_action_jump(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10df030","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":85880,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":85880,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":85881,"tokLen":1}},"renderKind":"bold"}

	var group : UInt32

struct rte_flow_action_queue(Copyable & Movable):

	var index : UInt16

struct rte_flow_action_age(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10df550","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":86461,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":86461,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":86462,"tokLen":1}},"renderKind":"bold"}

	var timeout : UInt32

	var reserved : UInt32

	var context : OpaquePointer

struct rte_flow_query_age(Copyable & Movable):

	var reserved : UInt32

	var aged : UInt32

	var sec_since_last_hit_valid : UInt32

	var sec_since_last_hit : UInt32

struct rte_flow_update_age(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10dff90","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":87578,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":87578,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":87579,"tokLen":1}},"renderKind":"bold"}

	var reserved : UInt32

	var timeout_valid : UInt32

	var timeout : UInt32

	var touch : UInt32

struct rte_flow_action_count(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e0710","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":88721,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":88721,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":88722,"tokLen":1}},"renderKind":"bold"}

	var id : UInt32

struct rte_flow_query_count(Copyable & Movable):

	var reset : UInt32

	var hits_set : UInt32

	var bytes_set : UInt32

	var reserved : UInt32

	var hits : ffi.c_ulong

	var bytes : ffi.c_ulong

struct rte_flow_action_rss(Copyable & Movable):
# # Node: PlaceHolder()
# {"args":["types"],"id":"0x10e1230","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":90058,"tokLen":1},"name":"p","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":90058,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":90059,"tokLen":1}},"renderKind":"monospaced"}

	var func : rte_eth_hash_function

	var level : UInt32

	var types : ffi.c_ulong

	var key_len : UInt32

	var queue_num : UInt32

	var key : UnsafePointer[UInt8]

	var queue : UnsafePointer[UInt16]

struct rte_flow_action_vf(Copyable & Movable):
# # # 
	var original : UInt32

	var reserved : UInt32

	var id : UInt32

struct rte_flow_action_port_id(Copyable & Movable):
# # # # 
	var original : UInt32

	var reserved : UInt32

	var id : UInt32

struct rte_flow_action_meter(Copyable & Movable):

	var mtr_id : UInt32

struct rte_flow_action_security(Copyable & Movable):

	var security_session : OpaquePointer

struct rte_flow_nat64_type(Copyable & Movable):

	alias RTE_FLOW_NAT64_6TO4 = 0

	alias RTE_FLOW_NAT64_4TO6 = 1

struct rte_flow_action_nat64(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e3980","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":95188,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":95188,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":95189,"tokLen":1}},"renderKind":"bold"}

	var type : rte_flow_nat64_type

struct rte_flow_action_of_push_vlan(Copyable & Movable):

	var ethertype : UInt16

struct rte_flow_action_of_set_vlan_vid(Copyable & Movable):

	var vlan_vid : UInt16

struct rte_flow_action_of_set_vlan_pcp(Copyable & Movable):

	var vlan_pcp : UInt8

struct rte_flow_action_of_pop_mpls(Copyable & Movable):

	var ethertype : UInt16

struct rte_flow_action_of_push_mpls(Copyable & Movable):

	var ethertype : UInt16

struct rte_flow_action_vxlan_encap(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e4650","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":96629,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":96629,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":96630,"tokLen":1}},"renderKind":"bold"}

	var definition : UnsafePointer[rte_flow_item]

struct rte_flow_action_nvgre_encap(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e4cb0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":97729,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":97729,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":97730,"tokLen":1}},"renderKind":"bold"}

	var definition : UnsafePointer[rte_flow_item]

struct rte_flow_action_raw_encap(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e52e0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":98758,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":98758,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":98759,"tokLen":1}},"renderKind":"bold"}
# # Node: PlaceHolder()
# {"args":["data"],"id":"0x10e55b0","kind":"InlineCommandComment","loc":{"col":38,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":99422,"tokLen":1},"name":"p","range":{"begin":{"col":38,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":99422,"tokLen":1},"end":{"col":39,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":99423,"tokLen":1}},"renderKind":"monospaced"}
# # Node: PlaceHolder()
# {"args":["preserve."],"id":"0x10e5620","kind":"InlineCommandComment","loc":{"col":50,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":99434,"tokLen":1},"name":"p","range":{"begin":{"col":50,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":99434,"tokLen":1},"end":{"col":51,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":99435,"tokLen":1}},"renderKind":"monospaced"}

	var data : UnsafePointer[UInt8]

	var preserve : UnsafePointer[UInt8]

	var size : ffi.c_ulong

struct rte_flow_action_raw_decap(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e5c20","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":99679,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":99679,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":99680,"tokLen":1}},"renderKind":"bold"}
# # Node: PlaceHolder()
# {"args":["data."],"id":"0x10e5e50","kind":"InlineCommandComment","loc":{"col":38,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":100165,"tokLen":1},"name":"p","range":{"begin":{"col":38,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":100165,"tokLen":1},"end":{"col":39,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":100166,"tokLen":1}},"renderKind":"monospaced"}

	var data : UnsafePointer[UInt8]

	var size : ffi.c_ulong

struct rte_flow_action_set_ipv4(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e62e0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":100335,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":100335,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":100336,"tokLen":1}},"renderKind":"bold"}

	var ipv4_addr : UInt32

struct rte_flow_action_set_ipv6(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e65d0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":100743,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":100743,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":100744,"tokLen":1}},"renderKind":"bold"}

	var ipv6_addr : rte_ipv6_addr

struct rte_flow_action_ipv6_ext_push(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e68c0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":101161,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":101161,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":101162,"tokLen":1}},"renderKind":"bold"}

	var data : UnsafePointer[UInt8]

	var size : ffi.c_ulong

	var type : UInt8

struct rte_flow_action_ipv6_ext_remove(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e6ee0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":101669,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":101669,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":101670,"tokLen":1}},"renderKind":"bold"}

	var type : UInt8

struct rte_flow_action_set_tp(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e7290","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":101998,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":101998,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":101999,"tokLen":1}},"renderKind":"bold"}

	var port : UInt16

struct rte_flow_action_set_ttl(Copyable & Movable):

	var ttl_value : UInt8

struct rte_flow_action_set_mac(Copyable & Movable):

	var mac_addr : InlineArray[UInt8, 6]

struct rte_flow_action_set_tag(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e77c0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":102701,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":102701,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":102702,"tokLen":1}},"renderKind":"bold"}

	var data : UInt32

	var mask : UInt32

	var index : UInt8

struct rte_flow_action_set_meta(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e7a60","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":103067,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":103067,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":103068,"tokLen":1}},"renderKind":"bold"}

	var data : UInt32

	var mask : UInt32

struct rte_flow_action_set_dscp(Copyable & Movable):

	var dscp : UInt8

struct rte_flow_action_handle(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e8000","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":104192,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":104192,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":104193,"tokLen":1}},"renderKind":"bold"}

	pass
struct rte_flow_conntrack_state(Copyable & Movable):

	alias RTE_FLOW_CONNTRACK_STATE_SYN_RECV = 0

	alias RTE_FLOW_CONNTRACK_STATE_ESTABLISHED = 1

	alias RTE_FLOW_CONNTRACK_STATE_FIN_WAIT = 2

	alias RTE_FLOW_CONNTRACK_STATE_CLOSE_WAIT = 3

	alias RTE_FLOW_CONNTRACK_STATE_LAST_ACK = 4

	alias RTE_FLOW_CONNTRACK_STATE_TIME_WAIT = 5

struct rte_flow_conntrack_tcp_last_index(Copyable & Movable):

	alias RTE_FLOW_CONNTRACK_FLAG_NONE = 0

	alias RTE_FLOW_CONNTRACK_FLAG_SYN = 1

	alias RTE_FLOW_CONNTRACK_FLAG_SYNACK = 2

	alias RTE_FLOW_CONNTRACK_FLAG_FIN = 3

	alias RTE_FLOW_CONNTRACK_FLAG_ACK = 4

	alias RTE_FLOW_CONNTRACK_FLAG_RST = 5

struct rte_flow_tcp_dir_param(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e8f70","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":105862,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":105862,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":105863,"tokLen":1}},"renderKind":"bold"}

	var scale : UInt32

	var close_initiated : UInt32

	var last_ack_seen : UInt32

	var data_unacked : UInt32

	var sent_end : UInt32

	var reply_end : UInt32

	var max_win : UInt32

	var max_ack : UInt32

struct rte_flow_action_conntrack(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10e98f0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":107004,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":107004,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":107005,"tokLen":1}},"renderKind":"bold"}

	var peer_port : UInt16

	var is_original_dir : UInt32

	var enable : UInt32

	var live_connection : UInt32

	var selective_ack : UInt32

	var challenge_ack_passed : UInt32

	var last_direction : UInt32

	var liberal_mode : UInt32

	var state : rte_flow_conntrack_state

	var max_ack_window : UInt8

	var retransmission_limit : UInt8

	var original_dir : rte_flow_tcp_dir_param

	var reply_dir : rte_flow_tcp_dir_param

	var last_window : UInt16

	var last_index : rte_flow_conntrack_tcp_last_index

	var last_seq : UInt32

	var last_ack : UInt32

	var last_end : UInt32

struct rte_flow_modify_conntrack(Copyable & Movable):

	var new_ct : rte_flow_action_conntrack

	var direction : UInt32

	var state : UInt32

	var reserved : UInt32

struct rte_flow_action_meter_color(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10eaf40","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":109819,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":109819,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":109820,"tokLen":1}},"renderKind":"bold"}

	var color : rte_color

struct rte_flow_action_ethdev(Copyable & Movable):

	var port_id : UInt16

struct rte_flow_modify_op(Copyable & Movable):

	alias RTE_FLOW_MODIFY_SET = 0

	alias RTE_FLOW_MODIFY_ADD = 1

	alias RTE_FLOW_MODIFY_SUB = 2

struct rte_flow_action_modify_field(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10eb7e0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":110625,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":110625,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":110626,"tokLen":1}},"renderKind":"bold"}

	var operation : rte_flow_modify_op

	var dst : rte_flow_field_data

	var src : rte_flow_field_data

	var width : UInt32

struct rte_flow_meter_policy(Copyable & Movable):
	pass
struct rte_flow_meter_profile(Copyable & Movable):
	pass
struct rte_flow_action_meter_mark(Copyable & Movable):

	var profile : rte_flow_meter_profile

	var policy : rte_flow_meter_policy

	var color_mode : Int32

	var state : Int32

struct rte_flow_update_meter_mark(Copyable & Movable):

	var meter_mark : rte_flow_action_meter_mark

	var profile_valid : UInt32

	var policy_valid : UInt32

	var color_mode_valid : UInt32

	var state_valid : UInt32

	var reserved : UInt32

struct rte_flow_indirect_update_flow_meter_mark(Copyable & Movable):
# # 
	var init_color : rte_color

struct rte_flow_action_prog_argument(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10ecad0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":112827,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":112827,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":112828,"tokLen":1}},"renderKind":"bold"}
# 
	var name : UnsafePointer[Int8]

	var size : UInt32

	var value : UnsafePointer[UInt8]

struct rte_flow_action_prog(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10ed0c0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":113346,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":113346,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":113347,"tokLen":1}},"renderKind":"bold"}
# 
	var name : UnsafePointer[Int8]

	var args_num : UInt32

	var args : UnsafePointer[rte_flow_action_prog_argument]

alias rte_flow_dynf_metadata_offs = ffi.c_long
alias rte_flow_dynf_metadata_mask = ffi.c_ulong_long
alias rte_flow_dynf_metadata_get = fn (UnsafePointer[rte_mbuf]) -> UInt32
alias rte_flow_dynf_metadata_set = fn (UnsafePointer[rte_mbuf], UInt32) -> NoneType
struct rte_flow_template_table(Copyable & Movable):
	pass
struct rte_flow_action_jump_to_table_index(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10ed8b0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":114693,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":114693,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":114694,"tokLen":1}},"renderKind":"bold"}

	var table : rte_flow_template_table

	var index : UInt32

struct rte_flow_action(Copyable & Movable):

	var type : rte_flow_action_type

	var conf : OpaquePointer

struct rte_flow(Copyable & Movable):

	pass
struct rte_flow_action_sample(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x10ee230","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":115874,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":115874,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":115875,"tokLen":1}},"renderKind":"bold"}

	var ratio : UInt32

	var actions : UnsafePointer[rte_flow_action]

struct rte_flow_error_type(Copyable & Movable):

	alias RTE_FLOW_ERROR_TYPE_NONE = 0

	alias RTE_FLOW_ERROR_TYPE_UNSPECIFIED = 1

	alias RTE_FLOW_ERROR_TYPE_HANDLE = 2

	alias RTE_FLOW_ERROR_TYPE_ATTR_GROUP = 3

	alias RTE_FLOW_ERROR_TYPE_ATTR_PRIORITY = 4

	alias RTE_FLOW_ERROR_TYPE_ATTR_INGRESS = 5

	alias RTE_FLOW_ERROR_TYPE_ATTR_EGRESS = 6

	alias RTE_FLOW_ERROR_TYPE_ATTR_TRANSFER = 7

	alias RTE_FLOW_ERROR_TYPE_ATTR = 8

	alias RTE_FLOW_ERROR_TYPE_ITEM_NUM = 9

	alias RTE_FLOW_ERROR_TYPE_ITEM_SPEC = 10

	alias RTE_FLOW_ERROR_TYPE_ITEM_LAST = 11

	alias RTE_FLOW_ERROR_TYPE_ITEM_MASK = 12

	alias RTE_FLOW_ERROR_TYPE_ITEM = 13

	alias RTE_FLOW_ERROR_TYPE_ACTION_NUM = 14

	alias RTE_FLOW_ERROR_TYPE_ACTION_CONF = 15

	alias RTE_FLOW_ERROR_TYPE_ACTION = 16

	alias RTE_FLOW_ERROR_TYPE_STATE = 17

struct rte_flow_error(Copyable & Movable):

	var type : rte_flow_error_type

	var cause : OpaquePointer

	var message : UnsafePointer[Int8]

alias anonomous_record_224 = C_Union[UnsafePointer[rte_flow_action], UnsafePointer[rte_flow_action]]

alias anonomous_record_223 = C_Union[UnsafePointer[rte_flow_item], UnsafePointer[rte_flow_item]]

alias anonomous_record_222 = C_Union[UnsafePointer[rte_flow_attr], UnsafePointer[rte_flow_attr]]

struct rte_flow_conv_rule(Copyable & Movable):
# # 
	var union_placeholder_1 : anonomous_record_222



	var union_placeholder_2 : anonomous_record_223



	var union_placeholder_3 : anonomous_record_224



struct rte_flow_conv_op(Copyable & Movable):
# 
	alias RTE_FLOW_CONV_OP_NONE = 0

	alias RTE_FLOW_CONV_OP_ATTR = 1

	alias RTE_FLOW_CONV_OP_ITEM = 2

	alias RTE_FLOW_CONV_OP_ITEM_MASK = 3

	alias RTE_FLOW_CONV_OP_ACTION = 4

	alias RTE_FLOW_CONV_OP_PATTERN = 5

	alias RTE_FLOW_CONV_OP_ACTIONS = 6

	alias RTE_FLOW_CONV_OP_RULE = 7

	alias RTE_FLOW_CONV_OP_ITEM_NAME = 8

	alias RTE_FLOW_CONV_OP_ACTION_NAME = 9

	alias RTE_FLOW_CONV_OP_ITEM_NAME_PTR = 10

	alias RTE_FLOW_CONV_OP_ACTION_NAME_PTR = 11

alias rte_flow_dev_dump = fn (UInt16, UnsafePointer[rte_flow], UnsafePointer[FILE], UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_dynf_metadata_avail = fn () -> Int32
alias rte_flow_dynf_metadata_register = fn () -> Int32
alias rte_flow_validate = fn (UInt16, UnsafePointer[rte_flow_attr], UnsafePointer[rte_flow_item], UnsafePointer[rte_flow_action], UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_create = fn (UInt16, UnsafePointer[rte_flow_attr], UnsafePointer[rte_flow_item], UnsafePointer[rte_flow_action], UnsafePointer[rte_flow_error]) -> UnsafePointer[rte_flow]
alias rte_flow_destroy = fn (UInt16, UnsafePointer[rte_flow], UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_actions_update = fn (UInt16, UnsafePointer[rte_flow], UnsafePointer[rte_flow_action], UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_flush = fn (UInt16, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_query = fn (UInt16, UnsafePointer[rte_flow], UnsafePointer[rte_flow_action], OpaquePointer, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_isolate = fn (UInt16, Int32, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_error_set = fn (UnsafePointer[rte_flow_error], Int32, rte_flow_error_type, OpaquePointer, UnsafePointer[Int8]) -> Int32
struct rte_flow_desc(Copyable & Movable):
# # 
	var size : ffi.c_ulong

	var attr : rte_flow_attr

	var items : UnsafePointer[rte_flow_item]

	var actions : UnsafePointer[rte_flow_action]

	var data : UnsafePointer[UInt8] # Failed to parse array size

alias rte_flow_copy = fn (UnsafePointer[rte_flow_desc], size_t, UnsafePointer[rte_flow_attr], UnsafePointer[rte_flow_item], UnsafePointer[rte_flow_action]) -> size_t
alias rte_flow_conv = fn (rte_flow_conv_op, OpaquePointer, size_t, OpaquePointer, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_get_aged_flows = fn (UInt16, UnsafePointer[OpaquePointer], UInt32, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_get_q_aged_flows = fn (UInt16, UInt32, UnsafePointer[OpaquePointer], UInt32, UnsafePointer[rte_flow_error]) -> Int32
struct rte_flow_indir_action_conf(Copyable & Movable):

	var ingress : UInt32

	var egress : UInt32

	var transfer : UInt32

alias rte_flow_action_handle_create = fn (UInt16, UnsafePointer[rte_flow_indir_action_conf], UnsafePointer[rte_flow_action], UnsafePointer[rte_flow_error]) -> UnsafePointer[rte_flow_action_handle]
alias rte_flow_action_handle_destroy = fn (UInt16, UnsafePointer[rte_flow_action_handle], UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_action_handle_update = fn (UInt16, UnsafePointer[rte_flow_action_handle], OpaquePointer, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_action_handle_query = fn (UInt16, UnsafePointer[rte_flow_action_handle], OpaquePointer, UnsafePointer[rte_flow_error]) -> Int32
struct anonomous_record_226(Copyable & Movable):
	var src_addr : rte_ipv6_addr

	var dst_addr : rte_ipv6_addr

struct anonomous_record_225(Copyable & Movable):
	var src_addr : UInt32

	var dst_addr : UInt32

alias anonomous_record_227 = C_Union[anonomous_record_225, anonomous_record_226]

struct rte_flow_tunnel(Copyable & Movable):

	var type : rte_flow_item_type

	var tun_id : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_227



	var tp_src : UInt16

	var tp_dst : UInt16

	var tun_flags : UInt16

	var is_ipv6 : Bool

	var tos : UInt8

	var ttl : UInt8

	var label : UInt32

struct rte_flow_restore_info(Copyable & Movable):

	var flags : ffi.c_ulong

	var group_id : UInt32

	var tunnel : rte_flow_tunnel

alias rte_flow_tunnel_decap_set = fn (UInt16, UnsafePointer[rte_flow_tunnel], UnsafePointer[UnsafePointer[rte_flow_action]], UnsafePointer[UInt32], UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_tunnel_match = fn (UInt16, UnsafePointer[rte_flow_tunnel], UnsafePointer[UnsafePointer[rte_flow_item]], UnsafePointer[UInt32], UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_restore_info_dynflag = fn () -> ffi.c_ulong
alias rte_flow_get_restore_info = fn (UInt16, UnsafePointer[rte_mbuf], UnsafePointer[rte_flow_restore_info], UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_tunnel_action_decap_release = fn (UInt16, UnsafePointer[rte_flow_action], UInt32, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_tunnel_item_release = fn (UInt16, UnsafePointer[rte_flow_item], UInt32, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_pick_transfer_proxy = fn (UInt16, UnsafePointer[UInt16], UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_flex_item_create = fn (UInt16, UnsafePointer[rte_flow_item_flex_conf], UnsafePointer[rte_flow_error]) -> UnsafePointer[rte_flow_item_flex_handle]
alias rte_flow_flex_item_release = fn (UInt16, UnsafePointer[rte_flow_item_flex_handle], UnsafePointer[rte_flow_error]) -> Int32
struct rte_flow_port_info(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x1109e80","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":153477,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":153477,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":153478,"tokLen":1}},"renderKind":"bold"}

	var max_nb_queues : UInt32

	var max_nb_counters : UInt32

	var max_nb_aging_objects : UInt32

	var max_nb_meters : UInt32

	var max_nb_conn_tracks : UInt32

	var max_nb_quotas : UInt32

	var supported_flags : UInt32

struct rte_flow_queue_info(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x110a9a0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":154423,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":154423,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":154424,"tokLen":1}},"renderKind":"bold"}
# # Node: PlaceHolder()
# {"args":["port_attr.max_nb_queues"],"id":"0x110aaa0","kind":"InlineCommandComment","loc":{"col":28,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":154566,"tokLen":1},"name":"p","range":{"begin":{"col":28,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":154566,"tokLen":1},"end":{"col":29,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":154567,"tokLen":1}},"renderKind":"monospaced"}

	var max_size : UInt32

alias rte_flow_info_get = fn (UInt16, UnsafePointer[rte_flow_port_info], UnsafePointer[rte_flow_queue_info], UnsafePointer[rte_flow_error]) -> Int32
struct rte_flow_port_attr(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x110b480","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":155629,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":155629,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":155630,"tokLen":1}},"renderKind":"bold"}

	var nb_counters : UInt32

	var nb_aging_objects : UInt32

	var nb_meters : UInt32

	var nb_conn_tracks : UInt32

	var host_port_id : UInt16

	var nb_quotas : UInt32

	var flags : UInt32

struct rte_flow_queue_attr(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x110bfa0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":156537,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":156537,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":156538,"tokLen":1}},"renderKind":"bold"}

	var size : UInt32

alias rte_flow_configure = fn (UInt16, UnsafePointer[rte_flow_port_attr], UInt16, UnsafePointer[UnsafePointer[rte_flow_queue_attr]], UnsafePointer[rte_flow_error]) -> Int32
struct rte_flow_pattern_template(Copyable & Movable):

	pass
struct rte_flow_pattern_template_attr(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x110cd40","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":158274,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":158274,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":158275,"tokLen":1}},"renderKind":"bold"}

	var relaxed_matching : UInt32

	var ingress : UInt32

	var egress : UInt32

	var transfer : UInt32

alias rte_flow_pattern_template_create = fn (UInt16, UnsafePointer[rte_flow_pattern_template_attr], UnsafePointer[rte_flow_item], UnsafePointer[rte_flow_error]) -> UnsafePointer[rte_flow_pattern_template]
alias rte_flow_pattern_template_destroy = fn (UInt16, UnsafePointer[rte_flow_pattern_template], UnsafePointer[rte_flow_error]) -> Int32
struct rte_flow_actions_template(Copyable & Movable):

	pass
struct rte_flow_actions_template_attr(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x110e340","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":161290,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":161290,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":161291,"tokLen":1}},"renderKind":"bold"}

	var ingress : UInt32

	var egress : UInt32

	var transfer : UInt32

alias rte_flow_actions_template_create = fn (UInt16, UnsafePointer[rte_flow_actions_template_attr], UnsafePointer[rte_flow_action], UnsafePointer[rte_flow_action], UnsafePointer[rte_flow_error]) -> UnsafePointer[rte_flow_actions_template]
alias rte_flow_actions_template_destroy = fn (UInt16, UnsafePointer[rte_flow_actions_template], UnsafePointer[rte_flow_error]) -> Int32
struct rte_flow_table_insertion_type(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x110fca0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":165559,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":165559,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":165560,"tokLen":1}},"renderKind":"bold"}

	alias RTE_FLOW_TABLE_INSERTION_TYPE_PATTERN = 0

	alias RTE_FLOW_TABLE_INSERTION_TYPE_INDEX = 1

	alias RTE_FLOW_TABLE_INSERTION_TYPE_INDEX_WITH_PATTERN = 2

struct rte_flow_table_hash_func(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x1110160","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":165985,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":165985,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":165986,"tokLen":1}},"renderKind":"bold"}

	alias RTE_FLOW_TABLE_HASH_FUNC_DEFAULT = 0

	alias RTE_FLOW_TABLE_HASH_FUNC_LINEAR = 1

	alias RTE_FLOW_TABLE_HASH_FUNC_CRC32 = 2

	alias RTE_FLOW_TABLE_HASH_FUNC_CRC16 = 3

struct rte_flow_template_table_attr(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x11106d0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":166467,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":166467,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":166468,"tokLen":1}},"renderKind":"bold"}

	var flow_attr : rte_flow_attr

	var nb_flows : UInt32

	var specialize : UInt32

	var insertion_type : rte_flow_table_insertion_type

	var hash_func : rte_flow_table_hash_func

alias rte_flow_template_table_resizable = fn (# # Node: PlaceHolder()
# {"id":"0xf17d10","kind":"UnusedAttr","range":{"begin":{"expansionLoc":{"col":35,"file":"dpdk/lib/ethdev/rte_flow.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":5997,"offset":167698,"tokLen":12},"spellingLoc":{"col":37,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":248,"offset":7106,"tokLen":10}},"end":{"expansionLoc":{"col":35,"file":"dpdk/lib/ethdev/rte_flow.h","includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"line":5997,"offset":167698,"tokLen":12},"spellingLoc":{"col":37,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":248,"offset":7106,"tokLen":10}}}}
Int16, UnsafePointer[rte_flow_template_table_attr]) -> Bool
alias rte_flow_template_table_create = fn (UInt16, UnsafePointer[rte_flow_template_table_attr], UnsafePointer[UnsafePointer[rte_flow_pattern_template]], UInt8, UnsafePointer[UnsafePointer[rte_flow_actions_template]], UInt8, UnsafePointer[rte_flow_error]) -> UnsafePointer[rte_flow_template_table]
alias rte_flow_template_table_destroy = fn (UInt16, UnsafePointer[rte_flow_template_table], UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_group_set_miss_actions = fn (UInt16, UInt32, UnsafePointer[rte_flow_group_attr], UnsafePointer[rte_flow_action], UnsafePointer[rte_flow_error]) -> Int32
struct rte_flow_op_attr(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x1112b80","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":170842,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":170842,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":170843,"tokLen":1}},"renderKind":"bold"}

	var postpone : UInt32

alias rte_flow_async_create = fn (UInt16, UInt32, UnsafePointer[rte_flow_op_attr], UnsafePointer[rte_flow_template_table], UnsafePointer[rte_flow_item], UInt8, UnsafePointer[rte_flow_action], UInt8, OpaquePointer, UnsafePointer[rte_flow_error]) -> UnsafePointer[rte_flow]
alias rte_flow_async_create_by_index = fn (UInt16, UInt32, UnsafePointer[rte_flow_op_attr], UnsafePointer[rte_flow_template_table], UInt32, UnsafePointer[rte_flow_action], UInt8, OpaquePointer, UnsafePointer[rte_flow_error]) -> UnsafePointer[rte_flow]
alias rte_flow_async_create_by_index_with_pattern = fn (UInt16, UInt32, UnsafePointer[rte_flow_op_attr], UnsafePointer[rte_flow_template_table], UInt32, UnsafePointer[rte_flow_item], UInt8, UnsafePointer[rte_flow_action], UInt8, OpaquePointer, UnsafePointer[rte_flow_error]) -> UnsafePointer[rte_flow]
alias rte_flow_async_destroy = fn (UInt16, UInt32, UnsafePointer[rte_flow_op_attr], UnsafePointer[rte_flow], OpaquePointer, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_async_actions_update = fn (UInt16, UInt32, UnsafePointer[rte_flow_op_attr], UnsafePointer[rte_flow], UnsafePointer[rte_flow_action], UInt8, OpaquePointer, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_push = fn (UInt16, UInt32, UnsafePointer[rte_flow_error]) -> Int32
struct rte_flow_op_status(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x1116f40","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":179692,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":179692,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":179693,"tokLen":1}},"renderKind":"bold"}

	alias RTE_FLOW_OP_SUCCESS = 0

	alias RTE_FLOW_OP_ERROR = 1

struct rte_flow_op_result(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x1117310","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":179999,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":179999,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":180000,"tokLen":1}},"renderKind":"bold"}

	var status : rte_flow_op_status

	var user_data : OpaquePointer

alias rte_flow_pull = fn (UInt16, UInt32, UnsafePointer[rte_flow_op_result], UInt16, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_async_action_handle_create = fn (UInt16, UInt32, UnsafePointer[rte_flow_op_attr], UnsafePointer[rte_flow_indir_action_conf], UnsafePointer[rte_flow_action], OpaquePointer, UnsafePointer[rte_flow_error]) -> UnsafePointer[rte_flow_action_handle]
alias rte_flow_async_action_handle_destroy = fn (UInt16, UInt32, UnsafePointer[rte_flow_op_attr], UnsafePointer[rte_flow_action_handle], OpaquePointer, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_async_action_handle_update = fn (UInt16, UInt32, UnsafePointer[rte_flow_op_attr], UnsafePointer[rte_flow_action_handle], OpaquePointer, OpaquePointer, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_async_action_handle_query = fn (UInt16, UInt32, UnsafePointer[rte_flow_op_attr], UnsafePointer[rte_flow_action_handle], OpaquePointer, OpaquePointer, UnsafePointer[rte_flow_error]) -> Int32
struct rte_flow_query_update_mode(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x111a7f0","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":186500,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":186500,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":186501,"tokLen":1}},"renderKind":"bold"}
# # 
	alias RTE_FLOW_QU_QUERY_FIRST = 1

	alias RTE_FLOW_QU_UPDATE_FIRST = 2

alias rte_flow_action_handle_query_update = fn (UInt16, UnsafePointer[rte_flow_action_handle], OpaquePointer, OpaquePointer, rte_flow_query_update_mode, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_async_action_handle_query_update = fn (UInt16, UInt32, UnsafePointer[rte_flow_op_attr], UnsafePointer[rte_flow_action_handle], OpaquePointer, OpaquePointer, rte_flow_query_update_mode, OpaquePointer, UnsafePointer[rte_flow_error]) -> Int32
struct rte_flow_action_list_handle(Copyable & Movable):
	pass
struct rte_flow_action_indirect_list(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x111c340","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":189921,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":189921,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":189922,"tokLen":1}},"renderKind":"bold"}
# 
	var handle : UnsafePointer[rte_flow_action_list_handle]

	var conf : UnsafePointer[OpaquePointer]

alias rte_flow_action_list_handle_create = fn (UInt16, UnsafePointer[rte_flow_indir_action_conf], UnsafePointer[rte_flow_action], UnsafePointer[rte_flow_error]) -> UnsafePointer[rte_flow_action_list_handle]
alias rte_flow_async_action_list_handle_create = fn (UInt16, UInt32, UnsafePointer[rte_flow_op_attr], UnsafePointer[rte_flow_indir_action_conf], UnsafePointer[rte_flow_action], OpaquePointer, UnsafePointer[rte_flow_error]) -> UnsafePointer[rte_flow_action_list_handle]
alias rte_flow_action_list_handle_destroy = fn (UInt16, UnsafePointer[rte_flow_action_list_handle], UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_async_action_list_handle_destroy = fn (UInt16, UInt32, UnsafePointer[rte_flow_op_attr], UnsafePointer[rte_flow_action_list_handle], OpaquePointer, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_action_list_handle_query_update = fn (UInt16, UnsafePointer[rte_flow_action_list_handle], UnsafePointer[OpaquePointer], UnsafePointer[OpaquePointer], rte_flow_query_update_mode, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_async_action_list_handle_query_update = fn (UInt16, UInt32, UnsafePointer[rte_flow_op_attr], UnsafePointer[rte_flow_action_list_handle], UnsafePointer[OpaquePointer], UnsafePointer[OpaquePointer], rte_flow_query_update_mode, OpaquePointer, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_calc_table_hash = fn (UInt16, UnsafePointer[rte_flow_template_table], UnsafePointer[rte_flow_item], UInt8, UnsafePointer[UInt32], UnsafePointer[rte_flow_error]) -> Int32
struct rte_flow_encap_hash_field(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x1120c00","kind":"InlineCommandComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":200545,"tokLen":1},"name":"b","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":200545,"tokLen":1},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_eth_ctrl.h"},"offset":200546,"tokLen":1}},"renderKind":"bold"}
# 
	alias RTE_FLOW_ENCAP_HASH_FIELD_SRC_PORT = 0

	alias RTE_FLOW_ENCAP_HASH_FIELD_NVGRE_FLOW_ID = 1

alias rte_flow_calc_encap_hash = fn (UInt16, UnsafePointer[rte_flow_item], rte_flow_encap_hash_field, UInt8, UnsafePointer[UInt8], UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_template_table_resize = fn (UInt16, UnsafePointer[rte_flow_template_table], UInt32, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_async_update_resized = fn (UInt16, UInt32, UnsafePointer[rte_flow_op_attr], UnsafePointer[rte_flow], OpaquePointer, UnsafePointer[rte_flow_error]) -> Int32
alias rte_flow_template_table_resize_complete = fn (UInt16, UnsafePointer[rte_flow_template_table], UnsafePointer[rte_flow_error]) -> Int32
struct rte_eth_ntuple_filter(Copyable & Movable):

	var flags : UInt16

	var dst_ip : UInt32

	var dst_ip_mask : UInt32

	var src_ip : UInt32

	var src_ip_mask : UInt32

	var dst_port : UInt16

	var dst_port_mask : UInt16

	var src_port : UInt16

	var src_port_mask : UInt16

	var proto : UInt8

	var proto_mask : UInt8

	var tcp_flags : UInt8

	var priority : UInt16

	var queue : UInt16

struct rte_eth_input_set_field(Copyable & Movable):

	alias RTE_ETH_INPUT_SET_UNKNOWN = 0

	alias RTE_ETH_INPUT_SET_L2_SRC_MAC = 1

	alias RTE_ETH_INPUT_SET_L2_DST_MAC = 2

	alias RTE_ETH_INPUT_SET_L2_OUTER_VLAN = 3

	alias RTE_ETH_INPUT_SET_L2_INNER_VLAN = 4

	alias RTE_ETH_INPUT_SET_L2_ETHERTYPE = 5

	alias RTE_ETH_INPUT_SET_L3_SRC_IP4 = 129

	alias RTE_ETH_INPUT_SET_L3_DST_IP4 = 130

	alias RTE_ETH_INPUT_SET_L3_SRC_IP6 = 131

	alias RTE_ETH_INPUT_SET_L3_DST_IP6 = 132

	alias RTE_ETH_INPUT_SET_L3_IP4_TOS = 133

	alias RTE_ETH_INPUT_SET_L3_IP4_PROTO = 134

	alias RTE_ETH_INPUT_SET_L3_IP6_TC = 135

	alias RTE_ETH_INPUT_SET_L3_IP6_NEXT_HEADER = 136

	alias RTE_ETH_INPUT_SET_L3_IP4_TTL = 137

	alias RTE_ETH_INPUT_SET_L3_IP6_HOP_LIMITS = 138

	alias RTE_ETH_INPUT_SET_L4_UDP_SRC_PORT = 257

	alias RTE_ETH_INPUT_SET_L4_UDP_DST_PORT = 258

	alias RTE_ETH_INPUT_SET_L4_TCP_SRC_PORT = 259

	alias RTE_ETH_INPUT_SET_L4_TCP_DST_PORT = 260

	alias RTE_ETH_INPUT_SET_L4_SCTP_SRC_PORT = 261

	alias RTE_ETH_INPUT_SET_L4_SCTP_DST_PORT = 262

	alias RTE_ETH_INPUT_SET_L4_SCTP_VERIFICATION_TAG = 263

	alias RTE_ETH_INPUT_SET_TUNNEL_L2_INNER_DST_MAC = 385

	alias RTE_ETH_INPUT_SET_TUNNEL_L2_INNER_SRC_MAC = 386

	alias RTE_ETH_INPUT_SET_TUNNEL_L2_INNER_VLAN = 387

	alias RTE_ETH_INPUT_SET_TUNNEL_L4_UDP_KEY = 388

	alias RTE_ETH_INPUT_SET_TUNNEL_GRE_KEY = 389

	alias RTE_ETH_INPUT_SET_FLEX_PAYLOAD_1ST_WORD = 641

	alias RTE_ETH_INPUT_SET_FLEX_PAYLOAD_2ND_WORD = 642

	alias RTE_ETH_INPUT_SET_FLEX_PAYLOAD_3RD_WORD = 643

	alias RTE_ETH_INPUT_SET_FLEX_PAYLOAD_4TH_WORD = 644

	alias RTE_ETH_INPUT_SET_FLEX_PAYLOAD_5TH_WORD = 645

	alias RTE_ETH_INPUT_SET_FLEX_PAYLOAD_6TH_WORD = 646

	alias RTE_ETH_INPUT_SET_FLEX_PAYLOAD_7TH_WORD = 647

	alias RTE_ETH_INPUT_SET_FLEX_PAYLOAD_8TH_WORD = 648

	alias RTE_ETH_INPUT_SET_DEFAULT = 65533

	alias RTE_ETH_INPUT_SET_NONE = 65534

	alias RTE_ETH_INPUT_SET_MAX = 65535

struct rte_filter_input_set_op(Copyable & Movable):

	alias RTE_ETH_INPUT_SET_OP_UNKNOWN = 0

	alias RTE_ETH_INPUT_SET_SELECT = 1

	alias RTE_ETH_INPUT_SET_ADD = 2

	alias RTE_ETH_INPUT_SET_OP_MAX = 3

struct rte_eth_input_set_conf(Copyable & Movable):

	var flow_type : UInt16

	var inset_size : UInt16

	var field : InlineArray[rte_eth_input_set_field, 128]

	var op : rte_filter_input_set_op

struct rte_eth_l2_flow(Copyable & Movable):

	var ether_type : UInt16

struct rte_eth_ipv4_flow(Copyable & Movable):

	var src_ip : UInt32

	var dst_ip : UInt32

	var tos : UInt8

	var ttl : UInt8

	var proto : UInt8

struct rte_eth_udpv4_flow(Copyable & Movable):

	var ip : rte_eth_ipv4_flow

	var src_port : UInt16

	var dst_port : UInt16

struct rte_eth_tcpv4_flow(Copyable & Movable):

	var ip : rte_eth_ipv4_flow

	var src_port : UInt16

	var dst_port : UInt16

struct rte_eth_sctpv4_flow(Copyable & Movable):

	var ip : rte_eth_ipv4_flow

	var src_port : UInt16

	var dst_port : UInt16

	var verify_tag : UInt32

struct rte_eth_ipv6_flow(Copyable & Movable):

	var src_ip : InlineArray[ffi.c_ulong, 4]

	var dst_ip : InlineArray[ffi.c_ulong, 4]

	var tc : UInt8

	var proto : UInt8

	var hop_limits : UInt8

struct rte_eth_udpv6_flow(Copyable & Movable):

	var ip : rte_eth_ipv6_flow

	var src_port : UInt16

	var dst_port : UInt16

struct rte_eth_tcpv6_flow(Copyable & Movable):

	var ip : rte_eth_ipv6_flow

	var src_port : UInt16

	var dst_port : UInt16

struct rte_eth_sctpv6_flow(Copyable & Movable):

	var ip : rte_eth_ipv6_flow

	var src_port : UInt16

	var dst_port : UInt16

	var verify_tag : UInt32

struct rte_eth_mac_vlan_flow(Copyable & Movable):

	var mac_addr : rte_ether_addr

struct rte_eth_fdir_tunnel_type(Copyable & Movable):

	alias RTE_FDIR_TUNNEL_TYPE_UNKNOWN = 0

	alias RTE_FDIR_TUNNEL_TYPE_NVGRE = 1

	alias RTE_FDIR_TUNNEL_TYPE_VXLAN = 2

struct rte_eth_tunnel_flow(Copyable & Movable):

	var tunnel_type : rte_eth_fdir_tunnel_type

	var tunnel_id : UInt32

	var mac_addr : rte_ether_addr

alias rte_eth_fdir_flow = C_Union[rte_eth_l2_flow, rte_eth_udpv4_flow, rte_eth_tcpv4_flow, rte_eth_sctpv4_flow, rte_eth_ipv4_flow, rte_eth_udpv6_flow, rte_eth_tcpv6_flow, rte_eth_sctpv6_flow, rte_eth_ipv6_flow, rte_eth_mac_vlan_flow, rte_eth_tunnel_flow]

struct rte_eth_fdir_flow_ext(Copyable & Movable):

	var vlan_tci : UInt16

	var flexbytes : InlineArray[UInt8, 16]

	var is_vf : UInt8

	var dst_id : UInt16

struct rte_eth_fdir_input(Copyable & Movable):

	var flow_type : UInt16

	var flow : union rte_eth_fdir_flow

	var flow_ext : rte_eth_fdir_flow_ext

struct rte_eth_fdir_behavior(Copyable & Movable):

	alias RTE_ETH_FDIR_ACCEPT = 0

	alias RTE_ETH_FDIR_REJECT = 1

	alias RTE_ETH_FDIR_PASSTHRU = 2

struct rte_eth_fdir_status(Copyable & Movable):

	alias RTE_ETH_FDIR_NO_REPORT_STATUS = 0

	alias RTE_ETH_FDIR_REPORT_ID = 1

	alias RTE_ETH_FDIR_REPORT_ID_FLEX_4 = 2

	alias RTE_ETH_FDIR_REPORT_FLEX_8 = 3

struct rte_eth_fdir_action(Copyable & Movable):

	var rx_queue : UInt16

	var behavior : rte_eth_fdir_behavior

	var report_status : rte_eth_fdir_status

	var flex_off : UInt8

struct rte_eth_fdir_filter(Copyable & Movable):

	var soft_id : UInt32

	var input : rte_eth_fdir_input

	var action : rte_eth_fdir_action

struct rte_eth_fdir_masks(Copyable & Movable):

	var vlan_tci_mask : UInt16

	var ipv4_mask : rte_eth_ipv4_flow

	var ipv6_mask : rte_eth_ipv6_flow

	var src_port_mask : UInt16

	var dst_port_mask : UInt16

	var mac_addr_byte_mask : UInt8

	var tunnel_id_mask : UInt32

	var tunnel_type_mask : UInt8

struct rte_eth_payload_type(Copyable & Movable):

	alias RTE_ETH_PAYLOAD_UNKNOWN = 0

	alias RTE_ETH_RAW_PAYLOAD = 1

	alias RTE_ETH_L2_PAYLOAD = 2

	alias RTE_ETH_L3_PAYLOAD = 3

	alias RTE_ETH_L4_PAYLOAD = 4

	alias RTE_ETH_PAYLOAD_MAX = 8

struct rte_eth_flex_payload_cfg(Copyable & Movable):

	var type : rte_eth_payload_type

	var src_offset : InlineArray[UInt16, 16]

struct rte_eth_fdir_flex_mask(Copyable & Movable):

	var flow_type : UInt16

	var mask : InlineArray[UInt8, 16]

struct rte_eth_fdir_flex_conf(Copyable & Movable):

	var nb_payloads : UInt16

	var nb_flexmasks : UInt16

	var flex_set : InlineArray[rte_eth_flex_payload_cfg, 8]

	var flex_mask : InlineArray[rte_eth_fdir_flex_mask, 24]

struct rte_fdir_mode(Copyable & Movable):

	alias RTE_FDIR_MODE_NONE = 0

	alias RTE_FDIR_MODE_SIGNATURE = 1

	alias RTE_FDIR_MODE_PERFECT = 2

	alias RTE_FDIR_MODE_PERFECT_MAC_VLAN = 3

	alias RTE_FDIR_MODE_PERFECT_TUNNEL = 4

struct rte_eth_fdir_info(Copyable & Movable):

	var mode : rte_fdir_mode

	var mask : rte_eth_fdir_masks

	var flex_conf : rte_eth_fdir_flex_conf

	var guarant_spc : UInt32

	var best_spc : UInt32

	var flow_types_mask : InlineArray[ffi.c_ulong_long, 1]

	var max_flexpayload : UInt32

	var flex_payload_unit : UInt32

	var max_flex_payload_segment_num : UInt32

	var flex_payload_limit : UInt16

	var flex_bitmask_unit : UInt32

	var max_flex_bitmask_num : UInt32

struct rte_eth_fdir_stats(Copyable & Movable):

	var collision : UInt32

	var free : UInt32

	var maxhash : UInt32

	var maxlen : UInt32

	var add : ffi.c_ulong

	var remove : ffi.c_ulong

	var f_add : ffi.c_ulong

	var f_remove : ffi.c_ulong

	var guarant_cnt : UInt32

	var best_cnt : UInt32

struct rte_eth_udp_tunnel(Copyable & Movable):

	var udp_port : UInt16

	var prot_type : UInt8

struct rte_eth_intr_conf(Copyable & Movable):

	var lsc : UInt32

	var rxq : UInt32

	var rmv : UInt32

alias anonomous_record_229 = C_Union[rte_eth_vmdq_dcb_tx_conf, rte_eth_dcb_tx_conf, rte_eth_vmdq_tx_conf]

struct anonomous_record_228(Copyable & Movable):
	var rss_conf : rte_eth_rss_conf

	var vmdq_dcb_conf : rte_eth_vmdq_dcb_conf

	var dcb_rx_conf : rte_eth_dcb_rx_conf

	var vmdq_rx_conf : rte_eth_vmdq_rx_conf

struct rte_eth_conf(Copyable & Movable):

	var link_speeds : UInt32

	var rxmode : rte_eth_rxmode

	var txmode : rte_eth_txmode

	var lpbk_mode : UInt32

	var rx_adv_conf : anonomous_record_228

	var tx_adv_conf : anonomous_record_229

	var dcb_capability_en : UInt32

	var intr_conf : rte_eth_intr_conf

struct rte_eth_dev_portconf(Copyable & Movable):

	var burst_size : UInt16

	var ring_size : UInt16

	var nb_queues : UInt16

struct rte_eth_switch_info(Copyable & Movable):

	var name : UnsafePointer[Int8]

	var domain_id : UInt16

	var port_id : UInt16

	var rx_domain : UInt16

struct rte_eth_rxseg_capa(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x112dc20","kind":"InlineCommandComment","loc":{"col":4,"offset":64463,"tokLen":1},"name":"b","range":{"begin":{"col":4,"offset":64463,"tokLen":1},"end":{"col":5,"offset":64464,"tokLen":1}},"renderKind":"bold"}

	var multi_pools : UInt32

	var offset_allowed : UInt32

	var offset_align_log2 : UInt32

	var max_nseg : UInt16

	var reserved : UInt16

struct rte_eth_representor_type(Copyable & Movable):

	alias RTE_ETH_REPRESENTOR_NONE = 0

	alias RTE_ETH_REPRESENTOR_VF = 1

	alias RTE_ETH_REPRESENTOR_SF = 2

	alias RTE_ETH_REPRESENTOR_PF = 3

struct rte_eth_err_handle_mode(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x112e670","kind":"InlineCommandComment","loc":{"col":4,"offset":65344,"tokLen":1},"name":"b","range":{"begin":{"col":4,"offset":65344,"tokLen":1},"end":{"col":5,"offset":65345,"tokLen":1}},"renderKind":"bold"}

	alias RTE_ETH_ERROR_HANDLE_MODE_NONE = 0

	alias RTE_ETH_ERROR_HANDLE_MODE_PASSIVE = 1

	alias RTE_ETH_ERROR_HANDLE_MODE_PROACTIVE = 2

struct rte_eth_dev_info(Copyable & Movable):

	var device : UnsafePointer[rte_device]

	var driver_name : UnsafePointer[Int8]

	var if_index : UInt32

	var min_mtu : UInt16

	var max_mtu : UInt16

	var dev_flags : UnsafePointer[ffi.c_ulong]

	var min_rx_bufsize : UInt32

	var max_rx_bufsize : UInt32

	var max_rx_pktlen : UInt32

	var max_lro_pkt_size : UInt32

	var max_rx_queues : UInt16

	var max_tx_queues : UInt16

	var max_mac_addrs : UInt32

	var max_hash_mac_addrs : UInt32

	var max_vfs : UInt16

	var max_vmdq_pools : UInt16

	var rx_seg_capa : rte_eth_rxseg_capa

	var rx_offload_capa : ffi.c_ulong

	var tx_offload_capa : ffi.c_ulong

	var rx_queue_offload_capa : ffi.c_ulong

	var tx_queue_offload_capa : ffi.c_ulong

	var reta_size : UInt16

	var hash_key_size : UInt8

	var rss_algo_capa : UInt32

	var flow_type_rss_offloads : ffi.c_ulong

	var default_rxconf : rte_eth_rxconf

	var default_txconf : rte_eth_txconf

	var vmdq_queue_base : UInt16

	var vmdq_queue_num : UInt16

	var vmdq_pool_base : UInt16

	var rx_desc_lim : rte_eth_desc_lim

	var tx_desc_lim : rte_eth_desc_lim

	var speed_capa : UInt32

	var nb_rx_queues : UInt16

	var nb_tx_queues : UInt16

	var max_rx_mempools : UInt16

	var default_rxportconf : rte_eth_dev_portconf

	var default_txportconf : rte_eth_dev_portconf

	var dev_capa : ffi.c_ulong

	var switch_info : rte_eth_switch_info

	var err_handle_mode : rte_eth_err_handle_mode

	var reserved_64s : InlineArray[ffi.c_ulong_long, 2]

	var reserved_ptrs : InlineArray[OpaquePointer, 2]

struct rte_eth_rxq_info(Copyable & Movable):
# Alignment: 64 


	var mp : UnsafePointer[rte_mempool]

	var conf : rte_eth_rxconf

	var scattered_rx : UInt8

	var queue_state : UInt8

	var nb_desc : UInt16

	var rx_buf_size : UInt16

	var avail_thresh : UInt8

struct rte_eth_txq_info(Copyable & Movable):
# Alignment: 64 


	var conf : rte_eth_txconf

	var nb_desc : UInt16

	var queue_state : UInt8

struct rte_eth_recycle_rxq_info(Copyable & Movable):
# Alignment: 64 

# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x1131d10","kind":"InlineCommandComment","loc":{"col":4,"offset":71300,"tokLen":1},"name":"b","range":{"begin":{"col":4,"offset":71300,"tokLen":1},"end":{"col":5,"offset":71301,"tokLen":1}},"renderKind":"bold"}

	var mbuf_ring : UnsafePointer[UnsafePointer[rte_mbuf]]

	var mp : UnsafePointer[rte_mempool]

	var refill_head : UnsafePointer[UInt16]

	var receive_tail : UnsafePointer[UInt16]

	var mbuf_ring_size : UInt16

	var refill_requirement : UInt16

struct rte_eth_burst_mode(Copyable & Movable):

	var flags : ffi.c_ulong

	var info : InlineArray[Int8, 1024]

struct rte_eth_xstat(Copyable & Movable):

	var id : ffi.c_ulong

	var value : ffi.c_ulong

struct rte_eth_xstat_name(Copyable & Movable):

	var name : InlineArray[Int8, 64]

struct anonomous_record_231(Copyable & Movable):

	var base : UInt16

	var nb_queue : UInt16

struct anonomous_record_230(Copyable & Movable):

	var base : UInt16

	var nb_queue : UInt16

struct rte_eth_dcb_tc_queue_mapping(Copyable & Movable):

	var tc_rxq : anonomous_record_230

	var tc_txq : anonomous_record_231

struct rte_eth_dcb_info(Copyable & Movable):

	var nb_tcs : UInt8

	var prio_tc : InlineArray[UInt8, 8]

	var tc_bws : InlineArray[UInt8, 8]

	var tc_queue : rte_eth_dcb_tc_queue_mapping

struct rte_eth_fec_mode(Copyable & Movable):

	alias RTE_ETH_FEC_NOFEC = 0

	alias RTE_ETH_FEC_AUTO = 1

	alias RTE_ETH_FEC_BASER = 2

	alias RTE_ETH_FEC_RS = 3

	alias RTE_ETH_FEC_LLRS = 4

struct rte_eth_fec_capa(Copyable & Movable):

	var speed : UInt32

	var capa : UInt32

alias rte_rx_callback_fn = fn(UInt16, UInt16, UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, UInt16, OpaquePointer) -> UInt16
alias rte_tx_callback_fn = fn(UInt16, UInt16, UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, OpaquePointer) -> UInt16
struct rte_eth_dev_state(Copyable & Movable):

	alias RTE_ETH_DEV_UNUSED = 0

	alias RTE_ETH_DEV_ATTACHED = 1

	alias RTE_ETH_DEV_REMOVED = 2

struct rte_eth_dev_sriov(Copyable & Movable):
	var active : UInt8

	var nb_q_per_pool : UInt8

	var def_vmdq_idx : UInt16

	var def_pool_q_idx : UInt16

struct rte_eth_dev_owner(Copyable & Movable):
	var id : ffi.c_ulong

	var name : InlineArray[Int8, 64]

alias rte_eth_find_next_owned_by = fn (UInt16, ffi.c_long) -> ffi.c_ulong
alias rte_eth_find_next = fn (UInt16) -> UInt16
alias rte_eth_find_next_of = fn (UInt16, UnsafePointer[rte_device]) -> UInt16
alias rte_eth_find_next_sibling = fn (UInt16, UInt16) -> UInt16
alias rte_eth_dev_owner_new = fn (UnsafePointer[ffi.c_ulong]) -> Int32
alias rte_eth_dev_owner_set = fn (Int16, UnsafePointer[rte_eth_dev_owner]) -> Int32
alias rte_eth_dev_owner_unset = fn (Int16, ffi.c_long) -> Int32
alias rte_eth_dev_owner_delete = fn (ffi.c_long) -> Int32
alias rte_eth_dev_owner_get = fn (Int16, UnsafePointer[rte_eth_dev_owner]) -> Int32
alias rte_eth_dev_count_avail = fn () -> UInt16
alias rte_eth_dev_count_total = fn () -> UInt16
alias rte_eth_speed_bitflag = fn (UInt32, Int32) -> UInt32
alias rte_eth_dev_rx_offload_name = fn (ffi.c_ulong) -> UnsafePointer[Int8]
alias rte_eth_dev_tx_offload_name = fn (ffi.c_ulong) -> UnsafePointer[Int8]
alias rte_eth_dev_capability_name = fn (ffi.c_ulong) -> UnsafePointer[Int8]
alias rte_eth_dev_configure = fn (UInt16, UInt16, UInt16, UnsafePointer[rte_eth_conf]) -> Int32
alias rte_eth_dev_is_removed = fn (UInt16) -> Int32
alias rte_eth_rx_queue_setup = fn (UInt16, UInt16, UInt16, UInt32, UnsafePointer[rte_eth_rxconf], UnsafePointer[rte_mempool]) -> Int32
alias rte_eth_rx_hairpin_queue_setup = fn (UInt16, UInt16, UInt16, UnsafePointer[rte_eth_hairpin_conf]) -> Int32
alias rte_eth_tx_queue_setup = fn (UInt16, UInt16, UInt16, UInt32, UnsafePointer[rte_eth_txconf]) -> Int32
alias rte_eth_tx_hairpin_queue_setup = fn (UInt16, UInt16, UInt16, UnsafePointer[rte_eth_hairpin_conf]) -> Int32
alias rte_eth_hairpin_get_peer_ports = fn (UInt16, UnsafePointer[UInt16], size_t, UInt32) -> Int32
alias rte_eth_hairpin_bind = fn (UInt16, UInt16) -> Int32
alias rte_eth_hairpin_unbind = fn (UInt16, UInt16) -> Int32
alias rte_eth_dev_count_aggr_ports = fn (UInt16) -> Int32
alias rte_eth_dev_map_aggr_tx_affinity = fn (UInt16, UInt16, UInt8) -> Int32
alias rte_eth_dev_socket_id = fn (UInt16) -> Int32
alias rte_eth_dev_is_valid_port = fn (UInt16) -> Int32
alias rte_eth_rx_queue_is_valid = fn (UInt16, UInt16) -> Int32
alias rte_eth_tx_queue_is_valid = fn (UInt16, UInt16) -> Int32
alias rte_eth_dev_rx_queue_start = fn (UInt16, UInt16) -> Int32
alias rte_eth_dev_rx_queue_stop = fn (UInt16, UInt16) -> Int32
alias rte_eth_dev_tx_queue_start = fn (UInt16, UInt16) -> Int32
alias rte_eth_dev_tx_queue_stop = fn (UInt16, UInt16) -> Int32
alias rte_eth_dev_start = fn (UInt16) -> Int32
alias rte_eth_dev_stop = fn (UInt16) -> Int32
alias rte_eth_dev_set_link_up = fn (UInt16) -> Int32
alias rte_eth_dev_set_link_down = fn (UInt16) -> Int32
alias rte_eth_dev_close = fn (UInt16) -> Int32
alias rte_eth_dev_reset = fn (UInt16) -> Int32
alias rte_eth_promiscuous_enable = fn (UInt16) -> Int32
alias rte_eth_promiscuous_disable = fn (UInt16) -> Int32
alias rte_eth_promiscuous_get = fn (UInt16) -> Int32
alias rte_eth_allmulticast_enable = fn (UInt16) -> Int32
alias rte_eth_allmulticast_disable = fn (UInt16) -> Int32
alias rte_eth_allmulticast_get = fn (UInt16) -> Int32
alias rte_eth_link_get = fn (UInt16, UnsafePointer[rte_eth_link]) -> Int32
alias rte_eth_link_get_nowait = fn (UInt16, UnsafePointer[rte_eth_link]) -> Int32
alias rte_eth_link_speed_to_str = fn (UInt32) -> UnsafePointer[Int8]
alias rte_eth_link_to_str = fn (UnsafePointer[Int8], size_t, UnsafePointer[rte_eth_link]) -> Int32
alias rte_eth_speed_lanes_get = fn (UInt16, UnsafePointer[UInt32]) -> Int32
alias rte_eth_speed_lanes_set = fn (UInt16, UInt32) -> Int32
alias rte_eth_speed_lanes_get_capability = fn (UInt16, UnsafePointer[rte_eth_speed_lanes_capa], UInt32) -> Int32
alias rte_eth_stats_get = fn (UInt16, UnsafePointer[rte_eth_stats]) -> Int32
alias rte_eth_stats_reset = fn (UInt16) -> Int32
alias rte_eth_xstats_get_names = fn (UInt16, UnsafePointer[rte_eth_xstat_name], UInt32) -> Int32
alias rte_eth_xstats_get = fn (UInt16, UnsafePointer[rte_eth_xstat], UInt32) -> Int32
alias rte_eth_xstats_get_names_by_id = fn (UInt16, UnsafePointer[rte_eth_xstat_name], UInt32, UnsafePointer[ffi.c_ulong]) -> Int32
alias rte_eth_xstats_get_by_id = fn (UInt16, UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong], UInt32) -> Int32
alias rte_eth_xstats_get_id_by_name = fn (UInt16, UnsafePointer[Int8], UnsafePointer[ffi.c_ulong]) -> Int32
alias rte_eth_xstats_set_counter = fn (UInt16, ffi.c_ulong, Int32) -> Int32
alias rte_eth_xstats_query_state = fn (UInt16, ffi.c_ulong) -> Int32
alias rte_eth_xstats_reset = fn (UInt16) -> Int32
alias rte_eth_dev_set_tx_queue_stats_mapping = fn (UInt16, UInt16, UInt8) -> Int32
alias rte_eth_dev_set_rx_queue_stats_mapping = fn (UInt16, UInt16, UInt8) -> Int32
alias rte_eth_macaddr_get = fn (UInt16, UnsafePointer[rte_ether_addr]) -> Int32
alias rte_eth_macaddrs_get = fn (UInt16, UnsafePointer[rte_ether_addr], UInt32) -> Int32
alias rte_eth_dev_info_get = fn (UInt16, UnsafePointer[rte_eth_dev_info]) -> Int32
alias rte_eth_dev_conf_get = fn (UInt16, UnsafePointer[rte_eth_conf]) -> Int32
alias rte_eth_dev_fw_version_get = fn (UInt16, UnsafePointer[Int8], size_t) -> Int32
alias rte_eth_dev_get_supported_ptypes = fn (UInt16, UInt32, UnsafePointer[UInt32], Int32) -> Int32
alias rte_eth_dev_set_ptypes = fn (UInt16, UInt32, UnsafePointer[UInt32], UInt32) -> Int32
alias rte_eth_dev_get_mtu = fn (UInt16, UnsafePointer[UInt16]) -> Int32
alias rte_eth_dev_set_mtu = fn (UInt16, UInt16) -> Int32
alias rte_eth_dev_vlan_filter = fn (UInt16, UInt16, Int32) -> Int32
alias rte_eth_dev_set_vlan_strip_on_queue = fn (UInt16, UInt16, Int32) -> Int32
alias rte_eth_dev_set_vlan_ether_type = fn (UInt16, rte_vlan_type, UInt16) -> Int32
alias rte_eth_dev_set_vlan_offload = fn (UInt16, Int32) -> Int32
alias rte_eth_dev_get_vlan_offload = fn (UInt16) -> Int32
alias rte_eth_dev_set_vlan_pvid = fn (UInt16, UInt16, Int32) -> Int32
alias rte_eth_rx_avail_thresh_set = fn (UInt16, UInt16, UInt8) -> Int32
alias rte_eth_rx_avail_thresh_query = fn (UInt16, UnsafePointer[UInt16], UnsafePointer[UInt8]) -> Int32
alias buffer_tx_error_fn = fn(UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, OpaquePointer) -> NoneType
struct rte_eth_dev_tx_buffer(Copyable & Movable):

	var error_callback : fn(UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, OpaquePointer) -> NoneType

	var error_userdata : OpaquePointer

	var size : UInt16

	var length : UInt16

	var pkts : UnsafePointer[UnsafePointer[rte_mbuf]] # Failed to parse array size

alias rte_eth_tx_buffer_init = fn (UnsafePointer[rte_eth_dev_tx_buffer], UInt16) -> Int32
alias rte_eth_tx_buffer_set_err_callback = fn (UnsafePointer[rte_eth_dev_tx_buffer], buffer_tx_error_fn, OpaquePointer) -> Int32
alias rte_eth_tx_buffer_drop_callback = fn (UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, OpaquePointer) -> NoneType
alias rte_eth_tx_buffer_count_callback = fn (UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, OpaquePointer) -> NoneType
alias rte_eth_tx_done_cleanup = fn (UInt16, UInt16, UInt32) -> Int32
struct rte_eth_event_macsec_subtype(Copyable & Movable):
# # Node: PlaceHolder()
# {"args":["RTE_ETH_EVENT_MACSEC)"],"id":"0x1150670","kind":"InlineCommandComment","loc":{"col":39,"offset":145737,"tokLen":1},"name":"ref","range":{"begin":{"col":39,"offset":145737,"tokLen":1},"end":{"col":42,"offset":145740,"tokLen":1}},"renderKind":"normal"}

	alias RTE_ETH_SUBEVENT_MACSEC_UNKNOWN = 0

	alias RTE_ETH_SUBEVENT_MACSEC_RX_SECTAG_V_EQ1 = 1

	alias RTE_ETH_SUBEVENT_MACSEC_RX_SECTAG_E_EQ0_C_EQ1 = 2

	alias RTE_ETH_SUBEVENT_MACSEC_RX_SECTAG_SL_GTE48 = 3

	alias RTE_ETH_SUBEVENT_MACSEC_RX_SECTAG_ES_EQ1_SC_EQ1 = 4

	alias RTE_ETH_SUBEVENT_MACSEC_RX_SECTAG_SC_EQ1_SCB_EQ1 = 5

struct rte_eth_event_macsec_type(Copyable & Movable):
# # Node: PlaceHolder()
# {"args":["RTE_ETH_EVENT_MACSEC)"],"id":"0x1150ed0","kind":"InlineCommandComment","loc":{"col":42,"offset":146891,"tokLen":1},"name":"ref","range":{"begin":{"col":42,"offset":146891,"tokLen":1},"end":{"col":45,"offset":146894,"tokLen":1}},"renderKind":"normal"}

	alias RTE_ETH_EVENT_MACSEC_UNKNOWN = 0

	alias RTE_ETH_EVENT_MACSEC_SECTAG_VAL_ERR = 1

	alias RTE_ETH_EVENT_MACSEC_RX_SA_PN_HARD_EXP = 2

	alias RTE_ETH_EVENT_MACSEC_RX_SA_PN_SOFT_EXP = 3

	alias RTE_ETH_EVENT_MACSEC_TX_SA_PN_HARD_EXP = 4

	alias RTE_ETH_EVENT_MACSEC_TX_SA_PN_SOFT_EXP = 5

	alias RTE_ETH_EVENT_MACSEC_SA_NOT_VALID = 6

struct rte_eth_event_macsec_desc(Copyable & Movable):
# # Node: PlaceHolder()
# {"args":["RTE_ETH_EVENT_MACSEC"],"id":"0x11515e0","kind":"InlineCommandComment","loc":{"col":19,"offset":147565,"tokLen":1},"name":"ref","range":{"begin":{"col":19,"offset":147565,"tokLen":1},"end":{"col":22,"offset":147568,"tokLen":1}},"renderKind":"normal"}

	var type : rte_eth_event_macsec_type

	var subtype : rte_eth_event_macsec_subtype

	var metadata : ffi.c_ulong

struct rte_eth_event_ipsec_subtype(Copyable & Movable):
# # Node: PlaceHolder()
# {"args":["RTE_ETH_EVENT_IPSEC)"],"id":"0x1151b50","kind":"InlineCommandComment","loc":{"col":37,"offset":148166,"tokLen":1},"name":"ref","range":{"begin":{"col":37,"offset":148166,"tokLen":1},"end":{"col":40,"offset":148169,"tokLen":1}},"renderKind":"normal"}

	alias RTE_ETH_EVENT_IPSEC_PMD_ERROR_START = -256

	alias RTE_ETH_EVENT_IPSEC_PMD_ERROR_END = -1

	alias RTE_ETH_EVENT_IPSEC_UNKNOWN = 0

	alias RTE_ETH_EVENT_IPSEC_ESN_OVERFLOW = 1

	alias RTE_ETH_EVENT_IPSEC_SA_TIME_EXPIRY = 2

	alias RTE_ETH_EVENT_IPSEC_SA_BYTE_EXPIRY = 3

	alias RTE_ETH_EVENT_IPSEC_SA_PKT_EXPIRY = 4

	alias RTE_ETH_EVENT_IPSEC_SA_BYTE_HARD_EXPIRY = 5

	alias RTE_ETH_EVENT_IPSEC_SA_PKT_HARD_EXPIRY = 6

	alias RTE_ETH_EVENT_IPSEC_MAX = 7

struct rte_eth_event_ipsec_desc(Copyable & Movable):
# # Node: PlaceHolder()
# {"args":["RTE_ETH_EVENT_IPSEC"],"id":"0x11527f0","kind":"InlineCommandComment","loc":{"col":19,"offset":149275,"tokLen":1},"name":"ref","range":{"begin":{"col":19,"offset":149275,"tokLen":1},"end":{"col":22,"offset":149278,"tokLen":1}},"renderKind":"normal"}

	var subtype : rte_eth_event_ipsec_subtype

	var metadata : ffi.c_ulong

struct rte_eth_event_type(Copyable & Movable):

	alias RTE_ETH_EVENT_UNKNOWN = 0

	alias RTE_ETH_EVENT_INTR_LSC = 1

	alias RTE_ETH_EVENT_QUEUE_STATE = 2

	alias RTE_ETH_EVENT_INTR_RESET = 3

	alias RTE_ETH_EVENT_VF_MBOX = 4

	alias RTE_ETH_EVENT_MACSEC = 5

	alias RTE_ETH_EVENT_INTR_RMV = 6

	alias RTE_ETH_EVENT_NEW = 7

	alias RTE_ETH_EVENT_DESTROY = 8

	alias RTE_ETH_EVENT_IPSEC = 9

	alias RTE_ETH_EVENT_FLOW_AGED = 10

	alias RTE_ETH_EVENT_RX_AVAIL_THRESH = 11

	alias RTE_ETH_EVENT_ERR_RECOVERING = 12

	alias RTE_ETH_EVENT_RECOVERY_SUCCESS = 13

	alias RTE_ETH_EVENT_RECOVERY_FAILED = 14

	alias RTE_ETH_EVENT_MAX = 15

alias rte_eth_dev_cb_fn = fn(UInt16, rte_eth_event_type, OpaquePointer, OpaquePointer) -> Int32
alias rte_eth_dev_callback_register = fn (UInt16, rte_eth_event_type, rte_eth_dev_cb_fn, OpaquePointer) -> Int32
alias rte_eth_dev_callback_unregister = fn (UInt16, rte_eth_event_type, rte_eth_dev_cb_fn, OpaquePointer) -> Int32
alias rte_eth_dev_rx_intr_enable = fn (UInt16, UInt16) -> Int32
alias rte_eth_dev_rx_intr_disable = fn (UInt16, UInt16) -> Int32
alias rte_eth_dev_rx_intr_ctl = fn (UInt16, Int32, Int32, OpaquePointer) -> Int32
alias rte_eth_dev_rx_intr_ctl_q = fn (UInt16, UInt16, Int32, Int32, OpaquePointer) -> Int32
alias rte_eth_dev_rx_intr_ctl_q_get_fd = fn (UInt16, UInt16) -> Int32
alias rte_eth_led_on = fn (UInt16) -> Int32
alias rte_eth_led_off = fn (UInt16) -> Int32
alias rte_eth_fec_get_capability = fn (UInt16, UnsafePointer[rte_eth_fec_capa], UInt32) -> Int32
alias rte_eth_fec_get = fn (UInt16, UnsafePointer[UInt32]) -> Int32
alias rte_eth_fec_set = fn (UInt16, UInt32) -> Int32
alias rte_eth_dev_flow_ctrl_get = fn (UInt16, UnsafePointer[rte_eth_fc_conf]) -> Int32
alias rte_eth_dev_flow_ctrl_set = fn (UInt16, UnsafePointer[rte_eth_fc_conf]) -> Int32
alias rte_eth_dev_priority_flow_ctrl_set = fn (UInt16, UnsafePointer[rte_eth_pfc_conf]) -> Int32
alias rte_eth_dev_mac_addr_add = fn (UInt16, UnsafePointer[rte_ether_addr], UInt32) -> Int32
alias rte_eth_dev_priority_flow_ctrl_queue_info_get = fn (UInt16, UnsafePointer[rte_eth_pfc_queue_info]) -> Int32
alias rte_eth_dev_priority_flow_ctrl_queue_configure = fn (UInt16, UnsafePointer[rte_eth_pfc_queue_conf]) -> Int32
alias rte_eth_dev_mac_addr_remove = fn (UInt16, UnsafePointer[rte_ether_addr]) -> Int32
alias rte_eth_dev_default_mac_addr_set = fn (UInt16, UnsafePointer[rte_ether_addr]) -> Int32
alias rte_eth_dev_rss_reta_update = fn (UInt16, UnsafePointer[rte_eth_rss_reta_entry64], UInt16) -> Int32
alias rte_eth_dev_rss_reta_query = fn (UInt16, UnsafePointer[rte_eth_rss_reta_entry64], UInt16) -> Int32
alias rte_eth_dev_uc_hash_table_set = fn (UInt16, UnsafePointer[rte_ether_addr], UInt8) -> Int32
alias rte_eth_dev_uc_all_hash_table_set = fn (UInt16, UInt8) -> Int32
alias rte_eth_set_queue_rate_limit = fn (UInt16, UInt16, UInt32) -> Int32
alias rte_eth_dev_rss_hash_update = fn (UInt16, UnsafePointer[rte_eth_rss_conf]) -> Int32
alias rte_eth_dev_rss_hash_conf_get = fn (UInt16, UnsafePointer[rte_eth_rss_conf]) -> Int32
alias rte_eth_dev_rss_algo_name = fn (rte_eth_hash_function) -> UnsafePointer[Int8]
alias rte_eth_find_rss_algo = fn (UnsafePointer[Int8], UnsafePointer[UInt32]) -> Int32
alias rte_eth_dev_udp_tunnel_port_add = fn (UInt16, UnsafePointer[rte_eth_udp_tunnel]) -> Int32
alias rte_eth_dev_udp_tunnel_port_delete = fn (UInt16, UnsafePointer[rte_eth_udp_tunnel]) -> Int32
alias rte_eth_dev_get_dcb_info = fn (UInt16, UnsafePointer[rte_eth_dcb_info]) -> Int32
struct rte_eth_rxtx_callback(Copyable & Movable):
	pass
alias rte_eth_add_rx_callback = fn (UInt16, UInt16, rte_rx_callback_fn, OpaquePointer) -> UnsafePointer[rte_eth_rxtx_callback]
alias rte_eth_add_first_rx_callback = fn (UInt16, UInt16, rte_rx_callback_fn, OpaquePointer) -> UnsafePointer[rte_eth_rxtx_callback]
alias rte_eth_add_tx_callback = fn (UInt16, UInt16, rte_tx_callback_fn, OpaquePointer) -> UnsafePointer[rte_eth_rxtx_callback]
alias rte_eth_remove_rx_callback = fn (UInt16, UInt16, UnsafePointer[rte_eth_rxtx_callback]) -> Int32
alias rte_eth_remove_tx_callback = fn (UInt16, UInt16, UnsafePointer[rte_eth_rxtx_callback]) -> Int32
alias rte_eth_rx_queue_info_get = fn (UInt16, UInt16, UnsafePointer[rte_eth_rxq_info]) -> Int32
alias rte_eth_tx_queue_info_get = fn (UInt16, UInt16, UnsafePointer[rte_eth_txq_info]) -> Int32
alias rte_eth_recycle_rx_queue_info_get = fn (UInt16, UInt16, UnsafePointer[rte_eth_recycle_rxq_info]) -> Int32
alias rte_eth_rx_burst_mode_get = fn (UInt16, UInt16, UnsafePointer[rte_eth_burst_mode]) -> Int32
alias rte_eth_tx_burst_mode_get = fn (UInt16, UInt16, UnsafePointer[rte_eth_burst_mode]) -> Int32
alias rte_eth_get_monitor_addr = fn (UInt16, UInt16, UnsafePointer[rte_power_monitor_cond]) -> Int32
alias rte_eth_dev_get_reg_info_ext = fn (UInt16, UnsafePointer[rte_dev_reg_info]) -> Int32
alias rte_eth_dev_get_reg_info = fn (UInt16, UnsafePointer[rte_dev_reg_info]) -> Int32
alias rte_eth_dev_get_eeprom_length = fn (UInt16) -> Int32
alias rte_eth_dev_get_eeprom = fn (UInt16, UnsafePointer[rte_dev_eeprom_info]) -> Int32
alias rte_eth_dev_set_eeprom = fn (UInt16, UnsafePointer[rte_dev_eeprom_info]) -> Int32
alias rte_eth_dev_get_module_info = fn (UInt16, UnsafePointer[rte_eth_dev_module_info]) -> Int32
alias rte_eth_dev_get_module_eeprom = fn (UInt16, UnsafePointer[rte_dev_eeprom_info]) -> Int32
alias rte_eth_dev_set_mc_addr_list = fn (UInt16, UnsafePointer[rte_ether_addr], UInt32) -> Int32
alias rte_eth_timesync_enable = fn (UInt16) -> Int32
alias rte_eth_timesync_disable = fn (UInt16) -> Int32
alias rte_eth_timesync_read_rx_timestamp = fn (UInt16, UnsafePointer[timespec], UInt32) -> Int32
alias rte_eth_timesync_read_tx_timestamp = fn (UInt16, UnsafePointer[timespec]) -> Int32
alias rte_eth_timesync_adjust_time = fn (UInt16, ffi.c_long) -> Int32
alias rte_eth_timesync_adjust_freq = fn (UInt16, ffi.c_long) -> Int32
alias rte_eth_timesync_read_time = fn (UInt16, UnsafePointer[timespec]) -> Int32
alias rte_eth_timesync_write_time = fn (UInt16, UnsafePointer[timespec]) -> Int32
alias rte_eth_read_clock = fn (UInt16, UnsafePointer[ffi.c_ulong]) -> Int32
alias rte_eth_dev_get_port_by_name = fn (UnsafePointer[Int8], UnsafePointer[UInt16]) -> Int32
alias rte_eth_dev_get_name_by_port = fn (UInt16, UnsafePointer[Int8]) -> Int32
alias rte_eth_dev_adjust_nb_rx_tx_desc = fn (UInt16, UnsafePointer[UInt16], UnsafePointer[UInt16]) -> Int32
alias rte_eth_dev_pool_ops_supported = fn (UInt16, UnsafePointer[Int8]) -> Int32
alias rte_eth_dev_get_sec_ctx = fn (UInt16) -> OpaquePointer
alias rte_eth_dev_hairpin_capability_get = fn (UInt16, UnsafePointer[rte_eth_hairpin_cap]) -> Int32
alias anonomous_record_232 = C_Union[Int32, Int32]

struct rte_eth_representor_range(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x1169f70","kind":"InlineCommandComment","loc":{"col":4,"offset":202294,"tokLen":1},"name":"b","range":{"begin":{"col":4,"offset":202294,"tokLen":1},"end":{"col":5,"offset":202295,"tokLen":1}},"renderKind":"bold"}

	var type : rte_eth_representor_type

	var controller : Int32

	var pf : Int32

	var union_placeholder_1 : anonomous_record_232



	var id_base : UInt32

	var id_end : UInt32

	var name : InlineArray[Int8, 64]

struct rte_eth_representor_info(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x116a820","kind":"InlineCommandComment","loc":{"col":4,"offset":202874,"tokLen":1},"name":"b","range":{"begin":{"col":4,"offset":202874,"tokLen":1},"end":{"col":5,"offset":202875,"tokLen":1}},"renderKind":"bold"}

	var controller : UInt16

	var pf : UInt16

	var nb_ranges_alloc : UInt32

	var nb_ranges : UInt32

	var ranges : UnsafePointer[rte_eth_representor_range] # Failed to parse array size

alias rte_eth_representor_info_get = fn (UInt16, UnsafePointer[rte_eth_representor_info]) -> Int32
alias rte_eth_rx_metadata_negotiate = fn (UInt16, UnsafePointer[ffi.c_ulong]) -> Int32
struct rte_eth_ip_reassembly_params(Copyable & Movable):

	var timeout_ms : UInt32

	var max_frags : UInt16

	var flags : UInt16

alias rte_eth_ip_reassembly_capability_get = fn (UInt16, UnsafePointer[rte_eth_ip_reassembly_params]) -> Int32
alias rte_eth_ip_reassembly_conf_get = fn (UInt16, UnsafePointer[rte_eth_ip_reassembly_params]) -> Int32
alias rte_eth_ip_reassembly_conf_set = fn (UInt16, UnsafePointer[rte_eth_ip_reassembly_params]) -> Int32
struct anonomous_record_233(Copyable & Movable):

	var next_frag : UnsafePointer[rte_mbuf]

	var time_spent : UInt16

	var nb_frags : UInt16

alias rte_eth_ip_reassembly_dynfield_t = anonomous_record_233

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  In case of IP reassembly offload failure, packet will be updated with
# Node: TextComment()
#  dynamic flag - RTE_MBUF_DYNFLAG_IP_REASSEMBLY_INCOMPLETE_NAME and packets
# Node: TextComment()
#  will be returned without alteration.
# Node: TextComment()
#  The application can retrieve the attached fragments using mbuf dynamic field
# Node: TextComment()
#  RTE_MBUF_DYNFIELD_IP_REASSEMBLY_NAME.

alias rte_eth_dev_priv_dump = fn (UInt16, UnsafePointer[FILE]) -> Int32
alias rte_eth_rx_descriptor_dump = fn (UInt16, UInt16, UInt16, UInt16, UnsafePointer[FILE]) -> Int32
alias rte_eth_tx_descriptor_dump = fn (UInt16, UInt16, UInt16, UInt16, UnsafePointer[FILE]) -> Int32
struct rte_eth_cman_obj(Copyable & Movable):

	alias RTE_ETH_CMAN_OBJ_RX_QUEUE = 0

	alias RTE_ETH_CMAN_OBJ_RX_QUEUE_MEMPOOL = 1

struct rte_eth_cman_info(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x116f230","kind":"InlineCommandComment","loc":{"col":4,"offset":213762,"tokLen":1},"name":"b","range":{"begin":{"col":4,"offset":213762,"tokLen":1},"end":{"col":5,"offset":213763,"tokLen":1}},"renderKind":"bold"}

	var modes_supported : ffi.c_ulong

	var objs_supported : ffi.c_ulong

	var rsvd : InlineArray[UInt8, 8]

alias anonomous_record_235 = C_Union[rte_cman_red_params, InlineArray[UInt8, 4]]

alias anonomous_record_234 = C_Union[UInt16, InlineArray[UInt8, 4]]

struct rte_eth_cman_config(Copyable & Movable):
# # # Node: PlaceHolder()
# {"args":["EXPERIMENTAL:"],"id":"0x116f830","kind":"InlineCommandComment","loc":{"col":4,"offset":214333,"tokLen":1},"name":"b","range":{"begin":{"col":4,"offset":214333,"tokLen":1},"end":{"col":5,"offset":214334,"tokLen":1}},"renderKind":"bold"}

	var obj : rte_eth_cman_obj

	var mode : rte_cman_mode

	var obj_param : anonomous_record_234

	var mode_param : anonomous_record_235

alias rte_eth_cman_info_get = fn (UInt16, UnsafePointer[rte_eth_cman_info]) -> Int32
alias rte_eth_cman_config_init = fn (UInt16, UnsafePointer[rte_eth_cman_config]) -> Int32
alias rte_eth_cman_config_set = fn (UInt16, UnsafePointer[rte_eth_cman_config]) -> Int32
alias rte_eth_cman_config_get = fn (UInt16, UnsafePointer[rte_eth_cman_config]) -> Int32
struct rte_eth_dev_callback(Copyable & Movable):
# # Node: PlaceHolder()
# {"id":"0x1171640","kind":"VerbatimLineComment","loc":{"col":5,"includedFrom":{"file":"dpdk/lib/ethdev/rte_ethdev.h"},"offset":150,"tokLen":4},"range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/ethdev/rte_ethdev.h"},"offset":149,"tokLen":1},"end":{"col":9,"includedFrom":{"file":"dpdk/lib/ethdev/rte_ethdev.h"},"offset":154,"tokLen":0}},"text":""}

	pass
struct rte_eth_dev_cb_list(Copyable & Movable):
# #  Structure to keep track of registered callbacks # 
	var tqh_first : UnsafePointer[rte_eth_dev_callback]

	var tqh_last : UnsafePointer[UnsafePointer[rte_eth_dev_callback]]

struct rte_eth_dev(Copyable & Movable):
	pass
alias eth_rx_burst_t = fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_mbuf]], UInt16) -> UInt16
alias eth_tx_burst_t = fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_mbuf]], UInt16) -> UInt16
alias eth_tx_prep_t = fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_mbuf]], UInt16) -> UInt16
alias eth_rx_queue_count_t = fn(OpaquePointer) -> Int32
alias eth_rx_descriptor_status_t = fn(OpaquePointer, UInt16) -> Int32
alias eth_tx_queue_count_t = fn(OpaquePointer) -> Int32
alias eth_tx_descriptor_status_t = fn(OpaquePointer, UInt16) -> Int32
alias eth_recycle_tx_mbufs_reuse_t = fn(OpaquePointer, UnsafePointer[rte_eth_recycle_rxq_info]) -> UInt16
alias eth_recycle_rx_descriptors_refill_t = fn(OpaquePointer, UInt16) -> NoneType
struct rte_ethdev_qdata(Copyable & Movable):
# #  Structure used to hold opaque pointers to internal ethdev Rx/Tx#  queues data.#  The main purpose to expose these pointers at all - allow compiler#  to fetch this data for fast-path ethdev inline functions in advance.#  # 
	var data : UnsafePointer[OpaquePointer]

	var clbk : UnsafePointer[OpaquePointer]

struct rte_eth_fp_ops(Copyable & Movable):
# Alignment: 128 

# #  fast-path ethdev functions and related data are hold in a flat array.#  One entry per ethdev.#  On 64-bit systems contents of this structure occupy exactly two 64B lines.#  On 32-bit systems contents of this structure fits into one 64B line.#  # 
	var rxq : rte_ethdev_qdata

	var rx_pkt_burst : fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_mbuf]], UInt16) -> UInt16

	var rx_queue_count : fn(OpaquePointer) -> Int32

	var rx_descriptor_status : fn(OpaquePointer, UInt16) -> Int32

	var recycle_rx_descriptors_refill : fn(OpaquePointer, UInt16) -> NoneType

	var reserved1 : InlineArray[uintptr_t, 2]

	var txq : rte_ethdev_qdata

	var tx_pkt_burst : fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_mbuf]], UInt16) -> UInt16

	var tx_pkt_prepare : fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_mbuf]], UInt16) -> UInt16

	var tx_descriptor_status : fn(OpaquePointer, UInt16) -> Int32

	var recycle_tx_mbufs_reuse : fn(OpaquePointer, UnsafePointer[rte_eth_recycle_rxq_info]) -> UInt16

	var tx_queue_count : fn(OpaquePointer) -> Int32

	var reserved2 : InlineArray[uintptr_t, 1]

alias rte_eth_call_rx_callbacks = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, UInt16, OpaquePointer) -> UInt16
alias rte_eth_rx_burst = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_mbuf]], Int16) -> UInt16
alias rte_eth_rx_queue_count = fn (UInt16, UInt16) -> Int32
alias rte_eth_rx_descriptor_status = fn (UInt16, UInt16, UInt16) -> Int32
alias rte_eth_tx_descriptor_status = fn (UInt16, UInt16, UInt16) -> Int32
alias rte_eth_call_tx_callbacks = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, OpaquePointer) -> UInt16
alias rte_eth_tx_burst = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_mbuf]], UInt16) -> UInt16
alias rte_eth_tx_prepare = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_mbuf]], UInt16) -> UInt16
alias rte_eth_tx_buffer_flush = fn (UInt16, UInt16, UnsafePointer[rte_eth_dev_tx_buffer]) -> UInt16
alias rte_eth_tx_buffer = fn (UInt16, UInt16, UnsafePointer[rte_eth_dev_tx_buffer], UnsafePointer[rte_mbuf]) -> UInt16
alias rte_eth_recycle_mbufs = fn (UInt16, UInt16, UInt16, UInt16, UnsafePointer[rte_eth_recycle_rxq_info]) -> UInt16
alias rte_eth_buffer_split_get_supported_hdr_ptypes = fn (UInt16, UnsafePointer[UInt32], Int32) -> Int32
alias rte_eth_tx_queue_count = fn (UInt16, UInt16) -> Int32


alias rte_ethdev_remove = ExternalFunction['remove', remove]
alias rte_ethdev_rename = ExternalFunction['rename', rename]
alias rte_ethdev_renameat = ExternalFunction['renameat', renameat]
alias rte_ethdev_fclose = ExternalFunction['fclose', fclose]
alias rte_ethdev_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias rte_ethdev_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias rte_ethdev_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias rte_ethdev_tempnam = ExternalFunction['tempnam', tempnam]
alias rte_ethdev_fflush = ExternalFunction['fflush', fflush]
alias rte_ethdev_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias rte_ethdev_fopen = ExternalFunction['fopen', fopen]
alias rte_ethdev_freopen = ExternalFunction['freopen', freopen]
alias rte_ethdev_fdopen = ExternalFunction['fdopen', fdopen]
alias rte_ethdev_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias rte_ethdev_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias rte_ethdev_setbuf = ExternalFunction['setbuf', setbuf]
alias rte_ethdev_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias rte_ethdev_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias rte_ethdev_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias rte_ethdev_fprintf = ExternalFunction['fprintf', fprintf]
alias rte_ethdev_printf = ExternalFunction['printf', printf]
alias rte_ethdev_sprintf = ExternalFunction['sprintf', sprintf]
alias rte_ethdev_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias rte_ethdev_vprintf = ExternalFunction['vprintf', vprintf]
alias rte_ethdev_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias rte_ethdev_snprintf = ExternalFunction['snprintf', snprintf]
alias rte_ethdev_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias rte_ethdev_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias rte_ethdev_dprintf = ExternalFunction['dprintf', dprintf]
alias rte_ethdev_fscanf = ExternalFunction['fscanf', fscanf]
alias rte_ethdev_scanf = ExternalFunction['scanf', scanf]
alias rte_ethdev_sscanf = ExternalFunction['sscanf', sscanf]
alias rte_ethdev_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias rte_ethdev_vscanf = ExternalFunction['vscanf', vscanf]
alias rte_ethdev_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias rte_ethdev_fgetc = ExternalFunction['fgetc', fgetc]
alias rte_ethdev_getc = ExternalFunction['getc', getc]
alias rte_ethdev_getchar = ExternalFunction['getchar', getchar]
alias rte_ethdev_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias rte_ethdev_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias rte_ethdev_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias rte_ethdev_fputc = ExternalFunction['fputc', fputc]
alias rte_ethdev_putc = ExternalFunction['putc', putc]
alias rte_ethdev_putchar = ExternalFunction['putchar', putchar]
alias rte_ethdev_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias rte_ethdev_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias rte_ethdev_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias rte_ethdev_getw = ExternalFunction['getw', getw]
alias rte_ethdev_putw = ExternalFunction['putw', putw]
alias rte_ethdev_fgets = ExternalFunction['fgets', fgets]
alias rte_ethdev_getdelim = ExternalFunction['getdelim', getdelim]
alias rte_ethdev_getline = ExternalFunction['getline', getline]
alias rte_ethdev_fputs = ExternalFunction['fputs', fputs]
alias rte_ethdev_puts = ExternalFunction['puts', puts]
alias rte_ethdev_ungetc = ExternalFunction['ungetc', ungetc]
alias rte_ethdev_fread = ExternalFunction['fread', fread]
alias rte_ethdev_fwrite = ExternalFunction['fwrite', fwrite]
alias rte_ethdev_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias rte_ethdev_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias rte_ethdev_fseek = ExternalFunction['fseek', fseek]
alias rte_ethdev_ftell = ExternalFunction['ftell', ftell]
alias rte_ethdev_rewind = ExternalFunction['rewind', rewind]
alias rte_ethdev_fseeko = ExternalFunction['fseeko', fseeko]
alias rte_ethdev_ftello = ExternalFunction['ftello', ftello]
alias rte_ethdev_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias rte_ethdev_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias rte_ethdev_clearerr = ExternalFunction['clearerr', clearerr]
alias rte_ethdev_feof = ExternalFunction['feof', feof]
alias rte_ethdev_ferror = ExternalFunction['ferror', ferror]
alias rte_ethdev_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias rte_ethdev_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias rte_ethdev_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias rte_ethdev_perror = ExternalFunction['perror', perror]
alias rte_ethdev_fileno = ExternalFunction['fileno', fileno]
alias rte_ethdev_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias rte_ethdev_pclose = ExternalFunction['pclose', pclose]
alias rte_ethdev_popen = ExternalFunction['popen', popen]
alias rte_ethdev_ctermid = ExternalFunction['ctermid', ctermid]
alias rte_ethdev_flockfile = ExternalFunction['flockfile', flockfile]
alias rte_ethdev_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias rte_ethdev_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias rte_ethdev_alloca = ExternalFunction['alloca', alloca]
alias rte_ethdev_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_ethdev_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_ethdev_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_ethdev_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_ethdev_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_ethdev_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_ethdev_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_ethdev_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_ethdev_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_ethdev_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_ethdev_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_ethdev_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_ethdev_rte_openlog_stream = ExternalFunction['rte_openlog_stream', rte_openlog_stream]
alias rte_ethdev_rte_log_get_stream = ExternalFunction['rte_log_get_stream', rte_log_get_stream]
alias rte_ethdev_rte_log_set_global_level = ExternalFunction['rte_log_set_global_level', rte_log_set_global_level]
alias rte_ethdev_rte_log_get_global_level = ExternalFunction['rte_log_get_global_level', rte_log_get_global_level]
alias rte_ethdev_rte_log_get_level = ExternalFunction['rte_log_get_level', rte_log_get_level]
alias rte_ethdev_rte_log_can_log = ExternalFunction['rte_log_can_log', rte_log_can_log]
alias rte_ethdev_rte_log_set_level_pattern = ExternalFunction['rte_log_set_level_pattern', rte_log_set_level_pattern]
alias rte_ethdev_rte_log_set_level_regexp = ExternalFunction['rte_log_set_level_regexp', rte_log_set_level_regexp]
alias rte_ethdev_rte_log_set_level = ExternalFunction['rte_log_set_level', rte_log_set_level]
alias rte_ethdev_rte_log_cur_msg_loglevel = ExternalFunction['rte_log_cur_msg_loglevel', rte_log_cur_msg_loglevel]
alias rte_ethdev_rte_log_cur_msg_logtype = ExternalFunction['rte_log_cur_msg_logtype', rte_log_cur_msg_logtype]
alias rte_ethdev_rte_log_register = ExternalFunction['rte_log_register', rte_log_register]
alias rte_ethdev_rte_log_register_type_and_pick_level = ExternalFunction['rte_log_register_type_and_pick_level', rte_log_register_type_and_pick_level]
alias rte_ethdev_rte_log_list_types = ExternalFunction['rte_log_list_types', rte_log_list_types]
alias rte_ethdev_rte_log_dump = ExternalFunction['rte_log_dump', rte_log_dump]
alias rte_ethdev_rte_log = ExternalFunction['rte_log', rte_log]
alias rte_ethdev_rte_vlog = ExternalFunction['rte_vlog', rte_vlog]
alias rte_ethdev_rte_dump_stack = ExternalFunction['rte_dump_stack', rte_dump_stack]
alias rte_ethdev_rte_bit_relaxed_get32 = ExternalFunction['rte_bit_relaxed_get32', rte_bit_relaxed_get32]
alias rte_ethdev_rte_bit_relaxed_set32 = ExternalFunction['rte_bit_relaxed_set32', rte_bit_relaxed_set32]
alias rte_ethdev_rte_bit_relaxed_clear32 = ExternalFunction['rte_bit_relaxed_clear32', rte_bit_relaxed_clear32]
alias rte_ethdev_rte_bit_relaxed_test_and_set32 = ExternalFunction['rte_bit_relaxed_test_and_set32', rte_bit_relaxed_test_and_set32]
alias rte_ethdev_rte_bit_relaxed_test_and_clear32 = ExternalFunction['rte_bit_relaxed_test_and_clear32', rte_bit_relaxed_test_and_clear32]
alias rte_ethdev_rte_bit_relaxed_get64 = ExternalFunction['rte_bit_relaxed_get64', rte_bit_relaxed_get64]
alias rte_ethdev_rte_bit_relaxed_set64 = ExternalFunction['rte_bit_relaxed_set64', rte_bit_relaxed_set64]
alias rte_ethdev_rte_bit_relaxed_clear64 = ExternalFunction['rte_bit_relaxed_clear64', rte_bit_relaxed_clear64]
alias rte_ethdev_rte_bit_relaxed_test_and_set64 = ExternalFunction['rte_bit_relaxed_test_and_set64', rte_bit_relaxed_test_and_set64]
alias rte_ethdev_rte_bit_relaxed_test_and_clear64 = ExternalFunction['rte_bit_relaxed_test_and_clear64', rte_bit_relaxed_test_and_clear64]
alias rte_ethdev_rte_clz32 = ExternalFunction['rte_clz32', rte_clz32]
alias rte_ethdev_rte_clz64 = ExternalFunction['rte_clz64', rte_clz64]
alias rte_ethdev_rte_ctz32 = ExternalFunction['rte_ctz32', rte_ctz32]
alias rte_ethdev_rte_ctz64 = ExternalFunction['rte_ctz64', rte_ctz64]
alias rte_ethdev_rte_popcount32 = ExternalFunction['rte_popcount32', rte_popcount32]
alias rte_ethdev_rte_popcount64 = ExternalFunction['rte_popcount64', rte_popcount64]
alias rte_ethdev_rte_ffs32 = ExternalFunction['rte_ffs32', rte_ffs32]
alias rte_ethdev_rte_ffs64 = ExternalFunction['rte_ffs64', rte_ffs64]
alias rte_ethdev_rte_combine32ms1b = ExternalFunction['rte_combine32ms1b', rte_combine32ms1b]
alias rte_ethdev_rte_combine64ms1b = ExternalFunction['rte_combine64ms1b', rte_combine64ms1b]
alias rte_ethdev_rte_bsf32 = ExternalFunction['rte_bsf32', rte_bsf32]
alias rte_ethdev_rte_bsf32_safe = ExternalFunction['rte_bsf32_safe', rte_bsf32_safe]
alias rte_ethdev_rte_bsf64 = ExternalFunction['rte_bsf64', rte_bsf64]
alias rte_ethdev_rte_bsf64_safe = ExternalFunction['rte_bsf64_safe', rte_bsf64_safe]
alias rte_ethdev_rte_fls_u32 = ExternalFunction['rte_fls_u32', rte_fls_u32]
alias rte_ethdev_rte_fls_u64 = ExternalFunction['rte_fls_u64', rte_fls_u64]
alias rte_ethdev_rte_is_power_of_2 = ExternalFunction['rte_is_power_of_2', rte_is_power_of_2]
alias rte_ethdev_rte_align32pow2 = ExternalFunction['rte_align32pow2', rte_align32pow2]
alias rte_ethdev_rte_align32prevpow2 = ExternalFunction['rte_align32prevpow2', rte_align32prevpow2]
alias rte_ethdev_rte_align64pow2 = ExternalFunction['rte_align64pow2', rte_align64pow2]
alias rte_ethdev_rte_align64prevpow2 = ExternalFunction['rte_align64prevpow2', rte_align64prevpow2]
alias rte_ethdev_rte_log2_u32 = ExternalFunction['rte_log2_u32', rte_log2_u32]
alias rte_ethdev_rte_log2_u64 = ExternalFunction['rte_log2_u64', rte_log2_u64]
alias rte_ethdev_rte_epoll_wait = ExternalFunction['rte_epoll_wait', rte_epoll_wait]
alias rte_ethdev_rte_epoll_wait_interruptible = ExternalFunction['rte_epoll_wait_interruptible', rte_epoll_wait_interruptible]
alias rte_ethdev_rte_epoll_ctl = ExternalFunction['rte_epoll_ctl', rte_epoll_ctl]
alias rte_ethdev_rte_intr_callback_register = ExternalFunction['rte_intr_callback_register', rte_intr_callback_register]
alias rte_ethdev_rte_intr_callback_unregister = ExternalFunction['rte_intr_callback_unregister', rte_intr_callback_unregister]
alias rte_ethdev_rte_intr_callback_unregister_pending = ExternalFunction['rte_intr_callback_unregister_pending', rte_intr_callback_unregister_pending]
alias rte_ethdev_rte_intr_callback_unregister_sync = ExternalFunction['rte_intr_callback_unregister_sync', rte_intr_callback_unregister_sync]
alias rte_ethdev_rte_intr_enable = ExternalFunction['rte_intr_enable', rte_intr_enable]
alias rte_ethdev_rte_intr_disable = ExternalFunction['rte_intr_disable', rte_intr_disable]
alias rte_ethdev_rte_intr_ack = ExternalFunction['rte_intr_ack', rte_intr_ack]
alias rte_ethdev_rte_thread_is_intr = ExternalFunction['rte_thread_is_intr', rte_thread_is_intr]
alias rte_ethdev_rte_intr_instance_alloc = ExternalFunction['rte_intr_instance_alloc', rte_intr_instance_alloc]
alias rte_ethdev_rte_intr_instance_free = ExternalFunction['rte_intr_instance_free', rte_intr_instance_free]
alias rte_ethdev_rte_intr_fd_set = ExternalFunction['rte_intr_fd_set', rte_intr_fd_set]
alias rte_ethdev_rte_intr_fd_get = ExternalFunction['rte_intr_fd_get', rte_intr_fd_get]
alias rte_ethdev_rte_intr_type_set = ExternalFunction['rte_intr_type_set', rte_intr_type_set]
alias rte_ethdev_rte_intr_type_get = ExternalFunction['rte_intr_type_get', rte_intr_type_get]
alias rte_ethdev_rte_intr_tls_epfd = ExternalFunction['rte_intr_tls_epfd', rte_intr_tls_epfd]
alias rte_ethdev_rte_intr_rx_ctl = ExternalFunction['rte_intr_rx_ctl', rte_intr_rx_ctl]
alias rte_ethdev_rte_intr_free_epoll_fd = ExternalFunction['rte_intr_free_epoll_fd', rte_intr_free_epoll_fd]
alias rte_ethdev_rte_intr_efd_enable = ExternalFunction['rte_intr_efd_enable', rte_intr_efd_enable]
alias rte_ethdev_rte_intr_efd_disable = ExternalFunction['rte_intr_efd_disable', rte_intr_efd_disable]
alias rte_ethdev_rte_intr_dp_is_en = ExternalFunction['rte_intr_dp_is_en', rte_intr_dp_is_en]
alias rte_ethdev_rte_intr_allow_others = ExternalFunction['rte_intr_allow_others', rte_intr_allow_others]
alias rte_ethdev_rte_intr_cap_multiple = ExternalFunction['rte_intr_cap_multiple', rte_intr_cap_multiple]
alias rte_ethdev_rte_intr_instance_dup = ExternalFunction['rte_intr_instance_dup', rte_intr_instance_dup]
alias rte_ethdev_rte_intr_dev_fd_set = ExternalFunction['rte_intr_dev_fd_set', rte_intr_dev_fd_set]
alias rte_ethdev_rte_intr_dev_fd_get = ExternalFunction['rte_intr_dev_fd_get', rte_intr_dev_fd_get]
alias rte_ethdev_rte_intr_max_intr_set = ExternalFunction['rte_intr_max_intr_set', rte_intr_max_intr_set]
alias rte_ethdev_rte_intr_max_intr_get = ExternalFunction['rte_intr_max_intr_get', rte_intr_max_intr_get]
alias rte_ethdev_rte_intr_nb_efd_set = ExternalFunction['rte_intr_nb_efd_set', rte_intr_nb_efd_set]
alias rte_ethdev_rte_intr_nb_efd_get = ExternalFunction['rte_intr_nb_efd_get', rte_intr_nb_efd_get]
alias rte_ethdev_rte_intr_nb_intr_get = ExternalFunction['rte_intr_nb_intr_get', rte_intr_nb_intr_get]
alias rte_ethdev_rte_intr_efd_counter_size_set = ExternalFunction['rte_intr_efd_counter_size_set', rte_intr_efd_counter_size_set]
alias rte_ethdev_rte_intr_efd_counter_size_get = ExternalFunction['rte_intr_efd_counter_size_get', rte_intr_efd_counter_size_get]
alias rte_ethdev_rte_intr_efds_index_set = ExternalFunction['rte_intr_efds_index_set', rte_intr_efds_index_set]
alias rte_ethdev_rte_intr_efds_index_get = ExternalFunction['rte_intr_efds_index_get', rte_intr_efds_index_get]
alias rte_ethdev_rte_intr_elist_index_set = ExternalFunction['rte_intr_elist_index_set', rte_intr_elist_index_set]
alias rte_ethdev_rte_intr_elist_index_get = ExternalFunction['rte_intr_elist_index_get', rte_intr_elist_index_get]
alias rte_ethdev_rte_intr_vec_list_alloc = ExternalFunction['rte_intr_vec_list_alloc', rte_intr_vec_list_alloc]
alias rte_ethdev_rte_intr_vec_list_index_set = ExternalFunction['rte_intr_vec_list_index_set', rte_intr_vec_list_index_set]
alias rte_ethdev_rte_intr_vec_list_index_get = ExternalFunction['rte_intr_vec_list_index_get', rte_intr_vec_list_index_get]
alias rte_ethdev_rte_intr_vec_list_free = ExternalFunction['rte_intr_vec_list_free', rte_intr_vec_list_free]
alias rte_ethdev_rte_intr_event_list_update = ExternalFunction['rte_intr_event_list_update', rte_intr_event_list_update]
alias rte_ethdev_rte_intr_instance_windows_handle_get = ExternalFunction['rte_intr_instance_windows_handle_get', rte_intr_instance_windows_handle_get]
alias rte_ethdev_rte_intr_instance_windows_handle_set = ExternalFunction['rte_intr_instance_windows_handle_set', rte_intr_instance_windows_handle_set]
alias rte_ethdev_rte_driver_name = ExternalFunction['rte_driver_name', rte_driver_name]
alias rte_ethdev_rte_dev_bus = ExternalFunction['rte_dev_bus', rte_dev_bus]
alias rte_ethdev_rte_dev_bus_info = ExternalFunction['rte_dev_bus_info', rte_dev_bus_info]
alias rte_ethdev_rte_dev_devargs = ExternalFunction['rte_dev_devargs', rte_dev_devargs]
alias rte_ethdev_rte_dev_driver = ExternalFunction['rte_dev_driver', rte_dev_driver]
alias rte_ethdev_rte_dev_name = ExternalFunction['rte_dev_name', rte_dev_name]
alias rte_ethdev_rte_dev_numa_node = ExternalFunction['rte_dev_numa_node', rte_dev_numa_node]
alias rte_ethdev_rte_dev_is_probed = ExternalFunction['rte_dev_is_probed', rte_dev_is_probed]
alias rte_ethdev_rte_eal_hotplug_add = ExternalFunction['rte_eal_hotplug_add', rte_eal_hotplug_add]
alias rte_ethdev_rte_dev_probe = ExternalFunction['rte_dev_probe', rte_dev_probe]
alias rte_ethdev_rte_eal_hotplug_remove = ExternalFunction['rte_eal_hotplug_remove', rte_eal_hotplug_remove]
alias rte_ethdev_rte_dev_remove = ExternalFunction['rte_dev_remove', rte_dev_remove]
alias rte_ethdev_rte_dev_iterator_init = ExternalFunction['rte_dev_iterator_init', rte_dev_iterator_init]
alias rte_ethdev_rte_dev_iterator_next = ExternalFunction['rte_dev_iterator_next', rte_dev_iterator_next]
alias rte_ethdev_rte_dev_event_callback_register = ExternalFunction['rte_dev_event_callback_register', rte_dev_event_callback_register]
alias rte_ethdev_rte_dev_event_callback_unregister = ExternalFunction['rte_dev_event_callback_unregister', rte_dev_event_callback_unregister]
alias rte_ethdev_rte_dev_event_callback_process = ExternalFunction['rte_dev_event_callback_process', rte_dev_event_callback_process]
alias rte_ethdev_rte_dev_event_monitor_start = ExternalFunction['rte_dev_event_monitor_start', rte_dev_event_monitor_start]
alias rte_ethdev_rte_dev_event_monitor_stop = ExternalFunction['rte_dev_event_monitor_stop', rte_dev_event_monitor_stop]
alias rte_ethdev_rte_dev_hotplug_handle_enable = ExternalFunction['rte_dev_hotplug_handle_enable', rte_dev_hotplug_handle_enable]
alias rte_ethdev_rte_dev_hotplug_handle_disable = ExternalFunction['rte_dev_hotplug_handle_disable', rte_dev_hotplug_handle_disable]
alias rte_ethdev_rte_dev_dma_map = ExternalFunction['rte_dev_dma_map', rte_dev_dma_map]
alias rte_ethdev_rte_dev_dma_unmap = ExternalFunction['rte_dev_dma_unmap', rte_dev_dma_unmap]
alias rte_ethdev_rte_devargs_parse = ExternalFunction['rte_devargs_parse', rte_devargs_parse]
alias rte_ethdev_rte_devargs_parsef = ExternalFunction['rte_devargs_parsef', rte_devargs_parsef]
alias rte_ethdev_rte_devargs_reset = ExternalFunction['rte_devargs_reset', rte_devargs_reset]
alias rte_ethdev_rte_devargs_insert = ExternalFunction['rte_devargs_insert', rte_devargs_insert]
alias rte_ethdev_rte_devargs_add = ExternalFunction['rte_devargs_add', rte_devargs_add]
alias rte_ethdev_rte_devargs_remove = ExternalFunction['rte_devargs_remove', rte_devargs_remove]
alias rte_ethdev_rte_devargs_type_count = ExternalFunction['rte_devargs_type_count', rte_devargs_type_count]
alias rte_ethdev_rte_devargs_dump = ExternalFunction['rte_devargs_dump', rte_devargs_dump]
alias rte_ethdev_rte_devargs_next = ExternalFunction['rte_devargs_next', rte_devargs_next]
alias rte_ethdev_rte_strerror = ExternalFunction['rte_strerror', rte_strerror]
alias rte_ethdev_imaxabs = ExternalFunction['imaxabs', imaxabs]
alias rte_ethdev_imaxdiv = ExternalFunction['imaxdiv', imaxdiv]
alias rte_ethdev_strtoimax = ExternalFunction['strtoimax', strtoimax]
alias rte_ethdev_strtoumax = ExternalFunction['strtoumax', strtoumax]
alias rte_ethdev_wcstoimax = ExternalFunction['wcstoimax', wcstoimax]
alias rte_ethdev_wcstoumax = ExternalFunction['wcstoumax', wcstoumax]
alias rte_ethdev_clock = ExternalFunction['clock', clock]
alias rte_ethdev_time = ExternalFunction['time', time]
alias rte_ethdev_difftime = ExternalFunction['difftime', difftime]
alias rte_ethdev_mktime = ExternalFunction['mktime', mktime]
alias rte_ethdev_strftime = ExternalFunction['strftime', strftime]
alias rte_ethdev_strftime_l = ExternalFunction['strftime_l', strftime_l]
alias rte_ethdev_gmtime = ExternalFunction['gmtime', gmtime]
alias rte_ethdev_localtime = ExternalFunction['localtime', localtime]
alias rte_ethdev_gmtime_r = ExternalFunction['gmtime_r', gmtime_r]
alias rte_ethdev_localtime_r = ExternalFunction['localtime_r', localtime_r]
alias rte_ethdev_asctime = ExternalFunction['asctime', asctime]
alias rte_ethdev_ctime = ExternalFunction['ctime', ctime]
alias rte_ethdev_asctime_r = ExternalFunction['asctime_r', asctime_r]
alias rte_ethdev_ctime_r = ExternalFunction['ctime_r', ctime_r]
alias rte_ethdev_tzset = ExternalFunction['tzset', tzset]
alias rte_ethdev_timegm = ExternalFunction['timegm', timegm]
alias rte_ethdev_timelocal = ExternalFunction['timelocal', timelocal]
alias rte_ethdev_dysize = ExternalFunction['dysize', dysize]
alias rte_ethdev_nanosleep = ExternalFunction['nanosleep', nanosleep]
alias rte_ethdev_clock_getres = ExternalFunction['clock_getres', clock_getres]
alias rte_ethdev_clock_gettime = ExternalFunction['clock_gettime', clock_gettime]
alias rte_ethdev_clock_settime = ExternalFunction['clock_settime', clock_settime]
alias rte_ethdev_clock_nanosleep = ExternalFunction['clock_nanosleep', clock_nanosleep]
alias rte_ethdev_clock_getcpuclockid = ExternalFunction['clock_getcpuclockid', clock_getcpuclockid]
alias rte_ethdev_timer_create = ExternalFunction['timer_create', timer_create]
alias rte_ethdev_timer_delete = ExternalFunction['timer_delete', timer_delete]
alias rte_ethdev_timer_settime = ExternalFunction['timer_settime', timer_settime]
alias rte_ethdev_timer_gettime = ExternalFunction['timer_gettime', timer_gettime]
alias rte_ethdev_timer_getoverrun = ExternalFunction['timer_getoverrun', timer_getoverrun]
alias rte_ethdev_timespec_get = ExternalFunction['timespec_get', timespec_get]
alias rte_ethdev_memcpy = ExternalFunction['memcpy', memcpy]
alias rte_ethdev_memmove = ExternalFunction['memmove', memmove]
alias rte_ethdev_memccpy = ExternalFunction['memccpy', memccpy]
alias rte_ethdev_memset = ExternalFunction['memset', memset]
alias rte_ethdev_memcmp = ExternalFunction['memcmp', memcmp]
alias rte_ethdev_memchr = ExternalFunction['memchr', memchr]
alias rte_ethdev_strcpy = ExternalFunction['strcpy', strcpy]
alias rte_ethdev_strncpy = ExternalFunction['strncpy', strncpy]
alias rte_ethdev_strcat = ExternalFunction['strcat', strcat]
alias rte_ethdev_strncat = ExternalFunction['strncat', strncat]
alias rte_ethdev_strcmp = ExternalFunction['strcmp', strcmp]
alias rte_ethdev_strncmp = ExternalFunction['strncmp', strncmp]
alias rte_ethdev_strcoll = ExternalFunction['strcoll', strcoll]
alias rte_ethdev_strxfrm = ExternalFunction['strxfrm', strxfrm]
alias rte_ethdev_strcoll_l = ExternalFunction['strcoll_l', strcoll_l]
alias rte_ethdev_strxfrm_l = ExternalFunction['strxfrm_l', strxfrm_l]
alias rte_ethdev_strdup = ExternalFunction['strdup', strdup]
alias rte_ethdev_strndup = ExternalFunction['strndup', strndup]
alias rte_ethdev_strchr = ExternalFunction['strchr', strchr]
alias rte_ethdev_strrchr = ExternalFunction['strrchr', strrchr]
alias rte_ethdev_strcspn = ExternalFunction['strcspn', strcspn]
alias rte_ethdev_strspn = ExternalFunction['strspn', strspn]
alias rte_ethdev_strpbrk = ExternalFunction['strpbrk', strpbrk]
alias rte_ethdev_strstr = ExternalFunction['strstr', strstr]
alias rte_ethdev_strtok = ExternalFunction['strtok', strtok]
alias rte_ethdev_strtok_r = ExternalFunction['strtok_r', strtok_r]
alias rte_ethdev_strlen = ExternalFunction['strlen', strlen]
alias rte_ethdev_strnlen = ExternalFunction['strnlen', strnlen]
alias rte_ethdev_strerror = ExternalFunction['strerror', strerror]
alias rte_ethdev_strerror_r = ExternalFunction['strerror_r', strerror_r]
alias rte_ethdev_strerror_l = ExternalFunction['strerror_l', strerror_l]
alias rte_ethdev_bcmp = ExternalFunction['bcmp', bcmp]
alias rte_ethdev_bcopy = ExternalFunction['bcopy', bcopy]
alias rte_ethdev_bzero = ExternalFunction['bzero', bzero]
alias rte_ethdev_index = ExternalFunction['index', index]
alias rte_ethdev_rindex = ExternalFunction['rindex', rindex]
alias rte_ethdev_ffs = ExternalFunction['ffs', ffs]
alias rte_ethdev_ffsl = ExternalFunction['ffsl', ffsl]
alias rte_ethdev_ffsll = ExternalFunction['ffsll', ffsll]
alias rte_ethdev_strcasecmp = ExternalFunction['strcasecmp', strcasecmp]
alias rte_ethdev_strncasecmp = ExternalFunction['strncasecmp', strncasecmp]
alias rte_ethdev_strcasecmp_l = ExternalFunction['strcasecmp_l', strcasecmp_l]
alias rte_ethdev_strncasecmp_l = ExternalFunction['strncasecmp_l', strncasecmp_l]
alias rte_ethdev_explicit_bzero = ExternalFunction['explicit_bzero', explicit_bzero]
alias rte_ethdev_strsep = ExternalFunction['strsep', strsep]
alias rte_ethdev_strsignal = ExternalFunction['strsignal', strsignal]
alias rte_ethdev_stpcpy = ExternalFunction['stpcpy', stpcpy]
alias rte_ethdev_stpncpy = ExternalFunction['stpncpy', stpncpy]
alias rte_ethdev_rte_uuid_is_null = ExternalFunction['rte_uuid_is_null', rte_uuid_is_null]
alias rte_ethdev_rte_uuid_copy = ExternalFunction['rte_uuid_copy', rte_uuid_copy]
alias rte_ethdev_rte_uuid_compare = ExternalFunction['rte_uuid_compare', rte_uuid_compare]
alias rte_ethdev_rte_uuid_parse = ExternalFunction['rte_uuid_parse', rte_uuid_parse]
alias rte_ethdev_rte_uuid_unparse = ExternalFunction['rte_uuid_unparse', rte_uuid_unparse]
alias rte_ethdev_rte_eal_process_type = ExternalFunction['rte_eal_process_type', rte_eal_process_type]
alias rte_ethdev_rte_eal_iopl_init = ExternalFunction['rte_eal_iopl_init', rte_eal_iopl_init]
alias rte_ethdev_rte_eal_init = ExternalFunction['rte_eal_init', rte_eal_init]
alias rte_ethdev_rte_eal_cleanup = ExternalFunction['rte_eal_cleanup', rte_eal_cleanup]
alias rte_ethdev_rte_eal_primary_proc_alive = ExternalFunction['rte_eal_primary_proc_alive', rte_eal_primary_proc_alive]
alias rte_ethdev_rte_mp_disable = ExternalFunction['rte_mp_disable', rte_mp_disable]
alias rte_ethdev_rte_mp_action_register = ExternalFunction['rte_mp_action_register', rte_mp_action_register]
alias rte_ethdev_rte_mp_action_unregister = ExternalFunction['rte_mp_action_unregister', rte_mp_action_unregister]
alias rte_ethdev_rte_mp_sendmsg = ExternalFunction['rte_mp_sendmsg', rte_mp_sendmsg]
alias rte_ethdev_rte_mp_request_sync = ExternalFunction['rte_mp_request_sync', rte_mp_request_sync]
alias rte_ethdev_rte_mp_request_async = ExternalFunction['rte_mp_request_async', rte_mp_request_async]
alias rte_ethdev_rte_set_application_usage_hook = ExternalFunction['rte_set_application_usage_hook', rte_set_application_usage_hook]
alias rte_ethdev_rte_eal_has_hugepages = ExternalFunction['rte_eal_has_hugepages', rte_eal_has_hugepages]
alias rte_ethdev_rte_eal_has_pci = ExternalFunction['rte_eal_has_pci', rte_eal_has_pci]
alias rte_ethdev_rte_eal_create_uio_dev = ExternalFunction['rte_eal_create_uio_dev', rte_eal_create_uio_dev]
alias rte_ethdev_rte_eal_vfio_intr_mode = ExternalFunction['rte_eal_vfio_intr_mode', rte_eal_vfio_intr_mode]
alias rte_ethdev_rte_eal_vfio_get_vf_token = ExternalFunction['rte_eal_vfio_get_vf_token', rte_eal_vfio_get_vf_token]
alias rte_ethdev_rte_sys_gettid = ExternalFunction['rte_sys_gettid', rte_sys_gettid]
alias rte_ethdev_rte_gettid = ExternalFunction['rte_gettid', rte_gettid]
alias rte_ethdev_rte_eal_get_baseaddr = ExternalFunction['rte_eal_get_baseaddr', rte_eal_get_baseaddr]
alias rte_ethdev_rte_eal_iova_mode = ExternalFunction['rte_eal_iova_mode', rte_eal_iova_mode]
alias rte_ethdev_rte_eal_mbuf_user_pool_ops = ExternalFunction['rte_eal_mbuf_user_pool_ops', rte_eal_mbuf_user_pool_ops]
alias rte_ethdev_rte_eal_get_runtime_dir = ExternalFunction['rte_eal_get_runtime_dir', rte_eal_get_runtime_dir]
alias rte_ethdev_rte_eal_parse_coremask = ExternalFunction['rte_eal_parse_coremask', rte_eal_parse_coremask]
alias rte_ethdev_rte_eal_remote_launch = ExternalFunction['rte_eal_remote_launch', rte_eal_remote_launch]
alias rte_ethdev_rte_eal_mp_remote_launch = ExternalFunction['rte_eal_mp_remote_launch', rte_eal_mp_remote_launch]
alias rte_ethdev_rte_eal_get_lcore_state = ExternalFunction['rte_eal_get_lcore_state', rte_eal_get_lcore_state]
alias rte_ethdev_rte_eal_wait_lcore = ExternalFunction['rte_eal_wait_lcore', rte_eal_wait_lcore]
alias rte_ethdev_rte_eal_mp_wait_lcore = ExternalFunction['rte_eal_mp_wait_lcore', rte_eal_mp_wait_lcore]
alias rte_ethdev_rte_thread_create = ExternalFunction['rte_thread_create', rte_thread_create]
alias rte_ethdev_rte_thread_create_control = ExternalFunction['rte_thread_create_control', rte_thread_create_control]
alias rte_ethdev_rte_thread_create_internal_control = ExternalFunction['rte_thread_create_internal_control', rte_thread_create_internal_control]
alias rte_ethdev_rte_thread_join = ExternalFunction['rte_thread_join', rte_thread_join]
alias rte_ethdev_rte_thread_detach = ExternalFunction['rte_thread_detach', rte_thread_detach]
alias rte_ethdev_rte_thread_self = ExternalFunction['rte_thread_self', rte_thread_self]
alias rte_ethdev_rte_thread_set_name = ExternalFunction['rte_thread_set_name', rte_thread_set_name]
alias rte_ethdev_rte_thread_set_prefixed_name = ExternalFunction['rte_thread_set_prefixed_name', rte_thread_set_prefixed_name]
alias rte_ethdev_rte_thread_equal = ExternalFunction['rte_thread_equal', rte_thread_equal]
alias rte_ethdev_rte_thread_attr_init = ExternalFunction['rte_thread_attr_init', rte_thread_attr_init]
alias rte_ethdev_rte_thread_attr_set_priority = ExternalFunction['rte_thread_attr_set_priority', rte_thread_attr_set_priority]
alias rte_ethdev_rte_thread_get_priority = ExternalFunction['rte_thread_get_priority', rte_thread_get_priority]
alias rte_ethdev_rte_thread_set_priority = ExternalFunction['rte_thread_set_priority', rte_thread_set_priority]
alias rte_ethdev_rte_thread_key_create = ExternalFunction['rte_thread_key_create', rte_thread_key_create]
alias rte_ethdev_rte_thread_key_delete = ExternalFunction['rte_thread_key_delete', rte_thread_key_delete]
alias rte_ethdev_rte_thread_value_set = ExternalFunction['rte_thread_value_set', rte_thread_value_set]
alias rte_ethdev_rte_thread_value_get = ExternalFunction['rte_thread_value_get', rte_thread_value_get]
alias rte_ethdev_rte_eal_lcore_role = ExternalFunction['rte_eal_lcore_role', rte_eal_lcore_role]
alias rte_ethdev_rte_lcore_has_role = ExternalFunction['rte_lcore_has_role', rte_lcore_has_role]
alias rte_ethdev_rte_lcore_id = ExternalFunction['rte_lcore_id', rte_lcore_id]
alias rte_ethdev_rte_get_main_lcore = ExternalFunction['rte_get_main_lcore', rte_get_main_lcore]
alias rte_ethdev_rte_lcore_count = ExternalFunction['rte_lcore_count', rte_lcore_count]
alias rte_ethdev_rte_lcore_index = ExternalFunction['rte_lcore_index', rte_lcore_index]
alias rte_ethdev_rte_socket_id = ExternalFunction['rte_socket_id', rte_socket_id]
alias rte_ethdev_rte_socket_count = ExternalFunction['rte_socket_count', rte_socket_count]
alias rte_ethdev_rte_socket_id_by_idx = ExternalFunction['rte_socket_id_by_idx', rte_socket_id_by_idx]
alias rte_ethdev_rte_lcore_to_socket_id = ExternalFunction['rte_lcore_to_socket_id', rte_lcore_to_socket_id]
alias rte_ethdev_rte_lcore_to_cpu_id = ExternalFunction['rte_lcore_to_cpu_id', rte_lcore_to_cpu_id]
alias rte_ethdev_rte_lcore_is_enabled = ExternalFunction['rte_lcore_is_enabled', rte_lcore_is_enabled]
alias rte_ethdev_rte_get_next_lcore = ExternalFunction['rte_get_next_lcore', rte_get_next_lcore]
alias rte_ethdev_rte_lcore_callback_register = ExternalFunction['rte_lcore_callback_register', rte_lcore_callback_register]
alias rte_ethdev_rte_lcore_callback_unregister = ExternalFunction['rte_lcore_callback_unregister', rte_lcore_callback_unregister]
alias rte_ethdev_rte_lcore_iterate = ExternalFunction['rte_lcore_iterate', rte_lcore_iterate]
alias rte_ethdev_rte_lcore_register_usage_cb = ExternalFunction['rte_lcore_register_usage_cb', rte_lcore_register_usage_cb]
alias rte_ethdev_rte_lcore_dump = ExternalFunction['rte_lcore_dump', rte_lcore_dump]
alias rte_ethdev_rte_thread_register = ExternalFunction['rte_thread_register', rte_thread_register]
alias rte_ethdev_rte_thread_unregister = ExternalFunction['rte_thread_unregister', rte_thread_unregister]
alias rte_ethdev_rte_atomic_thread_fence = ExternalFunction['rte_atomic_thread_fence', rte_atomic_thread_fence]
alias rte_ethdev_rte_atomic16_cmpset = ExternalFunction['rte_atomic16_cmpset', rte_atomic16_cmpset]
alias rte_ethdev_rte_atomic16_exchange = ExternalFunction['rte_atomic16_exchange', rte_atomic16_exchange]
alias rte_ethdev_rte_atomic16_init = ExternalFunction['rte_atomic16_init', rte_atomic16_init]
alias rte_ethdev_rte_atomic16_read = ExternalFunction['rte_atomic16_read', rte_atomic16_read]
alias rte_ethdev_rte_atomic16_set = ExternalFunction['rte_atomic16_set', rte_atomic16_set]
alias rte_ethdev_rte_atomic16_add = ExternalFunction['rte_atomic16_add', rte_atomic16_add]
alias rte_ethdev_rte_atomic16_sub = ExternalFunction['rte_atomic16_sub', rte_atomic16_sub]
alias rte_ethdev_rte_atomic16_inc = ExternalFunction['rte_atomic16_inc', rte_atomic16_inc]
alias rte_ethdev_rte_atomic16_dec = ExternalFunction['rte_atomic16_dec', rte_atomic16_dec]
alias rte_ethdev_rte_atomic16_add_return = ExternalFunction['rte_atomic16_add_return', rte_atomic16_add_return]
alias rte_ethdev_rte_atomic16_sub_return = ExternalFunction['rte_atomic16_sub_return', rte_atomic16_sub_return]
alias rte_ethdev_rte_atomic16_inc_and_test = ExternalFunction['rte_atomic16_inc_and_test', rte_atomic16_inc_and_test]
alias rte_ethdev_rte_atomic16_dec_and_test = ExternalFunction['rte_atomic16_dec_and_test', rte_atomic16_dec_and_test]
alias rte_ethdev_rte_atomic16_test_and_set = ExternalFunction['rte_atomic16_test_and_set', rte_atomic16_test_and_set]
alias rte_ethdev_rte_atomic16_clear = ExternalFunction['rte_atomic16_clear', rte_atomic16_clear]
alias rte_ethdev_rte_atomic32_cmpset = ExternalFunction['rte_atomic32_cmpset', rte_atomic32_cmpset]
alias rte_ethdev_rte_atomic32_exchange = ExternalFunction['rte_atomic32_exchange', rte_atomic32_exchange]
alias rte_ethdev_rte_atomic32_init = ExternalFunction['rte_atomic32_init', rte_atomic32_init]
alias rte_ethdev_rte_atomic32_read = ExternalFunction['rte_atomic32_read', rte_atomic32_read]
alias rte_ethdev_rte_atomic32_set = ExternalFunction['rte_atomic32_set', rte_atomic32_set]
alias rte_ethdev_rte_atomic32_add = ExternalFunction['rte_atomic32_add', rte_atomic32_add]
alias rte_ethdev_rte_atomic32_sub = ExternalFunction['rte_atomic32_sub', rte_atomic32_sub]
alias rte_ethdev_rte_atomic32_inc = ExternalFunction['rte_atomic32_inc', rte_atomic32_inc]
alias rte_ethdev_rte_atomic32_dec = ExternalFunction['rte_atomic32_dec', rte_atomic32_dec]
alias rte_ethdev_rte_atomic32_add_return = ExternalFunction['rte_atomic32_add_return', rte_atomic32_add_return]
alias rte_ethdev_rte_atomic32_sub_return = ExternalFunction['rte_atomic32_sub_return', rte_atomic32_sub_return]
alias rte_ethdev_rte_atomic32_inc_and_test = ExternalFunction['rte_atomic32_inc_and_test', rte_atomic32_inc_and_test]
alias rte_ethdev_rte_atomic32_dec_and_test = ExternalFunction['rte_atomic32_dec_and_test', rte_atomic32_dec_and_test]
alias rte_ethdev_rte_atomic32_test_and_set = ExternalFunction['rte_atomic32_test_and_set', rte_atomic32_test_and_set]
alias rte_ethdev_rte_atomic32_clear = ExternalFunction['rte_atomic32_clear', rte_atomic32_clear]
alias rte_ethdev_rte_atomic64_cmpset = ExternalFunction['rte_atomic64_cmpset', rte_atomic64_cmpset]
alias rte_ethdev_rte_atomic64_exchange = ExternalFunction['rte_atomic64_exchange', rte_atomic64_exchange]
alias rte_ethdev_rte_atomic64_init = ExternalFunction['rte_atomic64_init', rte_atomic64_init]
alias rte_ethdev_rte_atomic64_read = ExternalFunction['rte_atomic64_read', rte_atomic64_read]
alias rte_ethdev_rte_atomic64_set = ExternalFunction['rte_atomic64_set', rte_atomic64_set]
alias rte_ethdev_rte_atomic64_add = ExternalFunction['rte_atomic64_add', rte_atomic64_add]
alias rte_ethdev_rte_atomic64_sub = ExternalFunction['rte_atomic64_sub', rte_atomic64_sub]
alias rte_ethdev_rte_atomic64_inc = ExternalFunction['rte_atomic64_inc', rte_atomic64_inc]
alias rte_ethdev_rte_atomic64_dec = ExternalFunction['rte_atomic64_dec', rte_atomic64_dec]
alias rte_ethdev_rte_atomic64_add_return = ExternalFunction['rte_atomic64_add_return', rte_atomic64_add_return]
alias rte_ethdev_rte_atomic64_sub_return = ExternalFunction['rte_atomic64_sub_return', rte_atomic64_sub_return]
alias rte_ethdev_rte_atomic64_inc_and_test = ExternalFunction['rte_atomic64_inc_and_test', rte_atomic64_inc_and_test]
alias rte_ethdev_rte_atomic64_dec_and_test = ExternalFunction['rte_atomic64_dec_and_test', rte_atomic64_dec_and_test]
alias rte_ethdev_rte_atomic64_test_and_set = ExternalFunction['rte_atomic64_test_and_set', rte_atomic64_test_and_set]
alias rte_ethdev_rte_atomic64_clear = ExternalFunction['rte_atomic64_clear', rte_atomic64_clear]
alias rte_ethdev_rte_atomic128_cmp_exchange = ExternalFunction['rte_atomic128_cmp_exchange', rte_atomic128_cmp_exchange]
alias rte_ethdev_rte_pause = ExternalFunction['rte_pause', rte_pause]
alias rte_ethdev_rte_wait_until_equal_16 = ExternalFunction['rte_wait_until_equal_16', rte_wait_until_equal_16]
alias rte_ethdev_rte_wait_until_equal_32 = ExternalFunction['rte_wait_until_equal_32', rte_wait_until_equal_32]
alias rte_ethdev_rte_wait_until_equal_64 = ExternalFunction['rte_wait_until_equal_64', rte_wait_until_equal_64]
alias rte_ethdev_rte_spinlock_init = ExternalFunction['rte_spinlock_init', rte_spinlock_init]
alias rte_ethdev_rte_spinlock_lock = ExternalFunction['rte_spinlock_lock', rte_spinlock_lock]
alias rte_ethdev_rte_spinlock_unlock = ExternalFunction['rte_spinlock_unlock', rte_spinlock_unlock]
alias rte_ethdev_rte_spinlock_trylock = ExternalFunction['rte_spinlock_trylock', rte_spinlock_trylock]
alias rte_ethdev_rte_spinlock_is_locked = ExternalFunction['rte_spinlock_is_locked', rte_spinlock_is_locked]
alias rte_ethdev_rte_tm_supported = ExternalFunction['rte_tm_supported', rte_tm_supported]
alias rte_ethdev_rte_spinlock_lock_tm = ExternalFunction['rte_spinlock_lock_tm', rte_spinlock_lock_tm]
alias rte_ethdev_rte_spinlock_unlock_tm = ExternalFunction['rte_spinlock_unlock_tm', rte_spinlock_unlock_tm]
alias rte_ethdev_rte_spinlock_trylock_tm = ExternalFunction['rte_spinlock_trylock_tm', rte_spinlock_trylock_tm]
alias rte_ethdev_rte_spinlock_recursive_init = ExternalFunction['rte_spinlock_recursive_init', rte_spinlock_recursive_init]
alias rte_ethdev_rte_spinlock_recursive_lock = ExternalFunction['rte_spinlock_recursive_lock', rte_spinlock_recursive_lock]
alias rte_ethdev_rte_spinlock_recursive_unlock = ExternalFunction['rte_spinlock_recursive_unlock', rte_spinlock_recursive_unlock]
alias rte_ethdev_rte_spinlock_recursive_trylock = ExternalFunction['rte_spinlock_recursive_trylock', rte_spinlock_recursive_trylock]
alias rte_ethdev_rte_spinlock_recursive_lock_tm = ExternalFunction['rte_spinlock_recursive_lock_tm', rte_spinlock_recursive_lock_tm]
alias rte_ethdev_rte_spinlock_recursive_unlock_tm = ExternalFunction['rte_spinlock_recursive_unlock_tm', rte_spinlock_recursive_unlock_tm]
alias rte_ethdev_rte_spinlock_recursive_trylock_tm = ExternalFunction['rte_spinlock_recursive_trylock_tm', rte_spinlock_recursive_trylock_tm]
alias rte_ethdev_rte_power_monitor = ExternalFunction['rte_power_monitor', rte_power_monitor]
alias rte_ethdev_rte_power_monitor_wakeup = ExternalFunction['rte_power_monitor_wakeup', rte_power_monitor_wakeup]
alias rte_ethdev_rte_power_pause = ExternalFunction['rte_power_pause', rte_power_pause]
alias rte_ethdev_rte_power_monitor_multi = ExternalFunction['rte_power_monitor_multi', rte_power_monitor_multi]
alias rte_ethdev_rte_get_tsc_hz = ExternalFunction['rte_get_tsc_hz', rte_get_tsc_hz]
alias rte_ethdev_rte_get_tsc_cycles = ExternalFunction['rte_get_tsc_cycles', rte_get_tsc_cycles]
alias rte_ethdev_rte_get_timer_cycles = ExternalFunction['rte_get_timer_cycles', rte_get_timer_cycles]
alias rte_ethdev_rte_get_timer_hz = ExternalFunction['rte_get_timer_hz', rte_get_timer_hz]
alias rte_ethdev_rte_delay_ms = ExternalFunction['rte_delay_ms', rte_delay_ms]
alias rte_ethdev_rte_delay_us_block = ExternalFunction['rte_delay_us_block', rte_delay_us_block]
alias rte_ethdev_rte_delay_us_sleep = ExternalFunction['rte_delay_us_sleep', rte_delay_us_sleep]
alias rte_ethdev_rte_delay_us_callback_register = ExternalFunction['rte_delay_us_callback_register', rte_delay_us_callback_register]
alias rte_ethdev_rte_rdtsc = ExternalFunction['rte_rdtsc', rte_rdtsc]
alias rte_ethdev_rte_rdtsc_precise = ExternalFunction['rte_rdtsc_precise', rte_rdtsc_precise]
alias rte_ethdev_isalnum = ExternalFunction['isalnum', isalnum]
alias rte_ethdev_isalpha = ExternalFunction['isalpha', isalpha]
alias rte_ethdev_iscntrl = ExternalFunction['iscntrl', iscntrl]
alias rte_ethdev_isdigit = ExternalFunction['isdigit', isdigit]
alias rte_ethdev_islower = ExternalFunction['islower', islower]
alias rte_ethdev_isgraph = ExternalFunction['isgraph', isgraph]
alias rte_ethdev_isprint = ExternalFunction['isprint', isprint]
alias rte_ethdev_ispunct = ExternalFunction['ispunct', ispunct]
alias rte_ethdev_isspace = ExternalFunction['isspace', isspace]
alias rte_ethdev_isupper = ExternalFunction['isupper', isupper]
alias rte_ethdev_isxdigit = ExternalFunction['isxdigit', isxdigit]
alias rte_ethdev_tolower = ExternalFunction['tolower', tolower]
alias rte_ethdev_toupper = ExternalFunction['toupper', toupper]
alias rte_ethdev_isblank = ExternalFunction['isblank', isblank]
alias rte_ethdev_isascii = ExternalFunction['isascii', isascii]
alias rte_ethdev_toascii = ExternalFunction['toascii', toascii]
alias rte_ethdev_isalnum_l = ExternalFunction['isalnum_l', isalnum_l]
alias rte_ethdev_isalpha_l = ExternalFunction['isalpha_l', isalpha_l]
alias rte_ethdev_iscntrl_l = ExternalFunction['iscntrl_l', iscntrl_l]
alias rte_ethdev_isdigit_l = ExternalFunction['isdigit_l', isdigit_l]
alias rte_ethdev_islower_l = ExternalFunction['islower_l', islower_l]
alias rte_ethdev_isgraph_l = ExternalFunction['isgraph_l', isgraph_l]
alias rte_ethdev_isprint_l = ExternalFunction['isprint_l', isprint_l]
alias rte_ethdev_ispunct_l = ExternalFunction['ispunct_l', ispunct_l]
alias rte_ethdev_isspace_l = ExternalFunction['isspace_l', isspace_l]
alias rte_ethdev_isupper_l = ExternalFunction['isupper_l', isupper_l]
alias rte_ethdev_isxdigit_l = ExternalFunction['isxdigit_l', isxdigit_l]
alias rte_ethdev_isblank_l = ExternalFunction['isblank_l', isblank_l]
alias rte_ethdev_tolower_l = ExternalFunction['tolower_l', tolower_l]
alias rte_ethdev_toupper_l = ExternalFunction['toupper_l', toupper_l]
alias rte_ethdev_rte_strsplit = ExternalFunction['rte_strsplit', rte_strsplit]
alias rte_ethdev_rte_strlcpy = ExternalFunction['rte_strlcpy', rte_strlcpy]
alias rte_ethdev_rte_strlcat = ExternalFunction['rte_strlcat', rte_strlcat]
alias rte_ethdev_rte_strscpy = ExternalFunction['rte_strscpy', rte_strscpy]
alias rte_ethdev_rte_str_skip_leading_spaces = ExternalFunction['rte_str_skip_leading_spaces', rte_str_skip_leading_spaces]
alias rte_ethdev_rte_trace_is_enabled = ExternalFunction['rte_trace_is_enabled', rte_trace_is_enabled]
alias rte_ethdev_rte_trace_feature_is_enabled = ExternalFunction['rte_trace_feature_is_enabled', rte_trace_feature_is_enabled]
alias rte_ethdev_rte_trace_mode_set = ExternalFunction['rte_trace_mode_set', rte_trace_mode_set]
alias rte_ethdev_rte_trace_mode_get = ExternalFunction['rte_trace_mode_get', rte_trace_mode_get]
alias rte_ethdev_rte_trace_pattern = ExternalFunction['rte_trace_pattern', rte_trace_pattern]
alias rte_ethdev_rte_trace_regexp = ExternalFunction['rte_trace_regexp', rte_trace_regexp]
alias rte_ethdev_rte_trace_save = ExternalFunction['rte_trace_save', rte_trace_save]
alias rte_ethdev_rte_trace_metadata_dump = ExternalFunction['rte_trace_metadata_dump', rte_trace_metadata_dump]
alias rte_ethdev_rte_trace_dump = ExternalFunction['rte_trace_dump', rte_trace_dump]
alias rte_ethdev_rte_trace_point_enable = ExternalFunction['rte_trace_point_enable', rte_trace_point_enable]
alias rte_ethdev_rte_trace_point_disable = ExternalFunction['rte_trace_point_disable', rte_trace_point_disable]
alias rte_ethdev_rte_trace_point_is_enabled = ExternalFunction['rte_trace_point_is_enabled', rte_trace_point_is_enabled]
alias rte_ethdev_rte_trace_point_lookup = ExternalFunction['rte_trace_point_lookup', rte_trace_point_lookup]
alias rte_ethdev_rte_ethdev_trace_rx_burst_empty = ExternalFunction['rte_ethdev_trace_rx_burst_empty', rte_ethdev_trace_rx_burst_empty]
alias rte_ethdev_rte_ethdev_trace_rx_burst_nonempty = ExternalFunction['rte_ethdev_trace_rx_burst_nonempty', rte_ethdev_trace_rx_burst_nonempty]
alias rte_ethdev_rte_ethdev_trace_tx_burst = ExternalFunction['rte_ethdev_trace_tx_burst', rte_ethdev_trace_tx_burst]
alias rte_ethdev_rte_eth_trace_call_rx_callbacks_empty = ExternalFunction['rte_eth_trace_call_rx_callbacks_empty', rte_eth_trace_call_rx_callbacks_empty]
alias rte_ethdev_rte_eth_trace_call_rx_callbacks_nonempty = ExternalFunction['rte_eth_trace_call_rx_callbacks_nonempty', rte_eth_trace_call_rx_callbacks_nonempty]
alias rte_ethdev_rte_eth_trace_call_tx_callbacks = ExternalFunction['rte_eth_trace_call_tx_callbacks', rte_eth_trace_call_tx_callbacks]
alias rte_ethdev_rte_eth_trace_tx_buffer_drop_callback = ExternalFunction['rte_eth_trace_tx_buffer_drop_callback', rte_eth_trace_tx_buffer_drop_callback]
alias rte_ethdev_rte_eth_trace_tx_buffer_count_callback = ExternalFunction['rte_eth_trace_tx_buffer_count_callback', rte_eth_trace_tx_buffer_count_callback]
alias rte_ethdev_rte_eth_trace_tx_queue_count = ExternalFunction['rte_eth_trace_tx_queue_count', rte_eth_trace_tx_queue_count]
alias rte_ethdev_rte_eth_iterator_init = ExternalFunction['rte_eth_iterator_init', rte_eth_iterator_init]
alias rte_ethdev_rte_eth_iterator_next = ExternalFunction['rte_eth_iterator_next', rte_eth_iterator_next]
alias rte_ethdev_rte_eth_iterator_cleanup = ExternalFunction['rte_eth_iterator_cleanup', rte_eth_iterator_cleanup]
alias rte_ethdev_rte_eth_rss_hf_refine = ExternalFunction['rte_eth_rss_hf_refine', rte_eth_rss_hf_refine]
alias rte_ethdev_rte_srand = ExternalFunction['rte_srand', rte_srand]
alias rte_ethdev_rte_rand = ExternalFunction['rte_rand', rte_rand]
alias rte_ethdev_rte_rand_max = ExternalFunction['rte_rand_max', rte_rand_max]
alias rte_ethdev_rte_drand = ExternalFunction['rte_drand', rte_drand]
alias rte_ethdev_rte_rwlock_init = ExternalFunction['rte_rwlock_init', rte_rwlock_init]
alias rte_ethdev_rte_rwlock_read_lock = ExternalFunction['rte_rwlock_read_lock', rte_rwlock_read_lock]
alias rte_ethdev_rte_rwlock_read_trylock = ExternalFunction['rte_rwlock_read_trylock', rte_rwlock_read_trylock]
alias rte_ethdev_rte_rwlock_read_unlock = ExternalFunction['rte_rwlock_read_unlock', rte_rwlock_read_unlock]
alias rte_ethdev_rte_rwlock_write_trylock = ExternalFunction['rte_rwlock_write_trylock', rte_rwlock_write_trylock]
alias rte_ethdev_rte_rwlock_write_lock = ExternalFunction['rte_rwlock_write_lock', rte_rwlock_write_lock]
alias rte_ethdev_rte_rwlock_write_unlock = ExternalFunction['rte_rwlock_write_unlock', rte_rwlock_write_unlock]
alias rte_ethdev_rte_rwlock_write_is_locked = ExternalFunction['rte_rwlock_write_is_locked', rte_rwlock_write_is_locked]
alias rte_ethdev_rte_rwlock_read_lock_tm = ExternalFunction['rte_rwlock_read_lock_tm', rte_rwlock_read_lock_tm]
alias rte_ethdev_rte_rwlock_read_unlock_tm = ExternalFunction['rte_rwlock_read_unlock_tm', rte_rwlock_read_unlock_tm]
alias rte_ethdev_rte_rwlock_write_lock_tm = ExternalFunction['rte_rwlock_write_lock_tm', rte_rwlock_write_lock_tm]
alias rte_ethdev_rte_rwlock_write_unlock_tm = ExternalFunction['rte_rwlock_write_unlock_tm', rte_rwlock_write_unlock_tm]
alias rte_ethdev_rte_mcfg_mem_get_lock = ExternalFunction['rte_mcfg_mem_get_lock', rte_mcfg_mem_get_lock]
alias rte_ethdev_rte_mcfg_tailq_get_lock = ExternalFunction['rte_mcfg_tailq_get_lock', rte_mcfg_tailq_get_lock]
alias rte_ethdev_rte_mcfg_mempool_get_lock = ExternalFunction['rte_mcfg_mempool_get_lock', rte_mcfg_mempool_get_lock]
alias rte_ethdev_rte_mcfg_timer_get_lock = ExternalFunction['rte_mcfg_timer_get_lock', rte_mcfg_timer_get_lock]
alias rte_ethdev_rte_mcfg_ethdev_get_lock = ExternalFunction['rte_mcfg_ethdev_get_lock', rte_mcfg_ethdev_get_lock]
alias rte_ethdev_rte_mcfg_mem_read_lock = ExternalFunction['rte_mcfg_mem_read_lock', rte_mcfg_mem_read_lock]
alias rte_ethdev_rte_mcfg_mem_read_unlock = ExternalFunction['rte_mcfg_mem_read_unlock', rte_mcfg_mem_read_unlock]
alias rte_ethdev_rte_mcfg_mem_write_lock = ExternalFunction['rte_mcfg_mem_write_lock', rte_mcfg_mem_write_lock]
alias rte_ethdev_rte_mcfg_mem_write_unlock = ExternalFunction['rte_mcfg_mem_write_unlock', rte_mcfg_mem_write_unlock]
alias rte_ethdev_rte_mcfg_tailq_read_lock = ExternalFunction['rte_mcfg_tailq_read_lock', rte_mcfg_tailq_read_lock]
alias rte_ethdev_rte_mcfg_tailq_read_unlock = ExternalFunction['rte_mcfg_tailq_read_unlock', rte_mcfg_tailq_read_unlock]
alias rte_ethdev_rte_mcfg_tailq_write_lock = ExternalFunction['rte_mcfg_tailq_write_lock', rte_mcfg_tailq_write_lock]
alias rte_ethdev_rte_mcfg_tailq_write_unlock = ExternalFunction['rte_mcfg_tailq_write_unlock', rte_mcfg_tailq_write_unlock]
alias rte_ethdev_rte_mcfg_mempool_read_lock = ExternalFunction['rte_mcfg_mempool_read_lock', rte_mcfg_mempool_read_lock]
alias rte_ethdev_rte_mcfg_mempool_read_unlock = ExternalFunction['rte_mcfg_mempool_read_unlock', rte_mcfg_mempool_read_unlock]
alias rte_ethdev_rte_mcfg_mempool_write_lock = ExternalFunction['rte_mcfg_mempool_write_lock', rte_mcfg_mempool_write_lock]
alias rte_ethdev_rte_mcfg_mempool_write_unlock = ExternalFunction['rte_mcfg_mempool_write_unlock', rte_mcfg_mempool_write_unlock]
alias rte_ethdev_rte_mcfg_timer_lock = ExternalFunction['rte_mcfg_timer_lock', rte_mcfg_timer_lock]
alias rte_ethdev_rte_mcfg_timer_unlock = ExternalFunction['rte_mcfg_timer_unlock', rte_mcfg_timer_unlock]
alias rte_ethdev_rte_mcfg_get_single_file_segments = ExternalFunction['rte_mcfg_get_single_file_segments', rte_mcfg_get_single_file_segments]
alias rte_ethdev_rte_fbarray_init = ExternalFunction['rte_fbarray_init', rte_fbarray_init]
alias rte_ethdev_rte_fbarray_attach = ExternalFunction['rte_fbarray_attach', rte_fbarray_attach]
alias rte_ethdev_rte_fbarray_destroy = ExternalFunction['rte_fbarray_destroy', rte_fbarray_destroy]
alias rte_ethdev_rte_fbarray_detach = ExternalFunction['rte_fbarray_detach', rte_fbarray_detach]
alias rte_ethdev_rte_fbarray_get = ExternalFunction['rte_fbarray_get', rte_fbarray_get]
alias rte_ethdev_rte_fbarray_find_idx = ExternalFunction['rte_fbarray_find_idx', rte_fbarray_find_idx]
alias rte_ethdev_rte_fbarray_set_used = ExternalFunction['rte_fbarray_set_used', rte_fbarray_set_used]
alias rte_ethdev_rte_fbarray_set_free = ExternalFunction['rte_fbarray_set_free', rte_fbarray_set_free]
alias rte_ethdev_rte_fbarray_is_used = ExternalFunction['rte_fbarray_is_used', rte_fbarray_is_used]
alias rte_ethdev_rte_fbarray_find_next_free = ExternalFunction['rte_fbarray_find_next_free', rte_fbarray_find_next_free]
alias rte_ethdev_rte_fbarray_find_next_used = ExternalFunction['rte_fbarray_find_next_used', rte_fbarray_find_next_used]
alias rte_ethdev_rte_fbarray_find_next_n_free = ExternalFunction['rte_fbarray_find_next_n_free', rte_fbarray_find_next_n_free]
alias rte_ethdev_rte_fbarray_find_next_n_used = ExternalFunction['rte_fbarray_find_next_n_used', rte_fbarray_find_next_n_used]
alias rte_ethdev_rte_fbarray_find_contig_free = ExternalFunction['rte_fbarray_find_contig_free', rte_fbarray_find_contig_free]
alias rte_ethdev_rte_fbarray_find_contig_used = ExternalFunction['rte_fbarray_find_contig_used', rte_fbarray_find_contig_used]
alias rte_ethdev_rte_fbarray_find_prev_free = ExternalFunction['rte_fbarray_find_prev_free', rte_fbarray_find_prev_free]
alias rte_ethdev_rte_fbarray_find_prev_used = ExternalFunction['rte_fbarray_find_prev_used', rte_fbarray_find_prev_used]
alias rte_ethdev_rte_fbarray_find_prev_n_free = ExternalFunction['rte_fbarray_find_prev_n_free', rte_fbarray_find_prev_n_free]
alias rte_ethdev_rte_fbarray_find_prev_n_used = ExternalFunction['rte_fbarray_find_prev_n_used', rte_fbarray_find_prev_n_used]
alias rte_ethdev_rte_fbarray_find_rev_contig_free = ExternalFunction['rte_fbarray_find_rev_contig_free', rte_fbarray_find_rev_contig_free]
alias rte_ethdev_rte_fbarray_find_rev_contig_used = ExternalFunction['rte_fbarray_find_rev_contig_used', rte_fbarray_find_rev_contig_used]
alias rte_ethdev_rte_fbarray_find_biggest_free = ExternalFunction['rte_fbarray_find_biggest_free', rte_fbarray_find_biggest_free]
alias rte_ethdev_rte_fbarray_find_biggest_used = ExternalFunction['rte_fbarray_find_biggest_used', rte_fbarray_find_biggest_used]
alias rte_ethdev_rte_fbarray_find_rev_biggest_free = ExternalFunction['rte_fbarray_find_rev_biggest_free', rte_fbarray_find_rev_biggest_free]
alias rte_ethdev_rte_fbarray_find_rev_biggest_used = ExternalFunction['rte_fbarray_find_rev_biggest_used', rte_fbarray_find_rev_biggest_used]
alias rte_ethdev_rte_fbarray_dump_metadata = ExternalFunction['rte_fbarray_dump_metadata', rte_fbarray_dump_metadata]
alias rte_ethdev_rte_mem_lock_page = ExternalFunction['rte_mem_lock_page', rte_mem_lock_page]
alias rte_ethdev_rte_mem_virt2phy = ExternalFunction['rte_mem_virt2phy', rte_mem_virt2phy]
alias rte_ethdev_rte_mem_virt2iova = ExternalFunction['rte_mem_virt2iova', rte_mem_virt2iova]
alias rte_ethdev_rte_mem_iova2virt = ExternalFunction['rte_mem_iova2virt', rte_mem_iova2virt]
alias rte_ethdev_rte_mem_virt2memseg = ExternalFunction['rte_mem_virt2memseg', rte_mem_virt2memseg]
alias rte_ethdev_rte_mem_virt2memseg_list = ExternalFunction['rte_mem_virt2memseg_list', rte_mem_virt2memseg_list]
alias rte_ethdev_rte_memseg_walk = ExternalFunction['rte_memseg_walk', rte_memseg_walk]
alias rte_ethdev_rte_memseg_contig_walk = ExternalFunction['rte_memseg_contig_walk', rte_memseg_contig_walk]
alias rte_ethdev_rte_memseg_list_walk = ExternalFunction['rte_memseg_list_walk', rte_memseg_list_walk]
alias rte_ethdev_rte_memseg_walk_thread_unsafe = ExternalFunction['rte_memseg_walk_thread_unsafe', rte_memseg_walk_thread_unsafe]
alias rte_ethdev_rte_memseg_contig_walk_thread_unsafe = ExternalFunction['rte_memseg_contig_walk_thread_unsafe', rte_memseg_contig_walk_thread_unsafe]
alias rte_ethdev_rte_memseg_list_walk_thread_unsafe = ExternalFunction['rte_memseg_list_walk_thread_unsafe', rte_memseg_list_walk_thread_unsafe]
alias rte_ethdev_rte_memseg_get_fd = ExternalFunction['rte_memseg_get_fd', rte_memseg_get_fd]
alias rte_ethdev_rte_memseg_get_fd_thread_unsafe = ExternalFunction['rte_memseg_get_fd_thread_unsafe', rte_memseg_get_fd_thread_unsafe]
alias rte_ethdev_rte_memseg_get_fd_offset = ExternalFunction['rte_memseg_get_fd_offset', rte_memseg_get_fd_offset]
alias rte_ethdev_rte_memseg_get_fd_offset_thread_unsafe = ExternalFunction['rte_memseg_get_fd_offset_thread_unsafe', rte_memseg_get_fd_offset_thread_unsafe]
alias rte_ethdev_rte_extmem_register = ExternalFunction['rte_extmem_register', rte_extmem_register]
alias rte_ethdev_rte_extmem_unregister = ExternalFunction['rte_extmem_unregister', rte_extmem_unregister]
alias rte_ethdev_rte_extmem_attach = ExternalFunction['rte_extmem_attach', rte_extmem_attach]
alias rte_ethdev_rte_extmem_detach = ExternalFunction['rte_extmem_detach', rte_extmem_detach]
alias rte_ethdev_rte_dump_physmem_layout = ExternalFunction['rte_dump_physmem_layout', rte_dump_physmem_layout]
alias rte_ethdev_rte_eal_get_physmem_size = ExternalFunction['rte_eal_get_physmem_size', rte_eal_get_physmem_size]
alias rte_ethdev_rte_memory_get_nchannel = ExternalFunction['rte_memory_get_nchannel', rte_memory_get_nchannel]
alias rte_ethdev_rte_memory_get_nrank = ExternalFunction['rte_memory_get_nrank', rte_memory_get_nrank]
alias rte_ethdev_rte_mem_check_dma_mask = ExternalFunction['rte_mem_check_dma_mask', rte_mem_check_dma_mask]
alias rte_ethdev_rte_mem_check_dma_mask_thread_unsafe = ExternalFunction['rte_mem_check_dma_mask_thread_unsafe', rte_mem_check_dma_mask_thread_unsafe]
alias rte_ethdev_rte_mem_set_dma_mask = ExternalFunction['rte_mem_set_dma_mask', rte_mem_set_dma_mask]
alias rte_ethdev_rte_eal_using_phys_addrs = ExternalFunction['rte_eal_using_phys_addrs', rte_eal_using_phys_addrs]
alias rte_ethdev_rte_mem_event_callback_register = ExternalFunction['rte_mem_event_callback_register', rte_mem_event_callback_register]
alias rte_ethdev_rte_mem_event_callback_unregister = ExternalFunction['rte_mem_event_callback_unregister', rte_mem_event_callback_unregister]
alias rte_ethdev_rte_mem_alloc_validator_register = ExternalFunction['rte_mem_alloc_validator_register', rte_mem_alloc_validator_register]
alias rte_ethdev_rte_mem_alloc_validator_unregister = ExternalFunction['rte_mem_alloc_validator_unregister', rte_mem_alloc_validator_unregister]
alias rte_ethdev_rte_memzero_explicit = ExternalFunction['rte_memzero_explicit', rte_memzero_explicit]
alias rte_ethdev_rte_memzone_max_set = ExternalFunction['rte_memzone_max_set', rte_memzone_max_set]
alias rte_ethdev_rte_memzone_max_get = ExternalFunction['rte_memzone_max_get', rte_memzone_max_get]
alias rte_ethdev_rte_memzone_reserve = ExternalFunction['rte_memzone_reserve', rte_memzone_reserve]
alias rte_ethdev_rte_memzone_reserve_aligned = ExternalFunction['rte_memzone_reserve_aligned', rte_memzone_reserve_aligned]
alias rte_ethdev_rte_memzone_reserve_bounded = ExternalFunction['rte_memzone_reserve_bounded', rte_memzone_reserve_bounded]
alias rte_ethdev_rte_memzone_free = ExternalFunction['rte_memzone_free', rte_memzone_free]
alias rte_ethdev_rte_memzone_lookup = ExternalFunction['rte_memzone_lookup', rte_memzone_lookup]
alias rte_ethdev_rte_memzone_dump = ExternalFunction['rte_memzone_dump', rte_memzone_dump]
alias rte_ethdev_rte_memzone_walk = ExternalFunction['rte_memzone_walk', rte_memzone_walk]
alias rte_ethdev_rte_ring_get_memsize_elem = ExternalFunction['rte_ring_get_memsize_elem', rte_ring_get_memsize_elem]
alias rte_ethdev_rte_ring_create_elem = ExternalFunction['rte_ring_create_elem', rte_ring_create_elem]
alias rte_ethdev_rte_ring_mp_enqueue_bulk_elem = ExternalFunction['rte_ring_mp_enqueue_bulk_elem', rte_ring_mp_enqueue_bulk_elem]
alias rte_ethdev_rte_ring_sp_enqueue_bulk_elem = ExternalFunction['rte_ring_sp_enqueue_bulk_elem', rte_ring_sp_enqueue_bulk_elem]
alias rte_ethdev_rte_ring_mp_hts_enqueue_bulk_elem = ExternalFunction['rte_ring_mp_hts_enqueue_bulk_elem', rte_ring_mp_hts_enqueue_bulk_elem]
alias rte_ethdev_rte_ring_mc_hts_dequeue_bulk_elem = ExternalFunction['rte_ring_mc_hts_dequeue_bulk_elem', rte_ring_mc_hts_dequeue_bulk_elem]
alias rte_ethdev_rte_ring_mp_hts_enqueue_burst_elem = ExternalFunction['rte_ring_mp_hts_enqueue_burst_elem', rte_ring_mp_hts_enqueue_burst_elem]
alias rte_ethdev_rte_ring_mc_hts_dequeue_burst_elem = ExternalFunction['rte_ring_mc_hts_dequeue_burst_elem', rte_ring_mc_hts_dequeue_burst_elem]
alias rte_ethdev_rte_ring_mp_hts_enqueue_bulk = ExternalFunction['rte_ring_mp_hts_enqueue_bulk', rte_ring_mp_hts_enqueue_bulk]
alias rte_ethdev_rte_ring_mc_hts_dequeue_bulk = ExternalFunction['rte_ring_mc_hts_dequeue_bulk', rte_ring_mc_hts_dequeue_bulk]
alias rte_ethdev_rte_ring_mp_hts_enqueue_burst = ExternalFunction['rte_ring_mp_hts_enqueue_burst', rte_ring_mp_hts_enqueue_burst]
alias rte_ethdev_rte_ring_mc_hts_dequeue_burst = ExternalFunction['rte_ring_mc_hts_dequeue_burst', rte_ring_mc_hts_dequeue_burst]
alias rte_ethdev_rte_ring_mp_rts_enqueue_bulk_elem = ExternalFunction['rte_ring_mp_rts_enqueue_bulk_elem', rte_ring_mp_rts_enqueue_bulk_elem]
alias rte_ethdev_rte_ring_mc_rts_dequeue_bulk_elem = ExternalFunction['rte_ring_mc_rts_dequeue_bulk_elem', rte_ring_mc_rts_dequeue_bulk_elem]
alias rte_ethdev_rte_ring_mp_rts_enqueue_burst_elem = ExternalFunction['rte_ring_mp_rts_enqueue_burst_elem', rte_ring_mp_rts_enqueue_burst_elem]
alias rte_ethdev_rte_ring_mc_rts_dequeue_burst_elem = ExternalFunction['rte_ring_mc_rts_dequeue_burst_elem', rte_ring_mc_rts_dequeue_burst_elem]
alias rte_ethdev_rte_ring_mp_rts_enqueue_bulk = ExternalFunction['rte_ring_mp_rts_enqueue_bulk', rte_ring_mp_rts_enqueue_bulk]
alias rte_ethdev_rte_ring_mc_rts_dequeue_bulk = ExternalFunction['rte_ring_mc_rts_dequeue_bulk', rte_ring_mc_rts_dequeue_bulk]
alias rte_ethdev_rte_ring_mp_rts_enqueue_burst = ExternalFunction['rte_ring_mp_rts_enqueue_burst', rte_ring_mp_rts_enqueue_burst]
alias rte_ethdev_rte_ring_mc_rts_dequeue_burst = ExternalFunction['rte_ring_mc_rts_dequeue_burst', rte_ring_mc_rts_dequeue_burst]
alias rte_ethdev_rte_ring_get_prod_htd_max = ExternalFunction['rte_ring_get_prod_htd_max', rte_ring_get_prod_htd_max]
alias rte_ethdev_rte_ring_set_prod_htd_max = ExternalFunction['rte_ring_set_prod_htd_max', rte_ring_set_prod_htd_max]
alias rte_ethdev_rte_ring_get_cons_htd_max = ExternalFunction['rte_ring_get_cons_htd_max', rte_ring_get_cons_htd_max]
alias rte_ethdev_rte_ring_set_cons_htd_max = ExternalFunction['rte_ring_set_cons_htd_max', rte_ring_set_cons_htd_max]
alias rte_ethdev_rte_ring_enqueue_bulk_elem = ExternalFunction['rte_ring_enqueue_bulk_elem', rte_ring_enqueue_bulk_elem]
alias rte_ethdev_rte_ring_mp_enqueue_elem = ExternalFunction['rte_ring_mp_enqueue_elem', rte_ring_mp_enqueue_elem]
alias rte_ethdev_rte_ring_sp_enqueue_elem = ExternalFunction['rte_ring_sp_enqueue_elem', rte_ring_sp_enqueue_elem]
alias rte_ethdev_rte_ring_enqueue_elem = ExternalFunction['rte_ring_enqueue_elem', rte_ring_enqueue_elem]
alias rte_ethdev_rte_ring_mc_dequeue_bulk_elem = ExternalFunction['rte_ring_mc_dequeue_bulk_elem', rte_ring_mc_dequeue_bulk_elem]
alias rte_ethdev_rte_ring_sc_dequeue_bulk_elem = ExternalFunction['rte_ring_sc_dequeue_bulk_elem', rte_ring_sc_dequeue_bulk_elem]
alias rte_ethdev_rte_ring_dequeue_bulk_elem = ExternalFunction['rte_ring_dequeue_bulk_elem', rte_ring_dequeue_bulk_elem]
alias rte_ethdev_rte_ring_mc_dequeue_elem = ExternalFunction['rte_ring_mc_dequeue_elem', rte_ring_mc_dequeue_elem]
alias rte_ethdev_rte_ring_sc_dequeue_elem = ExternalFunction['rte_ring_sc_dequeue_elem', rte_ring_sc_dequeue_elem]
alias rte_ethdev_rte_ring_dequeue_elem = ExternalFunction['rte_ring_dequeue_elem', rte_ring_dequeue_elem]
alias rte_ethdev_rte_ring_mp_enqueue_burst_elem = ExternalFunction['rte_ring_mp_enqueue_burst_elem', rte_ring_mp_enqueue_burst_elem]
alias rte_ethdev_rte_ring_sp_enqueue_burst_elem = ExternalFunction['rte_ring_sp_enqueue_burst_elem', rte_ring_sp_enqueue_burst_elem]
alias rte_ethdev_rte_ring_enqueue_burst_elem = ExternalFunction['rte_ring_enqueue_burst_elem', rte_ring_enqueue_burst_elem]
alias rte_ethdev_rte_ring_mc_dequeue_burst_elem = ExternalFunction['rte_ring_mc_dequeue_burst_elem', rte_ring_mc_dequeue_burst_elem]
alias rte_ethdev_rte_ring_sc_dequeue_burst_elem = ExternalFunction['rte_ring_sc_dequeue_burst_elem', rte_ring_sc_dequeue_burst_elem]
alias rte_ethdev_rte_ring_dequeue_burst_elem = ExternalFunction['rte_ring_dequeue_burst_elem', rte_ring_dequeue_burst_elem]
alias rte_ethdev_rte_ring_enqueue_bulk_elem_start = ExternalFunction['rte_ring_enqueue_bulk_elem_start', rte_ring_enqueue_bulk_elem_start]
alias rte_ethdev_rte_ring_enqueue_bulk_start = ExternalFunction['rte_ring_enqueue_bulk_start', rte_ring_enqueue_bulk_start]
alias rte_ethdev_rte_ring_enqueue_burst_elem_start = ExternalFunction['rte_ring_enqueue_burst_elem_start', rte_ring_enqueue_burst_elem_start]
alias rte_ethdev_rte_ring_enqueue_burst_start = ExternalFunction['rte_ring_enqueue_burst_start', rte_ring_enqueue_burst_start]
alias rte_ethdev_rte_ring_enqueue_elem_finish = ExternalFunction['rte_ring_enqueue_elem_finish', rte_ring_enqueue_elem_finish]
alias rte_ethdev_rte_ring_enqueue_finish = ExternalFunction['rte_ring_enqueue_finish', rte_ring_enqueue_finish]
alias rte_ethdev_rte_ring_dequeue_bulk_elem_start = ExternalFunction['rte_ring_dequeue_bulk_elem_start', rte_ring_dequeue_bulk_elem_start]
alias rte_ethdev_rte_ring_dequeue_bulk_start = ExternalFunction['rte_ring_dequeue_bulk_start', rte_ring_dequeue_bulk_start]
alias rte_ethdev_rte_ring_dequeue_burst_elem_start = ExternalFunction['rte_ring_dequeue_burst_elem_start', rte_ring_dequeue_burst_elem_start]
alias rte_ethdev_rte_ring_dequeue_burst_start = ExternalFunction['rte_ring_dequeue_burst_start', rte_ring_dequeue_burst_start]
alias rte_ethdev_rte_ring_dequeue_elem_finish = ExternalFunction['rte_ring_dequeue_elem_finish', rte_ring_dequeue_elem_finish]
alias rte_ethdev_rte_ring_dequeue_finish = ExternalFunction['rte_ring_dequeue_finish', rte_ring_dequeue_finish]
alias rte_ethdev_rte_ring_enqueue_zc_bulk_elem_start = ExternalFunction['rte_ring_enqueue_zc_bulk_elem_start', rte_ring_enqueue_zc_bulk_elem_start]
alias rte_ethdev_rte_ring_enqueue_zc_bulk_start = ExternalFunction['rte_ring_enqueue_zc_bulk_start', rte_ring_enqueue_zc_bulk_start]
alias rte_ethdev_rte_ring_enqueue_zc_burst_elem_start = ExternalFunction['rte_ring_enqueue_zc_burst_elem_start', rte_ring_enqueue_zc_burst_elem_start]
alias rte_ethdev_rte_ring_enqueue_zc_burst_start = ExternalFunction['rte_ring_enqueue_zc_burst_start', rte_ring_enqueue_zc_burst_start]
alias rte_ethdev_rte_ring_enqueue_zc_elem_finish = ExternalFunction['rte_ring_enqueue_zc_elem_finish', rte_ring_enqueue_zc_elem_finish]
alias rte_ethdev_rte_ring_enqueue_zc_finish = ExternalFunction['rte_ring_enqueue_zc_finish', rte_ring_enqueue_zc_finish]
alias rte_ethdev_rte_ring_dequeue_zc_bulk_elem_start = ExternalFunction['rte_ring_dequeue_zc_bulk_elem_start', rte_ring_dequeue_zc_bulk_elem_start]
alias rte_ethdev_rte_ring_dequeue_zc_bulk_start = ExternalFunction['rte_ring_dequeue_zc_bulk_start', rte_ring_dequeue_zc_bulk_start]
alias rte_ethdev_rte_ring_dequeue_zc_burst_elem_start = ExternalFunction['rte_ring_dequeue_zc_burst_elem_start', rte_ring_dequeue_zc_burst_elem_start]
alias rte_ethdev_rte_ring_dequeue_zc_burst_start = ExternalFunction['rte_ring_dequeue_zc_burst_start', rte_ring_dequeue_zc_burst_start]
alias rte_ethdev_rte_ring_dequeue_zc_elem_finish = ExternalFunction['rte_ring_dequeue_zc_elem_finish', rte_ring_dequeue_zc_elem_finish]
alias rte_ethdev_rte_ring_dequeue_zc_finish = ExternalFunction['rte_ring_dequeue_zc_finish', rte_ring_dequeue_zc_finish]
alias rte_ethdev_rte_ring_get_memsize = ExternalFunction['rte_ring_get_memsize', rte_ring_get_memsize]
alias rte_ethdev_rte_ring_init = ExternalFunction['rte_ring_init', rte_ring_init]
alias rte_ethdev_rte_ring_free = ExternalFunction['rte_ring_free', rte_ring_free]
alias rte_ethdev_rte_ring_create = ExternalFunction['rte_ring_create', rte_ring_create]
alias rte_ethdev_rte_ring_dump = ExternalFunction['rte_ring_dump', rte_ring_dump]
alias rte_ethdev_rte_ring_headtail_dump = ExternalFunction['rte_ring_headtail_dump', rte_ring_headtail_dump]
alias rte_ethdev_rte_ring_mp_enqueue_bulk = ExternalFunction['rte_ring_mp_enqueue_bulk', rte_ring_mp_enqueue_bulk]
alias rte_ethdev_rte_ring_sp_enqueue_bulk = ExternalFunction['rte_ring_sp_enqueue_bulk', rte_ring_sp_enqueue_bulk]
alias rte_ethdev_rte_ring_enqueue_bulk = ExternalFunction['rte_ring_enqueue_bulk', rte_ring_enqueue_bulk]
alias rte_ethdev_rte_ring_mp_enqueue = ExternalFunction['rte_ring_mp_enqueue', rte_ring_mp_enqueue]
alias rte_ethdev_rte_ring_sp_enqueue = ExternalFunction['rte_ring_sp_enqueue', rte_ring_sp_enqueue]
alias rte_ethdev_rte_ring_enqueue = ExternalFunction['rte_ring_enqueue', rte_ring_enqueue]
alias rte_ethdev_rte_ring_mc_dequeue_bulk = ExternalFunction['rte_ring_mc_dequeue_bulk', rte_ring_mc_dequeue_bulk]
alias rte_ethdev_rte_ring_sc_dequeue_bulk = ExternalFunction['rte_ring_sc_dequeue_bulk', rte_ring_sc_dequeue_bulk]
alias rte_ethdev_rte_ring_dequeue_bulk = ExternalFunction['rte_ring_dequeue_bulk', rte_ring_dequeue_bulk]
alias rte_ethdev_rte_ring_mc_dequeue = ExternalFunction['rte_ring_mc_dequeue', rte_ring_mc_dequeue]
alias rte_ethdev_rte_ring_sc_dequeue = ExternalFunction['rte_ring_sc_dequeue', rte_ring_sc_dequeue]
alias rte_ethdev_rte_ring_dequeue = ExternalFunction['rte_ring_dequeue', rte_ring_dequeue]
alias rte_ethdev_rte_ring_reset = ExternalFunction['rte_ring_reset', rte_ring_reset]
alias rte_ethdev_rte_ring_count = ExternalFunction['rte_ring_count', rte_ring_count]
alias rte_ethdev_rte_ring_free_count = ExternalFunction['rte_ring_free_count', rte_ring_free_count]
alias rte_ethdev_rte_ring_full = ExternalFunction['rte_ring_full', rte_ring_full]
alias rte_ethdev_rte_ring_empty = ExternalFunction['rte_ring_empty', rte_ring_empty]
alias rte_ethdev_rte_ring_get_size = ExternalFunction['rte_ring_get_size', rte_ring_get_size]
alias rte_ethdev_rte_ring_get_capacity = ExternalFunction['rte_ring_get_capacity', rte_ring_get_capacity]
alias rte_ethdev_rte_ring_get_prod_sync_type = ExternalFunction['rte_ring_get_prod_sync_type', rte_ring_get_prod_sync_type]
alias rte_ethdev_rte_ring_is_prod_single = ExternalFunction['rte_ring_is_prod_single', rte_ring_is_prod_single]
alias rte_ethdev_rte_ring_get_cons_sync_type = ExternalFunction['rte_ring_get_cons_sync_type', rte_ring_get_cons_sync_type]
alias rte_ethdev_rte_ring_is_cons_single = ExternalFunction['rte_ring_is_cons_single', rte_ring_is_cons_single]
alias rte_ethdev_rte_ring_list_dump = ExternalFunction['rte_ring_list_dump', rte_ring_list_dump]
alias rte_ethdev_rte_ring_lookup = ExternalFunction['rte_ring_lookup', rte_ring_lookup]
alias rte_ethdev_rte_ring_mp_enqueue_burst = ExternalFunction['rte_ring_mp_enqueue_burst', rte_ring_mp_enqueue_burst]
alias rte_ethdev_rte_ring_sp_enqueue_burst = ExternalFunction['rte_ring_sp_enqueue_burst', rte_ring_sp_enqueue_burst]
alias rte_ethdev_rte_ring_enqueue_burst = ExternalFunction['rte_ring_enqueue_burst', rte_ring_enqueue_burst]
alias rte_ethdev_rte_ring_mc_dequeue_burst = ExternalFunction['rte_ring_mc_dequeue_burst', rte_ring_mc_dequeue_burst]
alias rte_ethdev_rte_ring_sc_dequeue_burst = ExternalFunction['rte_ring_sc_dequeue_burst', rte_ring_sc_dequeue_burst]
alias rte_ethdev_rte_ring_dequeue_burst = ExternalFunction['rte_ring_dequeue_burst', rte_ring_dequeue_burst]
alias rte_ethdev_rte_mov16 = ExternalFunction['rte_mov16', rte_mov16]
alias rte_ethdev_rte_mov32 = ExternalFunction['rte_mov32', rte_mov32]
alias rte_ethdev_rte_mov64 = ExternalFunction['rte_mov64', rte_mov64]
alias rte_ethdev_rte_mov128 = ExternalFunction['rte_mov128', rte_mov128]
alias rte_ethdev_rte_mov256 = ExternalFunction['rte_mov256', rte_mov256]
alias rte_ethdev_rte_mov48 = ExternalFunction['rte_mov48', rte_mov48]
alias rte_ethdev_rte_mempool_trace_ops_dequeue_bulk = ExternalFunction['rte_mempool_trace_ops_dequeue_bulk', rte_mempool_trace_ops_dequeue_bulk]
alias rte_ethdev_rte_mempool_trace_ops_dequeue_contig_blocks = ExternalFunction['rte_mempool_trace_ops_dequeue_contig_blocks', rte_mempool_trace_ops_dequeue_contig_blocks]
alias rte_ethdev_rte_mempool_trace_ops_enqueue_bulk = ExternalFunction['rte_mempool_trace_ops_enqueue_bulk', rte_mempool_trace_ops_enqueue_bulk]
alias rte_ethdev_rte_mempool_trace_generic_put = ExternalFunction['rte_mempool_trace_generic_put', rte_mempool_trace_generic_put]
alias rte_ethdev_rte_mempool_trace_put_bulk = ExternalFunction['rte_mempool_trace_put_bulk', rte_mempool_trace_put_bulk]
alias rte_ethdev_rte_mempool_trace_generic_get = ExternalFunction['rte_mempool_trace_generic_get', rte_mempool_trace_generic_get]
alias rte_ethdev_rte_mempool_trace_get_bulk = ExternalFunction['rte_mempool_trace_get_bulk', rte_mempool_trace_get_bulk]
alias rte_ethdev_rte_mempool_trace_get_contig_blocks = ExternalFunction['rte_mempool_trace_get_contig_blocks', rte_mempool_trace_get_contig_blocks]
alias rte_ethdev_rte_mempool_trace_default_cache = ExternalFunction['rte_mempool_trace_default_cache', rte_mempool_trace_default_cache]
alias rte_ethdev_rte_mempool_trace_cache_flush = ExternalFunction['rte_mempool_trace_cache_flush', rte_mempool_trace_cache_flush]
alias rte_ethdev_rte_mempool_get_header = ExternalFunction['rte_mempool_get_header', rte_mempool_get_header]
alias rte_ethdev_rte_mempool_from_obj = ExternalFunction['rte_mempool_from_obj', rte_mempool_from_obj]
alias rte_ethdev_rte_mempool_get_trailer = ExternalFunction['rte_mempool_get_trailer', rte_mempool_get_trailer]
alias rte_ethdev_rte_mempool_check_cookies = ExternalFunction['rte_mempool_check_cookies', rte_mempool_check_cookies]
alias rte_ethdev_rte_mempool_contig_blocks_check_cookies = ExternalFunction['rte_mempool_contig_blocks_check_cookies', rte_mempool_contig_blocks_check_cookies]
alias rte_ethdev_rte_mempool_op_calc_mem_size_helper = ExternalFunction['rte_mempool_op_calc_mem_size_helper', rte_mempool_op_calc_mem_size_helper]
alias rte_ethdev_rte_mempool_op_calc_mem_size_default = ExternalFunction['rte_mempool_op_calc_mem_size_default', rte_mempool_op_calc_mem_size_default]
alias rte_ethdev_rte_mempool_op_populate_helper = ExternalFunction['rte_mempool_op_populate_helper', rte_mempool_op_populate_helper]
alias rte_ethdev_rte_mempool_op_populate_default = ExternalFunction['rte_mempool_op_populate_default', rte_mempool_op_populate_default]
alias rte_ethdev_rte_mempool_get_ops = ExternalFunction['rte_mempool_get_ops', rte_mempool_get_ops]
alias rte_ethdev_rte_mempool_ops_alloc = ExternalFunction['rte_mempool_ops_alloc', rte_mempool_ops_alloc]
alias rte_ethdev_rte_mempool_ops_dequeue_bulk = ExternalFunction['rte_mempool_ops_dequeue_bulk', rte_mempool_ops_dequeue_bulk]
alias rte_ethdev_rte_mempool_ops_dequeue_contig_blocks = ExternalFunction['rte_mempool_ops_dequeue_contig_blocks', rte_mempool_ops_dequeue_contig_blocks]
alias rte_ethdev_rte_mempool_ops_enqueue_bulk = ExternalFunction['rte_mempool_ops_enqueue_bulk', rte_mempool_ops_enqueue_bulk]
alias rte_ethdev_rte_mempool_ops_get_count = ExternalFunction['rte_mempool_ops_get_count', rte_mempool_ops_get_count]
alias rte_ethdev_rte_mempool_ops_calc_mem_size = ExternalFunction['rte_mempool_ops_calc_mem_size', rte_mempool_ops_calc_mem_size]
alias rte_ethdev_rte_mempool_ops_populate = ExternalFunction['rte_mempool_ops_populate', rte_mempool_ops_populate]
alias rte_ethdev_rte_mempool_ops_get_info = ExternalFunction['rte_mempool_ops_get_info', rte_mempool_ops_get_info]
alias rte_ethdev_rte_mempool_ops_free = ExternalFunction['rte_mempool_ops_free', rte_mempool_ops_free]
alias rte_ethdev_rte_mempool_set_ops_byname = ExternalFunction['rte_mempool_set_ops_byname', rte_mempool_set_ops_byname]
alias rte_ethdev_rte_mempool_register_ops = ExternalFunction['rte_mempool_register_ops', rte_mempool_register_ops]
alias rte_ethdev_rte_mempool_free = ExternalFunction['rte_mempool_free', rte_mempool_free]
alias rte_ethdev_rte_mempool_create = ExternalFunction['rte_mempool_create', rte_mempool_create]
alias rte_ethdev_rte_mempool_create_empty = ExternalFunction['rte_mempool_create_empty', rte_mempool_create_empty]
alias rte_ethdev_rte_mempool_populate_iova = ExternalFunction['rte_mempool_populate_iova', rte_mempool_populate_iova]
alias rte_ethdev_rte_mempool_populate_virt = ExternalFunction['rte_mempool_populate_virt', rte_mempool_populate_virt]
alias rte_ethdev_rte_mempool_populate_default = ExternalFunction['rte_mempool_populate_default', rte_mempool_populate_default]
alias rte_ethdev_rte_mempool_populate_anon = ExternalFunction['rte_mempool_populate_anon', rte_mempool_populate_anon]
alias rte_ethdev_rte_mempool_obj_iter = ExternalFunction['rte_mempool_obj_iter', rte_mempool_obj_iter]
alias rte_ethdev_rte_mempool_mem_iter = ExternalFunction['rte_mempool_mem_iter', rte_mempool_mem_iter]
alias rte_ethdev_rte_mempool_dump = ExternalFunction['rte_mempool_dump', rte_mempool_dump]
alias rte_ethdev_rte_mempool_cache_create = ExternalFunction['rte_mempool_cache_create', rte_mempool_cache_create]
alias rte_ethdev_rte_mempool_cache_free = ExternalFunction['rte_mempool_cache_free', rte_mempool_cache_free]
alias rte_ethdev_rte_mempool_default_cache = ExternalFunction['rte_mempool_default_cache', rte_mempool_default_cache]
alias rte_ethdev_rte_mempool_cache_flush = ExternalFunction['rte_mempool_cache_flush', rte_mempool_cache_flush]
alias rte_ethdev_rte_mempool_do_generic_put = ExternalFunction['rte_mempool_do_generic_put', rte_mempool_do_generic_put]
alias rte_ethdev_rte_mempool_generic_put = ExternalFunction['rte_mempool_generic_put', rte_mempool_generic_put]
alias rte_ethdev_rte_mempool_put_bulk = ExternalFunction['rte_mempool_put_bulk', rte_mempool_put_bulk]
alias rte_ethdev_rte_mempool_put = ExternalFunction['rte_mempool_put', rte_mempool_put]
alias rte_ethdev_rte_mempool_do_generic_get = ExternalFunction['rte_mempool_do_generic_get', rte_mempool_do_generic_get]
alias rte_ethdev_rte_mempool_generic_get = ExternalFunction['rte_mempool_generic_get', rte_mempool_generic_get]
alias rte_ethdev_rte_mempool_get_bulk = ExternalFunction['rte_mempool_get_bulk', rte_mempool_get_bulk]
alias rte_ethdev_rte_mempool_get = ExternalFunction['rte_mempool_get', rte_mempool_get]
alias rte_ethdev_rte_mempool_get_contig_blocks = ExternalFunction['rte_mempool_get_contig_blocks', rte_mempool_get_contig_blocks]
alias rte_ethdev_rte_mempool_avail_count = ExternalFunction['rte_mempool_avail_count', rte_mempool_avail_count]
alias rte_ethdev_rte_mempool_in_use_count = ExternalFunction['rte_mempool_in_use_count', rte_mempool_in_use_count]
alias rte_ethdev_rte_mempool_full = ExternalFunction['rte_mempool_full', rte_mempool_full]
alias rte_ethdev_rte_mempool_empty = ExternalFunction['rte_mempool_empty', rte_mempool_empty]
alias rte_ethdev_rte_mempool_virt2iova = ExternalFunction['rte_mempool_virt2iova', rte_mempool_virt2iova]
alias rte_ethdev_rte_mempool_audit = ExternalFunction['rte_mempool_audit', rte_mempool_audit]
alias rte_ethdev_rte_mempool_get_priv = ExternalFunction['rte_mempool_get_priv', rte_mempool_get_priv]
alias rte_ethdev_rte_mempool_list_dump = ExternalFunction['rte_mempool_list_dump', rte_mempool_list_dump]
alias rte_ethdev_rte_mempool_lookup = ExternalFunction['rte_mempool_lookup', rte_mempool_lookup]
alias rte_ethdev_rte_mempool_calc_obj_size = ExternalFunction['rte_mempool_calc_obj_size', rte_mempool_calc_obj_size]
alias rte_ethdev_rte_mempool_walk = ExternalFunction['rte_mempool_walk', rte_mempool_walk]
alias rte_ethdev_rte_mempool_get_mem_range = ExternalFunction['rte_mempool_get_mem_range', rte_mempool_get_mem_range]
alias rte_ethdev_rte_mempool_get_obj_alignment = ExternalFunction['rte_mempool_get_obj_alignment', rte_mempool_get_obj_alignment]
alias rte_ethdev_rte_mempool_get_page_size = ExternalFunction['rte_mempool_get_page_size', rte_mempool_get_page_size]
alias rte_ethdev_rte_mempool_event_callback_register = ExternalFunction['rte_mempool_event_callback_register', rte_mempool_event_callback_register]
alias rte_ethdev_rte_mempool_event_callback_unregister = ExternalFunction['rte_mempool_event_callback_unregister', rte_mempool_event_callback_unregister]
alias rte_ethdev_rte_prefetch0 = ExternalFunction['rte_prefetch0', rte_prefetch0]
alias rte_ethdev_rte_prefetch1 = ExternalFunction['rte_prefetch1', rte_prefetch1]
alias rte_ethdev_rte_prefetch2 = ExternalFunction['rte_prefetch2', rte_prefetch2]
alias rte_ethdev_rte_prefetch_non_temporal = ExternalFunction['rte_prefetch_non_temporal', rte_prefetch_non_temporal]
alias rte_ethdev_rte_prefetch0_write = ExternalFunction['rte_prefetch0_write', rte_prefetch0_write]
alias rte_ethdev_rte_prefetch1_write = ExternalFunction['rte_prefetch1_write', rte_prefetch1_write]
alias rte_ethdev_rte_prefetch2_write = ExternalFunction['rte_prefetch2_write', rte_prefetch2_write]
alias rte_ethdev_rte_cldemote = ExternalFunction['rte_cldemote', rte_cldemote]
alias rte_ethdev_rte_get_ptype_l2_name = ExternalFunction['rte_get_ptype_l2_name', rte_get_ptype_l2_name]
alias rte_ethdev_rte_get_ptype_l3_name = ExternalFunction['rte_get_ptype_l3_name', rte_get_ptype_l3_name]
alias rte_ethdev_rte_get_ptype_l4_name = ExternalFunction['rte_get_ptype_l4_name', rte_get_ptype_l4_name]
alias rte_ethdev_rte_get_ptype_tunnel_name = ExternalFunction['rte_get_ptype_tunnel_name', rte_get_ptype_tunnel_name]
alias rte_ethdev_rte_get_ptype_inner_l2_name = ExternalFunction['rte_get_ptype_inner_l2_name', rte_get_ptype_inner_l2_name]
alias rte_ethdev_rte_get_ptype_inner_l3_name = ExternalFunction['rte_get_ptype_inner_l3_name', rte_get_ptype_inner_l3_name]
alias rte_ethdev_rte_get_ptype_inner_l4_name = ExternalFunction['rte_get_ptype_inner_l4_name', rte_get_ptype_inner_l4_name]
alias rte_ethdev_rte_get_ptype_name = ExternalFunction['rte_get_ptype_name', rte_get_ptype_name]
alias rte_ethdev_rte_constant_bswap16 = ExternalFunction['rte_constant_bswap16', rte_constant_bswap16]
alias rte_ethdev_rte_constant_bswap32 = ExternalFunction['rte_constant_bswap32', rte_constant_bswap32]
alias rte_ethdev_rte_constant_bswap64 = ExternalFunction['rte_constant_bswap64', rte_constant_bswap64]
alias rte_ethdev_rte_get_rx_ol_flag_name = ExternalFunction['rte_get_rx_ol_flag_name', rte_get_rx_ol_flag_name]
alias rte_ethdev_rte_get_rx_ol_flag_list = ExternalFunction['rte_get_rx_ol_flag_list', rte_get_rx_ol_flag_list]
alias rte_ethdev_rte_get_tx_ol_flag_name = ExternalFunction['rte_get_tx_ol_flag_name', rte_get_tx_ol_flag_name]
alias rte_ethdev_rte_get_tx_ol_flag_list = ExternalFunction['rte_get_tx_ol_flag_list', rte_get_tx_ol_flag_list]
alias rte_ethdev_rte_mbuf_prefetch_part1 = ExternalFunction['rte_mbuf_prefetch_part1', rte_mbuf_prefetch_part1]
alias rte_ethdev_rte_mbuf_prefetch_part2 = ExternalFunction['rte_mbuf_prefetch_part2', rte_mbuf_prefetch_part2]
alias rte_ethdev_rte_pktmbuf_priv_size = ExternalFunction['rte_pktmbuf_priv_size', rte_pktmbuf_priv_size]
alias rte_ethdev_rte_mbuf_iova_get = ExternalFunction['rte_mbuf_iova_get', rte_mbuf_iova_get]
alias rte_ethdev_rte_mbuf_iova_set = ExternalFunction['rte_mbuf_iova_set', rte_mbuf_iova_set]
alias rte_ethdev_rte_mbuf_data_iova = ExternalFunction['rte_mbuf_data_iova', rte_mbuf_data_iova]
alias rte_ethdev_rte_mbuf_data_iova_default = ExternalFunction['rte_mbuf_data_iova_default', rte_mbuf_data_iova_default]
alias rte_ethdev_rte_mbuf_from_indirect = ExternalFunction['rte_mbuf_from_indirect', rte_mbuf_from_indirect]
alias rte_ethdev_rte_mbuf_buf_addr = ExternalFunction['rte_mbuf_buf_addr', rte_mbuf_buf_addr]
alias rte_ethdev_rte_mbuf_data_addr_default = ExternalFunction['rte_mbuf_data_addr_default', rte_mbuf_data_addr_default]
alias rte_ethdev_rte_mbuf_to_baddr = ExternalFunction['rte_mbuf_to_baddr', rte_mbuf_to_baddr]
alias rte_ethdev_rte_mbuf_to_priv = ExternalFunction['rte_mbuf_to_priv', rte_mbuf_to_priv]
alias rte_ethdev_rte_pktmbuf_priv_flags = ExternalFunction['rte_pktmbuf_priv_flags', rte_pktmbuf_priv_flags]
alias rte_ethdev_rte_mbuf_refcnt_read = ExternalFunction['rte_mbuf_refcnt_read', rte_mbuf_refcnt_read]
alias rte_ethdev_rte_mbuf_refcnt_set = ExternalFunction['rte_mbuf_refcnt_set', rte_mbuf_refcnt_set]
alias rte_ethdev_rte_mbuf_refcnt_update = ExternalFunction['rte_mbuf_refcnt_update', rte_mbuf_refcnt_update]
alias rte_ethdev_rte_mbuf_ext_refcnt_read = ExternalFunction['rte_mbuf_ext_refcnt_read', rte_mbuf_ext_refcnt_read]
alias rte_ethdev_rte_mbuf_ext_refcnt_set = ExternalFunction['rte_mbuf_ext_refcnt_set', rte_mbuf_ext_refcnt_set]
alias rte_ethdev_rte_mbuf_ext_refcnt_update = ExternalFunction['rte_mbuf_ext_refcnt_update', rte_mbuf_ext_refcnt_update]
alias rte_ethdev_rte_mbuf_sanity_check = ExternalFunction['rte_mbuf_sanity_check', rte_mbuf_sanity_check]
alias rte_ethdev_rte_mbuf_check = ExternalFunction['rte_mbuf_check', rte_mbuf_check]
alias rte_ethdev_rte_mbuf_raw_alloc = ExternalFunction['rte_mbuf_raw_alloc', rte_mbuf_raw_alloc]
alias rte_ethdev_rte_mbuf_raw_alloc_bulk = ExternalFunction['rte_mbuf_raw_alloc_bulk', rte_mbuf_raw_alloc_bulk]
alias rte_ethdev_rte_mbuf_raw_free = ExternalFunction['rte_mbuf_raw_free', rte_mbuf_raw_free]
alias rte_ethdev_rte_mbuf_raw_free_bulk = ExternalFunction['rte_mbuf_raw_free_bulk', rte_mbuf_raw_free_bulk]
alias rte_ethdev_rte_pktmbuf_init = ExternalFunction['rte_pktmbuf_init', rte_pktmbuf_init]
alias rte_ethdev_rte_pktmbuf_pool_init = ExternalFunction['rte_pktmbuf_pool_init', rte_pktmbuf_pool_init]
alias rte_ethdev_rte_pktmbuf_pool_create = ExternalFunction['rte_pktmbuf_pool_create', rte_pktmbuf_pool_create]
alias rte_ethdev_rte_pktmbuf_pool_create_by_ops = ExternalFunction['rte_pktmbuf_pool_create_by_ops', rte_pktmbuf_pool_create_by_ops]
alias rte_ethdev_rte_pktmbuf_pool_create_extbuf = ExternalFunction['rte_pktmbuf_pool_create_extbuf', rte_pktmbuf_pool_create_extbuf]
alias rte_ethdev_rte_pktmbuf_data_room_size = ExternalFunction['rte_pktmbuf_data_room_size', rte_pktmbuf_data_room_size]
alias rte_ethdev_rte_pktmbuf_reset_headroom = ExternalFunction['rte_pktmbuf_reset_headroom', rte_pktmbuf_reset_headroom]
alias rte_ethdev_rte_pktmbuf_reset = ExternalFunction['rte_pktmbuf_reset', rte_pktmbuf_reset]
alias rte_ethdev_rte_pktmbuf_alloc = ExternalFunction['rte_pktmbuf_alloc', rte_pktmbuf_alloc]
alias rte_ethdev_rte_pktmbuf_alloc_bulk = ExternalFunction['rte_pktmbuf_alloc_bulk', rte_pktmbuf_alloc_bulk]
alias rte_ethdev_rte_pktmbuf_ext_shinfo_init_helper = ExternalFunction['rte_pktmbuf_ext_shinfo_init_helper', rte_pktmbuf_ext_shinfo_init_helper]
alias rte_ethdev_rte_pktmbuf_attach_extbuf = ExternalFunction['rte_pktmbuf_attach_extbuf', rte_pktmbuf_attach_extbuf]
alias rte_ethdev_rte_mbuf_dynfield_copy = ExternalFunction['rte_mbuf_dynfield_copy', rte_mbuf_dynfield_copy]
alias rte_ethdev_rte_pktmbuf_attach = ExternalFunction['rte_pktmbuf_attach', rte_pktmbuf_attach]
alias rte_ethdev_rte_pktmbuf_detach = ExternalFunction['rte_pktmbuf_detach', rte_pktmbuf_detach]
alias rte_ethdev_rte_pktmbuf_prefree_seg = ExternalFunction['rte_pktmbuf_prefree_seg', rte_pktmbuf_prefree_seg]
alias rte_ethdev_rte_pktmbuf_free_seg = ExternalFunction['rte_pktmbuf_free_seg', rte_pktmbuf_free_seg]
alias rte_ethdev_rte_pktmbuf_free = ExternalFunction['rte_pktmbuf_free', rte_pktmbuf_free]
alias rte_ethdev_rte_pktmbuf_free_bulk = ExternalFunction['rte_pktmbuf_free_bulk', rte_pktmbuf_free_bulk]
alias rte_ethdev_rte_pktmbuf_clone = ExternalFunction['rte_pktmbuf_clone', rte_pktmbuf_clone]
alias rte_ethdev_rte_pktmbuf_copy = ExternalFunction['rte_pktmbuf_copy', rte_pktmbuf_copy]
alias rte_ethdev_rte_pktmbuf_refcnt_update = ExternalFunction['rte_pktmbuf_refcnt_update', rte_pktmbuf_refcnt_update]
alias rte_ethdev_rte_pktmbuf_headroom = ExternalFunction['rte_pktmbuf_headroom', rte_pktmbuf_headroom]
alias rte_ethdev_rte_pktmbuf_tailroom = ExternalFunction['rte_pktmbuf_tailroom', rte_pktmbuf_tailroom]
alias rte_ethdev_rte_pktmbuf_lastseg = ExternalFunction['rte_pktmbuf_lastseg', rte_pktmbuf_lastseg]
alias rte_ethdev_rte_pktmbuf_prepend = ExternalFunction['rte_pktmbuf_prepend', rte_pktmbuf_prepend]
alias rte_ethdev_rte_pktmbuf_append = ExternalFunction['rte_pktmbuf_append', rte_pktmbuf_append]
alias rte_ethdev_rte_pktmbuf_adj = ExternalFunction['rte_pktmbuf_adj', rte_pktmbuf_adj]
alias rte_ethdev_rte_pktmbuf_trim = ExternalFunction['rte_pktmbuf_trim', rte_pktmbuf_trim]
alias rte_ethdev_rte_pktmbuf_is_contiguous = ExternalFunction['rte_pktmbuf_is_contiguous', rte_pktmbuf_is_contiguous]
alias rte_ethdev_rte_pktmbuf_read = ExternalFunction['rte_pktmbuf_read', rte_pktmbuf_read]
alias rte_ethdev_rte_pktmbuf_chain = ExternalFunction['rte_pktmbuf_chain', rte_pktmbuf_chain]
alias rte_ethdev_rte_mbuf_tx_offload = ExternalFunction['rte_mbuf_tx_offload', rte_mbuf_tx_offload]
alias rte_ethdev_rte_validate_tx_offload = ExternalFunction['rte_validate_tx_offload', rte_validate_tx_offload]
alias rte_ethdev_rte_pktmbuf_linearize = ExternalFunction['rte_pktmbuf_linearize', rte_pktmbuf_linearize]
alias rte_ethdev_rte_pktmbuf_dump = ExternalFunction['rte_pktmbuf_dump', rte_pktmbuf_dump]
alias rte_ethdev_rte_mbuf_sched_queue_get = ExternalFunction['rte_mbuf_sched_queue_get', rte_mbuf_sched_queue_get]
alias rte_ethdev_rte_mbuf_sched_traffic_class_get = ExternalFunction['rte_mbuf_sched_traffic_class_get', rte_mbuf_sched_traffic_class_get]
alias rte_ethdev_rte_mbuf_sched_color_get = ExternalFunction['rte_mbuf_sched_color_get', rte_mbuf_sched_color_get]
alias rte_ethdev_rte_mbuf_sched_get = ExternalFunction['rte_mbuf_sched_get', rte_mbuf_sched_get]
alias rte_ethdev_rte_mbuf_sched_queue_set = ExternalFunction['rte_mbuf_sched_queue_set', rte_mbuf_sched_queue_set]
alias rte_ethdev_rte_mbuf_sched_traffic_class_set = ExternalFunction['rte_mbuf_sched_traffic_class_set', rte_mbuf_sched_traffic_class_set]
alias rte_ethdev_rte_mbuf_sched_color_set = ExternalFunction['rte_mbuf_sched_color_set', rte_mbuf_sched_color_set]
alias rte_ethdev_rte_mbuf_sched_set = ExternalFunction['rte_mbuf_sched_set', rte_mbuf_sched_set]
alias rte_ethdev_rte_is_same_ether_addr = ExternalFunction['rte_is_same_ether_addr', rte_is_same_ether_addr]
alias rte_ethdev_rte_is_zero_ether_addr = ExternalFunction['rte_is_zero_ether_addr', rte_is_zero_ether_addr]
alias rte_ethdev_rte_is_unicast_ether_addr = ExternalFunction['rte_is_unicast_ether_addr', rte_is_unicast_ether_addr]
alias rte_ethdev_rte_is_multicast_ether_addr = ExternalFunction['rte_is_multicast_ether_addr', rte_is_multicast_ether_addr]
alias rte_ethdev_rte_is_broadcast_ether_addr = ExternalFunction['rte_is_broadcast_ether_addr', rte_is_broadcast_ether_addr]
alias rte_ethdev_rte_is_universal_ether_addr = ExternalFunction['rte_is_universal_ether_addr', rte_is_universal_ether_addr]
alias rte_ethdev_rte_is_local_admin_ether_addr = ExternalFunction['rte_is_local_admin_ether_addr', rte_is_local_admin_ether_addr]
alias rte_ethdev_rte_is_valid_assigned_ether_addr = ExternalFunction['rte_is_valid_assigned_ether_addr', rte_is_valid_assigned_ether_addr]
alias rte_ethdev_rte_eth_random_addr = ExternalFunction['rte_eth_random_addr', rte_eth_random_addr]
alias rte_ethdev_rte_ether_addr_copy = ExternalFunction['rte_ether_addr_copy', rte_ether_addr_copy]
alias rte_ethdev_rte_ether_format_addr = ExternalFunction['rte_ether_format_addr', rte_ether_format_addr]
alias rte_ethdev_rte_ether_unformat_addr = ExternalFunction['rte_ether_unformat_addr', rte_ether_unformat_addr]
alias rte_ethdev_rte_vlan_strip = ExternalFunction['rte_vlan_strip', rte_vlan_strip]
alias rte_ethdev_rte_vlan_insert = ExternalFunction['rte_vlan_insert', rte_vlan_insert]
alias rte_ethdev_rte_net_make_rarp_packet = ExternalFunction['rte_net_make_rarp_packet', rte_net_make_rarp_packet]
alias rte_ethdev_select = ExternalFunction['select', select]
alias rte_ethdev_pselect = ExternalFunction['pselect', pselect]
alias rte_ethdev_socket = ExternalFunction['socket', socket]
alias rte_ethdev_socketpair = ExternalFunction['socketpair', socketpair]
alias rte_ethdev_bind = ExternalFunction['bind', bind]
alias rte_ethdev_getsockname = ExternalFunction['getsockname', getsockname]
alias rte_ethdev_connect = ExternalFunction['connect', connect]
alias rte_ethdev_getpeername = ExternalFunction['getpeername', getpeername]
alias rte_ethdev_send = ExternalFunction['send', send]
alias rte_ethdev_recv = ExternalFunction['recv', recv]
alias rte_ethdev_sendto = ExternalFunction['sendto', sendto]
alias rte_ethdev_recvfrom = ExternalFunction['recvfrom', recvfrom]
alias rte_ethdev_sendmsg = ExternalFunction['sendmsg', sendmsg]
alias rte_ethdev_recvmsg = ExternalFunction['recvmsg', recvmsg]
alias rte_ethdev_getsockopt = ExternalFunction['getsockopt', getsockopt]
alias rte_ethdev_setsockopt = ExternalFunction['setsockopt', setsockopt]
alias rte_ethdev_listen = ExternalFunction['listen', listen]
alias rte_ethdev_accept = ExternalFunction['accept', accept]
alias rte_ethdev_shutdown = ExternalFunction['shutdown', shutdown]
alias rte_ethdev_sockatmark = ExternalFunction['sockatmark', sockatmark]
alias rte_ethdev_isfdtype = ExternalFunction['isfdtype', isfdtype]
alias rte_ethdev_ntohl = ExternalFunction['ntohl', ntohl]
alias rte_ethdev_ntohs = ExternalFunction['ntohs', ntohs]
alias rte_ethdev_htonl = ExternalFunction['htonl', htonl]
alias rte_ethdev_htons = ExternalFunction['htons', htons]
alias rte_ethdev_bindresvport = ExternalFunction['bindresvport', bindresvport]
alias rte_ethdev_bindresvport6 = ExternalFunction['bindresvport6', bindresvport6]
alias rte_ethdev_inet_addr = ExternalFunction['inet_addr', inet_addr]
alias rte_ethdev_inet_lnaof = ExternalFunction['inet_lnaof', inet_lnaof]
alias rte_ethdev_inet_makeaddr = ExternalFunction['inet_makeaddr', inet_makeaddr]
alias rte_ethdev_inet_netof = ExternalFunction['inet_netof', inet_netof]
alias rte_ethdev_inet_network = ExternalFunction['inet_network', inet_network]
alias rte_ethdev_inet_ntoa = ExternalFunction['inet_ntoa', inet_ntoa]
alias rte_ethdev_inet_pton = ExternalFunction['inet_pton', inet_pton]
alias rte_ethdev_inet_ntop = ExternalFunction['inet_ntop', inet_ntop]
alias rte_ethdev_inet_aton = ExternalFunction['inet_aton', inet_aton]
alias rte_ethdev_inet_neta = ExternalFunction['inet_neta', inet_neta]
alias rte_ethdev_inet_net_ntop = ExternalFunction['inet_net_ntop', inet_net_ntop]
alias rte_ethdev_inet_net_pton = ExternalFunction['inet_net_pton', inet_net_pton]
alias rte_ethdev_inet_nsap_addr = ExternalFunction['inet_nsap_addr', inet_nsap_addr]
alias rte_ethdev_inet_nsap_ntoa = ExternalFunction['inet_nsap_ntoa', inet_nsap_ntoa]
alias rte_ethdev_rte_raw_cksum = ExternalFunction['rte_raw_cksum', rte_raw_cksum]
alias rte_ethdev_rte_raw_cksum_mbuf = ExternalFunction['rte_raw_cksum_mbuf', rte_raw_cksum_mbuf]
alias rte_ethdev_rte_ipv4_hdr_len = ExternalFunction['rte_ipv4_hdr_len', rte_ipv4_hdr_len]
alias rte_ethdev_rte_ipv4_cksum = ExternalFunction['rte_ipv4_cksum', rte_ipv4_cksum]
alias rte_ethdev_rte_ipv4_cksum_simple = ExternalFunction['rte_ipv4_cksum_simple', rte_ipv4_cksum_simple]
alias rte_ethdev_rte_ipv4_phdr_cksum = ExternalFunction['rte_ipv4_phdr_cksum', rte_ipv4_phdr_cksum]
alias rte_ethdev_rte_ipv4_udptcp_cksum = ExternalFunction['rte_ipv4_udptcp_cksum', rte_ipv4_udptcp_cksum]
alias rte_ethdev_rte_ipv4_udptcp_cksum_mbuf = ExternalFunction['rte_ipv4_udptcp_cksum_mbuf', rte_ipv4_udptcp_cksum_mbuf]
alias rte_ethdev_rte_ipv4_udptcp_cksum_verify = ExternalFunction['rte_ipv4_udptcp_cksum_verify', rte_ipv4_udptcp_cksum_verify]
alias rte_ethdev_rte_ipv4_udptcp_cksum_mbuf_verify = ExternalFunction['rte_ipv4_udptcp_cksum_mbuf_verify', rte_ipv4_udptcp_cksum_mbuf_verify]
alias rte_ethdev_rte_ipv6_addr_eq = ExternalFunction['rte_ipv6_addr_eq', rte_ipv6_addr_eq]
alias rte_ethdev_rte_ipv6_addr_mask = ExternalFunction['rte_ipv6_addr_mask', rte_ipv6_addr_mask]
alias rte_ethdev_rte_ipv6_addr_eq_prefix = ExternalFunction['rte_ipv6_addr_eq_prefix', rte_ipv6_addr_eq_prefix]
alias rte_ethdev_rte_ipv6_mask_depth = ExternalFunction['rte_ipv6_mask_depth', rte_ipv6_mask_depth]
alias rte_ethdev_rte_ipv6_addr_is_unspec = ExternalFunction['rte_ipv6_addr_is_unspec', rte_ipv6_addr_is_unspec]
alias rte_ethdev_rte_ipv6_addr_is_loopback = ExternalFunction['rte_ipv6_addr_is_loopback', rte_ipv6_addr_is_loopback]
alias rte_ethdev_rte_ipv6_addr_is_linklocal = ExternalFunction['rte_ipv6_addr_is_linklocal', rte_ipv6_addr_is_linklocal]
alias rte_ethdev_rte_ipv6_addr_is_sitelocal = ExternalFunction['rte_ipv6_addr_is_sitelocal', rte_ipv6_addr_is_sitelocal]
alias rte_ethdev_rte_ipv6_addr_is_v4compat = ExternalFunction['rte_ipv6_addr_is_v4compat', rte_ipv6_addr_is_v4compat]
alias rte_ethdev_rte_ipv6_addr_is_v4mapped = ExternalFunction['rte_ipv6_addr_is_v4mapped', rte_ipv6_addr_is_v4mapped]
alias rte_ethdev_rte_ipv6_addr_is_mcast = ExternalFunction['rte_ipv6_addr_is_mcast', rte_ipv6_addr_is_mcast]
alias rte_ethdev_rte_ipv6_llocal_from_ethernet = ExternalFunction['rte_ipv6_llocal_from_ethernet', rte_ipv6_llocal_from_ethernet]
alias rte_ethdev_rte_ipv6_solnode_from_addr = ExternalFunction['rte_ipv6_solnode_from_addr', rte_ipv6_solnode_from_addr]
alias rte_ethdev_rte_ether_mcast_from_ipv6 = ExternalFunction['rte_ether_mcast_from_ipv6', rte_ether_mcast_from_ipv6]
alias rte_ethdev_rte_ipv6_check_version = ExternalFunction['rte_ipv6_check_version', rte_ipv6_check_version]
alias rte_ethdev_rte_ipv6_phdr_cksum = ExternalFunction['rte_ipv6_phdr_cksum', rte_ipv6_phdr_cksum]
alias rte_ethdev_rte_ipv6_udptcp_cksum = ExternalFunction['rte_ipv6_udptcp_cksum', rte_ipv6_udptcp_cksum]
alias rte_ethdev_rte_ipv6_udptcp_cksum_mbuf = ExternalFunction['rte_ipv6_udptcp_cksum_mbuf', rte_ipv6_udptcp_cksum_mbuf]
alias rte_ethdev_rte_ipv6_udptcp_cksum_verify = ExternalFunction['rte_ipv6_udptcp_cksum_verify', rte_ipv6_udptcp_cksum_verify]
alias rte_ethdev_rte_ipv6_udptcp_cksum_mbuf_verify = ExternalFunction['rte_ipv6_udptcp_cksum_mbuf_verify', rte_ipv6_udptcp_cksum_mbuf_verify]
alias rte_ethdev_rte_ipv6_get_next_ext = ExternalFunction['rte_ipv6_get_next_ext', rte_ipv6_get_next_ext]
alias rte_ethdev_rte_mbuf_dynfield_register = ExternalFunction['rte_mbuf_dynfield_register', rte_mbuf_dynfield_register]
alias rte_ethdev_rte_mbuf_dynfield_register_offset = ExternalFunction['rte_mbuf_dynfield_register_offset', rte_mbuf_dynfield_register_offset]
alias rte_ethdev_rte_mbuf_dynfield_lookup = ExternalFunction['rte_mbuf_dynfield_lookup', rte_mbuf_dynfield_lookup]
alias rte_ethdev_rte_mbuf_dynflag_register = ExternalFunction['rte_mbuf_dynflag_register', rte_mbuf_dynflag_register]
alias rte_ethdev_rte_mbuf_dynflag_register_bitnum = ExternalFunction['rte_mbuf_dynflag_register_bitnum', rte_mbuf_dynflag_register_bitnum]
alias rte_ethdev_rte_mbuf_dynflag_lookup = ExternalFunction['rte_mbuf_dynflag_lookup', rte_mbuf_dynflag_lookup]
alias rte_ethdev_rte_mbuf_dyn_dump = ExternalFunction['rte_mbuf_dyn_dump', rte_mbuf_dyn_dump]
alias rte_ethdev_rte_mbuf_dyn_rx_timestamp_register = ExternalFunction['rte_mbuf_dyn_rx_timestamp_register', rte_mbuf_dyn_rx_timestamp_register]
alias rte_ethdev_rte_mbuf_dyn_tx_timestamp_register = ExternalFunction['rte_mbuf_dyn_tx_timestamp_register', rte_mbuf_dyn_tx_timestamp_register]
alias rte_ethdev_rte_meter_srtcm_profile_config = ExternalFunction['rte_meter_srtcm_profile_config', rte_meter_srtcm_profile_config]
alias rte_ethdev_rte_meter_trtcm_profile_config = ExternalFunction['rte_meter_trtcm_profile_config', rte_meter_trtcm_profile_config]
alias rte_ethdev_rte_meter_trtcm_rfc4115_profile_config = ExternalFunction['rte_meter_trtcm_rfc4115_profile_config', rte_meter_trtcm_rfc4115_profile_config]
alias rte_ethdev_rte_meter_srtcm_config = ExternalFunction['rte_meter_srtcm_config', rte_meter_srtcm_config]
alias rte_ethdev_rte_meter_trtcm_config = ExternalFunction['rte_meter_trtcm_config', rte_meter_trtcm_config]
alias rte_ethdev_rte_meter_trtcm_rfc4115_config = ExternalFunction['rte_meter_trtcm_rfc4115_config', rte_meter_trtcm_rfc4115_config]
alias rte_ethdev_rte_meter_srtcm_color_blind_check = ExternalFunction['rte_meter_srtcm_color_blind_check', rte_meter_srtcm_color_blind_check]
alias rte_ethdev_rte_meter_srtcm_color_aware_check = ExternalFunction['rte_meter_srtcm_color_aware_check', rte_meter_srtcm_color_aware_check]
alias rte_ethdev_rte_meter_trtcm_color_blind_check = ExternalFunction['rte_meter_trtcm_color_blind_check', rte_meter_trtcm_color_blind_check]
alias rte_ethdev_rte_meter_trtcm_color_aware_check = ExternalFunction['rte_meter_trtcm_color_aware_check', rte_meter_trtcm_color_aware_check]
alias rte_ethdev_rte_meter_trtcm_rfc4115_color_blind_check = ExternalFunction['rte_meter_trtcm_rfc4115_color_blind_check', rte_meter_trtcm_rfc4115_color_blind_check]
alias rte_ethdev_rte_meter_trtcm_rfc4115_color_aware_check = ExternalFunction['rte_meter_trtcm_rfc4115_color_aware_check', rte_meter_trtcm_rfc4115_color_aware_check]
alias rte_ethdev_rte_flow_dynf_metadata_get = ExternalFunction['rte_flow_dynf_metadata_get', rte_flow_dynf_metadata_get]
alias rte_ethdev_rte_flow_dynf_metadata_set = ExternalFunction['rte_flow_dynf_metadata_set', rte_flow_dynf_metadata_set]
alias rte_ethdev_rte_flow_dev_dump = ExternalFunction['rte_flow_dev_dump', rte_flow_dev_dump]
alias rte_ethdev_rte_flow_dynf_metadata_avail = ExternalFunction['rte_flow_dynf_metadata_avail', rte_flow_dynf_metadata_avail]
alias rte_ethdev_rte_flow_dynf_metadata_register = ExternalFunction['rte_flow_dynf_metadata_register', rte_flow_dynf_metadata_register]
alias rte_ethdev_rte_flow_validate = ExternalFunction['rte_flow_validate', rte_flow_validate]
alias rte_ethdev_rte_flow_create = ExternalFunction['rte_flow_create', rte_flow_create]
alias rte_ethdev_rte_flow_destroy = ExternalFunction['rte_flow_destroy', rte_flow_destroy]
alias rte_ethdev_rte_flow_actions_update = ExternalFunction['rte_flow_actions_update', rte_flow_actions_update]
alias rte_ethdev_rte_flow_flush = ExternalFunction['rte_flow_flush', rte_flow_flush]
alias rte_ethdev_rte_flow_query = ExternalFunction['rte_flow_query', rte_flow_query]
alias rte_ethdev_rte_flow_isolate = ExternalFunction['rte_flow_isolate', rte_flow_isolate]
alias rte_ethdev_rte_flow_error_set = ExternalFunction['rte_flow_error_set', rte_flow_error_set]
alias rte_ethdev_rte_flow_copy = ExternalFunction['rte_flow_copy', rte_flow_copy]
alias rte_ethdev_rte_flow_conv = ExternalFunction['rte_flow_conv', rte_flow_conv]
alias rte_ethdev_rte_flow_get_aged_flows = ExternalFunction['rte_flow_get_aged_flows', rte_flow_get_aged_flows]
alias rte_ethdev_rte_flow_get_q_aged_flows = ExternalFunction['rte_flow_get_q_aged_flows', rte_flow_get_q_aged_flows]
alias rte_ethdev_rte_flow_action_handle_create = ExternalFunction['rte_flow_action_handle_create', rte_flow_action_handle_create]
alias rte_ethdev_rte_flow_action_handle_destroy = ExternalFunction['rte_flow_action_handle_destroy', rte_flow_action_handle_destroy]
alias rte_ethdev_rte_flow_action_handle_update = ExternalFunction['rte_flow_action_handle_update', rte_flow_action_handle_update]
alias rte_ethdev_rte_flow_action_handle_query = ExternalFunction['rte_flow_action_handle_query', rte_flow_action_handle_query]
alias rte_ethdev_rte_flow_tunnel_decap_set = ExternalFunction['rte_flow_tunnel_decap_set', rte_flow_tunnel_decap_set]
alias rte_ethdev_rte_flow_tunnel_match = ExternalFunction['rte_flow_tunnel_match', rte_flow_tunnel_match]
alias rte_ethdev_rte_flow_restore_info_dynflag = ExternalFunction['rte_flow_restore_info_dynflag', rte_flow_restore_info_dynflag]
alias rte_ethdev_rte_flow_get_restore_info = ExternalFunction['rte_flow_get_restore_info', rte_flow_get_restore_info]
alias rte_ethdev_rte_flow_tunnel_action_decap_release = ExternalFunction['rte_flow_tunnel_action_decap_release', rte_flow_tunnel_action_decap_release]
alias rte_ethdev_rte_flow_tunnel_item_release = ExternalFunction['rte_flow_tunnel_item_release', rte_flow_tunnel_item_release]
alias rte_ethdev_rte_flow_pick_transfer_proxy = ExternalFunction['rte_flow_pick_transfer_proxy', rte_flow_pick_transfer_proxy]
alias rte_ethdev_rte_flow_flex_item_create = ExternalFunction['rte_flow_flex_item_create', rte_flow_flex_item_create]
alias rte_ethdev_rte_flow_flex_item_release = ExternalFunction['rte_flow_flex_item_release', rte_flow_flex_item_release]
alias rte_ethdev_rte_flow_info_get = ExternalFunction['rte_flow_info_get', rte_flow_info_get]
alias rte_ethdev_rte_flow_configure = ExternalFunction['rte_flow_configure', rte_flow_configure]
alias rte_ethdev_rte_flow_pattern_template_create = ExternalFunction['rte_flow_pattern_template_create', rte_flow_pattern_template_create]
alias rte_ethdev_rte_flow_pattern_template_destroy = ExternalFunction['rte_flow_pattern_template_destroy', rte_flow_pattern_template_destroy]
alias rte_ethdev_rte_flow_actions_template_create = ExternalFunction['rte_flow_actions_template_create', rte_flow_actions_template_create]
alias rte_ethdev_rte_flow_actions_template_destroy = ExternalFunction['rte_flow_actions_template_destroy', rte_flow_actions_template_destroy]
alias rte_ethdev_rte_flow_template_table_resizable = ExternalFunction['rte_flow_template_table_resizable', rte_flow_template_table_resizable]
alias rte_ethdev_rte_flow_template_table_create = ExternalFunction['rte_flow_template_table_create', rte_flow_template_table_create]
alias rte_ethdev_rte_flow_template_table_destroy = ExternalFunction['rte_flow_template_table_destroy', rte_flow_template_table_destroy]
alias rte_ethdev_rte_flow_group_set_miss_actions = ExternalFunction['rte_flow_group_set_miss_actions', rte_flow_group_set_miss_actions]
alias rte_ethdev_rte_flow_async_create = ExternalFunction['rte_flow_async_create', rte_flow_async_create]
alias rte_ethdev_rte_flow_async_create_by_index = ExternalFunction['rte_flow_async_create_by_index', rte_flow_async_create_by_index]
alias rte_ethdev_rte_flow_async_create_by_index_with_pattern = ExternalFunction['rte_flow_async_create_by_index_with_pattern', rte_flow_async_create_by_index_with_pattern]
alias rte_ethdev_rte_flow_async_destroy = ExternalFunction['rte_flow_async_destroy', rte_flow_async_destroy]
alias rte_ethdev_rte_flow_async_actions_update = ExternalFunction['rte_flow_async_actions_update', rte_flow_async_actions_update]
alias rte_ethdev_rte_flow_push = ExternalFunction['rte_flow_push', rte_flow_push]
alias rte_ethdev_rte_flow_pull = ExternalFunction['rte_flow_pull', rte_flow_pull]
alias rte_ethdev_rte_flow_async_action_handle_create = ExternalFunction['rte_flow_async_action_handle_create', rte_flow_async_action_handle_create]
alias rte_ethdev_rte_flow_async_action_handle_destroy = ExternalFunction['rte_flow_async_action_handle_destroy', rte_flow_async_action_handle_destroy]
alias rte_ethdev_rte_flow_async_action_handle_update = ExternalFunction['rte_flow_async_action_handle_update', rte_flow_async_action_handle_update]
alias rte_ethdev_rte_flow_async_action_handle_query = ExternalFunction['rte_flow_async_action_handle_query', rte_flow_async_action_handle_query]
alias rte_ethdev_rte_flow_action_handle_query_update = ExternalFunction['rte_flow_action_handle_query_update', rte_flow_action_handle_query_update]
alias rte_ethdev_rte_flow_async_action_handle_query_update = ExternalFunction['rte_flow_async_action_handle_query_update', rte_flow_async_action_handle_query_update]
alias rte_ethdev_rte_flow_action_list_handle_create = ExternalFunction['rte_flow_action_list_handle_create', rte_flow_action_list_handle_create]
alias rte_ethdev_rte_flow_async_action_list_handle_create = ExternalFunction['rte_flow_async_action_list_handle_create', rte_flow_async_action_list_handle_create]
alias rte_ethdev_rte_flow_action_list_handle_destroy = ExternalFunction['rte_flow_action_list_handle_destroy', rte_flow_action_list_handle_destroy]
alias rte_ethdev_rte_flow_async_action_list_handle_destroy = ExternalFunction['rte_flow_async_action_list_handle_destroy', rte_flow_async_action_list_handle_destroy]
alias rte_ethdev_rte_flow_action_list_handle_query_update = ExternalFunction['rte_flow_action_list_handle_query_update', rte_flow_action_list_handle_query_update]
alias rte_ethdev_rte_flow_async_action_list_handle_query_update = ExternalFunction['rte_flow_async_action_list_handle_query_update', rte_flow_async_action_list_handle_query_update]
alias rte_ethdev_rte_flow_calc_table_hash = ExternalFunction['rte_flow_calc_table_hash', rte_flow_calc_table_hash]
alias rte_ethdev_rte_flow_calc_encap_hash = ExternalFunction['rte_flow_calc_encap_hash', rte_flow_calc_encap_hash]
alias rte_ethdev_rte_flow_template_table_resize = ExternalFunction['rte_flow_template_table_resize', rte_flow_template_table_resize]
alias rte_ethdev_rte_flow_async_update_resized = ExternalFunction['rte_flow_async_update_resized', rte_flow_async_update_resized]
alias rte_ethdev_rte_flow_template_table_resize_complete = ExternalFunction['rte_flow_template_table_resize_complete', rte_flow_template_table_resize_complete]
alias rte_ethdev_rte_eth_find_next_owned_by = ExternalFunction['rte_eth_find_next_owned_by', rte_eth_find_next_owned_by]
alias rte_ethdev_rte_eth_find_next = ExternalFunction['rte_eth_find_next', rte_eth_find_next]
alias rte_ethdev_rte_eth_find_next_of = ExternalFunction['rte_eth_find_next_of', rte_eth_find_next_of]
alias rte_ethdev_rte_eth_find_next_sibling = ExternalFunction['rte_eth_find_next_sibling', rte_eth_find_next_sibling]
alias rte_ethdev_rte_eth_dev_owner_new = ExternalFunction['rte_eth_dev_owner_new', rte_eth_dev_owner_new]
alias rte_ethdev_rte_eth_dev_owner_set = ExternalFunction['rte_eth_dev_owner_set', rte_eth_dev_owner_set]
alias rte_ethdev_rte_eth_dev_owner_unset = ExternalFunction['rte_eth_dev_owner_unset', rte_eth_dev_owner_unset]
alias rte_ethdev_rte_eth_dev_owner_delete = ExternalFunction['rte_eth_dev_owner_delete', rte_eth_dev_owner_delete]
alias rte_ethdev_rte_eth_dev_owner_get = ExternalFunction['rte_eth_dev_owner_get', rte_eth_dev_owner_get]
alias rte_ethdev_rte_eth_dev_count_avail = ExternalFunction['rte_eth_dev_count_avail', rte_eth_dev_count_avail]
alias rte_ethdev_rte_eth_dev_count_total = ExternalFunction['rte_eth_dev_count_total', rte_eth_dev_count_total]
alias rte_ethdev_rte_eth_speed_bitflag = ExternalFunction['rte_eth_speed_bitflag', rte_eth_speed_bitflag]
alias rte_ethdev_rte_eth_dev_rx_offload_name = ExternalFunction['rte_eth_dev_rx_offload_name', rte_eth_dev_rx_offload_name]
alias rte_ethdev_rte_eth_dev_tx_offload_name = ExternalFunction['rte_eth_dev_tx_offload_name', rte_eth_dev_tx_offload_name]
alias rte_ethdev_rte_eth_dev_capability_name = ExternalFunction['rte_eth_dev_capability_name', rte_eth_dev_capability_name]
alias rte_ethdev_rte_eth_dev_configure = ExternalFunction['rte_eth_dev_configure', rte_eth_dev_configure]
alias rte_ethdev_rte_eth_dev_is_removed = ExternalFunction['rte_eth_dev_is_removed', rte_eth_dev_is_removed]
alias rte_ethdev_rte_eth_rx_queue_setup = ExternalFunction['rte_eth_rx_queue_setup', rte_eth_rx_queue_setup]
alias rte_ethdev_rte_eth_rx_hairpin_queue_setup = ExternalFunction['rte_eth_rx_hairpin_queue_setup', rte_eth_rx_hairpin_queue_setup]
alias rte_ethdev_rte_eth_tx_queue_setup = ExternalFunction['rte_eth_tx_queue_setup', rte_eth_tx_queue_setup]
alias rte_ethdev_rte_eth_tx_hairpin_queue_setup = ExternalFunction['rte_eth_tx_hairpin_queue_setup', rte_eth_tx_hairpin_queue_setup]
alias rte_ethdev_rte_eth_hairpin_get_peer_ports = ExternalFunction['rte_eth_hairpin_get_peer_ports', rte_eth_hairpin_get_peer_ports]
alias rte_ethdev_rte_eth_hairpin_bind = ExternalFunction['rte_eth_hairpin_bind', rte_eth_hairpin_bind]
alias rte_ethdev_rte_eth_hairpin_unbind = ExternalFunction['rte_eth_hairpin_unbind', rte_eth_hairpin_unbind]
alias rte_ethdev_rte_eth_dev_count_aggr_ports = ExternalFunction['rte_eth_dev_count_aggr_ports', rte_eth_dev_count_aggr_ports]
alias rte_ethdev_rte_eth_dev_map_aggr_tx_affinity = ExternalFunction['rte_eth_dev_map_aggr_tx_affinity', rte_eth_dev_map_aggr_tx_affinity]
alias rte_ethdev_rte_eth_dev_socket_id = ExternalFunction['rte_eth_dev_socket_id', rte_eth_dev_socket_id]
alias rte_ethdev_rte_eth_dev_is_valid_port = ExternalFunction['rte_eth_dev_is_valid_port', rte_eth_dev_is_valid_port]
alias rte_ethdev_rte_eth_rx_queue_is_valid = ExternalFunction['rte_eth_rx_queue_is_valid', rte_eth_rx_queue_is_valid]
alias rte_ethdev_rte_eth_tx_queue_is_valid = ExternalFunction['rte_eth_tx_queue_is_valid', rte_eth_tx_queue_is_valid]
alias rte_ethdev_rte_eth_dev_rx_queue_start = ExternalFunction['rte_eth_dev_rx_queue_start', rte_eth_dev_rx_queue_start]
alias rte_ethdev_rte_eth_dev_rx_queue_stop = ExternalFunction['rte_eth_dev_rx_queue_stop', rte_eth_dev_rx_queue_stop]
alias rte_ethdev_rte_eth_dev_tx_queue_start = ExternalFunction['rte_eth_dev_tx_queue_start', rte_eth_dev_tx_queue_start]
alias rte_ethdev_rte_eth_dev_tx_queue_stop = ExternalFunction['rte_eth_dev_tx_queue_stop', rte_eth_dev_tx_queue_stop]
alias rte_ethdev_rte_eth_dev_start = ExternalFunction['rte_eth_dev_start', rte_eth_dev_start]
alias rte_ethdev_rte_eth_dev_stop = ExternalFunction['rte_eth_dev_stop', rte_eth_dev_stop]
alias rte_ethdev_rte_eth_dev_set_link_up = ExternalFunction['rte_eth_dev_set_link_up', rte_eth_dev_set_link_up]
alias rte_ethdev_rte_eth_dev_set_link_down = ExternalFunction['rte_eth_dev_set_link_down', rte_eth_dev_set_link_down]
alias rte_ethdev_rte_eth_dev_close = ExternalFunction['rte_eth_dev_close', rte_eth_dev_close]
alias rte_ethdev_rte_eth_dev_reset = ExternalFunction['rte_eth_dev_reset', rte_eth_dev_reset]
alias rte_ethdev_rte_eth_promiscuous_enable = ExternalFunction['rte_eth_promiscuous_enable', rte_eth_promiscuous_enable]
alias rte_ethdev_rte_eth_promiscuous_disable = ExternalFunction['rte_eth_promiscuous_disable', rte_eth_promiscuous_disable]
alias rte_ethdev_rte_eth_promiscuous_get = ExternalFunction['rte_eth_promiscuous_get', rte_eth_promiscuous_get]
alias rte_ethdev_rte_eth_allmulticast_enable = ExternalFunction['rte_eth_allmulticast_enable', rte_eth_allmulticast_enable]
alias rte_ethdev_rte_eth_allmulticast_disable = ExternalFunction['rte_eth_allmulticast_disable', rte_eth_allmulticast_disable]
alias rte_ethdev_rte_eth_allmulticast_get = ExternalFunction['rte_eth_allmulticast_get', rte_eth_allmulticast_get]
alias rte_ethdev_rte_eth_link_get = ExternalFunction['rte_eth_link_get', rte_eth_link_get]
alias rte_ethdev_rte_eth_link_get_nowait = ExternalFunction['rte_eth_link_get_nowait', rte_eth_link_get_nowait]
alias rte_ethdev_rte_eth_link_speed_to_str = ExternalFunction['rte_eth_link_speed_to_str', rte_eth_link_speed_to_str]
alias rte_ethdev_rte_eth_link_to_str = ExternalFunction['rte_eth_link_to_str', rte_eth_link_to_str]
alias rte_ethdev_rte_eth_speed_lanes_get = ExternalFunction['rte_eth_speed_lanes_get', rte_eth_speed_lanes_get]
alias rte_ethdev_rte_eth_speed_lanes_set = ExternalFunction['rte_eth_speed_lanes_set', rte_eth_speed_lanes_set]
alias rte_ethdev_rte_eth_speed_lanes_get_capability = ExternalFunction['rte_eth_speed_lanes_get_capability', rte_eth_speed_lanes_get_capability]
alias rte_ethdev_rte_eth_stats_get = ExternalFunction['rte_eth_stats_get', rte_eth_stats_get]
alias rte_ethdev_rte_eth_stats_reset = ExternalFunction['rte_eth_stats_reset', rte_eth_stats_reset]
alias rte_ethdev_rte_eth_xstats_get_names = ExternalFunction['rte_eth_xstats_get_names', rte_eth_xstats_get_names]
alias rte_ethdev_rte_eth_xstats_get = ExternalFunction['rte_eth_xstats_get', rte_eth_xstats_get]
alias rte_ethdev_rte_eth_xstats_get_names_by_id = ExternalFunction['rte_eth_xstats_get_names_by_id', rte_eth_xstats_get_names_by_id]
alias rte_ethdev_rte_eth_xstats_get_by_id = ExternalFunction['rte_eth_xstats_get_by_id', rte_eth_xstats_get_by_id]
alias rte_ethdev_rte_eth_xstats_get_id_by_name = ExternalFunction['rte_eth_xstats_get_id_by_name', rte_eth_xstats_get_id_by_name]
alias rte_ethdev_rte_eth_xstats_set_counter = ExternalFunction['rte_eth_xstats_set_counter', rte_eth_xstats_set_counter]
alias rte_ethdev_rte_eth_xstats_query_state = ExternalFunction['rte_eth_xstats_query_state', rte_eth_xstats_query_state]
alias rte_ethdev_rte_eth_xstats_reset = ExternalFunction['rte_eth_xstats_reset', rte_eth_xstats_reset]
alias rte_ethdev_rte_eth_dev_set_tx_queue_stats_mapping = ExternalFunction['rte_eth_dev_set_tx_queue_stats_mapping', rte_eth_dev_set_tx_queue_stats_mapping]
alias rte_ethdev_rte_eth_dev_set_rx_queue_stats_mapping = ExternalFunction['rte_eth_dev_set_rx_queue_stats_mapping', rte_eth_dev_set_rx_queue_stats_mapping]
alias rte_ethdev_rte_eth_macaddr_get = ExternalFunction['rte_eth_macaddr_get', rte_eth_macaddr_get]
alias rte_ethdev_rte_eth_macaddrs_get = ExternalFunction['rte_eth_macaddrs_get', rte_eth_macaddrs_get]
alias rte_ethdev_rte_eth_dev_info_get = ExternalFunction['rte_eth_dev_info_get', rte_eth_dev_info_get]
alias rte_ethdev_rte_eth_dev_conf_get = ExternalFunction['rte_eth_dev_conf_get', rte_eth_dev_conf_get]
alias rte_ethdev_rte_eth_dev_fw_version_get = ExternalFunction['rte_eth_dev_fw_version_get', rte_eth_dev_fw_version_get]
alias rte_ethdev_rte_eth_dev_get_supported_ptypes = ExternalFunction['rte_eth_dev_get_supported_ptypes', rte_eth_dev_get_supported_ptypes]
alias rte_ethdev_rte_eth_dev_set_ptypes = ExternalFunction['rte_eth_dev_set_ptypes', rte_eth_dev_set_ptypes]
alias rte_ethdev_rte_eth_dev_get_mtu = ExternalFunction['rte_eth_dev_get_mtu', rte_eth_dev_get_mtu]
alias rte_ethdev_rte_eth_dev_set_mtu = ExternalFunction['rte_eth_dev_set_mtu', rte_eth_dev_set_mtu]
alias rte_ethdev_rte_eth_dev_vlan_filter = ExternalFunction['rte_eth_dev_vlan_filter', rte_eth_dev_vlan_filter]
alias rte_ethdev_rte_eth_dev_set_vlan_strip_on_queue = ExternalFunction['rte_eth_dev_set_vlan_strip_on_queue', rte_eth_dev_set_vlan_strip_on_queue]
alias rte_ethdev_rte_eth_dev_set_vlan_ether_type = ExternalFunction['rte_eth_dev_set_vlan_ether_type', rte_eth_dev_set_vlan_ether_type]
alias rte_ethdev_rte_eth_dev_set_vlan_offload = ExternalFunction['rte_eth_dev_set_vlan_offload', rte_eth_dev_set_vlan_offload]
alias rte_ethdev_rte_eth_dev_get_vlan_offload = ExternalFunction['rte_eth_dev_get_vlan_offload', rte_eth_dev_get_vlan_offload]
alias rte_ethdev_rte_eth_dev_set_vlan_pvid = ExternalFunction['rte_eth_dev_set_vlan_pvid', rte_eth_dev_set_vlan_pvid]
alias rte_ethdev_rte_eth_rx_avail_thresh_set = ExternalFunction['rte_eth_rx_avail_thresh_set', rte_eth_rx_avail_thresh_set]
alias rte_ethdev_rte_eth_rx_avail_thresh_query = ExternalFunction['rte_eth_rx_avail_thresh_query', rte_eth_rx_avail_thresh_query]
alias rte_ethdev_rte_eth_tx_buffer_init = ExternalFunction['rte_eth_tx_buffer_init', rte_eth_tx_buffer_init]
alias rte_ethdev_rte_eth_tx_buffer_set_err_callback = ExternalFunction['rte_eth_tx_buffer_set_err_callback', rte_eth_tx_buffer_set_err_callback]
alias rte_ethdev_rte_eth_tx_buffer_drop_callback = ExternalFunction['rte_eth_tx_buffer_drop_callback', rte_eth_tx_buffer_drop_callback]
alias rte_ethdev_rte_eth_tx_buffer_count_callback = ExternalFunction['rte_eth_tx_buffer_count_callback', rte_eth_tx_buffer_count_callback]
alias rte_ethdev_rte_eth_tx_done_cleanup = ExternalFunction['rte_eth_tx_done_cleanup', rte_eth_tx_done_cleanup]
alias rte_ethdev_rte_eth_dev_callback_register = ExternalFunction['rte_eth_dev_callback_register', rte_eth_dev_callback_register]
alias rte_ethdev_rte_eth_dev_callback_unregister = ExternalFunction['rte_eth_dev_callback_unregister', rte_eth_dev_callback_unregister]
alias rte_ethdev_rte_eth_dev_rx_intr_enable = ExternalFunction['rte_eth_dev_rx_intr_enable', rte_eth_dev_rx_intr_enable]
alias rte_ethdev_rte_eth_dev_rx_intr_disable = ExternalFunction['rte_eth_dev_rx_intr_disable', rte_eth_dev_rx_intr_disable]
alias rte_ethdev_rte_eth_dev_rx_intr_ctl = ExternalFunction['rte_eth_dev_rx_intr_ctl', rte_eth_dev_rx_intr_ctl]
alias rte_ethdev_rte_eth_dev_rx_intr_ctl_q = ExternalFunction['rte_eth_dev_rx_intr_ctl_q', rte_eth_dev_rx_intr_ctl_q]
alias rte_ethdev_rte_eth_dev_rx_intr_ctl_q_get_fd = ExternalFunction['rte_eth_dev_rx_intr_ctl_q_get_fd', rte_eth_dev_rx_intr_ctl_q_get_fd]
alias rte_ethdev_rte_eth_led_on = ExternalFunction['rte_eth_led_on', rte_eth_led_on]
alias rte_ethdev_rte_eth_led_off = ExternalFunction['rte_eth_led_off', rte_eth_led_off]
alias rte_ethdev_rte_eth_fec_get_capability = ExternalFunction['rte_eth_fec_get_capability', rte_eth_fec_get_capability]
alias rte_ethdev_rte_eth_fec_get = ExternalFunction['rte_eth_fec_get', rte_eth_fec_get]
alias rte_ethdev_rte_eth_fec_set = ExternalFunction['rte_eth_fec_set', rte_eth_fec_set]
alias rte_ethdev_rte_eth_dev_flow_ctrl_get = ExternalFunction['rte_eth_dev_flow_ctrl_get', rte_eth_dev_flow_ctrl_get]
alias rte_ethdev_rte_eth_dev_flow_ctrl_set = ExternalFunction['rte_eth_dev_flow_ctrl_set', rte_eth_dev_flow_ctrl_set]
alias rte_ethdev_rte_eth_dev_priority_flow_ctrl_set = ExternalFunction['rte_eth_dev_priority_flow_ctrl_set', rte_eth_dev_priority_flow_ctrl_set]
alias rte_ethdev_rte_eth_dev_mac_addr_add = ExternalFunction['rte_eth_dev_mac_addr_add', rte_eth_dev_mac_addr_add]
alias rte_ethdev_rte_eth_dev_priority_flow_ctrl_queue_info_get = ExternalFunction['rte_eth_dev_priority_flow_ctrl_queue_info_get', rte_eth_dev_priority_flow_ctrl_queue_info_get]
alias rte_ethdev_rte_eth_dev_priority_flow_ctrl_queue_configure = ExternalFunction['rte_eth_dev_priority_flow_ctrl_queue_configure', rte_eth_dev_priority_flow_ctrl_queue_configure]
alias rte_ethdev_rte_eth_dev_mac_addr_remove = ExternalFunction['rte_eth_dev_mac_addr_remove', rte_eth_dev_mac_addr_remove]
alias rte_ethdev_rte_eth_dev_default_mac_addr_set = ExternalFunction['rte_eth_dev_default_mac_addr_set', rte_eth_dev_default_mac_addr_set]
alias rte_ethdev_rte_eth_dev_rss_reta_update = ExternalFunction['rte_eth_dev_rss_reta_update', rte_eth_dev_rss_reta_update]
alias rte_ethdev_rte_eth_dev_rss_reta_query = ExternalFunction['rte_eth_dev_rss_reta_query', rte_eth_dev_rss_reta_query]
alias rte_ethdev_rte_eth_dev_uc_hash_table_set = ExternalFunction['rte_eth_dev_uc_hash_table_set', rte_eth_dev_uc_hash_table_set]
alias rte_ethdev_rte_eth_dev_uc_all_hash_table_set = ExternalFunction['rte_eth_dev_uc_all_hash_table_set', rte_eth_dev_uc_all_hash_table_set]
alias rte_ethdev_rte_eth_set_queue_rate_limit = ExternalFunction['rte_eth_set_queue_rate_limit', rte_eth_set_queue_rate_limit]
alias rte_ethdev_rte_eth_dev_rss_hash_update = ExternalFunction['rte_eth_dev_rss_hash_update', rte_eth_dev_rss_hash_update]
alias rte_ethdev_rte_eth_dev_rss_hash_conf_get = ExternalFunction['rte_eth_dev_rss_hash_conf_get', rte_eth_dev_rss_hash_conf_get]
alias rte_ethdev_rte_eth_dev_rss_algo_name = ExternalFunction['rte_eth_dev_rss_algo_name', rte_eth_dev_rss_algo_name]
alias rte_ethdev_rte_eth_find_rss_algo = ExternalFunction['rte_eth_find_rss_algo', rte_eth_find_rss_algo]
alias rte_ethdev_rte_eth_dev_udp_tunnel_port_add = ExternalFunction['rte_eth_dev_udp_tunnel_port_add', rte_eth_dev_udp_tunnel_port_add]
alias rte_ethdev_rte_eth_dev_udp_tunnel_port_delete = ExternalFunction['rte_eth_dev_udp_tunnel_port_delete', rte_eth_dev_udp_tunnel_port_delete]
alias rte_ethdev_rte_eth_dev_get_dcb_info = ExternalFunction['rte_eth_dev_get_dcb_info', rte_eth_dev_get_dcb_info]
alias rte_ethdev_rte_eth_add_rx_callback = ExternalFunction['rte_eth_add_rx_callback', rte_eth_add_rx_callback]
alias rte_ethdev_rte_eth_add_first_rx_callback = ExternalFunction['rte_eth_add_first_rx_callback', rte_eth_add_first_rx_callback]
alias rte_ethdev_rte_eth_add_tx_callback = ExternalFunction['rte_eth_add_tx_callback', rte_eth_add_tx_callback]
alias rte_ethdev_rte_eth_remove_rx_callback = ExternalFunction['rte_eth_remove_rx_callback', rte_eth_remove_rx_callback]
alias rte_ethdev_rte_eth_remove_tx_callback = ExternalFunction['rte_eth_remove_tx_callback', rte_eth_remove_tx_callback]
alias rte_ethdev_rte_eth_rx_queue_info_get = ExternalFunction['rte_eth_rx_queue_info_get', rte_eth_rx_queue_info_get]
alias rte_ethdev_rte_eth_tx_queue_info_get = ExternalFunction['rte_eth_tx_queue_info_get', rte_eth_tx_queue_info_get]
alias rte_ethdev_rte_eth_recycle_rx_queue_info_get = ExternalFunction['rte_eth_recycle_rx_queue_info_get', rte_eth_recycle_rx_queue_info_get]
alias rte_ethdev_rte_eth_rx_burst_mode_get = ExternalFunction['rte_eth_rx_burst_mode_get', rte_eth_rx_burst_mode_get]
alias rte_ethdev_rte_eth_tx_burst_mode_get = ExternalFunction['rte_eth_tx_burst_mode_get', rte_eth_tx_burst_mode_get]
alias rte_ethdev_rte_eth_get_monitor_addr = ExternalFunction['rte_eth_get_monitor_addr', rte_eth_get_monitor_addr]
alias rte_ethdev_rte_eth_dev_get_reg_info_ext = ExternalFunction['rte_eth_dev_get_reg_info_ext', rte_eth_dev_get_reg_info_ext]
alias rte_ethdev_rte_eth_dev_get_reg_info = ExternalFunction['rte_eth_dev_get_reg_info', rte_eth_dev_get_reg_info]
alias rte_ethdev_rte_eth_dev_get_eeprom_length = ExternalFunction['rte_eth_dev_get_eeprom_length', rte_eth_dev_get_eeprom_length]
alias rte_ethdev_rte_eth_dev_get_eeprom = ExternalFunction['rte_eth_dev_get_eeprom', rte_eth_dev_get_eeprom]
alias rte_ethdev_rte_eth_dev_set_eeprom = ExternalFunction['rte_eth_dev_set_eeprom', rte_eth_dev_set_eeprom]
alias rte_ethdev_rte_eth_dev_get_module_info = ExternalFunction['rte_eth_dev_get_module_info', rte_eth_dev_get_module_info]
alias rte_ethdev_rte_eth_dev_get_module_eeprom = ExternalFunction['rte_eth_dev_get_module_eeprom', rte_eth_dev_get_module_eeprom]
alias rte_ethdev_rte_eth_dev_set_mc_addr_list = ExternalFunction['rte_eth_dev_set_mc_addr_list', rte_eth_dev_set_mc_addr_list]
alias rte_ethdev_rte_eth_timesync_enable = ExternalFunction['rte_eth_timesync_enable', rte_eth_timesync_enable]
alias rte_ethdev_rte_eth_timesync_disable = ExternalFunction['rte_eth_timesync_disable', rte_eth_timesync_disable]
alias rte_ethdev_rte_eth_timesync_read_rx_timestamp = ExternalFunction['rte_eth_timesync_read_rx_timestamp', rte_eth_timesync_read_rx_timestamp]
alias rte_ethdev_rte_eth_timesync_read_tx_timestamp = ExternalFunction['rte_eth_timesync_read_tx_timestamp', rte_eth_timesync_read_tx_timestamp]
alias rte_ethdev_rte_eth_timesync_adjust_time = ExternalFunction['rte_eth_timesync_adjust_time', rte_eth_timesync_adjust_time]
alias rte_ethdev_rte_eth_timesync_adjust_freq = ExternalFunction['rte_eth_timesync_adjust_freq', rte_eth_timesync_adjust_freq]
alias rte_ethdev_rte_eth_timesync_read_time = ExternalFunction['rte_eth_timesync_read_time', rte_eth_timesync_read_time]
alias rte_ethdev_rte_eth_timesync_write_time = ExternalFunction['rte_eth_timesync_write_time', rte_eth_timesync_write_time]
alias rte_ethdev_rte_eth_read_clock = ExternalFunction['rte_eth_read_clock', rte_eth_read_clock]
alias rte_ethdev_rte_eth_dev_get_port_by_name = ExternalFunction['rte_eth_dev_get_port_by_name', rte_eth_dev_get_port_by_name]
alias rte_ethdev_rte_eth_dev_get_name_by_port = ExternalFunction['rte_eth_dev_get_name_by_port', rte_eth_dev_get_name_by_port]
alias rte_ethdev_rte_eth_dev_adjust_nb_rx_tx_desc = ExternalFunction['rte_eth_dev_adjust_nb_rx_tx_desc', rte_eth_dev_adjust_nb_rx_tx_desc]
alias rte_ethdev_rte_eth_dev_pool_ops_supported = ExternalFunction['rte_eth_dev_pool_ops_supported', rte_eth_dev_pool_ops_supported]
alias rte_ethdev_rte_eth_dev_get_sec_ctx = ExternalFunction['rte_eth_dev_get_sec_ctx', rte_eth_dev_get_sec_ctx]
alias rte_ethdev_rte_eth_dev_hairpin_capability_get = ExternalFunction['rte_eth_dev_hairpin_capability_get', rte_eth_dev_hairpin_capability_get]
alias rte_ethdev_rte_eth_representor_info_get = ExternalFunction['rte_eth_representor_info_get', rte_eth_representor_info_get]
alias rte_ethdev_rte_eth_rx_metadata_negotiate = ExternalFunction['rte_eth_rx_metadata_negotiate', rte_eth_rx_metadata_negotiate]
alias rte_ethdev_rte_eth_ip_reassembly_capability_get = ExternalFunction['rte_eth_ip_reassembly_capability_get', rte_eth_ip_reassembly_capability_get]
alias rte_ethdev_rte_eth_ip_reassembly_conf_get = ExternalFunction['rte_eth_ip_reassembly_conf_get', rte_eth_ip_reassembly_conf_get]
alias rte_ethdev_rte_eth_ip_reassembly_conf_set = ExternalFunction['rte_eth_ip_reassembly_conf_set', rte_eth_ip_reassembly_conf_set]
alias rte_ethdev_rte_eth_dev_priv_dump = ExternalFunction['rte_eth_dev_priv_dump', rte_eth_dev_priv_dump]
alias rte_ethdev_rte_eth_rx_descriptor_dump = ExternalFunction['rte_eth_rx_descriptor_dump', rte_eth_rx_descriptor_dump]
alias rte_ethdev_rte_eth_tx_descriptor_dump = ExternalFunction['rte_eth_tx_descriptor_dump', rte_eth_tx_descriptor_dump]
alias rte_ethdev_rte_eth_cman_info_get = ExternalFunction['rte_eth_cman_info_get', rte_eth_cman_info_get]
alias rte_ethdev_rte_eth_cman_config_init = ExternalFunction['rte_eth_cman_config_init', rte_eth_cman_config_init]
alias rte_ethdev_rte_eth_cman_config_set = ExternalFunction['rte_eth_cman_config_set', rte_eth_cman_config_set]
alias rte_ethdev_rte_eth_cman_config_get = ExternalFunction['rte_eth_cman_config_get', rte_eth_cman_config_get]
alias rte_ethdev_rte_eth_call_rx_callbacks = ExternalFunction['rte_eth_call_rx_callbacks', rte_eth_call_rx_callbacks]
alias rte_ethdev_rte_eth_rx_burst = ExternalFunction['rte_eth_rx_burst', rte_eth_rx_burst]
alias rte_ethdev_rte_eth_rx_queue_count = ExternalFunction['rte_eth_rx_queue_count', rte_eth_rx_queue_count]
alias rte_ethdev_rte_eth_rx_descriptor_status = ExternalFunction['rte_eth_rx_descriptor_status', rte_eth_rx_descriptor_status]
alias rte_ethdev_rte_eth_tx_descriptor_status = ExternalFunction['rte_eth_tx_descriptor_status', rte_eth_tx_descriptor_status]
alias rte_ethdev_rte_eth_call_tx_callbacks = ExternalFunction['rte_eth_call_tx_callbacks', rte_eth_call_tx_callbacks]
alias rte_ethdev_rte_eth_tx_burst = ExternalFunction['rte_eth_tx_burst', rte_eth_tx_burst]
alias rte_ethdev_rte_eth_tx_prepare = ExternalFunction['rte_eth_tx_prepare', rte_eth_tx_prepare]
alias rte_ethdev_rte_eth_tx_buffer_flush = ExternalFunction['rte_eth_tx_buffer_flush', rte_eth_tx_buffer_flush]
alias rte_ethdev_rte_eth_tx_buffer = ExternalFunction['rte_eth_tx_buffer', rte_eth_tx_buffer]
alias rte_ethdev_rte_eth_recycle_mbufs = ExternalFunction['rte_eth_recycle_mbufs', rte_eth_recycle_mbufs]
alias rte_ethdev_rte_eth_buffer_split_get_supported_hdr_ptypes = ExternalFunction['rte_eth_buffer_split_get_supported_hdr_ptypes', rte_eth_buffer_split_get_supported_hdr_ptypes]
alias rte_ethdev_rte_eth_tx_queue_count = ExternalFunction['rte_eth_tx_queue_count', rte_eth_tx_queue_count]

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
struct rte_ethdev(Copyable, Movable):
    var lib: DLHandle
    
    var remove: rte_ethdev_remove.type
    var rename: rte_ethdev_rename.type
    var renameat: rte_ethdev_renameat.type
    var fclose: rte_ethdev_fclose.type
    var tmpfile: rte_ethdev_tmpfile.type
    var tmpnam: rte_ethdev_tmpnam.type
    var tmpnam_r: rte_ethdev_tmpnam_r.type
    var tempnam: rte_ethdev_tempnam.type
    var fflush: rte_ethdev_fflush.type
    var fflush_unlocked: rte_ethdev_fflush_unlocked.type
    var fopen: rte_ethdev_fopen.type
    var freopen: rte_ethdev_freopen.type
    var fdopen: rte_ethdev_fdopen.type
    var fmemopen: rte_ethdev_fmemopen.type
    var open_memstream: rte_ethdev_open_memstream.type
    var setbuf: rte_ethdev_setbuf.type
    var setvbuf: rte_ethdev_setvbuf.type
    var setbuffer: rte_ethdev_setbuffer.type
    var setlinebuf: rte_ethdev_setlinebuf.type
    var fprintf: rte_ethdev_fprintf.type
    var printf: rte_ethdev_printf.type
    var sprintf: rte_ethdev_sprintf.type
    var vfprintf: rte_ethdev_vfprintf.type
    var vprintf: rte_ethdev_vprintf.type
    var vsprintf: rte_ethdev_vsprintf.type
    var snprintf: rte_ethdev_snprintf.type
    var vsnprintf: rte_ethdev_vsnprintf.type
    var vdprintf: rte_ethdev_vdprintf.type
    var dprintf: rte_ethdev_dprintf.type
    var fscanf: rte_ethdev_fscanf.type
    var scanf: rte_ethdev_scanf.type
    var sscanf: rte_ethdev_sscanf.type
    var vfscanf: rte_ethdev_vfscanf.type
    var vscanf: rte_ethdev_vscanf.type
    var vsscanf: rte_ethdev_vsscanf.type
    var fgetc: rte_ethdev_fgetc.type
    var getc: rte_ethdev_getc.type
    var getchar: rte_ethdev_getchar.type
    var getc_unlocked: rte_ethdev_getc_unlocked.type
    var getchar_unlocked: rte_ethdev_getchar_unlocked.type
    var fgetc_unlocked: rte_ethdev_fgetc_unlocked.type
    var fputc: rte_ethdev_fputc.type
    var putc: rte_ethdev_putc.type
    var putchar: rte_ethdev_putchar.type
    var fputc_unlocked: rte_ethdev_fputc_unlocked.type
    var putc_unlocked: rte_ethdev_putc_unlocked.type
    var putchar_unlocked: rte_ethdev_putchar_unlocked.type
    var getw: rte_ethdev_getw.type
    var putw: rte_ethdev_putw.type
    var fgets: rte_ethdev_fgets.type
    var getdelim: rte_ethdev_getdelim.type
    var getline: rte_ethdev_getline.type
    var fputs: rte_ethdev_fputs.type
    var puts: rte_ethdev_puts.type
    var ungetc: rte_ethdev_ungetc.type
    var fread: rte_ethdev_fread.type
    var fwrite: rte_ethdev_fwrite.type
    var fread_unlocked: rte_ethdev_fread_unlocked.type
    var fwrite_unlocked: rte_ethdev_fwrite_unlocked.type
    var fseek: rte_ethdev_fseek.type
    var ftell: rte_ethdev_ftell.type
    var rewind: rte_ethdev_rewind.type
    var fseeko: rte_ethdev_fseeko.type
    var ftello: rte_ethdev_ftello.type
    var fgetpos: rte_ethdev_fgetpos.type
    var fsetpos: rte_ethdev_fsetpos.type
    var clearerr: rte_ethdev_clearerr.type
    var feof: rte_ethdev_feof.type
    var ferror: rte_ethdev_ferror.type
    var clearerr_unlocked: rte_ethdev_clearerr_unlocked.type
    var feof_unlocked: rte_ethdev_feof_unlocked.type
    var ferror_unlocked: rte_ethdev_ferror_unlocked.type
    var perror: rte_ethdev_perror.type
    var fileno: rte_ethdev_fileno.type
    var fileno_unlocked: rte_ethdev_fileno_unlocked.type
    var pclose: rte_ethdev_pclose.type
    var popen: rte_ethdev_popen.type
    var ctermid: rte_ethdev_ctermid.type
    var flockfile: rte_ethdev_flockfile.type
    var ftrylockfile: rte_ethdev_ftrylockfile.type
    var funlockfile: rte_ethdev_funlockfile.type
    var alloca: rte_ethdev_alloca.type
    var sched_setparam: rte_ethdev_sched_setparam.type
    var sched_getparam: rte_ethdev_sched_getparam.type
    var sched_setscheduler: rte_ethdev_sched_setscheduler.type
    var sched_getscheduler: rte_ethdev_sched_getscheduler.type
    var sched_yield: rte_ethdev_sched_yield.type
    var sched_get_priority_max: rte_ethdev_sched_get_priority_max.type
    var sched_get_priority_min: rte_ethdev_sched_get_priority_min.type
    var sched_rr_get_interval: rte_ethdev_sched_rr_get_interval.type
    var rte_is_aligned: rte_ethdev_rte_is_aligned.type
    var rte_str_to_size: rte_ethdev_rte_str_to_size.type
    var rte_size_to_str: rte_ethdev_rte_size_to_str.type
    var rte_exit: rte_ethdev_rte_exit.type
    var rte_openlog_stream: rte_ethdev_rte_openlog_stream.type
    var rte_log_get_stream: rte_ethdev_rte_log_get_stream.type
    var rte_log_set_global_level: rte_ethdev_rte_log_set_global_level.type
    var rte_log_get_global_level: rte_ethdev_rte_log_get_global_level.type
    var rte_log_get_level: rte_ethdev_rte_log_get_level.type
    var rte_log_can_log: rte_ethdev_rte_log_can_log.type
    var rte_log_set_level_pattern: rte_ethdev_rte_log_set_level_pattern.type
    var rte_log_set_level_regexp: rte_ethdev_rte_log_set_level_regexp.type
    var rte_log_set_level: rte_ethdev_rte_log_set_level.type
    var rte_log_cur_msg_loglevel: rte_ethdev_rte_log_cur_msg_loglevel.type
    var rte_log_cur_msg_logtype: rte_ethdev_rte_log_cur_msg_logtype.type
    var rte_log_register: rte_ethdev_rte_log_register.type
    var rte_log_register_type_and_pick_level: rte_ethdev_rte_log_register_type_and_pick_level.type
    var rte_log_list_types: rte_ethdev_rte_log_list_types.type
    var rte_log_dump: rte_ethdev_rte_log_dump.type
    var rte_log: rte_ethdev_rte_log.type
    var rte_vlog: rte_ethdev_rte_vlog.type
    var rte_dump_stack: rte_ethdev_rte_dump_stack.type
    var rte_bit_relaxed_get32: rte_ethdev_rte_bit_relaxed_get32.type
    var rte_bit_relaxed_set32: rte_ethdev_rte_bit_relaxed_set32.type
    var rte_bit_relaxed_clear32: rte_ethdev_rte_bit_relaxed_clear32.type
    var rte_bit_relaxed_test_and_set32: rte_ethdev_rte_bit_relaxed_test_and_set32.type
    var rte_bit_relaxed_test_and_clear32: rte_ethdev_rte_bit_relaxed_test_and_clear32.type
    var rte_bit_relaxed_get64: rte_ethdev_rte_bit_relaxed_get64.type
    var rte_bit_relaxed_set64: rte_ethdev_rte_bit_relaxed_set64.type
    var rte_bit_relaxed_clear64: rte_ethdev_rte_bit_relaxed_clear64.type
    var rte_bit_relaxed_test_and_set64: rte_ethdev_rte_bit_relaxed_test_and_set64.type
    var rte_bit_relaxed_test_and_clear64: rte_ethdev_rte_bit_relaxed_test_and_clear64.type
    var rte_clz32: rte_ethdev_rte_clz32.type
    var rte_clz64: rte_ethdev_rte_clz64.type
    var rte_ctz32: rte_ethdev_rte_ctz32.type
    var rte_ctz64: rte_ethdev_rte_ctz64.type
    var rte_popcount32: rte_ethdev_rte_popcount32.type
    var rte_popcount64: rte_ethdev_rte_popcount64.type
    var rte_ffs32: rte_ethdev_rte_ffs32.type
    var rte_ffs64: rte_ethdev_rte_ffs64.type
    var rte_combine32ms1b: rte_ethdev_rte_combine32ms1b.type
    var rte_combine64ms1b: rte_ethdev_rte_combine64ms1b.type
    var rte_bsf32: rte_ethdev_rte_bsf32.type
    var rte_bsf32_safe: rte_ethdev_rte_bsf32_safe.type
    var rte_bsf64: rte_ethdev_rte_bsf64.type
    var rte_bsf64_safe: rte_ethdev_rte_bsf64_safe.type
    var rte_fls_u32: rte_ethdev_rte_fls_u32.type
    var rte_fls_u64: rte_ethdev_rte_fls_u64.type
    var rte_is_power_of_2: rte_ethdev_rte_is_power_of_2.type
    var rte_align32pow2: rte_ethdev_rte_align32pow2.type
    var rte_align32prevpow2: rte_ethdev_rte_align32prevpow2.type
    var rte_align64pow2: rte_ethdev_rte_align64pow2.type
    var rte_align64prevpow2: rte_ethdev_rte_align64prevpow2.type
    var rte_log2_u32: rte_ethdev_rte_log2_u32.type
    var rte_log2_u64: rte_ethdev_rte_log2_u64.type
    var rte_epoll_wait: rte_ethdev_rte_epoll_wait.type
    var rte_epoll_wait_interruptible: rte_ethdev_rte_epoll_wait_interruptible.type
    var rte_epoll_ctl: rte_ethdev_rte_epoll_ctl.type
    var rte_intr_callback_register: rte_ethdev_rte_intr_callback_register.type
    var rte_intr_callback_unregister: rte_ethdev_rte_intr_callback_unregister.type
    var rte_intr_callback_unregister_pending: rte_ethdev_rte_intr_callback_unregister_pending.type
    var rte_intr_callback_unregister_sync: rte_ethdev_rte_intr_callback_unregister_sync.type
    var rte_intr_enable: rte_ethdev_rte_intr_enable.type
    var rte_intr_disable: rte_ethdev_rte_intr_disable.type
    var rte_intr_ack: rte_ethdev_rte_intr_ack.type
    var rte_thread_is_intr: rte_ethdev_rte_thread_is_intr.type
    var rte_intr_instance_alloc: rte_ethdev_rte_intr_instance_alloc.type
    var rte_intr_instance_free: rte_ethdev_rte_intr_instance_free.type
    var rte_intr_fd_set: rte_ethdev_rte_intr_fd_set.type
    var rte_intr_fd_get: rte_ethdev_rte_intr_fd_get.type
    var rte_intr_type_set: rte_ethdev_rte_intr_type_set.type
    var rte_intr_type_get: rte_ethdev_rte_intr_type_get.type
    var rte_intr_tls_epfd: rte_ethdev_rte_intr_tls_epfd.type
    var rte_intr_rx_ctl: rte_ethdev_rte_intr_rx_ctl.type
    var rte_intr_free_epoll_fd: rte_ethdev_rte_intr_free_epoll_fd.type
    var rte_intr_efd_enable: rte_ethdev_rte_intr_efd_enable.type
    var rte_intr_efd_disable: rte_ethdev_rte_intr_efd_disable.type
    var rte_intr_dp_is_en: rte_ethdev_rte_intr_dp_is_en.type
    var rte_intr_allow_others: rte_ethdev_rte_intr_allow_others.type
    var rte_intr_cap_multiple: rte_ethdev_rte_intr_cap_multiple.type
    var rte_intr_instance_dup: rte_ethdev_rte_intr_instance_dup.type
    var rte_intr_dev_fd_set: rte_ethdev_rte_intr_dev_fd_set.type
    var rte_intr_dev_fd_get: rte_ethdev_rte_intr_dev_fd_get.type
    var rte_intr_max_intr_set: rte_ethdev_rte_intr_max_intr_set.type
    var rte_intr_max_intr_get: rte_ethdev_rte_intr_max_intr_get.type
    var rte_intr_nb_efd_set: rte_ethdev_rte_intr_nb_efd_set.type
    var rte_intr_nb_efd_get: rte_ethdev_rte_intr_nb_efd_get.type
    var rte_intr_nb_intr_get: rte_ethdev_rte_intr_nb_intr_get.type
    var rte_intr_efd_counter_size_set: rte_ethdev_rte_intr_efd_counter_size_set.type
    var rte_intr_efd_counter_size_get: rte_ethdev_rte_intr_efd_counter_size_get.type
    var rte_intr_efds_index_set: rte_ethdev_rte_intr_efds_index_set.type
    var rte_intr_efds_index_get: rte_ethdev_rte_intr_efds_index_get.type
    var rte_intr_elist_index_set: rte_ethdev_rte_intr_elist_index_set.type
    var rte_intr_elist_index_get: rte_ethdev_rte_intr_elist_index_get.type
    var rte_intr_vec_list_alloc: rte_ethdev_rte_intr_vec_list_alloc.type
    var rte_intr_vec_list_index_set: rte_ethdev_rte_intr_vec_list_index_set.type
    var rte_intr_vec_list_index_get: rte_ethdev_rte_intr_vec_list_index_get.type
    var rte_intr_vec_list_free: rte_ethdev_rte_intr_vec_list_free.type
    var rte_intr_event_list_update: rte_ethdev_rte_intr_event_list_update.type
    var rte_intr_instance_windows_handle_get: rte_ethdev_rte_intr_instance_windows_handle_get.type
    var rte_intr_instance_windows_handle_set: rte_ethdev_rte_intr_instance_windows_handle_set.type
    var rte_driver_name: rte_ethdev_rte_driver_name.type
    var rte_dev_bus: rte_ethdev_rte_dev_bus.type
    var rte_dev_bus_info: rte_ethdev_rte_dev_bus_info.type
    var rte_dev_devargs: rte_ethdev_rte_dev_devargs.type
    var rte_dev_driver: rte_ethdev_rte_dev_driver.type
    var rte_dev_name: rte_ethdev_rte_dev_name.type
    var rte_dev_numa_node: rte_ethdev_rte_dev_numa_node.type
    var rte_dev_is_probed: rte_ethdev_rte_dev_is_probed.type
    var rte_eal_hotplug_add: rte_ethdev_rte_eal_hotplug_add.type
    var rte_dev_probe: rte_ethdev_rte_dev_probe.type
    var rte_eal_hotplug_remove: rte_ethdev_rte_eal_hotplug_remove.type
    var rte_dev_remove: rte_ethdev_rte_dev_remove.type
    var rte_dev_iterator_init: rte_ethdev_rte_dev_iterator_init.type
    var rte_dev_iterator_next: rte_ethdev_rte_dev_iterator_next.type
    var rte_dev_event_callback_register: rte_ethdev_rte_dev_event_callback_register.type
    var rte_dev_event_callback_unregister: rte_ethdev_rte_dev_event_callback_unregister.type
    var rte_dev_event_callback_process: rte_ethdev_rte_dev_event_callback_process.type
    var rte_dev_event_monitor_start: rte_ethdev_rte_dev_event_monitor_start.type
    var rte_dev_event_monitor_stop: rte_ethdev_rte_dev_event_monitor_stop.type
    var rte_dev_hotplug_handle_enable: rte_ethdev_rte_dev_hotplug_handle_enable.type
    var rte_dev_hotplug_handle_disable: rte_ethdev_rte_dev_hotplug_handle_disable.type
    var rte_dev_dma_map: rte_ethdev_rte_dev_dma_map.type
    var rte_dev_dma_unmap: rte_ethdev_rte_dev_dma_unmap.type
    var rte_devargs_parse: rte_ethdev_rte_devargs_parse.type
    var rte_devargs_parsef: rte_ethdev_rte_devargs_parsef.type
    var rte_devargs_reset: rte_ethdev_rte_devargs_reset.type
    var rte_devargs_insert: rte_ethdev_rte_devargs_insert.type
    var rte_devargs_add: rte_ethdev_rte_devargs_add.type
    var rte_devargs_remove: rte_ethdev_rte_devargs_remove.type
    var rte_devargs_type_count: rte_ethdev_rte_devargs_type_count.type
    var rte_devargs_dump: rte_ethdev_rte_devargs_dump.type
    var rte_devargs_next: rte_ethdev_rte_devargs_next.type
    var rte_strerror: rte_ethdev_rte_strerror.type
    var imaxabs: rte_ethdev_imaxabs.type
    var imaxdiv: rte_ethdev_imaxdiv.type
    var strtoimax: rte_ethdev_strtoimax.type
    var strtoumax: rte_ethdev_strtoumax.type
    var wcstoimax: rte_ethdev_wcstoimax.type
    var wcstoumax: rte_ethdev_wcstoumax.type
    var clock: rte_ethdev_clock.type
    var time: rte_ethdev_time.type
    var difftime: rte_ethdev_difftime.type
    var mktime: rte_ethdev_mktime.type
    var strftime: rte_ethdev_strftime.type
    var strftime_l: rte_ethdev_strftime_l.type
    var gmtime: rte_ethdev_gmtime.type
    var localtime: rte_ethdev_localtime.type
    var gmtime_r: rte_ethdev_gmtime_r.type
    var localtime_r: rte_ethdev_localtime_r.type
    var asctime: rte_ethdev_asctime.type
    var ctime: rte_ethdev_ctime.type
    var asctime_r: rte_ethdev_asctime_r.type
    var ctime_r: rte_ethdev_ctime_r.type
    var tzset: rte_ethdev_tzset.type
    var timegm: rte_ethdev_timegm.type
    var timelocal: rte_ethdev_timelocal.type
    var dysize: rte_ethdev_dysize.type
    var nanosleep: rte_ethdev_nanosleep.type
    var clock_getres: rte_ethdev_clock_getres.type
    var clock_gettime: rte_ethdev_clock_gettime.type
    var clock_settime: rte_ethdev_clock_settime.type
    var clock_nanosleep: rte_ethdev_clock_nanosleep.type
    var clock_getcpuclockid: rte_ethdev_clock_getcpuclockid.type
    var timer_create: rte_ethdev_timer_create.type
    var timer_delete: rte_ethdev_timer_delete.type
    var timer_settime: rte_ethdev_timer_settime.type
    var timer_gettime: rte_ethdev_timer_gettime.type
    var timer_getoverrun: rte_ethdev_timer_getoverrun.type
    var timespec_get: rte_ethdev_timespec_get.type
    var memcpy: rte_ethdev_memcpy.type
    var memmove: rte_ethdev_memmove.type
    var memccpy: rte_ethdev_memccpy.type
    var memset: rte_ethdev_memset.type
    var memcmp: rte_ethdev_memcmp.type
    var memchr: rte_ethdev_memchr.type
    var strcpy: rte_ethdev_strcpy.type
    var strncpy: rte_ethdev_strncpy.type
    var strcat: rte_ethdev_strcat.type
    var strncat: rte_ethdev_strncat.type
    var strcmp: rte_ethdev_strcmp.type
    var strncmp: rte_ethdev_strncmp.type
    var strcoll: rte_ethdev_strcoll.type
    var strxfrm: rte_ethdev_strxfrm.type
    var strcoll_l: rte_ethdev_strcoll_l.type
    var strxfrm_l: rte_ethdev_strxfrm_l.type
    var strdup: rte_ethdev_strdup.type
    var strndup: rte_ethdev_strndup.type
    var strchr: rte_ethdev_strchr.type
    var strrchr: rte_ethdev_strrchr.type
    var strcspn: rte_ethdev_strcspn.type
    var strspn: rte_ethdev_strspn.type
    var strpbrk: rte_ethdev_strpbrk.type
    var strstr: rte_ethdev_strstr.type
    var strtok: rte_ethdev_strtok.type
    var strtok_r: rte_ethdev_strtok_r.type
    var strlen: rte_ethdev_strlen.type
    var strnlen: rte_ethdev_strnlen.type
    var strerror: rte_ethdev_strerror.type
    var strerror_r: rte_ethdev_strerror_r.type
    var strerror_l: rte_ethdev_strerror_l.type
    var bcmp: rte_ethdev_bcmp.type
    var bcopy: rte_ethdev_bcopy.type
    var bzero: rte_ethdev_bzero.type
    var index: rte_ethdev_index.type
    var rindex: rte_ethdev_rindex.type
    var ffs: rte_ethdev_ffs.type
    var ffsl: rte_ethdev_ffsl.type
    var ffsll: rte_ethdev_ffsll.type
    var strcasecmp: rte_ethdev_strcasecmp.type
    var strncasecmp: rte_ethdev_strncasecmp.type
    var strcasecmp_l: rte_ethdev_strcasecmp_l.type
    var strncasecmp_l: rte_ethdev_strncasecmp_l.type
    var explicit_bzero: rte_ethdev_explicit_bzero.type
    var strsep: rte_ethdev_strsep.type
    var strsignal: rte_ethdev_strsignal.type
    var stpcpy: rte_ethdev_stpcpy.type
    var stpncpy: rte_ethdev_stpncpy.type
    var rte_uuid_is_null: rte_ethdev_rte_uuid_is_null.type
    var rte_uuid_copy: rte_ethdev_rte_uuid_copy.type
    var rte_uuid_compare: rte_ethdev_rte_uuid_compare.type
    var rte_uuid_parse: rte_ethdev_rte_uuid_parse.type
    var rte_uuid_unparse: rte_ethdev_rte_uuid_unparse.type
    var rte_eal_process_type: rte_ethdev_rte_eal_process_type.type
    var rte_eal_iopl_init: rte_ethdev_rte_eal_iopl_init.type
    var rte_eal_init: rte_ethdev_rte_eal_init.type
    var rte_eal_cleanup: rte_ethdev_rte_eal_cleanup.type
    var rte_eal_primary_proc_alive: rte_ethdev_rte_eal_primary_proc_alive.type
    var rte_mp_disable: rte_ethdev_rte_mp_disable.type
    var rte_mp_action_register: rte_ethdev_rte_mp_action_register.type
    var rte_mp_action_unregister: rte_ethdev_rte_mp_action_unregister.type
    var rte_mp_sendmsg: rte_ethdev_rte_mp_sendmsg.type
    var rte_mp_request_sync: rte_ethdev_rte_mp_request_sync.type
    var rte_mp_request_async: rte_ethdev_rte_mp_request_async.type
    var rte_set_application_usage_hook: rte_ethdev_rte_set_application_usage_hook.type
    var rte_eal_has_hugepages: rte_ethdev_rte_eal_has_hugepages.type
    var rte_eal_has_pci: rte_ethdev_rte_eal_has_pci.type
    var rte_eal_create_uio_dev: rte_ethdev_rte_eal_create_uio_dev.type
    var rte_eal_vfio_intr_mode: rte_ethdev_rte_eal_vfio_intr_mode.type
    var rte_eal_vfio_get_vf_token: rte_ethdev_rte_eal_vfio_get_vf_token.type
    var rte_sys_gettid: rte_ethdev_rte_sys_gettid.type
    var rte_gettid: rte_ethdev_rte_gettid.type
    var rte_eal_get_baseaddr: rte_ethdev_rte_eal_get_baseaddr.type
    var rte_eal_iova_mode: rte_ethdev_rte_eal_iova_mode.type
    var rte_eal_mbuf_user_pool_ops: rte_ethdev_rte_eal_mbuf_user_pool_ops.type
    var rte_eal_get_runtime_dir: rte_ethdev_rte_eal_get_runtime_dir.type
    var rte_eal_parse_coremask: rte_ethdev_rte_eal_parse_coremask.type
    var rte_eal_remote_launch: rte_ethdev_rte_eal_remote_launch.type
    var rte_eal_mp_remote_launch: rte_ethdev_rte_eal_mp_remote_launch.type
    var rte_eal_get_lcore_state: rte_ethdev_rte_eal_get_lcore_state.type
    var rte_eal_wait_lcore: rte_ethdev_rte_eal_wait_lcore.type
    var rte_eal_mp_wait_lcore: rte_ethdev_rte_eal_mp_wait_lcore.type
    var rte_thread_create: rte_ethdev_rte_thread_create.type
    var rte_thread_create_control: rte_ethdev_rte_thread_create_control.type
    var rte_thread_create_internal_control: rte_ethdev_rte_thread_create_internal_control.type
    var rte_thread_join: rte_ethdev_rte_thread_join.type
    var rte_thread_detach: rte_ethdev_rte_thread_detach.type
    var rte_thread_self: rte_ethdev_rte_thread_self.type
    var rte_thread_set_name: rte_ethdev_rte_thread_set_name.type
    var rte_thread_set_prefixed_name: rte_ethdev_rte_thread_set_prefixed_name.type
    var rte_thread_equal: rte_ethdev_rte_thread_equal.type
    var rte_thread_attr_init: rte_ethdev_rte_thread_attr_init.type
    var rte_thread_attr_set_priority: rte_ethdev_rte_thread_attr_set_priority.type
    var rte_thread_get_priority: rte_ethdev_rte_thread_get_priority.type
    var rte_thread_set_priority: rte_ethdev_rte_thread_set_priority.type
    var rte_thread_key_create: rte_ethdev_rte_thread_key_create.type
    var rte_thread_key_delete: rte_ethdev_rte_thread_key_delete.type
    var rte_thread_value_set: rte_ethdev_rte_thread_value_set.type
    var rte_thread_value_get: rte_ethdev_rte_thread_value_get.type
    var rte_eal_lcore_role: rte_ethdev_rte_eal_lcore_role.type
    var rte_lcore_has_role: rte_ethdev_rte_lcore_has_role.type
    var rte_lcore_id: rte_ethdev_rte_lcore_id.type
    var rte_get_main_lcore: rte_ethdev_rte_get_main_lcore.type
    var rte_lcore_count: rte_ethdev_rte_lcore_count.type
    var rte_lcore_index: rte_ethdev_rte_lcore_index.type
    var rte_socket_id: rte_ethdev_rte_socket_id.type
    var rte_socket_count: rte_ethdev_rte_socket_count.type
    var rte_socket_id_by_idx: rte_ethdev_rte_socket_id_by_idx.type
    var rte_lcore_to_socket_id: rte_ethdev_rte_lcore_to_socket_id.type
    var rte_lcore_to_cpu_id: rte_ethdev_rte_lcore_to_cpu_id.type
    var rte_lcore_is_enabled: rte_ethdev_rte_lcore_is_enabled.type
    var rte_get_next_lcore: rte_ethdev_rte_get_next_lcore.type
    var rte_lcore_callback_register: rte_ethdev_rte_lcore_callback_register.type
    var rte_lcore_callback_unregister: rte_ethdev_rte_lcore_callback_unregister.type
    var rte_lcore_iterate: rte_ethdev_rte_lcore_iterate.type
    var rte_lcore_register_usage_cb: rte_ethdev_rte_lcore_register_usage_cb.type
    var rte_lcore_dump: rte_ethdev_rte_lcore_dump.type
    var rte_thread_register: rte_ethdev_rte_thread_register.type
    var rte_thread_unregister: rte_ethdev_rte_thread_unregister.type
    var rte_atomic_thread_fence: rte_ethdev_rte_atomic_thread_fence.type
    var rte_atomic16_cmpset: rte_ethdev_rte_atomic16_cmpset.type
    var rte_atomic16_exchange: rte_ethdev_rte_atomic16_exchange.type
    var rte_atomic16_init: rte_ethdev_rte_atomic16_init.type
    var rte_atomic16_read: rte_ethdev_rte_atomic16_read.type
    var rte_atomic16_set: rte_ethdev_rte_atomic16_set.type
    var rte_atomic16_add: rte_ethdev_rte_atomic16_add.type
    var rte_atomic16_sub: rte_ethdev_rte_atomic16_sub.type
    var rte_atomic16_inc: rte_ethdev_rte_atomic16_inc.type
    var rte_atomic16_dec: rte_ethdev_rte_atomic16_dec.type
    var rte_atomic16_add_return: rte_ethdev_rte_atomic16_add_return.type
    var rte_atomic16_sub_return: rte_ethdev_rte_atomic16_sub_return.type
    var rte_atomic16_inc_and_test: rte_ethdev_rte_atomic16_inc_and_test.type
    var rte_atomic16_dec_and_test: rte_ethdev_rte_atomic16_dec_and_test.type
    var rte_atomic16_test_and_set: rte_ethdev_rte_atomic16_test_and_set.type
    var rte_atomic16_clear: rte_ethdev_rte_atomic16_clear.type
    var rte_atomic32_cmpset: rte_ethdev_rte_atomic32_cmpset.type
    var rte_atomic32_exchange: rte_ethdev_rte_atomic32_exchange.type
    var rte_atomic32_init: rte_ethdev_rte_atomic32_init.type
    var rte_atomic32_read: rte_ethdev_rte_atomic32_read.type
    var rte_atomic32_set: rte_ethdev_rte_atomic32_set.type
    var rte_atomic32_add: rte_ethdev_rte_atomic32_add.type
    var rte_atomic32_sub: rte_ethdev_rte_atomic32_sub.type
    var rte_atomic32_inc: rte_ethdev_rte_atomic32_inc.type
    var rte_atomic32_dec: rte_ethdev_rte_atomic32_dec.type
    var rte_atomic32_add_return: rte_ethdev_rte_atomic32_add_return.type
    var rte_atomic32_sub_return: rte_ethdev_rte_atomic32_sub_return.type
    var rte_atomic32_inc_and_test: rte_ethdev_rte_atomic32_inc_and_test.type
    var rte_atomic32_dec_and_test: rte_ethdev_rte_atomic32_dec_and_test.type
    var rte_atomic32_test_and_set: rte_ethdev_rte_atomic32_test_and_set.type
    var rte_atomic32_clear: rte_ethdev_rte_atomic32_clear.type
    var rte_atomic64_cmpset: rte_ethdev_rte_atomic64_cmpset.type
    var rte_atomic64_exchange: rte_ethdev_rte_atomic64_exchange.type
    var rte_atomic64_init: rte_ethdev_rte_atomic64_init.type
    var rte_atomic64_read: rte_ethdev_rte_atomic64_read.type
    var rte_atomic64_set: rte_ethdev_rte_atomic64_set.type
    var rte_atomic64_add: rte_ethdev_rte_atomic64_add.type
    var rte_atomic64_sub: rte_ethdev_rte_atomic64_sub.type
    var rte_atomic64_inc: rte_ethdev_rte_atomic64_inc.type
    var rte_atomic64_dec: rte_ethdev_rte_atomic64_dec.type
    var rte_atomic64_add_return: rte_ethdev_rte_atomic64_add_return.type
    var rte_atomic64_sub_return: rte_ethdev_rte_atomic64_sub_return.type
    var rte_atomic64_inc_and_test: rte_ethdev_rte_atomic64_inc_and_test.type
    var rte_atomic64_dec_and_test: rte_ethdev_rte_atomic64_dec_and_test.type
    var rte_atomic64_test_and_set: rte_ethdev_rte_atomic64_test_and_set.type
    var rte_atomic64_clear: rte_ethdev_rte_atomic64_clear.type
    var rte_atomic128_cmp_exchange: rte_ethdev_rte_atomic128_cmp_exchange.type
    var rte_pause: rte_ethdev_rte_pause.type
    var rte_wait_until_equal_16: rte_ethdev_rte_wait_until_equal_16.type
    var rte_wait_until_equal_32: rte_ethdev_rte_wait_until_equal_32.type
    var rte_wait_until_equal_64: rte_ethdev_rte_wait_until_equal_64.type
    var rte_spinlock_init: rte_ethdev_rte_spinlock_init.type
    var rte_spinlock_lock: rte_ethdev_rte_spinlock_lock.type
    var rte_spinlock_unlock: rte_ethdev_rte_spinlock_unlock.type
    var rte_spinlock_trylock: rte_ethdev_rte_spinlock_trylock.type
    var rte_spinlock_is_locked: rte_ethdev_rte_spinlock_is_locked.type
    var rte_tm_supported: rte_ethdev_rte_tm_supported.type
    var rte_spinlock_lock_tm: rte_ethdev_rte_spinlock_lock_tm.type
    var rte_spinlock_unlock_tm: rte_ethdev_rte_spinlock_unlock_tm.type
    var rte_spinlock_trylock_tm: rte_ethdev_rte_spinlock_trylock_tm.type
    var rte_spinlock_recursive_init: rte_ethdev_rte_spinlock_recursive_init.type
    var rte_spinlock_recursive_lock: rte_ethdev_rte_spinlock_recursive_lock.type
    var rte_spinlock_recursive_unlock: rte_ethdev_rte_spinlock_recursive_unlock.type
    var rte_spinlock_recursive_trylock: rte_ethdev_rte_spinlock_recursive_trylock.type
    var rte_spinlock_recursive_lock_tm: rte_ethdev_rte_spinlock_recursive_lock_tm.type
    var rte_spinlock_recursive_unlock_tm: rte_ethdev_rte_spinlock_recursive_unlock_tm.type
    var rte_spinlock_recursive_trylock_tm: rte_ethdev_rte_spinlock_recursive_trylock_tm.type
    var rte_power_monitor: rte_ethdev_rte_power_monitor.type
    var rte_power_monitor_wakeup: rte_ethdev_rte_power_monitor_wakeup.type
    var rte_power_pause: rte_ethdev_rte_power_pause.type
    var rte_power_monitor_multi: rte_ethdev_rte_power_monitor_multi.type
    var rte_get_tsc_hz: rte_ethdev_rte_get_tsc_hz.type
    var rte_get_tsc_cycles: rte_ethdev_rte_get_tsc_cycles.type
    var rte_get_timer_cycles: rte_ethdev_rte_get_timer_cycles.type
    var rte_get_timer_hz: rte_ethdev_rte_get_timer_hz.type
    var rte_delay_ms: rte_ethdev_rte_delay_ms.type
    var rte_delay_us_block: rte_ethdev_rte_delay_us_block.type
    var rte_delay_us_sleep: rte_ethdev_rte_delay_us_sleep.type
    var rte_delay_us_callback_register: rte_ethdev_rte_delay_us_callback_register.type
    var rte_rdtsc: rte_ethdev_rte_rdtsc.type
    var rte_rdtsc_precise: rte_ethdev_rte_rdtsc_precise.type
    var isalnum: rte_ethdev_isalnum.type
    var isalpha: rte_ethdev_isalpha.type
    var iscntrl: rte_ethdev_iscntrl.type
    var isdigit: rte_ethdev_isdigit.type
    var islower: rte_ethdev_islower.type
    var isgraph: rte_ethdev_isgraph.type
    var isprint: rte_ethdev_isprint.type
    var ispunct: rte_ethdev_ispunct.type
    var isspace: rte_ethdev_isspace.type
    var isupper: rte_ethdev_isupper.type
    var isxdigit: rte_ethdev_isxdigit.type
    var tolower: rte_ethdev_tolower.type
    var toupper: rte_ethdev_toupper.type
    var isblank: rte_ethdev_isblank.type
    var isascii: rte_ethdev_isascii.type
    var toascii: rte_ethdev_toascii.type
    var isalnum_l: rte_ethdev_isalnum_l.type
    var isalpha_l: rte_ethdev_isalpha_l.type
    var iscntrl_l: rte_ethdev_iscntrl_l.type
    var isdigit_l: rte_ethdev_isdigit_l.type
    var islower_l: rte_ethdev_islower_l.type
    var isgraph_l: rte_ethdev_isgraph_l.type
    var isprint_l: rte_ethdev_isprint_l.type
    var ispunct_l: rte_ethdev_ispunct_l.type
    var isspace_l: rte_ethdev_isspace_l.type
    var isupper_l: rte_ethdev_isupper_l.type
    var isxdigit_l: rte_ethdev_isxdigit_l.type
    var isblank_l: rte_ethdev_isblank_l.type
    var tolower_l: rte_ethdev_tolower_l.type
    var toupper_l: rte_ethdev_toupper_l.type
    var rte_strsplit: rte_ethdev_rte_strsplit.type
    var rte_strlcpy: rte_ethdev_rte_strlcpy.type
    var rte_strlcat: rte_ethdev_rte_strlcat.type
    var rte_strscpy: rte_ethdev_rte_strscpy.type
    var rte_str_skip_leading_spaces: rte_ethdev_rte_str_skip_leading_spaces.type
    var rte_trace_is_enabled: rte_ethdev_rte_trace_is_enabled.type
    var rte_trace_feature_is_enabled: rte_ethdev_rte_trace_feature_is_enabled.type
    var rte_trace_mode_set: rte_ethdev_rte_trace_mode_set.type
    var rte_trace_mode_get: rte_ethdev_rte_trace_mode_get.type
    var rte_trace_pattern: rte_ethdev_rte_trace_pattern.type
    var rte_trace_regexp: rte_ethdev_rte_trace_regexp.type
    var rte_trace_save: rte_ethdev_rte_trace_save.type
    var rte_trace_metadata_dump: rte_ethdev_rte_trace_metadata_dump.type
    var rte_trace_dump: rte_ethdev_rte_trace_dump.type
    var rte_trace_point_enable: rte_ethdev_rte_trace_point_enable.type
    var rte_trace_point_disable: rte_ethdev_rte_trace_point_disable.type
    var rte_trace_point_is_enabled: rte_ethdev_rte_trace_point_is_enabled.type
    var rte_trace_point_lookup: rte_ethdev_rte_trace_point_lookup.type
    var rte_ethdev_trace_rx_burst_empty: rte_ethdev_rte_ethdev_trace_rx_burst_empty.type
    var rte_ethdev_trace_rx_burst_nonempty: rte_ethdev_rte_ethdev_trace_rx_burst_nonempty.type
    var rte_ethdev_trace_tx_burst: rte_ethdev_rte_ethdev_trace_tx_burst.type
    var rte_eth_trace_call_rx_callbacks_empty: rte_ethdev_rte_eth_trace_call_rx_callbacks_empty.type
    var rte_eth_trace_call_rx_callbacks_nonempty: rte_ethdev_rte_eth_trace_call_rx_callbacks_nonempty.type
    var rte_eth_trace_call_tx_callbacks: rte_ethdev_rte_eth_trace_call_tx_callbacks.type
    var rte_eth_trace_tx_buffer_drop_callback: rte_ethdev_rte_eth_trace_tx_buffer_drop_callback.type
    var rte_eth_trace_tx_buffer_count_callback: rte_ethdev_rte_eth_trace_tx_buffer_count_callback.type
    var rte_eth_trace_tx_queue_count: rte_ethdev_rte_eth_trace_tx_queue_count.type
    var rte_eth_iterator_init: rte_ethdev_rte_eth_iterator_init.type
    var rte_eth_iterator_next: rte_ethdev_rte_eth_iterator_next.type
    var rte_eth_iterator_cleanup: rte_ethdev_rte_eth_iterator_cleanup.type
    var rte_eth_rss_hf_refine: rte_ethdev_rte_eth_rss_hf_refine.type
    var rte_srand: rte_ethdev_rte_srand.type
    var rte_rand: rte_ethdev_rte_rand.type
    var rte_rand_max: rte_ethdev_rte_rand_max.type
    var rte_drand: rte_ethdev_rte_drand.type
    var rte_rwlock_init: rte_ethdev_rte_rwlock_init.type
    var rte_rwlock_read_lock: rte_ethdev_rte_rwlock_read_lock.type
    var rte_rwlock_read_trylock: rte_ethdev_rte_rwlock_read_trylock.type
    var rte_rwlock_read_unlock: rte_ethdev_rte_rwlock_read_unlock.type
    var rte_rwlock_write_trylock: rte_ethdev_rte_rwlock_write_trylock.type
    var rte_rwlock_write_lock: rte_ethdev_rte_rwlock_write_lock.type
    var rte_rwlock_write_unlock: rte_ethdev_rte_rwlock_write_unlock.type
    var rte_rwlock_write_is_locked: rte_ethdev_rte_rwlock_write_is_locked.type
    var rte_rwlock_read_lock_tm: rte_ethdev_rte_rwlock_read_lock_tm.type
    var rte_rwlock_read_unlock_tm: rte_ethdev_rte_rwlock_read_unlock_tm.type
    var rte_rwlock_write_lock_tm: rte_ethdev_rte_rwlock_write_lock_tm.type
    var rte_rwlock_write_unlock_tm: rte_ethdev_rte_rwlock_write_unlock_tm.type
    var rte_mcfg_mem_get_lock: rte_ethdev_rte_mcfg_mem_get_lock.type
    var rte_mcfg_tailq_get_lock: rte_ethdev_rte_mcfg_tailq_get_lock.type
    var rte_mcfg_mempool_get_lock: rte_ethdev_rte_mcfg_mempool_get_lock.type
    var rte_mcfg_timer_get_lock: rte_ethdev_rte_mcfg_timer_get_lock.type
    var rte_mcfg_ethdev_get_lock: rte_ethdev_rte_mcfg_ethdev_get_lock.type
    var rte_mcfg_mem_read_lock: rte_ethdev_rte_mcfg_mem_read_lock.type
    var rte_mcfg_mem_read_unlock: rte_ethdev_rte_mcfg_mem_read_unlock.type
    var rte_mcfg_mem_write_lock: rte_ethdev_rte_mcfg_mem_write_lock.type
    var rte_mcfg_mem_write_unlock: rte_ethdev_rte_mcfg_mem_write_unlock.type
    var rte_mcfg_tailq_read_lock: rte_ethdev_rte_mcfg_tailq_read_lock.type
    var rte_mcfg_tailq_read_unlock: rte_ethdev_rte_mcfg_tailq_read_unlock.type
    var rte_mcfg_tailq_write_lock: rte_ethdev_rte_mcfg_tailq_write_lock.type
    var rte_mcfg_tailq_write_unlock: rte_ethdev_rte_mcfg_tailq_write_unlock.type
    var rte_mcfg_mempool_read_lock: rte_ethdev_rte_mcfg_mempool_read_lock.type
    var rte_mcfg_mempool_read_unlock: rte_ethdev_rte_mcfg_mempool_read_unlock.type
    var rte_mcfg_mempool_write_lock: rte_ethdev_rte_mcfg_mempool_write_lock.type
    var rte_mcfg_mempool_write_unlock: rte_ethdev_rte_mcfg_mempool_write_unlock.type
    var rte_mcfg_timer_lock: rte_ethdev_rte_mcfg_timer_lock.type
    var rte_mcfg_timer_unlock: rte_ethdev_rte_mcfg_timer_unlock.type
    var rte_mcfg_get_single_file_segments: rte_ethdev_rte_mcfg_get_single_file_segments.type
    var rte_fbarray_init: rte_ethdev_rte_fbarray_init.type
    var rte_fbarray_attach: rte_ethdev_rte_fbarray_attach.type
    var rte_fbarray_destroy: rte_ethdev_rte_fbarray_destroy.type
    var rte_fbarray_detach: rte_ethdev_rte_fbarray_detach.type
    var rte_fbarray_get: rte_ethdev_rte_fbarray_get.type
    var rte_fbarray_find_idx: rte_ethdev_rte_fbarray_find_idx.type
    var rte_fbarray_set_used: rte_ethdev_rte_fbarray_set_used.type
    var rte_fbarray_set_free: rte_ethdev_rte_fbarray_set_free.type
    var rte_fbarray_is_used: rte_ethdev_rte_fbarray_is_used.type
    var rte_fbarray_find_next_free: rte_ethdev_rte_fbarray_find_next_free.type
    var rte_fbarray_find_next_used: rte_ethdev_rte_fbarray_find_next_used.type
    var rte_fbarray_find_next_n_free: rte_ethdev_rte_fbarray_find_next_n_free.type
    var rte_fbarray_find_next_n_used: rte_ethdev_rte_fbarray_find_next_n_used.type
    var rte_fbarray_find_contig_free: rte_ethdev_rte_fbarray_find_contig_free.type
    var rte_fbarray_find_contig_used: rte_ethdev_rte_fbarray_find_contig_used.type
    var rte_fbarray_find_prev_free: rte_ethdev_rte_fbarray_find_prev_free.type
    var rte_fbarray_find_prev_used: rte_ethdev_rte_fbarray_find_prev_used.type
    var rte_fbarray_find_prev_n_free: rte_ethdev_rte_fbarray_find_prev_n_free.type
    var rte_fbarray_find_prev_n_used: rte_ethdev_rte_fbarray_find_prev_n_used.type
    var rte_fbarray_find_rev_contig_free: rte_ethdev_rte_fbarray_find_rev_contig_free.type
    var rte_fbarray_find_rev_contig_used: rte_ethdev_rte_fbarray_find_rev_contig_used.type
    var rte_fbarray_find_biggest_free: rte_ethdev_rte_fbarray_find_biggest_free.type
    var rte_fbarray_find_biggest_used: rte_ethdev_rte_fbarray_find_biggest_used.type
    var rte_fbarray_find_rev_biggest_free: rte_ethdev_rte_fbarray_find_rev_biggest_free.type
    var rte_fbarray_find_rev_biggest_used: rte_ethdev_rte_fbarray_find_rev_biggest_used.type
    var rte_fbarray_dump_metadata: rte_ethdev_rte_fbarray_dump_metadata.type
    var rte_mem_lock_page: rte_ethdev_rte_mem_lock_page.type
    var rte_mem_virt2phy: rte_ethdev_rte_mem_virt2phy.type
    var rte_mem_virt2iova: rte_ethdev_rte_mem_virt2iova.type
    var rte_mem_iova2virt: rte_ethdev_rte_mem_iova2virt.type
    var rte_mem_virt2memseg: rte_ethdev_rte_mem_virt2memseg.type
    var rte_mem_virt2memseg_list: rte_ethdev_rte_mem_virt2memseg_list.type
    var rte_memseg_walk: rte_ethdev_rte_memseg_walk.type
    var rte_memseg_contig_walk: rte_ethdev_rte_memseg_contig_walk.type
    var rte_memseg_list_walk: rte_ethdev_rte_memseg_list_walk.type
    var rte_memseg_walk_thread_unsafe: rte_ethdev_rte_memseg_walk_thread_unsafe.type
    var rte_memseg_contig_walk_thread_unsafe: rte_ethdev_rte_memseg_contig_walk_thread_unsafe.type
    var rte_memseg_list_walk_thread_unsafe: rte_ethdev_rte_memseg_list_walk_thread_unsafe.type
    var rte_memseg_get_fd: rte_ethdev_rte_memseg_get_fd.type
    var rte_memseg_get_fd_thread_unsafe: rte_ethdev_rte_memseg_get_fd_thread_unsafe.type
    var rte_memseg_get_fd_offset: rte_ethdev_rte_memseg_get_fd_offset.type
    var rte_memseg_get_fd_offset_thread_unsafe: rte_ethdev_rte_memseg_get_fd_offset_thread_unsafe.type
    var rte_extmem_register: rte_ethdev_rte_extmem_register.type
    var rte_extmem_unregister: rte_ethdev_rte_extmem_unregister.type
    var rte_extmem_attach: rte_ethdev_rte_extmem_attach.type
    var rte_extmem_detach: rte_ethdev_rte_extmem_detach.type
    var rte_dump_physmem_layout: rte_ethdev_rte_dump_physmem_layout.type
    var rte_eal_get_physmem_size: rte_ethdev_rte_eal_get_physmem_size.type
    var rte_memory_get_nchannel: rte_ethdev_rte_memory_get_nchannel.type
    var rte_memory_get_nrank: rte_ethdev_rte_memory_get_nrank.type
    var rte_mem_check_dma_mask: rte_ethdev_rte_mem_check_dma_mask.type
    var rte_mem_check_dma_mask_thread_unsafe: rte_ethdev_rte_mem_check_dma_mask_thread_unsafe.type
    var rte_mem_set_dma_mask: rte_ethdev_rte_mem_set_dma_mask.type
    var rte_eal_using_phys_addrs: rte_ethdev_rte_eal_using_phys_addrs.type
    var rte_mem_event_callback_register: rte_ethdev_rte_mem_event_callback_register.type
    var rte_mem_event_callback_unregister: rte_ethdev_rte_mem_event_callback_unregister.type
    var rte_mem_alloc_validator_register: rte_ethdev_rte_mem_alloc_validator_register.type
    var rte_mem_alloc_validator_unregister: rte_ethdev_rte_mem_alloc_validator_unregister.type
    var rte_memzero_explicit: rte_ethdev_rte_memzero_explicit.type
    var rte_memzone_max_set: rte_ethdev_rte_memzone_max_set.type
    var rte_memzone_max_get: rte_ethdev_rte_memzone_max_get.type
    var rte_memzone_reserve: rte_ethdev_rte_memzone_reserve.type
    var rte_memzone_reserve_aligned: rte_ethdev_rte_memzone_reserve_aligned.type
    var rte_memzone_reserve_bounded: rte_ethdev_rte_memzone_reserve_bounded.type
    var rte_memzone_free: rte_ethdev_rte_memzone_free.type
    var rte_memzone_lookup: rte_ethdev_rte_memzone_lookup.type
    var rte_memzone_dump: rte_ethdev_rte_memzone_dump.type
    var rte_memzone_walk: rte_ethdev_rte_memzone_walk.type
    var rte_ring_get_memsize_elem: rte_ethdev_rte_ring_get_memsize_elem.type
    var rte_ring_create_elem: rte_ethdev_rte_ring_create_elem.type
    var rte_ring_mp_enqueue_bulk_elem: rte_ethdev_rte_ring_mp_enqueue_bulk_elem.type
    var rte_ring_sp_enqueue_bulk_elem: rte_ethdev_rte_ring_sp_enqueue_bulk_elem.type
    var rte_ring_mp_hts_enqueue_bulk_elem: rte_ethdev_rte_ring_mp_hts_enqueue_bulk_elem.type
    var rte_ring_mc_hts_dequeue_bulk_elem: rte_ethdev_rte_ring_mc_hts_dequeue_bulk_elem.type
    var rte_ring_mp_hts_enqueue_burst_elem: rte_ethdev_rte_ring_mp_hts_enqueue_burst_elem.type
    var rte_ring_mc_hts_dequeue_burst_elem: rte_ethdev_rte_ring_mc_hts_dequeue_burst_elem.type
    var rte_ring_mp_hts_enqueue_bulk: rte_ethdev_rte_ring_mp_hts_enqueue_bulk.type
    var rte_ring_mc_hts_dequeue_bulk: rte_ethdev_rte_ring_mc_hts_dequeue_bulk.type
    var rte_ring_mp_hts_enqueue_burst: rte_ethdev_rte_ring_mp_hts_enqueue_burst.type
    var rte_ring_mc_hts_dequeue_burst: rte_ethdev_rte_ring_mc_hts_dequeue_burst.type
    var rte_ring_mp_rts_enqueue_bulk_elem: rte_ethdev_rte_ring_mp_rts_enqueue_bulk_elem.type
    var rte_ring_mc_rts_dequeue_bulk_elem: rte_ethdev_rte_ring_mc_rts_dequeue_bulk_elem.type
    var rte_ring_mp_rts_enqueue_burst_elem: rte_ethdev_rte_ring_mp_rts_enqueue_burst_elem.type
    var rte_ring_mc_rts_dequeue_burst_elem: rte_ethdev_rte_ring_mc_rts_dequeue_burst_elem.type
    var rte_ring_mp_rts_enqueue_bulk: rte_ethdev_rte_ring_mp_rts_enqueue_bulk.type
    var rte_ring_mc_rts_dequeue_bulk: rte_ethdev_rte_ring_mc_rts_dequeue_bulk.type
    var rte_ring_mp_rts_enqueue_burst: rte_ethdev_rte_ring_mp_rts_enqueue_burst.type
    var rte_ring_mc_rts_dequeue_burst: rte_ethdev_rte_ring_mc_rts_dequeue_burst.type
    var rte_ring_get_prod_htd_max: rte_ethdev_rte_ring_get_prod_htd_max.type
    var rte_ring_set_prod_htd_max: rte_ethdev_rte_ring_set_prod_htd_max.type
    var rte_ring_get_cons_htd_max: rte_ethdev_rte_ring_get_cons_htd_max.type
    var rte_ring_set_cons_htd_max: rte_ethdev_rte_ring_set_cons_htd_max.type
    var rte_ring_enqueue_bulk_elem: rte_ethdev_rte_ring_enqueue_bulk_elem.type
    var rte_ring_mp_enqueue_elem: rte_ethdev_rte_ring_mp_enqueue_elem.type
    var rte_ring_sp_enqueue_elem: rte_ethdev_rte_ring_sp_enqueue_elem.type
    var rte_ring_enqueue_elem: rte_ethdev_rte_ring_enqueue_elem.type
    var rte_ring_mc_dequeue_bulk_elem: rte_ethdev_rte_ring_mc_dequeue_bulk_elem.type
    var rte_ring_sc_dequeue_bulk_elem: rte_ethdev_rte_ring_sc_dequeue_bulk_elem.type
    var rte_ring_dequeue_bulk_elem: rte_ethdev_rte_ring_dequeue_bulk_elem.type
    var rte_ring_mc_dequeue_elem: rte_ethdev_rte_ring_mc_dequeue_elem.type
    var rte_ring_sc_dequeue_elem: rte_ethdev_rte_ring_sc_dequeue_elem.type
    var rte_ring_dequeue_elem: rte_ethdev_rte_ring_dequeue_elem.type
    var rte_ring_mp_enqueue_burst_elem: rte_ethdev_rte_ring_mp_enqueue_burst_elem.type
    var rte_ring_sp_enqueue_burst_elem: rte_ethdev_rte_ring_sp_enqueue_burst_elem.type
    var rte_ring_enqueue_burst_elem: rte_ethdev_rte_ring_enqueue_burst_elem.type
    var rte_ring_mc_dequeue_burst_elem: rte_ethdev_rte_ring_mc_dequeue_burst_elem.type
    var rte_ring_sc_dequeue_burst_elem: rte_ethdev_rte_ring_sc_dequeue_burst_elem.type
    var rte_ring_dequeue_burst_elem: rte_ethdev_rte_ring_dequeue_burst_elem.type
    var rte_ring_enqueue_bulk_elem_start: rte_ethdev_rte_ring_enqueue_bulk_elem_start.type
    var rte_ring_enqueue_bulk_start: rte_ethdev_rte_ring_enqueue_bulk_start.type
    var rte_ring_enqueue_burst_elem_start: rte_ethdev_rte_ring_enqueue_burst_elem_start.type
    var rte_ring_enqueue_burst_start: rte_ethdev_rte_ring_enqueue_burst_start.type
    var rte_ring_enqueue_elem_finish: rte_ethdev_rte_ring_enqueue_elem_finish.type
    var rte_ring_enqueue_finish: rte_ethdev_rte_ring_enqueue_finish.type
    var rte_ring_dequeue_bulk_elem_start: rte_ethdev_rte_ring_dequeue_bulk_elem_start.type
    var rte_ring_dequeue_bulk_start: rte_ethdev_rte_ring_dequeue_bulk_start.type
    var rte_ring_dequeue_burst_elem_start: rte_ethdev_rte_ring_dequeue_burst_elem_start.type
    var rte_ring_dequeue_burst_start: rte_ethdev_rte_ring_dequeue_burst_start.type
    var rte_ring_dequeue_elem_finish: rte_ethdev_rte_ring_dequeue_elem_finish.type
    var rte_ring_dequeue_finish: rte_ethdev_rte_ring_dequeue_finish.type
    var rte_ring_enqueue_zc_bulk_elem_start: rte_ethdev_rte_ring_enqueue_zc_bulk_elem_start.type
    var rte_ring_enqueue_zc_bulk_start: rte_ethdev_rte_ring_enqueue_zc_bulk_start.type
    var rte_ring_enqueue_zc_burst_elem_start: rte_ethdev_rte_ring_enqueue_zc_burst_elem_start.type
    var rte_ring_enqueue_zc_burst_start: rte_ethdev_rte_ring_enqueue_zc_burst_start.type
    var rte_ring_enqueue_zc_elem_finish: rte_ethdev_rte_ring_enqueue_zc_elem_finish.type
    var rte_ring_enqueue_zc_finish: rte_ethdev_rte_ring_enqueue_zc_finish.type
    var rte_ring_dequeue_zc_bulk_elem_start: rte_ethdev_rte_ring_dequeue_zc_bulk_elem_start.type
    var rte_ring_dequeue_zc_bulk_start: rte_ethdev_rte_ring_dequeue_zc_bulk_start.type
    var rte_ring_dequeue_zc_burst_elem_start: rte_ethdev_rte_ring_dequeue_zc_burst_elem_start.type
    var rte_ring_dequeue_zc_burst_start: rte_ethdev_rte_ring_dequeue_zc_burst_start.type
    var rte_ring_dequeue_zc_elem_finish: rte_ethdev_rte_ring_dequeue_zc_elem_finish.type
    var rte_ring_dequeue_zc_finish: rte_ethdev_rte_ring_dequeue_zc_finish.type
    var rte_ring_get_memsize: rte_ethdev_rte_ring_get_memsize.type
    var rte_ring_init: rte_ethdev_rte_ring_init.type
    var rte_ring_free: rte_ethdev_rte_ring_free.type
    var rte_ring_create: rte_ethdev_rte_ring_create.type
    var rte_ring_dump: rte_ethdev_rte_ring_dump.type
    var rte_ring_headtail_dump: rte_ethdev_rte_ring_headtail_dump.type
    var rte_ring_mp_enqueue_bulk: rte_ethdev_rte_ring_mp_enqueue_bulk.type
    var rte_ring_sp_enqueue_bulk: rte_ethdev_rte_ring_sp_enqueue_bulk.type
    var rte_ring_enqueue_bulk: rte_ethdev_rte_ring_enqueue_bulk.type
    var rte_ring_mp_enqueue: rte_ethdev_rte_ring_mp_enqueue.type
    var rte_ring_sp_enqueue: rte_ethdev_rte_ring_sp_enqueue.type
    var rte_ring_enqueue: rte_ethdev_rte_ring_enqueue.type
    var rte_ring_mc_dequeue_bulk: rte_ethdev_rte_ring_mc_dequeue_bulk.type
    var rte_ring_sc_dequeue_bulk: rte_ethdev_rte_ring_sc_dequeue_bulk.type
    var rte_ring_dequeue_bulk: rte_ethdev_rte_ring_dequeue_bulk.type
    var rte_ring_mc_dequeue: rte_ethdev_rte_ring_mc_dequeue.type
    var rte_ring_sc_dequeue: rte_ethdev_rte_ring_sc_dequeue.type
    var rte_ring_dequeue: rte_ethdev_rte_ring_dequeue.type
    var rte_ring_reset: rte_ethdev_rte_ring_reset.type
    var rte_ring_count: rte_ethdev_rte_ring_count.type
    var rte_ring_free_count: rte_ethdev_rte_ring_free_count.type
    var rte_ring_full: rte_ethdev_rte_ring_full.type
    var rte_ring_empty: rte_ethdev_rte_ring_empty.type
    var rte_ring_get_size: rte_ethdev_rte_ring_get_size.type
    var rte_ring_get_capacity: rte_ethdev_rte_ring_get_capacity.type
    var rte_ring_get_prod_sync_type: rte_ethdev_rte_ring_get_prod_sync_type.type
    var rte_ring_is_prod_single: rte_ethdev_rte_ring_is_prod_single.type
    var rte_ring_get_cons_sync_type: rte_ethdev_rte_ring_get_cons_sync_type.type
    var rte_ring_is_cons_single: rte_ethdev_rte_ring_is_cons_single.type
    var rte_ring_list_dump: rte_ethdev_rte_ring_list_dump.type
    var rte_ring_lookup: rte_ethdev_rte_ring_lookup.type
    var rte_ring_mp_enqueue_burst: rte_ethdev_rte_ring_mp_enqueue_burst.type
    var rte_ring_sp_enqueue_burst: rte_ethdev_rte_ring_sp_enqueue_burst.type
    var rte_ring_enqueue_burst: rte_ethdev_rte_ring_enqueue_burst.type
    var rte_ring_mc_dequeue_burst: rte_ethdev_rte_ring_mc_dequeue_burst.type
    var rte_ring_sc_dequeue_burst: rte_ethdev_rte_ring_sc_dequeue_burst.type
    var rte_ring_dequeue_burst: rte_ethdev_rte_ring_dequeue_burst.type
    var rte_mov16: rte_ethdev_rte_mov16.type
    var rte_mov32: rte_ethdev_rte_mov32.type
    var rte_mov64: rte_ethdev_rte_mov64.type
    var rte_mov128: rte_ethdev_rte_mov128.type
    var rte_mov256: rte_ethdev_rte_mov256.type
    var rte_mov48: rte_ethdev_rte_mov48.type
    var rte_mempool_trace_ops_dequeue_bulk: rte_ethdev_rte_mempool_trace_ops_dequeue_bulk.type
    var rte_mempool_trace_ops_dequeue_contig_blocks: rte_ethdev_rte_mempool_trace_ops_dequeue_contig_blocks.type
    var rte_mempool_trace_ops_enqueue_bulk: rte_ethdev_rte_mempool_trace_ops_enqueue_bulk.type
    var rte_mempool_trace_generic_put: rte_ethdev_rte_mempool_trace_generic_put.type
    var rte_mempool_trace_put_bulk: rte_ethdev_rte_mempool_trace_put_bulk.type
    var rte_mempool_trace_generic_get: rte_ethdev_rte_mempool_trace_generic_get.type
    var rte_mempool_trace_get_bulk: rte_ethdev_rte_mempool_trace_get_bulk.type
    var rte_mempool_trace_get_contig_blocks: rte_ethdev_rte_mempool_trace_get_contig_blocks.type
    var rte_mempool_trace_default_cache: rte_ethdev_rte_mempool_trace_default_cache.type
    var rte_mempool_trace_cache_flush: rte_ethdev_rte_mempool_trace_cache_flush.type
    var rte_mempool_get_header: rte_ethdev_rte_mempool_get_header.type
    var rte_mempool_from_obj: rte_ethdev_rte_mempool_from_obj.type
    var rte_mempool_get_trailer: rte_ethdev_rte_mempool_get_trailer.type
    var rte_mempool_check_cookies: rte_ethdev_rte_mempool_check_cookies.type
    var rte_mempool_contig_blocks_check_cookies: rte_ethdev_rte_mempool_contig_blocks_check_cookies.type
    var rte_mempool_op_calc_mem_size_helper: rte_ethdev_rte_mempool_op_calc_mem_size_helper.type
    var rte_mempool_op_calc_mem_size_default: rte_ethdev_rte_mempool_op_calc_mem_size_default.type
    var rte_mempool_op_populate_helper: rte_ethdev_rte_mempool_op_populate_helper.type
    var rte_mempool_op_populate_default: rte_ethdev_rte_mempool_op_populate_default.type
    var rte_mempool_get_ops: rte_ethdev_rte_mempool_get_ops.type
    var rte_mempool_ops_alloc: rte_ethdev_rte_mempool_ops_alloc.type
    var rte_mempool_ops_dequeue_bulk: rte_ethdev_rte_mempool_ops_dequeue_bulk.type
    var rte_mempool_ops_dequeue_contig_blocks: rte_ethdev_rte_mempool_ops_dequeue_contig_blocks.type
    var rte_mempool_ops_enqueue_bulk: rte_ethdev_rte_mempool_ops_enqueue_bulk.type
    var rte_mempool_ops_get_count: rte_ethdev_rte_mempool_ops_get_count.type
    var rte_mempool_ops_calc_mem_size: rte_ethdev_rte_mempool_ops_calc_mem_size.type
    var rte_mempool_ops_populate: rte_ethdev_rte_mempool_ops_populate.type
    var rte_mempool_ops_get_info: rte_ethdev_rte_mempool_ops_get_info.type
    var rte_mempool_ops_free: rte_ethdev_rte_mempool_ops_free.type
    var rte_mempool_set_ops_byname: rte_ethdev_rte_mempool_set_ops_byname.type
    var rte_mempool_register_ops: rte_ethdev_rte_mempool_register_ops.type
    var rte_mempool_free: rte_ethdev_rte_mempool_free.type
    var rte_mempool_create: rte_ethdev_rte_mempool_create.type
    var rte_mempool_create_empty: rte_ethdev_rte_mempool_create_empty.type
    var rte_mempool_populate_iova: rte_ethdev_rte_mempool_populate_iova.type
    var rte_mempool_populate_virt: rte_ethdev_rte_mempool_populate_virt.type
    var rte_mempool_populate_default: rte_ethdev_rte_mempool_populate_default.type
    var rte_mempool_populate_anon: rte_ethdev_rte_mempool_populate_anon.type
    var rte_mempool_obj_iter: rte_ethdev_rte_mempool_obj_iter.type
    var rte_mempool_mem_iter: rte_ethdev_rte_mempool_mem_iter.type
    var rte_mempool_dump: rte_ethdev_rte_mempool_dump.type
    var rte_mempool_cache_create: rte_ethdev_rte_mempool_cache_create.type
    var rte_mempool_cache_free: rte_ethdev_rte_mempool_cache_free.type
    var rte_mempool_default_cache: rte_ethdev_rte_mempool_default_cache.type
    var rte_mempool_cache_flush: rte_ethdev_rte_mempool_cache_flush.type
    var rte_mempool_do_generic_put: rte_ethdev_rte_mempool_do_generic_put.type
    var rte_mempool_generic_put: rte_ethdev_rte_mempool_generic_put.type
    var rte_mempool_put_bulk: rte_ethdev_rte_mempool_put_bulk.type
    var rte_mempool_put: rte_ethdev_rte_mempool_put.type
    var rte_mempool_do_generic_get: rte_ethdev_rte_mempool_do_generic_get.type
    var rte_mempool_generic_get: rte_ethdev_rte_mempool_generic_get.type
    var rte_mempool_get_bulk: rte_ethdev_rte_mempool_get_bulk.type
    var rte_mempool_get: rte_ethdev_rte_mempool_get.type
    var rte_mempool_get_contig_blocks: rte_ethdev_rte_mempool_get_contig_blocks.type
    var rte_mempool_avail_count: rte_ethdev_rte_mempool_avail_count.type
    var rte_mempool_in_use_count: rte_ethdev_rte_mempool_in_use_count.type
    var rte_mempool_full: rte_ethdev_rte_mempool_full.type
    var rte_mempool_empty: rte_ethdev_rte_mempool_empty.type
    var rte_mempool_virt2iova: rte_ethdev_rte_mempool_virt2iova.type
    var rte_mempool_audit: rte_ethdev_rte_mempool_audit.type
    var rte_mempool_get_priv: rte_ethdev_rte_mempool_get_priv.type
    var rte_mempool_list_dump: rte_ethdev_rte_mempool_list_dump.type
    var rte_mempool_lookup: rte_ethdev_rte_mempool_lookup.type
    var rte_mempool_calc_obj_size: rte_ethdev_rte_mempool_calc_obj_size.type
    var rte_mempool_walk: rte_ethdev_rte_mempool_walk.type
    var rte_mempool_get_mem_range: rte_ethdev_rte_mempool_get_mem_range.type
    var rte_mempool_get_obj_alignment: rte_ethdev_rte_mempool_get_obj_alignment.type
    var rte_mempool_get_page_size: rte_ethdev_rte_mempool_get_page_size.type
    var rte_mempool_event_callback_register: rte_ethdev_rte_mempool_event_callback_register.type
    var rte_mempool_event_callback_unregister: rte_ethdev_rte_mempool_event_callback_unregister.type
    var rte_prefetch0: rte_ethdev_rte_prefetch0.type
    var rte_prefetch1: rte_ethdev_rte_prefetch1.type
    var rte_prefetch2: rte_ethdev_rte_prefetch2.type
    var rte_prefetch_non_temporal: rte_ethdev_rte_prefetch_non_temporal.type
    var rte_prefetch0_write: rte_ethdev_rte_prefetch0_write.type
    var rte_prefetch1_write: rte_ethdev_rte_prefetch1_write.type
    var rte_prefetch2_write: rte_ethdev_rte_prefetch2_write.type
    var rte_cldemote: rte_ethdev_rte_cldemote.type
    var rte_get_ptype_l2_name: rte_ethdev_rte_get_ptype_l2_name.type
    var rte_get_ptype_l3_name: rte_ethdev_rte_get_ptype_l3_name.type
    var rte_get_ptype_l4_name: rte_ethdev_rte_get_ptype_l4_name.type
    var rte_get_ptype_tunnel_name: rte_ethdev_rte_get_ptype_tunnel_name.type
    var rte_get_ptype_inner_l2_name: rte_ethdev_rte_get_ptype_inner_l2_name.type
    var rte_get_ptype_inner_l3_name: rte_ethdev_rte_get_ptype_inner_l3_name.type
    var rte_get_ptype_inner_l4_name: rte_ethdev_rte_get_ptype_inner_l4_name.type
    var rte_get_ptype_name: rte_ethdev_rte_get_ptype_name.type
    var rte_constant_bswap16: rte_ethdev_rte_constant_bswap16.type
    var rte_constant_bswap32: rte_ethdev_rte_constant_bswap32.type
    var rte_constant_bswap64: rte_ethdev_rte_constant_bswap64.type
    var rte_get_rx_ol_flag_name: rte_ethdev_rte_get_rx_ol_flag_name.type
    var rte_get_rx_ol_flag_list: rte_ethdev_rte_get_rx_ol_flag_list.type
    var rte_get_tx_ol_flag_name: rte_ethdev_rte_get_tx_ol_flag_name.type
    var rte_get_tx_ol_flag_list: rte_ethdev_rte_get_tx_ol_flag_list.type
    var rte_mbuf_prefetch_part1: rte_ethdev_rte_mbuf_prefetch_part1.type
    var rte_mbuf_prefetch_part2: rte_ethdev_rte_mbuf_prefetch_part2.type
    var rte_pktmbuf_priv_size: rte_ethdev_rte_pktmbuf_priv_size.type
    var rte_mbuf_iova_get: rte_ethdev_rte_mbuf_iova_get.type
    var rte_mbuf_iova_set: rte_ethdev_rte_mbuf_iova_set.type
    var rte_mbuf_data_iova: rte_ethdev_rte_mbuf_data_iova.type
    var rte_mbuf_data_iova_default: rte_ethdev_rte_mbuf_data_iova_default.type
    var rte_mbuf_from_indirect: rte_ethdev_rte_mbuf_from_indirect.type
    var rte_mbuf_buf_addr: rte_ethdev_rte_mbuf_buf_addr.type
    var rte_mbuf_data_addr_default: rte_ethdev_rte_mbuf_data_addr_default.type
    var rte_mbuf_to_baddr: rte_ethdev_rte_mbuf_to_baddr.type
    var rte_mbuf_to_priv: rte_ethdev_rte_mbuf_to_priv.type
    var rte_pktmbuf_priv_flags: rte_ethdev_rte_pktmbuf_priv_flags.type
    var rte_mbuf_refcnt_read: rte_ethdev_rte_mbuf_refcnt_read.type
    var rte_mbuf_refcnt_set: rte_ethdev_rte_mbuf_refcnt_set.type
    var rte_mbuf_refcnt_update: rte_ethdev_rte_mbuf_refcnt_update.type
    var rte_mbuf_ext_refcnt_read: rte_ethdev_rte_mbuf_ext_refcnt_read.type
    var rte_mbuf_ext_refcnt_set: rte_ethdev_rte_mbuf_ext_refcnt_set.type
    var rte_mbuf_ext_refcnt_update: rte_ethdev_rte_mbuf_ext_refcnt_update.type
    var rte_mbuf_sanity_check: rte_ethdev_rte_mbuf_sanity_check.type
    var rte_mbuf_check: rte_ethdev_rte_mbuf_check.type
    var rte_mbuf_raw_alloc: rte_ethdev_rte_mbuf_raw_alloc.type
    var rte_mbuf_raw_alloc_bulk: rte_ethdev_rte_mbuf_raw_alloc_bulk.type
    var rte_mbuf_raw_free: rte_ethdev_rte_mbuf_raw_free.type
    var rte_mbuf_raw_free_bulk: rte_ethdev_rte_mbuf_raw_free_bulk.type
    var rte_pktmbuf_init: rte_ethdev_rte_pktmbuf_init.type
    var rte_pktmbuf_pool_init: rte_ethdev_rte_pktmbuf_pool_init.type
    var rte_pktmbuf_pool_create: rte_ethdev_rte_pktmbuf_pool_create.type
    var rte_pktmbuf_pool_create_by_ops: rte_ethdev_rte_pktmbuf_pool_create_by_ops.type
    var rte_pktmbuf_pool_create_extbuf: rte_ethdev_rte_pktmbuf_pool_create_extbuf.type
    var rte_pktmbuf_data_room_size: rte_ethdev_rte_pktmbuf_data_room_size.type
    var rte_pktmbuf_reset_headroom: rte_ethdev_rte_pktmbuf_reset_headroom.type
    var rte_pktmbuf_reset: rte_ethdev_rte_pktmbuf_reset.type
    var rte_pktmbuf_alloc: rte_ethdev_rte_pktmbuf_alloc.type
    var rte_pktmbuf_alloc_bulk: rte_ethdev_rte_pktmbuf_alloc_bulk.type
    var rte_pktmbuf_ext_shinfo_init_helper: rte_ethdev_rte_pktmbuf_ext_shinfo_init_helper.type
    var rte_pktmbuf_attach_extbuf: rte_ethdev_rte_pktmbuf_attach_extbuf.type
    var rte_mbuf_dynfield_copy: rte_ethdev_rte_mbuf_dynfield_copy.type
    var rte_pktmbuf_attach: rte_ethdev_rte_pktmbuf_attach.type
    var rte_pktmbuf_detach: rte_ethdev_rte_pktmbuf_detach.type
    var rte_pktmbuf_prefree_seg: rte_ethdev_rte_pktmbuf_prefree_seg.type
    var rte_pktmbuf_free_seg: rte_ethdev_rte_pktmbuf_free_seg.type
    var rte_pktmbuf_free: rte_ethdev_rte_pktmbuf_free.type
    var rte_pktmbuf_free_bulk: rte_ethdev_rte_pktmbuf_free_bulk.type
    var rte_pktmbuf_clone: rte_ethdev_rte_pktmbuf_clone.type
    var rte_pktmbuf_copy: rte_ethdev_rte_pktmbuf_copy.type
    var rte_pktmbuf_refcnt_update: rte_ethdev_rte_pktmbuf_refcnt_update.type
    var rte_pktmbuf_headroom: rte_ethdev_rte_pktmbuf_headroom.type
    var rte_pktmbuf_tailroom: rte_ethdev_rte_pktmbuf_tailroom.type
    var rte_pktmbuf_lastseg: rte_ethdev_rte_pktmbuf_lastseg.type
    var rte_pktmbuf_prepend: rte_ethdev_rte_pktmbuf_prepend.type
    var rte_pktmbuf_append: rte_ethdev_rte_pktmbuf_append.type
    var rte_pktmbuf_adj: rte_ethdev_rte_pktmbuf_adj.type
    var rte_pktmbuf_trim: rte_ethdev_rte_pktmbuf_trim.type
    var rte_pktmbuf_is_contiguous: rte_ethdev_rte_pktmbuf_is_contiguous.type
    var rte_pktmbuf_read: rte_ethdev_rte_pktmbuf_read.type
    var rte_pktmbuf_chain: rte_ethdev_rte_pktmbuf_chain.type
    var rte_mbuf_tx_offload: rte_ethdev_rte_mbuf_tx_offload.type
    var rte_validate_tx_offload: rte_ethdev_rte_validate_tx_offload.type
    var rte_pktmbuf_linearize: rte_ethdev_rte_pktmbuf_linearize.type
    var rte_pktmbuf_dump: rte_ethdev_rte_pktmbuf_dump.type
    var rte_mbuf_sched_queue_get: rte_ethdev_rte_mbuf_sched_queue_get.type
    var rte_mbuf_sched_traffic_class_get: rte_ethdev_rte_mbuf_sched_traffic_class_get.type
    var rte_mbuf_sched_color_get: rte_ethdev_rte_mbuf_sched_color_get.type
    var rte_mbuf_sched_get: rte_ethdev_rte_mbuf_sched_get.type
    var rte_mbuf_sched_queue_set: rte_ethdev_rte_mbuf_sched_queue_set.type
    var rte_mbuf_sched_traffic_class_set: rte_ethdev_rte_mbuf_sched_traffic_class_set.type
    var rte_mbuf_sched_color_set: rte_ethdev_rte_mbuf_sched_color_set.type
    var rte_mbuf_sched_set: rte_ethdev_rte_mbuf_sched_set.type
    var rte_is_same_ether_addr: rte_ethdev_rte_is_same_ether_addr.type
    var rte_is_zero_ether_addr: rte_ethdev_rte_is_zero_ether_addr.type
    var rte_is_unicast_ether_addr: rte_ethdev_rte_is_unicast_ether_addr.type
    var rte_is_multicast_ether_addr: rte_ethdev_rte_is_multicast_ether_addr.type
    var rte_is_broadcast_ether_addr: rte_ethdev_rte_is_broadcast_ether_addr.type
    var rte_is_universal_ether_addr: rte_ethdev_rte_is_universal_ether_addr.type
    var rte_is_local_admin_ether_addr: rte_ethdev_rte_is_local_admin_ether_addr.type
    var rte_is_valid_assigned_ether_addr: rte_ethdev_rte_is_valid_assigned_ether_addr.type
    var rte_eth_random_addr: rte_ethdev_rte_eth_random_addr.type
    var rte_ether_addr_copy: rte_ethdev_rte_ether_addr_copy.type
    var rte_ether_format_addr: rte_ethdev_rte_ether_format_addr.type
    var rte_ether_unformat_addr: rte_ethdev_rte_ether_unformat_addr.type
    var rte_vlan_strip: rte_ethdev_rte_vlan_strip.type
    var rte_vlan_insert: rte_ethdev_rte_vlan_insert.type
    var rte_net_make_rarp_packet: rte_ethdev_rte_net_make_rarp_packet.type
    var select: rte_ethdev_select.type
    var pselect: rte_ethdev_pselect.type
    var socket: rte_ethdev_socket.type
    var socketpair: rte_ethdev_socketpair.type
    var bind: rte_ethdev_bind.type
    var getsockname: rte_ethdev_getsockname.type
    var connect: rte_ethdev_connect.type
    var getpeername: rte_ethdev_getpeername.type
    var send: rte_ethdev_send.type
    var recv: rte_ethdev_recv.type
    var sendto: rte_ethdev_sendto.type
    var recvfrom: rte_ethdev_recvfrom.type
    var sendmsg: rte_ethdev_sendmsg.type
    var recvmsg: rte_ethdev_recvmsg.type
    var getsockopt: rte_ethdev_getsockopt.type
    var setsockopt: rte_ethdev_setsockopt.type
    var listen: rte_ethdev_listen.type
    var accept: rte_ethdev_accept.type
    var shutdown: rte_ethdev_shutdown.type
    var sockatmark: rte_ethdev_sockatmark.type
    var isfdtype: rte_ethdev_isfdtype.type
    var ntohl: rte_ethdev_ntohl.type
    var ntohs: rte_ethdev_ntohs.type
    var htonl: rte_ethdev_htonl.type
    var htons: rte_ethdev_htons.type
    var bindresvport: rte_ethdev_bindresvport.type
    var bindresvport6: rte_ethdev_bindresvport6.type
    var inet_addr: rte_ethdev_inet_addr.type
    var inet_lnaof: rte_ethdev_inet_lnaof.type
    var inet_makeaddr: rte_ethdev_inet_makeaddr.type
    var inet_netof: rte_ethdev_inet_netof.type
    var inet_network: rte_ethdev_inet_network.type
    var inet_ntoa: rte_ethdev_inet_ntoa.type
    var inet_pton: rte_ethdev_inet_pton.type
    var inet_ntop: rte_ethdev_inet_ntop.type
    var inet_aton: rte_ethdev_inet_aton.type
    var inet_neta: rte_ethdev_inet_neta.type
    var inet_net_ntop: rte_ethdev_inet_net_ntop.type
    var inet_net_pton: rte_ethdev_inet_net_pton.type
    var inet_nsap_addr: rte_ethdev_inet_nsap_addr.type
    var inet_nsap_ntoa: rte_ethdev_inet_nsap_ntoa.type
    var rte_raw_cksum: rte_ethdev_rte_raw_cksum.type
    var rte_raw_cksum_mbuf: rte_ethdev_rte_raw_cksum_mbuf.type
    var rte_ipv4_hdr_len: rte_ethdev_rte_ipv4_hdr_len.type
    var rte_ipv4_cksum: rte_ethdev_rte_ipv4_cksum.type
    var rte_ipv4_cksum_simple: rte_ethdev_rte_ipv4_cksum_simple.type
    var rte_ipv4_phdr_cksum: rte_ethdev_rte_ipv4_phdr_cksum.type
    var rte_ipv4_udptcp_cksum: rte_ethdev_rte_ipv4_udptcp_cksum.type
    var rte_ipv4_udptcp_cksum_mbuf: rte_ethdev_rte_ipv4_udptcp_cksum_mbuf.type
    var rte_ipv4_udptcp_cksum_verify: rte_ethdev_rte_ipv4_udptcp_cksum_verify.type
    var rte_ipv4_udptcp_cksum_mbuf_verify: rte_ethdev_rte_ipv4_udptcp_cksum_mbuf_verify.type
    var rte_ipv6_addr_eq: rte_ethdev_rte_ipv6_addr_eq.type
    var rte_ipv6_addr_mask: rte_ethdev_rte_ipv6_addr_mask.type
    var rte_ipv6_addr_eq_prefix: rte_ethdev_rte_ipv6_addr_eq_prefix.type
    var rte_ipv6_mask_depth: rte_ethdev_rte_ipv6_mask_depth.type
    var rte_ipv6_addr_is_unspec: rte_ethdev_rte_ipv6_addr_is_unspec.type
    var rte_ipv6_addr_is_loopback: rte_ethdev_rte_ipv6_addr_is_loopback.type
    var rte_ipv6_addr_is_linklocal: rte_ethdev_rte_ipv6_addr_is_linklocal.type
    var rte_ipv6_addr_is_sitelocal: rte_ethdev_rte_ipv6_addr_is_sitelocal.type
    var rte_ipv6_addr_is_v4compat: rte_ethdev_rte_ipv6_addr_is_v4compat.type
    var rte_ipv6_addr_is_v4mapped: rte_ethdev_rte_ipv6_addr_is_v4mapped.type
    var rte_ipv6_addr_is_mcast: rte_ethdev_rte_ipv6_addr_is_mcast.type
    var rte_ipv6_llocal_from_ethernet: rte_ethdev_rte_ipv6_llocal_from_ethernet.type
    var rte_ipv6_solnode_from_addr: rte_ethdev_rte_ipv6_solnode_from_addr.type
    var rte_ether_mcast_from_ipv6: rte_ethdev_rte_ether_mcast_from_ipv6.type
    var rte_ipv6_check_version: rte_ethdev_rte_ipv6_check_version.type
    var rte_ipv6_phdr_cksum: rte_ethdev_rte_ipv6_phdr_cksum.type
    var rte_ipv6_udptcp_cksum: rte_ethdev_rte_ipv6_udptcp_cksum.type
    var rte_ipv6_udptcp_cksum_mbuf: rte_ethdev_rte_ipv6_udptcp_cksum_mbuf.type
    var rte_ipv6_udptcp_cksum_verify: rte_ethdev_rte_ipv6_udptcp_cksum_verify.type
    var rte_ipv6_udptcp_cksum_mbuf_verify: rte_ethdev_rte_ipv6_udptcp_cksum_mbuf_verify.type
    var rte_ipv6_get_next_ext: rte_ethdev_rte_ipv6_get_next_ext.type
    var rte_mbuf_dynfield_register: rte_ethdev_rte_mbuf_dynfield_register.type
    var rte_mbuf_dynfield_register_offset: rte_ethdev_rte_mbuf_dynfield_register_offset.type
    var rte_mbuf_dynfield_lookup: rte_ethdev_rte_mbuf_dynfield_lookup.type
    var rte_mbuf_dynflag_register: rte_ethdev_rte_mbuf_dynflag_register.type
    var rte_mbuf_dynflag_register_bitnum: rte_ethdev_rte_mbuf_dynflag_register_bitnum.type
    var rte_mbuf_dynflag_lookup: rte_ethdev_rte_mbuf_dynflag_lookup.type
    var rte_mbuf_dyn_dump: rte_ethdev_rte_mbuf_dyn_dump.type
    var rte_mbuf_dyn_rx_timestamp_register: rte_ethdev_rte_mbuf_dyn_rx_timestamp_register.type
    var rte_mbuf_dyn_tx_timestamp_register: rte_ethdev_rte_mbuf_dyn_tx_timestamp_register.type
    var rte_meter_srtcm_profile_config: rte_ethdev_rte_meter_srtcm_profile_config.type
    var rte_meter_trtcm_profile_config: rte_ethdev_rte_meter_trtcm_profile_config.type
    var rte_meter_trtcm_rfc4115_profile_config: rte_ethdev_rte_meter_trtcm_rfc4115_profile_config.type
    var rte_meter_srtcm_config: rte_ethdev_rte_meter_srtcm_config.type
    var rte_meter_trtcm_config: rte_ethdev_rte_meter_trtcm_config.type
    var rte_meter_trtcm_rfc4115_config: rte_ethdev_rte_meter_trtcm_rfc4115_config.type
    var rte_meter_srtcm_color_blind_check: rte_ethdev_rte_meter_srtcm_color_blind_check.type
    var rte_meter_srtcm_color_aware_check: rte_ethdev_rte_meter_srtcm_color_aware_check.type
    var rte_meter_trtcm_color_blind_check: rte_ethdev_rte_meter_trtcm_color_blind_check.type
    var rte_meter_trtcm_color_aware_check: rte_ethdev_rte_meter_trtcm_color_aware_check.type
    var rte_meter_trtcm_rfc4115_color_blind_check: rte_ethdev_rte_meter_trtcm_rfc4115_color_blind_check.type
    var rte_meter_trtcm_rfc4115_color_aware_check: rte_ethdev_rte_meter_trtcm_rfc4115_color_aware_check.type
    var rte_flow_dynf_metadata_get: rte_ethdev_rte_flow_dynf_metadata_get.type
    var rte_flow_dynf_metadata_set: rte_ethdev_rte_flow_dynf_metadata_set.type
    var rte_flow_dev_dump: rte_ethdev_rte_flow_dev_dump.type
    var rte_flow_dynf_metadata_avail: rte_ethdev_rte_flow_dynf_metadata_avail.type
    var rte_flow_dynf_metadata_register: rte_ethdev_rte_flow_dynf_metadata_register.type
    var rte_flow_validate: rte_ethdev_rte_flow_validate.type
    var rte_flow_create: rte_ethdev_rte_flow_create.type
    var rte_flow_destroy: rte_ethdev_rte_flow_destroy.type
    var rte_flow_actions_update: rte_ethdev_rte_flow_actions_update.type
    var rte_flow_flush: rte_ethdev_rte_flow_flush.type
    var rte_flow_query: rte_ethdev_rte_flow_query.type
    var rte_flow_isolate: rte_ethdev_rte_flow_isolate.type
    var rte_flow_error_set: rte_ethdev_rte_flow_error_set.type
    var rte_flow_copy: rte_ethdev_rte_flow_copy.type
    var rte_flow_conv: rte_ethdev_rte_flow_conv.type
    var rte_flow_get_aged_flows: rte_ethdev_rte_flow_get_aged_flows.type
    var rte_flow_get_q_aged_flows: rte_ethdev_rte_flow_get_q_aged_flows.type
    var rte_flow_action_handle_create: rte_ethdev_rte_flow_action_handle_create.type
    var rte_flow_action_handle_destroy: rte_ethdev_rte_flow_action_handle_destroy.type
    var rte_flow_action_handle_update: rte_ethdev_rte_flow_action_handle_update.type
    var rte_flow_action_handle_query: rte_ethdev_rte_flow_action_handle_query.type
    var rte_flow_tunnel_decap_set: rte_ethdev_rte_flow_tunnel_decap_set.type
    var rte_flow_tunnel_match: rte_ethdev_rte_flow_tunnel_match.type
    var rte_flow_restore_info_dynflag: rte_ethdev_rte_flow_restore_info_dynflag.type
    var rte_flow_get_restore_info: rte_ethdev_rte_flow_get_restore_info.type
    var rte_flow_tunnel_action_decap_release: rte_ethdev_rte_flow_tunnel_action_decap_release.type
    var rte_flow_tunnel_item_release: rte_ethdev_rte_flow_tunnel_item_release.type
    var rte_flow_pick_transfer_proxy: rte_ethdev_rte_flow_pick_transfer_proxy.type
    var rte_flow_flex_item_create: rte_ethdev_rte_flow_flex_item_create.type
    var rte_flow_flex_item_release: rte_ethdev_rte_flow_flex_item_release.type
    var rte_flow_info_get: rte_ethdev_rte_flow_info_get.type
    var rte_flow_configure: rte_ethdev_rte_flow_configure.type
    var rte_flow_pattern_template_create: rte_ethdev_rte_flow_pattern_template_create.type
    var rte_flow_pattern_template_destroy: rte_ethdev_rte_flow_pattern_template_destroy.type
    var rte_flow_actions_template_create: rte_ethdev_rte_flow_actions_template_create.type
    var rte_flow_actions_template_destroy: rte_ethdev_rte_flow_actions_template_destroy.type
    var rte_flow_template_table_resizable: rte_ethdev_rte_flow_template_table_resizable.type
    var rte_flow_template_table_create: rte_ethdev_rte_flow_template_table_create.type
    var rte_flow_template_table_destroy: rte_ethdev_rte_flow_template_table_destroy.type
    var rte_flow_group_set_miss_actions: rte_ethdev_rte_flow_group_set_miss_actions.type
    var rte_flow_async_create: rte_ethdev_rte_flow_async_create.type
    var rte_flow_async_create_by_index: rte_ethdev_rte_flow_async_create_by_index.type
    var rte_flow_async_create_by_index_with_pattern: rte_ethdev_rte_flow_async_create_by_index_with_pattern.type
    var rte_flow_async_destroy: rte_ethdev_rte_flow_async_destroy.type
    var rte_flow_async_actions_update: rte_ethdev_rte_flow_async_actions_update.type
    var rte_flow_push: rte_ethdev_rte_flow_push.type
    var rte_flow_pull: rte_ethdev_rte_flow_pull.type
    var rte_flow_async_action_handle_create: rte_ethdev_rte_flow_async_action_handle_create.type
    var rte_flow_async_action_handle_destroy: rte_ethdev_rte_flow_async_action_handle_destroy.type
    var rte_flow_async_action_handle_update: rte_ethdev_rte_flow_async_action_handle_update.type
    var rte_flow_async_action_handle_query: rte_ethdev_rte_flow_async_action_handle_query.type
    var rte_flow_action_handle_query_update: rte_ethdev_rte_flow_action_handle_query_update.type
    var rte_flow_async_action_handle_query_update: rte_ethdev_rte_flow_async_action_handle_query_update.type
    var rte_flow_action_list_handle_create: rte_ethdev_rte_flow_action_list_handle_create.type
    var rte_flow_async_action_list_handle_create: rte_ethdev_rte_flow_async_action_list_handle_create.type
    var rte_flow_action_list_handle_destroy: rte_ethdev_rte_flow_action_list_handle_destroy.type
    var rte_flow_async_action_list_handle_destroy: rte_ethdev_rte_flow_async_action_list_handle_destroy.type
    var rte_flow_action_list_handle_query_update: rte_ethdev_rte_flow_action_list_handle_query_update.type
    var rte_flow_async_action_list_handle_query_update: rte_ethdev_rte_flow_async_action_list_handle_query_update.type
    var rte_flow_calc_table_hash: rte_ethdev_rte_flow_calc_table_hash.type
    var rte_flow_calc_encap_hash: rte_ethdev_rte_flow_calc_encap_hash.type
    var rte_flow_template_table_resize: rte_ethdev_rte_flow_template_table_resize.type
    var rte_flow_async_update_resized: rte_ethdev_rte_flow_async_update_resized.type
    var rte_flow_template_table_resize_complete: rte_ethdev_rte_flow_template_table_resize_complete.type
    var rte_eth_find_next_owned_by: rte_ethdev_rte_eth_find_next_owned_by.type
    var rte_eth_find_next: rte_ethdev_rte_eth_find_next.type
    var rte_eth_find_next_of: rte_ethdev_rte_eth_find_next_of.type
    var rte_eth_find_next_sibling: rte_ethdev_rte_eth_find_next_sibling.type
    var rte_eth_dev_owner_new: rte_ethdev_rte_eth_dev_owner_new.type
    var rte_eth_dev_owner_set: rte_ethdev_rte_eth_dev_owner_set.type
    var rte_eth_dev_owner_unset: rte_ethdev_rte_eth_dev_owner_unset.type
    var rte_eth_dev_owner_delete: rte_ethdev_rte_eth_dev_owner_delete.type
    var rte_eth_dev_owner_get: rte_ethdev_rte_eth_dev_owner_get.type
    var rte_eth_dev_count_avail: rte_ethdev_rte_eth_dev_count_avail.type
    var rte_eth_dev_count_total: rte_ethdev_rte_eth_dev_count_total.type
    var rte_eth_speed_bitflag: rte_ethdev_rte_eth_speed_bitflag.type
    var rte_eth_dev_rx_offload_name: rte_ethdev_rte_eth_dev_rx_offload_name.type
    var rte_eth_dev_tx_offload_name: rte_ethdev_rte_eth_dev_tx_offload_name.type
    var rte_eth_dev_capability_name: rte_ethdev_rte_eth_dev_capability_name.type
    var rte_eth_dev_configure: rte_ethdev_rte_eth_dev_configure.type
    var rte_eth_dev_is_removed: rte_ethdev_rte_eth_dev_is_removed.type
    var rte_eth_rx_queue_setup: rte_ethdev_rte_eth_rx_queue_setup.type
    var rte_eth_rx_hairpin_queue_setup: rte_ethdev_rte_eth_rx_hairpin_queue_setup.type
    var rte_eth_tx_queue_setup: rte_ethdev_rte_eth_tx_queue_setup.type
    var rte_eth_tx_hairpin_queue_setup: rte_ethdev_rte_eth_tx_hairpin_queue_setup.type
    var rte_eth_hairpin_get_peer_ports: rte_ethdev_rte_eth_hairpin_get_peer_ports.type
    var rte_eth_hairpin_bind: rte_ethdev_rte_eth_hairpin_bind.type
    var rte_eth_hairpin_unbind: rte_ethdev_rte_eth_hairpin_unbind.type
    var rte_eth_dev_count_aggr_ports: rte_ethdev_rte_eth_dev_count_aggr_ports.type
    var rte_eth_dev_map_aggr_tx_affinity: rte_ethdev_rte_eth_dev_map_aggr_tx_affinity.type
    var rte_eth_dev_socket_id: rte_ethdev_rte_eth_dev_socket_id.type
    var rte_eth_dev_is_valid_port: rte_ethdev_rte_eth_dev_is_valid_port.type
    var rte_eth_rx_queue_is_valid: rte_ethdev_rte_eth_rx_queue_is_valid.type
    var rte_eth_tx_queue_is_valid: rte_ethdev_rte_eth_tx_queue_is_valid.type
    var rte_eth_dev_rx_queue_start: rte_ethdev_rte_eth_dev_rx_queue_start.type
    var rte_eth_dev_rx_queue_stop: rte_ethdev_rte_eth_dev_rx_queue_stop.type
    var rte_eth_dev_tx_queue_start: rte_ethdev_rte_eth_dev_tx_queue_start.type
    var rte_eth_dev_tx_queue_stop: rte_ethdev_rte_eth_dev_tx_queue_stop.type
    var rte_eth_dev_start: rte_ethdev_rte_eth_dev_start.type
    var rte_eth_dev_stop: rte_ethdev_rte_eth_dev_stop.type
    var rte_eth_dev_set_link_up: rte_ethdev_rte_eth_dev_set_link_up.type
    var rte_eth_dev_set_link_down: rte_ethdev_rte_eth_dev_set_link_down.type
    var rte_eth_dev_close: rte_ethdev_rte_eth_dev_close.type
    var rte_eth_dev_reset: rte_ethdev_rte_eth_dev_reset.type
    var rte_eth_promiscuous_enable: rte_ethdev_rte_eth_promiscuous_enable.type
    var rte_eth_promiscuous_disable: rte_ethdev_rte_eth_promiscuous_disable.type
    var rte_eth_promiscuous_get: rte_ethdev_rte_eth_promiscuous_get.type
    var rte_eth_allmulticast_enable: rte_ethdev_rte_eth_allmulticast_enable.type
    var rte_eth_allmulticast_disable: rte_ethdev_rte_eth_allmulticast_disable.type
    var rte_eth_allmulticast_get: rte_ethdev_rte_eth_allmulticast_get.type
    var rte_eth_link_get: rte_ethdev_rte_eth_link_get.type
    var rte_eth_link_get_nowait: rte_ethdev_rte_eth_link_get_nowait.type
    var rte_eth_link_speed_to_str: rte_ethdev_rte_eth_link_speed_to_str.type
    var rte_eth_link_to_str: rte_ethdev_rte_eth_link_to_str.type
    var rte_eth_speed_lanes_get: rte_ethdev_rte_eth_speed_lanes_get.type
    var rte_eth_speed_lanes_set: rte_ethdev_rte_eth_speed_lanes_set.type
    var rte_eth_speed_lanes_get_capability: rte_ethdev_rte_eth_speed_lanes_get_capability.type
    var rte_eth_stats_get: rte_ethdev_rte_eth_stats_get.type
    var rte_eth_stats_reset: rte_ethdev_rte_eth_stats_reset.type
    var rte_eth_xstats_get_names: rte_ethdev_rte_eth_xstats_get_names.type
    var rte_eth_xstats_get: rte_ethdev_rte_eth_xstats_get.type
    var rte_eth_xstats_get_names_by_id: rte_ethdev_rte_eth_xstats_get_names_by_id.type
    var rte_eth_xstats_get_by_id: rte_ethdev_rte_eth_xstats_get_by_id.type
    var rte_eth_xstats_get_id_by_name: rte_ethdev_rte_eth_xstats_get_id_by_name.type
    var rte_eth_xstats_set_counter: rte_ethdev_rte_eth_xstats_set_counter.type
    var rte_eth_xstats_query_state: rte_ethdev_rte_eth_xstats_query_state.type
    var rte_eth_xstats_reset: rte_ethdev_rte_eth_xstats_reset.type
    var rte_eth_dev_set_tx_queue_stats_mapping: rte_ethdev_rte_eth_dev_set_tx_queue_stats_mapping.type
    var rte_eth_dev_set_rx_queue_stats_mapping: rte_ethdev_rte_eth_dev_set_rx_queue_stats_mapping.type
    var rte_eth_macaddr_get: rte_ethdev_rte_eth_macaddr_get.type
    var rte_eth_macaddrs_get: rte_ethdev_rte_eth_macaddrs_get.type
    var rte_eth_dev_info_get: rte_ethdev_rte_eth_dev_info_get.type
    var rte_eth_dev_conf_get: rte_ethdev_rte_eth_dev_conf_get.type
    var rte_eth_dev_fw_version_get: rte_ethdev_rte_eth_dev_fw_version_get.type
    var rte_eth_dev_get_supported_ptypes: rte_ethdev_rte_eth_dev_get_supported_ptypes.type
    var rte_eth_dev_set_ptypes: rte_ethdev_rte_eth_dev_set_ptypes.type
    var rte_eth_dev_get_mtu: rte_ethdev_rte_eth_dev_get_mtu.type
    var rte_eth_dev_set_mtu: rte_ethdev_rte_eth_dev_set_mtu.type
    var rte_eth_dev_vlan_filter: rte_ethdev_rte_eth_dev_vlan_filter.type
    var rte_eth_dev_set_vlan_strip_on_queue: rte_ethdev_rte_eth_dev_set_vlan_strip_on_queue.type
    var rte_eth_dev_set_vlan_ether_type: rte_ethdev_rte_eth_dev_set_vlan_ether_type.type
    var rte_eth_dev_set_vlan_offload: rte_ethdev_rte_eth_dev_set_vlan_offload.type
    var rte_eth_dev_get_vlan_offload: rte_ethdev_rte_eth_dev_get_vlan_offload.type
    var rte_eth_dev_set_vlan_pvid: rte_ethdev_rte_eth_dev_set_vlan_pvid.type
    var rte_eth_rx_avail_thresh_set: rte_ethdev_rte_eth_rx_avail_thresh_set.type
    var rte_eth_rx_avail_thresh_query: rte_ethdev_rte_eth_rx_avail_thresh_query.type
    var rte_eth_tx_buffer_init: rte_ethdev_rte_eth_tx_buffer_init.type
    var rte_eth_tx_buffer_set_err_callback: rte_ethdev_rte_eth_tx_buffer_set_err_callback.type
    var rte_eth_tx_buffer_drop_callback: rte_ethdev_rte_eth_tx_buffer_drop_callback.type
    var rte_eth_tx_buffer_count_callback: rte_ethdev_rte_eth_tx_buffer_count_callback.type
    var rte_eth_tx_done_cleanup: rte_ethdev_rte_eth_tx_done_cleanup.type
    var rte_eth_dev_callback_register: rte_ethdev_rte_eth_dev_callback_register.type
    var rte_eth_dev_callback_unregister: rte_ethdev_rte_eth_dev_callback_unregister.type
    var rte_eth_dev_rx_intr_enable: rte_ethdev_rte_eth_dev_rx_intr_enable.type
    var rte_eth_dev_rx_intr_disable: rte_ethdev_rte_eth_dev_rx_intr_disable.type
    var rte_eth_dev_rx_intr_ctl: rte_ethdev_rte_eth_dev_rx_intr_ctl.type
    var rte_eth_dev_rx_intr_ctl_q: rte_ethdev_rte_eth_dev_rx_intr_ctl_q.type
    var rte_eth_dev_rx_intr_ctl_q_get_fd: rte_ethdev_rte_eth_dev_rx_intr_ctl_q_get_fd.type
    var rte_eth_led_on: rte_ethdev_rte_eth_led_on.type
    var rte_eth_led_off: rte_ethdev_rte_eth_led_off.type
    var rte_eth_fec_get_capability: rte_ethdev_rte_eth_fec_get_capability.type
    var rte_eth_fec_get: rte_ethdev_rte_eth_fec_get.type
    var rte_eth_fec_set: rte_ethdev_rte_eth_fec_set.type
    var rte_eth_dev_flow_ctrl_get: rte_ethdev_rte_eth_dev_flow_ctrl_get.type
    var rte_eth_dev_flow_ctrl_set: rte_ethdev_rte_eth_dev_flow_ctrl_set.type
    var rte_eth_dev_priority_flow_ctrl_set: rte_ethdev_rte_eth_dev_priority_flow_ctrl_set.type
    var rte_eth_dev_mac_addr_add: rte_ethdev_rte_eth_dev_mac_addr_add.type
    var rte_eth_dev_priority_flow_ctrl_queue_info_get: rte_ethdev_rte_eth_dev_priority_flow_ctrl_queue_info_get.type
    var rte_eth_dev_priority_flow_ctrl_queue_configure: rte_ethdev_rte_eth_dev_priority_flow_ctrl_queue_configure.type
    var rte_eth_dev_mac_addr_remove: rte_ethdev_rte_eth_dev_mac_addr_remove.type
    var rte_eth_dev_default_mac_addr_set: rte_ethdev_rte_eth_dev_default_mac_addr_set.type
    var rte_eth_dev_rss_reta_update: rte_ethdev_rte_eth_dev_rss_reta_update.type
    var rte_eth_dev_rss_reta_query: rte_ethdev_rte_eth_dev_rss_reta_query.type
    var rte_eth_dev_uc_hash_table_set: rte_ethdev_rte_eth_dev_uc_hash_table_set.type
    var rte_eth_dev_uc_all_hash_table_set: rte_ethdev_rte_eth_dev_uc_all_hash_table_set.type
    var rte_eth_set_queue_rate_limit: rte_ethdev_rte_eth_set_queue_rate_limit.type
    var rte_eth_dev_rss_hash_update: rte_ethdev_rte_eth_dev_rss_hash_update.type
    var rte_eth_dev_rss_hash_conf_get: rte_ethdev_rte_eth_dev_rss_hash_conf_get.type
    var rte_eth_dev_rss_algo_name: rte_ethdev_rte_eth_dev_rss_algo_name.type
    var rte_eth_find_rss_algo: rte_ethdev_rte_eth_find_rss_algo.type
    var rte_eth_dev_udp_tunnel_port_add: rte_ethdev_rte_eth_dev_udp_tunnel_port_add.type
    var rte_eth_dev_udp_tunnel_port_delete: rte_ethdev_rte_eth_dev_udp_tunnel_port_delete.type
    var rte_eth_dev_get_dcb_info: rte_ethdev_rte_eth_dev_get_dcb_info.type
    var rte_eth_add_rx_callback: rte_ethdev_rte_eth_add_rx_callback.type
    var rte_eth_add_first_rx_callback: rte_ethdev_rte_eth_add_first_rx_callback.type
    var rte_eth_add_tx_callback: rte_ethdev_rte_eth_add_tx_callback.type
    var rte_eth_remove_rx_callback: rte_ethdev_rte_eth_remove_rx_callback.type
    var rte_eth_remove_tx_callback: rte_ethdev_rte_eth_remove_tx_callback.type
    var rte_eth_rx_queue_info_get: rte_ethdev_rte_eth_rx_queue_info_get.type
    var rte_eth_tx_queue_info_get: rte_ethdev_rte_eth_tx_queue_info_get.type
    var rte_eth_recycle_rx_queue_info_get: rte_ethdev_rte_eth_recycle_rx_queue_info_get.type
    var rte_eth_rx_burst_mode_get: rte_ethdev_rte_eth_rx_burst_mode_get.type
    var rte_eth_tx_burst_mode_get: rte_ethdev_rte_eth_tx_burst_mode_get.type
    var rte_eth_get_monitor_addr: rte_ethdev_rte_eth_get_monitor_addr.type
    var rte_eth_dev_get_reg_info_ext: rte_ethdev_rte_eth_dev_get_reg_info_ext.type
    var rte_eth_dev_get_reg_info: rte_ethdev_rte_eth_dev_get_reg_info.type
    var rte_eth_dev_get_eeprom_length: rte_ethdev_rte_eth_dev_get_eeprom_length.type
    var rte_eth_dev_get_eeprom: rte_ethdev_rte_eth_dev_get_eeprom.type
    var rte_eth_dev_set_eeprom: rte_ethdev_rte_eth_dev_set_eeprom.type
    var rte_eth_dev_get_module_info: rte_ethdev_rte_eth_dev_get_module_info.type
    var rte_eth_dev_get_module_eeprom: rte_ethdev_rte_eth_dev_get_module_eeprom.type
    var rte_eth_dev_set_mc_addr_list: rte_ethdev_rte_eth_dev_set_mc_addr_list.type
    var rte_eth_timesync_enable: rte_ethdev_rte_eth_timesync_enable.type
    var rte_eth_timesync_disable: rte_ethdev_rte_eth_timesync_disable.type
    var rte_eth_timesync_read_rx_timestamp: rte_ethdev_rte_eth_timesync_read_rx_timestamp.type
    var rte_eth_timesync_read_tx_timestamp: rte_ethdev_rte_eth_timesync_read_tx_timestamp.type
    var rte_eth_timesync_adjust_time: rte_ethdev_rte_eth_timesync_adjust_time.type
    var rte_eth_timesync_adjust_freq: rte_ethdev_rte_eth_timesync_adjust_freq.type
    var rte_eth_timesync_read_time: rte_ethdev_rte_eth_timesync_read_time.type
    var rte_eth_timesync_write_time: rte_ethdev_rte_eth_timesync_write_time.type
    var rte_eth_read_clock: rte_ethdev_rte_eth_read_clock.type
    var rte_eth_dev_get_port_by_name: rte_ethdev_rte_eth_dev_get_port_by_name.type
    var rte_eth_dev_get_name_by_port: rte_ethdev_rte_eth_dev_get_name_by_port.type
    var rte_eth_dev_adjust_nb_rx_tx_desc: rte_ethdev_rte_eth_dev_adjust_nb_rx_tx_desc.type
    var rte_eth_dev_pool_ops_supported: rte_ethdev_rte_eth_dev_pool_ops_supported.type
    var rte_eth_dev_get_sec_ctx: rte_ethdev_rte_eth_dev_get_sec_ctx.type
    var rte_eth_dev_hairpin_capability_get: rte_ethdev_rte_eth_dev_hairpin_capability_get.type
    var rte_eth_representor_info_get: rte_ethdev_rte_eth_representor_info_get.type
    var rte_eth_rx_metadata_negotiate: rte_ethdev_rte_eth_rx_metadata_negotiate.type
    var rte_eth_ip_reassembly_capability_get: rte_ethdev_rte_eth_ip_reassembly_capability_get.type
    var rte_eth_ip_reassembly_conf_get: rte_ethdev_rte_eth_ip_reassembly_conf_get.type
    var rte_eth_ip_reassembly_conf_set: rte_ethdev_rte_eth_ip_reassembly_conf_set.type
    var rte_eth_dev_priv_dump: rte_ethdev_rte_eth_dev_priv_dump.type
    var rte_eth_rx_descriptor_dump: rte_ethdev_rte_eth_rx_descriptor_dump.type
    var rte_eth_tx_descriptor_dump: rte_ethdev_rte_eth_tx_descriptor_dump.type
    var rte_eth_cman_info_get: rte_ethdev_rte_eth_cman_info_get.type
    var rte_eth_cman_config_init: rte_ethdev_rte_eth_cman_config_init.type
    var rte_eth_cman_config_set: rte_ethdev_rte_eth_cman_config_set.type
    var rte_eth_cman_config_get: rte_ethdev_rte_eth_cman_config_get.type
    var rte_eth_call_rx_callbacks: rte_ethdev_rte_eth_call_rx_callbacks.type
    var rte_eth_rx_burst: rte_ethdev_rte_eth_rx_burst.type
    var rte_eth_rx_queue_count: rte_ethdev_rte_eth_rx_queue_count.type
    var rte_eth_rx_descriptor_status: rte_ethdev_rte_eth_rx_descriptor_status.type
    var rte_eth_tx_descriptor_status: rte_ethdev_rte_eth_tx_descriptor_status.type
    var rte_eth_call_tx_callbacks: rte_ethdev_rte_eth_call_tx_callbacks.type
    var rte_eth_tx_burst: rte_ethdev_rte_eth_tx_burst.type
    var rte_eth_tx_prepare: rte_ethdev_rte_eth_tx_prepare.type
    var rte_eth_tx_buffer_flush: rte_ethdev_rte_eth_tx_buffer_flush.type
    var rte_eth_tx_buffer: rte_ethdev_rte_eth_tx_buffer.type
    var rte_eth_recycle_mbufs: rte_ethdev_rte_eth_recycle_mbufs.type
    var rte_eth_buffer_split_get_supported_hdr_ptypes: rte_ethdev_rte_eth_buffer_split_get_supported_hdr_ptypes.type
    var rte_eth_tx_queue_count: rte_ethdev_rte_eth_tx_queue_count.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_ethdev.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_ethdev from", 'librte_ethdev.so', ":\n", e)
            )

    
        self.remove = rte_ethdev_remove.load(self.lib)
        self.rename = rte_ethdev_rename.load(self.lib)
        self.renameat = rte_ethdev_renameat.load(self.lib)
        self.fclose = rte_ethdev_fclose.load(self.lib)
        self.tmpfile = rte_ethdev_tmpfile.load(self.lib)
        self.tmpnam = rte_ethdev_tmpnam.load(self.lib)
        self.tmpnam_r = rte_ethdev_tmpnam_r.load(self.lib)
        self.tempnam = rte_ethdev_tempnam.load(self.lib)
        self.fflush = rte_ethdev_fflush.load(self.lib)
        self.fflush_unlocked = rte_ethdev_fflush_unlocked.load(self.lib)
        self.fopen = rte_ethdev_fopen.load(self.lib)
        self.freopen = rte_ethdev_freopen.load(self.lib)
        self.fdopen = rte_ethdev_fdopen.load(self.lib)
        self.fmemopen = rte_ethdev_fmemopen.load(self.lib)
        self.open_memstream = rte_ethdev_open_memstream.load(self.lib)
        self.setbuf = rte_ethdev_setbuf.load(self.lib)
        self.setvbuf = rte_ethdev_setvbuf.load(self.lib)
        self.setbuffer = rte_ethdev_setbuffer.load(self.lib)
        self.setlinebuf = rte_ethdev_setlinebuf.load(self.lib)
        self.fprintf = rte_ethdev_fprintf.load(self.lib)
        self.printf = rte_ethdev_printf.load(self.lib)
        self.sprintf = rte_ethdev_sprintf.load(self.lib)
        self.vfprintf = rte_ethdev_vfprintf.load(self.lib)
        self.vprintf = rte_ethdev_vprintf.load(self.lib)
        self.vsprintf = rte_ethdev_vsprintf.load(self.lib)
        self.snprintf = rte_ethdev_snprintf.load(self.lib)
        self.vsnprintf = rte_ethdev_vsnprintf.load(self.lib)
        self.vdprintf = rte_ethdev_vdprintf.load(self.lib)
        self.dprintf = rte_ethdev_dprintf.load(self.lib)
        self.fscanf = rte_ethdev_fscanf.load(self.lib)
        self.scanf = rte_ethdev_scanf.load(self.lib)
        self.sscanf = rte_ethdev_sscanf.load(self.lib)
        self.vfscanf = rte_ethdev_vfscanf.load(self.lib)
        self.vscanf = rte_ethdev_vscanf.load(self.lib)
        self.vsscanf = rte_ethdev_vsscanf.load(self.lib)
        self.fgetc = rte_ethdev_fgetc.load(self.lib)
        self.getc = rte_ethdev_getc.load(self.lib)
        self.getchar = rte_ethdev_getchar.load(self.lib)
        self.getc_unlocked = rte_ethdev_getc_unlocked.load(self.lib)
        self.getchar_unlocked = rte_ethdev_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = rte_ethdev_fgetc_unlocked.load(self.lib)
        self.fputc = rte_ethdev_fputc.load(self.lib)
        self.putc = rte_ethdev_putc.load(self.lib)
        self.putchar = rte_ethdev_putchar.load(self.lib)
        self.fputc_unlocked = rte_ethdev_fputc_unlocked.load(self.lib)
        self.putc_unlocked = rte_ethdev_putc_unlocked.load(self.lib)
        self.putchar_unlocked = rte_ethdev_putchar_unlocked.load(self.lib)
        self.getw = rte_ethdev_getw.load(self.lib)
        self.putw = rte_ethdev_putw.load(self.lib)
        self.fgets = rte_ethdev_fgets.load(self.lib)
        self.getdelim = rte_ethdev_getdelim.load(self.lib)
        self.getline = rte_ethdev_getline.load(self.lib)
        self.fputs = rte_ethdev_fputs.load(self.lib)
        self.puts = rte_ethdev_puts.load(self.lib)
        self.ungetc = rte_ethdev_ungetc.load(self.lib)
        self.fread = rte_ethdev_fread.load(self.lib)
        self.fwrite = rte_ethdev_fwrite.load(self.lib)
        self.fread_unlocked = rte_ethdev_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = rte_ethdev_fwrite_unlocked.load(self.lib)
        self.fseek = rte_ethdev_fseek.load(self.lib)
        self.ftell = rte_ethdev_ftell.load(self.lib)
        self.rewind = rte_ethdev_rewind.load(self.lib)
        self.fseeko = rte_ethdev_fseeko.load(self.lib)
        self.ftello = rte_ethdev_ftello.load(self.lib)
        self.fgetpos = rte_ethdev_fgetpos.load(self.lib)
        self.fsetpos = rte_ethdev_fsetpos.load(self.lib)
        self.clearerr = rte_ethdev_clearerr.load(self.lib)
        self.feof = rte_ethdev_feof.load(self.lib)
        self.ferror = rte_ethdev_ferror.load(self.lib)
        self.clearerr_unlocked = rte_ethdev_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = rte_ethdev_feof_unlocked.load(self.lib)
        self.ferror_unlocked = rte_ethdev_ferror_unlocked.load(self.lib)
        self.perror = rte_ethdev_perror.load(self.lib)
        self.fileno = rte_ethdev_fileno.load(self.lib)
        self.fileno_unlocked = rte_ethdev_fileno_unlocked.load(self.lib)
        self.pclose = rte_ethdev_pclose.load(self.lib)
        self.popen = rte_ethdev_popen.load(self.lib)
        self.ctermid = rte_ethdev_ctermid.load(self.lib)
        self.flockfile = rte_ethdev_flockfile.load(self.lib)
        self.ftrylockfile = rte_ethdev_ftrylockfile.load(self.lib)
        self.funlockfile = rte_ethdev_funlockfile.load(self.lib)
        self.alloca = rte_ethdev_alloca.load(self.lib)
        self.sched_setparam = rte_ethdev_sched_setparam.load(self.lib)
        self.sched_getparam = rte_ethdev_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_ethdev_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_ethdev_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_ethdev_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_ethdev_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_ethdev_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_ethdev_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_ethdev_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_ethdev_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_ethdev_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_ethdev_rte_exit.load(self.lib)
        self.rte_openlog_stream = rte_ethdev_rte_openlog_stream.load(self.lib)
        self.rte_log_get_stream = rte_ethdev_rte_log_get_stream.load(self.lib)
        self.rte_log_set_global_level = rte_ethdev_rte_log_set_global_level.load(self.lib)
        self.rte_log_get_global_level = rte_ethdev_rte_log_get_global_level.load(self.lib)
        self.rte_log_get_level = rte_ethdev_rte_log_get_level.load(self.lib)
        self.rte_log_can_log = rte_ethdev_rte_log_can_log.load(self.lib)
        self.rte_log_set_level_pattern = rte_ethdev_rte_log_set_level_pattern.load(self.lib)
        self.rte_log_set_level_regexp = rte_ethdev_rte_log_set_level_regexp.load(self.lib)
        self.rte_log_set_level = rte_ethdev_rte_log_set_level.load(self.lib)
        self.rte_log_cur_msg_loglevel = rte_ethdev_rte_log_cur_msg_loglevel.load(self.lib)
        self.rte_log_cur_msg_logtype = rte_ethdev_rte_log_cur_msg_logtype.load(self.lib)
        self.rte_log_register = rte_ethdev_rte_log_register.load(self.lib)
        self.rte_log_register_type_and_pick_level = rte_ethdev_rte_log_register_type_and_pick_level.load(self.lib)
        self.rte_log_list_types = rte_ethdev_rte_log_list_types.load(self.lib)
        self.rte_log_dump = rte_ethdev_rte_log_dump.load(self.lib)
        self.rte_log = rte_ethdev_rte_log.load(self.lib)
        self.rte_vlog = rte_ethdev_rte_vlog.load(self.lib)
        self.rte_dump_stack = rte_ethdev_rte_dump_stack.load(self.lib)
        self.rte_bit_relaxed_get32 = rte_ethdev_rte_bit_relaxed_get32.load(self.lib)
        self.rte_bit_relaxed_set32 = rte_ethdev_rte_bit_relaxed_set32.load(self.lib)
        self.rte_bit_relaxed_clear32 = rte_ethdev_rte_bit_relaxed_clear32.load(self.lib)
        self.rte_bit_relaxed_test_and_set32 = rte_ethdev_rte_bit_relaxed_test_and_set32.load(self.lib)
        self.rte_bit_relaxed_test_and_clear32 = rte_ethdev_rte_bit_relaxed_test_and_clear32.load(self.lib)
        self.rte_bit_relaxed_get64 = rte_ethdev_rte_bit_relaxed_get64.load(self.lib)
        self.rte_bit_relaxed_set64 = rte_ethdev_rte_bit_relaxed_set64.load(self.lib)
        self.rte_bit_relaxed_clear64 = rte_ethdev_rte_bit_relaxed_clear64.load(self.lib)
        self.rte_bit_relaxed_test_and_set64 = rte_ethdev_rte_bit_relaxed_test_and_set64.load(self.lib)
        self.rte_bit_relaxed_test_and_clear64 = rte_ethdev_rte_bit_relaxed_test_and_clear64.load(self.lib)
        self.rte_clz32 = rte_ethdev_rte_clz32.load(self.lib)
        self.rte_clz64 = rte_ethdev_rte_clz64.load(self.lib)
        self.rte_ctz32 = rte_ethdev_rte_ctz32.load(self.lib)
        self.rte_ctz64 = rte_ethdev_rte_ctz64.load(self.lib)
        self.rte_popcount32 = rte_ethdev_rte_popcount32.load(self.lib)
        self.rte_popcount64 = rte_ethdev_rte_popcount64.load(self.lib)
        self.rte_ffs32 = rte_ethdev_rte_ffs32.load(self.lib)
        self.rte_ffs64 = rte_ethdev_rte_ffs64.load(self.lib)
        self.rte_combine32ms1b = rte_ethdev_rte_combine32ms1b.load(self.lib)
        self.rte_combine64ms1b = rte_ethdev_rte_combine64ms1b.load(self.lib)
        self.rte_bsf32 = rte_ethdev_rte_bsf32.load(self.lib)
        self.rte_bsf32_safe = rte_ethdev_rte_bsf32_safe.load(self.lib)
        self.rte_bsf64 = rte_ethdev_rte_bsf64.load(self.lib)
        self.rte_bsf64_safe = rte_ethdev_rte_bsf64_safe.load(self.lib)
        self.rte_fls_u32 = rte_ethdev_rte_fls_u32.load(self.lib)
        self.rte_fls_u64 = rte_ethdev_rte_fls_u64.load(self.lib)
        self.rte_is_power_of_2 = rte_ethdev_rte_is_power_of_2.load(self.lib)
        self.rte_align32pow2 = rte_ethdev_rte_align32pow2.load(self.lib)
        self.rte_align32prevpow2 = rte_ethdev_rte_align32prevpow2.load(self.lib)
        self.rte_align64pow2 = rte_ethdev_rte_align64pow2.load(self.lib)
        self.rte_align64prevpow2 = rte_ethdev_rte_align64prevpow2.load(self.lib)
        self.rte_log2_u32 = rte_ethdev_rte_log2_u32.load(self.lib)
        self.rte_log2_u64 = rte_ethdev_rte_log2_u64.load(self.lib)
        self.rte_epoll_wait = rte_ethdev_rte_epoll_wait.load(self.lib)
        self.rte_epoll_wait_interruptible = rte_ethdev_rte_epoll_wait_interruptible.load(self.lib)
        self.rte_epoll_ctl = rte_ethdev_rte_epoll_ctl.load(self.lib)
        self.rte_intr_callback_register = rte_ethdev_rte_intr_callback_register.load(self.lib)
        self.rte_intr_callback_unregister = rte_ethdev_rte_intr_callback_unregister.load(self.lib)
        self.rte_intr_callback_unregister_pending = rte_ethdev_rte_intr_callback_unregister_pending.load(self.lib)
        self.rte_intr_callback_unregister_sync = rte_ethdev_rte_intr_callback_unregister_sync.load(self.lib)
        self.rte_intr_enable = rte_ethdev_rte_intr_enable.load(self.lib)
        self.rte_intr_disable = rte_ethdev_rte_intr_disable.load(self.lib)
        self.rte_intr_ack = rte_ethdev_rte_intr_ack.load(self.lib)
        self.rte_thread_is_intr = rte_ethdev_rte_thread_is_intr.load(self.lib)
        self.rte_intr_instance_alloc = rte_ethdev_rte_intr_instance_alloc.load(self.lib)
        self.rte_intr_instance_free = rte_ethdev_rte_intr_instance_free.load(self.lib)
        self.rte_intr_fd_set = rte_ethdev_rte_intr_fd_set.load(self.lib)
        self.rte_intr_fd_get = rte_ethdev_rte_intr_fd_get.load(self.lib)
        self.rte_intr_type_set = rte_ethdev_rte_intr_type_set.load(self.lib)
        self.rte_intr_type_get = rte_ethdev_rte_intr_type_get.load(self.lib)
        self.rte_intr_tls_epfd = rte_ethdev_rte_intr_tls_epfd.load(self.lib)
        self.rte_intr_rx_ctl = rte_ethdev_rte_intr_rx_ctl.load(self.lib)
        self.rte_intr_free_epoll_fd = rte_ethdev_rte_intr_free_epoll_fd.load(self.lib)
        self.rte_intr_efd_enable = rte_ethdev_rte_intr_efd_enable.load(self.lib)
        self.rte_intr_efd_disable = rte_ethdev_rte_intr_efd_disable.load(self.lib)
        self.rte_intr_dp_is_en = rte_ethdev_rte_intr_dp_is_en.load(self.lib)
        self.rte_intr_allow_others = rte_ethdev_rte_intr_allow_others.load(self.lib)
        self.rte_intr_cap_multiple = rte_ethdev_rte_intr_cap_multiple.load(self.lib)
        self.rte_intr_instance_dup = rte_ethdev_rte_intr_instance_dup.load(self.lib)
        self.rte_intr_dev_fd_set = rte_ethdev_rte_intr_dev_fd_set.load(self.lib)
        self.rte_intr_dev_fd_get = rte_ethdev_rte_intr_dev_fd_get.load(self.lib)
        self.rte_intr_max_intr_set = rte_ethdev_rte_intr_max_intr_set.load(self.lib)
        self.rte_intr_max_intr_get = rte_ethdev_rte_intr_max_intr_get.load(self.lib)
        self.rte_intr_nb_efd_set = rte_ethdev_rte_intr_nb_efd_set.load(self.lib)
        self.rte_intr_nb_efd_get = rte_ethdev_rte_intr_nb_efd_get.load(self.lib)
        self.rte_intr_nb_intr_get = rte_ethdev_rte_intr_nb_intr_get.load(self.lib)
        self.rte_intr_efd_counter_size_set = rte_ethdev_rte_intr_efd_counter_size_set.load(self.lib)
        self.rte_intr_efd_counter_size_get = rte_ethdev_rte_intr_efd_counter_size_get.load(self.lib)
        self.rte_intr_efds_index_set = rte_ethdev_rte_intr_efds_index_set.load(self.lib)
        self.rte_intr_efds_index_get = rte_ethdev_rte_intr_efds_index_get.load(self.lib)
        self.rte_intr_elist_index_set = rte_ethdev_rte_intr_elist_index_set.load(self.lib)
        self.rte_intr_elist_index_get = rte_ethdev_rte_intr_elist_index_get.load(self.lib)
        self.rte_intr_vec_list_alloc = rte_ethdev_rte_intr_vec_list_alloc.load(self.lib)
        self.rte_intr_vec_list_index_set = rte_ethdev_rte_intr_vec_list_index_set.load(self.lib)
        self.rte_intr_vec_list_index_get = rte_ethdev_rte_intr_vec_list_index_get.load(self.lib)
        self.rte_intr_vec_list_free = rte_ethdev_rte_intr_vec_list_free.load(self.lib)
        self.rte_intr_event_list_update = rte_ethdev_rte_intr_event_list_update.load(self.lib)
        self.rte_intr_instance_windows_handle_get = rte_ethdev_rte_intr_instance_windows_handle_get.load(self.lib)
        self.rte_intr_instance_windows_handle_set = rte_ethdev_rte_intr_instance_windows_handle_set.load(self.lib)
        self.rte_driver_name = rte_ethdev_rte_driver_name.load(self.lib)
        self.rte_dev_bus = rte_ethdev_rte_dev_bus.load(self.lib)
        self.rte_dev_bus_info = rte_ethdev_rte_dev_bus_info.load(self.lib)
        self.rte_dev_devargs = rte_ethdev_rte_dev_devargs.load(self.lib)
        self.rte_dev_driver = rte_ethdev_rte_dev_driver.load(self.lib)
        self.rte_dev_name = rte_ethdev_rte_dev_name.load(self.lib)
        self.rte_dev_numa_node = rte_ethdev_rte_dev_numa_node.load(self.lib)
        self.rte_dev_is_probed = rte_ethdev_rte_dev_is_probed.load(self.lib)
        self.rte_eal_hotplug_add = rte_ethdev_rte_eal_hotplug_add.load(self.lib)
        self.rte_dev_probe = rte_ethdev_rte_dev_probe.load(self.lib)
        self.rte_eal_hotplug_remove = rte_ethdev_rte_eal_hotplug_remove.load(self.lib)
        self.rte_dev_remove = rte_ethdev_rte_dev_remove.load(self.lib)
        self.rte_dev_iterator_init = rte_ethdev_rte_dev_iterator_init.load(self.lib)
        self.rte_dev_iterator_next = rte_ethdev_rte_dev_iterator_next.load(self.lib)
        self.rte_dev_event_callback_register = rte_ethdev_rte_dev_event_callback_register.load(self.lib)
        self.rte_dev_event_callback_unregister = rte_ethdev_rte_dev_event_callback_unregister.load(self.lib)
        self.rte_dev_event_callback_process = rte_ethdev_rte_dev_event_callback_process.load(self.lib)
        self.rte_dev_event_monitor_start = rte_ethdev_rte_dev_event_monitor_start.load(self.lib)
        self.rte_dev_event_monitor_stop = rte_ethdev_rte_dev_event_monitor_stop.load(self.lib)
        self.rte_dev_hotplug_handle_enable = rte_ethdev_rte_dev_hotplug_handle_enable.load(self.lib)
        self.rte_dev_hotplug_handle_disable = rte_ethdev_rte_dev_hotplug_handle_disable.load(self.lib)
        self.rte_dev_dma_map = rte_ethdev_rte_dev_dma_map.load(self.lib)
        self.rte_dev_dma_unmap = rte_ethdev_rte_dev_dma_unmap.load(self.lib)
        self.rte_devargs_parse = rte_ethdev_rte_devargs_parse.load(self.lib)
        self.rte_devargs_parsef = rte_ethdev_rte_devargs_parsef.load(self.lib)
        self.rte_devargs_reset = rte_ethdev_rte_devargs_reset.load(self.lib)
        self.rte_devargs_insert = rte_ethdev_rte_devargs_insert.load(self.lib)
        self.rte_devargs_add = rte_ethdev_rte_devargs_add.load(self.lib)
        self.rte_devargs_remove = rte_ethdev_rte_devargs_remove.load(self.lib)
        self.rte_devargs_type_count = rte_ethdev_rte_devargs_type_count.load(self.lib)
        self.rte_devargs_dump = rte_ethdev_rte_devargs_dump.load(self.lib)
        self.rte_devargs_next = rte_ethdev_rte_devargs_next.load(self.lib)
        self.rte_strerror = rte_ethdev_rte_strerror.load(self.lib)
        self.imaxabs = rte_ethdev_imaxabs.load(self.lib)
        self.imaxdiv = rte_ethdev_imaxdiv.load(self.lib)
        self.strtoimax = rte_ethdev_strtoimax.load(self.lib)
        self.strtoumax = rte_ethdev_strtoumax.load(self.lib)
        self.wcstoimax = rte_ethdev_wcstoimax.load(self.lib)
        self.wcstoumax = rte_ethdev_wcstoumax.load(self.lib)
        self.clock = rte_ethdev_clock.load(self.lib)
        self.time = rte_ethdev_time.load(self.lib)
        self.difftime = rte_ethdev_difftime.load(self.lib)
        self.mktime = rte_ethdev_mktime.load(self.lib)
        self.strftime = rte_ethdev_strftime.load(self.lib)
        self.strftime_l = rte_ethdev_strftime_l.load(self.lib)
        self.gmtime = rte_ethdev_gmtime.load(self.lib)
        self.localtime = rte_ethdev_localtime.load(self.lib)
        self.gmtime_r = rte_ethdev_gmtime_r.load(self.lib)
        self.localtime_r = rte_ethdev_localtime_r.load(self.lib)
        self.asctime = rte_ethdev_asctime.load(self.lib)
        self.ctime = rte_ethdev_ctime.load(self.lib)
        self.asctime_r = rte_ethdev_asctime_r.load(self.lib)
        self.ctime_r = rte_ethdev_ctime_r.load(self.lib)
        self.tzset = rte_ethdev_tzset.load(self.lib)
        self.timegm = rte_ethdev_timegm.load(self.lib)
        self.timelocal = rte_ethdev_timelocal.load(self.lib)
        self.dysize = rte_ethdev_dysize.load(self.lib)
        self.nanosleep = rte_ethdev_nanosleep.load(self.lib)
        self.clock_getres = rte_ethdev_clock_getres.load(self.lib)
        self.clock_gettime = rte_ethdev_clock_gettime.load(self.lib)
        self.clock_settime = rte_ethdev_clock_settime.load(self.lib)
        self.clock_nanosleep = rte_ethdev_clock_nanosleep.load(self.lib)
        self.clock_getcpuclockid = rte_ethdev_clock_getcpuclockid.load(self.lib)
        self.timer_create = rte_ethdev_timer_create.load(self.lib)
        self.timer_delete = rte_ethdev_timer_delete.load(self.lib)
        self.timer_settime = rte_ethdev_timer_settime.load(self.lib)
        self.timer_gettime = rte_ethdev_timer_gettime.load(self.lib)
        self.timer_getoverrun = rte_ethdev_timer_getoverrun.load(self.lib)
        self.timespec_get = rte_ethdev_timespec_get.load(self.lib)
        self.memcpy = rte_ethdev_memcpy.load(self.lib)
        self.memmove = rte_ethdev_memmove.load(self.lib)
        self.memccpy = rte_ethdev_memccpy.load(self.lib)
        self.memset = rte_ethdev_memset.load(self.lib)
        self.memcmp = rte_ethdev_memcmp.load(self.lib)
        self.memchr = rte_ethdev_memchr.load(self.lib)
        self.strcpy = rte_ethdev_strcpy.load(self.lib)
        self.strncpy = rte_ethdev_strncpy.load(self.lib)
        self.strcat = rte_ethdev_strcat.load(self.lib)
        self.strncat = rte_ethdev_strncat.load(self.lib)
        self.strcmp = rte_ethdev_strcmp.load(self.lib)
        self.strncmp = rte_ethdev_strncmp.load(self.lib)
        self.strcoll = rte_ethdev_strcoll.load(self.lib)
        self.strxfrm = rte_ethdev_strxfrm.load(self.lib)
        self.strcoll_l = rte_ethdev_strcoll_l.load(self.lib)
        self.strxfrm_l = rte_ethdev_strxfrm_l.load(self.lib)
        self.strdup = rte_ethdev_strdup.load(self.lib)
        self.strndup = rte_ethdev_strndup.load(self.lib)
        self.strchr = rte_ethdev_strchr.load(self.lib)
        self.strrchr = rte_ethdev_strrchr.load(self.lib)
        self.strcspn = rte_ethdev_strcspn.load(self.lib)
        self.strspn = rte_ethdev_strspn.load(self.lib)
        self.strpbrk = rte_ethdev_strpbrk.load(self.lib)
        self.strstr = rte_ethdev_strstr.load(self.lib)
        self.strtok = rte_ethdev_strtok.load(self.lib)
        self.strtok_r = rte_ethdev_strtok_r.load(self.lib)
        self.strlen = rte_ethdev_strlen.load(self.lib)
        self.strnlen = rte_ethdev_strnlen.load(self.lib)
        self.strerror = rte_ethdev_strerror.load(self.lib)
        self.strerror_r = rte_ethdev_strerror_r.load(self.lib)
        self.strerror_l = rte_ethdev_strerror_l.load(self.lib)
        self.bcmp = rte_ethdev_bcmp.load(self.lib)
        self.bcopy = rte_ethdev_bcopy.load(self.lib)
        self.bzero = rte_ethdev_bzero.load(self.lib)
        self.index = rte_ethdev_index.load(self.lib)
        self.rindex = rte_ethdev_rindex.load(self.lib)
        self.ffs = rte_ethdev_ffs.load(self.lib)
        self.ffsl = rte_ethdev_ffsl.load(self.lib)
        self.ffsll = rte_ethdev_ffsll.load(self.lib)
        self.strcasecmp = rte_ethdev_strcasecmp.load(self.lib)
        self.strncasecmp = rte_ethdev_strncasecmp.load(self.lib)
        self.strcasecmp_l = rte_ethdev_strcasecmp_l.load(self.lib)
        self.strncasecmp_l = rte_ethdev_strncasecmp_l.load(self.lib)
        self.explicit_bzero = rte_ethdev_explicit_bzero.load(self.lib)
        self.strsep = rte_ethdev_strsep.load(self.lib)
        self.strsignal = rte_ethdev_strsignal.load(self.lib)
        self.stpcpy = rte_ethdev_stpcpy.load(self.lib)
        self.stpncpy = rte_ethdev_stpncpy.load(self.lib)
        self.rte_uuid_is_null = rte_ethdev_rte_uuid_is_null.load(self.lib)
        self.rte_uuid_copy = rte_ethdev_rte_uuid_copy.load(self.lib)
        self.rte_uuid_compare = rte_ethdev_rte_uuid_compare.load(self.lib)
        self.rte_uuid_parse = rte_ethdev_rte_uuid_parse.load(self.lib)
        self.rte_uuid_unparse = rte_ethdev_rte_uuid_unparse.load(self.lib)
        self.rte_eal_process_type = rte_ethdev_rte_eal_process_type.load(self.lib)
        self.rte_eal_iopl_init = rte_ethdev_rte_eal_iopl_init.load(self.lib)
        self.rte_eal_init = rte_ethdev_rte_eal_init.load(self.lib)
        self.rte_eal_cleanup = rte_ethdev_rte_eal_cleanup.load(self.lib)
        self.rte_eal_primary_proc_alive = rte_ethdev_rte_eal_primary_proc_alive.load(self.lib)
        self.rte_mp_disable = rte_ethdev_rte_mp_disable.load(self.lib)
        self.rte_mp_action_register = rte_ethdev_rte_mp_action_register.load(self.lib)
        self.rte_mp_action_unregister = rte_ethdev_rte_mp_action_unregister.load(self.lib)
        self.rte_mp_sendmsg = rte_ethdev_rte_mp_sendmsg.load(self.lib)
        self.rte_mp_request_sync = rte_ethdev_rte_mp_request_sync.load(self.lib)
        self.rte_mp_request_async = rte_ethdev_rte_mp_request_async.load(self.lib)
        self.rte_set_application_usage_hook = rte_ethdev_rte_set_application_usage_hook.load(self.lib)
        self.rte_eal_has_hugepages = rte_ethdev_rte_eal_has_hugepages.load(self.lib)
        self.rte_eal_has_pci = rte_ethdev_rte_eal_has_pci.load(self.lib)
        self.rte_eal_create_uio_dev = rte_ethdev_rte_eal_create_uio_dev.load(self.lib)
        self.rte_eal_vfio_intr_mode = rte_ethdev_rte_eal_vfio_intr_mode.load(self.lib)
        self.rte_eal_vfio_get_vf_token = rte_ethdev_rte_eal_vfio_get_vf_token.load(self.lib)
        self.rte_sys_gettid = rte_ethdev_rte_sys_gettid.load(self.lib)
        self.rte_gettid = rte_ethdev_rte_gettid.load(self.lib)
        self.rte_eal_get_baseaddr = rte_ethdev_rte_eal_get_baseaddr.load(self.lib)
        self.rte_eal_iova_mode = rte_ethdev_rte_eal_iova_mode.load(self.lib)
        self.rte_eal_mbuf_user_pool_ops = rte_ethdev_rte_eal_mbuf_user_pool_ops.load(self.lib)
        self.rte_eal_get_runtime_dir = rte_ethdev_rte_eal_get_runtime_dir.load(self.lib)
        self.rte_eal_parse_coremask = rte_ethdev_rte_eal_parse_coremask.load(self.lib)
        self.rte_eal_remote_launch = rte_ethdev_rte_eal_remote_launch.load(self.lib)
        self.rte_eal_mp_remote_launch = rte_ethdev_rte_eal_mp_remote_launch.load(self.lib)
        self.rte_eal_get_lcore_state = rte_ethdev_rte_eal_get_lcore_state.load(self.lib)
        self.rte_eal_wait_lcore = rte_ethdev_rte_eal_wait_lcore.load(self.lib)
        self.rte_eal_mp_wait_lcore = rte_ethdev_rte_eal_mp_wait_lcore.load(self.lib)
        self.rte_thread_create = rte_ethdev_rte_thread_create.load(self.lib)
        self.rte_thread_create_control = rte_ethdev_rte_thread_create_control.load(self.lib)
        self.rte_thread_create_internal_control = rte_ethdev_rte_thread_create_internal_control.load(self.lib)
        self.rte_thread_join = rte_ethdev_rte_thread_join.load(self.lib)
        self.rte_thread_detach = rte_ethdev_rte_thread_detach.load(self.lib)
        self.rte_thread_self = rte_ethdev_rte_thread_self.load(self.lib)
        self.rte_thread_set_name = rte_ethdev_rte_thread_set_name.load(self.lib)
        self.rte_thread_set_prefixed_name = rte_ethdev_rte_thread_set_prefixed_name.load(self.lib)
        self.rte_thread_equal = rte_ethdev_rte_thread_equal.load(self.lib)
        self.rte_thread_attr_init = rte_ethdev_rte_thread_attr_init.load(self.lib)
        self.rte_thread_attr_set_priority = rte_ethdev_rte_thread_attr_set_priority.load(self.lib)
        self.rte_thread_get_priority = rte_ethdev_rte_thread_get_priority.load(self.lib)
        self.rte_thread_set_priority = rte_ethdev_rte_thread_set_priority.load(self.lib)
        self.rte_thread_key_create = rte_ethdev_rte_thread_key_create.load(self.lib)
        self.rte_thread_key_delete = rte_ethdev_rte_thread_key_delete.load(self.lib)
        self.rte_thread_value_set = rte_ethdev_rte_thread_value_set.load(self.lib)
        self.rte_thread_value_get = rte_ethdev_rte_thread_value_get.load(self.lib)
        self.rte_eal_lcore_role = rte_ethdev_rte_eal_lcore_role.load(self.lib)
        self.rte_lcore_has_role = rte_ethdev_rte_lcore_has_role.load(self.lib)
        self.rte_lcore_id = rte_ethdev_rte_lcore_id.load(self.lib)
        self.rte_get_main_lcore = rte_ethdev_rte_get_main_lcore.load(self.lib)
        self.rte_lcore_count = rte_ethdev_rte_lcore_count.load(self.lib)
        self.rte_lcore_index = rte_ethdev_rte_lcore_index.load(self.lib)
        self.rte_socket_id = rte_ethdev_rte_socket_id.load(self.lib)
        self.rte_socket_count = rte_ethdev_rte_socket_count.load(self.lib)
        self.rte_socket_id_by_idx = rte_ethdev_rte_socket_id_by_idx.load(self.lib)
        self.rte_lcore_to_socket_id = rte_ethdev_rte_lcore_to_socket_id.load(self.lib)
        self.rte_lcore_to_cpu_id = rte_ethdev_rte_lcore_to_cpu_id.load(self.lib)
        self.rte_lcore_is_enabled = rte_ethdev_rte_lcore_is_enabled.load(self.lib)
        self.rte_get_next_lcore = rte_ethdev_rte_get_next_lcore.load(self.lib)
        self.rte_lcore_callback_register = rte_ethdev_rte_lcore_callback_register.load(self.lib)
        self.rte_lcore_callback_unregister = rte_ethdev_rte_lcore_callback_unregister.load(self.lib)
        self.rte_lcore_iterate = rte_ethdev_rte_lcore_iterate.load(self.lib)
        self.rte_lcore_register_usage_cb = rte_ethdev_rte_lcore_register_usage_cb.load(self.lib)
        self.rte_lcore_dump = rte_ethdev_rte_lcore_dump.load(self.lib)
        self.rte_thread_register = rte_ethdev_rte_thread_register.load(self.lib)
        self.rte_thread_unregister = rte_ethdev_rte_thread_unregister.load(self.lib)
        self.rte_atomic_thread_fence = rte_ethdev_rte_atomic_thread_fence.load(self.lib)
        self.rte_atomic16_cmpset = rte_ethdev_rte_atomic16_cmpset.load(self.lib)
        self.rte_atomic16_exchange = rte_ethdev_rte_atomic16_exchange.load(self.lib)
        self.rte_atomic16_init = rte_ethdev_rte_atomic16_init.load(self.lib)
        self.rte_atomic16_read = rte_ethdev_rte_atomic16_read.load(self.lib)
        self.rte_atomic16_set = rte_ethdev_rte_atomic16_set.load(self.lib)
        self.rte_atomic16_add = rte_ethdev_rte_atomic16_add.load(self.lib)
        self.rte_atomic16_sub = rte_ethdev_rte_atomic16_sub.load(self.lib)
        self.rte_atomic16_inc = rte_ethdev_rte_atomic16_inc.load(self.lib)
        self.rte_atomic16_dec = rte_ethdev_rte_atomic16_dec.load(self.lib)
        self.rte_atomic16_add_return = rte_ethdev_rte_atomic16_add_return.load(self.lib)
        self.rte_atomic16_sub_return = rte_ethdev_rte_atomic16_sub_return.load(self.lib)
        self.rte_atomic16_inc_and_test = rte_ethdev_rte_atomic16_inc_and_test.load(self.lib)
        self.rte_atomic16_dec_and_test = rte_ethdev_rte_atomic16_dec_and_test.load(self.lib)
        self.rte_atomic16_test_and_set = rte_ethdev_rte_atomic16_test_and_set.load(self.lib)
        self.rte_atomic16_clear = rte_ethdev_rte_atomic16_clear.load(self.lib)
        self.rte_atomic32_cmpset = rte_ethdev_rte_atomic32_cmpset.load(self.lib)
        self.rte_atomic32_exchange = rte_ethdev_rte_atomic32_exchange.load(self.lib)
        self.rte_atomic32_init = rte_ethdev_rte_atomic32_init.load(self.lib)
        self.rte_atomic32_read = rte_ethdev_rte_atomic32_read.load(self.lib)
        self.rte_atomic32_set = rte_ethdev_rte_atomic32_set.load(self.lib)
        self.rte_atomic32_add = rte_ethdev_rte_atomic32_add.load(self.lib)
        self.rte_atomic32_sub = rte_ethdev_rte_atomic32_sub.load(self.lib)
        self.rte_atomic32_inc = rte_ethdev_rte_atomic32_inc.load(self.lib)
        self.rte_atomic32_dec = rte_ethdev_rte_atomic32_dec.load(self.lib)
        self.rte_atomic32_add_return = rte_ethdev_rte_atomic32_add_return.load(self.lib)
        self.rte_atomic32_sub_return = rte_ethdev_rte_atomic32_sub_return.load(self.lib)
        self.rte_atomic32_inc_and_test = rte_ethdev_rte_atomic32_inc_and_test.load(self.lib)
        self.rte_atomic32_dec_and_test = rte_ethdev_rte_atomic32_dec_and_test.load(self.lib)
        self.rte_atomic32_test_and_set = rte_ethdev_rte_atomic32_test_and_set.load(self.lib)
        self.rte_atomic32_clear = rte_ethdev_rte_atomic32_clear.load(self.lib)
        self.rte_atomic64_cmpset = rte_ethdev_rte_atomic64_cmpset.load(self.lib)
        self.rte_atomic64_exchange = rte_ethdev_rte_atomic64_exchange.load(self.lib)
        self.rte_atomic64_init = rte_ethdev_rte_atomic64_init.load(self.lib)
        self.rte_atomic64_read = rte_ethdev_rte_atomic64_read.load(self.lib)
        self.rte_atomic64_set = rte_ethdev_rte_atomic64_set.load(self.lib)
        self.rte_atomic64_add = rte_ethdev_rte_atomic64_add.load(self.lib)
        self.rte_atomic64_sub = rte_ethdev_rte_atomic64_sub.load(self.lib)
        self.rte_atomic64_inc = rte_ethdev_rte_atomic64_inc.load(self.lib)
        self.rte_atomic64_dec = rte_ethdev_rte_atomic64_dec.load(self.lib)
        self.rte_atomic64_add_return = rte_ethdev_rte_atomic64_add_return.load(self.lib)
        self.rte_atomic64_sub_return = rte_ethdev_rte_atomic64_sub_return.load(self.lib)
        self.rte_atomic64_inc_and_test = rte_ethdev_rte_atomic64_inc_and_test.load(self.lib)
        self.rte_atomic64_dec_and_test = rte_ethdev_rte_atomic64_dec_and_test.load(self.lib)
        self.rte_atomic64_test_and_set = rte_ethdev_rte_atomic64_test_and_set.load(self.lib)
        self.rte_atomic64_clear = rte_ethdev_rte_atomic64_clear.load(self.lib)
        self.rte_atomic128_cmp_exchange = rte_ethdev_rte_atomic128_cmp_exchange.load(self.lib)
        self.rte_pause = rte_ethdev_rte_pause.load(self.lib)
        self.rte_wait_until_equal_16 = rte_ethdev_rte_wait_until_equal_16.load(self.lib)
        self.rte_wait_until_equal_32 = rte_ethdev_rte_wait_until_equal_32.load(self.lib)
        self.rte_wait_until_equal_64 = rte_ethdev_rte_wait_until_equal_64.load(self.lib)
        self.rte_spinlock_init = rte_ethdev_rte_spinlock_init.load(self.lib)
        self.rte_spinlock_lock = rte_ethdev_rte_spinlock_lock.load(self.lib)
        self.rte_spinlock_unlock = rte_ethdev_rte_spinlock_unlock.load(self.lib)
        self.rte_spinlock_trylock = rte_ethdev_rte_spinlock_trylock.load(self.lib)
        self.rte_spinlock_is_locked = rte_ethdev_rte_spinlock_is_locked.load(self.lib)
        self.rte_tm_supported = rte_ethdev_rte_tm_supported.load(self.lib)
        self.rte_spinlock_lock_tm = rte_ethdev_rte_spinlock_lock_tm.load(self.lib)
        self.rte_spinlock_unlock_tm = rte_ethdev_rte_spinlock_unlock_tm.load(self.lib)
        self.rte_spinlock_trylock_tm = rte_ethdev_rte_spinlock_trylock_tm.load(self.lib)
        self.rte_spinlock_recursive_init = rte_ethdev_rte_spinlock_recursive_init.load(self.lib)
        self.rte_spinlock_recursive_lock = rte_ethdev_rte_spinlock_recursive_lock.load(self.lib)
        self.rte_spinlock_recursive_unlock = rte_ethdev_rte_spinlock_recursive_unlock.load(self.lib)
        self.rte_spinlock_recursive_trylock = rte_ethdev_rte_spinlock_recursive_trylock.load(self.lib)
        self.rte_spinlock_recursive_lock_tm = rte_ethdev_rte_spinlock_recursive_lock_tm.load(self.lib)
        self.rte_spinlock_recursive_unlock_tm = rte_ethdev_rte_spinlock_recursive_unlock_tm.load(self.lib)
        self.rte_spinlock_recursive_trylock_tm = rte_ethdev_rte_spinlock_recursive_trylock_tm.load(self.lib)
        self.rte_power_monitor = rte_ethdev_rte_power_monitor.load(self.lib)
        self.rte_power_monitor_wakeup = rte_ethdev_rte_power_monitor_wakeup.load(self.lib)
        self.rte_power_pause = rte_ethdev_rte_power_pause.load(self.lib)
        self.rte_power_monitor_multi = rte_ethdev_rte_power_monitor_multi.load(self.lib)
        self.rte_get_tsc_hz = rte_ethdev_rte_get_tsc_hz.load(self.lib)
        self.rte_get_tsc_cycles = rte_ethdev_rte_get_tsc_cycles.load(self.lib)
        self.rte_get_timer_cycles = rte_ethdev_rte_get_timer_cycles.load(self.lib)
        self.rte_get_timer_hz = rte_ethdev_rte_get_timer_hz.load(self.lib)
        self.rte_delay_ms = rte_ethdev_rte_delay_ms.load(self.lib)
        self.rte_delay_us_block = rte_ethdev_rte_delay_us_block.load(self.lib)
        self.rte_delay_us_sleep = rte_ethdev_rte_delay_us_sleep.load(self.lib)
        self.rte_delay_us_callback_register = rte_ethdev_rte_delay_us_callback_register.load(self.lib)
        self.rte_rdtsc = rte_ethdev_rte_rdtsc.load(self.lib)
        self.rte_rdtsc_precise = rte_ethdev_rte_rdtsc_precise.load(self.lib)
        self.isalnum = rte_ethdev_isalnum.load(self.lib)
        self.isalpha = rte_ethdev_isalpha.load(self.lib)
        self.iscntrl = rte_ethdev_iscntrl.load(self.lib)
        self.isdigit = rte_ethdev_isdigit.load(self.lib)
        self.islower = rte_ethdev_islower.load(self.lib)
        self.isgraph = rte_ethdev_isgraph.load(self.lib)
        self.isprint = rte_ethdev_isprint.load(self.lib)
        self.ispunct = rte_ethdev_ispunct.load(self.lib)
        self.isspace = rte_ethdev_isspace.load(self.lib)
        self.isupper = rte_ethdev_isupper.load(self.lib)
        self.isxdigit = rte_ethdev_isxdigit.load(self.lib)
        self.tolower = rte_ethdev_tolower.load(self.lib)
        self.toupper = rte_ethdev_toupper.load(self.lib)
        self.isblank = rte_ethdev_isblank.load(self.lib)
        self.isascii = rte_ethdev_isascii.load(self.lib)
        self.toascii = rte_ethdev_toascii.load(self.lib)
        self.isalnum_l = rte_ethdev_isalnum_l.load(self.lib)
        self.isalpha_l = rte_ethdev_isalpha_l.load(self.lib)
        self.iscntrl_l = rte_ethdev_iscntrl_l.load(self.lib)
        self.isdigit_l = rte_ethdev_isdigit_l.load(self.lib)
        self.islower_l = rte_ethdev_islower_l.load(self.lib)
        self.isgraph_l = rte_ethdev_isgraph_l.load(self.lib)
        self.isprint_l = rte_ethdev_isprint_l.load(self.lib)
        self.ispunct_l = rte_ethdev_ispunct_l.load(self.lib)
        self.isspace_l = rte_ethdev_isspace_l.load(self.lib)
        self.isupper_l = rte_ethdev_isupper_l.load(self.lib)
        self.isxdigit_l = rte_ethdev_isxdigit_l.load(self.lib)
        self.isblank_l = rte_ethdev_isblank_l.load(self.lib)
        self.tolower_l = rte_ethdev_tolower_l.load(self.lib)
        self.toupper_l = rte_ethdev_toupper_l.load(self.lib)
        self.rte_strsplit = rte_ethdev_rte_strsplit.load(self.lib)
        self.rte_strlcpy = rte_ethdev_rte_strlcpy.load(self.lib)
        self.rte_strlcat = rte_ethdev_rte_strlcat.load(self.lib)
        self.rte_strscpy = rte_ethdev_rte_strscpy.load(self.lib)
        self.rte_str_skip_leading_spaces = rte_ethdev_rte_str_skip_leading_spaces.load(self.lib)
        self.rte_trace_is_enabled = rte_ethdev_rte_trace_is_enabled.load(self.lib)
        self.rte_trace_feature_is_enabled = rte_ethdev_rte_trace_feature_is_enabled.load(self.lib)
        self.rte_trace_mode_set = rte_ethdev_rte_trace_mode_set.load(self.lib)
        self.rte_trace_mode_get = rte_ethdev_rte_trace_mode_get.load(self.lib)
        self.rte_trace_pattern = rte_ethdev_rte_trace_pattern.load(self.lib)
        self.rte_trace_regexp = rte_ethdev_rte_trace_regexp.load(self.lib)
        self.rte_trace_save = rte_ethdev_rte_trace_save.load(self.lib)
        self.rte_trace_metadata_dump = rte_ethdev_rte_trace_metadata_dump.load(self.lib)
        self.rte_trace_dump = rte_ethdev_rte_trace_dump.load(self.lib)
        self.rte_trace_point_enable = rte_ethdev_rte_trace_point_enable.load(self.lib)
        self.rte_trace_point_disable = rte_ethdev_rte_trace_point_disable.load(self.lib)
        self.rte_trace_point_is_enabled = rte_ethdev_rte_trace_point_is_enabled.load(self.lib)
        self.rte_trace_point_lookup = rte_ethdev_rte_trace_point_lookup.load(self.lib)
        self.rte_ethdev_trace_rx_burst_empty = rte_ethdev_rte_ethdev_trace_rx_burst_empty.load(self.lib)
        self.rte_ethdev_trace_rx_burst_nonempty = rte_ethdev_rte_ethdev_trace_rx_burst_nonempty.load(self.lib)
        self.rte_ethdev_trace_tx_burst = rte_ethdev_rte_ethdev_trace_tx_burst.load(self.lib)
        self.rte_eth_trace_call_rx_callbacks_empty = rte_ethdev_rte_eth_trace_call_rx_callbacks_empty.load(self.lib)
        self.rte_eth_trace_call_rx_callbacks_nonempty = rte_ethdev_rte_eth_trace_call_rx_callbacks_nonempty.load(self.lib)
        self.rte_eth_trace_call_tx_callbacks = rte_ethdev_rte_eth_trace_call_tx_callbacks.load(self.lib)
        self.rte_eth_trace_tx_buffer_drop_callback = rte_ethdev_rte_eth_trace_tx_buffer_drop_callback.load(self.lib)
        self.rte_eth_trace_tx_buffer_count_callback = rte_ethdev_rte_eth_trace_tx_buffer_count_callback.load(self.lib)
        self.rte_eth_trace_tx_queue_count = rte_ethdev_rte_eth_trace_tx_queue_count.load(self.lib)
        self.rte_eth_iterator_init = rte_ethdev_rte_eth_iterator_init.load(self.lib)
        self.rte_eth_iterator_next = rte_ethdev_rte_eth_iterator_next.load(self.lib)
        self.rte_eth_iterator_cleanup = rte_ethdev_rte_eth_iterator_cleanup.load(self.lib)
        self.rte_eth_rss_hf_refine = rte_ethdev_rte_eth_rss_hf_refine.load(self.lib)
        self.rte_srand = rte_ethdev_rte_srand.load(self.lib)
        self.rte_rand = rte_ethdev_rte_rand.load(self.lib)
        self.rte_rand_max = rte_ethdev_rte_rand_max.load(self.lib)
        self.rte_drand = rte_ethdev_rte_drand.load(self.lib)
        self.rte_rwlock_init = rte_ethdev_rte_rwlock_init.load(self.lib)
        self.rte_rwlock_read_lock = rte_ethdev_rte_rwlock_read_lock.load(self.lib)
        self.rte_rwlock_read_trylock = rte_ethdev_rte_rwlock_read_trylock.load(self.lib)
        self.rte_rwlock_read_unlock = rte_ethdev_rte_rwlock_read_unlock.load(self.lib)
        self.rte_rwlock_write_trylock = rte_ethdev_rte_rwlock_write_trylock.load(self.lib)
        self.rte_rwlock_write_lock = rte_ethdev_rte_rwlock_write_lock.load(self.lib)
        self.rte_rwlock_write_unlock = rte_ethdev_rte_rwlock_write_unlock.load(self.lib)
        self.rte_rwlock_write_is_locked = rte_ethdev_rte_rwlock_write_is_locked.load(self.lib)
        self.rte_rwlock_read_lock_tm = rte_ethdev_rte_rwlock_read_lock_tm.load(self.lib)
        self.rte_rwlock_read_unlock_tm = rte_ethdev_rte_rwlock_read_unlock_tm.load(self.lib)
        self.rte_rwlock_write_lock_tm = rte_ethdev_rte_rwlock_write_lock_tm.load(self.lib)
        self.rte_rwlock_write_unlock_tm = rte_ethdev_rte_rwlock_write_unlock_tm.load(self.lib)
        self.rte_mcfg_mem_get_lock = rte_ethdev_rte_mcfg_mem_get_lock.load(self.lib)
        self.rte_mcfg_tailq_get_lock = rte_ethdev_rte_mcfg_tailq_get_lock.load(self.lib)
        self.rte_mcfg_mempool_get_lock = rte_ethdev_rte_mcfg_mempool_get_lock.load(self.lib)
        self.rte_mcfg_timer_get_lock = rte_ethdev_rte_mcfg_timer_get_lock.load(self.lib)
        self.rte_mcfg_ethdev_get_lock = rte_ethdev_rte_mcfg_ethdev_get_lock.load(self.lib)
        self.rte_mcfg_mem_read_lock = rte_ethdev_rte_mcfg_mem_read_lock.load(self.lib)
        self.rte_mcfg_mem_read_unlock = rte_ethdev_rte_mcfg_mem_read_unlock.load(self.lib)
        self.rte_mcfg_mem_write_lock = rte_ethdev_rte_mcfg_mem_write_lock.load(self.lib)
        self.rte_mcfg_mem_write_unlock = rte_ethdev_rte_mcfg_mem_write_unlock.load(self.lib)
        self.rte_mcfg_tailq_read_lock = rte_ethdev_rte_mcfg_tailq_read_lock.load(self.lib)
        self.rte_mcfg_tailq_read_unlock = rte_ethdev_rte_mcfg_tailq_read_unlock.load(self.lib)
        self.rte_mcfg_tailq_write_lock = rte_ethdev_rte_mcfg_tailq_write_lock.load(self.lib)
        self.rte_mcfg_tailq_write_unlock = rte_ethdev_rte_mcfg_tailq_write_unlock.load(self.lib)
        self.rte_mcfg_mempool_read_lock = rte_ethdev_rte_mcfg_mempool_read_lock.load(self.lib)
        self.rte_mcfg_mempool_read_unlock = rte_ethdev_rte_mcfg_mempool_read_unlock.load(self.lib)
        self.rte_mcfg_mempool_write_lock = rte_ethdev_rte_mcfg_mempool_write_lock.load(self.lib)
        self.rte_mcfg_mempool_write_unlock = rte_ethdev_rte_mcfg_mempool_write_unlock.load(self.lib)
        self.rte_mcfg_timer_lock = rte_ethdev_rte_mcfg_timer_lock.load(self.lib)
        self.rte_mcfg_timer_unlock = rte_ethdev_rte_mcfg_timer_unlock.load(self.lib)
        self.rte_mcfg_get_single_file_segments = rte_ethdev_rte_mcfg_get_single_file_segments.load(self.lib)
        self.rte_fbarray_init = rte_ethdev_rte_fbarray_init.load(self.lib)
        self.rte_fbarray_attach = rte_ethdev_rte_fbarray_attach.load(self.lib)
        self.rte_fbarray_destroy = rte_ethdev_rte_fbarray_destroy.load(self.lib)
        self.rte_fbarray_detach = rte_ethdev_rte_fbarray_detach.load(self.lib)
        self.rte_fbarray_get = rte_ethdev_rte_fbarray_get.load(self.lib)
        self.rte_fbarray_find_idx = rte_ethdev_rte_fbarray_find_idx.load(self.lib)
        self.rte_fbarray_set_used = rte_ethdev_rte_fbarray_set_used.load(self.lib)
        self.rte_fbarray_set_free = rte_ethdev_rte_fbarray_set_free.load(self.lib)
        self.rte_fbarray_is_used = rte_ethdev_rte_fbarray_is_used.load(self.lib)
        self.rte_fbarray_find_next_free = rte_ethdev_rte_fbarray_find_next_free.load(self.lib)
        self.rte_fbarray_find_next_used = rte_ethdev_rte_fbarray_find_next_used.load(self.lib)
        self.rte_fbarray_find_next_n_free = rte_ethdev_rte_fbarray_find_next_n_free.load(self.lib)
        self.rte_fbarray_find_next_n_used = rte_ethdev_rte_fbarray_find_next_n_used.load(self.lib)
        self.rte_fbarray_find_contig_free = rte_ethdev_rte_fbarray_find_contig_free.load(self.lib)
        self.rte_fbarray_find_contig_used = rte_ethdev_rte_fbarray_find_contig_used.load(self.lib)
        self.rte_fbarray_find_prev_free = rte_ethdev_rte_fbarray_find_prev_free.load(self.lib)
        self.rte_fbarray_find_prev_used = rte_ethdev_rte_fbarray_find_prev_used.load(self.lib)
        self.rte_fbarray_find_prev_n_free = rte_ethdev_rte_fbarray_find_prev_n_free.load(self.lib)
        self.rte_fbarray_find_prev_n_used = rte_ethdev_rte_fbarray_find_prev_n_used.load(self.lib)
        self.rte_fbarray_find_rev_contig_free = rte_ethdev_rte_fbarray_find_rev_contig_free.load(self.lib)
        self.rte_fbarray_find_rev_contig_used = rte_ethdev_rte_fbarray_find_rev_contig_used.load(self.lib)
        self.rte_fbarray_find_biggest_free = rte_ethdev_rte_fbarray_find_biggest_free.load(self.lib)
        self.rte_fbarray_find_biggest_used = rte_ethdev_rte_fbarray_find_biggest_used.load(self.lib)
        self.rte_fbarray_find_rev_biggest_free = rte_ethdev_rte_fbarray_find_rev_biggest_free.load(self.lib)
        self.rte_fbarray_find_rev_biggest_used = rte_ethdev_rte_fbarray_find_rev_biggest_used.load(self.lib)
        self.rte_fbarray_dump_metadata = rte_ethdev_rte_fbarray_dump_metadata.load(self.lib)
        self.rte_mem_lock_page = rte_ethdev_rte_mem_lock_page.load(self.lib)
        self.rte_mem_virt2phy = rte_ethdev_rte_mem_virt2phy.load(self.lib)
        self.rte_mem_virt2iova = rte_ethdev_rte_mem_virt2iova.load(self.lib)
        self.rte_mem_iova2virt = rte_ethdev_rte_mem_iova2virt.load(self.lib)
        self.rte_mem_virt2memseg = rte_ethdev_rte_mem_virt2memseg.load(self.lib)
        self.rte_mem_virt2memseg_list = rte_ethdev_rte_mem_virt2memseg_list.load(self.lib)
        self.rte_memseg_walk = rte_ethdev_rte_memseg_walk.load(self.lib)
        self.rte_memseg_contig_walk = rte_ethdev_rte_memseg_contig_walk.load(self.lib)
        self.rte_memseg_list_walk = rte_ethdev_rte_memseg_list_walk.load(self.lib)
        self.rte_memseg_walk_thread_unsafe = rte_ethdev_rte_memseg_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_contig_walk_thread_unsafe = rte_ethdev_rte_memseg_contig_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_list_walk_thread_unsafe = rte_ethdev_rte_memseg_list_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_get_fd = rte_ethdev_rte_memseg_get_fd.load(self.lib)
        self.rte_memseg_get_fd_thread_unsafe = rte_ethdev_rte_memseg_get_fd_thread_unsafe.load(self.lib)
        self.rte_memseg_get_fd_offset = rte_ethdev_rte_memseg_get_fd_offset.load(self.lib)
        self.rte_memseg_get_fd_offset_thread_unsafe = rte_ethdev_rte_memseg_get_fd_offset_thread_unsafe.load(self.lib)
        self.rte_extmem_register = rte_ethdev_rte_extmem_register.load(self.lib)
        self.rte_extmem_unregister = rte_ethdev_rte_extmem_unregister.load(self.lib)
        self.rte_extmem_attach = rte_ethdev_rte_extmem_attach.load(self.lib)
        self.rte_extmem_detach = rte_ethdev_rte_extmem_detach.load(self.lib)
        self.rte_dump_physmem_layout = rte_ethdev_rte_dump_physmem_layout.load(self.lib)
        self.rte_eal_get_physmem_size = rte_ethdev_rte_eal_get_physmem_size.load(self.lib)
        self.rte_memory_get_nchannel = rte_ethdev_rte_memory_get_nchannel.load(self.lib)
        self.rte_memory_get_nrank = rte_ethdev_rte_memory_get_nrank.load(self.lib)
        self.rte_mem_check_dma_mask = rte_ethdev_rte_mem_check_dma_mask.load(self.lib)
        self.rte_mem_check_dma_mask_thread_unsafe = rte_ethdev_rte_mem_check_dma_mask_thread_unsafe.load(self.lib)
        self.rte_mem_set_dma_mask = rte_ethdev_rte_mem_set_dma_mask.load(self.lib)
        self.rte_eal_using_phys_addrs = rte_ethdev_rte_eal_using_phys_addrs.load(self.lib)
        self.rte_mem_event_callback_register = rte_ethdev_rte_mem_event_callback_register.load(self.lib)
        self.rte_mem_event_callback_unregister = rte_ethdev_rte_mem_event_callback_unregister.load(self.lib)
        self.rte_mem_alloc_validator_register = rte_ethdev_rte_mem_alloc_validator_register.load(self.lib)
        self.rte_mem_alloc_validator_unregister = rte_ethdev_rte_mem_alloc_validator_unregister.load(self.lib)
        self.rte_memzero_explicit = rte_ethdev_rte_memzero_explicit.load(self.lib)
        self.rte_memzone_max_set = rte_ethdev_rte_memzone_max_set.load(self.lib)
        self.rte_memzone_max_get = rte_ethdev_rte_memzone_max_get.load(self.lib)
        self.rte_memzone_reserve = rte_ethdev_rte_memzone_reserve.load(self.lib)
        self.rte_memzone_reserve_aligned = rte_ethdev_rte_memzone_reserve_aligned.load(self.lib)
        self.rte_memzone_reserve_bounded = rte_ethdev_rte_memzone_reserve_bounded.load(self.lib)
        self.rte_memzone_free = rte_ethdev_rte_memzone_free.load(self.lib)
        self.rte_memzone_lookup = rte_ethdev_rte_memzone_lookup.load(self.lib)
        self.rte_memzone_dump = rte_ethdev_rte_memzone_dump.load(self.lib)
        self.rte_memzone_walk = rte_ethdev_rte_memzone_walk.load(self.lib)
        self.rte_ring_get_memsize_elem = rte_ethdev_rte_ring_get_memsize_elem.load(self.lib)
        self.rte_ring_create_elem = rte_ethdev_rte_ring_create_elem.load(self.lib)
        self.rte_ring_mp_enqueue_bulk_elem = rte_ethdev_rte_ring_mp_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_sp_enqueue_bulk_elem = rte_ethdev_rte_ring_sp_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mp_hts_enqueue_bulk_elem = rte_ethdev_rte_ring_mp_hts_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mc_hts_dequeue_bulk_elem = rte_ethdev_rte_ring_mc_hts_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_mp_hts_enqueue_burst_elem = rte_ethdev_rte_ring_mp_hts_enqueue_burst_elem.load(self.lib)
        self.rte_ring_mc_hts_dequeue_burst_elem = rte_ethdev_rte_ring_mc_hts_dequeue_burst_elem.load(self.lib)
        self.rte_ring_mp_hts_enqueue_bulk = rte_ethdev_rte_ring_mp_hts_enqueue_bulk.load(self.lib)
        self.rte_ring_mc_hts_dequeue_bulk = rte_ethdev_rte_ring_mc_hts_dequeue_bulk.load(self.lib)
        self.rte_ring_mp_hts_enqueue_burst = rte_ethdev_rte_ring_mp_hts_enqueue_burst.load(self.lib)
        self.rte_ring_mc_hts_dequeue_burst = rte_ethdev_rte_ring_mc_hts_dequeue_burst.load(self.lib)
        self.rte_ring_mp_rts_enqueue_bulk_elem = rte_ethdev_rte_ring_mp_rts_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mc_rts_dequeue_bulk_elem = rte_ethdev_rte_ring_mc_rts_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_mp_rts_enqueue_burst_elem = rte_ethdev_rte_ring_mp_rts_enqueue_burst_elem.load(self.lib)
        self.rte_ring_mc_rts_dequeue_burst_elem = rte_ethdev_rte_ring_mc_rts_dequeue_burst_elem.load(self.lib)
        self.rte_ring_mp_rts_enqueue_bulk = rte_ethdev_rte_ring_mp_rts_enqueue_bulk.load(self.lib)
        self.rte_ring_mc_rts_dequeue_bulk = rte_ethdev_rte_ring_mc_rts_dequeue_bulk.load(self.lib)
        self.rte_ring_mp_rts_enqueue_burst = rte_ethdev_rte_ring_mp_rts_enqueue_burst.load(self.lib)
        self.rte_ring_mc_rts_dequeue_burst = rte_ethdev_rte_ring_mc_rts_dequeue_burst.load(self.lib)
        self.rte_ring_get_prod_htd_max = rte_ethdev_rte_ring_get_prod_htd_max.load(self.lib)
        self.rte_ring_set_prod_htd_max = rte_ethdev_rte_ring_set_prod_htd_max.load(self.lib)
        self.rte_ring_get_cons_htd_max = rte_ethdev_rte_ring_get_cons_htd_max.load(self.lib)
        self.rte_ring_set_cons_htd_max = rte_ethdev_rte_ring_set_cons_htd_max.load(self.lib)
        self.rte_ring_enqueue_bulk_elem = rte_ethdev_rte_ring_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mp_enqueue_elem = rte_ethdev_rte_ring_mp_enqueue_elem.load(self.lib)
        self.rte_ring_sp_enqueue_elem = rte_ethdev_rte_ring_sp_enqueue_elem.load(self.lib)
        self.rte_ring_enqueue_elem = rte_ethdev_rte_ring_enqueue_elem.load(self.lib)
        self.rte_ring_mc_dequeue_bulk_elem = rte_ethdev_rte_ring_mc_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_sc_dequeue_bulk_elem = rte_ethdev_rte_ring_sc_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_dequeue_bulk_elem = rte_ethdev_rte_ring_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_mc_dequeue_elem = rte_ethdev_rte_ring_mc_dequeue_elem.load(self.lib)
        self.rte_ring_sc_dequeue_elem = rte_ethdev_rte_ring_sc_dequeue_elem.load(self.lib)
        self.rte_ring_dequeue_elem = rte_ethdev_rte_ring_dequeue_elem.load(self.lib)
        self.rte_ring_mp_enqueue_burst_elem = rte_ethdev_rte_ring_mp_enqueue_burst_elem.load(self.lib)
        self.rte_ring_sp_enqueue_burst_elem = rte_ethdev_rte_ring_sp_enqueue_burst_elem.load(self.lib)
        self.rte_ring_enqueue_burst_elem = rte_ethdev_rte_ring_enqueue_burst_elem.load(self.lib)
        self.rte_ring_mc_dequeue_burst_elem = rte_ethdev_rte_ring_mc_dequeue_burst_elem.load(self.lib)
        self.rte_ring_sc_dequeue_burst_elem = rte_ethdev_rte_ring_sc_dequeue_burst_elem.load(self.lib)
        self.rte_ring_dequeue_burst_elem = rte_ethdev_rte_ring_dequeue_burst_elem.load(self.lib)
        self.rte_ring_enqueue_bulk_elem_start = rte_ethdev_rte_ring_enqueue_bulk_elem_start.load(self.lib)
        self.rte_ring_enqueue_bulk_start = rte_ethdev_rte_ring_enqueue_bulk_start.load(self.lib)
        self.rte_ring_enqueue_burst_elem_start = rte_ethdev_rte_ring_enqueue_burst_elem_start.load(self.lib)
        self.rte_ring_enqueue_burst_start = rte_ethdev_rte_ring_enqueue_burst_start.load(self.lib)
        self.rte_ring_enqueue_elem_finish = rte_ethdev_rte_ring_enqueue_elem_finish.load(self.lib)
        self.rte_ring_enqueue_finish = rte_ethdev_rte_ring_enqueue_finish.load(self.lib)
        self.rte_ring_dequeue_bulk_elem_start = rte_ethdev_rte_ring_dequeue_bulk_elem_start.load(self.lib)
        self.rte_ring_dequeue_bulk_start = rte_ethdev_rte_ring_dequeue_bulk_start.load(self.lib)
        self.rte_ring_dequeue_burst_elem_start = rte_ethdev_rte_ring_dequeue_burst_elem_start.load(self.lib)
        self.rte_ring_dequeue_burst_start = rte_ethdev_rte_ring_dequeue_burst_start.load(self.lib)
        self.rte_ring_dequeue_elem_finish = rte_ethdev_rte_ring_dequeue_elem_finish.load(self.lib)
        self.rte_ring_dequeue_finish = rte_ethdev_rte_ring_dequeue_finish.load(self.lib)
        self.rte_ring_enqueue_zc_bulk_elem_start = rte_ethdev_rte_ring_enqueue_zc_bulk_elem_start.load(self.lib)
        self.rte_ring_enqueue_zc_bulk_start = rte_ethdev_rte_ring_enqueue_zc_bulk_start.load(self.lib)
        self.rte_ring_enqueue_zc_burst_elem_start = rte_ethdev_rte_ring_enqueue_zc_burst_elem_start.load(self.lib)
        self.rte_ring_enqueue_zc_burst_start = rte_ethdev_rte_ring_enqueue_zc_burst_start.load(self.lib)
        self.rte_ring_enqueue_zc_elem_finish = rte_ethdev_rte_ring_enqueue_zc_elem_finish.load(self.lib)
        self.rte_ring_enqueue_zc_finish = rte_ethdev_rte_ring_enqueue_zc_finish.load(self.lib)
        self.rte_ring_dequeue_zc_bulk_elem_start = rte_ethdev_rte_ring_dequeue_zc_bulk_elem_start.load(self.lib)
        self.rte_ring_dequeue_zc_bulk_start = rte_ethdev_rte_ring_dequeue_zc_bulk_start.load(self.lib)
        self.rte_ring_dequeue_zc_burst_elem_start = rte_ethdev_rte_ring_dequeue_zc_burst_elem_start.load(self.lib)
        self.rte_ring_dequeue_zc_burst_start = rte_ethdev_rte_ring_dequeue_zc_burst_start.load(self.lib)
        self.rte_ring_dequeue_zc_elem_finish = rte_ethdev_rte_ring_dequeue_zc_elem_finish.load(self.lib)
        self.rte_ring_dequeue_zc_finish = rte_ethdev_rte_ring_dequeue_zc_finish.load(self.lib)
        self.rte_ring_get_memsize = rte_ethdev_rte_ring_get_memsize.load(self.lib)
        self.rte_ring_init = rte_ethdev_rte_ring_init.load(self.lib)
        self.rte_ring_free = rte_ethdev_rte_ring_free.load(self.lib)
        self.rte_ring_create = rte_ethdev_rte_ring_create.load(self.lib)
        self.rte_ring_dump = rte_ethdev_rte_ring_dump.load(self.lib)
        self.rte_ring_headtail_dump = rte_ethdev_rte_ring_headtail_dump.load(self.lib)
        self.rte_ring_mp_enqueue_bulk = rte_ethdev_rte_ring_mp_enqueue_bulk.load(self.lib)
        self.rte_ring_sp_enqueue_bulk = rte_ethdev_rte_ring_sp_enqueue_bulk.load(self.lib)
        self.rte_ring_enqueue_bulk = rte_ethdev_rte_ring_enqueue_bulk.load(self.lib)
        self.rte_ring_mp_enqueue = rte_ethdev_rte_ring_mp_enqueue.load(self.lib)
        self.rte_ring_sp_enqueue = rte_ethdev_rte_ring_sp_enqueue.load(self.lib)
        self.rte_ring_enqueue = rte_ethdev_rte_ring_enqueue.load(self.lib)
        self.rte_ring_mc_dequeue_bulk = rte_ethdev_rte_ring_mc_dequeue_bulk.load(self.lib)
        self.rte_ring_sc_dequeue_bulk = rte_ethdev_rte_ring_sc_dequeue_bulk.load(self.lib)
        self.rte_ring_dequeue_bulk = rte_ethdev_rte_ring_dequeue_bulk.load(self.lib)
        self.rte_ring_mc_dequeue = rte_ethdev_rte_ring_mc_dequeue.load(self.lib)
        self.rte_ring_sc_dequeue = rte_ethdev_rte_ring_sc_dequeue.load(self.lib)
        self.rte_ring_dequeue = rte_ethdev_rte_ring_dequeue.load(self.lib)
        self.rte_ring_reset = rte_ethdev_rte_ring_reset.load(self.lib)
        self.rte_ring_count = rte_ethdev_rte_ring_count.load(self.lib)
        self.rte_ring_free_count = rte_ethdev_rte_ring_free_count.load(self.lib)
        self.rte_ring_full = rte_ethdev_rte_ring_full.load(self.lib)
        self.rte_ring_empty = rte_ethdev_rte_ring_empty.load(self.lib)
        self.rte_ring_get_size = rte_ethdev_rte_ring_get_size.load(self.lib)
        self.rte_ring_get_capacity = rte_ethdev_rte_ring_get_capacity.load(self.lib)
        self.rte_ring_get_prod_sync_type = rte_ethdev_rte_ring_get_prod_sync_type.load(self.lib)
        self.rte_ring_is_prod_single = rte_ethdev_rte_ring_is_prod_single.load(self.lib)
        self.rte_ring_get_cons_sync_type = rte_ethdev_rte_ring_get_cons_sync_type.load(self.lib)
        self.rte_ring_is_cons_single = rte_ethdev_rte_ring_is_cons_single.load(self.lib)
        self.rte_ring_list_dump = rte_ethdev_rte_ring_list_dump.load(self.lib)
        self.rte_ring_lookup = rte_ethdev_rte_ring_lookup.load(self.lib)
        self.rte_ring_mp_enqueue_burst = rte_ethdev_rte_ring_mp_enqueue_burst.load(self.lib)
        self.rte_ring_sp_enqueue_burst = rte_ethdev_rte_ring_sp_enqueue_burst.load(self.lib)
        self.rte_ring_enqueue_burst = rte_ethdev_rte_ring_enqueue_burst.load(self.lib)
        self.rte_ring_mc_dequeue_burst = rte_ethdev_rte_ring_mc_dequeue_burst.load(self.lib)
        self.rte_ring_sc_dequeue_burst = rte_ethdev_rte_ring_sc_dequeue_burst.load(self.lib)
        self.rte_ring_dequeue_burst = rte_ethdev_rte_ring_dequeue_burst.load(self.lib)
        self.rte_mov16 = rte_ethdev_rte_mov16.load(self.lib)
        self.rte_mov32 = rte_ethdev_rte_mov32.load(self.lib)
        self.rte_mov64 = rte_ethdev_rte_mov64.load(self.lib)
        self.rte_mov128 = rte_ethdev_rte_mov128.load(self.lib)
        self.rte_mov256 = rte_ethdev_rte_mov256.load(self.lib)
        self.rte_mov48 = rte_ethdev_rte_mov48.load(self.lib)
        self.rte_mempool_trace_ops_dequeue_bulk = rte_ethdev_rte_mempool_trace_ops_dequeue_bulk.load(self.lib)
        self.rte_mempool_trace_ops_dequeue_contig_blocks = rte_ethdev_rte_mempool_trace_ops_dequeue_contig_blocks.load(self.lib)
        self.rte_mempool_trace_ops_enqueue_bulk = rte_ethdev_rte_mempool_trace_ops_enqueue_bulk.load(self.lib)
        self.rte_mempool_trace_generic_put = rte_ethdev_rte_mempool_trace_generic_put.load(self.lib)
        self.rte_mempool_trace_put_bulk = rte_ethdev_rte_mempool_trace_put_bulk.load(self.lib)
        self.rte_mempool_trace_generic_get = rte_ethdev_rte_mempool_trace_generic_get.load(self.lib)
        self.rte_mempool_trace_get_bulk = rte_ethdev_rte_mempool_trace_get_bulk.load(self.lib)
        self.rte_mempool_trace_get_contig_blocks = rte_ethdev_rte_mempool_trace_get_contig_blocks.load(self.lib)
        self.rte_mempool_trace_default_cache = rte_ethdev_rte_mempool_trace_default_cache.load(self.lib)
        self.rte_mempool_trace_cache_flush = rte_ethdev_rte_mempool_trace_cache_flush.load(self.lib)
        self.rte_mempool_get_header = rte_ethdev_rte_mempool_get_header.load(self.lib)
        self.rte_mempool_from_obj = rte_ethdev_rte_mempool_from_obj.load(self.lib)
        self.rte_mempool_get_trailer = rte_ethdev_rte_mempool_get_trailer.load(self.lib)
        self.rte_mempool_check_cookies = rte_ethdev_rte_mempool_check_cookies.load(self.lib)
        self.rte_mempool_contig_blocks_check_cookies = rte_ethdev_rte_mempool_contig_blocks_check_cookies.load(self.lib)
        self.rte_mempool_op_calc_mem_size_helper = rte_ethdev_rte_mempool_op_calc_mem_size_helper.load(self.lib)
        self.rte_mempool_op_calc_mem_size_default = rte_ethdev_rte_mempool_op_calc_mem_size_default.load(self.lib)
        self.rte_mempool_op_populate_helper = rte_ethdev_rte_mempool_op_populate_helper.load(self.lib)
        self.rte_mempool_op_populate_default = rte_ethdev_rte_mempool_op_populate_default.load(self.lib)
        self.rte_mempool_get_ops = rte_ethdev_rte_mempool_get_ops.load(self.lib)
        self.rte_mempool_ops_alloc = rte_ethdev_rte_mempool_ops_alloc.load(self.lib)
        self.rte_mempool_ops_dequeue_bulk = rte_ethdev_rte_mempool_ops_dequeue_bulk.load(self.lib)
        self.rte_mempool_ops_dequeue_contig_blocks = rte_ethdev_rte_mempool_ops_dequeue_contig_blocks.load(self.lib)
        self.rte_mempool_ops_enqueue_bulk = rte_ethdev_rte_mempool_ops_enqueue_bulk.load(self.lib)
        self.rte_mempool_ops_get_count = rte_ethdev_rte_mempool_ops_get_count.load(self.lib)
        self.rte_mempool_ops_calc_mem_size = rte_ethdev_rte_mempool_ops_calc_mem_size.load(self.lib)
        self.rte_mempool_ops_populate = rte_ethdev_rte_mempool_ops_populate.load(self.lib)
        self.rte_mempool_ops_get_info = rte_ethdev_rte_mempool_ops_get_info.load(self.lib)
        self.rte_mempool_ops_free = rte_ethdev_rte_mempool_ops_free.load(self.lib)
        self.rte_mempool_set_ops_byname = rte_ethdev_rte_mempool_set_ops_byname.load(self.lib)
        self.rte_mempool_register_ops = rte_ethdev_rte_mempool_register_ops.load(self.lib)
        self.rte_mempool_free = rte_ethdev_rte_mempool_free.load(self.lib)
        self.rte_mempool_create = rte_ethdev_rte_mempool_create.load(self.lib)
        self.rte_mempool_create_empty = rte_ethdev_rte_mempool_create_empty.load(self.lib)
        self.rte_mempool_populate_iova = rte_ethdev_rte_mempool_populate_iova.load(self.lib)
        self.rte_mempool_populate_virt = rte_ethdev_rte_mempool_populate_virt.load(self.lib)
        self.rte_mempool_populate_default = rte_ethdev_rte_mempool_populate_default.load(self.lib)
        self.rte_mempool_populate_anon = rte_ethdev_rte_mempool_populate_anon.load(self.lib)
        self.rte_mempool_obj_iter = rte_ethdev_rte_mempool_obj_iter.load(self.lib)
        self.rte_mempool_mem_iter = rte_ethdev_rte_mempool_mem_iter.load(self.lib)
        self.rte_mempool_dump = rte_ethdev_rte_mempool_dump.load(self.lib)
        self.rte_mempool_cache_create = rte_ethdev_rte_mempool_cache_create.load(self.lib)
        self.rte_mempool_cache_free = rte_ethdev_rte_mempool_cache_free.load(self.lib)
        self.rte_mempool_default_cache = rte_ethdev_rte_mempool_default_cache.load(self.lib)
        self.rte_mempool_cache_flush = rte_ethdev_rte_mempool_cache_flush.load(self.lib)
        self.rte_mempool_do_generic_put = rte_ethdev_rte_mempool_do_generic_put.load(self.lib)
        self.rte_mempool_generic_put = rte_ethdev_rte_mempool_generic_put.load(self.lib)
        self.rte_mempool_put_bulk = rte_ethdev_rte_mempool_put_bulk.load(self.lib)
        self.rte_mempool_put = rte_ethdev_rte_mempool_put.load(self.lib)
        self.rte_mempool_do_generic_get = rte_ethdev_rte_mempool_do_generic_get.load(self.lib)
        self.rte_mempool_generic_get = rte_ethdev_rte_mempool_generic_get.load(self.lib)
        self.rte_mempool_get_bulk = rte_ethdev_rte_mempool_get_bulk.load(self.lib)
        self.rte_mempool_get = rte_ethdev_rte_mempool_get.load(self.lib)
        self.rte_mempool_get_contig_blocks = rte_ethdev_rte_mempool_get_contig_blocks.load(self.lib)
        self.rte_mempool_avail_count = rte_ethdev_rte_mempool_avail_count.load(self.lib)
        self.rte_mempool_in_use_count = rte_ethdev_rte_mempool_in_use_count.load(self.lib)
        self.rte_mempool_full = rte_ethdev_rte_mempool_full.load(self.lib)
        self.rte_mempool_empty = rte_ethdev_rte_mempool_empty.load(self.lib)
        self.rte_mempool_virt2iova = rte_ethdev_rte_mempool_virt2iova.load(self.lib)
        self.rte_mempool_audit = rte_ethdev_rte_mempool_audit.load(self.lib)
        self.rte_mempool_get_priv = rte_ethdev_rte_mempool_get_priv.load(self.lib)
        self.rte_mempool_list_dump = rte_ethdev_rte_mempool_list_dump.load(self.lib)
        self.rte_mempool_lookup = rte_ethdev_rte_mempool_lookup.load(self.lib)
        self.rte_mempool_calc_obj_size = rte_ethdev_rte_mempool_calc_obj_size.load(self.lib)
        self.rte_mempool_walk = rte_ethdev_rte_mempool_walk.load(self.lib)
        self.rte_mempool_get_mem_range = rte_ethdev_rte_mempool_get_mem_range.load(self.lib)
        self.rte_mempool_get_obj_alignment = rte_ethdev_rte_mempool_get_obj_alignment.load(self.lib)
        self.rte_mempool_get_page_size = rte_ethdev_rte_mempool_get_page_size.load(self.lib)
        self.rte_mempool_event_callback_register = rte_ethdev_rte_mempool_event_callback_register.load(self.lib)
        self.rte_mempool_event_callback_unregister = rte_ethdev_rte_mempool_event_callback_unregister.load(self.lib)
        self.rte_prefetch0 = rte_ethdev_rte_prefetch0.load(self.lib)
        self.rte_prefetch1 = rte_ethdev_rte_prefetch1.load(self.lib)
        self.rte_prefetch2 = rte_ethdev_rte_prefetch2.load(self.lib)
        self.rte_prefetch_non_temporal = rte_ethdev_rte_prefetch_non_temporal.load(self.lib)
        self.rte_prefetch0_write = rte_ethdev_rte_prefetch0_write.load(self.lib)
        self.rte_prefetch1_write = rte_ethdev_rte_prefetch1_write.load(self.lib)
        self.rte_prefetch2_write = rte_ethdev_rte_prefetch2_write.load(self.lib)
        self.rte_cldemote = rte_ethdev_rte_cldemote.load(self.lib)
        self.rte_get_ptype_l2_name = rte_ethdev_rte_get_ptype_l2_name.load(self.lib)
        self.rte_get_ptype_l3_name = rte_ethdev_rte_get_ptype_l3_name.load(self.lib)
        self.rte_get_ptype_l4_name = rte_ethdev_rte_get_ptype_l4_name.load(self.lib)
        self.rte_get_ptype_tunnel_name = rte_ethdev_rte_get_ptype_tunnel_name.load(self.lib)
        self.rte_get_ptype_inner_l2_name = rte_ethdev_rte_get_ptype_inner_l2_name.load(self.lib)
        self.rte_get_ptype_inner_l3_name = rte_ethdev_rte_get_ptype_inner_l3_name.load(self.lib)
        self.rte_get_ptype_inner_l4_name = rte_ethdev_rte_get_ptype_inner_l4_name.load(self.lib)
        self.rte_get_ptype_name = rte_ethdev_rte_get_ptype_name.load(self.lib)
        self.rte_constant_bswap16 = rte_ethdev_rte_constant_bswap16.load(self.lib)
        self.rte_constant_bswap32 = rte_ethdev_rte_constant_bswap32.load(self.lib)
        self.rte_constant_bswap64 = rte_ethdev_rte_constant_bswap64.load(self.lib)
        self.rte_get_rx_ol_flag_name = rte_ethdev_rte_get_rx_ol_flag_name.load(self.lib)
        self.rte_get_rx_ol_flag_list = rte_ethdev_rte_get_rx_ol_flag_list.load(self.lib)
        self.rte_get_tx_ol_flag_name = rte_ethdev_rte_get_tx_ol_flag_name.load(self.lib)
        self.rte_get_tx_ol_flag_list = rte_ethdev_rte_get_tx_ol_flag_list.load(self.lib)
        self.rte_mbuf_prefetch_part1 = rte_ethdev_rte_mbuf_prefetch_part1.load(self.lib)
        self.rte_mbuf_prefetch_part2 = rte_ethdev_rte_mbuf_prefetch_part2.load(self.lib)
        self.rte_pktmbuf_priv_size = rte_ethdev_rte_pktmbuf_priv_size.load(self.lib)
        self.rte_mbuf_iova_get = rte_ethdev_rte_mbuf_iova_get.load(self.lib)
        self.rte_mbuf_iova_set = rte_ethdev_rte_mbuf_iova_set.load(self.lib)
        self.rte_mbuf_data_iova = rte_ethdev_rte_mbuf_data_iova.load(self.lib)
        self.rte_mbuf_data_iova_default = rte_ethdev_rte_mbuf_data_iova_default.load(self.lib)
        self.rte_mbuf_from_indirect = rte_ethdev_rte_mbuf_from_indirect.load(self.lib)
        self.rte_mbuf_buf_addr = rte_ethdev_rte_mbuf_buf_addr.load(self.lib)
        self.rte_mbuf_data_addr_default = rte_ethdev_rte_mbuf_data_addr_default.load(self.lib)
        self.rte_mbuf_to_baddr = rte_ethdev_rte_mbuf_to_baddr.load(self.lib)
        self.rte_mbuf_to_priv = rte_ethdev_rte_mbuf_to_priv.load(self.lib)
        self.rte_pktmbuf_priv_flags = rte_ethdev_rte_pktmbuf_priv_flags.load(self.lib)
        self.rte_mbuf_refcnt_read = rte_ethdev_rte_mbuf_refcnt_read.load(self.lib)
        self.rte_mbuf_refcnt_set = rte_ethdev_rte_mbuf_refcnt_set.load(self.lib)
        self.rte_mbuf_refcnt_update = rte_ethdev_rte_mbuf_refcnt_update.load(self.lib)
        self.rte_mbuf_ext_refcnt_read = rte_ethdev_rte_mbuf_ext_refcnt_read.load(self.lib)
        self.rte_mbuf_ext_refcnt_set = rte_ethdev_rte_mbuf_ext_refcnt_set.load(self.lib)
        self.rte_mbuf_ext_refcnt_update = rte_ethdev_rte_mbuf_ext_refcnt_update.load(self.lib)
        self.rte_mbuf_sanity_check = rte_ethdev_rte_mbuf_sanity_check.load(self.lib)
        self.rte_mbuf_check = rte_ethdev_rte_mbuf_check.load(self.lib)
        self.rte_mbuf_raw_alloc = rte_ethdev_rte_mbuf_raw_alloc.load(self.lib)
        self.rte_mbuf_raw_alloc_bulk = rte_ethdev_rte_mbuf_raw_alloc_bulk.load(self.lib)
        self.rte_mbuf_raw_free = rte_ethdev_rte_mbuf_raw_free.load(self.lib)
        self.rte_mbuf_raw_free_bulk = rte_ethdev_rte_mbuf_raw_free_bulk.load(self.lib)
        self.rte_pktmbuf_init = rte_ethdev_rte_pktmbuf_init.load(self.lib)
        self.rte_pktmbuf_pool_init = rte_ethdev_rte_pktmbuf_pool_init.load(self.lib)
        self.rte_pktmbuf_pool_create = rte_ethdev_rte_pktmbuf_pool_create.load(self.lib)
        self.rte_pktmbuf_pool_create_by_ops = rte_ethdev_rte_pktmbuf_pool_create_by_ops.load(self.lib)
        self.rte_pktmbuf_pool_create_extbuf = rte_ethdev_rte_pktmbuf_pool_create_extbuf.load(self.lib)
        self.rte_pktmbuf_data_room_size = rte_ethdev_rte_pktmbuf_data_room_size.load(self.lib)
        self.rte_pktmbuf_reset_headroom = rte_ethdev_rte_pktmbuf_reset_headroom.load(self.lib)
        self.rte_pktmbuf_reset = rte_ethdev_rte_pktmbuf_reset.load(self.lib)
        self.rte_pktmbuf_alloc = rte_ethdev_rte_pktmbuf_alloc.load(self.lib)
        self.rte_pktmbuf_alloc_bulk = rte_ethdev_rte_pktmbuf_alloc_bulk.load(self.lib)
        self.rte_pktmbuf_ext_shinfo_init_helper = rte_ethdev_rte_pktmbuf_ext_shinfo_init_helper.load(self.lib)
        self.rte_pktmbuf_attach_extbuf = rte_ethdev_rte_pktmbuf_attach_extbuf.load(self.lib)
        self.rte_mbuf_dynfield_copy = rte_ethdev_rte_mbuf_dynfield_copy.load(self.lib)
        self.rte_pktmbuf_attach = rte_ethdev_rte_pktmbuf_attach.load(self.lib)
        self.rte_pktmbuf_detach = rte_ethdev_rte_pktmbuf_detach.load(self.lib)
        self.rte_pktmbuf_prefree_seg = rte_ethdev_rte_pktmbuf_prefree_seg.load(self.lib)
        self.rte_pktmbuf_free_seg = rte_ethdev_rte_pktmbuf_free_seg.load(self.lib)
        self.rte_pktmbuf_free = rte_ethdev_rte_pktmbuf_free.load(self.lib)
        self.rte_pktmbuf_free_bulk = rte_ethdev_rte_pktmbuf_free_bulk.load(self.lib)
        self.rte_pktmbuf_clone = rte_ethdev_rte_pktmbuf_clone.load(self.lib)
        self.rte_pktmbuf_copy = rte_ethdev_rte_pktmbuf_copy.load(self.lib)
        self.rte_pktmbuf_refcnt_update = rte_ethdev_rte_pktmbuf_refcnt_update.load(self.lib)
        self.rte_pktmbuf_headroom = rte_ethdev_rte_pktmbuf_headroom.load(self.lib)
        self.rte_pktmbuf_tailroom = rte_ethdev_rte_pktmbuf_tailroom.load(self.lib)
        self.rte_pktmbuf_lastseg = rte_ethdev_rte_pktmbuf_lastseg.load(self.lib)
        self.rte_pktmbuf_prepend = rte_ethdev_rte_pktmbuf_prepend.load(self.lib)
        self.rte_pktmbuf_append = rte_ethdev_rte_pktmbuf_append.load(self.lib)
        self.rte_pktmbuf_adj = rte_ethdev_rte_pktmbuf_adj.load(self.lib)
        self.rte_pktmbuf_trim = rte_ethdev_rte_pktmbuf_trim.load(self.lib)
        self.rte_pktmbuf_is_contiguous = rte_ethdev_rte_pktmbuf_is_contiguous.load(self.lib)
        self.rte_pktmbuf_read = rte_ethdev_rte_pktmbuf_read.load(self.lib)
        self.rte_pktmbuf_chain = rte_ethdev_rte_pktmbuf_chain.load(self.lib)
        self.rte_mbuf_tx_offload = rte_ethdev_rte_mbuf_tx_offload.load(self.lib)
        self.rte_validate_tx_offload = rte_ethdev_rte_validate_tx_offload.load(self.lib)
        self.rte_pktmbuf_linearize = rte_ethdev_rte_pktmbuf_linearize.load(self.lib)
        self.rte_pktmbuf_dump = rte_ethdev_rte_pktmbuf_dump.load(self.lib)
        self.rte_mbuf_sched_queue_get = rte_ethdev_rte_mbuf_sched_queue_get.load(self.lib)
        self.rte_mbuf_sched_traffic_class_get = rte_ethdev_rte_mbuf_sched_traffic_class_get.load(self.lib)
        self.rte_mbuf_sched_color_get = rte_ethdev_rte_mbuf_sched_color_get.load(self.lib)
        self.rte_mbuf_sched_get = rte_ethdev_rte_mbuf_sched_get.load(self.lib)
        self.rte_mbuf_sched_queue_set = rte_ethdev_rte_mbuf_sched_queue_set.load(self.lib)
        self.rte_mbuf_sched_traffic_class_set = rte_ethdev_rte_mbuf_sched_traffic_class_set.load(self.lib)
        self.rte_mbuf_sched_color_set = rte_ethdev_rte_mbuf_sched_color_set.load(self.lib)
        self.rte_mbuf_sched_set = rte_ethdev_rte_mbuf_sched_set.load(self.lib)
        self.rte_is_same_ether_addr = rte_ethdev_rte_is_same_ether_addr.load(self.lib)
        self.rte_is_zero_ether_addr = rte_ethdev_rte_is_zero_ether_addr.load(self.lib)
        self.rte_is_unicast_ether_addr = rte_ethdev_rte_is_unicast_ether_addr.load(self.lib)
        self.rte_is_multicast_ether_addr = rte_ethdev_rte_is_multicast_ether_addr.load(self.lib)
        self.rte_is_broadcast_ether_addr = rte_ethdev_rte_is_broadcast_ether_addr.load(self.lib)
        self.rte_is_universal_ether_addr = rte_ethdev_rte_is_universal_ether_addr.load(self.lib)
        self.rte_is_local_admin_ether_addr = rte_ethdev_rte_is_local_admin_ether_addr.load(self.lib)
        self.rte_is_valid_assigned_ether_addr = rte_ethdev_rte_is_valid_assigned_ether_addr.load(self.lib)
        self.rte_eth_random_addr = rte_ethdev_rte_eth_random_addr.load(self.lib)
        self.rte_ether_addr_copy = rte_ethdev_rte_ether_addr_copy.load(self.lib)
        self.rte_ether_format_addr = rte_ethdev_rte_ether_format_addr.load(self.lib)
        self.rte_ether_unformat_addr = rte_ethdev_rte_ether_unformat_addr.load(self.lib)
        self.rte_vlan_strip = rte_ethdev_rte_vlan_strip.load(self.lib)
        self.rte_vlan_insert = rte_ethdev_rte_vlan_insert.load(self.lib)
        self.rte_net_make_rarp_packet = rte_ethdev_rte_net_make_rarp_packet.load(self.lib)
        self.select = rte_ethdev_select.load(self.lib)
        self.pselect = rte_ethdev_pselect.load(self.lib)
        self.socket = rte_ethdev_socket.load(self.lib)
        self.socketpair = rte_ethdev_socketpair.load(self.lib)
        self.bind = rte_ethdev_bind.load(self.lib)
        self.getsockname = rte_ethdev_getsockname.load(self.lib)
        self.connect = rte_ethdev_connect.load(self.lib)
        self.getpeername = rte_ethdev_getpeername.load(self.lib)
        self.send = rte_ethdev_send.load(self.lib)
        self.recv = rte_ethdev_recv.load(self.lib)
        self.sendto = rte_ethdev_sendto.load(self.lib)
        self.recvfrom = rte_ethdev_recvfrom.load(self.lib)
        self.sendmsg = rte_ethdev_sendmsg.load(self.lib)
        self.recvmsg = rte_ethdev_recvmsg.load(self.lib)
        self.getsockopt = rte_ethdev_getsockopt.load(self.lib)
        self.setsockopt = rte_ethdev_setsockopt.load(self.lib)
        self.listen = rte_ethdev_listen.load(self.lib)
        self.accept = rte_ethdev_accept.load(self.lib)
        self.shutdown = rte_ethdev_shutdown.load(self.lib)
        self.sockatmark = rte_ethdev_sockatmark.load(self.lib)
        self.isfdtype = rte_ethdev_isfdtype.load(self.lib)
        self.ntohl = rte_ethdev_ntohl.load(self.lib)
        self.ntohs = rte_ethdev_ntohs.load(self.lib)
        self.htonl = rte_ethdev_htonl.load(self.lib)
        self.htons = rte_ethdev_htons.load(self.lib)
        self.bindresvport = rte_ethdev_bindresvport.load(self.lib)
        self.bindresvport6 = rte_ethdev_bindresvport6.load(self.lib)
        self.inet_addr = rte_ethdev_inet_addr.load(self.lib)
        self.inet_lnaof = rte_ethdev_inet_lnaof.load(self.lib)
        self.inet_makeaddr = rte_ethdev_inet_makeaddr.load(self.lib)
        self.inet_netof = rte_ethdev_inet_netof.load(self.lib)
        self.inet_network = rte_ethdev_inet_network.load(self.lib)
        self.inet_ntoa = rte_ethdev_inet_ntoa.load(self.lib)
        self.inet_pton = rte_ethdev_inet_pton.load(self.lib)
        self.inet_ntop = rte_ethdev_inet_ntop.load(self.lib)
        self.inet_aton = rte_ethdev_inet_aton.load(self.lib)
        self.inet_neta = rte_ethdev_inet_neta.load(self.lib)
        self.inet_net_ntop = rte_ethdev_inet_net_ntop.load(self.lib)
        self.inet_net_pton = rte_ethdev_inet_net_pton.load(self.lib)
        self.inet_nsap_addr = rte_ethdev_inet_nsap_addr.load(self.lib)
        self.inet_nsap_ntoa = rte_ethdev_inet_nsap_ntoa.load(self.lib)
        self.rte_raw_cksum = rte_ethdev_rte_raw_cksum.load(self.lib)
        self.rte_raw_cksum_mbuf = rte_ethdev_rte_raw_cksum_mbuf.load(self.lib)
        self.rte_ipv4_hdr_len = rte_ethdev_rte_ipv4_hdr_len.load(self.lib)
        self.rte_ipv4_cksum = rte_ethdev_rte_ipv4_cksum.load(self.lib)
        self.rte_ipv4_cksum_simple = rte_ethdev_rte_ipv4_cksum_simple.load(self.lib)
        self.rte_ipv4_phdr_cksum = rte_ethdev_rte_ipv4_phdr_cksum.load(self.lib)
        self.rte_ipv4_udptcp_cksum = rte_ethdev_rte_ipv4_udptcp_cksum.load(self.lib)
        self.rte_ipv4_udptcp_cksum_mbuf = rte_ethdev_rte_ipv4_udptcp_cksum_mbuf.load(self.lib)
        self.rte_ipv4_udptcp_cksum_verify = rte_ethdev_rte_ipv4_udptcp_cksum_verify.load(self.lib)
        self.rte_ipv4_udptcp_cksum_mbuf_verify = rte_ethdev_rte_ipv4_udptcp_cksum_mbuf_verify.load(self.lib)
        self.rte_ipv6_addr_eq = rte_ethdev_rte_ipv6_addr_eq.load(self.lib)
        self.rte_ipv6_addr_mask = rte_ethdev_rte_ipv6_addr_mask.load(self.lib)
        self.rte_ipv6_addr_eq_prefix = rte_ethdev_rte_ipv6_addr_eq_prefix.load(self.lib)
        self.rte_ipv6_mask_depth = rte_ethdev_rte_ipv6_mask_depth.load(self.lib)
        self.rte_ipv6_addr_is_unspec = rte_ethdev_rte_ipv6_addr_is_unspec.load(self.lib)
        self.rte_ipv6_addr_is_loopback = rte_ethdev_rte_ipv6_addr_is_loopback.load(self.lib)
        self.rte_ipv6_addr_is_linklocal = rte_ethdev_rte_ipv6_addr_is_linklocal.load(self.lib)
        self.rte_ipv6_addr_is_sitelocal = rte_ethdev_rte_ipv6_addr_is_sitelocal.load(self.lib)
        self.rte_ipv6_addr_is_v4compat = rte_ethdev_rte_ipv6_addr_is_v4compat.load(self.lib)
        self.rte_ipv6_addr_is_v4mapped = rte_ethdev_rte_ipv6_addr_is_v4mapped.load(self.lib)
        self.rte_ipv6_addr_is_mcast = rte_ethdev_rte_ipv6_addr_is_mcast.load(self.lib)
        self.rte_ipv6_llocal_from_ethernet = rte_ethdev_rte_ipv6_llocal_from_ethernet.load(self.lib)
        self.rte_ipv6_solnode_from_addr = rte_ethdev_rte_ipv6_solnode_from_addr.load(self.lib)
        self.rte_ether_mcast_from_ipv6 = rte_ethdev_rte_ether_mcast_from_ipv6.load(self.lib)
        self.rte_ipv6_check_version = rte_ethdev_rte_ipv6_check_version.load(self.lib)
        self.rte_ipv6_phdr_cksum = rte_ethdev_rte_ipv6_phdr_cksum.load(self.lib)
        self.rte_ipv6_udptcp_cksum = rte_ethdev_rte_ipv6_udptcp_cksum.load(self.lib)
        self.rte_ipv6_udptcp_cksum_mbuf = rte_ethdev_rte_ipv6_udptcp_cksum_mbuf.load(self.lib)
        self.rte_ipv6_udptcp_cksum_verify = rte_ethdev_rte_ipv6_udptcp_cksum_verify.load(self.lib)
        self.rte_ipv6_udptcp_cksum_mbuf_verify = rte_ethdev_rte_ipv6_udptcp_cksum_mbuf_verify.load(self.lib)
        self.rte_ipv6_get_next_ext = rte_ethdev_rte_ipv6_get_next_ext.load(self.lib)
        self.rte_mbuf_dynfield_register = rte_ethdev_rte_mbuf_dynfield_register.load(self.lib)
        self.rte_mbuf_dynfield_register_offset = rte_ethdev_rte_mbuf_dynfield_register_offset.load(self.lib)
        self.rte_mbuf_dynfield_lookup = rte_ethdev_rte_mbuf_dynfield_lookup.load(self.lib)
        self.rte_mbuf_dynflag_register = rte_ethdev_rte_mbuf_dynflag_register.load(self.lib)
        self.rte_mbuf_dynflag_register_bitnum = rte_ethdev_rte_mbuf_dynflag_register_bitnum.load(self.lib)
        self.rte_mbuf_dynflag_lookup = rte_ethdev_rte_mbuf_dynflag_lookup.load(self.lib)
        self.rte_mbuf_dyn_dump = rte_ethdev_rte_mbuf_dyn_dump.load(self.lib)
        self.rte_mbuf_dyn_rx_timestamp_register = rte_ethdev_rte_mbuf_dyn_rx_timestamp_register.load(self.lib)
        self.rte_mbuf_dyn_tx_timestamp_register = rte_ethdev_rte_mbuf_dyn_tx_timestamp_register.load(self.lib)
        self.rte_meter_srtcm_profile_config = rte_ethdev_rte_meter_srtcm_profile_config.load(self.lib)
        self.rte_meter_trtcm_profile_config = rte_ethdev_rte_meter_trtcm_profile_config.load(self.lib)
        self.rte_meter_trtcm_rfc4115_profile_config = rte_ethdev_rte_meter_trtcm_rfc4115_profile_config.load(self.lib)
        self.rte_meter_srtcm_config = rte_ethdev_rte_meter_srtcm_config.load(self.lib)
        self.rte_meter_trtcm_config = rte_ethdev_rte_meter_trtcm_config.load(self.lib)
        self.rte_meter_trtcm_rfc4115_config = rte_ethdev_rte_meter_trtcm_rfc4115_config.load(self.lib)
        self.rte_meter_srtcm_color_blind_check = rte_ethdev_rte_meter_srtcm_color_blind_check.load(self.lib)
        self.rte_meter_srtcm_color_aware_check = rte_ethdev_rte_meter_srtcm_color_aware_check.load(self.lib)
        self.rte_meter_trtcm_color_blind_check = rte_ethdev_rte_meter_trtcm_color_blind_check.load(self.lib)
        self.rte_meter_trtcm_color_aware_check = rte_ethdev_rte_meter_trtcm_color_aware_check.load(self.lib)
        self.rte_meter_trtcm_rfc4115_color_blind_check = rte_ethdev_rte_meter_trtcm_rfc4115_color_blind_check.load(self.lib)
        self.rte_meter_trtcm_rfc4115_color_aware_check = rte_ethdev_rte_meter_trtcm_rfc4115_color_aware_check.load(self.lib)
        self.rte_flow_dynf_metadata_get = rte_ethdev_rte_flow_dynf_metadata_get.load(self.lib)
        self.rte_flow_dynf_metadata_set = rte_ethdev_rte_flow_dynf_metadata_set.load(self.lib)
        self.rte_flow_dev_dump = rte_ethdev_rte_flow_dev_dump.load(self.lib)
        self.rte_flow_dynf_metadata_avail = rte_ethdev_rte_flow_dynf_metadata_avail.load(self.lib)
        self.rte_flow_dynf_metadata_register = rte_ethdev_rte_flow_dynf_metadata_register.load(self.lib)
        self.rte_flow_validate = rte_ethdev_rte_flow_validate.load(self.lib)
        self.rte_flow_create = rte_ethdev_rte_flow_create.load(self.lib)
        self.rte_flow_destroy = rte_ethdev_rte_flow_destroy.load(self.lib)
        self.rte_flow_actions_update = rte_ethdev_rte_flow_actions_update.load(self.lib)
        self.rte_flow_flush = rte_ethdev_rte_flow_flush.load(self.lib)
        self.rte_flow_query = rte_ethdev_rte_flow_query.load(self.lib)
        self.rte_flow_isolate = rte_ethdev_rte_flow_isolate.load(self.lib)
        self.rte_flow_error_set = rte_ethdev_rte_flow_error_set.load(self.lib)
        self.rte_flow_copy = rte_ethdev_rte_flow_copy.load(self.lib)
        self.rte_flow_conv = rte_ethdev_rte_flow_conv.load(self.lib)
        self.rte_flow_get_aged_flows = rte_ethdev_rte_flow_get_aged_flows.load(self.lib)
        self.rte_flow_get_q_aged_flows = rte_ethdev_rte_flow_get_q_aged_flows.load(self.lib)
        self.rte_flow_action_handle_create = rte_ethdev_rte_flow_action_handle_create.load(self.lib)
        self.rte_flow_action_handle_destroy = rte_ethdev_rte_flow_action_handle_destroy.load(self.lib)
        self.rte_flow_action_handle_update = rte_ethdev_rte_flow_action_handle_update.load(self.lib)
        self.rte_flow_action_handle_query = rte_ethdev_rte_flow_action_handle_query.load(self.lib)
        self.rte_flow_tunnel_decap_set = rte_ethdev_rte_flow_tunnel_decap_set.load(self.lib)
        self.rte_flow_tunnel_match = rte_ethdev_rte_flow_tunnel_match.load(self.lib)
        self.rte_flow_restore_info_dynflag = rte_ethdev_rte_flow_restore_info_dynflag.load(self.lib)
        self.rte_flow_get_restore_info = rte_ethdev_rte_flow_get_restore_info.load(self.lib)
        self.rte_flow_tunnel_action_decap_release = rte_ethdev_rte_flow_tunnel_action_decap_release.load(self.lib)
        self.rte_flow_tunnel_item_release = rte_ethdev_rte_flow_tunnel_item_release.load(self.lib)
        self.rte_flow_pick_transfer_proxy = rte_ethdev_rte_flow_pick_transfer_proxy.load(self.lib)
        self.rte_flow_flex_item_create = rte_ethdev_rte_flow_flex_item_create.load(self.lib)
        self.rte_flow_flex_item_release = rte_ethdev_rte_flow_flex_item_release.load(self.lib)
        self.rte_flow_info_get = rte_ethdev_rte_flow_info_get.load(self.lib)
        self.rte_flow_configure = rte_ethdev_rte_flow_configure.load(self.lib)
        self.rte_flow_pattern_template_create = rte_ethdev_rte_flow_pattern_template_create.load(self.lib)
        self.rte_flow_pattern_template_destroy = rte_ethdev_rte_flow_pattern_template_destroy.load(self.lib)
        self.rte_flow_actions_template_create = rte_ethdev_rte_flow_actions_template_create.load(self.lib)
        self.rte_flow_actions_template_destroy = rte_ethdev_rte_flow_actions_template_destroy.load(self.lib)
        self.rte_flow_template_table_resizable = rte_ethdev_rte_flow_template_table_resizable.load(self.lib)
        self.rte_flow_template_table_create = rte_ethdev_rte_flow_template_table_create.load(self.lib)
        self.rte_flow_template_table_destroy = rte_ethdev_rte_flow_template_table_destroy.load(self.lib)
        self.rte_flow_group_set_miss_actions = rte_ethdev_rte_flow_group_set_miss_actions.load(self.lib)
        self.rte_flow_async_create = rte_ethdev_rte_flow_async_create.load(self.lib)
        self.rte_flow_async_create_by_index = rte_ethdev_rte_flow_async_create_by_index.load(self.lib)
        self.rte_flow_async_create_by_index_with_pattern = rte_ethdev_rte_flow_async_create_by_index_with_pattern.load(self.lib)
        self.rte_flow_async_destroy = rte_ethdev_rte_flow_async_destroy.load(self.lib)
        self.rte_flow_async_actions_update = rte_ethdev_rte_flow_async_actions_update.load(self.lib)
        self.rte_flow_push = rte_ethdev_rte_flow_push.load(self.lib)
        self.rte_flow_pull = rte_ethdev_rte_flow_pull.load(self.lib)
        self.rte_flow_async_action_handle_create = rte_ethdev_rte_flow_async_action_handle_create.load(self.lib)
        self.rte_flow_async_action_handle_destroy = rte_ethdev_rte_flow_async_action_handle_destroy.load(self.lib)
        self.rte_flow_async_action_handle_update = rte_ethdev_rte_flow_async_action_handle_update.load(self.lib)
        self.rte_flow_async_action_handle_query = rte_ethdev_rte_flow_async_action_handle_query.load(self.lib)
        self.rte_flow_action_handle_query_update = rte_ethdev_rte_flow_action_handle_query_update.load(self.lib)
        self.rte_flow_async_action_handle_query_update = rte_ethdev_rte_flow_async_action_handle_query_update.load(self.lib)
        self.rte_flow_action_list_handle_create = rte_ethdev_rte_flow_action_list_handle_create.load(self.lib)
        self.rte_flow_async_action_list_handle_create = rte_ethdev_rte_flow_async_action_list_handle_create.load(self.lib)
        self.rte_flow_action_list_handle_destroy = rte_ethdev_rte_flow_action_list_handle_destroy.load(self.lib)
        self.rte_flow_async_action_list_handle_destroy = rte_ethdev_rte_flow_async_action_list_handle_destroy.load(self.lib)
        self.rte_flow_action_list_handle_query_update = rte_ethdev_rte_flow_action_list_handle_query_update.load(self.lib)
        self.rte_flow_async_action_list_handle_query_update = rte_ethdev_rte_flow_async_action_list_handle_query_update.load(self.lib)
        self.rte_flow_calc_table_hash = rte_ethdev_rte_flow_calc_table_hash.load(self.lib)
        self.rte_flow_calc_encap_hash = rte_ethdev_rte_flow_calc_encap_hash.load(self.lib)
        self.rte_flow_template_table_resize = rte_ethdev_rte_flow_template_table_resize.load(self.lib)
        self.rte_flow_async_update_resized = rte_ethdev_rte_flow_async_update_resized.load(self.lib)
        self.rte_flow_template_table_resize_complete = rte_ethdev_rte_flow_template_table_resize_complete.load(self.lib)
        self.rte_eth_find_next_owned_by = rte_ethdev_rte_eth_find_next_owned_by.load(self.lib)
        self.rte_eth_find_next = rte_ethdev_rte_eth_find_next.load(self.lib)
        self.rte_eth_find_next_of = rte_ethdev_rte_eth_find_next_of.load(self.lib)
        self.rte_eth_find_next_sibling = rte_ethdev_rte_eth_find_next_sibling.load(self.lib)
        self.rte_eth_dev_owner_new = rte_ethdev_rte_eth_dev_owner_new.load(self.lib)
        self.rte_eth_dev_owner_set = rte_ethdev_rte_eth_dev_owner_set.load(self.lib)
        self.rte_eth_dev_owner_unset = rte_ethdev_rte_eth_dev_owner_unset.load(self.lib)
        self.rte_eth_dev_owner_delete = rte_ethdev_rte_eth_dev_owner_delete.load(self.lib)
        self.rte_eth_dev_owner_get = rte_ethdev_rte_eth_dev_owner_get.load(self.lib)
        self.rte_eth_dev_count_avail = rte_ethdev_rte_eth_dev_count_avail.load(self.lib)
        self.rte_eth_dev_count_total = rte_ethdev_rte_eth_dev_count_total.load(self.lib)
        self.rte_eth_speed_bitflag = rte_ethdev_rte_eth_speed_bitflag.load(self.lib)
        self.rte_eth_dev_rx_offload_name = rte_ethdev_rte_eth_dev_rx_offload_name.load(self.lib)
        self.rte_eth_dev_tx_offload_name = rte_ethdev_rte_eth_dev_tx_offload_name.load(self.lib)
        self.rte_eth_dev_capability_name = rte_ethdev_rte_eth_dev_capability_name.load(self.lib)
        self.rte_eth_dev_configure = rte_ethdev_rte_eth_dev_configure.load(self.lib)
        self.rte_eth_dev_is_removed = rte_ethdev_rte_eth_dev_is_removed.load(self.lib)
        self.rte_eth_rx_queue_setup = rte_ethdev_rte_eth_rx_queue_setup.load(self.lib)
        self.rte_eth_rx_hairpin_queue_setup = rte_ethdev_rte_eth_rx_hairpin_queue_setup.load(self.lib)
        self.rte_eth_tx_queue_setup = rte_ethdev_rte_eth_tx_queue_setup.load(self.lib)
        self.rte_eth_tx_hairpin_queue_setup = rte_ethdev_rte_eth_tx_hairpin_queue_setup.load(self.lib)
        self.rte_eth_hairpin_get_peer_ports = rte_ethdev_rte_eth_hairpin_get_peer_ports.load(self.lib)
        self.rte_eth_hairpin_bind = rte_ethdev_rte_eth_hairpin_bind.load(self.lib)
        self.rte_eth_hairpin_unbind = rte_ethdev_rte_eth_hairpin_unbind.load(self.lib)
        self.rte_eth_dev_count_aggr_ports = rte_ethdev_rte_eth_dev_count_aggr_ports.load(self.lib)
        self.rte_eth_dev_map_aggr_tx_affinity = rte_ethdev_rte_eth_dev_map_aggr_tx_affinity.load(self.lib)
        self.rte_eth_dev_socket_id = rte_ethdev_rte_eth_dev_socket_id.load(self.lib)
        self.rte_eth_dev_is_valid_port = rte_ethdev_rte_eth_dev_is_valid_port.load(self.lib)
        self.rte_eth_rx_queue_is_valid = rte_ethdev_rte_eth_rx_queue_is_valid.load(self.lib)
        self.rte_eth_tx_queue_is_valid = rte_ethdev_rte_eth_tx_queue_is_valid.load(self.lib)
        self.rte_eth_dev_rx_queue_start = rte_ethdev_rte_eth_dev_rx_queue_start.load(self.lib)
        self.rte_eth_dev_rx_queue_stop = rte_ethdev_rte_eth_dev_rx_queue_stop.load(self.lib)
        self.rte_eth_dev_tx_queue_start = rte_ethdev_rte_eth_dev_tx_queue_start.load(self.lib)
        self.rte_eth_dev_tx_queue_stop = rte_ethdev_rte_eth_dev_tx_queue_stop.load(self.lib)
        self.rte_eth_dev_start = rte_ethdev_rte_eth_dev_start.load(self.lib)
        self.rte_eth_dev_stop = rte_ethdev_rte_eth_dev_stop.load(self.lib)
        self.rte_eth_dev_set_link_up = rte_ethdev_rte_eth_dev_set_link_up.load(self.lib)
        self.rte_eth_dev_set_link_down = rte_ethdev_rte_eth_dev_set_link_down.load(self.lib)
        self.rte_eth_dev_close = rte_ethdev_rte_eth_dev_close.load(self.lib)
        self.rte_eth_dev_reset = rte_ethdev_rte_eth_dev_reset.load(self.lib)
        self.rte_eth_promiscuous_enable = rte_ethdev_rte_eth_promiscuous_enable.load(self.lib)
        self.rte_eth_promiscuous_disable = rte_ethdev_rte_eth_promiscuous_disable.load(self.lib)
        self.rte_eth_promiscuous_get = rte_ethdev_rte_eth_promiscuous_get.load(self.lib)
        self.rte_eth_allmulticast_enable = rte_ethdev_rte_eth_allmulticast_enable.load(self.lib)
        self.rte_eth_allmulticast_disable = rte_ethdev_rte_eth_allmulticast_disable.load(self.lib)
        self.rte_eth_allmulticast_get = rte_ethdev_rte_eth_allmulticast_get.load(self.lib)
        self.rte_eth_link_get = rte_ethdev_rte_eth_link_get.load(self.lib)
        self.rte_eth_link_get_nowait = rte_ethdev_rte_eth_link_get_nowait.load(self.lib)
        self.rte_eth_link_speed_to_str = rte_ethdev_rte_eth_link_speed_to_str.load(self.lib)
        self.rte_eth_link_to_str = rte_ethdev_rte_eth_link_to_str.load(self.lib)
        self.rte_eth_speed_lanes_get = rte_ethdev_rte_eth_speed_lanes_get.load(self.lib)
        self.rte_eth_speed_lanes_set = rte_ethdev_rte_eth_speed_lanes_set.load(self.lib)
        self.rte_eth_speed_lanes_get_capability = rte_ethdev_rte_eth_speed_lanes_get_capability.load(self.lib)
        self.rte_eth_stats_get = rte_ethdev_rte_eth_stats_get.load(self.lib)
        self.rte_eth_stats_reset = rte_ethdev_rte_eth_stats_reset.load(self.lib)
        self.rte_eth_xstats_get_names = rte_ethdev_rte_eth_xstats_get_names.load(self.lib)
        self.rte_eth_xstats_get = rte_ethdev_rte_eth_xstats_get.load(self.lib)
        self.rte_eth_xstats_get_names_by_id = rte_ethdev_rte_eth_xstats_get_names_by_id.load(self.lib)
        self.rte_eth_xstats_get_by_id = rte_ethdev_rte_eth_xstats_get_by_id.load(self.lib)
        self.rte_eth_xstats_get_id_by_name = rte_ethdev_rte_eth_xstats_get_id_by_name.load(self.lib)
        self.rte_eth_xstats_set_counter = rte_ethdev_rte_eth_xstats_set_counter.load(self.lib)
        self.rte_eth_xstats_query_state = rte_ethdev_rte_eth_xstats_query_state.load(self.lib)
        self.rte_eth_xstats_reset = rte_ethdev_rte_eth_xstats_reset.load(self.lib)
        self.rte_eth_dev_set_tx_queue_stats_mapping = rte_ethdev_rte_eth_dev_set_tx_queue_stats_mapping.load(self.lib)
        self.rte_eth_dev_set_rx_queue_stats_mapping = rte_ethdev_rte_eth_dev_set_rx_queue_stats_mapping.load(self.lib)
        self.rte_eth_macaddr_get = rte_ethdev_rte_eth_macaddr_get.load(self.lib)
        self.rte_eth_macaddrs_get = rte_ethdev_rte_eth_macaddrs_get.load(self.lib)
        self.rte_eth_dev_info_get = rte_ethdev_rte_eth_dev_info_get.load(self.lib)
        self.rte_eth_dev_conf_get = rte_ethdev_rte_eth_dev_conf_get.load(self.lib)
        self.rte_eth_dev_fw_version_get = rte_ethdev_rte_eth_dev_fw_version_get.load(self.lib)
        self.rte_eth_dev_get_supported_ptypes = rte_ethdev_rte_eth_dev_get_supported_ptypes.load(self.lib)
        self.rte_eth_dev_set_ptypes = rte_ethdev_rte_eth_dev_set_ptypes.load(self.lib)
        self.rte_eth_dev_get_mtu = rte_ethdev_rte_eth_dev_get_mtu.load(self.lib)
        self.rte_eth_dev_set_mtu = rte_ethdev_rte_eth_dev_set_mtu.load(self.lib)
        self.rte_eth_dev_vlan_filter = rte_ethdev_rte_eth_dev_vlan_filter.load(self.lib)
        self.rte_eth_dev_set_vlan_strip_on_queue = rte_ethdev_rte_eth_dev_set_vlan_strip_on_queue.load(self.lib)
        self.rte_eth_dev_set_vlan_ether_type = rte_ethdev_rte_eth_dev_set_vlan_ether_type.load(self.lib)
        self.rte_eth_dev_set_vlan_offload = rte_ethdev_rte_eth_dev_set_vlan_offload.load(self.lib)
        self.rte_eth_dev_get_vlan_offload = rte_ethdev_rte_eth_dev_get_vlan_offload.load(self.lib)
        self.rte_eth_dev_set_vlan_pvid = rte_ethdev_rte_eth_dev_set_vlan_pvid.load(self.lib)
        self.rte_eth_rx_avail_thresh_set = rte_ethdev_rte_eth_rx_avail_thresh_set.load(self.lib)
        self.rte_eth_rx_avail_thresh_query = rte_ethdev_rte_eth_rx_avail_thresh_query.load(self.lib)
        self.rte_eth_tx_buffer_init = rte_ethdev_rte_eth_tx_buffer_init.load(self.lib)
        self.rte_eth_tx_buffer_set_err_callback = rte_ethdev_rte_eth_tx_buffer_set_err_callback.load(self.lib)
        self.rte_eth_tx_buffer_drop_callback = rte_ethdev_rte_eth_tx_buffer_drop_callback.load(self.lib)
        self.rte_eth_tx_buffer_count_callback = rte_ethdev_rte_eth_tx_buffer_count_callback.load(self.lib)
        self.rte_eth_tx_done_cleanup = rte_ethdev_rte_eth_tx_done_cleanup.load(self.lib)
        self.rte_eth_dev_callback_register = rte_ethdev_rte_eth_dev_callback_register.load(self.lib)
        self.rte_eth_dev_callback_unregister = rte_ethdev_rte_eth_dev_callback_unregister.load(self.lib)
        self.rte_eth_dev_rx_intr_enable = rte_ethdev_rte_eth_dev_rx_intr_enable.load(self.lib)
        self.rte_eth_dev_rx_intr_disable = rte_ethdev_rte_eth_dev_rx_intr_disable.load(self.lib)
        self.rte_eth_dev_rx_intr_ctl = rte_ethdev_rte_eth_dev_rx_intr_ctl.load(self.lib)
        self.rte_eth_dev_rx_intr_ctl_q = rte_ethdev_rte_eth_dev_rx_intr_ctl_q.load(self.lib)
        self.rte_eth_dev_rx_intr_ctl_q_get_fd = rte_ethdev_rte_eth_dev_rx_intr_ctl_q_get_fd.load(self.lib)
        self.rte_eth_led_on = rte_ethdev_rte_eth_led_on.load(self.lib)
        self.rte_eth_led_off = rte_ethdev_rte_eth_led_off.load(self.lib)
        self.rte_eth_fec_get_capability = rte_ethdev_rte_eth_fec_get_capability.load(self.lib)
        self.rte_eth_fec_get = rte_ethdev_rte_eth_fec_get.load(self.lib)
        self.rte_eth_fec_set = rte_ethdev_rte_eth_fec_set.load(self.lib)
        self.rte_eth_dev_flow_ctrl_get = rte_ethdev_rte_eth_dev_flow_ctrl_get.load(self.lib)
        self.rte_eth_dev_flow_ctrl_set = rte_ethdev_rte_eth_dev_flow_ctrl_set.load(self.lib)
        self.rte_eth_dev_priority_flow_ctrl_set = rte_ethdev_rte_eth_dev_priority_flow_ctrl_set.load(self.lib)
        self.rte_eth_dev_mac_addr_add = rte_ethdev_rte_eth_dev_mac_addr_add.load(self.lib)
        self.rte_eth_dev_priority_flow_ctrl_queue_info_get = rte_ethdev_rte_eth_dev_priority_flow_ctrl_queue_info_get.load(self.lib)
        self.rte_eth_dev_priority_flow_ctrl_queue_configure = rte_ethdev_rte_eth_dev_priority_flow_ctrl_queue_configure.load(self.lib)
        self.rte_eth_dev_mac_addr_remove = rte_ethdev_rte_eth_dev_mac_addr_remove.load(self.lib)
        self.rte_eth_dev_default_mac_addr_set = rte_ethdev_rte_eth_dev_default_mac_addr_set.load(self.lib)
        self.rte_eth_dev_rss_reta_update = rte_ethdev_rte_eth_dev_rss_reta_update.load(self.lib)
        self.rte_eth_dev_rss_reta_query = rte_ethdev_rte_eth_dev_rss_reta_query.load(self.lib)
        self.rte_eth_dev_uc_hash_table_set = rte_ethdev_rte_eth_dev_uc_hash_table_set.load(self.lib)
        self.rte_eth_dev_uc_all_hash_table_set = rte_ethdev_rte_eth_dev_uc_all_hash_table_set.load(self.lib)
        self.rte_eth_set_queue_rate_limit = rte_ethdev_rte_eth_set_queue_rate_limit.load(self.lib)
        self.rte_eth_dev_rss_hash_update = rte_ethdev_rte_eth_dev_rss_hash_update.load(self.lib)
        self.rte_eth_dev_rss_hash_conf_get = rte_ethdev_rte_eth_dev_rss_hash_conf_get.load(self.lib)
        self.rte_eth_dev_rss_algo_name = rte_ethdev_rte_eth_dev_rss_algo_name.load(self.lib)
        self.rte_eth_find_rss_algo = rte_ethdev_rte_eth_find_rss_algo.load(self.lib)
        self.rte_eth_dev_udp_tunnel_port_add = rte_ethdev_rte_eth_dev_udp_tunnel_port_add.load(self.lib)
        self.rte_eth_dev_udp_tunnel_port_delete = rte_ethdev_rte_eth_dev_udp_tunnel_port_delete.load(self.lib)
        self.rte_eth_dev_get_dcb_info = rte_ethdev_rte_eth_dev_get_dcb_info.load(self.lib)
        self.rte_eth_add_rx_callback = rte_ethdev_rte_eth_add_rx_callback.load(self.lib)
        self.rte_eth_add_first_rx_callback = rte_ethdev_rte_eth_add_first_rx_callback.load(self.lib)
        self.rte_eth_add_tx_callback = rte_ethdev_rte_eth_add_tx_callback.load(self.lib)
        self.rte_eth_remove_rx_callback = rte_ethdev_rte_eth_remove_rx_callback.load(self.lib)
        self.rte_eth_remove_tx_callback = rte_ethdev_rte_eth_remove_tx_callback.load(self.lib)
        self.rte_eth_rx_queue_info_get = rte_ethdev_rte_eth_rx_queue_info_get.load(self.lib)
        self.rte_eth_tx_queue_info_get = rte_ethdev_rte_eth_tx_queue_info_get.load(self.lib)
        self.rte_eth_recycle_rx_queue_info_get = rte_ethdev_rte_eth_recycle_rx_queue_info_get.load(self.lib)
        self.rte_eth_rx_burst_mode_get = rte_ethdev_rte_eth_rx_burst_mode_get.load(self.lib)
        self.rte_eth_tx_burst_mode_get = rte_ethdev_rte_eth_tx_burst_mode_get.load(self.lib)
        self.rte_eth_get_monitor_addr = rte_ethdev_rte_eth_get_monitor_addr.load(self.lib)
        self.rte_eth_dev_get_reg_info_ext = rte_ethdev_rte_eth_dev_get_reg_info_ext.load(self.lib)
        self.rte_eth_dev_get_reg_info = rte_ethdev_rte_eth_dev_get_reg_info.load(self.lib)
        self.rte_eth_dev_get_eeprom_length = rte_ethdev_rte_eth_dev_get_eeprom_length.load(self.lib)
        self.rte_eth_dev_get_eeprom = rte_ethdev_rte_eth_dev_get_eeprom.load(self.lib)
        self.rte_eth_dev_set_eeprom = rte_ethdev_rte_eth_dev_set_eeprom.load(self.lib)
        self.rte_eth_dev_get_module_info = rte_ethdev_rte_eth_dev_get_module_info.load(self.lib)
        self.rte_eth_dev_get_module_eeprom = rte_ethdev_rte_eth_dev_get_module_eeprom.load(self.lib)
        self.rte_eth_dev_set_mc_addr_list = rte_ethdev_rte_eth_dev_set_mc_addr_list.load(self.lib)
        self.rte_eth_timesync_enable = rte_ethdev_rte_eth_timesync_enable.load(self.lib)
        self.rte_eth_timesync_disable = rte_ethdev_rte_eth_timesync_disable.load(self.lib)
        self.rte_eth_timesync_read_rx_timestamp = rte_ethdev_rte_eth_timesync_read_rx_timestamp.load(self.lib)
        self.rte_eth_timesync_read_tx_timestamp = rte_ethdev_rte_eth_timesync_read_tx_timestamp.load(self.lib)
        self.rte_eth_timesync_adjust_time = rte_ethdev_rte_eth_timesync_adjust_time.load(self.lib)
        self.rte_eth_timesync_adjust_freq = rte_ethdev_rte_eth_timesync_adjust_freq.load(self.lib)
        self.rte_eth_timesync_read_time = rte_ethdev_rte_eth_timesync_read_time.load(self.lib)
        self.rte_eth_timesync_write_time = rte_ethdev_rte_eth_timesync_write_time.load(self.lib)
        self.rte_eth_read_clock = rte_ethdev_rte_eth_read_clock.load(self.lib)
        self.rte_eth_dev_get_port_by_name = rte_ethdev_rte_eth_dev_get_port_by_name.load(self.lib)
        self.rte_eth_dev_get_name_by_port = rte_ethdev_rte_eth_dev_get_name_by_port.load(self.lib)
        self.rte_eth_dev_adjust_nb_rx_tx_desc = rte_ethdev_rte_eth_dev_adjust_nb_rx_tx_desc.load(self.lib)
        self.rte_eth_dev_pool_ops_supported = rte_ethdev_rte_eth_dev_pool_ops_supported.load(self.lib)
        self.rte_eth_dev_get_sec_ctx = rte_ethdev_rte_eth_dev_get_sec_ctx.load(self.lib)
        self.rte_eth_dev_hairpin_capability_get = rte_ethdev_rte_eth_dev_hairpin_capability_get.load(self.lib)
        self.rte_eth_representor_info_get = rte_ethdev_rte_eth_representor_info_get.load(self.lib)
        self.rte_eth_rx_metadata_negotiate = rte_ethdev_rte_eth_rx_metadata_negotiate.load(self.lib)
        self.rte_eth_ip_reassembly_capability_get = rte_ethdev_rte_eth_ip_reassembly_capability_get.load(self.lib)
        self.rte_eth_ip_reassembly_conf_get = rte_ethdev_rte_eth_ip_reassembly_conf_get.load(self.lib)
        self.rte_eth_ip_reassembly_conf_set = rte_ethdev_rte_eth_ip_reassembly_conf_set.load(self.lib)
        self.rte_eth_dev_priv_dump = rte_ethdev_rte_eth_dev_priv_dump.load(self.lib)
        self.rte_eth_rx_descriptor_dump = rte_ethdev_rte_eth_rx_descriptor_dump.load(self.lib)
        self.rte_eth_tx_descriptor_dump = rte_ethdev_rte_eth_tx_descriptor_dump.load(self.lib)
        self.rte_eth_cman_info_get = rte_ethdev_rte_eth_cman_info_get.load(self.lib)
        self.rte_eth_cman_config_init = rte_ethdev_rte_eth_cman_config_init.load(self.lib)
        self.rte_eth_cman_config_set = rte_ethdev_rte_eth_cman_config_set.load(self.lib)
        self.rte_eth_cman_config_get = rte_ethdev_rte_eth_cman_config_get.load(self.lib)
        self.rte_eth_call_rx_callbacks = rte_ethdev_rte_eth_call_rx_callbacks.load(self.lib)
        self.rte_eth_rx_burst = rte_ethdev_rte_eth_rx_burst.load(self.lib)
        self.rte_eth_rx_queue_count = rte_ethdev_rte_eth_rx_queue_count.load(self.lib)
        self.rte_eth_rx_descriptor_status = rte_ethdev_rte_eth_rx_descriptor_status.load(self.lib)
        self.rte_eth_tx_descriptor_status = rte_ethdev_rte_eth_tx_descriptor_status.load(self.lib)
        self.rte_eth_call_tx_callbacks = rte_ethdev_rte_eth_call_tx_callbacks.load(self.lib)
        self.rte_eth_tx_burst = rte_ethdev_rte_eth_tx_burst.load(self.lib)
        self.rte_eth_tx_prepare = rte_ethdev_rte_eth_tx_prepare.load(self.lib)
        self.rte_eth_tx_buffer_flush = rte_ethdev_rte_eth_tx_buffer_flush.load(self.lib)
        self.rte_eth_tx_buffer = rte_ethdev_rte_eth_tx_buffer.load(self.lib)
        self.rte_eth_recycle_mbufs = rte_ethdev_rte_eth_recycle_mbufs.load(self.lib)
        self.rte_eth_buffer_split_get_supported_hdr_ptypes = rte_ethdev_rte_eth_buffer_split_get_supported_hdr_ptypes.load(self.lib)
        self.rte_eth_tx_queue_count = rte_ethdev_rte_eth_tx_queue_count.load(self.lib)

