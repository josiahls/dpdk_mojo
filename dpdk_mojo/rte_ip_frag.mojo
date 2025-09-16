
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
struct anonomous_record_733(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_733

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
alias va_list = __builtin_va_list
alias __gnuc_va_list = __builtin_va_list
alias anonomous_record_734 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_735(Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_734

alias __mbstate_t = anonomous_record_735

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
alias ptrdiff_t = ffi.c_long
alias wchar_t = UInt32
struct anonomous_record_736(Copyable & Movable):
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_736

alias __assert_fail = fn (UnsafePointer[Int8], UnsafePointer[Int8], UInt32, UnsafePointer[Int8]) -> NoneType
alias __assert_perror_fail = fn (Int32, UnsafePointer[Int8], UInt32, UnsafePointer[Int8]) -> NoneType
alias __assert = fn (UnsafePointer[Int8], UnsafePointer[Int8], Int32) -> NoneType
alias alloca = fn (ffi.c_ulong) -> OpaquePointer
alias time_t = __time_t
struct timespec(Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_nsec : ffi.c_long

alias pid_t = __pid_t
struct sched_param(Copyable & Movable):
	var sched_priority : Int32

alias __cpu_mask = ffi.c_ulong
struct anonomous_record_737(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_737

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
alias __errno_location = fn () -> UnsafePointer[Int32]
alias rte_atomic_thread_fence = fn (rte_memory_order) -> NoneType
alias rte_atomic16_cmpset = fn (UnsafePointer[Int16], UInt16, UInt16) -> Int32
alias __sync_bool_compare_and_swap = fn () -> NoneType
alias __sync_bool_compare_and_swap_2 = fn (UnsafePointer[Int16], Int16, Int16) -> Bool
alias rte_atomic16_exchange = fn (UnsafePointer[Int16], UInt16) -> UInt16
alias __atomic_exchange_n = fn () -> NoneType
struct anonomous_record_738(Copyable & Movable):

	var cnt : Int16

alias rte_atomic16_t = anonomous_record_738

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
struct anonomous_record_739(Copyable & Movable):

	var cnt : Int32

alias rte_atomic32_t = anonomous_record_739

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
struct anonomous_record_740(Copyable & Movable):

	var cnt : ffi.c_long

alias rte_atomic64_t = anonomous_record_740

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
alias anonomous_record_741 = C_Union[InlineArray[ffi.c_ulong_long, 2], ffi.c_long_long]

struct anonomous_record_742(Copyable & Movable):
# Alignment: 16 


	var union_placeholder_1 : anonomous_record_741



alias rte_int128_t = anonomous_record_742

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
struct anonomous_record_743(Copyable & Movable):
	var cnt : Int32

alias rte_rwlock_t = anonomous_record_743

alias rte_rwlock_init = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias rte_rwlock_read_lock = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias rte_rwlock_read_trylock = fn (UnsafePointer[rte_rwlock_t]) -> Int32
alias rte_rwlock_read_unlock = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias rte_rwlock_write_trylock = fn (UnsafePointer[rte_rwlock_t]) -> Int32
alias __atomic_compare_exchange_n = fn () -> NoneType
alias rte_rwlock_write_lock = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias __atomic_fetch_or = fn () -> NoneType
alias rte_rwlock_write_unlock = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias rte_rwlock_write_is_locked = fn (UnsafePointer[rte_rwlock_t]) -> Int32
alias rte_rwlock_read_lock_tm = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias rte_rwlock_read_unlock_tm = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias rte_rwlock_write_lock_tm = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
alias rte_rwlock_write_unlock_tm = fn (UnsafePointer[rte_rwlock_t]) -> NoneType
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
struct anonomous_record_744(Copyable & Movable):

	var opaque_id : ffi.c_ulong

alias rte_thread_t = anonomous_record_744

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Thread id descriptor.

alias rte_thread_func = fn(OpaquePointer) -> ffi.c_ulong
struct rte_thread_priority(Copyable & Movable):

	alias RTE_THREAD_PRIORITY_NORMAL = 0

	alias RTE_THREAD_PRIORITY_REALTIME_CRITICAL = 1

struct anonomous_record_745(Copyable & Movable):

	var priority : rte_thread_priority

alias rte_thread_attr_t = anonomous_record_745

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
struct anonomous_record_746(Copyable & Movable):

	var locked : Int32

alias rte_spinlock_t = anonomous_record_746

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The rte_spinlock_t type.

alias rte_spinlock_init = fn (UnsafePointer[rte_spinlock_t]) -> NoneType
alias rte_spinlock_lock = fn (UnsafePointer[rte_spinlock_t]) -> NoneType
alias rte_spinlock_unlock = fn (UnsafePointer[rte_spinlock_t]) -> NoneType
alias __atomic_store_n = fn () -> NoneType
alias rte_spinlock_trylock = fn (UnsafePointer[rte_spinlock_t]) -> Int32
alias rte_spinlock_is_locked = fn (UnsafePointer[rte_spinlock_t]) -> Int32
alias rte_tm_supported = fn () -> Int32
alias rte_spinlock_lock_tm = fn (UnsafePointer[rte_spinlock_t]) -> NoneType
alias rte_spinlock_unlock_tm = fn (UnsafePointer[rte_spinlock_t]) -> NoneType
alias rte_spinlock_trylock_tm = fn (UnsafePointer[rte_spinlock_t]) -> Int32
struct anonomous_record_747(Copyable & Movable):

	var sl : rte_spinlock_t

	var user : Int32

	var count : Int32

alias rte_spinlock_recursive_t = anonomous_record_747

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
alias anonomous_record_748 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memseg(Copyable & Movable):


	var iova : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_748



	var len : ffi.c_ulong

	var hugepage_sz : ffi.c_ulong

	var socket_id : Int32

	var nchannel : UInt32

	var nrank : UInt32

	var flags : UInt32

alias anonomous_record_749 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memseg_list(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_749



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
struct rte_malloc_socket_stats(Copyable & Movable):

	var heap_totalsz_bytes : ffi.c_ulong

	var heap_freesz_bytes : ffi.c_ulong

	var greatest_free_size : ffi.c_ulong

	var free_count : UInt32

	var alloc_count : UInt32

	var heap_allocsz_bytes : ffi.c_ulong

alias rte_free = fn (OpaquePointer) -> NoneType
alias rte_free_sensitive = fn (OpaquePointer) -> NoneType
alias rte_malloc = fn (UnsafePointer[Int8], size_t, UInt32) -> OpaquePointer
alias rte_zmalloc = fn (UnsafePointer[Int8], size_t, UInt32) -> OpaquePointer
alias rte_calloc = fn (UnsafePointer[Int8], size_t, size_t, UInt32) -> OpaquePointer
alias rte_realloc = fn (OpaquePointer, size_t, UInt32) -> OpaquePointer
alias rte_realloc_socket = fn (OpaquePointer, size_t, UInt32, Int32) -> OpaquePointer
alias rte_malloc_socket = fn (UnsafePointer[Int8], size_t, UInt32, Int32) -> OpaquePointer
alias rte_zmalloc_socket = fn (UnsafePointer[Int8], size_t, UInt32, Int32) -> OpaquePointer
alias rte_calloc_socket = fn (UnsafePointer[Int8], size_t, size_t, UInt32, Int32) -> OpaquePointer
alias rte_malloc_validate = fn (OpaquePointer, UnsafePointer[size_t]) -> Int32
alias rte_malloc_get_socket_stats = fn (Int32, UnsafePointer[rte_malloc_socket_stats]) -> Int32
alias rte_malloc_heap_memory_add = fn (UnsafePointer[Int8], OpaquePointer, size_t, UnsafePointer[rte_iova_t], UInt32, size_t) -> Int32
alias rte_malloc_heap_memory_remove = fn (UnsafePointer[Int8], OpaquePointer, size_t) -> Int32
alias rte_malloc_heap_memory_attach = fn (UnsafePointer[Int8], OpaquePointer, size_t) -> Int32
alias rte_malloc_heap_memory_detach = fn (UnsafePointer[Int8], OpaquePointer, size_t) -> Int32
alias rte_malloc_heap_create = fn (UnsafePointer[Int8]) -> Int32
alias rte_malloc_heap_destroy = fn (UnsafePointer[Int8]) -> Int32
alias rte_malloc_heap_get_socket = fn (UnsafePointer[Int8]) -> Int32
alias rte_malloc_heap_socket_is_external = fn (Int32) -> Int32
alias rte_malloc_dump_stats = fn (UnsafePointer[FILE], UnsafePointer[Int8]) -> NoneType
alias rte_malloc_dump_heaps = fn (UnsafePointer[FILE]) -> NoneType
alias rte_malloc_virt2iova = fn (OpaquePointer) -> rte_iova_t
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

alias __bswap_16 = fn (Int16) -> Int16
alias __bswap_32 = fn (Int32) -> Int32
alias __bswap_64 = fn (ffi.c_long) -> ffi.c_long
alias __uint16_identity = fn (Int16) -> Int16
alias __uint32_identity = fn (Int32) -> Int32
alias __uint64_identity = fn (ffi.c_long) -> ffi.c_long
struct anonomous_record_750(Copyable & Movable):
	var __val : InlineArray[ffi.c_ulong, 16]

alias __sigset_t = anonomous_record_750

alias sigset_t = __sigset_t
struct timeval(Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_usec : ffi.c_long

alias suseconds_t = __suseconds_t
alias __fd_mask = ffi.c_long
struct anonomous_record_751(Copyable & Movable):
	var __fds_bits : InlineArray[__fd_mask, 16]

alias fd_set = anonomous_record_751

alias fd_mask = __fd_mask
alias select = fn (Int32, UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[timeval]) -> Int32
alias pselect = fn (Int32, UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[timespec], UnsafePointer[__sigset_t]) -> Int32
alias blksize_t = __blksize_t
alias blkcnt_t = __blkcnt_t
alias fsblkcnt_t = __fsblkcnt_t
alias fsfilcnt_t = __fsfilcnt_t
struct anonomous_record_752(Copyable & Movable):
	var __low : UInt32

	var __high : UInt32

alias anonomous_record_753 = C_Union[ffi.c_ulong_long, anonomous_record_752]

alias __atomic_wide_counter = anonomous_record_753

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
struct anonomous_record_754(Copyable & Movable):
	var __data : Int32

alias __once_flag = anonomous_record_754

alias pthread_t = ffi.c_ulong
alias anonomous_record_755 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_mutexattr_t = anonomous_record_755

alias anonomous_record_756 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_condattr_t = anonomous_record_756

alias pthread_key_t = UInt32
alias pthread_once_t = Int32
alias pthread_attr_t = C_Union[InlineArray[Int8, 64], ffi.c_long]

alias anonomous_record_757 = C_Union[__pthread_mutex_s, InlineArray[Int8, 48], ffi.c_long]

alias pthread_mutex_t = anonomous_record_757

alias anonomous_record_758 = C_Union[__pthread_cond_s, InlineArray[Int8, 48], ffi.c_long_long]

alias pthread_cond_t = anonomous_record_758

alias anonomous_record_759 = C_Union[__pthread_rwlock_arch_t, InlineArray[Int8, 56], ffi.c_long]

alias pthread_rwlock_t = anonomous_record_759

alias anonomous_record_760 = C_Union[InlineArray[Int8, 8], ffi.c_long]

alias pthread_rwlockattr_t = anonomous_record_760

alias pthread_spinlock_t = Int32
alias anonomous_record_761 = C_Union[InlineArray[Int8, 32], ffi.c_long]

alias pthread_barrier_t = anonomous_record_761

alias anonomous_record_762 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_barrierattr_t = anonomous_record_762

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

struct anonomous_record_763(Copyable & Movable):
	var fds_bits : InlineArray[ffi.c_ulong, 16]

alias __kernel_fd_set = anonomous_record_763

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
struct anonomous_record_764(Copyable & Movable):
	var val : InlineArray[Int32, 2]

alias __kernel_fsid_t = anonomous_record_764

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

alias anonomous_record_765 = C_Union[InlineArray[UInt8, 16], InlineArray[UInt16, 8], InlineArray[ffi.c_ulong, 4]]

struct in6_addr(Copyable & Movable):
	var __in6_u : anonomous_record_765

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

alias __gwchar_t = UInt32
struct anonomous_record_766(Copyable & Movable):
	var quot : ffi.c_long

	var rem : ffi.c_long

alias imaxdiv_t = anonomous_record_766

alias imaxabs = fn (intmax_t) -> intmax_t
alias imaxdiv = fn (intmax_t, intmax_t) -> imaxdiv_t
alias strtoimax = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> intmax_t
alias strtoumax = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> uintmax_t
alias wcstoimax = fn (UnsafePointer[__gwchar_t], UnsafePointer[UnsafePointer[__gwchar_t]], Int32) -> intmax_t
alias wcstoumax = fn (UnsafePointer[__gwchar_t], UnsafePointer[UnsafePointer[__gwchar_t]], Int32) -> uintmax_t
struct ip6_hdrctl(Copyable & Movable):
	var ip6_un1_flow : UInt32

	var ip6_un1_plen : UInt16

	var ip6_un1_nxt : UInt8

	var ip6_un1_hlim : UInt8

alias anonomous_record_767 = C_Union[ip6_hdrctl, UInt8]

struct ip6_hdr(Copyable & Movable):
	var ip6_ctlun : anonomous_record_767

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
alias anonomous_record_768 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memzone(Copyable & Movable):


	var name : InlineArray[Int8, 32]

	var iova : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_768



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

alias anonomous_record_769 = C_Union[rte_ring_sync_type, UInt32]

struct rte_ring_headtail(Copyable & Movable):

	var head : UInt32

	var tail : UInt32

	var union_placeholder_1 : anonomous_record_769



struct anonomous_record_770(Copyable & Movable):
	var cnt : UInt32

	var pos : UInt32

alias __rte_ring_rts_poscnt = C_Union[ffi.c_ulong, anonomous_record_770]

struct rte_ring_rts_headtail(Copyable & Movable):
	var tail : union __rte_ring_rts_poscnt

	var sync_type : rte_ring_sync_type

	var htd_max : UInt32

	var head : union __rte_ring_rts_poscnt

struct anonomous_record_771(Copyable & Movable):
	var head : UInt32

	var tail : UInt32

alias __rte_ring_hts_pos = C_Union[ffi.c_ulong, anonomous_record_771]

struct rte_ring_hts_headtail(Copyable & Movable):
	var ht : union __rte_ring_hts_pos

	var sync_type : rte_ring_sync_type

alias anonomous_record_773 = C_Union[rte_ring_headtail, rte_ring_hts_headtail, rte_ring_rts_headtail]
# Alignment: 128 

alias anonomous_record_772 = C_Union[rte_ring_headtail, rte_ring_hts_headtail, rte_ring_rts_headtail]
# Alignment: 128 

struct rte_ring(Copyable & Movable):

	var name : InlineArray[Int8, 29]

	var flags : Int32

	var memzone : UnsafePointer[rte_memzone]

	var size : UInt32

	var mask : UInt32

	var capacity : UInt32

	var cache_guard_0 : InlineArray[Int8, 128]

	var union_placeholder_1 : anonomous_record_772




	var cache_guard_1 : InlineArray[Int8, 128]

	var union_placeholder_2 : anonomous_record_773




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
struct anonomous_record_774(Copyable & Movable):
	var stqe_next : UnsafePointer[rte_mempool_objhdr]

struct rte_mempool_objhdr(Copyable & Movable):

	var next : anonomous_record_774

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

struct anonomous_record_775(Copyable & Movable):
	var stqe_next : UnsafePointer[rte_mempool_memhdr]

struct rte_mempool_info(Copyable & Movable):
# Alignment: 128 


	var contig_block_size : UInt32

alias anonomous_record_776 = C_Union[OpaquePointer, ffi.c_ulong]

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

struct anonomous_record_777(Copyable & Movable):
	var data_off : UInt16

	var refcnt : UInt16

	var nb_segs : UInt16

	var port : UInt16

struct anonomous_record_779(Copyable & Movable):
	var inner_l2_type : UInt8

	var inner_l3_type : UInt8

alias anonomous_record_780 = C_Union[UInt8, anonomous_record_779, , ]

struct anonomous_record_781(Copyable & Movable):
	var l2_type : UInt8

	var l3_type : UInt8

	var l4_type : UInt8

	var tun_type : UInt8

	var union_placeholder_1 : anonomous_record_780




	var inner_l4_type : UInt8

struct anonomous_record_783(Copyable & Movable):
	var hash : UInt16

	var id : UInt16

alias anonomous_record_784 = C_Union[anonomous_record_783, , , UInt32]

struct anonomous_record_786(Copyable & Movable):
	var reserved1 : UInt32

	var reserved2 : UInt16

	var txq : UInt16

struct anonomous_record_785(Copyable & Movable):
	var union_placeholder_1 : anonomous_record_784




	var hi : UInt32

alias anonomous_record_787 = C_Union[UInt32, anonomous_record_785, rte_mbuf_sched, anonomous_record_786, UInt32]

alias anonomous_record_788 = C_Union[anonomous_record_787]

alias anonomous_record_782 = C_Union[UInt32, anonomous_record_781, , , , , , , , ]

struct anonomous_record_789(Copyable & Movable):
	var union_placeholder_1 : anonomous_record_782










	var pkt_len : UInt32

	var data_len : UInt16

	var vlan_tci : UInt16

	var union_placeholder_2 : anonomous_record_788


	var vlan_tci_outer : UInt16

	var buf_len : UInt16

struct anonomous_record_791(Copyable & Movable):
	var l2_len : ffi.c_ulong

	var l3_len : ffi.c_ulong

	var l4_len : ffi.c_ulong

	var tso_segsz : ffi.c_ulong

	var outer_l3_len : ffi.c_ulong

	var outer_l2_len : ffi.c_ulong

struct rte_mbuf_ext_shared_info(Copyable & Movable):
	pass
alias anonomous_record_792 = C_Union[ffi.c_ulong, anonomous_record_791, , , , , , ]

alias anonomous_record_790 = C_Union[InlineArray[OpaquePointer, 3], anonomous_record_789, , , , , , , , , , , , , , , ]

alias anonomous_record_778 = C_Union[InlineArray[ffi.c_ulong_long, 1], anonomous_record_777, , , , ]

struct rte_mbuf(Copyable & Movable):
# Alignment: 128 


	var buf_addr : OpaquePointer

	var buf_iova : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_778






	var ol_flags : ffi.c_ulong

	var union_placeholder_2 : anonomous_record_790

















	var pool : UnsafePointer[rte_mempool]

	var next : UnsafePointer[rte_mbuf]

	var union_placeholder_3 : anonomous_record_792








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
alias __rte_raw_cksum = fn (OpaquePointer, size_t, UInt32) -> UInt32
alias __rte_raw_cksum_reduce = fn (UInt32) -> UInt16
alias rte_raw_cksum = fn (OpaquePointer, size_t) -> UInt16
alias rte_raw_cksum_mbuf = fn (UnsafePointer[rte_mbuf], UInt32, UInt32, UnsafePointer[UInt16]) -> Int32
alias __builtin_bswap16 = fn (UInt16) -> UInt16
struct anonomous_record_793(Copyable & Movable):
	var ihl : UInt8

	var version : UInt8

alias anonomous_record_794 = C_Union[UInt8, anonomous_record_793, , ]

struct rte_ipv4_hdr(Copyable & Movable):
# Alignment: 2 



	var union_placeholder_1 : anonomous_record_794




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

# Node: StaticAssertDecl()
# Node: StaticAssertDecl()
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

# Node: StaticAssertDecl()
# Node: StaticAssertDecl()
struct rte_vlan_hdr(Copyable & Movable):

	var vlan_tci : UInt16

	var eth_proto : UInt16

# Node: StaticAssertDecl()
# Node: StaticAssertDecl()
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
struct anonomous_record_795(Copyable & Movable):
	var flow_label : UInt32

	var ecn : UInt32

	var ds : UInt32

	var version : UInt32

alias anonomous_record_796 = C_Union[UInt32, anonomous_record_795, , , , ]

struct rte_ipv6_hdr(Copyable & Movable):
# Alignment: 2 



	var union_placeholder_1 : anonomous_record_796






	var payload_len : UInt16

	var proto : UInt8

	var hop_limits : UInt8

	var src_addr : rte_ipv6_addr

	var dst_addr : rte_ipv6_addr

alias rte_ipv6_check_version = fn (UnsafePointer[rte_ipv6_hdr]) -> Int32
struct anonomous_record_797(Copyable & Movable):
	var last_entry : UInt8

	var flag : UInt8

	var tag : UInt16

alias anonomous_record_798 = C_Union[UInt32, anonomous_record_797, , , ]

struct rte_ipv6_routing_ext(Copyable & Movable):
# Alignment: 2 



	var next_hdr : UInt8

	var hdr_len : UInt8

	var type : UInt8

	var segments_left : UInt8

	var union_placeholder_1 : anonomous_record_798





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
struct rte_ip_frag_death_row(Copyable & Movable):

	var cnt : UInt32

	var row : InlineArray[UnsafePointer[rte_mbuf], 288]

struct rte_ip_frag_tbl(Copyable & Movable):
	pass
alias rte_ip_frag_table_create = fn (UInt32, UInt32, UInt32, ffi.c_ulong, Int32) -> UnsafePointer[rte_ip_frag_tbl]
alias rte_ip_frag_table_destroy = fn (UnsafePointer[rte_ip_frag_tbl]) -> NoneType
alias rte_ipv6_fragment_packet = fn (UnsafePointer[rte_mbuf], UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, UInt16, UnsafePointer[rte_mempool], UnsafePointer[rte_mempool]) -> Int32
alias rte_ipv6_frag_reassemble_packet = fn (UnsafePointer[rte_ip_frag_tbl], UnsafePointer[rte_ip_frag_death_row], UnsafePointer[rte_mbuf], ffi.c_ulong, UnsafePointer[rte_ipv6_hdr], UnsafePointer[rte_ipv6_fragment_ext]) -> UnsafePointer[rte_mbuf]
alias rte_ipv6_frag_get_ipv6_fragment_header = fn (UnsafePointer[rte_ipv6_hdr]) -> UnsafePointer[rte_ipv6_fragment_ext]
alias rte_ipv4_fragment_packet = fn (UnsafePointer[rte_mbuf], UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, UInt16, UnsafePointer[rte_mempool], UnsafePointer[rte_mempool]) -> Int32
alias rte_ipv4_fragment_copy_nonseg_packet = fn (UnsafePointer[rte_mbuf], UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, UInt16, UnsafePointer[rte_mempool]) -> Int32
alias rte_ipv4_frag_reassemble_packet = fn (UnsafePointer[rte_ip_frag_tbl], UnsafePointer[rte_ip_frag_death_row], UnsafePointer[rte_mbuf], ffi.c_ulong, UnsafePointer[rte_ipv4_hdr]) -> UnsafePointer[rte_mbuf]
alias rte_ipv4_frag_pkt_is_fragmented = fn (UnsafePointer[rte_ipv4_hdr]) -> Int32
alias rte_ip_frag_free_death_row = fn (UnsafePointer[rte_ip_frag_death_row], UInt32) -> NoneType
alias rte_ip_frag_table_statistics_dump = fn (UnsafePointer[FILE], UnsafePointer[rte_ip_frag_tbl]) -> NoneType
alias rte_ip_frag_table_del_expired_entries = fn (UnsafePointer[rte_ip_frag_tbl], UnsafePointer[rte_ip_frag_death_row], ffi.c_ulong) -> NoneType


alias rte_ip_frag_remove = ExternalFunction['remove', remove]
alias rte_ip_frag_rename = ExternalFunction['rename', rename]
alias rte_ip_frag_renameat = ExternalFunction['renameat', renameat]
alias rte_ip_frag_fclose = ExternalFunction['fclose', fclose]
alias rte_ip_frag_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias rte_ip_frag_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias rte_ip_frag_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias rte_ip_frag_tempnam = ExternalFunction['tempnam', tempnam]
alias rte_ip_frag_fflush = ExternalFunction['fflush', fflush]
alias rte_ip_frag_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias rte_ip_frag_fopen = ExternalFunction['fopen', fopen]
alias rte_ip_frag_freopen = ExternalFunction['freopen', freopen]
alias rte_ip_frag_fdopen = ExternalFunction['fdopen', fdopen]
alias rte_ip_frag_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias rte_ip_frag_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias rte_ip_frag_setbuf = ExternalFunction['setbuf', setbuf]
alias rte_ip_frag_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias rte_ip_frag_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias rte_ip_frag_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias rte_ip_frag_fprintf = ExternalFunction['fprintf', fprintf]
alias rte_ip_frag_printf = ExternalFunction['printf', printf]
alias rte_ip_frag_sprintf = ExternalFunction['sprintf', sprintf]
alias rte_ip_frag_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias rte_ip_frag_vprintf = ExternalFunction['vprintf', vprintf]
alias rte_ip_frag_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias rte_ip_frag_snprintf = ExternalFunction['snprintf', snprintf]
alias rte_ip_frag_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias rte_ip_frag_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias rte_ip_frag_dprintf = ExternalFunction['dprintf', dprintf]
alias rte_ip_frag_fscanf = ExternalFunction['fscanf', fscanf]
alias rte_ip_frag_scanf = ExternalFunction['scanf', scanf]
alias rte_ip_frag_sscanf = ExternalFunction['sscanf', sscanf]
alias rte_ip_frag_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias rte_ip_frag_vscanf = ExternalFunction['vscanf', vscanf]
alias rte_ip_frag_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias rte_ip_frag_fgetc = ExternalFunction['fgetc', fgetc]
alias rte_ip_frag_getc = ExternalFunction['getc', getc]
alias rte_ip_frag_getchar = ExternalFunction['getchar', getchar]
alias rte_ip_frag_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias rte_ip_frag_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias rte_ip_frag_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias rte_ip_frag_fputc = ExternalFunction['fputc', fputc]
alias rte_ip_frag_putc = ExternalFunction['putc', putc]
alias rte_ip_frag_putchar = ExternalFunction['putchar', putchar]
alias rte_ip_frag_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias rte_ip_frag_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias rte_ip_frag_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias rte_ip_frag_getw = ExternalFunction['getw', getw]
alias rte_ip_frag_putw = ExternalFunction['putw', putw]
alias rte_ip_frag_fgets = ExternalFunction['fgets', fgets]
alias rte_ip_frag_getdelim = ExternalFunction['getdelim', getdelim]
alias rte_ip_frag_getline = ExternalFunction['getline', getline]
alias rte_ip_frag_fputs = ExternalFunction['fputs', fputs]
alias rte_ip_frag_puts = ExternalFunction['puts', puts]
alias rte_ip_frag_ungetc = ExternalFunction['ungetc', ungetc]
alias rte_ip_frag_fread = ExternalFunction['fread', fread]
alias rte_ip_frag_fwrite = ExternalFunction['fwrite', fwrite]
alias rte_ip_frag_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias rte_ip_frag_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias rte_ip_frag_fseek = ExternalFunction['fseek', fseek]
alias rte_ip_frag_ftell = ExternalFunction['ftell', ftell]
alias rte_ip_frag_rewind = ExternalFunction['rewind', rewind]
alias rte_ip_frag_fseeko = ExternalFunction['fseeko', fseeko]
alias rte_ip_frag_ftello = ExternalFunction['ftello', ftello]
alias rte_ip_frag_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias rte_ip_frag_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias rte_ip_frag_clearerr = ExternalFunction['clearerr', clearerr]
alias rte_ip_frag_feof = ExternalFunction['feof', feof]
alias rte_ip_frag_ferror = ExternalFunction['ferror', ferror]
alias rte_ip_frag_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias rte_ip_frag_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias rte_ip_frag_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias rte_ip_frag_perror = ExternalFunction['perror', perror]
alias rte_ip_frag_fileno = ExternalFunction['fileno', fileno]
alias rte_ip_frag_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias rte_ip_frag_pclose = ExternalFunction['pclose', pclose]
alias rte_ip_frag_popen = ExternalFunction['popen', popen]
alias rte_ip_frag_ctermid = ExternalFunction['ctermid', ctermid]
alias rte_ip_frag_flockfile = ExternalFunction['flockfile', flockfile]
alias rte_ip_frag_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias rte_ip_frag_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias rte_ip_frag_alloca = ExternalFunction['alloca', alloca]
alias rte_ip_frag_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_ip_frag_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_ip_frag_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_ip_frag_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_ip_frag_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_ip_frag_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_ip_frag_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_ip_frag_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_ip_frag_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_ip_frag_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_ip_frag_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_ip_frag_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_ip_frag_rte_openlog_stream = ExternalFunction['rte_openlog_stream', rte_openlog_stream]
alias rte_ip_frag_rte_log_get_stream = ExternalFunction['rte_log_get_stream', rte_log_get_stream]
alias rte_ip_frag_rte_log_set_global_level = ExternalFunction['rte_log_set_global_level', rte_log_set_global_level]
alias rte_ip_frag_rte_log_get_global_level = ExternalFunction['rte_log_get_global_level', rte_log_get_global_level]
alias rte_ip_frag_rte_log_get_level = ExternalFunction['rte_log_get_level', rte_log_get_level]
alias rte_ip_frag_rte_log_can_log = ExternalFunction['rte_log_can_log', rte_log_can_log]
alias rte_ip_frag_rte_log_set_level_pattern = ExternalFunction['rte_log_set_level_pattern', rte_log_set_level_pattern]
alias rte_ip_frag_rte_log_set_level_regexp = ExternalFunction['rte_log_set_level_regexp', rte_log_set_level_regexp]
alias rte_ip_frag_rte_log_set_level = ExternalFunction['rte_log_set_level', rte_log_set_level]
alias rte_ip_frag_rte_log_cur_msg_loglevel = ExternalFunction['rte_log_cur_msg_loglevel', rte_log_cur_msg_loglevel]
alias rte_ip_frag_rte_log_cur_msg_logtype = ExternalFunction['rte_log_cur_msg_logtype', rte_log_cur_msg_logtype]
alias rte_ip_frag_rte_log_register = ExternalFunction['rte_log_register', rte_log_register]
alias rte_ip_frag_rte_log_register_type_and_pick_level = ExternalFunction['rte_log_register_type_and_pick_level', rte_log_register_type_and_pick_level]
alias rte_ip_frag_rte_log_list_types = ExternalFunction['rte_log_list_types', rte_log_list_types]
alias rte_ip_frag_rte_log_dump = ExternalFunction['rte_log_dump', rte_log_dump]
alias rte_ip_frag_rte_log = ExternalFunction['rte_log', rte_log]
alias rte_ip_frag_rte_vlog = ExternalFunction['rte_vlog', rte_vlog]
alias rte_ip_frag_rte_dump_stack = ExternalFunction['rte_dump_stack', rte_dump_stack]
alias rte_ip_frag_rte_bit_relaxed_get32 = ExternalFunction['rte_bit_relaxed_get32', rte_bit_relaxed_get32]
alias rte_ip_frag_rte_bit_relaxed_set32 = ExternalFunction['rte_bit_relaxed_set32', rte_bit_relaxed_set32]
alias rte_ip_frag_rte_bit_relaxed_clear32 = ExternalFunction['rte_bit_relaxed_clear32', rte_bit_relaxed_clear32]
alias rte_ip_frag_rte_bit_relaxed_test_and_set32 = ExternalFunction['rte_bit_relaxed_test_and_set32', rte_bit_relaxed_test_and_set32]
alias rte_ip_frag_rte_bit_relaxed_test_and_clear32 = ExternalFunction['rte_bit_relaxed_test_and_clear32', rte_bit_relaxed_test_and_clear32]
alias rte_ip_frag_rte_bit_relaxed_get64 = ExternalFunction['rte_bit_relaxed_get64', rte_bit_relaxed_get64]
alias rte_ip_frag_rte_bit_relaxed_set64 = ExternalFunction['rte_bit_relaxed_set64', rte_bit_relaxed_set64]
alias rte_ip_frag_rte_bit_relaxed_clear64 = ExternalFunction['rte_bit_relaxed_clear64', rte_bit_relaxed_clear64]
alias rte_ip_frag_rte_bit_relaxed_test_and_set64 = ExternalFunction['rte_bit_relaxed_test_and_set64', rte_bit_relaxed_test_and_set64]
alias rte_ip_frag_rte_bit_relaxed_test_and_clear64 = ExternalFunction['rte_bit_relaxed_test_and_clear64', rte_bit_relaxed_test_and_clear64]
alias rte_ip_frag_rte_clz32 = ExternalFunction['rte_clz32', rte_clz32]
alias rte_ip_frag_rte_clz64 = ExternalFunction['rte_clz64', rte_clz64]
alias rte_ip_frag_rte_ctz32 = ExternalFunction['rte_ctz32', rte_ctz32]
alias rte_ip_frag_rte_ctz64 = ExternalFunction['rte_ctz64', rte_ctz64]
alias rte_ip_frag_rte_popcount32 = ExternalFunction['rte_popcount32', rte_popcount32]
alias rte_ip_frag_rte_popcount64 = ExternalFunction['rte_popcount64', rte_popcount64]
alias rte_ip_frag_rte_ffs32 = ExternalFunction['rte_ffs32', rte_ffs32]
alias rte_ip_frag_rte_ffs64 = ExternalFunction['rte_ffs64', rte_ffs64]
alias rte_ip_frag_rte_combine32ms1b = ExternalFunction['rte_combine32ms1b', rte_combine32ms1b]
alias rte_ip_frag_rte_combine64ms1b = ExternalFunction['rte_combine64ms1b', rte_combine64ms1b]
alias rte_ip_frag_rte_bsf32 = ExternalFunction['rte_bsf32', rte_bsf32]
alias rte_ip_frag_rte_bsf32_safe = ExternalFunction['rte_bsf32_safe', rte_bsf32_safe]
alias rte_ip_frag_rte_bsf64 = ExternalFunction['rte_bsf64', rte_bsf64]
alias rte_ip_frag_rte_bsf64_safe = ExternalFunction['rte_bsf64_safe', rte_bsf64_safe]
alias rte_ip_frag_rte_fls_u32 = ExternalFunction['rte_fls_u32', rte_fls_u32]
alias rte_ip_frag_rte_fls_u64 = ExternalFunction['rte_fls_u64', rte_fls_u64]
alias rte_ip_frag_rte_is_power_of_2 = ExternalFunction['rte_is_power_of_2', rte_is_power_of_2]
alias rte_ip_frag_rte_align32pow2 = ExternalFunction['rte_align32pow2', rte_align32pow2]
alias rte_ip_frag_rte_align32prevpow2 = ExternalFunction['rte_align32prevpow2', rte_align32prevpow2]
alias rte_ip_frag_rte_align64pow2 = ExternalFunction['rte_align64pow2', rte_align64pow2]
alias rte_ip_frag_rte_align64prevpow2 = ExternalFunction['rte_align64prevpow2', rte_align64prevpow2]
alias rte_ip_frag_rte_log2_u32 = ExternalFunction['rte_log2_u32', rte_log2_u32]
alias rte_ip_frag_rte_log2_u64 = ExternalFunction['rte_log2_u64', rte_log2_u64]
alias rte_ip_frag_rte_atomic_thread_fence = ExternalFunction['rte_atomic_thread_fence', rte_atomic_thread_fence]
alias rte_ip_frag_rte_atomic16_cmpset = ExternalFunction['rte_atomic16_cmpset', rte_atomic16_cmpset]
alias rte_ip_frag_rte_atomic16_exchange = ExternalFunction['rte_atomic16_exchange', rte_atomic16_exchange]
alias rte_ip_frag_rte_atomic16_init = ExternalFunction['rte_atomic16_init', rte_atomic16_init]
alias rte_ip_frag_rte_atomic16_read = ExternalFunction['rte_atomic16_read', rte_atomic16_read]
alias rte_ip_frag_rte_atomic16_set = ExternalFunction['rte_atomic16_set', rte_atomic16_set]
alias rte_ip_frag_rte_atomic16_add = ExternalFunction['rte_atomic16_add', rte_atomic16_add]
alias rte_ip_frag_rte_atomic16_sub = ExternalFunction['rte_atomic16_sub', rte_atomic16_sub]
alias rte_ip_frag_rte_atomic16_inc = ExternalFunction['rte_atomic16_inc', rte_atomic16_inc]
alias rte_ip_frag_rte_atomic16_dec = ExternalFunction['rte_atomic16_dec', rte_atomic16_dec]
alias rte_ip_frag_rte_atomic16_add_return = ExternalFunction['rte_atomic16_add_return', rte_atomic16_add_return]
alias rte_ip_frag_rte_atomic16_sub_return = ExternalFunction['rte_atomic16_sub_return', rte_atomic16_sub_return]
alias rte_ip_frag_rte_atomic16_inc_and_test = ExternalFunction['rte_atomic16_inc_and_test', rte_atomic16_inc_and_test]
alias rte_ip_frag_rte_atomic16_dec_and_test = ExternalFunction['rte_atomic16_dec_and_test', rte_atomic16_dec_and_test]
alias rte_ip_frag_rte_atomic16_test_and_set = ExternalFunction['rte_atomic16_test_and_set', rte_atomic16_test_and_set]
alias rte_ip_frag_rte_atomic16_clear = ExternalFunction['rte_atomic16_clear', rte_atomic16_clear]
alias rte_ip_frag_rte_atomic32_cmpset = ExternalFunction['rte_atomic32_cmpset', rte_atomic32_cmpset]
alias rte_ip_frag_rte_atomic32_exchange = ExternalFunction['rte_atomic32_exchange', rte_atomic32_exchange]
alias rte_ip_frag_rte_atomic32_init = ExternalFunction['rte_atomic32_init', rte_atomic32_init]
alias rte_ip_frag_rte_atomic32_read = ExternalFunction['rte_atomic32_read', rte_atomic32_read]
alias rte_ip_frag_rte_atomic32_set = ExternalFunction['rte_atomic32_set', rte_atomic32_set]
alias rte_ip_frag_rte_atomic32_add = ExternalFunction['rte_atomic32_add', rte_atomic32_add]
alias rte_ip_frag_rte_atomic32_sub = ExternalFunction['rte_atomic32_sub', rte_atomic32_sub]
alias rte_ip_frag_rte_atomic32_inc = ExternalFunction['rte_atomic32_inc', rte_atomic32_inc]
alias rte_ip_frag_rte_atomic32_dec = ExternalFunction['rte_atomic32_dec', rte_atomic32_dec]
alias rte_ip_frag_rte_atomic32_add_return = ExternalFunction['rte_atomic32_add_return', rte_atomic32_add_return]
alias rte_ip_frag_rte_atomic32_sub_return = ExternalFunction['rte_atomic32_sub_return', rte_atomic32_sub_return]
alias rte_ip_frag_rte_atomic32_inc_and_test = ExternalFunction['rte_atomic32_inc_and_test', rte_atomic32_inc_and_test]
alias rte_ip_frag_rte_atomic32_dec_and_test = ExternalFunction['rte_atomic32_dec_and_test', rte_atomic32_dec_and_test]
alias rte_ip_frag_rte_atomic32_test_and_set = ExternalFunction['rte_atomic32_test_and_set', rte_atomic32_test_and_set]
alias rte_ip_frag_rte_atomic32_clear = ExternalFunction['rte_atomic32_clear', rte_atomic32_clear]
alias rte_ip_frag_rte_atomic64_cmpset = ExternalFunction['rte_atomic64_cmpset', rte_atomic64_cmpset]
alias rte_ip_frag_rte_atomic64_exchange = ExternalFunction['rte_atomic64_exchange', rte_atomic64_exchange]
alias rte_ip_frag_rte_atomic64_init = ExternalFunction['rte_atomic64_init', rte_atomic64_init]
alias rte_ip_frag_rte_atomic64_read = ExternalFunction['rte_atomic64_read', rte_atomic64_read]
alias rte_ip_frag_rte_atomic64_set = ExternalFunction['rte_atomic64_set', rte_atomic64_set]
alias rte_ip_frag_rte_atomic64_add = ExternalFunction['rte_atomic64_add', rte_atomic64_add]
alias rte_ip_frag_rte_atomic64_sub = ExternalFunction['rte_atomic64_sub', rte_atomic64_sub]
alias rte_ip_frag_rte_atomic64_inc = ExternalFunction['rte_atomic64_inc', rte_atomic64_inc]
alias rte_ip_frag_rte_atomic64_dec = ExternalFunction['rte_atomic64_dec', rte_atomic64_dec]
alias rte_ip_frag_rte_atomic64_add_return = ExternalFunction['rte_atomic64_add_return', rte_atomic64_add_return]
alias rte_ip_frag_rte_atomic64_sub_return = ExternalFunction['rte_atomic64_sub_return', rte_atomic64_sub_return]
alias rte_ip_frag_rte_atomic64_inc_and_test = ExternalFunction['rte_atomic64_inc_and_test', rte_atomic64_inc_and_test]
alias rte_ip_frag_rte_atomic64_dec_and_test = ExternalFunction['rte_atomic64_dec_and_test', rte_atomic64_dec_and_test]
alias rte_ip_frag_rte_atomic64_test_and_set = ExternalFunction['rte_atomic64_test_and_set', rte_atomic64_test_and_set]
alias rte_ip_frag_rte_atomic64_clear = ExternalFunction['rte_atomic64_clear', rte_atomic64_clear]
alias rte_ip_frag_rte_atomic128_cmp_exchange = ExternalFunction['rte_atomic128_cmp_exchange', rte_atomic128_cmp_exchange]
alias rte_ip_frag_rte_pause = ExternalFunction['rte_pause', rte_pause]
alias rte_ip_frag_rte_wait_until_equal_16 = ExternalFunction['rte_wait_until_equal_16', rte_wait_until_equal_16]
alias rte_ip_frag_rte_wait_until_equal_32 = ExternalFunction['rte_wait_until_equal_32', rte_wait_until_equal_32]
alias rte_ip_frag_rte_wait_until_equal_64 = ExternalFunction['rte_wait_until_equal_64', rte_wait_until_equal_64]
alias rte_ip_frag_rte_rwlock_init = ExternalFunction['rte_rwlock_init', rte_rwlock_init]
alias rte_ip_frag_rte_rwlock_read_lock = ExternalFunction['rte_rwlock_read_lock', rte_rwlock_read_lock]
alias rte_ip_frag_rte_rwlock_read_trylock = ExternalFunction['rte_rwlock_read_trylock', rte_rwlock_read_trylock]
alias rte_ip_frag_rte_rwlock_read_unlock = ExternalFunction['rte_rwlock_read_unlock', rte_rwlock_read_unlock]
alias rte_ip_frag_rte_rwlock_write_trylock = ExternalFunction['rte_rwlock_write_trylock', rte_rwlock_write_trylock]
alias rte_ip_frag_rte_rwlock_write_lock = ExternalFunction['rte_rwlock_write_lock', rte_rwlock_write_lock]
alias rte_ip_frag_rte_rwlock_write_unlock = ExternalFunction['rte_rwlock_write_unlock', rte_rwlock_write_unlock]
alias rte_ip_frag_rte_rwlock_write_is_locked = ExternalFunction['rte_rwlock_write_is_locked', rte_rwlock_write_is_locked]
alias rte_ip_frag_rte_rwlock_read_lock_tm = ExternalFunction['rte_rwlock_read_lock_tm', rte_rwlock_read_lock_tm]
alias rte_ip_frag_rte_rwlock_read_unlock_tm = ExternalFunction['rte_rwlock_read_unlock_tm', rte_rwlock_read_unlock_tm]
alias rte_ip_frag_rte_rwlock_write_lock_tm = ExternalFunction['rte_rwlock_write_lock_tm', rte_rwlock_write_lock_tm]
alias rte_ip_frag_rte_rwlock_write_unlock_tm = ExternalFunction['rte_rwlock_write_unlock_tm', rte_rwlock_write_unlock_tm]
alias rte_ip_frag_clock = ExternalFunction['clock', clock]
alias rte_ip_frag_time = ExternalFunction['time', time]
alias rte_ip_frag_difftime = ExternalFunction['difftime', difftime]
alias rte_ip_frag_mktime = ExternalFunction['mktime', mktime]
alias rte_ip_frag_strftime = ExternalFunction['strftime', strftime]
alias rte_ip_frag_strftime_l = ExternalFunction['strftime_l', strftime_l]
alias rte_ip_frag_gmtime = ExternalFunction['gmtime', gmtime]
alias rte_ip_frag_localtime = ExternalFunction['localtime', localtime]
alias rte_ip_frag_gmtime_r = ExternalFunction['gmtime_r', gmtime_r]
alias rte_ip_frag_localtime_r = ExternalFunction['localtime_r', localtime_r]
alias rte_ip_frag_asctime = ExternalFunction['asctime', asctime]
alias rte_ip_frag_ctime = ExternalFunction['ctime', ctime]
alias rte_ip_frag_asctime_r = ExternalFunction['asctime_r', asctime_r]
alias rte_ip_frag_ctime_r = ExternalFunction['ctime_r', ctime_r]
alias rte_ip_frag_tzset = ExternalFunction['tzset', tzset]
alias rte_ip_frag_timegm = ExternalFunction['timegm', timegm]
alias rte_ip_frag_timelocal = ExternalFunction['timelocal', timelocal]
alias rte_ip_frag_dysize = ExternalFunction['dysize', dysize]
alias rte_ip_frag_nanosleep = ExternalFunction['nanosleep', nanosleep]
alias rte_ip_frag_clock_getres = ExternalFunction['clock_getres', clock_getres]
alias rte_ip_frag_clock_gettime = ExternalFunction['clock_gettime', clock_gettime]
alias rte_ip_frag_clock_settime = ExternalFunction['clock_settime', clock_settime]
alias rte_ip_frag_clock_nanosleep = ExternalFunction['clock_nanosleep', clock_nanosleep]
alias rte_ip_frag_clock_getcpuclockid = ExternalFunction['clock_getcpuclockid', clock_getcpuclockid]
alias rte_ip_frag_timer_create = ExternalFunction['timer_create', timer_create]
alias rte_ip_frag_timer_delete = ExternalFunction['timer_delete', timer_delete]
alias rte_ip_frag_timer_settime = ExternalFunction['timer_settime', timer_settime]
alias rte_ip_frag_timer_gettime = ExternalFunction['timer_gettime', timer_gettime]
alias rte_ip_frag_timer_getoverrun = ExternalFunction['timer_getoverrun', timer_getoverrun]
alias rte_ip_frag_timespec_get = ExternalFunction['timespec_get', timespec_get]
alias rte_ip_frag_memcpy = ExternalFunction['memcpy', memcpy]
alias rte_ip_frag_memmove = ExternalFunction['memmove', memmove]
alias rte_ip_frag_memccpy = ExternalFunction['memccpy', memccpy]
alias rte_ip_frag_memset = ExternalFunction['memset', memset]
alias rte_ip_frag_memcmp = ExternalFunction['memcmp', memcmp]
alias rte_ip_frag_memchr = ExternalFunction['memchr', memchr]
alias rte_ip_frag_strcpy = ExternalFunction['strcpy', strcpy]
alias rte_ip_frag_strncpy = ExternalFunction['strncpy', strncpy]
alias rte_ip_frag_strcat = ExternalFunction['strcat', strcat]
alias rte_ip_frag_strncat = ExternalFunction['strncat', strncat]
alias rte_ip_frag_strcmp = ExternalFunction['strcmp', strcmp]
alias rte_ip_frag_strncmp = ExternalFunction['strncmp', strncmp]
alias rte_ip_frag_strcoll = ExternalFunction['strcoll', strcoll]
alias rte_ip_frag_strxfrm = ExternalFunction['strxfrm', strxfrm]
alias rte_ip_frag_strcoll_l = ExternalFunction['strcoll_l', strcoll_l]
alias rte_ip_frag_strxfrm_l = ExternalFunction['strxfrm_l', strxfrm_l]
alias rte_ip_frag_strdup = ExternalFunction['strdup', strdup]
alias rte_ip_frag_strndup = ExternalFunction['strndup', strndup]
alias rte_ip_frag_strchr = ExternalFunction['strchr', strchr]
alias rte_ip_frag_strrchr = ExternalFunction['strrchr', strrchr]
alias rte_ip_frag_strcspn = ExternalFunction['strcspn', strcspn]
alias rte_ip_frag_strspn = ExternalFunction['strspn', strspn]
alias rte_ip_frag_strpbrk = ExternalFunction['strpbrk', strpbrk]
alias rte_ip_frag_strstr = ExternalFunction['strstr', strstr]
alias rte_ip_frag_strtok = ExternalFunction['strtok', strtok]
alias rte_ip_frag_strtok_r = ExternalFunction['strtok_r', strtok_r]
alias rte_ip_frag_strlen = ExternalFunction['strlen', strlen]
alias rte_ip_frag_strnlen = ExternalFunction['strnlen', strnlen]
alias rte_ip_frag_strerror = ExternalFunction['strerror', strerror]
alias rte_ip_frag_strerror_r = ExternalFunction['strerror_r', strerror_r]
alias rte_ip_frag_strerror_l = ExternalFunction['strerror_l', strerror_l]
alias rte_ip_frag_bcmp = ExternalFunction['bcmp', bcmp]
alias rte_ip_frag_bcopy = ExternalFunction['bcopy', bcopy]
alias rte_ip_frag_bzero = ExternalFunction['bzero', bzero]
alias rte_ip_frag_index = ExternalFunction['index', index]
alias rte_ip_frag_rindex = ExternalFunction['rindex', rindex]
alias rte_ip_frag_ffs = ExternalFunction['ffs', ffs]
alias rte_ip_frag_ffsl = ExternalFunction['ffsl', ffsl]
alias rte_ip_frag_ffsll = ExternalFunction['ffsll', ffsll]
alias rte_ip_frag_strcasecmp = ExternalFunction['strcasecmp', strcasecmp]
alias rte_ip_frag_strncasecmp = ExternalFunction['strncasecmp', strncasecmp]
alias rte_ip_frag_strcasecmp_l = ExternalFunction['strcasecmp_l', strcasecmp_l]
alias rte_ip_frag_strncasecmp_l = ExternalFunction['strncasecmp_l', strncasecmp_l]
alias rte_ip_frag_explicit_bzero = ExternalFunction['explicit_bzero', explicit_bzero]
alias rte_ip_frag_strsep = ExternalFunction['strsep', strsep]
alias rte_ip_frag_strsignal = ExternalFunction['strsignal', strsignal]
alias rte_ip_frag_stpcpy = ExternalFunction['stpcpy', stpcpy]
alias rte_ip_frag_stpncpy = ExternalFunction['stpncpy', stpncpy]
alias rte_ip_frag_rte_uuid_is_null = ExternalFunction['rte_uuid_is_null', rte_uuid_is_null]
alias rte_ip_frag_rte_uuid_copy = ExternalFunction['rte_uuid_copy', rte_uuid_copy]
alias rte_ip_frag_rte_uuid_compare = ExternalFunction['rte_uuid_compare', rte_uuid_compare]
alias rte_ip_frag_rte_uuid_parse = ExternalFunction['rte_uuid_parse', rte_uuid_parse]
alias rte_ip_frag_rte_uuid_unparse = ExternalFunction['rte_uuid_unparse', rte_uuid_unparse]
alias rte_ip_frag_rte_eal_process_type = ExternalFunction['rte_eal_process_type', rte_eal_process_type]
alias rte_ip_frag_rte_eal_iopl_init = ExternalFunction['rte_eal_iopl_init', rte_eal_iopl_init]
alias rte_ip_frag_rte_eal_init = ExternalFunction['rte_eal_init', rte_eal_init]
alias rte_ip_frag_rte_eal_cleanup = ExternalFunction['rte_eal_cleanup', rte_eal_cleanup]
alias rte_ip_frag_rte_eal_primary_proc_alive = ExternalFunction['rte_eal_primary_proc_alive', rte_eal_primary_proc_alive]
alias rte_ip_frag_rte_mp_disable = ExternalFunction['rte_mp_disable', rte_mp_disable]
alias rte_ip_frag_rte_mp_action_register = ExternalFunction['rte_mp_action_register', rte_mp_action_register]
alias rte_ip_frag_rte_mp_action_unregister = ExternalFunction['rte_mp_action_unregister', rte_mp_action_unregister]
alias rte_ip_frag_rte_mp_sendmsg = ExternalFunction['rte_mp_sendmsg', rte_mp_sendmsg]
alias rte_ip_frag_rte_mp_request_sync = ExternalFunction['rte_mp_request_sync', rte_mp_request_sync]
alias rte_ip_frag_rte_mp_request_async = ExternalFunction['rte_mp_request_async', rte_mp_request_async]
alias rte_ip_frag_rte_set_application_usage_hook = ExternalFunction['rte_set_application_usage_hook', rte_set_application_usage_hook]
alias rte_ip_frag_rte_eal_has_hugepages = ExternalFunction['rte_eal_has_hugepages', rte_eal_has_hugepages]
alias rte_ip_frag_rte_eal_has_pci = ExternalFunction['rte_eal_has_pci', rte_eal_has_pci]
alias rte_ip_frag_rte_eal_create_uio_dev = ExternalFunction['rte_eal_create_uio_dev', rte_eal_create_uio_dev]
alias rte_ip_frag_rte_eal_vfio_intr_mode = ExternalFunction['rte_eal_vfio_intr_mode', rte_eal_vfio_intr_mode]
alias rte_ip_frag_rte_eal_vfio_get_vf_token = ExternalFunction['rte_eal_vfio_get_vf_token', rte_eal_vfio_get_vf_token]
alias rte_ip_frag_rte_sys_gettid = ExternalFunction['rte_sys_gettid', rte_sys_gettid]
alias rte_ip_frag_rte_gettid = ExternalFunction['rte_gettid', rte_gettid]
alias rte_ip_frag_rte_eal_get_baseaddr = ExternalFunction['rte_eal_get_baseaddr', rte_eal_get_baseaddr]
alias rte_ip_frag_rte_eal_iova_mode = ExternalFunction['rte_eal_iova_mode', rte_eal_iova_mode]
alias rte_ip_frag_rte_eal_mbuf_user_pool_ops = ExternalFunction['rte_eal_mbuf_user_pool_ops', rte_eal_mbuf_user_pool_ops]
alias rte_ip_frag_rte_eal_get_runtime_dir = ExternalFunction['rte_eal_get_runtime_dir', rte_eal_get_runtime_dir]
alias rte_ip_frag_rte_eal_parse_coremask = ExternalFunction['rte_eal_parse_coremask', rte_eal_parse_coremask]
alias rte_ip_frag_rte_eal_remote_launch = ExternalFunction['rte_eal_remote_launch', rte_eal_remote_launch]
alias rte_ip_frag_rte_eal_mp_remote_launch = ExternalFunction['rte_eal_mp_remote_launch', rte_eal_mp_remote_launch]
alias rte_ip_frag_rte_eal_get_lcore_state = ExternalFunction['rte_eal_get_lcore_state', rte_eal_get_lcore_state]
alias rte_ip_frag_rte_eal_wait_lcore = ExternalFunction['rte_eal_wait_lcore', rte_eal_wait_lcore]
alias rte_ip_frag_rte_eal_mp_wait_lcore = ExternalFunction['rte_eal_mp_wait_lcore', rte_eal_mp_wait_lcore]
alias rte_ip_frag_rte_thread_create = ExternalFunction['rte_thread_create', rte_thread_create]
alias rte_ip_frag_rte_thread_create_control = ExternalFunction['rte_thread_create_control', rte_thread_create_control]
alias rte_ip_frag_rte_thread_create_internal_control = ExternalFunction['rte_thread_create_internal_control', rte_thread_create_internal_control]
alias rte_ip_frag_rte_thread_join = ExternalFunction['rte_thread_join', rte_thread_join]
alias rte_ip_frag_rte_thread_detach = ExternalFunction['rte_thread_detach', rte_thread_detach]
alias rte_ip_frag_rte_thread_self = ExternalFunction['rte_thread_self', rte_thread_self]
alias rte_ip_frag_rte_thread_set_name = ExternalFunction['rte_thread_set_name', rte_thread_set_name]
alias rte_ip_frag_rte_thread_set_prefixed_name = ExternalFunction['rte_thread_set_prefixed_name', rte_thread_set_prefixed_name]
alias rte_ip_frag_rte_thread_equal = ExternalFunction['rte_thread_equal', rte_thread_equal]
alias rte_ip_frag_rte_thread_attr_init = ExternalFunction['rte_thread_attr_init', rte_thread_attr_init]
alias rte_ip_frag_rte_thread_attr_set_priority = ExternalFunction['rte_thread_attr_set_priority', rte_thread_attr_set_priority]
alias rte_ip_frag_rte_thread_get_priority = ExternalFunction['rte_thread_get_priority', rte_thread_get_priority]
alias rte_ip_frag_rte_thread_set_priority = ExternalFunction['rte_thread_set_priority', rte_thread_set_priority]
alias rte_ip_frag_rte_thread_key_create = ExternalFunction['rte_thread_key_create', rte_thread_key_create]
alias rte_ip_frag_rte_thread_key_delete = ExternalFunction['rte_thread_key_delete', rte_thread_key_delete]
alias rte_ip_frag_rte_thread_value_set = ExternalFunction['rte_thread_value_set', rte_thread_value_set]
alias rte_ip_frag_rte_thread_value_get = ExternalFunction['rte_thread_value_get', rte_thread_value_get]
alias rte_ip_frag_rte_eal_lcore_role = ExternalFunction['rte_eal_lcore_role', rte_eal_lcore_role]
alias rte_ip_frag_rte_lcore_has_role = ExternalFunction['rte_lcore_has_role', rte_lcore_has_role]
alias rte_ip_frag_rte_lcore_id = ExternalFunction['rte_lcore_id', rte_lcore_id]
alias rte_ip_frag_rte_get_main_lcore = ExternalFunction['rte_get_main_lcore', rte_get_main_lcore]
alias rte_ip_frag_rte_lcore_count = ExternalFunction['rte_lcore_count', rte_lcore_count]
alias rte_ip_frag_rte_lcore_index = ExternalFunction['rte_lcore_index', rte_lcore_index]
alias rte_ip_frag_rte_socket_id = ExternalFunction['rte_socket_id', rte_socket_id]
alias rte_ip_frag_rte_socket_count = ExternalFunction['rte_socket_count', rte_socket_count]
alias rte_ip_frag_rte_socket_id_by_idx = ExternalFunction['rte_socket_id_by_idx', rte_socket_id_by_idx]
alias rte_ip_frag_rte_lcore_to_socket_id = ExternalFunction['rte_lcore_to_socket_id', rte_lcore_to_socket_id]
alias rte_ip_frag_rte_lcore_to_cpu_id = ExternalFunction['rte_lcore_to_cpu_id', rte_lcore_to_cpu_id]
alias rte_ip_frag_rte_lcore_is_enabled = ExternalFunction['rte_lcore_is_enabled', rte_lcore_is_enabled]
alias rte_ip_frag_rte_get_next_lcore = ExternalFunction['rte_get_next_lcore', rte_get_next_lcore]
alias rte_ip_frag_rte_lcore_callback_register = ExternalFunction['rte_lcore_callback_register', rte_lcore_callback_register]
alias rte_ip_frag_rte_lcore_callback_unregister = ExternalFunction['rte_lcore_callback_unregister', rte_lcore_callback_unregister]
alias rte_ip_frag_rte_lcore_iterate = ExternalFunction['rte_lcore_iterate', rte_lcore_iterate]
alias rte_ip_frag_rte_lcore_register_usage_cb = ExternalFunction['rte_lcore_register_usage_cb', rte_lcore_register_usage_cb]
alias rte_ip_frag_rte_lcore_dump = ExternalFunction['rte_lcore_dump', rte_lcore_dump]
alias rte_ip_frag_rte_thread_register = ExternalFunction['rte_thread_register', rte_thread_register]
alias rte_ip_frag_rte_thread_unregister = ExternalFunction['rte_thread_unregister', rte_thread_unregister]
alias rte_ip_frag_rte_spinlock_init = ExternalFunction['rte_spinlock_init', rte_spinlock_init]
alias rte_ip_frag_rte_spinlock_lock = ExternalFunction['rte_spinlock_lock', rte_spinlock_lock]
alias rte_ip_frag_rte_spinlock_unlock = ExternalFunction['rte_spinlock_unlock', rte_spinlock_unlock]
alias rte_ip_frag_rte_spinlock_trylock = ExternalFunction['rte_spinlock_trylock', rte_spinlock_trylock]
alias rte_ip_frag_rte_spinlock_is_locked = ExternalFunction['rte_spinlock_is_locked', rte_spinlock_is_locked]
alias rte_ip_frag_rte_tm_supported = ExternalFunction['rte_tm_supported', rte_tm_supported]
alias rte_ip_frag_rte_spinlock_lock_tm = ExternalFunction['rte_spinlock_lock_tm', rte_spinlock_lock_tm]
alias rte_ip_frag_rte_spinlock_unlock_tm = ExternalFunction['rte_spinlock_unlock_tm', rte_spinlock_unlock_tm]
alias rte_ip_frag_rte_spinlock_trylock_tm = ExternalFunction['rte_spinlock_trylock_tm', rte_spinlock_trylock_tm]
alias rte_ip_frag_rte_spinlock_recursive_init = ExternalFunction['rte_spinlock_recursive_init', rte_spinlock_recursive_init]
alias rte_ip_frag_rte_spinlock_recursive_lock = ExternalFunction['rte_spinlock_recursive_lock', rte_spinlock_recursive_lock]
alias rte_ip_frag_rte_spinlock_recursive_unlock = ExternalFunction['rte_spinlock_recursive_unlock', rte_spinlock_recursive_unlock]
alias rte_ip_frag_rte_spinlock_recursive_trylock = ExternalFunction['rte_spinlock_recursive_trylock', rte_spinlock_recursive_trylock]
alias rte_ip_frag_rte_spinlock_recursive_lock_tm = ExternalFunction['rte_spinlock_recursive_lock_tm', rte_spinlock_recursive_lock_tm]
alias rte_ip_frag_rte_spinlock_recursive_unlock_tm = ExternalFunction['rte_spinlock_recursive_unlock_tm', rte_spinlock_recursive_unlock_tm]
alias rte_ip_frag_rte_spinlock_recursive_trylock_tm = ExternalFunction['rte_spinlock_recursive_trylock_tm', rte_spinlock_recursive_trylock_tm]
alias rte_ip_frag_rte_mcfg_mem_get_lock = ExternalFunction['rte_mcfg_mem_get_lock', rte_mcfg_mem_get_lock]
alias rte_ip_frag_rte_mcfg_tailq_get_lock = ExternalFunction['rte_mcfg_tailq_get_lock', rte_mcfg_tailq_get_lock]
alias rte_ip_frag_rte_mcfg_mempool_get_lock = ExternalFunction['rte_mcfg_mempool_get_lock', rte_mcfg_mempool_get_lock]
alias rte_ip_frag_rte_mcfg_timer_get_lock = ExternalFunction['rte_mcfg_timer_get_lock', rte_mcfg_timer_get_lock]
alias rte_ip_frag_rte_mcfg_ethdev_get_lock = ExternalFunction['rte_mcfg_ethdev_get_lock', rte_mcfg_ethdev_get_lock]
alias rte_ip_frag_rte_mcfg_mem_read_lock = ExternalFunction['rte_mcfg_mem_read_lock', rte_mcfg_mem_read_lock]
alias rte_ip_frag_rte_mcfg_mem_read_unlock = ExternalFunction['rte_mcfg_mem_read_unlock', rte_mcfg_mem_read_unlock]
alias rte_ip_frag_rte_mcfg_mem_write_lock = ExternalFunction['rte_mcfg_mem_write_lock', rte_mcfg_mem_write_lock]
alias rte_ip_frag_rte_mcfg_mem_write_unlock = ExternalFunction['rte_mcfg_mem_write_unlock', rte_mcfg_mem_write_unlock]
alias rte_ip_frag_rte_mcfg_tailq_read_lock = ExternalFunction['rte_mcfg_tailq_read_lock', rte_mcfg_tailq_read_lock]
alias rte_ip_frag_rte_mcfg_tailq_read_unlock = ExternalFunction['rte_mcfg_tailq_read_unlock', rte_mcfg_tailq_read_unlock]
alias rte_ip_frag_rte_mcfg_tailq_write_lock = ExternalFunction['rte_mcfg_tailq_write_lock', rte_mcfg_tailq_write_lock]
alias rte_ip_frag_rte_mcfg_tailq_write_unlock = ExternalFunction['rte_mcfg_tailq_write_unlock', rte_mcfg_tailq_write_unlock]
alias rte_ip_frag_rte_mcfg_mempool_read_lock = ExternalFunction['rte_mcfg_mempool_read_lock', rte_mcfg_mempool_read_lock]
alias rte_ip_frag_rte_mcfg_mempool_read_unlock = ExternalFunction['rte_mcfg_mempool_read_unlock', rte_mcfg_mempool_read_unlock]
alias rte_ip_frag_rte_mcfg_mempool_write_lock = ExternalFunction['rte_mcfg_mempool_write_lock', rte_mcfg_mempool_write_lock]
alias rte_ip_frag_rte_mcfg_mempool_write_unlock = ExternalFunction['rte_mcfg_mempool_write_unlock', rte_mcfg_mempool_write_unlock]
alias rte_ip_frag_rte_mcfg_timer_lock = ExternalFunction['rte_mcfg_timer_lock', rte_mcfg_timer_lock]
alias rte_ip_frag_rte_mcfg_timer_unlock = ExternalFunction['rte_mcfg_timer_unlock', rte_mcfg_timer_unlock]
alias rte_ip_frag_rte_mcfg_get_single_file_segments = ExternalFunction['rte_mcfg_get_single_file_segments', rte_mcfg_get_single_file_segments]
alias rte_ip_frag_rte_fbarray_init = ExternalFunction['rte_fbarray_init', rte_fbarray_init]
alias rte_ip_frag_rte_fbarray_attach = ExternalFunction['rte_fbarray_attach', rte_fbarray_attach]
alias rte_ip_frag_rte_fbarray_destroy = ExternalFunction['rte_fbarray_destroy', rte_fbarray_destroy]
alias rte_ip_frag_rte_fbarray_detach = ExternalFunction['rte_fbarray_detach', rte_fbarray_detach]
alias rte_ip_frag_rte_fbarray_get = ExternalFunction['rte_fbarray_get', rte_fbarray_get]
alias rte_ip_frag_rte_fbarray_find_idx = ExternalFunction['rte_fbarray_find_idx', rte_fbarray_find_idx]
alias rte_ip_frag_rte_fbarray_set_used = ExternalFunction['rte_fbarray_set_used', rte_fbarray_set_used]
alias rte_ip_frag_rte_fbarray_set_free = ExternalFunction['rte_fbarray_set_free', rte_fbarray_set_free]
alias rte_ip_frag_rte_fbarray_is_used = ExternalFunction['rte_fbarray_is_used', rte_fbarray_is_used]
alias rte_ip_frag_rte_fbarray_find_next_free = ExternalFunction['rte_fbarray_find_next_free', rte_fbarray_find_next_free]
alias rte_ip_frag_rte_fbarray_find_next_used = ExternalFunction['rte_fbarray_find_next_used', rte_fbarray_find_next_used]
alias rte_ip_frag_rte_fbarray_find_next_n_free = ExternalFunction['rte_fbarray_find_next_n_free', rte_fbarray_find_next_n_free]
alias rte_ip_frag_rte_fbarray_find_next_n_used = ExternalFunction['rte_fbarray_find_next_n_used', rte_fbarray_find_next_n_used]
alias rte_ip_frag_rte_fbarray_find_contig_free = ExternalFunction['rte_fbarray_find_contig_free', rte_fbarray_find_contig_free]
alias rte_ip_frag_rte_fbarray_find_contig_used = ExternalFunction['rte_fbarray_find_contig_used', rte_fbarray_find_contig_used]
alias rte_ip_frag_rte_fbarray_find_prev_free = ExternalFunction['rte_fbarray_find_prev_free', rte_fbarray_find_prev_free]
alias rte_ip_frag_rte_fbarray_find_prev_used = ExternalFunction['rte_fbarray_find_prev_used', rte_fbarray_find_prev_used]
alias rte_ip_frag_rte_fbarray_find_prev_n_free = ExternalFunction['rte_fbarray_find_prev_n_free', rte_fbarray_find_prev_n_free]
alias rte_ip_frag_rte_fbarray_find_prev_n_used = ExternalFunction['rte_fbarray_find_prev_n_used', rte_fbarray_find_prev_n_used]
alias rte_ip_frag_rte_fbarray_find_rev_contig_free = ExternalFunction['rte_fbarray_find_rev_contig_free', rte_fbarray_find_rev_contig_free]
alias rte_ip_frag_rte_fbarray_find_rev_contig_used = ExternalFunction['rte_fbarray_find_rev_contig_used', rte_fbarray_find_rev_contig_used]
alias rte_ip_frag_rte_fbarray_find_biggest_free = ExternalFunction['rte_fbarray_find_biggest_free', rte_fbarray_find_biggest_free]
alias rte_ip_frag_rte_fbarray_find_biggest_used = ExternalFunction['rte_fbarray_find_biggest_used', rte_fbarray_find_biggest_used]
alias rte_ip_frag_rte_fbarray_find_rev_biggest_free = ExternalFunction['rte_fbarray_find_rev_biggest_free', rte_fbarray_find_rev_biggest_free]
alias rte_ip_frag_rte_fbarray_find_rev_biggest_used = ExternalFunction['rte_fbarray_find_rev_biggest_used', rte_fbarray_find_rev_biggest_used]
alias rte_ip_frag_rte_fbarray_dump_metadata = ExternalFunction['rte_fbarray_dump_metadata', rte_fbarray_dump_metadata]
alias rte_ip_frag_rte_mem_lock_page = ExternalFunction['rte_mem_lock_page', rte_mem_lock_page]
alias rte_ip_frag_rte_mem_virt2phy = ExternalFunction['rte_mem_virt2phy', rte_mem_virt2phy]
alias rte_ip_frag_rte_mem_virt2iova = ExternalFunction['rte_mem_virt2iova', rte_mem_virt2iova]
alias rte_ip_frag_rte_mem_iova2virt = ExternalFunction['rte_mem_iova2virt', rte_mem_iova2virt]
alias rte_ip_frag_rte_mem_virt2memseg = ExternalFunction['rte_mem_virt2memseg', rte_mem_virt2memseg]
alias rte_ip_frag_rte_mem_virt2memseg_list = ExternalFunction['rte_mem_virt2memseg_list', rte_mem_virt2memseg_list]
alias rte_ip_frag_rte_memseg_walk = ExternalFunction['rte_memseg_walk', rte_memseg_walk]
alias rte_ip_frag_rte_memseg_contig_walk = ExternalFunction['rte_memseg_contig_walk', rte_memseg_contig_walk]
alias rte_ip_frag_rte_memseg_list_walk = ExternalFunction['rte_memseg_list_walk', rte_memseg_list_walk]
alias rte_ip_frag_rte_memseg_walk_thread_unsafe = ExternalFunction['rte_memseg_walk_thread_unsafe', rte_memseg_walk_thread_unsafe]
alias rte_ip_frag_rte_memseg_contig_walk_thread_unsafe = ExternalFunction['rte_memseg_contig_walk_thread_unsafe', rte_memseg_contig_walk_thread_unsafe]
alias rte_ip_frag_rte_memseg_list_walk_thread_unsafe = ExternalFunction['rte_memseg_list_walk_thread_unsafe', rte_memseg_list_walk_thread_unsafe]
alias rte_ip_frag_rte_memseg_get_fd = ExternalFunction['rte_memseg_get_fd', rte_memseg_get_fd]
alias rte_ip_frag_rte_memseg_get_fd_thread_unsafe = ExternalFunction['rte_memseg_get_fd_thread_unsafe', rte_memseg_get_fd_thread_unsafe]
alias rte_ip_frag_rte_memseg_get_fd_offset = ExternalFunction['rte_memseg_get_fd_offset', rte_memseg_get_fd_offset]
alias rte_ip_frag_rte_memseg_get_fd_offset_thread_unsafe = ExternalFunction['rte_memseg_get_fd_offset_thread_unsafe', rte_memseg_get_fd_offset_thread_unsafe]
alias rte_ip_frag_rte_extmem_register = ExternalFunction['rte_extmem_register', rte_extmem_register]
alias rte_ip_frag_rte_extmem_unregister = ExternalFunction['rte_extmem_unregister', rte_extmem_unregister]
alias rte_ip_frag_rte_extmem_attach = ExternalFunction['rte_extmem_attach', rte_extmem_attach]
alias rte_ip_frag_rte_extmem_detach = ExternalFunction['rte_extmem_detach', rte_extmem_detach]
alias rte_ip_frag_rte_dump_physmem_layout = ExternalFunction['rte_dump_physmem_layout', rte_dump_physmem_layout]
alias rte_ip_frag_rte_eal_get_physmem_size = ExternalFunction['rte_eal_get_physmem_size', rte_eal_get_physmem_size]
alias rte_ip_frag_rte_memory_get_nchannel = ExternalFunction['rte_memory_get_nchannel', rte_memory_get_nchannel]
alias rte_ip_frag_rte_memory_get_nrank = ExternalFunction['rte_memory_get_nrank', rte_memory_get_nrank]
alias rte_ip_frag_rte_mem_check_dma_mask = ExternalFunction['rte_mem_check_dma_mask', rte_mem_check_dma_mask]
alias rte_ip_frag_rte_mem_check_dma_mask_thread_unsafe = ExternalFunction['rte_mem_check_dma_mask_thread_unsafe', rte_mem_check_dma_mask_thread_unsafe]
alias rte_ip_frag_rte_mem_set_dma_mask = ExternalFunction['rte_mem_set_dma_mask', rte_mem_set_dma_mask]
alias rte_ip_frag_rte_eal_using_phys_addrs = ExternalFunction['rte_eal_using_phys_addrs', rte_eal_using_phys_addrs]
alias rte_ip_frag_rte_mem_event_callback_register = ExternalFunction['rte_mem_event_callback_register', rte_mem_event_callback_register]
alias rte_ip_frag_rte_mem_event_callback_unregister = ExternalFunction['rte_mem_event_callback_unregister', rte_mem_event_callback_unregister]
alias rte_ip_frag_rte_mem_alloc_validator_register = ExternalFunction['rte_mem_alloc_validator_register', rte_mem_alloc_validator_register]
alias rte_ip_frag_rte_mem_alloc_validator_unregister = ExternalFunction['rte_mem_alloc_validator_unregister', rte_mem_alloc_validator_unregister]
alias rte_ip_frag_rte_memzero_explicit = ExternalFunction['rte_memzero_explicit', rte_memzero_explicit]
alias rte_ip_frag_rte_free = ExternalFunction['rte_free', rte_free]
alias rte_ip_frag_rte_free_sensitive = ExternalFunction['rte_free_sensitive', rte_free_sensitive]
alias rte_ip_frag_rte_malloc = ExternalFunction['rte_malloc', rte_malloc]
alias rte_ip_frag_rte_zmalloc = ExternalFunction['rte_zmalloc', rte_zmalloc]
alias rte_ip_frag_rte_calloc = ExternalFunction['rte_calloc', rte_calloc]
alias rte_ip_frag_rte_realloc = ExternalFunction['rte_realloc', rte_realloc]
alias rte_ip_frag_rte_realloc_socket = ExternalFunction['rte_realloc_socket', rte_realloc_socket]
alias rte_ip_frag_rte_malloc_socket = ExternalFunction['rte_malloc_socket', rte_malloc_socket]
alias rte_ip_frag_rte_zmalloc_socket = ExternalFunction['rte_zmalloc_socket', rte_zmalloc_socket]
alias rte_ip_frag_rte_calloc_socket = ExternalFunction['rte_calloc_socket', rte_calloc_socket]
alias rte_ip_frag_rte_malloc_validate = ExternalFunction['rte_malloc_validate', rte_malloc_validate]
alias rte_ip_frag_rte_malloc_get_socket_stats = ExternalFunction['rte_malloc_get_socket_stats', rte_malloc_get_socket_stats]
alias rte_ip_frag_rte_malloc_heap_memory_add = ExternalFunction['rte_malloc_heap_memory_add', rte_malloc_heap_memory_add]
alias rte_ip_frag_rte_malloc_heap_memory_remove = ExternalFunction['rte_malloc_heap_memory_remove', rte_malloc_heap_memory_remove]
alias rte_ip_frag_rte_malloc_heap_memory_attach = ExternalFunction['rte_malloc_heap_memory_attach', rte_malloc_heap_memory_attach]
alias rte_ip_frag_rte_malloc_heap_memory_detach = ExternalFunction['rte_malloc_heap_memory_detach', rte_malloc_heap_memory_detach]
alias rte_ip_frag_rte_malloc_heap_create = ExternalFunction['rte_malloc_heap_create', rte_malloc_heap_create]
alias rte_ip_frag_rte_malloc_heap_destroy = ExternalFunction['rte_malloc_heap_destroy', rte_malloc_heap_destroy]
alias rte_ip_frag_rte_malloc_heap_get_socket = ExternalFunction['rte_malloc_heap_get_socket', rte_malloc_heap_get_socket]
alias rte_ip_frag_rte_malloc_heap_socket_is_external = ExternalFunction['rte_malloc_heap_socket_is_external', rte_malloc_heap_socket_is_external]
alias rte_ip_frag_rte_malloc_dump_stats = ExternalFunction['rte_malloc_dump_stats', rte_malloc_dump_stats]
alias rte_ip_frag_rte_malloc_dump_heaps = ExternalFunction['rte_malloc_dump_heaps', rte_malloc_dump_heaps]
alias rte_ip_frag_rte_malloc_virt2iova = ExternalFunction['rte_malloc_virt2iova', rte_malloc_virt2iova]
alias rte_ip_frag_select = ExternalFunction['select', select]
alias rte_ip_frag_pselect = ExternalFunction['pselect', pselect]
alias rte_ip_frag_socket = ExternalFunction['socket', socket]
alias rte_ip_frag_socketpair = ExternalFunction['socketpair', socketpair]
alias rte_ip_frag_bind = ExternalFunction['bind', bind]
alias rte_ip_frag_getsockname = ExternalFunction['getsockname', getsockname]
alias rte_ip_frag_connect = ExternalFunction['connect', connect]
alias rte_ip_frag_getpeername = ExternalFunction['getpeername', getpeername]
alias rte_ip_frag_send = ExternalFunction['send', send]
alias rte_ip_frag_recv = ExternalFunction['recv', recv]
alias rte_ip_frag_sendto = ExternalFunction['sendto', sendto]
alias rte_ip_frag_recvfrom = ExternalFunction['recvfrom', recvfrom]
alias rte_ip_frag_sendmsg = ExternalFunction['sendmsg', sendmsg]
alias rte_ip_frag_recvmsg = ExternalFunction['recvmsg', recvmsg]
alias rte_ip_frag_getsockopt = ExternalFunction['getsockopt', getsockopt]
alias rte_ip_frag_setsockopt = ExternalFunction['setsockopt', setsockopt]
alias rte_ip_frag_listen = ExternalFunction['listen', listen]
alias rte_ip_frag_accept = ExternalFunction['accept', accept]
alias rte_ip_frag_shutdown = ExternalFunction['shutdown', shutdown]
alias rte_ip_frag_sockatmark = ExternalFunction['sockatmark', sockatmark]
alias rte_ip_frag_isfdtype = ExternalFunction['isfdtype', isfdtype]
alias rte_ip_frag_ntohl = ExternalFunction['ntohl', ntohl]
alias rte_ip_frag_ntohs = ExternalFunction['ntohs', ntohs]
alias rte_ip_frag_htonl = ExternalFunction['htonl', htonl]
alias rte_ip_frag_htons = ExternalFunction['htons', htons]
alias rte_ip_frag_bindresvport = ExternalFunction['bindresvport', bindresvport]
alias rte_ip_frag_bindresvport6 = ExternalFunction['bindresvport6', bindresvport6]
alias rte_ip_frag_inet_addr = ExternalFunction['inet_addr', inet_addr]
alias rte_ip_frag_inet_lnaof = ExternalFunction['inet_lnaof', inet_lnaof]
alias rte_ip_frag_inet_makeaddr = ExternalFunction['inet_makeaddr', inet_makeaddr]
alias rte_ip_frag_inet_netof = ExternalFunction['inet_netof', inet_netof]
alias rte_ip_frag_inet_network = ExternalFunction['inet_network', inet_network]
alias rte_ip_frag_inet_ntoa = ExternalFunction['inet_ntoa', inet_ntoa]
alias rte_ip_frag_inet_pton = ExternalFunction['inet_pton', inet_pton]
alias rte_ip_frag_inet_ntop = ExternalFunction['inet_ntop', inet_ntop]
alias rte_ip_frag_inet_aton = ExternalFunction['inet_aton', inet_aton]
alias rte_ip_frag_inet_neta = ExternalFunction['inet_neta', inet_neta]
alias rte_ip_frag_inet_net_ntop = ExternalFunction['inet_net_ntop', inet_net_ntop]
alias rte_ip_frag_inet_net_pton = ExternalFunction['inet_net_pton', inet_net_pton]
alias rte_ip_frag_inet_nsap_addr = ExternalFunction['inet_nsap_addr', inet_nsap_addr]
alias rte_ip_frag_inet_nsap_ntoa = ExternalFunction['inet_nsap_ntoa', inet_nsap_ntoa]
alias rte_ip_frag_imaxabs = ExternalFunction['imaxabs', imaxabs]
alias rte_ip_frag_imaxdiv = ExternalFunction['imaxdiv', imaxdiv]
alias rte_ip_frag_strtoimax = ExternalFunction['strtoimax', strtoimax]
alias rte_ip_frag_strtoumax = ExternalFunction['strtoumax', strtoumax]
alias rte_ip_frag_wcstoimax = ExternalFunction['wcstoimax', wcstoimax]
alias rte_ip_frag_wcstoumax = ExternalFunction['wcstoumax', wcstoumax]
alias rte_ip_frag_rte_constant_bswap16 = ExternalFunction['rte_constant_bswap16', rte_constant_bswap16]
alias rte_ip_frag_rte_constant_bswap32 = ExternalFunction['rte_constant_bswap32', rte_constant_bswap32]
alias rte_ip_frag_rte_constant_bswap64 = ExternalFunction['rte_constant_bswap64', rte_constant_bswap64]
alias rte_ip_frag_rte_memzone_max_set = ExternalFunction['rte_memzone_max_set', rte_memzone_max_set]
alias rte_ip_frag_rte_memzone_max_get = ExternalFunction['rte_memzone_max_get', rte_memzone_max_get]
alias rte_ip_frag_rte_memzone_reserve = ExternalFunction['rte_memzone_reserve', rte_memzone_reserve]
alias rte_ip_frag_rte_memzone_reserve_aligned = ExternalFunction['rte_memzone_reserve_aligned', rte_memzone_reserve_aligned]
alias rte_ip_frag_rte_memzone_reserve_bounded = ExternalFunction['rte_memzone_reserve_bounded', rte_memzone_reserve_bounded]
alias rte_ip_frag_rte_memzone_free = ExternalFunction['rte_memzone_free', rte_memzone_free]
alias rte_ip_frag_rte_memzone_lookup = ExternalFunction['rte_memzone_lookup', rte_memzone_lookup]
alias rte_ip_frag_rte_memzone_dump = ExternalFunction['rte_memzone_dump', rte_memzone_dump]
alias rte_ip_frag_rte_memzone_walk = ExternalFunction['rte_memzone_walk', rte_memzone_walk]
alias rte_ip_frag_rte_ring_get_memsize_elem = ExternalFunction['rte_ring_get_memsize_elem', rte_ring_get_memsize_elem]
alias rte_ip_frag_rte_ring_create_elem = ExternalFunction['rte_ring_create_elem', rte_ring_create_elem]
alias rte_ip_frag_rte_ring_mp_enqueue_bulk_elem = ExternalFunction['rte_ring_mp_enqueue_bulk_elem', rte_ring_mp_enqueue_bulk_elem]
alias rte_ip_frag_rte_ring_sp_enqueue_bulk_elem = ExternalFunction['rte_ring_sp_enqueue_bulk_elem', rte_ring_sp_enqueue_bulk_elem]
alias rte_ip_frag_rte_ring_mp_hts_enqueue_bulk_elem = ExternalFunction['rte_ring_mp_hts_enqueue_bulk_elem', rte_ring_mp_hts_enqueue_bulk_elem]
alias rte_ip_frag_rte_ring_mc_hts_dequeue_bulk_elem = ExternalFunction['rte_ring_mc_hts_dequeue_bulk_elem', rte_ring_mc_hts_dequeue_bulk_elem]
alias rte_ip_frag_rte_ring_mp_hts_enqueue_burst_elem = ExternalFunction['rte_ring_mp_hts_enqueue_burst_elem', rte_ring_mp_hts_enqueue_burst_elem]
alias rte_ip_frag_rte_ring_mc_hts_dequeue_burst_elem = ExternalFunction['rte_ring_mc_hts_dequeue_burst_elem', rte_ring_mc_hts_dequeue_burst_elem]
alias rte_ip_frag_rte_ring_mp_hts_enqueue_bulk = ExternalFunction['rte_ring_mp_hts_enqueue_bulk', rte_ring_mp_hts_enqueue_bulk]
alias rte_ip_frag_rte_ring_mc_hts_dequeue_bulk = ExternalFunction['rte_ring_mc_hts_dequeue_bulk', rte_ring_mc_hts_dequeue_bulk]
alias rte_ip_frag_rte_ring_mp_hts_enqueue_burst = ExternalFunction['rte_ring_mp_hts_enqueue_burst', rte_ring_mp_hts_enqueue_burst]
alias rte_ip_frag_rte_ring_mc_hts_dequeue_burst = ExternalFunction['rte_ring_mc_hts_dequeue_burst', rte_ring_mc_hts_dequeue_burst]
alias rte_ip_frag_rte_ring_mp_rts_enqueue_bulk_elem = ExternalFunction['rte_ring_mp_rts_enqueue_bulk_elem', rte_ring_mp_rts_enqueue_bulk_elem]
alias rte_ip_frag_rte_ring_mc_rts_dequeue_bulk_elem = ExternalFunction['rte_ring_mc_rts_dequeue_bulk_elem', rte_ring_mc_rts_dequeue_bulk_elem]
alias rte_ip_frag_rte_ring_mp_rts_enqueue_burst_elem = ExternalFunction['rte_ring_mp_rts_enqueue_burst_elem', rte_ring_mp_rts_enqueue_burst_elem]
alias rte_ip_frag_rte_ring_mc_rts_dequeue_burst_elem = ExternalFunction['rte_ring_mc_rts_dequeue_burst_elem', rte_ring_mc_rts_dequeue_burst_elem]
alias rte_ip_frag_rte_ring_mp_rts_enqueue_bulk = ExternalFunction['rte_ring_mp_rts_enqueue_bulk', rte_ring_mp_rts_enqueue_bulk]
alias rte_ip_frag_rte_ring_mc_rts_dequeue_bulk = ExternalFunction['rte_ring_mc_rts_dequeue_bulk', rte_ring_mc_rts_dequeue_bulk]
alias rte_ip_frag_rte_ring_mp_rts_enqueue_burst = ExternalFunction['rte_ring_mp_rts_enqueue_burst', rte_ring_mp_rts_enqueue_burst]
alias rte_ip_frag_rte_ring_mc_rts_dequeue_burst = ExternalFunction['rte_ring_mc_rts_dequeue_burst', rte_ring_mc_rts_dequeue_burst]
alias rte_ip_frag_rte_ring_get_prod_htd_max = ExternalFunction['rte_ring_get_prod_htd_max', rte_ring_get_prod_htd_max]
alias rte_ip_frag_rte_ring_set_prod_htd_max = ExternalFunction['rte_ring_set_prod_htd_max', rte_ring_set_prod_htd_max]
alias rte_ip_frag_rte_ring_get_cons_htd_max = ExternalFunction['rte_ring_get_cons_htd_max', rte_ring_get_cons_htd_max]
alias rte_ip_frag_rte_ring_set_cons_htd_max = ExternalFunction['rte_ring_set_cons_htd_max', rte_ring_set_cons_htd_max]
alias rte_ip_frag_rte_ring_enqueue_bulk_elem = ExternalFunction['rte_ring_enqueue_bulk_elem', rte_ring_enqueue_bulk_elem]
alias rte_ip_frag_rte_ring_mp_enqueue_elem = ExternalFunction['rte_ring_mp_enqueue_elem', rte_ring_mp_enqueue_elem]
alias rte_ip_frag_rte_ring_sp_enqueue_elem = ExternalFunction['rte_ring_sp_enqueue_elem', rte_ring_sp_enqueue_elem]
alias rte_ip_frag_rte_ring_enqueue_elem = ExternalFunction['rte_ring_enqueue_elem', rte_ring_enqueue_elem]
alias rte_ip_frag_rte_ring_mc_dequeue_bulk_elem = ExternalFunction['rte_ring_mc_dequeue_bulk_elem', rte_ring_mc_dequeue_bulk_elem]
alias rte_ip_frag_rte_ring_sc_dequeue_bulk_elem = ExternalFunction['rte_ring_sc_dequeue_bulk_elem', rte_ring_sc_dequeue_bulk_elem]
alias rte_ip_frag_rte_ring_dequeue_bulk_elem = ExternalFunction['rte_ring_dequeue_bulk_elem', rte_ring_dequeue_bulk_elem]
alias rte_ip_frag_rte_ring_mc_dequeue_elem = ExternalFunction['rte_ring_mc_dequeue_elem', rte_ring_mc_dequeue_elem]
alias rte_ip_frag_rte_ring_sc_dequeue_elem = ExternalFunction['rte_ring_sc_dequeue_elem', rte_ring_sc_dequeue_elem]
alias rte_ip_frag_rte_ring_dequeue_elem = ExternalFunction['rte_ring_dequeue_elem', rte_ring_dequeue_elem]
alias rte_ip_frag_rte_ring_mp_enqueue_burst_elem = ExternalFunction['rte_ring_mp_enqueue_burst_elem', rte_ring_mp_enqueue_burst_elem]
alias rte_ip_frag_rte_ring_sp_enqueue_burst_elem = ExternalFunction['rte_ring_sp_enqueue_burst_elem', rte_ring_sp_enqueue_burst_elem]
alias rte_ip_frag_rte_ring_enqueue_burst_elem = ExternalFunction['rte_ring_enqueue_burst_elem', rte_ring_enqueue_burst_elem]
alias rte_ip_frag_rte_ring_mc_dequeue_burst_elem = ExternalFunction['rte_ring_mc_dequeue_burst_elem', rte_ring_mc_dequeue_burst_elem]
alias rte_ip_frag_rte_ring_sc_dequeue_burst_elem = ExternalFunction['rte_ring_sc_dequeue_burst_elem', rte_ring_sc_dequeue_burst_elem]
alias rte_ip_frag_rte_ring_dequeue_burst_elem = ExternalFunction['rte_ring_dequeue_burst_elem', rte_ring_dequeue_burst_elem]
alias rte_ip_frag_rte_ring_enqueue_bulk_elem_start = ExternalFunction['rte_ring_enqueue_bulk_elem_start', rte_ring_enqueue_bulk_elem_start]
alias rte_ip_frag_rte_ring_enqueue_bulk_start = ExternalFunction['rte_ring_enqueue_bulk_start', rte_ring_enqueue_bulk_start]
alias rte_ip_frag_rte_ring_enqueue_burst_elem_start = ExternalFunction['rte_ring_enqueue_burst_elem_start', rte_ring_enqueue_burst_elem_start]
alias rte_ip_frag_rte_ring_enqueue_burst_start = ExternalFunction['rte_ring_enqueue_burst_start', rte_ring_enqueue_burst_start]
alias rte_ip_frag_rte_ring_enqueue_elem_finish = ExternalFunction['rte_ring_enqueue_elem_finish', rte_ring_enqueue_elem_finish]
alias rte_ip_frag_rte_ring_enqueue_finish = ExternalFunction['rte_ring_enqueue_finish', rte_ring_enqueue_finish]
alias rte_ip_frag_rte_ring_dequeue_bulk_elem_start = ExternalFunction['rte_ring_dequeue_bulk_elem_start', rte_ring_dequeue_bulk_elem_start]
alias rte_ip_frag_rte_ring_dequeue_bulk_start = ExternalFunction['rte_ring_dequeue_bulk_start', rte_ring_dequeue_bulk_start]
alias rte_ip_frag_rte_ring_dequeue_burst_elem_start = ExternalFunction['rte_ring_dequeue_burst_elem_start', rte_ring_dequeue_burst_elem_start]
alias rte_ip_frag_rte_ring_dequeue_burst_start = ExternalFunction['rte_ring_dequeue_burst_start', rte_ring_dequeue_burst_start]
alias rte_ip_frag_rte_ring_dequeue_elem_finish = ExternalFunction['rte_ring_dequeue_elem_finish', rte_ring_dequeue_elem_finish]
alias rte_ip_frag_rte_ring_dequeue_finish = ExternalFunction['rte_ring_dequeue_finish', rte_ring_dequeue_finish]
alias rte_ip_frag_rte_ring_enqueue_zc_bulk_elem_start = ExternalFunction['rte_ring_enqueue_zc_bulk_elem_start', rte_ring_enqueue_zc_bulk_elem_start]
alias rte_ip_frag_rte_ring_enqueue_zc_bulk_start = ExternalFunction['rte_ring_enqueue_zc_bulk_start', rte_ring_enqueue_zc_bulk_start]
alias rte_ip_frag_rte_ring_enqueue_zc_burst_elem_start = ExternalFunction['rte_ring_enqueue_zc_burst_elem_start', rte_ring_enqueue_zc_burst_elem_start]
alias rte_ip_frag_rte_ring_enqueue_zc_burst_start = ExternalFunction['rte_ring_enqueue_zc_burst_start', rte_ring_enqueue_zc_burst_start]
alias rte_ip_frag_rte_ring_enqueue_zc_elem_finish = ExternalFunction['rte_ring_enqueue_zc_elem_finish', rte_ring_enqueue_zc_elem_finish]
alias rte_ip_frag_rte_ring_enqueue_zc_finish = ExternalFunction['rte_ring_enqueue_zc_finish', rte_ring_enqueue_zc_finish]
alias rte_ip_frag_rte_ring_dequeue_zc_bulk_elem_start = ExternalFunction['rte_ring_dequeue_zc_bulk_elem_start', rte_ring_dequeue_zc_bulk_elem_start]
alias rte_ip_frag_rte_ring_dequeue_zc_bulk_start = ExternalFunction['rte_ring_dequeue_zc_bulk_start', rte_ring_dequeue_zc_bulk_start]
alias rte_ip_frag_rte_ring_dequeue_zc_burst_elem_start = ExternalFunction['rte_ring_dequeue_zc_burst_elem_start', rte_ring_dequeue_zc_burst_elem_start]
alias rte_ip_frag_rte_ring_dequeue_zc_burst_start = ExternalFunction['rte_ring_dequeue_zc_burst_start', rte_ring_dequeue_zc_burst_start]
alias rte_ip_frag_rte_ring_dequeue_zc_elem_finish = ExternalFunction['rte_ring_dequeue_zc_elem_finish', rte_ring_dequeue_zc_elem_finish]
alias rte_ip_frag_rte_ring_dequeue_zc_finish = ExternalFunction['rte_ring_dequeue_zc_finish', rte_ring_dequeue_zc_finish]
alias rte_ip_frag_rte_ring_get_memsize = ExternalFunction['rte_ring_get_memsize', rte_ring_get_memsize]
alias rte_ip_frag_rte_ring_init = ExternalFunction['rte_ring_init', rte_ring_init]
alias rte_ip_frag_rte_ring_free = ExternalFunction['rte_ring_free', rte_ring_free]
alias rte_ip_frag_rte_ring_create = ExternalFunction['rte_ring_create', rte_ring_create]
alias rte_ip_frag_rte_ring_dump = ExternalFunction['rte_ring_dump', rte_ring_dump]
alias rte_ip_frag_rte_ring_headtail_dump = ExternalFunction['rte_ring_headtail_dump', rte_ring_headtail_dump]
alias rte_ip_frag_rte_ring_mp_enqueue_bulk = ExternalFunction['rte_ring_mp_enqueue_bulk', rte_ring_mp_enqueue_bulk]
alias rte_ip_frag_rte_ring_sp_enqueue_bulk = ExternalFunction['rte_ring_sp_enqueue_bulk', rte_ring_sp_enqueue_bulk]
alias rte_ip_frag_rte_ring_enqueue_bulk = ExternalFunction['rte_ring_enqueue_bulk', rte_ring_enqueue_bulk]
alias rte_ip_frag_rte_ring_mp_enqueue = ExternalFunction['rte_ring_mp_enqueue', rte_ring_mp_enqueue]
alias rte_ip_frag_rte_ring_sp_enqueue = ExternalFunction['rte_ring_sp_enqueue', rte_ring_sp_enqueue]
alias rte_ip_frag_rte_ring_enqueue = ExternalFunction['rte_ring_enqueue', rte_ring_enqueue]
alias rte_ip_frag_rte_ring_mc_dequeue_bulk = ExternalFunction['rte_ring_mc_dequeue_bulk', rte_ring_mc_dequeue_bulk]
alias rte_ip_frag_rte_ring_sc_dequeue_bulk = ExternalFunction['rte_ring_sc_dequeue_bulk', rte_ring_sc_dequeue_bulk]
alias rte_ip_frag_rte_ring_dequeue_bulk = ExternalFunction['rte_ring_dequeue_bulk', rte_ring_dequeue_bulk]
alias rte_ip_frag_rte_ring_mc_dequeue = ExternalFunction['rte_ring_mc_dequeue', rte_ring_mc_dequeue]
alias rte_ip_frag_rte_ring_sc_dequeue = ExternalFunction['rte_ring_sc_dequeue', rte_ring_sc_dequeue]
alias rte_ip_frag_rte_ring_dequeue = ExternalFunction['rte_ring_dequeue', rte_ring_dequeue]
alias rte_ip_frag_rte_ring_reset = ExternalFunction['rte_ring_reset', rte_ring_reset]
alias rte_ip_frag_rte_ring_count = ExternalFunction['rte_ring_count', rte_ring_count]
alias rte_ip_frag_rte_ring_free_count = ExternalFunction['rte_ring_free_count', rte_ring_free_count]
alias rte_ip_frag_rte_ring_full = ExternalFunction['rte_ring_full', rte_ring_full]
alias rte_ip_frag_rte_ring_empty = ExternalFunction['rte_ring_empty', rte_ring_empty]
alias rte_ip_frag_rte_ring_get_size = ExternalFunction['rte_ring_get_size', rte_ring_get_size]
alias rte_ip_frag_rte_ring_get_capacity = ExternalFunction['rte_ring_get_capacity', rte_ring_get_capacity]
alias rte_ip_frag_rte_ring_get_prod_sync_type = ExternalFunction['rte_ring_get_prod_sync_type', rte_ring_get_prod_sync_type]
alias rte_ip_frag_rte_ring_is_prod_single = ExternalFunction['rte_ring_is_prod_single', rte_ring_is_prod_single]
alias rte_ip_frag_rte_ring_get_cons_sync_type = ExternalFunction['rte_ring_get_cons_sync_type', rte_ring_get_cons_sync_type]
alias rte_ip_frag_rte_ring_is_cons_single = ExternalFunction['rte_ring_is_cons_single', rte_ring_is_cons_single]
alias rte_ip_frag_rte_ring_list_dump = ExternalFunction['rte_ring_list_dump', rte_ring_list_dump]
alias rte_ip_frag_rte_ring_lookup = ExternalFunction['rte_ring_lookup', rte_ring_lookup]
alias rte_ip_frag_rte_ring_mp_enqueue_burst = ExternalFunction['rte_ring_mp_enqueue_burst', rte_ring_mp_enqueue_burst]
alias rte_ip_frag_rte_ring_sp_enqueue_burst = ExternalFunction['rte_ring_sp_enqueue_burst', rte_ring_sp_enqueue_burst]
alias rte_ip_frag_rte_ring_enqueue_burst = ExternalFunction['rte_ring_enqueue_burst', rte_ring_enqueue_burst]
alias rte_ip_frag_rte_ring_mc_dequeue_burst = ExternalFunction['rte_ring_mc_dequeue_burst', rte_ring_mc_dequeue_burst]
alias rte_ip_frag_rte_ring_sc_dequeue_burst = ExternalFunction['rte_ring_sc_dequeue_burst', rte_ring_sc_dequeue_burst]
alias rte_ip_frag_rte_ring_dequeue_burst = ExternalFunction['rte_ring_dequeue_burst', rte_ring_dequeue_burst]
alias rte_ip_frag_rte_mov16 = ExternalFunction['rte_mov16', rte_mov16]
alias rte_ip_frag_rte_mov32 = ExternalFunction['rte_mov32', rte_mov32]
alias rte_ip_frag_rte_mov64 = ExternalFunction['rte_mov64', rte_mov64]
alias rte_ip_frag_rte_mov128 = ExternalFunction['rte_mov128', rte_mov128]
alias rte_ip_frag_rte_mov256 = ExternalFunction['rte_mov256', rte_mov256]
alias rte_ip_frag_rte_mov48 = ExternalFunction['rte_mov48', rte_mov48]
alias rte_ip_frag_rte_get_tsc_hz = ExternalFunction['rte_get_tsc_hz', rte_get_tsc_hz]
alias rte_ip_frag_rte_get_tsc_cycles = ExternalFunction['rte_get_tsc_cycles', rte_get_tsc_cycles]
alias rte_ip_frag_rte_get_timer_cycles = ExternalFunction['rte_get_timer_cycles', rte_get_timer_cycles]
alias rte_ip_frag_rte_get_timer_hz = ExternalFunction['rte_get_timer_hz', rte_get_timer_hz]
alias rte_ip_frag_rte_delay_ms = ExternalFunction['rte_delay_ms', rte_delay_ms]
alias rte_ip_frag_rte_delay_us_block = ExternalFunction['rte_delay_us_block', rte_delay_us_block]
alias rte_ip_frag_rte_delay_us_sleep = ExternalFunction['rte_delay_us_sleep', rte_delay_us_sleep]
alias rte_ip_frag_rte_delay_us_callback_register = ExternalFunction['rte_delay_us_callback_register', rte_delay_us_callback_register]
alias rte_ip_frag_rte_rdtsc = ExternalFunction['rte_rdtsc', rte_rdtsc]
alias rte_ip_frag_rte_rdtsc_precise = ExternalFunction['rte_rdtsc_precise', rte_rdtsc_precise]
alias rte_ip_frag_isalnum = ExternalFunction['isalnum', isalnum]
alias rte_ip_frag_isalpha = ExternalFunction['isalpha', isalpha]
alias rte_ip_frag_iscntrl = ExternalFunction['iscntrl', iscntrl]
alias rte_ip_frag_isdigit = ExternalFunction['isdigit', isdigit]
alias rte_ip_frag_islower = ExternalFunction['islower', islower]
alias rte_ip_frag_isgraph = ExternalFunction['isgraph', isgraph]
alias rte_ip_frag_isprint = ExternalFunction['isprint', isprint]
alias rte_ip_frag_ispunct = ExternalFunction['ispunct', ispunct]
alias rte_ip_frag_isspace = ExternalFunction['isspace', isspace]
alias rte_ip_frag_isupper = ExternalFunction['isupper', isupper]
alias rte_ip_frag_isxdigit = ExternalFunction['isxdigit', isxdigit]
alias rte_ip_frag_tolower = ExternalFunction['tolower', tolower]
alias rte_ip_frag_toupper = ExternalFunction['toupper', toupper]
alias rte_ip_frag_isblank = ExternalFunction['isblank', isblank]
alias rte_ip_frag_isascii = ExternalFunction['isascii', isascii]
alias rte_ip_frag_toascii = ExternalFunction['toascii', toascii]
alias rte_ip_frag_isalnum_l = ExternalFunction['isalnum_l', isalnum_l]
alias rte_ip_frag_isalpha_l = ExternalFunction['isalpha_l', isalpha_l]
alias rte_ip_frag_iscntrl_l = ExternalFunction['iscntrl_l', iscntrl_l]
alias rte_ip_frag_isdigit_l = ExternalFunction['isdigit_l', isdigit_l]
alias rte_ip_frag_islower_l = ExternalFunction['islower_l', islower_l]
alias rte_ip_frag_isgraph_l = ExternalFunction['isgraph_l', isgraph_l]
alias rte_ip_frag_isprint_l = ExternalFunction['isprint_l', isprint_l]
alias rte_ip_frag_ispunct_l = ExternalFunction['ispunct_l', ispunct_l]
alias rte_ip_frag_isspace_l = ExternalFunction['isspace_l', isspace_l]
alias rte_ip_frag_isupper_l = ExternalFunction['isupper_l', isupper_l]
alias rte_ip_frag_isxdigit_l = ExternalFunction['isxdigit_l', isxdigit_l]
alias rte_ip_frag_isblank_l = ExternalFunction['isblank_l', isblank_l]
alias rte_ip_frag_tolower_l = ExternalFunction['tolower_l', tolower_l]
alias rte_ip_frag_toupper_l = ExternalFunction['toupper_l', toupper_l]
alias rte_ip_frag_rte_strsplit = ExternalFunction['rte_strsplit', rte_strsplit]
alias rte_ip_frag_rte_strlcpy = ExternalFunction['rte_strlcpy', rte_strlcpy]
alias rte_ip_frag_rte_strlcat = ExternalFunction['rte_strlcat', rte_strlcat]
alias rte_ip_frag_rte_strscpy = ExternalFunction['rte_strscpy', rte_strscpy]
alias rte_ip_frag_rte_str_skip_leading_spaces = ExternalFunction['rte_str_skip_leading_spaces', rte_str_skip_leading_spaces]
alias rte_ip_frag_rte_trace_is_enabled = ExternalFunction['rte_trace_is_enabled', rte_trace_is_enabled]
alias rte_ip_frag_rte_trace_feature_is_enabled = ExternalFunction['rte_trace_feature_is_enabled', rte_trace_feature_is_enabled]
alias rte_ip_frag_rte_trace_mode_set = ExternalFunction['rte_trace_mode_set', rte_trace_mode_set]
alias rte_ip_frag_rte_trace_mode_get = ExternalFunction['rte_trace_mode_get', rte_trace_mode_get]
alias rte_ip_frag_rte_trace_pattern = ExternalFunction['rte_trace_pattern', rte_trace_pattern]
alias rte_ip_frag_rte_trace_regexp = ExternalFunction['rte_trace_regexp', rte_trace_regexp]
alias rte_ip_frag_rte_trace_save = ExternalFunction['rte_trace_save', rte_trace_save]
alias rte_ip_frag_rte_trace_metadata_dump = ExternalFunction['rte_trace_metadata_dump', rte_trace_metadata_dump]
alias rte_ip_frag_rte_trace_dump = ExternalFunction['rte_trace_dump', rte_trace_dump]
alias rte_ip_frag_rte_trace_point_enable = ExternalFunction['rte_trace_point_enable', rte_trace_point_enable]
alias rte_ip_frag_rte_trace_point_disable = ExternalFunction['rte_trace_point_disable', rte_trace_point_disable]
alias rte_ip_frag_rte_trace_point_is_enabled = ExternalFunction['rte_trace_point_is_enabled', rte_trace_point_is_enabled]
alias rte_ip_frag_rte_trace_point_lookup = ExternalFunction['rte_trace_point_lookup', rte_trace_point_lookup]
alias rte_ip_frag_rte_mempool_trace_ops_dequeue_bulk = ExternalFunction['rte_mempool_trace_ops_dequeue_bulk', rte_mempool_trace_ops_dequeue_bulk]
alias rte_ip_frag_rte_mempool_trace_ops_dequeue_contig_blocks = ExternalFunction['rte_mempool_trace_ops_dequeue_contig_blocks', rte_mempool_trace_ops_dequeue_contig_blocks]
alias rte_ip_frag_rte_mempool_trace_ops_enqueue_bulk = ExternalFunction['rte_mempool_trace_ops_enqueue_bulk', rte_mempool_trace_ops_enqueue_bulk]
alias rte_ip_frag_rte_mempool_trace_generic_put = ExternalFunction['rte_mempool_trace_generic_put', rte_mempool_trace_generic_put]
alias rte_ip_frag_rte_mempool_trace_put_bulk = ExternalFunction['rte_mempool_trace_put_bulk', rte_mempool_trace_put_bulk]
alias rte_ip_frag_rte_mempool_trace_generic_get = ExternalFunction['rte_mempool_trace_generic_get', rte_mempool_trace_generic_get]
alias rte_ip_frag_rte_mempool_trace_get_bulk = ExternalFunction['rte_mempool_trace_get_bulk', rte_mempool_trace_get_bulk]
alias rte_ip_frag_rte_mempool_trace_get_contig_blocks = ExternalFunction['rte_mempool_trace_get_contig_blocks', rte_mempool_trace_get_contig_blocks]
alias rte_ip_frag_rte_mempool_trace_default_cache = ExternalFunction['rte_mempool_trace_default_cache', rte_mempool_trace_default_cache]
alias rte_ip_frag_rte_mempool_trace_cache_flush = ExternalFunction['rte_mempool_trace_cache_flush', rte_mempool_trace_cache_flush]
alias rte_ip_frag_rte_mempool_get_header = ExternalFunction['rte_mempool_get_header', rte_mempool_get_header]
alias rte_ip_frag_rte_mempool_from_obj = ExternalFunction['rte_mempool_from_obj', rte_mempool_from_obj]
alias rte_ip_frag_rte_mempool_get_trailer = ExternalFunction['rte_mempool_get_trailer', rte_mempool_get_trailer]
alias rte_ip_frag_rte_mempool_check_cookies = ExternalFunction['rte_mempool_check_cookies', rte_mempool_check_cookies]
alias rte_ip_frag_rte_mempool_contig_blocks_check_cookies = ExternalFunction['rte_mempool_contig_blocks_check_cookies', rte_mempool_contig_blocks_check_cookies]
alias rte_ip_frag_rte_mempool_op_calc_mem_size_helper = ExternalFunction['rte_mempool_op_calc_mem_size_helper', rte_mempool_op_calc_mem_size_helper]
alias rte_ip_frag_rte_mempool_op_calc_mem_size_default = ExternalFunction['rte_mempool_op_calc_mem_size_default', rte_mempool_op_calc_mem_size_default]
alias rte_ip_frag_rte_mempool_op_populate_helper = ExternalFunction['rte_mempool_op_populate_helper', rte_mempool_op_populate_helper]
alias rte_ip_frag_rte_mempool_op_populate_default = ExternalFunction['rte_mempool_op_populate_default', rte_mempool_op_populate_default]
alias rte_ip_frag_rte_mempool_get_ops = ExternalFunction['rte_mempool_get_ops', rte_mempool_get_ops]
alias rte_ip_frag_rte_mempool_ops_alloc = ExternalFunction['rte_mempool_ops_alloc', rte_mempool_ops_alloc]
alias rte_ip_frag_rte_mempool_ops_dequeue_bulk = ExternalFunction['rte_mempool_ops_dequeue_bulk', rte_mempool_ops_dequeue_bulk]
alias rte_ip_frag_rte_mempool_ops_dequeue_contig_blocks = ExternalFunction['rte_mempool_ops_dequeue_contig_blocks', rte_mempool_ops_dequeue_contig_blocks]
alias rte_ip_frag_rte_mempool_ops_enqueue_bulk = ExternalFunction['rte_mempool_ops_enqueue_bulk', rte_mempool_ops_enqueue_bulk]
alias rte_ip_frag_rte_mempool_ops_get_count = ExternalFunction['rte_mempool_ops_get_count', rte_mempool_ops_get_count]
alias rte_ip_frag_rte_mempool_ops_calc_mem_size = ExternalFunction['rte_mempool_ops_calc_mem_size', rte_mempool_ops_calc_mem_size]
alias rte_ip_frag_rte_mempool_ops_populate = ExternalFunction['rte_mempool_ops_populate', rte_mempool_ops_populate]
alias rte_ip_frag_rte_mempool_ops_get_info = ExternalFunction['rte_mempool_ops_get_info', rte_mempool_ops_get_info]
alias rte_ip_frag_rte_mempool_ops_free = ExternalFunction['rte_mempool_ops_free', rte_mempool_ops_free]
alias rte_ip_frag_rte_mempool_set_ops_byname = ExternalFunction['rte_mempool_set_ops_byname', rte_mempool_set_ops_byname]
alias rte_ip_frag_rte_mempool_register_ops = ExternalFunction['rte_mempool_register_ops', rte_mempool_register_ops]
alias rte_ip_frag_rte_mempool_free = ExternalFunction['rte_mempool_free', rte_mempool_free]
alias rte_ip_frag_rte_mempool_create = ExternalFunction['rte_mempool_create', rte_mempool_create]
alias rte_ip_frag_rte_mempool_create_empty = ExternalFunction['rte_mempool_create_empty', rte_mempool_create_empty]
alias rte_ip_frag_rte_mempool_populate_iova = ExternalFunction['rte_mempool_populate_iova', rte_mempool_populate_iova]
alias rte_ip_frag_rte_mempool_populate_virt = ExternalFunction['rte_mempool_populate_virt', rte_mempool_populate_virt]
alias rte_ip_frag_rte_mempool_populate_default = ExternalFunction['rte_mempool_populate_default', rte_mempool_populate_default]
alias rte_ip_frag_rte_mempool_populate_anon = ExternalFunction['rte_mempool_populate_anon', rte_mempool_populate_anon]
alias rte_ip_frag_rte_mempool_obj_iter = ExternalFunction['rte_mempool_obj_iter', rte_mempool_obj_iter]
alias rte_ip_frag_rte_mempool_mem_iter = ExternalFunction['rte_mempool_mem_iter', rte_mempool_mem_iter]
alias rte_ip_frag_rte_mempool_dump = ExternalFunction['rte_mempool_dump', rte_mempool_dump]
alias rte_ip_frag_rte_mempool_cache_create = ExternalFunction['rte_mempool_cache_create', rte_mempool_cache_create]
alias rte_ip_frag_rte_mempool_cache_free = ExternalFunction['rte_mempool_cache_free', rte_mempool_cache_free]
alias rte_ip_frag_rte_mempool_default_cache = ExternalFunction['rte_mempool_default_cache', rte_mempool_default_cache]
alias rte_ip_frag_rte_mempool_cache_flush = ExternalFunction['rte_mempool_cache_flush', rte_mempool_cache_flush]
alias rte_ip_frag_rte_mempool_do_generic_put = ExternalFunction['rte_mempool_do_generic_put', rte_mempool_do_generic_put]
alias rte_ip_frag_rte_mempool_generic_put = ExternalFunction['rte_mempool_generic_put', rte_mempool_generic_put]
alias rte_ip_frag_rte_mempool_put_bulk = ExternalFunction['rte_mempool_put_bulk', rte_mempool_put_bulk]
alias rte_ip_frag_rte_mempool_put = ExternalFunction['rte_mempool_put', rte_mempool_put]
alias rte_ip_frag_rte_mempool_do_generic_get = ExternalFunction['rte_mempool_do_generic_get', rte_mempool_do_generic_get]
alias rte_ip_frag_rte_mempool_generic_get = ExternalFunction['rte_mempool_generic_get', rte_mempool_generic_get]
alias rte_ip_frag_rte_mempool_get_bulk = ExternalFunction['rte_mempool_get_bulk', rte_mempool_get_bulk]
alias rte_ip_frag_rte_mempool_get = ExternalFunction['rte_mempool_get', rte_mempool_get]
alias rte_ip_frag_rte_mempool_get_contig_blocks = ExternalFunction['rte_mempool_get_contig_blocks', rte_mempool_get_contig_blocks]
alias rte_ip_frag_rte_mempool_avail_count = ExternalFunction['rte_mempool_avail_count', rte_mempool_avail_count]
alias rte_ip_frag_rte_mempool_in_use_count = ExternalFunction['rte_mempool_in_use_count', rte_mempool_in_use_count]
alias rte_ip_frag_rte_mempool_full = ExternalFunction['rte_mempool_full', rte_mempool_full]
alias rte_ip_frag_rte_mempool_empty = ExternalFunction['rte_mempool_empty', rte_mempool_empty]
alias rte_ip_frag_rte_mempool_virt2iova = ExternalFunction['rte_mempool_virt2iova', rte_mempool_virt2iova]
alias rte_ip_frag_rte_mempool_audit = ExternalFunction['rte_mempool_audit', rte_mempool_audit]
alias rte_ip_frag_rte_mempool_get_priv = ExternalFunction['rte_mempool_get_priv', rte_mempool_get_priv]
alias rte_ip_frag_rte_mempool_list_dump = ExternalFunction['rte_mempool_list_dump', rte_mempool_list_dump]
alias rte_ip_frag_rte_mempool_lookup = ExternalFunction['rte_mempool_lookup', rte_mempool_lookup]
alias rte_ip_frag_rte_mempool_calc_obj_size = ExternalFunction['rte_mempool_calc_obj_size', rte_mempool_calc_obj_size]
alias rte_ip_frag_rte_mempool_walk = ExternalFunction['rte_mempool_walk', rte_mempool_walk]
alias rte_ip_frag_rte_mempool_get_mem_range = ExternalFunction['rte_mempool_get_mem_range', rte_mempool_get_mem_range]
alias rte_ip_frag_rte_mempool_get_obj_alignment = ExternalFunction['rte_mempool_get_obj_alignment', rte_mempool_get_obj_alignment]
alias rte_ip_frag_rte_mempool_get_page_size = ExternalFunction['rte_mempool_get_page_size', rte_mempool_get_page_size]
alias rte_ip_frag_rte_mempool_event_callback_register = ExternalFunction['rte_mempool_event_callback_register', rte_mempool_event_callback_register]
alias rte_ip_frag_rte_mempool_event_callback_unregister = ExternalFunction['rte_mempool_event_callback_unregister', rte_mempool_event_callback_unregister]
alias rte_ip_frag_rte_prefetch0 = ExternalFunction['rte_prefetch0', rte_prefetch0]
alias rte_ip_frag_rte_prefetch1 = ExternalFunction['rte_prefetch1', rte_prefetch1]
alias rte_ip_frag_rte_prefetch2 = ExternalFunction['rte_prefetch2', rte_prefetch2]
alias rte_ip_frag_rte_prefetch_non_temporal = ExternalFunction['rte_prefetch_non_temporal', rte_prefetch_non_temporal]
alias rte_ip_frag_rte_prefetch0_write = ExternalFunction['rte_prefetch0_write', rte_prefetch0_write]
alias rte_ip_frag_rte_prefetch1_write = ExternalFunction['rte_prefetch1_write', rte_prefetch1_write]
alias rte_ip_frag_rte_prefetch2_write = ExternalFunction['rte_prefetch2_write', rte_prefetch2_write]
alias rte_ip_frag_rte_cldemote = ExternalFunction['rte_cldemote', rte_cldemote]
alias rte_ip_frag_rte_get_ptype_l2_name = ExternalFunction['rte_get_ptype_l2_name', rte_get_ptype_l2_name]
alias rte_ip_frag_rte_get_ptype_l3_name = ExternalFunction['rte_get_ptype_l3_name', rte_get_ptype_l3_name]
alias rte_ip_frag_rte_get_ptype_l4_name = ExternalFunction['rte_get_ptype_l4_name', rte_get_ptype_l4_name]
alias rte_ip_frag_rte_get_ptype_tunnel_name = ExternalFunction['rte_get_ptype_tunnel_name', rte_get_ptype_tunnel_name]
alias rte_ip_frag_rte_get_ptype_inner_l2_name = ExternalFunction['rte_get_ptype_inner_l2_name', rte_get_ptype_inner_l2_name]
alias rte_ip_frag_rte_get_ptype_inner_l3_name = ExternalFunction['rte_get_ptype_inner_l3_name', rte_get_ptype_inner_l3_name]
alias rte_ip_frag_rte_get_ptype_inner_l4_name = ExternalFunction['rte_get_ptype_inner_l4_name', rte_get_ptype_inner_l4_name]
alias rte_ip_frag_rte_get_ptype_name = ExternalFunction['rte_get_ptype_name', rte_get_ptype_name]
alias rte_ip_frag_rte_get_rx_ol_flag_name = ExternalFunction['rte_get_rx_ol_flag_name', rte_get_rx_ol_flag_name]
alias rte_ip_frag_rte_get_rx_ol_flag_list = ExternalFunction['rte_get_rx_ol_flag_list', rte_get_rx_ol_flag_list]
alias rte_ip_frag_rte_get_tx_ol_flag_name = ExternalFunction['rte_get_tx_ol_flag_name', rte_get_tx_ol_flag_name]
alias rte_ip_frag_rte_get_tx_ol_flag_list = ExternalFunction['rte_get_tx_ol_flag_list', rte_get_tx_ol_flag_list]
alias rte_ip_frag_rte_mbuf_prefetch_part1 = ExternalFunction['rte_mbuf_prefetch_part1', rte_mbuf_prefetch_part1]
alias rte_ip_frag_rte_mbuf_prefetch_part2 = ExternalFunction['rte_mbuf_prefetch_part2', rte_mbuf_prefetch_part2]
alias rte_ip_frag_rte_pktmbuf_priv_size = ExternalFunction['rte_pktmbuf_priv_size', rte_pktmbuf_priv_size]
alias rte_ip_frag_rte_mbuf_iova_get = ExternalFunction['rte_mbuf_iova_get', rte_mbuf_iova_get]
alias rte_ip_frag_rte_mbuf_iova_set = ExternalFunction['rte_mbuf_iova_set', rte_mbuf_iova_set]
alias rte_ip_frag_rte_mbuf_data_iova = ExternalFunction['rte_mbuf_data_iova', rte_mbuf_data_iova]
alias rte_ip_frag_rte_mbuf_data_iova_default = ExternalFunction['rte_mbuf_data_iova_default', rte_mbuf_data_iova_default]
alias rte_ip_frag_rte_mbuf_from_indirect = ExternalFunction['rte_mbuf_from_indirect', rte_mbuf_from_indirect]
alias rte_ip_frag_rte_mbuf_buf_addr = ExternalFunction['rte_mbuf_buf_addr', rte_mbuf_buf_addr]
alias rte_ip_frag_rte_mbuf_data_addr_default = ExternalFunction['rte_mbuf_data_addr_default', rte_mbuf_data_addr_default]
alias rte_ip_frag_rte_mbuf_to_baddr = ExternalFunction['rte_mbuf_to_baddr', rte_mbuf_to_baddr]
alias rte_ip_frag_rte_mbuf_to_priv = ExternalFunction['rte_mbuf_to_priv', rte_mbuf_to_priv]
alias rte_ip_frag_rte_pktmbuf_priv_flags = ExternalFunction['rte_pktmbuf_priv_flags', rte_pktmbuf_priv_flags]
alias rte_ip_frag_rte_mbuf_refcnt_read = ExternalFunction['rte_mbuf_refcnt_read', rte_mbuf_refcnt_read]
alias rte_ip_frag_rte_mbuf_refcnt_set = ExternalFunction['rte_mbuf_refcnt_set', rte_mbuf_refcnt_set]
alias rte_ip_frag_rte_mbuf_refcnt_update = ExternalFunction['rte_mbuf_refcnt_update', rte_mbuf_refcnt_update]
alias rte_ip_frag_rte_mbuf_ext_refcnt_read = ExternalFunction['rte_mbuf_ext_refcnt_read', rte_mbuf_ext_refcnt_read]
alias rte_ip_frag_rte_mbuf_ext_refcnt_set = ExternalFunction['rte_mbuf_ext_refcnt_set', rte_mbuf_ext_refcnt_set]
alias rte_ip_frag_rte_mbuf_ext_refcnt_update = ExternalFunction['rte_mbuf_ext_refcnt_update', rte_mbuf_ext_refcnt_update]
alias rte_ip_frag_rte_mbuf_sanity_check = ExternalFunction['rte_mbuf_sanity_check', rte_mbuf_sanity_check]
alias rte_ip_frag_rte_mbuf_check = ExternalFunction['rte_mbuf_check', rte_mbuf_check]
alias rte_ip_frag_rte_mbuf_raw_alloc = ExternalFunction['rte_mbuf_raw_alloc', rte_mbuf_raw_alloc]
alias rte_ip_frag_rte_mbuf_raw_alloc_bulk = ExternalFunction['rte_mbuf_raw_alloc_bulk', rte_mbuf_raw_alloc_bulk]
alias rte_ip_frag_rte_mbuf_raw_free = ExternalFunction['rte_mbuf_raw_free', rte_mbuf_raw_free]
alias rte_ip_frag_rte_mbuf_raw_free_bulk = ExternalFunction['rte_mbuf_raw_free_bulk', rte_mbuf_raw_free_bulk]
alias rte_ip_frag_rte_pktmbuf_init = ExternalFunction['rte_pktmbuf_init', rte_pktmbuf_init]
alias rte_ip_frag_rte_pktmbuf_pool_init = ExternalFunction['rte_pktmbuf_pool_init', rte_pktmbuf_pool_init]
alias rte_ip_frag_rte_pktmbuf_pool_create = ExternalFunction['rte_pktmbuf_pool_create', rte_pktmbuf_pool_create]
alias rte_ip_frag_rte_pktmbuf_pool_create_by_ops = ExternalFunction['rte_pktmbuf_pool_create_by_ops', rte_pktmbuf_pool_create_by_ops]
alias rte_ip_frag_rte_pktmbuf_pool_create_extbuf = ExternalFunction['rte_pktmbuf_pool_create_extbuf', rte_pktmbuf_pool_create_extbuf]
alias rte_ip_frag_rte_pktmbuf_data_room_size = ExternalFunction['rte_pktmbuf_data_room_size', rte_pktmbuf_data_room_size]
alias rte_ip_frag_rte_pktmbuf_reset_headroom = ExternalFunction['rte_pktmbuf_reset_headroom', rte_pktmbuf_reset_headroom]
alias rte_ip_frag_rte_pktmbuf_reset = ExternalFunction['rte_pktmbuf_reset', rte_pktmbuf_reset]
alias rte_ip_frag_rte_pktmbuf_alloc = ExternalFunction['rte_pktmbuf_alloc', rte_pktmbuf_alloc]
alias rte_ip_frag_rte_pktmbuf_alloc_bulk = ExternalFunction['rte_pktmbuf_alloc_bulk', rte_pktmbuf_alloc_bulk]
alias rte_ip_frag_rte_pktmbuf_ext_shinfo_init_helper = ExternalFunction['rte_pktmbuf_ext_shinfo_init_helper', rte_pktmbuf_ext_shinfo_init_helper]
alias rte_ip_frag_rte_pktmbuf_attach_extbuf = ExternalFunction['rte_pktmbuf_attach_extbuf', rte_pktmbuf_attach_extbuf]
alias rte_ip_frag_rte_mbuf_dynfield_copy = ExternalFunction['rte_mbuf_dynfield_copy', rte_mbuf_dynfield_copy]
alias rte_ip_frag_rte_pktmbuf_attach = ExternalFunction['rte_pktmbuf_attach', rte_pktmbuf_attach]
alias rte_ip_frag_rte_pktmbuf_detach = ExternalFunction['rte_pktmbuf_detach', rte_pktmbuf_detach]
alias rte_ip_frag_rte_pktmbuf_prefree_seg = ExternalFunction['rte_pktmbuf_prefree_seg', rte_pktmbuf_prefree_seg]
alias rte_ip_frag_rte_pktmbuf_free_seg = ExternalFunction['rte_pktmbuf_free_seg', rte_pktmbuf_free_seg]
alias rte_ip_frag_rte_pktmbuf_free = ExternalFunction['rte_pktmbuf_free', rte_pktmbuf_free]
alias rte_ip_frag_rte_pktmbuf_free_bulk = ExternalFunction['rte_pktmbuf_free_bulk', rte_pktmbuf_free_bulk]
alias rte_ip_frag_rte_pktmbuf_clone = ExternalFunction['rte_pktmbuf_clone', rte_pktmbuf_clone]
alias rte_ip_frag_rte_pktmbuf_copy = ExternalFunction['rte_pktmbuf_copy', rte_pktmbuf_copy]
alias rte_ip_frag_rte_pktmbuf_refcnt_update = ExternalFunction['rte_pktmbuf_refcnt_update', rte_pktmbuf_refcnt_update]
alias rte_ip_frag_rte_pktmbuf_headroom = ExternalFunction['rte_pktmbuf_headroom', rte_pktmbuf_headroom]
alias rte_ip_frag_rte_pktmbuf_tailroom = ExternalFunction['rte_pktmbuf_tailroom', rte_pktmbuf_tailroom]
alias rte_ip_frag_rte_pktmbuf_lastseg = ExternalFunction['rte_pktmbuf_lastseg', rte_pktmbuf_lastseg]
alias rte_ip_frag_rte_pktmbuf_prepend = ExternalFunction['rte_pktmbuf_prepend', rte_pktmbuf_prepend]
alias rte_ip_frag_rte_pktmbuf_append = ExternalFunction['rte_pktmbuf_append', rte_pktmbuf_append]
alias rte_ip_frag_rte_pktmbuf_adj = ExternalFunction['rte_pktmbuf_adj', rte_pktmbuf_adj]
alias rte_ip_frag_rte_pktmbuf_trim = ExternalFunction['rte_pktmbuf_trim', rte_pktmbuf_trim]
alias rte_ip_frag_rte_pktmbuf_is_contiguous = ExternalFunction['rte_pktmbuf_is_contiguous', rte_pktmbuf_is_contiguous]
alias rte_ip_frag_rte_pktmbuf_read = ExternalFunction['rte_pktmbuf_read', rte_pktmbuf_read]
alias rte_ip_frag_rte_pktmbuf_chain = ExternalFunction['rte_pktmbuf_chain', rte_pktmbuf_chain]
alias rte_ip_frag_rte_mbuf_tx_offload = ExternalFunction['rte_mbuf_tx_offload', rte_mbuf_tx_offload]
alias rte_ip_frag_rte_validate_tx_offload = ExternalFunction['rte_validate_tx_offload', rte_validate_tx_offload]
alias rte_ip_frag_rte_pktmbuf_linearize = ExternalFunction['rte_pktmbuf_linearize', rte_pktmbuf_linearize]
alias rte_ip_frag_rte_pktmbuf_dump = ExternalFunction['rte_pktmbuf_dump', rte_pktmbuf_dump]
alias rte_ip_frag_rte_mbuf_sched_queue_get = ExternalFunction['rte_mbuf_sched_queue_get', rte_mbuf_sched_queue_get]
alias rte_ip_frag_rte_mbuf_sched_traffic_class_get = ExternalFunction['rte_mbuf_sched_traffic_class_get', rte_mbuf_sched_traffic_class_get]
alias rte_ip_frag_rte_mbuf_sched_color_get = ExternalFunction['rte_mbuf_sched_color_get', rte_mbuf_sched_color_get]
alias rte_ip_frag_rte_mbuf_sched_get = ExternalFunction['rte_mbuf_sched_get', rte_mbuf_sched_get]
alias rte_ip_frag_rte_mbuf_sched_queue_set = ExternalFunction['rte_mbuf_sched_queue_set', rte_mbuf_sched_queue_set]
alias rte_ip_frag_rte_mbuf_sched_traffic_class_set = ExternalFunction['rte_mbuf_sched_traffic_class_set', rte_mbuf_sched_traffic_class_set]
alias rte_ip_frag_rte_mbuf_sched_color_set = ExternalFunction['rte_mbuf_sched_color_set', rte_mbuf_sched_color_set]
alias rte_ip_frag_rte_mbuf_sched_set = ExternalFunction['rte_mbuf_sched_set', rte_mbuf_sched_set]
alias rte_ip_frag_rte_raw_cksum = ExternalFunction['rte_raw_cksum', rte_raw_cksum]
alias rte_ip_frag_rte_raw_cksum_mbuf = ExternalFunction['rte_raw_cksum_mbuf', rte_raw_cksum_mbuf]
alias rte_ip_frag_rte_ipv4_hdr_len = ExternalFunction['rte_ipv4_hdr_len', rte_ipv4_hdr_len]
alias rte_ip_frag_rte_ipv4_cksum = ExternalFunction['rte_ipv4_cksum', rte_ipv4_cksum]
alias rte_ip_frag_rte_ipv4_cksum_simple = ExternalFunction['rte_ipv4_cksum_simple', rte_ipv4_cksum_simple]
alias rte_ip_frag_rte_ipv4_phdr_cksum = ExternalFunction['rte_ipv4_phdr_cksum', rte_ipv4_phdr_cksum]
alias rte_ip_frag_rte_ipv4_udptcp_cksum = ExternalFunction['rte_ipv4_udptcp_cksum', rte_ipv4_udptcp_cksum]
alias rte_ip_frag_rte_ipv4_udptcp_cksum_mbuf = ExternalFunction['rte_ipv4_udptcp_cksum_mbuf', rte_ipv4_udptcp_cksum_mbuf]
alias rte_ip_frag_rte_ipv4_udptcp_cksum_verify = ExternalFunction['rte_ipv4_udptcp_cksum_verify', rte_ipv4_udptcp_cksum_verify]
alias rte_ip_frag_rte_ipv4_udptcp_cksum_mbuf_verify = ExternalFunction['rte_ipv4_udptcp_cksum_mbuf_verify', rte_ipv4_udptcp_cksum_mbuf_verify]
alias rte_ip_frag_rte_srand = ExternalFunction['rte_srand', rte_srand]
alias rte_ip_frag_rte_rand = ExternalFunction['rte_rand', rte_rand]
alias rte_ip_frag_rte_rand_max = ExternalFunction['rte_rand_max', rte_rand_max]
alias rte_ip_frag_rte_drand = ExternalFunction['rte_drand', rte_drand]
alias rte_ip_frag_rte_is_same_ether_addr = ExternalFunction['rte_is_same_ether_addr', rte_is_same_ether_addr]
alias rte_ip_frag_rte_is_zero_ether_addr = ExternalFunction['rte_is_zero_ether_addr', rte_is_zero_ether_addr]
alias rte_ip_frag_rte_is_unicast_ether_addr = ExternalFunction['rte_is_unicast_ether_addr', rte_is_unicast_ether_addr]
alias rte_ip_frag_rte_is_multicast_ether_addr = ExternalFunction['rte_is_multicast_ether_addr', rte_is_multicast_ether_addr]
alias rte_ip_frag_rte_is_broadcast_ether_addr = ExternalFunction['rte_is_broadcast_ether_addr', rte_is_broadcast_ether_addr]
alias rte_ip_frag_rte_is_universal_ether_addr = ExternalFunction['rte_is_universal_ether_addr', rte_is_universal_ether_addr]
alias rte_ip_frag_rte_is_local_admin_ether_addr = ExternalFunction['rte_is_local_admin_ether_addr', rte_is_local_admin_ether_addr]
alias rte_ip_frag_rte_is_valid_assigned_ether_addr = ExternalFunction['rte_is_valid_assigned_ether_addr', rte_is_valid_assigned_ether_addr]
alias rte_ip_frag_rte_eth_random_addr = ExternalFunction['rte_eth_random_addr', rte_eth_random_addr]
alias rte_ip_frag_rte_ether_addr_copy = ExternalFunction['rte_ether_addr_copy', rte_ether_addr_copy]
alias rte_ip_frag_rte_ether_format_addr = ExternalFunction['rte_ether_format_addr', rte_ether_format_addr]
alias rte_ip_frag_rte_ether_unformat_addr = ExternalFunction['rte_ether_unformat_addr', rte_ether_unformat_addr]
alias rte_ip_frag_rte_vlan_strip = ExternalFunction['rte_vlan_strip', rte_vlan_strip]
alias rte_ip_frag_rte_vlan_insert = ExternalFunction['rte_vlan_insert', rte_vlan_insert]
alias rte_ip_frag_rte_ipv6_addr_eq = ExternalFunction['rte_ipv6_addr_eq', rte_ipv6_addr_eq]
alias rte_ip_frag_rte_ipv6_addr_mask = ExternalFunction['rte_ipv6_addr_mask', rte_ipv6_addr_mask]
alias rte_ip_frag_rte_ipv6_addr_eq_prefix = ExternalFunction['rte_ipv6_addr_eq_prefix', rte_ipv6_addr_eq_prefix]
alias rte_ip_frag_rte_ipv6_mask_depth = ExternalFunction['rte_ipv6_mask_depth', rte_ipv6_mask_depth]
alias rte_ip_frag_rte_ipv6_addr_is_unspec = ExternalFunction['rte_ipv6_addr_is_unspec', rte_ipv6_addr_is_unspec]
alias rte_ip_frag_rte_ipv6_addr_is_loopback = ExternalFunction['rte_ipv6_addr_is_loopback', rte_ipv6_addr_is_loopback]
alias rte_ip_frag_rte_ipv6_addr_is_linklocal = ExternalFunction['rte_ipv6_addr_is_linklocal', rte_ipv6_addr_is_linklocal]
alias rte_ip_frag_rte_ipv6_addr_is_sitelocal = ExternalFunction['rte_ipv6_addr_is_sitelocal', rte_ipv6_addr_is_sitelocal]
alias rte_ip_frag_rte_ipv6_addr_is_v4compat = ExternalFunction['rte_ipv6_addr_is_v4compat', rte_ipv6_addr_is_v4compat]
alias rte_ip_frag_rte_ipv6_addr_is_v4mapped = ExternalFunction['rte_ipv6_addr_is_v4mapped', rte_ipv6_addr_is_v4mapped]
alias rte_ip_frag_rte_ipv6_addr_is_mcast = ExternalFunction['rte_ipv6_addr_is_mcast', rte_ipv6_addr_is_mcast]
alias rte_ip_frag_rte_ipv6_llocal_from_ethernet = ExternalFunction['rte_ipv6_llocal_from_ethernet', rte_ipv6_llocal_from_ethernet]
alias rte_ip_frag_rte_ipv6_solnode_from_addr = ExternalFunction['rte_ipv6_solnode_from_addr', rte_ipv6_solnode_from_addr]
alias rte_ip_frag_rte_ether_mcast_from_ipv6 = ExternalFunction['rte_ether_mcast_from_ipv6', rte_ether_mcast_from_ipv6]
alias rte_ip_frag_rte_ipv6_check_version = ExternalFunction['rte_ipv6_check_version', rte_ipv6_check_version]
alias rte_ip_frag_rte_ipv6_phdr_cksum = ExternalFunction['rte_ipv6_phdr_cksum', rte_ipv6_phdr_cksum]
alias rte_ip_frag_rte_ipv6_udptcp_cksum = ExternalFunction['rte_ipv6_udptcp_cksum', rte_ipv6_udptcp_cksum]
alias rte_ip_frag_rte_ipv6_udptcp_cksum_mbuf = ExternalFunction['rte_ipv6_udptcp_cksum_mbuf', rte_ipv6_udptcp_cksum_mbuf]
alias rte_ip_frag_rte_ipv6_udptcp_cksum_verify = ExternalFunction['rte_ipv6_udptcp_cksum_verify', rte_ipv6_udptcp_cksum_verify]
alias rte_ip_frag_rte_ipv6_udptcp_cksum_mbuf_verify = ExternalFunction['rte_ipv6_udptcp_cksum_mbuf_verify', rte_ipv6_udptcp_cksum_mbuf_verify]
alias rte_ip_frag_rte_ipv6_get_next_ext = ExternalFunction['rte_ipv6_get_next_ext', rte_ipv6_get_next_ext]
alias rte_ip_frag_rte_ip_frag_table_create = ExternalFunction['rte_ip_frag_table_create', rte_ip_frag_table_create]
alias rte_ip_frag_rte_ip_frag_table_destroy = ExternalFunction['rte_ip_frag_table_destroy', rte_ip_frag_table_destroy]
alias rte_ip_frag_rte_ipv6_fragment_packet = ExternalFunction['rte_ipv6_fragment_packet', rte_ipv6_fragment_packet]
alias rte_ip_frag_rte_ipv6_frag_reassemble_packet = ExternalFunction['rte_ipv6_frag_reassemble_packet', rte_ipv6_frag_reassemble_packet]
alias rte_ip_frag_rte_ipv6_frag_get_ipv6_fragment_header = ExternalFunction['rte_ipv6_frag_get_ipv6_fragment_header', rte_ipv6_frag_get_ipv6_fragment_header]
alias rte_ip_frag_rte_ipv4_fragment_packet = ExternalFunction['rte_ipv4_fragment_packet', rte_ipv4_fragment_packet]
alias rte_ip_frag_rte_ipv4_fragment_copy_nonseg_packet = ExternalFunction['rte_ipv4_fragment_copy_nonseg_packet', rte_ipv4_fragment_copy_nonseg_packet]
alias rte_ip_frag_rte_ipv4_frag_reassemble_packet = ExternalFunction['rte_ipv4_frag_reassemble_packet', rte_ipv4_frag_reassemble_packet]
alias rte_ip_frag_rte_ipv4_frag_pkt_is_fragmented = ExternalFunction['rte_ipv4_frag_pkt_is_fragmented', rte_ipv4_frag_pkt_is_fragmented]
alias rte_ip_frag_rte_ip_frag_free_death_row = ExternalFunction['rte_ip_frag_free_death_row', rte_ip_frag_free_death_row]
alias rte_ip_frag_rte_ip_frag_table_statistics_dump = ExternalFunction['rte_ip_frag_table_statistics_dump', rte_ip_frag_table_statistics_dump]
alias rte_ip_frag_rte_ip_frag_table_del_expired_entries = ExternalFunction['rte_ip_frag_table_del_expired_entries', rte_ip_frag_table_del_expired_entries]

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
struct rte_ip_frag(Copyable, Movable):
    var lib: DLHandle
    
    var remove: rte_ip_frag_remove.type
    var rename: rte_ip_frag_rename.type
    var renameat: rte_ip_frag_renameat.type
    var fclose: rte_ip_frag_fclose.type
    var tmpfile: rte_ip_frag_tmpfile.type
    var tmpnam: rte_ip_frag_tmpnam.type
    var tmpnam_r: rte_ip_frag_tmpnam_r.type
    var tempnam: rte_ip_frag_tempnam.type
    var fflush: rte_ip_frag_fflush.type
    var fflush_unlocked: rte_ip_frag_fflush_unlocked.type
    var fopen: rte_ip_frag_fopen.type
    var freopen: rte_ip_frag_freopen.type
    var fdopen: rte_ip_frag_fdopen.type
    var fmemopen: rte_ip_frag_fmemopen.type
    var open_memstream: rte_ip_frag_open_memstream.type
    var setbuf: rte_ip_frag_setbuf.type
    var setvbuf: rte_ip_frag_setvbuf.type
    var setbuffer: rte_ip_frag_setbuffer.type
    var setlinebuf: rte_ip_frag_setlinebuf.type
    var fprintf: rte_ip_frag_fprintf.type
    var printf: rte_ip_frag_printf.type
    var sprintf: rte_ip_frag_sprintf.type
    var vfprintf: rte_ip_frag_vfprintf.type
    var vprintf: rte_ip_frag_vprintf.type
    var vsprintf: rte_ip_frag_vsprintf.type
    var snprintf: rte_ip_frag_snprintf.type
    var vsnprintf: rte_ip_frag_vsnprintf.type
    var vdprintf: rte_ip_frag_vdprintf.type
    var dprintf: rte_ip_frag_dprintf.type
    var fscanf: rte_ip_frag_fscanf.type
    var scanf: rte_ip_frag_scanf.type
    var sscanf: rte_ip_frag_sscanf.type
    var vfscanf: rte_ip_frag_vfscanf.type
    var vscanf: rte_ip_frag_vscanf.type
    var vsscanf: rte_ip_frag_vsscanf.type
    var fgetc: rte_ip_frag_fgetc.type
    var getc: rte_ip_frag_getc.type
    var getchar: rte_ip_frag_getchar.type
    var getc_unlocked: rte_ip_frag_getc_unlocked.type
    var getchar_unlocked: rte_ip_frag_getchar_unlocked.type
    var fgetc_unlocked: rte_ip_frag_fgetc_unlocked.type
    var fputc: rte_ip_frag_fputc.type
    var putc: rte_ip_frag_putc.type
    var putchar: rte_ip_frag_putchar.type
    var fputc_unlocked: rte_ip_frag_fputc_unlocked.type
    var putc_unlocked: rte_ip_frag_putc_unlocked.type
    var putchar_unlocked: rte_ip_frag_putchar_unlocked.type
    var getw: rte_ip_frag_getw.type
    var putw: rte_ip_frag_putw.type
    var fgets: rte_ip_frag_fgets.type
    var getdelim: rte_ip_frag_getdelim.type
    var getline: rte_ip_frag_getline.type
    var fputs: rte_ip_frag_fputs.type
    var puts: rte_ip_frag_puts.type
    var ungetc: rte_ip_frag_ungetc.type
    var fread: rte_ip_frag_fread.type
    var fwrite: rte_ip_frag_fwrite.type
    var fread_unlocked: rte_ip_frag_fread_unlocked.type
    var fwrite_unlocked: rte_ip_frag_fwrite_unlocked.type
    var fseek: rte_ip_frag_fseek.type
    var ftell: rte_ip_frag_ftell.type
    var rewind: rte_ip_frag_rewind.type
    var fseeko: rte_ip_frag_fseeko.type
    var ftello: rte_ip_frag_ftello.type
    var fgetpos: rte_ip_frag_fgetpos.type
    var fsetpos: rte_ip_frag_fsetpos.type
    var clearerr: rte_ip_frag_clearerr.type
    var feof: rte_ip_frag_feof.type
    var ferror: rte_ip_frag_ferror.type
    var clearerr_unlocked: rte_ip_frag_clearerr_unlocked.type
    var feof_unlocked: rte_ip_frag_feof_unlocked.type
    var ferror_unlocked: rte_ip_frag_ferror_unlocked.type
    var perror: rte_ip_frag_perror.type
    var fileno: rte_ip_frag_fileno.type
    var fileno_unlocked: rte_ip_frag_fileno_unlocked.type
    var pclose: rte_ip_frag_pclose.type
    var popen: rte_ip_frag_popen.type
    var ctermid: rte_ip_frag_ctermid.type
    var flockfile: rte_ip_frag_flockfile.type
    var ftrylockfile: rte_ip_frag_ftrylockfile.type
    var funlockfile: rte_ip_frag_funlockfile.type
    var alloca: rte_ip_frag_alloca.type
    var sched_setparam: rte_ip_frag_sched_setparam.type
    var sched_getparam: rte_ip_frag_sched_getparam.type
    var sched_setscheduler: rte_ip_frag_sched_setscheduler.type
    var sched_getscheduler: rte_ip_frag_sched_getscheduler.type
    var sched_yield: rte_ip_frag_sched_yield.type
    var sched_get_priority_max: rte_ip_frag_sched_get_priority_max.type
    var sched_get_priority_min: rte_ip_frag_sched_get_priority_min.type
    var sched_rr_get_interval: rte_ip_frag_sched_rr_get_interval.type
    var rte_is_aligned: rte_ip_frag_rte_is_aligned.type
    var rte_str_to_size: rte_ip_frag_rte_str_to_size.type
    var rte_size_to_str: rte_ip_frag_rte_size_to_str.type
    var rte_exit: rte_ip_frag_rte_exit.type
    var rte_openlog_stream: rte_ip_frag_rte_openlog_stream.type
    var rte_log_get_stream: rte_ip_frag_rte_log_get_stream.type
    var rte_log_set_global_level: rte_ip_frag_rte_log_set_global_level.type
    var rte_log_get_global_level: rte_ip_frag_rte_log_get_global_level.type
    var rte_log_get_level: rte_ip_frag_rte_log_get_level.type
    var rte_log_can_log: rte_ip_frag_rte_log_can_log.type
    var rte_log_set_level_pattern: rte_ip_frag_rte_log_set_level_pattern.type
    var rte_log_set_level_regexp: rte_ip_frag_rte_log_set_level_regexp.type
    var rte_log_set_level: rte_ip_frag_rte_log_set_level.type
    var rte_log_cur_msg_loglevel: rte_ip_frag_rte_log_cur_msg_loglevel.type
    var rte_log_cur_msg_logtype: rte_ip_frag_rte_log_cur_msg_logtype.type
    var rte_log_register: rte_ip_frag_rte_log_register.type
    var rte_log_register_type_and_pick_level: rte_ip_frag_rte_log_register_type_and_pick_level.type
    var rte_log_list_types: rte_ip_frag_rte_log_list_types.type
    var rte_log_dump: rte_ip_frag_rte_log_dump.type
    var rte_log: rte_ip_frag_rte_log.type
    var rte_vlog: rte_ip_frag_rte_vlog.type
    var rte_dump_stack: rte_ip_frag_rte_dump_stack.type
    var rte_bit_relaxed_get32: rte_ip_frag_rte_bit_relaxed_get32.type
    var rte_bit_relaxed_set32: rte_ip_frag_rte_bit_relaxed_set32.type
    var rte_bit_relaxed_clear32: rte_ip_frag_rte_bit_relaxed_clear32.type
    var rte_bit_relaxed_test_and_set32: rte_ip_frag_rte_bit_relaxed_test_and_set32.type
    var rte_bit_relaxed_test_and_clear32: rte_ip_frag_rte_bit_relaxed_test_and_clear32.type
    var rte_bit_relaxed_get64: rte_ip_frag_rte_bit_relaxed_get64.type
    var rte_bit_relaxed_set64: rte_ip_frag_rte_bit_relaxed_set64.type
    var rte_bit_relaxed_clear64: rte_ip_frag_rte_bit_relaxed_clear64.type
    var rte_bit_relaxed_test_and_set64: rte_ip_frag_rte_bit_relaxed_test_and_set64.type
    var rte_bit_relaxed_test_and_clear64: rte_ip_frag_rte_bit_relaxed_test_and_clear64.type
    var rte_clz32: rte_ip_frag_rte_clz32.type
    var rte_clz64: rte_ip_frag_rte_clz64.type
    var rte_ctz32: rte_ip_frag_rte_ctz32.type
    var rte_ctz64: rte_ip_frag_rte_ctz64.type
    var rte_popcount32: rte_ip_frag_rte_popcount32.type
    var rte_popcount64: rte_ip_frag_rte_popcount64.type
    var rte_ffs32: rte_ip_frag_rte_ffs32.type
    var rte_ffs64: rte_ip_frag_rte_ffs64.type
    var rte_combine32ms1b: rte_ip_frag_rte_combine32ms1b.type
    var rte_combine64ms1b: rte_ip_frag_rte_combine64ms1b.type
    var rte_bsf32: rte_ip_frag_rte_bsf32.type
    var rte_bsf32_safe: rte_ip_frag_rte_bsf32_safe.type
    var rte_bsf64: rte_ip_frag_rte_bsf64.type
    var rte_bsf64_safe: rte_ip_frag_rte_bsf64_safe.type
    var rte_fls_u32: rte_ip_frag_rte_fls_u32.type
    var rte_fls_u64: rte_ip_frag_rte_fls_u64.type
    var rte_is_power_of_2: rte_ip_frag_rte_is_power_of_2.type
    var rte_align32pow2: rte_ip_frag_rte_align32pow2.type
    var rte_align32prevpow2: rte_ip_frag_rte_align32prevpow2.type
    var rte_align64pow2: rte_ip_frag_rte_align64pow2.type
    var rte_align64prevpow2: rte_ip_frag_rte_align64prevpow2.type
    var rte_log2_u32: rte_ip_frag_rte_log2_u32.type
    var rte_log2_u64: rte_ip_frag_rte_log2_u64.type
    var rte_atomic_thread_fence: rte_ip_frag_rte_atomic_thread_fence.type
    var rte_atomic16_cmpset: rte_ip_frag_rte_atomic16_cmpset.type
    var rte_atomic16_exchange: rte_ip_frag_rte_atomic16_exchange.type
    var rte_atomic16_init: rte_ip_frag_rte_atomic16_init.type
    var rte_atomic16_read: rte_ip_frag_rte_atomic16_read.type
    var rte_atomic16_set: rte_ip_frag_rte_atomic16_set.type
    var rte_atomic16_add: rte_ip_frag_rte_atomic16_add.type
    var rte_atomic16_sub: rte_ip_frag_rte_atomic16_sub.type
    var rte_atomic16_inc: rte_ip_frag_rte_atomic16_inc.type
    var rte_atomic16_dec: rte_ip_frag_rte_atomic16_dec.type
    var rte_atomic16_add_return: rte_ip_frag_rte_atomic16_add_return.type
    var rte_atomic16_sub_return: rte_ip_frag_rte_atomic16_sub_return.type
    var rte_atomic16_inc_and_test: rte_ip_frag_rte_atomic16_inc_and_test.type
    var rte_atomic16_dec_and_test: rte_ip_frag_rte_atomic16_dec_and_test.type
    var rte_atomic16_test_and_set: rte_ip_frag_rte_atomic16_test_and_set.type
    var rte_atomic16_clear: rte_ip_frag_rte_atomic16_clear.type
    var rte_atomic32_cmpset: rte_ip_frag_rte_atomic32_cmpset.type
    var rte_atomic32_exchange: rte_ip_frag_rte_atomic32_exchange.type
    var rte_atomic32_init: rte_ip_frag_rte_atomic32_init.type
    var rte_atomic32_read: rte_ip_frag_rte_atomic32_read.type
    var rte_atomic32_set: rte_ip_frag_rte_atomic32_set.type
    var rte_atomic32_add: rte_ip_frag_rte_atomic32_add.type
    var rte_atomic32_sub: rte_ip_frag_rte_atomic32_sub.type
    var rte_atomic32_inc: rte_ip_frag_rte_atomic32_inc.type
    var rte_atomic32_dec: rte_ip_frag_rte_atomic32_dec.type
    var rte_atomic32_add_return: rte_ip_frag_rte_atomic32_add_return.type
    var rte_atomic32_sub_return: rte_ip_frag_rte_atomic32_sub_return.type
    var rte_atomic32_inc_and_test: rte_ip_frag_rte_atomic32_inc_and_test.type
    var rte_atomic32_dec_and_test: rte_ip_frag_rte_atomic32_dec_and_test.type
    var rte_atomic32_test_and_set: rte_ip_frag_rte_atomic32_test_and_set.type
    var rte_atomic32_clear: rte_ip_frag_rte_atomic32_clear.type
    var rte_atomic64_cmpset: rte_ip_frag_rte_atomic64_cmpset.type
    var rte_atomic64_exchange: rte_ip_frag_rte_atomic64_exchange.type
    var rte_atomic64_init: rte_ip_frag_rte_atomic64_init.type
    var rte_atomic64_read: rte_ip_frag_rte_atomic64_read.type
    var rte_atomic64_set: rte_ip_frag_rte_atomic64_set.type
    var rte_atomic64_add: rte_ip_frag_rte_atomic64_add.type
    var rte_atomic64_sub: rte_ip_frag_rte_atomic64_sub.type
    var rte_atomic64_inc: rte_ip_frag_rte_atomic64_inc.type
    var rte_atomic64_dec: rte_ip_frag_rte_atomic64_dec.type
    var rte_atomic64_add_return: rte_ip_frag_rte_atomic64_add_return.type
    var rte_atomic64_sub_return: rte_ip_frag_rte_atomic64_sub_return.type
    var rte_atomic64_inc_and_test: rte_ip_frag_rte_atomic64_inc_and_test.type
    var rte_atomic64_dec_and_test: rte_ip_frag_rte_atomic64_dec_and_test.type
    var rte_atomic64_test_and_set: rte_ip_frag_rte_atomic64_test_and_set.type
    var rte_atomic64_clear: rte_ip_frag_rte_atomic64_clear.type
    var rte_atomic128_cmp_exchange: rte_ip_frag_rte_atomic128_cmp_exchange.type
    var rte_pause: rte_ip_frag_rte_pause.type
    var rte_wait_until_equal_16: rte_ip_frag_rte_wait_until_equal_16.type
    var rte_wait_until_equal_32: rte_ip_frag_rte_wait_until_equal_32.type
    var rte_wait_until_equal_64: rte_ip_frag_rte_wait_until_equal_64.type
    var rte_rwlock_init: rte_ip_frag_rte_rwlock_init.type
    var rte_rwlock_read_lock: rte_ip_frag_rte_rwlock_read_lock.type
    var rte_rwlock_read_trylock: rte_ip_frag_rte_rwlock_read_trylock.type
    var rte_rwlock_read_unlock: rte_ip_frag_rte_rwlock_read_unlock.type
    var rte_rwlock_write_trylock: rte_ip_frag_rte_rwlock_write_trylock.type
    var rte_rwlock_write_lock: rte_ip_frag_rte_rwlock_write_lock.type
    var rte_rwlock_write_unlock: rte_ip_frag_rte_rwlock_write_unlock.type
    var rte_rwlock_write_is_locked: rte_ip_frag_rte_rwlock_write_is_locked.type
    var rte_rwlock_read_lock_tm: rte_ip_frag_rte_rwlock_read_lock_tm.type
    var rte_rwlock_read_unlock_tm: rte_ip_frag_rte_rwlock_read_unlock_tm.type
    var rte_rwlock_write_lock_tm: rte_ip_frag_rte_rwlock_write_lock_tm.type
    var rte_rwlock_write_unlock_tm: rte_ip_frag_rte_rwlock_write_unlock_tm.type
    var clock: rte_ip_frag_clock.type
    var time: rte_ip_frag_time.type
    var difftime: rte_ip_frag_difftime.type
    var mktime: rte_ip_frag_mktime.type
    var strftime: rte_ip_frag_strftime.type
    var strftime_l: rte_ip_frag_strftime_l.type
    var gmtime: rte_ip_frag_gmtime.type
    var localtime: rte_ip_frag_localtime.type
    var gmtime_r: rte_ip_frag_gmtime_r.type
    var localtime_r: rte_ip_frag_localtime_r.type
    var asctime: rte_ip_frag_asctime.type
    var ctime: rte_ip_frag_ctime.type
    var asctime_r: rte_ip_frag_asctime_r.type
    var ctime_r: rte_ip_frag_ctime_r.type
    var tzset: rte_ip_frag_tzset.type
    var timegm: rte_ip_frag_timegm.type
    var timelocal: rte_ip_frag_timelocal.type
    var dysize: rte_ip_frag_dysize.type
    var nanosleep: rte_ip_frag_nanosleep.type
    var clock_getres: rte_ip_frag_clock_getres.type
    var clock_gettime: rte_ip_frag_clock_gettime.type
    var clock_settime: rte_ip_frag_clock_settime.type
    var clock_nanosleep: rte_ip_frag_clock_nanosleep.type
    var clock_getcpuclockid: rte_ip_frag_clock_getcpuclockid.type
    var timer_create: rte_ip_frag_timer_create.type
    var timer_delete: rte_ip_frag_timer_delete.type
    var timer_settime: rte_ip_frag_timer_settime.type
    var timer_gettime: rte_ip_frag_timer_gettime.type
    var timer_getoverrun: rte_ip_frag_timer_getoverrun.type
    var timespec_get: rte_ip_frag_timespec_get.type
    var memcpy: rte_ip_frag_memcpy.type
    var memmove: rte_ip_frag_memmove.type
    var memccpy: rte_ip_frag_memccpy.type
    var memset: rte_ip_frag_memset.type
    var memcmp: rte_ip_frag_memcmp.type
    var memchr: rte_ip_frag_memchr.type
    var strcpy: rte_ip_frag_strcpy.type
    var strncpy: rte_ip_frag_strncpy.type
    var strcat: rte_ip_frag_strcat.type
    var strncat: rte_ip_frag_strncat.type
    var strcmp: rte_ip_frag_strcmp.type
    var strncmp: rte_ip_frag_strncmp.type
    var strcoll: rte_ip_frag_strcoll.type
    var strxfrm: rte_ip_frag_strxfrm.type
    var strcoll_l: rte_ip_frag_strcoll_l.type
    var strxfrm_l: rte_ip_frag_strxfrm_l.type
    var strdup: rte_ip_frag_strdup.type
    var strndup: rte_ip_frag_strndup.type
    var strchr: rte_ip_frag_strchr.type
    var strrchr: rte_ip_frag_strrchr.type
    var strcspn: rte_ip_frag_strcspn.type
    var strspn: rte_ip_frag_strspn.type
    var strpbrk: rte_ip_frag_strpbrk.type
    var strstr: rte_ip_frag_strstr.type
    var strtok: rte_ip_frag_strtok.type
    var strtok_r: rte_ip_frag_strtok_r.type
    var strlen: rte_ip_frag_strlen.type
    var strnlen: rte_ip_frag_strnlen.type
    var strerror: rte_ip_frag_strerror.type
    var strerror_r: rte_ip_frag_strerror_r.type
    var strerror_l: rte_ip_frag_strerror_l.type
    var bcmp: rte_ip_frag_bcmp.type
    var bcopy: rte_ip_frag_bcopy.type
    var bzero: rte_ip_frag_bzero.type
    var index: rte_ip_frag_index.type
    var rindex: rte_ip_frag_rindex.type
    var ffs: rte_ip_frag_ffs.type
    var ffsl: rte_ip_frag_ffsl.type
    var ffsll: rte_ip_frag_ffsll.type
    var strcasecmp: rte_ip_frag_strcasecmp.type
    var strncasecmp: rte_ip_frag_strncasecmp.type
    var strcasecmp_l: rte_ip_frag_strcasecmp_l.type
    var strncasecmp_l: rte_ip_frag_strncasecmp_l.type
    var explicit_bzero: rte_ip_frag_explicit_bzero.type
    var strsep: rte_ip_frag_strsep.type
    var strsignal: rte_ip_frag_strsignal.type
    var stpcpy: rte_ip_frag_stpcpy.type
    var stpncpy: rte_ip_frag_stpncpy.type
    var rte_uuid_is_null: rte_ip_frag_rte_uuid_is_null.type
    var rte_uuid_copy: rte_ip_frag_rte_uuid_copy.type
    var rte_uuid_compare: rte_ip_frag_rte_uuid_compare.type
    var rte_uuid_parse: rte_ip_frag_rte_uuid_parse.type
    var rte_uuid_unparse: rte_ip_frag_rte_uuid_unparse.type
    var rte_eal_process_type: rte_ip_frag_rte_eal_process_type.type
    var rte_eal_iopl_init: rte_ip_frag_rte_eal_iopl_init.type
    var rte_eal_init: rte_ip_frag_rte_eal_init.type
    var rte_eal_cleanup: rte_ip_frag_rte_eal_cleanup.type
    var rte_eal_primary_proc_alive: rte_ip_frag_rte_eal_primary_proc_alive.type
    var rte_mp_disable: rte_ip_frag_rte_mp_disable.type
    var rte_mp_action_register: rte_ip_frag_rte_mp_action_register.type
    var rte_mp_action_unregister: rte_ip_frag_rte_mp_action_unregister.type
    var rte_mp_sendmsg: rte_ip_frag_rte_mp_sendmsg.type
    var rte_mp_request_sync: rte_ip_frag_rte_mp_request_sync.type
    var rte_mp_request_async: rte_ip_frag_rte_mp_request_async.type
    var rte_set_application_usage_hook: rte_ip_frag_rte_set_application_usage_hook.type
    var rte_eal_has_hugepages: rte_ip_frag_rte_eal_has_hugepages.type
    var rte_eal_has_pci: rte_ip_frag_rte_eal_has_pci.type
    var rte_eal_create_uio_dev: rte_ip_frag_rte_eal_create_uio_dev.type
    var rte_eal_vfio_intr_mode: rte_ip_frag_rte_eal_vfio_intr_mode.type
    var rte_eal_vfio_get_vf_token: rte_ip_frag_rte_eal_vfio_get_vf_token.type
    var rte_sys_gettid: rte_ip_frag_rte_sys_gettid.type
    var rte_gettid: rte_ip_frag_rte_gettid.type
    var rte_eal_get_baseaddr: rte_ip_frag_rte_eal_get_baseaddr.type
    var rte_eal_iova_mode: rte_ip_frag_rte_eal_iova_mode.type
    var rte_eal_mbuf_user_pool_ops: rte_ip_frag_rte_eal_mbuf_user_pool_ops.type
    var rte_eal_get_runtime_dir: rte_ip_frag_rte_eal_get_runtime_dir.type
    var rte_eal_parse_coremask: rte_ip_frag_rte_eal_parse_coremask.type
    var rte_eal_remote_launch: rte_ip_frag_rte_eal_remote_launch.type
    var rte_eal_mp_remote_launch: rte_ip_frag_rte_eal_mp_remote_launch.type
    var rte_eal_get_lcore_state: rte_ip_frag_rte_eal_get_lcore_state.type
    var rte_eal_wait_lcore: rte_ip_frag_rte_eal_wait_lcore.type
    var rte_eal_mp_wait_lcore: rte_ip_frag_rte_eal_mp_wait_lcore.type
    var rte_thread_create: rte_ip_frag_rte_thread_create.type
    var rte_thread_create_control: rte_ip_frag_rte_thread_create_control.type
    var rte_thread_create_internal_control: rte_ip_frag_rte_thread_create_internal_control.type
    var rte_thread_join: rte_ip_frag_rte_thread_join.type
    var rte_thread_detach: rte_ip_frag_rte_thread_detach.type
    var rte_thread_self: rte_ip_frag_rte_thread_self.type
    var rte_thread_set_name: rte_ip_frag_rte_thread_set_name.type
    var rte_thread_set_prefixed_name: rte_ip_frag_rte_thread_set_prefixed_name.type
    var rte_thread_equal: rte_ip_frag_rte_thread_equal.type
    var rte_thread_attr_init: rte_ip_frag_rte_thread_attr_init.type
    var rte_thread_attr_set_priority: rte_ip_frag_rte_thread_attr_set_priority.type
    var rte_thread_get_priority: rte_ip_frag_rte_thread_get_priority.type
    var rte_thread_set_priority: rte_ip_frag_rte_thread_set_priority.type
    var rte_thread_key_create: rte_ip_frag_rte_thread_key_create.type
    var rte_thread_key_delete: rte_ip_frag_rte_thread_key_delete.type
    var rte_thread_value_set: rte_ip_frag_rte_thread_value_set.type
    var rte_thread_value_get: rte_ip_frag_rte_thread_value_get.type
    var rte_eal_lcore_role: rte_ip_frag_rte_eal_lcore_role.type
    var rte_lcore_has_role: rte_ip_frag_rte_lcore_has_role.type
    var rte_lcore_id: rte_ip_frag_rte_lcore_id.type
    var rte_get_main_lcore: rte_ip_frag_rte_get_main_lcore.type
    var rte_lcore_count: rte_ip_frag_rte_lcore_count.type
    var rte_lcore_index: rte_ip_frag_rte_lcore_index.type
    var rte_socket_id: rte_ip_frag_rte_socket_id.type
    var rte_socket_count: rte_ip_frag_rte_socket_count.type
    var rte_socket_id_by_idx: rte_ip_frag_rte_socket_id_by_idx.type
    var rte_lcore_to_socket_id: rte_ip_frag_rte_lcore_to_socket_id.type
    var rte_lcore_to_cpu_id: rte_ip_frag_rte_lcore_to_cpu_id.type
    var rte_lcore_is_enabled: rte_ip_frag_rte_lcore_is_enabled.type
    var rte_get_next_lcore: rte_ip_frag_rte_get_next_lcore.type
    var rte_lcore_callback_register: rte_ip_frag_rte_lcore_callback_register.type
    var rte_lcore_callback_unregister: rte_ip_frag_rte_lcore_callback_unregister.type
    var rte_lcore_iterate: rte_ip_frag_rte_lcore_iterate.type
    var rte_lcore_register_usage_cb: rte_ip_frag_rte_lcore_register_usage_cb.type
    var rte_lcore_dump: rte_ip_frag_rte_lcore_dump.type
    var rte_thread_register: rte_ip_frag_rte_thread_register.type
    var rte_thread_unregister: rte_ip_frag_rte_thread_unregister.type
    var rte_spinlock_init: rte_ip_frag_rte_spinlock_init.type
    var rte_spinlock_lock: rte_ip_frag_rte_spinlock_lock.type
    var rte_spinlock_unlock: rte_ip_frag_rte_spinlock_unlock.type
    var rte_spinlock_trylock: rte_ip_frag_rte_spinlock_trylock.type
    var rte_spinlock_is_locked: rte_ip_frag_rte_spinlock_is_locked.type
    var rte_tm_supported: rte_ip_frag_rte_tm_supported.type
    var rte_spinlock_lock_tm: rte_ip_frag_rte_spinlock_lock_tm.type
    var rte_spinlock_unlock_tm: rte_ip_frag_rte_spinlock_unlock_tm.type
    var rte_spinlock_trylock_tm: rte_ip_frag_rte_spinlock_trylock_tm.type
    var rte_spinlock_recursive_init: rte_ip_frag_rte_spinlock_recursive_init.type
    var rte_spinlock_recursive_lock: rte_ip_frag_rte_spinlock_recursive_lock.type
    var rte_spinlock_recursive_unlock: rte_ip_frag_rte_spinlock_recursive_unlock.type
    var rte_spinlock_recursive_trylock: rte_ip_frag_rte_spinlock_recursive_trylock.type
    var rte_spinlock_recursive_lock_tm: rte_ip_frag_rte_spinlock_recursive_lock_tm.type
    var rte_spinlock_recursive_unlock_tm: rte_ip_frag_rte_spinlock_recursive_unlock_tm.type
    var rte_spinlock_recursive_trylock_tm: rte_ip_frag_rte_spinlock_recursive_trylock_tm.type
    var rte_mcfg_mem_get_lock: rte_ip_frag_rte_mcfg_mem_get_lock.type
    var rte_mcfg_tailq_get_lock: rte_ip_frag_rte_mcfg_tailq_get_lock.type
    var rte_mcfg_mempool_get_lock: rte_ip_frag_rte_mcfg_mempool_get_lock.type
    var rte_mcfg_timer_get_lock: rte_ip_frag_rte_mcfg_timer_get_lock.type
    var rte_mcfg_ethdev_get_lock: rte_ip_frag_rte_mcfg_ethdev_get_lock.type
    var rte_mcfg_mem_read_lock: rte_ip_frag_rte_mcfg_mem_read_lock.type
    var rte_mcfg_mem_read_unlock: rte_ip_frag_rte_mcfg_mem_read_unlock.type
    var rte_mcfg_mem_write_lock: rte_ip_frag_rte_mcfg_mem_write_lock.type
    var rte_mcfg_mem_write_unlock: rte_ip_frag_rte_mcfg_mem_write_unlock.type
    var rte_mcfg_tailq_read_lock: rte_ip_frag_rte_mcfg_tailq_read_lock.type
    var rte_mcfg_tailq_read_unlock: rte_ip_frag_rte_mcfg_tailq_read_unlock.type
    var rte_mcfg_tailq_write_lock: rte_ip_frag_rte_mcfg_tailq_write_lock.type
    var rte_mcfg_tailq_write_unlock: rte_ip_frag_rte_mcfg_tailq_write_unlock.type
    var rte_mcfg_mempool_read_lock: rte_ip_frag_rte_mcfg_mempool_read_lock.type
    var rte_mcfg_mempool_read_unlock: rte_ip_frag_rte_mcfg_mempool_read_unlock.type
    var rte_mcfg_mempool_write_lock: rte_ip_frag_rte_mcfg_mempool_write_lock.type
    var rte_mcfg_mempool_write_unlock: rte_ip_frag_rte_mcfg_mempool_write_unlock.type
    var rte_mcfg_timer_lock: rte_ip_frag_rte_mcfg_timer_lock.type
    var rte_mcfg_timer_unlock: rte_ip_frag_rte_mcfg_timer_unlock.type
    var rte_mcfg_get_single_file_segments: rte_ip_frag_rte_mcfg_get_single_file_segments.type
    var rte_fbarray_init: rte_ip_frag_rte_fbarray_init.type
    var rte_fbarray_attach: rte_ip_frag_rte_fbarray_attach.type
    var rte_fbarray_destroy: rte_ip_frag_rte_fbarray_destroy.type
    var rte_fbarray_detach: rte_ip_frag_rte_fbarray_detach.type
    var rte_fbarray_get: rte_ip_frag_rte_fbarray_get.type
    var rte_fbarray_find_idx: rte_ip_frag_rte_fbarray_find_idx.type
    var rte_fbarray_set_used: rte_ip_frag_rte_fbarray_set_used.type
    var rte_fbarray_set_free: rte_ip_frag_rte_fbarray_set_free.type
    var rte_fbarray_is_used: rte_ip_frag_rte_fbarray_is_used.type
    var rte_fbarray_find_next_free: rte_ip_frag_rte_fbarray_find_next_free.type
    var rte_fbarray_find_next_used: rte_ip_frag_rte_fbarray_find_next_used.type
    var rte_fbarray_find_next_n_free: rte_ip_frag_rte_fbarray_find_next_n_free.type
    var rte_fbarray_find_next_n_used: rte_ip_frag_rte_fbarray_find_next_n_used.type
    var rte_fbarray_find_contig_free: rte_ip_frag_rte_fbarray_find_contig_free.type
    var rte_fbarray_find_contig_used: rte_ip_frag_rte_fbarray_find_contig_used.type
    var rte_fbarray_find_prev_free: rte_ip_frag_rte_fbarray_find_prev_free.type
    var rte_fbarray_find_prev_used: rte_ip_frag_rte_fbarray_find_prev_used.type
    var rte_fbarray_find_prev_n_free: rte_ip_frag_rte_fbarray_find_prev_n_free.type
    var rte_fbarray_find_prev_n_used: rte_ip_frag_rte_fbarray_find_prev_n_used.type
    var rte_fbarray_find_rev_contig_free: rte_ip_frag_rte_fbarray_find_rev_contig_free.type
    var rte_fbarray_find_rev_contig_used: rte_ip_frag_rte_fbarray_find_rev_contig_used.type
    var rte_fbarray_find_biggest_free: rte_ip_frag_rte_fbarray_find_biggest_free.type
    var rte_fbarray_find_biggest_used: rte_ip_frag_rte_fbarray_find_biggest_used.type
    var rte_fbarray_find_rev_biggest_free: rte_ip_frag_rte_fbarray_find_rev_biggest_free.type
    var rte_fbarray_find_rev_biggest_used: rte_ip_frag_rte_fbarray_find_rev_biggest_used.type
    var rte_fbarray_dump_metadata: rte_ip_frag_rte_fbarray_dump_metadata.type
    var rte_mem_lock_page: rte_ip_frag_rte_mem_lock_page.type
    var rte_mem_virt2phy: rte_ip_frag_rte_mem_virt2phy.type
    var rte_mem_virt2iova: rte_ip_frag_rte_mem_virt2iova.type
    var rte_mem_iova2virt: rte_ip_frag_rte_mem_iova2virt.type
    var rte_mem_virt2memseg: rte_ip_frag_rte_mem_virt2memseg.type
    var rte_mem_virt2memseg_list: rte_ip_frag_rte_mem_virt2memseg_list.type
    var rte_memseg_walk: rte_ip_frag_rte_memseg_walk.type
    var rte_memseg_contig_walk: rte_ip_frag_rte_memseg_contig_walk.type
    var rte_memseg_list_walk: rte_ip_frag_rte_memseg_list_walk.type
    var rte_memseg_walk_thread_unsafe: rte_ip_frag_rte_memseg_walk_thread_unsafe.type
    var rte_memseg_contig_walk_thread_unsafe: rte_ip_frag_rte_memseg_contig_walk_thread_unsafe.type
    var rte_memseg_list_walk_thread_unsafe: rte_ip_frag_rte_memseg_list_walk_thread_unsafe.type
    var rte_memseg_get_fd: rte_ip_frag_rte_memseg_get_fd.type
    var rte_memseg_get_fd_thread_unsafe: rte_ip_frag_rte_memseg_get_fd_thread_unsafe.type
    var rte_memseg_get_fd_offset: rte_ip_frag_rte_memseg_get_fd_offset.type
    var rte_memseg_get_fd_offset_thread_unsafe: rte_ip_frag_rte_memseg_get_fd_offset_thread_unsafe.type
    var rte_extmem_register: rte_ip_frag_rte_extmem_register.type
    var rte_extmem_unregister: rte_ip_frag_rte_extmem_unregister.type
    var rte_extmem_attach: rte_ip_frag_rte_extmem_attach.type
    var rte_extmem_detach: rte_ip_frag_rte_extmem_detach.type
    var rte_dump_physmem_layout: rte_ip_frag_rte_dump_physmem_layout.type
    var rte_eal_get_physmem_size: rte_ip_frag_rte_eal_get_physmem_size.type
    var rte_memory_get_nchannel: rte_ip_frag_rte_memory_get_nchannel.type
    var rte_memory_get_nrank: rte_ip_frag_rte_memory_get_nrank.type
    var rte_mem_check_dma_mask: rte_ip_frag_rte_mem_check_dma_mask.type
    var rte_mem_check_dma_mask_thread_unsafe: rte_ip_frag_rte_mem_check_dma_mask_thread_unsafe.type
    var rte_mem_set_dma_mask: rte_ip_frag_rte_mem_set_dma_mask.type
    var rte_eal_using_phys_addrs: rte_ip_frag_rte_eal_using_phys_addrs.type
    var rte_mem_event_callback_register: rte_ip_frag_rte_mem_event_callback_register.type
    var rte_mem_event_callback_unregister: rte_ip_frag_rte_mem_event_callback_unregister.type
    var rte_mem_alloc_validator_register: rte_ip_frag_rte_mem_alloc_validator_register.type
    var rte_mem_alloc_validator_unregister: rte_ip_frag_rte_mem_alloc_validator_unregister.type
    var rte_memzero_explicit: rte_ip_frag_rte_memzero_explicit.type
    var rte_free: rte_ip_frag_rte_free.type
    var rte_free_sensitive: rte_ip_frag_rte_free_sensitive.type
    var rte_malloc: rte_ip_frag_rte_malloc.type
    var rte_zmalloc: rte_ip_frag_rte_zmalloc.type
    var rte_calloc: rte_ip_frag_rte_calloc.type
    var rte_realloc: rte_ip_frag_rte_realloc.type
    var rte_realloc_socket: rte_ip_frag_rte_realloc_socket.type
    var rte_malloc_socket: rte_ip_frag_rte_malloc_socket.type
    var rte_zmalloc_socket: rte_ip_frag_rte_zmalloc_socket.type
    var rte_calloc_socket: rte_ip_frag_rte_calloc_socket.type
    var rte_malloc_validate: rte_ip_frag_rte_malloc_validate.type
    var rte_malloc_get_socket_stats: rte_ip_frag_rte_malloc_get_socket_stats.type
    var rte_malloc_heap_memory_add: rte_ip_frag_rte_malloc_heap_memory_add.type
    var rte_malloc_heap_memory_remove: rte_ip_frag_rte_malloc_heap_memory_remove.type
    var rte_malloc_heap_memory_attach: rte_ip_frag_rte_malloc_heap_memory_attach.type
    var rte_malloc_heap_memory_detach: rte_ip_frag_rte_malloc_heap_memory_detach.type
    var rte_malloc_heap_create: rte_ip_frag_rte_malloc_heap_create.type
    var rte_malloc_heap_destroy: rte_ip_frag_rte_malloc_heap_destroy.type
    var rte_malloc_heap_get_socket: rte_ip_frag_rte_malloc_heap_get_socket.type
    var rte_malloc_heap_socket_is_external: rte_ip_frag_rte_malloc_heap_socket_is_external.type
    var rte_malloc_dump_stats: rte_ip_frag_rte_malloc_dump_stats.type
    var rte_malloc_dump_heaps: rte_ip_frag_rte_malloc_dump_heaps.type
    var rte_malloc_virt2iova: rte_ip_frag_rte_malloc_virt2iova.type
    var select: rte_ip_frag_select.type
    var pselect: rte_ip_frag_pselect.type
    var socket: rte_ip_frag_socket.type
    var socketpair: rte_ip_frag_socketpair.type
    var bind: rte_ip_frag_bind.type
    var getsockname: rte_ip_frag_getsockname.type
    var connect: rte_ip_frag_connect.type
    var getpeername: rte_ip_frag_getpeername.type
    var send: rte_ip_frag_send.type
    var recv: rte_ip_frag_recv.type
    var sendto: rte_ip_frag_sendto.type
    var recvfrom: rte_ip_frag_recvfrom.type
    var sendmsg: rte_ip_frag_sendmsg.type
    var recvmsg: rte_ip_frag_recvmsg.type
    var getsockopt: rte_ip_frag_getsockopt.type
    var setsockopt: rte_ip_frag_setsockopt.type
    var listen: rte_ip_frag_listen.type
    var accept: rte_ip_frag_accept.type
    var shutdown: rte_ip_frag_shutdown.type
    var sockatmark: rte_ip_frag_sockatmark.type
    var isfdtype: rte_ip_frag_isfdtype.type
    var ntohl: rte_ip_frag_ntohl.type
    var ntohs: rte_ip_frag_ntohs.type
    var htonl: rte_ip_frag_htonl.type
    var htons: rte_ip_frag_htons.type
    var bindresvport: rte_ip_frag_bindresvport.type
    var bindresvport6: rte_ip_frag_bindresvport6.type
    var inet_addr: rte_ip_frag_inet_addr.type
    var inet_lnaof: rte_ip_frag_inet_lnaof.type
    var inet_makeaddr: rte_ip_frag_inet_makeaddr.type
    var inet_netof: rte_ip_frag_inet_netof.type
    var inet_network: rte_ip_frag_inet_network.type
    var inet_ntoa: rte_ip_frag_inet_ntoa.type
    var inet_pton: rte_ip_frag_inet_pton.type
    var inet_ntop: rte_ip_frag_inet_ntop.type
    var inet_aton: rte_ip_frag_inet_aton.type
    var inet_neta: rte_ip_frag_inet_neta.type
    var inet_net_ntop: rte_ip_frag_inet_net_ntop.type
    var inet_net_pton: rte_ip_frag_inet_net_pton.type
    var inet_nsap_addr: rte_ip_frag_inet_nsap_addr.type
    var inet_nsap_ntoa: rte_ip_frag_inet_nsap_ntoa.type
    var imaxabs: rte_ip_frag_imaxabs.type
    var imaxdiv: rte_ip_frag_imaxdiv.type
    var strtoimax: rte_ip_frag_strtoimax.type
    var strtoumax: rte_ip_frag_strtoumax.type
    var wcstoimax: rte_ip_frag_wcstoimax.type
    var wcstoumax: rte_ip_frag_wcstoumax.type
    var rte_constant_bswap16: rte_ip_frag_rte_constant_bswap16.type
    var rte_constant_bswap32: rte_ip_frag_rte_constant_bswap32.type
    var rte_constant_bswap64: rte_ip_frag_rte_constant_bswap64.type
    var rte_memzone_max_set: rte_ip_frag_rte_memzone_max_set.type
    var rte_memzone_max_get: rte_ip_frag_rte_memzone_max_get.type
    var rte_memzone_reserve: rte_ip_frag_rte_memzone_reserve.type
    var rte_memzone_reserve_aligned: rte_ip_frag_rte_memzone_reserve_aligned.type
    var rte_memzone_reserve_bounded: rte_ip_frag_rte_memzone_reserve_bounded.type
    var rte_memzone_free: rte_ip_frag_rte_memzone_free.type
    var rte_memzone_lookup: rte_ip_frag_rte_memzone_lookup.type
    var rte_memzone_dump: rte_ip_frag_rte_memzone_dump.type
    var rte_memzone_walk: rte_ip_frag_rte_memzone_walk.type
    var rte_ring_get_memsize_elem: rte_ip_frag_rte_ring_get_memsize_elem.type
    var rte_ring_create_elem: rte_ip_frag_rte_ring_create_elem.type
    var rte_ring_mp_enqueue_bulk_elem: rte_ip_frag_rte_ring_mp_enqueue_bulk_elem.type
    var rte_ring_sp_enqueue_bulk_elem: rte_ip_frag_rte_ring_sp_enqueue_bulk_elem.type
    var rte_ring_mp_hts_enqueue_bulk_elem: rte_ip_frag_rte_ring_mp_hts_enqueue_bulk_elem.type
    var rte_ring_mc_hts_dequeue_bulk_elem: rte_ip_frag_rte_ring_mc_hts_dequeue_bulk_elem.type
    var rte_ring_mp_hts_enqueue_burst_elem: rte_ip_frag_rte_ring_mp_hts_enqueue_burst_elem.type
    var rte_ring_mc_hts_dequeue_burst_elem: rte_ip_frag_rte_ring_mc_hts_dequeue_burst_elem.type
    var rte_ring_mp_hts_enqueue_bulk: rte_ip_frag_rte_ring_mp_hts_enqueue_bulk.type
    var rte_ring_mc_hts_dequeue_bulk: rte_ip_frag_rte_ring_mc_hts_dequeue_bulk.type
    var rte_ring_mp_hts_enqueue_burst: rte_ip_frag_rte_ring_mp_hts_enqueue_burst.type
    var rte_ring_mc_hts_dequeue_burst: rte_ip_frag_rte_ring_mc_hts_dequeue_burst.type
    var rte_ring_mp_rts_enqueue_bulk_elem: rte_ip_frag_rte_ring_mp_rts_enqueue_bulk_elem.type
    var rte_ring_mc_rts_dequeue_bulk_elem: rte_ip_frag_rte_ring_mc_rts_dequeue_bulk_elem.type
    var rte_ring_mp_rts_enqueue_burst_elem: rte_ip_frag_rte_ring_mp_rts_enqueue_burst_elem.type
    var rte_ring_mc_rts_dequeue_burst_elem: rte_ip_frag_rte_ring_mc_rts_dequeue_burst_elem.type
    var rte_ring_mp_rts_enqueue_bulk: rte_ip_frag_rte_ring_mp_rts_enqueue_bulk.type
    var rte_ring_mc_rts_dequeue_bulk: rte_ip_frag_rte_ring_mc_rts_dequeue_bulk.type
    var rte_ring_mp_rts_enqueue_burst: rte_ip_frag_rte_ring_mp_rts_enqueue_burst.type
    var rte_ring_mc_rts_dequeue_burst: rte_ip_frag_rte_ring_mc_rts_dequeue_burst.type
    var rte_ring_get_prod_htd_max: rte_ip_frag_rte_ring_get_prod_htd_max.type
    var rte_ring_set_prod_htd_max: rte_ip_frag_rte_ring_set_prod_htd_max.type
    var rte_ring_get_cons_htd_max: rte_ip_frag_rte_ring_get_cons_htd_max.type
    var rte_ring_set_cons_htd_max: rte_ip_frag_rte_ring_set_cons_htd_max.type
    var rte_ring_enqueue_bulk_elem: rte_ip_frag_rte_ring_enqueue_bulk_elem.type
    var rte_ring_mp_enqueue_elem: rte_ip_frag_rte_ring_mp_enqueue_elem.type
    var rte_ring_sp_enqueue_elem: rte_ip_frag_rte_ring_sp_enqueue_elem.type
    var rte_ring_enqueue_elem: rte_ip_frag_rte_ring_enqueue_elem.type
    var rte_ring_mc_dequeue_bulk_elem: rte_ip_frag_rte_ring_mc_dequeue_bulk_elem.type
    var rte_ring_sc_dequeue_bulk_elem: rte_ip_frag_rte_ring_sc_dequeue_bulk_elem.type
    var rte_ring_dequeue_bulk_elem: rte_ip_frag_rte_ring_dequeue_bulk_elem.type
    var rte_ring_mc_dequeue_elem: rte_ip_frag_rte_ring_mc_dequeue_elem.type
    var rte_ring_sc_dequeue_elem: rte_ip_frag_rte_ring_sc_dequeue_elem.type
    var rte_ring_dequeue_elem: rte_ip_frag_rte_ring_dequeue_elem.type
    var rte_ring_mp_enqueue_burst_elem: rte_ip_frag_rte_ring_mp_enqueue_burst_elem.type
    var rte_ring_sp_enqueue_burst_elem: rte_ip_frag_rte_ring_sp_enqueue_burst_elem.type
    var rte_ring_enqueue_burst_elem: rte_ip_frag_rte_ring_enqueue_burst_elem.type
    var rte_ring_mc_dequeue_burst_elem: rte_ip_frag_rte_ring_mc_dequeue_burst_elem.type
    var rte_ring_sc_dequeue_burst_elem: rte_ip_frag_rte_ring_sc_dequeue_burst_elem.type
    var rte_ring_dequeue_burst_elem: rte_ip_frag_rte_ring_dequeue_burst_elem.type
    var rte_ring_enqueue_bulk_elem_start: rte_ip_frag_rte_ring_enqueue_bulk_elem_start.type
    var rte_ring_enqueue_bulk_start: rte_ip_frag_rte_ring_enqueue_bulk_start.type
    var rte_ring_enqueue_burst_elem_start: rte_ip_frag_rte_ring_enqueue_burst_elem_start.type
    var rte_ring_enqueue_burst_start: rte_ip_frag_rte_ring_enqueue_burst_start.type
    var rte_ring_enqueue_elem_finish: rte_ip_frag_rte_ring_enqueue_elem_finish.type
    var rte_ring_enqueue_finish: rte_ip_frag_rte_ring_enqueue_finish.type
    var rte_ring_dequeue_bulk_elem_start: rte_ip_frag_rte_ring_dequeue_bulk_elem_start.type
    var rte_ring_dequeue_bulk_start: rte_ip_frag_rte_ring_dequeue_bulk_start.type
    var rte_ring_dequeue_burst_elem_start: rte_ip_frag_rte_ring_dequeue_burst_elem_start.type
    var rte_ring_dequeue_burst_start: rte_ip_frag_rte_ring_dequeue_burst_start.type
    var rte_ring_dequeue_elem_finish: rte_ip_frag_rte_ring_dequeue_elem_finish.type
    var rte_ring_dequeue_finish: rte_ip_frag_rte_ring_dequeue_finish.type
    var rte_ring_enqueue_zc_bulk_elem_start: rte_ip_frag_rte_ring_enqueue_zc_bulk_elem_start.type
    var rte_ring_enqueue_zc_bulk_start: rte_ip_frag_rte_ring_enqueue_zc_bulk_start.type
    var rte_ring_enqueue_zc_burst_elem_start: rte_ip_frag_rte_ring_enqueue_zc_burst_elem_start.type
    var rte_ring_enqueue_zc_burst_start: rte_ip_frag_rte_ring_enqueue_zc_burst_start.type
    var rte_ring_enqueue_zc_elem_finish: rte_ip_frag_rte_ring_enqueue_zc_elem_finish.type
    var rte_ring_enqueue_zc_finish: rte_ip_frag_rte_ring_enqueue_zc_finish.type
    var rte_ring_dequeue_zc_bulk_elem_start: rte_ip_frag_rte_ring_dequeue_zc_bulk_elem_start.type
    var rte_ring_dequeue_zc_bulk_start: rte_ip_frag_rte_ring_dequeue_zc_bulk_start.type
    var rte_ring_dequeue_zc_burst_elem_start: rte_ip_frag_rte_ring_dequeue_zc_burst_elem_start.type
    var rte_ring_dequeue_zc_burst_start: rte_ip_frag_rte_ring_dequeue_zc_burst_start.type
    var rte_ring_dequeue_zc_elem_finish: rte_ip_frag_rte_ring_dequeue_zc_elem_finish.type
    var rte_ring_dequeue_zc_finish: rte_ip_frag_rte_ring_dequeue_zc_finish.type
    var rte_ring_get_memsize: rte_ip_frag_rte_ring_get_memsize.type
    var rte_ring_init: rte_ip_frag_rte_ring_init.type
    var rte_ring_free: rte_ip_frag_rte_ring_free.type
    var rte_ring_create: rte_ip_frag_rte_ring_create.type
    var rte_ring_dump: rte_ip_frag_rte_ring_dump.type
    var rte_ring_headtail_dump: rte_ip_frag_rte_ring_headtail_dump.type
    var rte_ring_mp_enqueue_bulk: rte_ip_frag_rte_ring_mp_enqueue_bulk.type
    var rte_ring_sp_enqueue_bulk: rte_ip_frag_rte_ring_sp_enqueue_bulk.type
    var rte_ring_enqueue_bulk: rte_ip_frag_rte_ring_enqueue_bulk.type
    var rte_ring_mp_enqueue: rte_ip_frag_rte_ring_mp_enqueue.type
    var rte_ring_sp_enqueue: rte_ip_frag_rte_ring_sp_enqueue.type
    var rte_ring_enqueue: rte_ip_frag_rte_ring_enqueue.type
    var rte_ring_mc_dequeue_bulk: rte_ip_frag_rte_ring_mc_dequeue_bulk.type
    var rte_ring_sc_dequeue_bulk: rte_ip_frag_rte_ring_sc_dequeue_bulk.type
    var rte_ring_dequeue_bulk: rte_ip_frag_rte_ring_dequeue_bulk.type
    var rte_ring_mc_dequeue: rte_ip_frag_rte_ring_mc_dequeue.type
    var rte_ring_sc_dequeue: rte_ip_frag_rte_ring_sc_dequeue.type
    var rte_ring_dequeue: rte_ip_frag_rte_ring_dequeue.type
    var rte_ring_reset: rte_ip_frag_rte_ring_reset.type
    var rte_ring_count: rte_ip_frag_rte_ring_count.type
    var rte_ring_free_count: rte_ip_frag_rte_ring_free_count.type
    var rte_ring_full: rte_ip_frag_rte_ring_full.type
    var rte_ring_empty: rte_ip_frag_rte_ring_empty.type
    var rte_ring_get_size: rte_ip_frag_rte_ring_get_size.type
    var rte_ring_get_capacity: rte_ip_frag_rte_ring_get_capacity.type
    var rte_ring_get_prod_sync_type: rte_ip_frag_rte_ring_get_prod_sync_type.type
    var rte_ring_is_prod_single: rte_ip_frag_rte_ring_is_prod_single.type
    var rte_ring_get_cons_sync_type: rte_ip_frag_rte_ring_get_cons_sync_type.type
    var rte_ring_is_cons_single: rte_ip_frag_rte_ring_is_cons_single.type
    var rte_ring_list_dump: rte_ip_frag_rte_ring_list_dump.type
    var rte_ring_lookup: rte_ip_frag_rte_ring_lookup.type
    var rte_ring_mp_enqueue_burst: rte_ip_frag_rte_ring_mp_enqueue_burst.type
    var rte_ring_sp_enqueue_burst: rte_ip_frag_rte_ring_sp_enqueue_burst.type
    var rte_ring_enqueue_burst: rte_ip_frag_rte_ring_enqueue_burst.type
    var rte_ring_mc_dequeue_burst: rte_ip_frag_rte_ring_mc_dequeue_burst.type
    var rte_ring_sc_dequeue_burst: rte_ip_frag_rte_ring_sc_dequeue_burst.type
    var rte_ring_dequeue_burst: rte_ip_frag_rte_ring_dequeue_burst.type
    var rte_mov16: rte_ip_frag_rte_mov16.type
    var rte_mov32: rte_ip_frag_rte_mov32.type
    var rte_mov64: rte_ip_frag_rte_mov64.type
    var rte_mov128: rte_ip_frag_rte_mov128.type
    var rte_mov256: rte_ip_frag_rte_mov256.type
    var rte_mov48: rte_ip_frag_rte_mov48.type
    var rte_get_tsc_hz: rte_ip_frag_rte_get_tsc_hz.type
    var rte_get_tsc_cycles: rte_ip_frag_rte_get_tsc_cycles.type
    var rte_get_timer_cycles: rte_ip_frag_rte_get_timer_cycles.type
    var rte_get_timer_hz: rte_ip_frag_rte_get_timer_hz.type
    var rte_delay_ms: rte_ip_frag_rte_delay_ms.type
    var rte_delay_us_block: rte_ip_frag_rte_delay_us_block.type
    var rte_delay_us_sleep: rte_ip_frag_rte_delay_us_sleep.type
    var rte_delay_us_callback_register: rte_ip_frag_rte_delay_us_callback_register.type
    var rte_rdtsc: rte_ip_frag_rte_rdtsc.type
    var rte_rdtsc_precise: rte_ip_frag_rte_rdtsc_precise.type
    var isalnum: rte_ip_frag_isalnum.type
    var isalpha: rte_ip_frag_isalpha.type
    var iscntrl: rte_ip_frag_iscntrl.type
    var isdigit: rte_ip_frag_isdigit.type
    var islower: rte_ip_frag_islower.type
    var isgraph: rte_ip_frag_isgraph.type
    var isprint: rte_ip_frag_isprint.type
    var ispunct: rte_ip_frag_ispunct.type
    var isspace: rte_ip_frag_isspace.type
    var isupper: rte_ip_frag_isupper.type
    var isxdigit: rte_ip_frag_isxdigit.type
    var tolower: rte_ip_frag_tolower.type
    var toupper: rte_ip_frag_toupper.type
    var isblank: rte_ip_frag_isblank.type
    var isascii: rte_ip_frag_isascii.type
    var toascii: rte_ip_frag_toascii.type
    var isalnum_l: rte_ip_frag_isalnum_l.type
    var isalpha_l: rte_ip_frag_isalpha_l.type
    var iscntrl_l: rte_ip_frag_iscntrl_l.type
    var isdigit_l: rte_ip_frag_isdigit_l.type
    var islower_l: rte_ip_frag_islower_l.type
    var isgraph_l: rte_ip_frag_isgraph_l.type
    var isprint_l: rte_ip_frag_isprint_l.type
    var ispunct_l: rte_ip_frag_ispunct_l.type
    var isspace_l: rte_ip_frag_isspace_l.type
    var isupper_l: rte_ip_frag_isupper_l.type
    var isxdigit_l: rte_ip_frag_isxdigit_l.type
    var isblank_l: rte_ip_frag_isblank_l.type
    var tolower_l: rte_ip_frag_tolower_l.type
    var toupper_l: rte_ip_frag_toupper_l.type
    var rte_strsplit: rte_ip_frag_rte_strsplit.type
    var rte_strlcpy: rte_ip_frag_rte_strlcpy.type
    var rte_strlcat: rte_ip_frag_rte_strlcat.type
    var rte_strscpy: rte_ip_frag_rte_strscpy.type
    var rte_str_skip_leading_spaces: rte_ip_frag_rte_str_skip_leading_spaces.type
    var rte_trace_is_enabled: rte_ip_frag_rte_trace_is_enabled.type
    var rte_trace_feature_is_enabled: rte_ip_frag_rte_trace_feature_is_enabled.type
    var rte_trace_mode_set: rte_ip_frag_rte_trace_mode_set.type
    var rte_trace_mode_get: rte_ip_frag_rte_trace_mode_get.type
    var rte_trace_pattern: rte_ip_frag_rte_trace_pattern.type
    var rte_trace_regexp: rte_ip_frag_rte_trace_regexp.type
    var rte_trace_save: rte_ip_frag_rte_trace_save.type
    var rte_trace_metadata_dump: rte_ip_frag_rte_trace_metadata_dump.type
    var rte_trace_dump: rte_ip_frag_rte_trace_dump.type
    var rte_trace_point_enable: rte_ip_frag_rte_trace_point_enable.type
    var rte_trace_point_disable: rte_ip_frag_rte_trace_point_disable.type
    var rte_trace_point_is_enabled: rte_ip_frag_rte_trace_point_is_enabled.type
    var rte_trace_point_lookup: rte_ip_frag_rte_trace_point_lookup.type
    var rte_mempool_trace_ops_dequeue_bulk: rte_ip_frag_rte_mempool_trace_ops_dequeue_bulk.type
    var rte_mempool_trace_ops_dequeue_contig_blocks: rte_ip_frag_rte_mempool_trace_ops_dequeue_contig_blocks.type
    var rte_mempool_trace_ops_enqueue_bulk: rte_ip_frag_rte_mempool_trace_ops_enqueue_bulk.type
    var rte_mempool_trace_generic_put: rte_ip_frag_rte_mempool_trace_generic_put.type
    var rte_mempool_trace_put_bulk: rte_ip_frag_rte_mempool_trace_put_bulk.type
    var rte_mempool_trace_generic_get: rte_ip_frag_rte_mempool_trace_generic_get.type
    var rte_mempool_trace_get_bulk: rte_ip_frag_rte_mempool_trace_get_bulk.type
    var rte_mempool_trace_get_contig_blocks: rte_ip_frag_rte_mempool_trace_get_contig_blocks.type
    var rte_mempool_trace_default_cache: rte_ip_frag_rte_mempool_trace_default_cache.type
    var rte_mempool_trace_cache_flush: rte_ip_frag_rte_mempool_trace_cache_flush.type
    var rte_mempool_get_header: rte_ip_frag_rte_mempool_get_header.type
    var rte_mempool_from_obj: rte_ip_frag_rte_mempool_from_obj.type
    var rte_mempool_get_trailer: rte_ip_frag_rte_mempool_get_trailer.type
    var rte_mempool_check_cookies: rte_ip_frag_rte_mempool_check_cookies.type
    var rte_mempool_contig_blocks_check_cookies: rte_ip_frag_rte_mempool_contig_blocks_check_cookies.type
    var rte_mempool_op_calc_mem_size_helper: rte_ip_frag_rte_mempool_op_calc_mem_size_helper.type
    var rte_mempool_op_calc_mem_size_default: rte_ip_frag_rte_mempool_op_calc_mem_size_default.type
    var rte_mempool_op_populate_helper: rte_ip_frag_rte_mempool_op_populate_helper.type
    var rte_mempool_op_populate_default: rte_ip_frag_rte_mempool_op_populate_default.type
    var rte_mempool_get_ops: rte_ip_frag_rte_mempool_get_ops.type
    var rte_mempool_ops_alloc: rte_ip_frag_rte_mempool_ops_alloc.type
    var rte_mempool_ops_dequeue_bulk: rte_ip_frag_rte_mempool_ops_dequeue_bulk.type
    var rte_mempool_ops_dequeue_contig_blocks: rte_ip_frag_rte_mempool_ops_dequeue_contig_blocks.type
    var rte_mempool_ops_enqueue_bulk: rte_ip_frag_rte_mempool_ops_enqueue_bulk.type
    var rte_mempool_ops_get_count: rte_ip_frag_rte_mempool_ops_get_count.type
    var rte_mempool_ops_calc_mem_size: rte_ip_frag_rte_mempool_ops_calc_mem_size.type
    var rte_mempool_ops_populate: rte_ip_frag_rte_mempool_ops_populate.type
    var rte_mempool_ops_get_info: rte_ip_frag_rte_mempool_ops_get_info.type
    var rte_mempool_ops_free: rte_ip_frag_rte_mempool_ops_free.type
    var rte_mempool_set_ops_byname: rte_ip_frag_rte_mempool_set_ops_byname.type
    var rte_mempool_register_ops: rte_ip_frag_rte_mempool_register_ops.type
    var rte_mempool_free: rte_ip_frag_rte_mempool_free.type
    var rte_mempool_create: rte_ip_frag_rte_mempool_create.type
    var rte_mempool_create_empty: rte_ip_frag_rte_mempool_create_empty.type
    var rte_mempool_populate_iova: rte_ip_frag_rte_mempool_populate_iova.type
    var rte_mempool_populate_virt: rte_ip_frag_rte_mempool_populate_virt.type
    var rte_mempool_populate_default: rte_ip_frag_rte_mempool_populate_default.type
    var rte_mempool_populate_anon: rte_ip_frag_rte_mempool_populate_anon.type
    var rte_mempool_obj_iter: rte_ip_frag_rte_mempool_obj_iter.type
    var rte_mempool_mem_iter: rte_ip_frag_rte_mempool_mem_iter.type
    var rte_mempool_dump: rte_ip_frag_rte_mempool_dump.type
    var rte_mempool_cache_create: rte_ip_frag_rte_mempool_cache_create.type
    var rte_mempool_cache_free: rte_ip_frag_rte_mempool_cache_free.type
    var rte_mempool_default_cache: rte_ip_frag_rte_mempool_default_cache.type
    var rte_mempool_cache_flush: rte_ip_frag_rte_mempool_cache_flush.type
    var rte_mempool_do_generic_put: rte_ip_frag_rte_mempool_do_generic_put.type
    var rte_mempool_generic_put: rte_ip_frag_rte_mempool_generic_put.type
    var rte_mempool_put_bulk: rte_ip_frag_rte_mempool_put_bulk.type
    var rte_mempool_put: rte_ip_frag_rte_mempool_put.type
    var rte_mempool_do_generic_get: rte_ip_frag_rte_mempool_do_generic_get.type
    var rte_mempool_generic_get: rte_ip_frag_rte_mempool_generic_get.type
    var rte_mempool_get_bulk: rte_ip_frag_rte_mempool_get_bulk.type
    var rte_mempool_get: rte_ip_frag_rte_mempool_get.type
    var rte_mempool_get_contig_blocks: rte_ip_frag_rte_mempool_get_contig_blocks.type
    var rte_mempool_avail_count: rte_ip_frag_rte_mempool_avail_count.type
    var rte_mempool_in_use_count: rte_ip_frag_rte_mempool_in_use_count.type
    var rte_mempool_full: rte_ip_frag_rte_mempool_full.type
    var rte_mempool_empty: rte_ip_frag_rte_mempool_empty.type
    var rte_mempool_virt2iova: rte_ip_frag_rte_mempool_virt2iova.type
    var rte_mempool_audit: rte_ip_frag_rte_mempool_audit.type
    var rte_mempool_get_priv: rte_ip_frag_rte_mempool_get_priv.type
    var rte_mempool_list_dump: rte_ip_frag_rte_mempool_list_dump.type
    var rte_mempool_lookup: rte_ip_frag_rte_mempool_lookup.type
    var rte_mempool_calc_obj_size: rte_ip_frag_rte_mempool_calc_obj_size.type
    var rte_mempool_walk: rte_ip_frag_rte_mempool_walk.type
    var rte_mempool_get_mem_range: rte_ip_frag_rte_mempool_get_mem_range.type
    var rte_mempool_get_obj_alignment: rte_ip_frag_rte_mempool_get_obj_alignment.type
    var rte_mempool_get_page_size: rte_ip_frag_rte_mempool_get_page_size.type
    var rte_mempool_event_callback_register: rte_ip_frag_rte_mempool_event_callback_register.type
    var rte_mempool_event_callback_unregister: rte_ip_frag_rte_mempool_event_callback_unregister.type
    var rte_prefetch0: rte_ip_frag_rte_prefetch0.type
    var rte_prefetch1: rte_ip_frag_rte_prefetch1.type
    var rte_prefetch2: rte_ip_frag_rte_prefetch2.type
    var rte_prefetch_non_temporal: rte_ip_frag_rte_prefetch_non_temporal.type
    var rte_prefetch0_write: rte_ip_frag_rte_prefetch0_write.type
    var rte_prefetch1_write: rte_ip_frag_rte_prefetch1_write.type
    var rte_prefetch2_write: rte_ip_frag_rte_prefetch2_write.type
    var rte_cldemote: rte_ip_frag_rte_cldemote.type
    var rte_get_ptype_l2_name: rte_ip_frag_rte_get_ptype_l2_name.type
    var rte_get_ptype_l3_name: rte_ip_frag_rte_get_ptype_l3_name.type
    var rte_get_ptype_l4_name: rte_ip_frag_rte_get_ptype_l4_name.type
    var rte_get_ptype_tunnel_name: rte_ip_frag_rte_get_ptype_tunnel_name.type
    var rte_get_ptype_inner_l2_name: rte_ip_frag_rte_get_ptype_inner_l2_name.type
    var rte_get_ptype_inner_l3_name: rte_ip_frag_rte_get_ptype_inner_l3_name.type
    var rte_get_ptype_inner_l4_name: rte_ip_frag_rte_get_ptype_inner_l4_name.type
    var rte_get_ptype_name: rte_ip_frag_rte_get_ptype_name.type
    var rte_get_rx_ol_flag_name: rte_ip_frag_rte_get_rx_ol_flag_name.type
    var rte_get_rx_ol_flag_list: rte_ip_frag_rte_get_rx_ol_flag_list.type
    var rte_get_tx_ol_flag_name: rte_ip_frag_rte_get_tx_ol_flag_name.type
    var rte_get_tx_ol_flag_list: rte_ip_frag_rte_get_tx_ol_flag_list.type
    var rte_mbuf_prefetch_part1: rte_ip_frag_rte_mbuf_prefetch_part1.type
    var rte_mbuf_prefetch_part2: rte_ip_frag_rte_mbuf_prefetch_part2.type
    var rte_pktmbuf_priv_size: rte_ip_frag_rte_pktmbuf_priv_size.type
    var rte_mbuf_iova_get: rte_ip_frag_rte_mbuf_iova_get.type
    var rte_mbuf_iova_set: rte_ip_frag_rte_mbuf_iova_set.type
    var rte_mbuf_data_iova: rte_ip_frag_rte_mbuf_data_iova.type
    var rte_mbuf_data_iova_default: rte_ip_frag_rte_mbuf_data_iova_default.type
    var rte_mbuf_from_indirect: rte_ip_frag_rte_mbuf_from_indirect.type
    var rte_mbuf_buf_addr: rte_ip_frag_rte_mbuf_buf_addr.type
    var rte_mbuf_data_addr_default: rte_ip_frag_rte_mbuf_data_addr_default.type
    var rte_mbuf_to_baddr: rte_ip_frag_rte_mbuf_to_baddr.type
    var rte_mbuf_to_priv: rte_ip_frag_rte_mbuf_to_priv.type
    var rte_pktmbuf_priv_flags: rte_ip_frag_rte_pktmbuf_priv_flags.type
    var rte_mbuf_refcnt_read: rte_ip_frag_rte_mbuf_refcnt_read.type
    var rte_mbuf_refcnt_set: rte_ip_frag_rte_mbuf_refcnt_set.type
    var rte_mbuf_refcnt_update: rte_ip_frag_rte_mbuf_refcnt_update.type
    var rte_mbuf_ext_refcnt_read: rte_ip_frag_rte_mbuf_ext_refcnt_read.type
    var rte_mbuf_ext_refcnt_set: rte_ip_frag_rte_mbuf_ext_refcnt_set.type
    var rte_mbuf_ext_refcnt_update: rte_ip_frag_rte_mbuf_ext_refcnt_update.type
    var rte_mbuf_sanity_check: rte_ip_frag_rte_mbuf_sanity_check.type
    var rte_mbuf_check: rte_ip_frag_rte_mbuf_check.type
    var rte_mbuf_raw_alloc: rte_ip_frag_rte_mbuf_raw_alloc.type
    var rte_mbuf_raw_alloc_bulk: rte_ip_frag_rte_mbuf_raw_alloc_bulk.type
    var rte_mbuf_raw_free: rte_ip_frag_rte_mbuf_raw_free.type
    var rte_mbuf_raw_free_bulk: rte_ip_frag_rte_mbuf_raw_free_bulk.type
    var rte_pktmbuf_init: rte_ip_frag_rte_pktmbuf_init.type
    var rte_pktmbuf_pool_init: rte_ip_frag_rte_pktmbuf_pool_init.type
    var rte_pktmbuf_pool_create: rte_ip_frag_rte_pktmbuf_pool_create.type
    var rte_pktmbuf_pool_create_by_ops: rte_ip_frag_rte_pktmbuf_pool_create_by_ops.type
    var rte_pktmbuf_pool_create_extbuf: rte_ip_frag_rte_pktmbuf_pool_create_extbuf.type
    var rte_pktmbuf_data_room_size: rte_ip_frag_rte_pktmbuf_data_room_size.type
    var rte_pktmbuf_reset_headroom: rte_ip_frag_rte_pktmbuf_reset_headroom.type
    var rte_pktmbuf_reset: rte_ip_frag_rte_pktmbuf_reset.type
    var rte_pktmbuf_alloc: rte_ip_frag_rte_pktmbuf_alloc.type
    var rte_pktmbuf_alloc_bulk: rte_ip_frag_rte_pktmbuf_alloc_bulk.type
    var rte_pktmbuf_ext_shinfo_init_helper: rte_ip_frag_rte_pktmbuf_ext_shinfo_init_helper.type
    var rte_pktmbuf_attach_extbuf: rte_ip_frag_rte_pktmbuf_attach_extbuf.type
    var rte_mbuf_dynfield_copy: rte_ip_frag_rte_mbuf_dynfield_copy.type
    var rte_pktmbuf_attach: rte_ip_frag_rte_pktmbuf_attach.type
    var rte_pktmbuf_detach: rte_ip_frag_rte_pktmbuf_detach.type
    var rte_pktmbuf_prefree_seg: rte_ip_frag_rte_pktmbuf_prefree_seg.type
    var rte_pktmbuf_free_seg: rte_ip_frag_rte_pktmbuf_free_seg.type
    var rte_pktmbuf_free: rte_ip_frag_rte_pktmbuf_free.type
    var rte_pktmbuf_free_bulk: rte_ip_frag_rte_pktmbuf_free_bulk.type
    var rte_pktmbuf_clone: rte_ip_frag_rte_pktmbuf_clone.type
    var rte_pktmbuf_copy: rte_ip_frag_rte_pktmbuf_copy.type
    var rte_pktmbuf_refcnt_update: rte_ip_frag_rte_pktmbuf_refcnt_update.type
    var rte_pktmbuf_headroom: rte_ip_frag_rte_pktmbuf_headroom.type
    var rte_pktmbuf_tailroom: rte_ip_frag_rte_pktmbuf_tailroom.type
    var rte_pktmbuf_lastseg: rte_ip_frag_rte_pktmbuf_lastseg.type
    var rte_pktmbuf_prepend: rte_ip_frag_rte_pktmbuf_prepend.type
    var rte_pktmbuf_append: rte_ip_frag_rte_pktmbuf_append.type
    var rte_pktmbuf_adj: rte_ip_frag_rte_pktmbuf_adj.type
    var rte_pktmbuf_trim: rte_ip_frag_rte_pktmbuf_trim.type
    var rte_pktmbuf_is_contiguous: rte_ip_frag_rte_pktmbuf_is_contiguous.type
    var rte_pktmbuf_read: rte_ip_frag_rte_pktmbuf_read.type
    var rte_pktmbuf_chain: rte_ip_frag_rte_pktmbuf_chain.type
    var rte_mbuf_tx_offload: rte_ip_frag_rte_mbuf_tx_offload.type
    var rte_validate_tx_offload: rte_ip_frag_rte_validate_tx_offload.type
    var rte_pktmbuf_linearize: rte_ip_frag_rte_pktmbuf_linearize.type
    var rte_pktmbuf_dump: rte_ip_frag_rte_pktmbuf_dump.type
    var rte_mbuf_sched_queue_get: rte_ip_frag_rte_mbuf_sched_queue_get.type
    var rte_mbuf_sched_traffic_class_get: rte_ip_frag_rte_mbuf_sched_traffic_class_get.type
    var rte_mbuf_sched_color_get: rte_ip_frag_rte_mbuf_sched_color_get.type
    var rte_mbuf_sched_get: rte_ip_frag_rte_mbuf_sched_get.type
    var rte_mbuf_sched_queue_set: rte_ip_frag_rte_mbuf_sched_queue_set.type
    var rte_mbuf_sched_traffic_class_set: rte_ip_frag_rte_mbuf_sched_traffic_class_set.type
    var rte_mbuf_sched_color_set: rte_ip_frag_rte_mbuf_sched_color_set.type
    var rte_mbuf_sched_set: rte_ip_frag_rte_mbuf_sched_set.type
    var rte_raw_cksum: rte_ip_frag_rte_raw_cksum.type
    var rte_raw_cksum_mbuf: rte_ip_frag_rte_raw_cksum_mbuf.type
    var rte_ipv4_hdr_len: rte_ip_frag_rte_ipv4_hdr_len.type
    var rte_ipv4_cksum: rte_ip_frag_rte_ipv4_cksum.type
    var rte_ipv4_cksum_simple: rte_ip_frag_rte_ipv4_cksum_simple.type
    var rte_ipv4_phdr_cksum: rte_ip_frag_rte_ipv4_phdr_cksum.type
    var rte_ipv4_udptcp_cksum: rte_ip_frag_rte_ipv4_udptcp_cksum.type
    var rte_ipv4_udptcp_cksum_mbuf: rte_ip_frag_rte_ipv4_udptcp_cksum_mbuf.type
    var rte_ipv4_udptcp_cksum_verify: rte_ip_frag_rte_ipv4_udptcp_cksum_verify.type
    var rte_ipv4_udptcp_cksum_mbuf_verify: rte_ip_frag_rte_ipv4_udptcp_cksum_mbuf_verify.type
    var rte_srand: rte_ip_frag_rte_srand.type
    var rte_rand: rte_ip_frag_rte_rand.type
    var rte_rand_max: rte_ip_frag_rte_rand_max.type
    var rte_drand: rte_ip_frag_rte_drand.type
    var rte_is_same_ether_addr: rte_ip_frag_rte_is_same_ether_addr.type
    var rte_is_zero_ether_addr: rte_ip_frag_rte_is_zero_ether_addr.type
    var rte_is_unicast_ether_addr: rte_ip_frag_rte_is_unicast_ether_addr.type
    var rte_is_multicast_ether_addr: rte_ip_frag_rte_is_multicast_ether_addr.type
    var rte_is_broadcast_ether_addr: rte_ip_frag_rte_is_broadcast_ether_addr.type
    var rte_is_universal_ether_addr: rte_ip_frag_rte_is_universal_ether_addr.type
    var rte_is_local_admin_ether_addr: rte_ip_frag_rte_is_local_admin_ether_addr.type
    var rte_is_valid_assigned_ether_addr: rte_ip_frag_rte_is_valid_assigned_ether_addr.type
    var rte_eth_random_addr: rte_ip_frag_rte_eth_random_addr.type
    var rte_ether_addr_copy: rte_ip_frag_rte_ether_addr_copy.type
    var rte_ether_format_addr: rte_ip_frag_rte_ether_format_addr.type
    var rte_ether_unformat_addr: rte_ip_frag_rte_ether_unformat_addr.type
    var rte_vlan_strip: rte_ip_frag_rte_vlan_strip.type
    var rte_vlan_insert: rte_ip_frag_rte_vlan_insert.type
    var rte_ipv6_addr_eq: rte_ip_frag_rte_ipv6_addr_eq.type
    var rte_ipv6_addr_mask: rte_ip_frag_rte_ipv6_addr_mask.type
    var rte_ipv6_addr_eq_prefix: rte_ip_frag_rte_ipv6_addr_eq_prefix.type
    var rte_ipv6_mask_depth: rte_ip_frag_rte_ipv6_mask_depth.type
    var rte_ipv6_addr_is_unspec: rte_ip_frag_rte_ipv6_addr_is_unspec.type
    var rte_ipv6_addr_is_loopback: rte_ip_frag_rte_ipv6_addr_is_loopback.type
    var rte_ipv6_addr_is_linklocal: rte_ip_frag_rte_ipv6_addr_is_linklocal.type
    var rte_ipv6_addr_is_sitelocal: rte_ip_frag_rte_ipv6_addr_is_sitelocal.type
    var rte_ipv6_addr_is_v4compat: rte_ip_frag_rte_ipv6_addr_is_v4compat.type
    var rte_ipv6_addr_is_v4mapped: rte_ip_frag_rte_ipv6_addr_is_v4mapped.type
    var rte_ipv6_addr_is_mcast: rte_ip_frag_rte_ipv6_addr_is_mcast.type
    var rte_ipv6_llocal_from_ethernet: rte_ip_frag_rte_ipv6_llocal_from_ethernet.type
    var rte_ipv6_solnode_from_addr: rte_ip_frag_rte_ipv6_solnode_from_addr.type
    var rte_ether_mcast_from_ipv6: rte_ip_frag_rte_ether_mcast_from_ipv6.type
    var rte_ipv6_check_version: rte_ip_frag_rte_ipv6_check_version.type
    var rte_ipv6_phdr_cksum: rte_ip_frag_rte_ipv6_phdr_cksum.type
    var rte_ipv6_udptcp_cksum: rte_ip_frag_rte_ipv6_udptcp_cksum.type
    var rte_ipv6_udptcp_cksum_mbuf: rte_ip_frag_rte_ipv6_udptcp_cksum_mbuf.type
    var rte_ipv6_udptcp_cksum_verify: rte_ip_frag_rte_ipv6_udptcp_cksum_verify.type
    var rte_ipv6_udptcp_cksum_mbuf_verify: rte_ip_frag_rte_ipv6_udptcp_cksum_mbuf_verify.type
    var rte_ipv6_get_next_ext: rte_ip_frag_rte_ipv6_get_next_ext.type
    var rte_ip_frag_table_create: rte_ip_frag_rte_ip_frag_table_create.type
    var rte_ip_frag_table_destroy: rte_ip_frag_rte_ip_frag_table_destroy.type
    var rte_ipv6_fragment_packet: rte_ip_frag_rte_ipv6_fragment_packet.type
    var rte_ipv6_frag_reassemble_packet: rte_ip_frag_rte_ipv6_frag_reassemble_packet.type
    var rte_ipv6_frag_get_ipv6_fragment_header: rte_ip_frag_rte_ipv6_frag_get_ipv6_fragment_header.type
    var rte_ipv4_fragment_packet: rte_ip_frag_rte_ipv4_fragment_packet.type
    var rte_ipv4_fragment_copy_nonseg_packet: rte_ip_frag_rte_ipv4_fragment_copy_nonseg_packet.type
    var rte_ipv4_frag_reassemble_packet: rte_ip_frag_rte_ipv4_frag_reassemble_packet.type
    var rte_ipv4_frag_pkt_is_fragmented: rte_ip_frag_rte_ipv4_frag_pkt_is_fragmented.type
    var rte_ip_frag_free_death_row: rte_ip_frag_rte_ip_frag_free_death_row.type
    var rte_ip_frag_table_statistics_dump: rte_ip_frag_rte_ip_frag_table_statistics_dump.type
    var rte_ip_frag_table_del_expired_entries: rte_ip_frag_rte_ip_frag_table_del_expired_entries.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_ip_frag.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_ip_frag from", 'librte_ip_frag.so', ":\n", e)
            )

    
        self.remove = rte_ip_frag_remove.load(self.lib)
        self.rename = rte_ip_frag_rename.load(self.lib)
        self.renameat = rte_ip_frag_renameat.load(self.lib)
        self.fclose = rte_ip_frag_fclose.load(self.lib)
        self.tmpfile = rte_ip_frag_tmpfile.load(self.lib)
        self.tmpnam = rte_ip_frag_tmpnam.load(self.lib)
        self.tmpnam_r = rte_ip_frag_tmpnam_r.load(self.lib)
        self.tempnam = rte_ip_frag_tempnam.load(self.lib)
        self.fflush = rte_ip_frag_fflush.load(self.lib)
        self.fflush_unlocked = rte_ip_frag_fflush_unlocked.load(self.lib)
        self.fopen = rte_ip_frag_fopen.load(self.lib)
        self.freopen = rte_ip_frag_freopen.load(self.lib)
        self.fdopen = rte_ip_frag_fdopen.load(self.lib)
        self.fmemopen = rte_ip_frag_fmemopen.load(self.lib)
        self.open_memstream = rte_ip_frag_open_memstream.load(self.lib)
        self.setbuf = rte_ip_frag_setbuf.load(self.lib)
        self.setvbuf = rte_ip_frag_setvbuf.load(self.lib)
        self.setbuffer = rte_ip_frag_setbuffer.load(self.lib)
        self.setlinebuf = rte_ip_frag_setlinebuf.load(self.lib)
        self.fprintf = rte_ip_frag_fprintf.load(self.lib)
        self.printf = rte_ip_frag_printf.load(self.lib)
        self.sprintf = rte_ip_frag_sprintf.load(self.lib)
        self.vfprintf = rte_ip_frag_vfprintf.load(self.lib)
        self.vprintf = rte_ip_frag_vprintf.load(self.lib)
        self.vsprintf = rte_ip_frag_vsprintf.load(self.lib)
        self.snprintf = rte_ip_frag_snprintf.load(self.lib)
        self.vsnprintf = rte_ip_frag_vsnprintf.load(self.lib)
        self.vdprintf = rte_ip_frag_vdprintf.load(self.lib)
        self.dprintf = rte_ip_frag_dprintf.load(self.lib)
        self.fscanf = rte_ip_frag_fscanf.load(self.lib)
        self.scanf = rte_ip_frag_scanf.load(self.lib)
        self.sscanf = rte_ip_frag_sscanf.load(self.lib)
        self.vfscanf = rte_ip_frag_vfscanf.load(self.lib)
        self.vscanf = rte_ip_frag_vscanf.load(self.lib)
        self.vsscanf = rte_ip_frag_vsscanf.load(self.lib)
        self.fgetc = rte_ip_frag_fgetc.load(self.lib)
        self.getc = rte_ip_frag_getc.load(self.lib)
        self.getchar = rte_ip_frag_getchar.load(self.lib)
        self.getc_unlocked = rte_ip_frag_getc_unlocked.load(self.lib)
        self.getchar_unlocked = rte_ip_frag_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = rte_ip_frag_fgetc_unlocked.load(self.lib)
        self.fputc = rte_ip_frag_fputc.load(self.lib)
        self.putc = rte_ip_frag_putc.load(self.lib)
        self.putchar = rte_ip_frag_putchar.load(self.lib)
        self.fputc_unlocked = rte_ip_frag_fputc_unlocked.load(self.lib)
        self.putc_unlocked = rte_ip_frag_putc_unlocked.load(self.lib)
        self.putchar_unlocked = rte_ip_frag_putchar_unlocked.load(self.lib)
        self.getw = rte_ip_frag_getw.load(self.lib)
        self.putw = rte_ip_frag_putw.load(self.lib)
        self.fgets = rte_ip_frag_fgets.load(self.lib)
        self.getdelim = rte_ip_frag_getdelim.load(self.lib)
        self.getline = rte_ip_frag_getline.load(self.lib)
        self.fputs = rte_ip_frag_fputs.load(self.lib)
        self.puts = rte_ip_frag_puts.load(self.lib)
        self.ungetc = rte_ip_frag_ungetc.load(self.lib)
        self.fread = rte_ip_frag_fread.load(self.lib)
        self.fwrite = rte_ip_frag_fwrite.load(self.lib)
        self.fread_unlocked = rte_ip_frag_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = rte_ip_frag_fwrite_unlocked.load(self.lib)
        self.fseek = rte_ip_frag_fseek.load(self.lib)
        self.ftell = rte_ip_frag_ftell.load(self.lib)
        self.rewind = rte_ip_frag_rewind.load(self.lib)
        self.fseeko = rte_ip_frag_fseeko.load(self.lib)
        self.ftello = rte_ip_frag_ftello.load(self.lib)
        self.fgetpos = rte_ip_frag_fgetpos.load(self.lib)
        self.fsetpos = rte_ip_frag_fsetpos.load(self.lib)
        self.clearerr = rte_ip_frag_clearerr.load(self.lib)
        self.feof = rte_ip_frag_feof.load(self.lib)
        self.ferror = rte_ip_frag_ferror.load(self.lib)
        self.clearerr_unlocked = rte_ip_frag_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = rte_ip_frag_feof_unlocked.load(self.lib)
        self.ferror_unlocked = rte_ip_frag_ferror_unlocked.load(self.lib)
        self.perror = rte_ip_frag_perror.load(self.lib)
        self.fileno = rte_ip_frag_fileno.load(self.lib)
        self.fileno_unlocked = rte_ip_frag_fileno_unlocked.load(self.lib)
        self.pclose = rte_ip_frag_pclose.load(self.lib)
        self.popen = rte_ip_frag_popen.load(self.lib)
        self.ctermid = rte_ip_frag_ctermid.load(self.lib)
        self.flockfile = rte_ip_frag_flockfile.load(self.lib)
        self.ftrylockfile = rte_ip_frag_ftrylockfile.load(self.lib)
        self.funlockfile = rte_ip_frag_funlockfile.load(self.lib)
        self.alloca = rte_ip_frag_alloca.load(self.lib)
        self.sched_setparam = rte_ip_frag_sched_setparam.load(self.lib)
        self.sched_getparam = rte_ip_frag_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_ip_frag_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_ip_frag_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_ip_frag_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_ip_frag_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_ip_frag_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_ip_frag_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_ip_frag_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_ip_frag_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_ip_frag_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_ip_frag_rte_exit.load(self.lib)
        self.rte_openlog_stream = rte_ip_frag_rte_openlog_stream.load(self.lib)
        self.rte_log_get_stream = rte_ip_frag_rte_log_get_stream.load(self.lib)
        self.rte_log_set_global_level = rte_ip_frag_rte_log_set_global_level.load(self.lib)
        self.rte_log_get_global_level = rte_ip_frag_rte_log_get_global_level.load(self.lib)
        self.rte_log_get_level = rte_ip_frag_rte_log_get_level.load(self.lib)
        self.rte_log_can_log = rte_ip_frag_rte_log_can_log.load(self.lib)
        self.rte_log_set_level_pattern = rte_ip_frag_rte_log_set_level_pattern.load(self.lib)
        self.rte_log_set_level_regexp = rte_ip_frag_rte_log_set_level_regexp.load(self.lib)
        self.rte_log_set_level = rte_ip_frag_rte_log_set_level.load(self.lib)
        self.rte_log_cur_msg_loglevel = rte_ip_frag_rte_log_cur_msg_loglevel.load(self.lib)
        self.rte_log_cur_msg_logtype = rte_ip_frag_rte_log_cur_msg_logtype.load(self.lib)
        self.rte_log_register = rte_ip_frag_rte_log_register.load(self.lib)
        self.rte_log_register_type_and_pick_level = rte_ip_frag_rte_log_register_type_and_pick_level.load(self.lib)
        self.rte_log_list_types = rte_ip_frag_rte_log_list_types.load(self.lib)
        self.rte_log_dump = rte_ip_frag_rte_log_dump.load(self.lib)
        self.rte_log = rte_ip_frag_rte_log.load(self.lib)
        self.rte_vlog = rte_ip_frag_rte_vlog.load(self.lib)
        self.rte_dump_stack = rte_ip_frag_rte_dump_stack.load(self.lib)
        self.rte_bit_relaxed_get32 = rte_ip_frag_rte_bit_relaxed_get32.load(self.lib)
        self.rte_bit_relaxed_set32 = rte_ip_frag_rte_bit_relaxed_set32.load(self.lib)
        self.rte_bit_relaxed_clear32 = rte_ip_frag_rte_bit_relaxed_clear32.load(self.lib)
        self.rte_bit_relaxed_test_and_set32 = rte_ip_frag_rte_bit_relaxed_test_and_set32.load(self.lib)
        self.rte_bit_relaxed_test_and_clear32 = rte_ip_frag_rte_bit_relaxed_test_and_clear32.load(self.lib)
        self.rte_bit_relaxed_get64 = rte_ip_frag_rte_bit_relaxed_get64.load(self.lib)
        self.rte_bit_relaxed_set64 = rte_ip_frag_rte_bit_relaxed_set64.load(self.lib)
        self.rte_bit_relaxed_clear64 = rte_ip_frag_rte_bit_relaxed_clear64.load(self.lib)
        self.rte_bit_relaxed_test_and_set64 = rte_ip_frag_rte_bit_relaxed_test_and_set64.load(self.lib)
        self.rte_bit_relaxed_test_and_clear64 = rte_ip_frag_rte_bit_relaxed_test_and_clear64.load(self.lib)
        self.rte_clz32 = rte_ip_frag_rte_clz32.load(self.lib)
        self.rte_clz64 = rte_ip_frag_rte_clz64.load(self.lib)
        self.rte_ctz32 = rte_ip_frag_rte_ctz32.load(self.lib)
        self.rte_ctz64 = rte_ip_frag_rte_ctz64.load(self.lib)
        self.rte_popcount32 = rte_ip_frag_rte_popcount32.load(self.lib)
        self.rte_popcount64 = rte_ip_frag_rte_popcount64.load(self.lib)
        self.rte_ffs32 = rte_ip_frag_rte_ffs32.load(self.lib)
        self.rte_ffs64 = rte_ip_frag_rte_ffs64.load(self.lib)
        self.rte_combine32ms1b = rte_ip_frag_rte_combine32ms1b.load(self.lib)
        self.rte_combine64ms1b = rte_ip_frag_rte_combine64ms1b.load(self.lib)
        self.rte_bsf32 = rte_ip_frag_rte_bsf32.load(self.lib)
        self.rte_bsf32_safe = rte_ip_frag_rte_bsf32_safe.load(self.lib)
        self.rte_bsf64 = rte_ip_frag_rte_bsf64.load(self.lib)
        self.rte_bsf64_safe = rte_ip_frag_rte_bsf64_safe.load(self.lib)
        self.rte_fls_u32 = rte_ip_frag_rte_fls_u32.load(self.lib)
        self.rte_fls_u64 = rte_ip_frag_rte_fls_u64.load(self.lib)
        self.rte_is_power_of_2 = rte_ip_frag_rte_is_power_of_2.load(self.lib)
        self.rte_align32pow2 = rte_ip_frag_rte_align32pow2.load(self.lib)
        self.rte_align32prevpow2 = rte_ip_frag_rte_align32prevpow2.load(self.lib)
        self.rte_align64pow2 = rte_ip_frag_rte_align64pow2.load(self.lib)
        self.rte_align64prevpow2 = rte_ip_frag_rte_align64prevpow2.load(self.lib)
        self.rte_log2_u32 = rte_ip_frag_rte_log2_u32.load(self.lib)
        self.rte_log2_u64 = rte_ip_frag_rte_log2_u64.load(self.lib)
        self.rte_atomic_thread_fence = rte_ip_frag_rte_atomic_thread_fence.load(self.lib)
        self.rte_atomic16_cmpset = rte_ip_frag_rte_atomic16_cmpset.load(self.lib)
        self.rte_atomic16_exchange = rte_ip_frag_rte_atomic16_exchange.load(self.lib)
        self.rte_atomic16_init = rte_ip_frag_rte_atomic16_init.load(self.lib)
        self.rte_atomic16_read = rte_ip_frag_rte_atomic16_read.load(self.lib)
        self.rte_atomic16_set = rte_ip_frag_rte_atomic16_set.load(self.lib)
        self.rte_atomic16_add = rte_ip_frag_rte_atomic16_add.load(self.lib)
        self.rte_atomic16_sub = rte_ip_frag_rte_atomic16_sub.load(self.lib)
        self.rte_atomic16_inc = rte_ip_frag_rte_atomic16_inc.load(self.lib)
        self.rte_atomic16_dec = rte_ip_frag_rte_atomic16_dec.load(self.lib)
        self.rte_atomic16_add_return = rte_ip_frag_rte_atomic16_add_return.load(self.lib)
        self.rte_atomic16_sub_return = rte_ip_frag_rte_atomic16_sub_return.load(self.lib)
        self.rte_atomic16_inc_and_test = rte_ip_frag_rte_atomic16_inc_and_test.load(self.lib)
        self.rte_atomic16_dec_and_test = rte_ip_frag_rte_atomic16_dec_and_test.load(self.lib)
        self.rte_atomic16_test_and_set = rte_ip_frag_rte_atomic16_test_and_set.load(self.lib)
        self.rte_atomic16_clear = rte_ip_frag_rte_atomic16_clear.load(self.lib)
        self.rte_atomic32_cmpset = rte_ip_frag_rte_atomic32_cmpset.load(self.lib)
        self.rte_atomic32_exchange = rte_ip_frag_rte_atomic32_exchange.load(self.lib)
        self.rte_atomic32_init = rte_ip_frag_rte_atomic32_init.load(self.lib)
        self.rte_atomic32_read = rte_ip_frag_rte_atomic32_read.load(self.lib)
        self.rte_atomic32_set = rte_ip_frag_rte_atomic32_set.load(self.lib)
        self.rte_atomic32_add = rte_ip_frag_rte_atomic32_add.load(self.lib)
        self.rte_atomic32_sub = rte_ip_frag_rte_atomic32_sub.load(self.lib)
        self.rte_atomic32_inc = rte_ip_frag_rte_atomic32_inc.load(self.lib)
        self.rte_atomic32_dec = rte_ip_frag_rte_atomic32_dec.load(self.lib)
        self.rte_atomic32_add_return = rte_ip_frag_rte_atomic32_add_return.load(self.lib)
        self.rte_atomic32_sub_return = rte_ip_frag_rte_atomic32_sub_return.load(self.lib)
        self.rte_atomic32_inc_and_test = rte_ip_frag_rte_atomic32_inc_and_test.load(self.lib)
        self.rte_atomic32_dec_and_test = rte_ip_frag_rte_atomic32_dec_and_test.load(self.lib)
        self.rte_atomic32_test_and_set = rte_ip_frag_rte_atomic32_test_and_set.load(self.lib)
        self.rte_atomic32_clear = rte_ip_frag_rte_atomic32_clear.load(self.lib)
        self.rte_atomic64_cmpset = rte_ip_frag_rte_atomic64_cmpset.load(self.lib)
        self.rte_atomic64_exchange = rte_ip_frag_rte_atomic64_exchange.load(self.lib)
        self.rte_atomic64_init = rte_ip_frag_rte_atomic64_init.load(self.lib)
        self.rte_atomic64_read = rte_ip_frag_rte_atomic64_read.load(self.lib)
        self.rte_atomic64_set = rte_ip_frag_rte_atomic64_set.load(self.lib)
        self.rte_atomic64_add = rte_ip_frag_rte_atomic64_add.load(self.lib)
        self.rte_atomic64_sub = rte_ip_frag_rte_atomic64_sub.load(self.lib)
        self.rte_atomic64_inc = rte_ip_frag_rte_atomic64_inc.load(self.lib)
        self.rte_atomic64_dec = rte_ip_frag_rte_atomic64_dec.load(self.lib)
        self.rte_atomic64_add_return = rte_ip_frag_rte_atomic64_add_return.load(self.lib)
        self.rte_atomic64_sub_return = rte_ip_frag_rte_atomic64_sub_return.load(self.lib)
        self.rte_atomic64_inc_and_test = rte_ip_frag_rte_atomic64_inc_and_test.load(self.lib)
        self.rte_atomic64_dec_and_test = rte_ip_frag_rte_atomic64_dec_and_test.load(self.lib)
        self.rte_atomic64_test_and_set = rte_ip_frag_rte_atomic64_test_and_set.load(self.lib)
        self.rte_atomic64_clear = rte_ip_frag_rte_atomic64_clear.load(self.lib)
        self.rte_atomic128_cmp_exchange = rte_ip_frag_rte_atomic128_cmp_exchange.load(self.lib)
        self.rte_pause = rte_ip_frag_rte_pause.load(self.lib)
        self.rte_wait_until_equal_16 = rte_ip_frag_rte_wait_until_equal_16.load(self.lib)
        self.rte_wait_until_equal_32 = rte_ip_frag_rte_wait_until_equal_32.load(self.lib)
        self.rte_wait_until_equal_64 = rte_ip_frag_rte_wait_until_equal_64.load(self.lib)
        self.rte_rwlock_init = rte_ip_frag_rte_rwlock_init.load(self.lib)
        self.rte_rwlock_read_lock = rte_ip_frag_rte_rwlock_read_lock.load(self.lib)
        self.rte_rwlock_read_trylock = rte_ip_frag_rte_rwlock_read_trylock.load(self.lib)
        self.rte_rwlock_read_unlock = rte_ip_frag_rte_rwlock_read_unlock.load(self.lib)
        self.rte_rwlock_write_trylock = rte_ip_frag_rte_rwlock_write_trylock.load(self.lib)
        self.rte_rwlock_write_lock = rte_ip_frag_rte_rwlock_write_lock.load(self.lib)
        self.rte_rwlock_write_unlock = rte_ip_frag_rte_rwlock_write_unlock.load(self.lib)
        self.rte_rwlock_write_is_locked = rte_ip_frag_rte_rwlock_write_is_locked.load(self.lib)
        self.rte_rwlock_read_lock_tm = rte_ip_frag_rte_rwlock_read_lock_tm.load(self.lib)
        self.rte_rwlock_read_unlock_tm = rte_ip_frag_rte_rwlock_read_unlock_tm.load(self.lib)
        self.rte_rwlock_write_lock_tm = rte_ip_frag_rte_rwlock_write_lock_tm.load(self.lib)
        self.rte_rwlock_write_unlock_tm = rte_ip_frag_rte_rwlock_write_unlock_tm.load(self.lib)
        self.clock = rte_ip_frag_clock.load(self.lib)
        self.time = rte_ip_frag_time.load(self.lib)
        self.difftime = rte_ip_frag_difftime.load(self.lib)
        self.mktime = rte_ip_frag_mktime.load(self.lib)
        self.strftime = rte_ip_frag_strftime.load(self.lib)
        self.strftime_l = rte_ip_frag_strftime_l.load(self.lib)
        self.gmtime = rte_ip_frag_gmtime.load(self.lib)
        self.localtime = rte_ip_frag_localtime.load(self.lib)
        self.gmtime_r = rte_ip_frag_gmtime_r.load(self.lib)
        self.localtime_r = rte_ip_frag_localtime_r.load(self.lib)
        self.asctime = rte_ip_frag_asctime.load(self.lib)
        self.ctime = rte_ip_frag_ctime.load(self.lib)
        self.asctime_r = rte_ip_frag_asctime_r.load(self.lib)
        self.ctime_r = rte_ip_frag_ctime_r.load(self.lib)
        self.tzset = rte_ip_frag_tzset.load(self.lib)
        self.timegm = rte_ip_frag_timegm.load(self.lib)
        self.timelocal = rte_ip_frag_timelocal.load(self.lib)
        self.dysize = rte_ip_frag_dysize.load(self.lib)
        self.nanosleep = rte_ip_frag_nanosleep.load(self.lib)
        self.clock_getres = rte_ip_frag_clock_getres.load(self.lib)
        self.clock_gettime = rte_ip_frag_clock_gettime.load(self.lib)
        self.clock_settime = rte_ip_frag_clock_settime.load(self.lib)
        self.clock_nanosleep = rte_ip_frag_clock_nanosleep.load(self.lib)
        self.clock_getcpuclockid = rte_ip_frag_clock_getcpuclockid.load(self.lib)
        self.timer_create = rte_ip_frag_timer_create.load(self.lib)
        self.timer_delete = rte_ip_frag_timer_delete.load(self.lib)
        self.timer_settime = rte_ip_frag_timer_settime.load(self.lib)
        self.timer_gettime = rte_ip_frag_timer_gettime.load(self.lib)
        self.timer_getoverrun = rte_ip_frag_timer_getoverrun.load(self.lib)
        self.timespec_get = rte_ip_frag_timespec_get.load(self.lib)
        self.memcpy = rte_ip_frag_memcpy.load(self.lib)
        self.memmove = rte_ip_frag_memmove.load(self.lib)
        self.memccpy = rte_ip_frag_memccpy.load(self.lib)
        self.memset = rte_ip_frag_memset.load(self.lib)
        self.memcmp = rte_ip_frag_memcmp.load(self.lib)
        self.memchr = rte_ip_frag_memchr.load(self.lib)
        self.strcpy = rte_ip_frag_strcpy.load(self.lib)
        self.strncpy = rte_ip_frag_strncpy.load(self.lib)
        self.strcat = rte_ip_frag_strcat.load(self.lib)
        self.strncat = rte_ip_frag_strncat.load(self.lib)
        self.strcmp = rte_ip_frag_strcmp.load(self.lib)
        self.strncmp = rte_ip_frag_strncmp.load(self.lib)
        self.strcoll = rte_ip_frag_strcoll.load(self.lib)
        self.strxfrm = rte_ip_frag_strxfrm.load(self.lib)
        self.strcoll_l = rte_ip_frag_strcoll_l.load(self.lib)
        self.strxfrm_l = rte_ip_frag_strxfrm_l.load(self.lib)
        self.strdup = rte_ip_frag_strdup.load(self.lib)
        self.strndup = rte_ip_frag_strndup.load(self.lib)
        self.strchr = rte_ip_frag_strchr.load(self.lib)
        self.strrchr = rte_ip_frag_strrchr.load(self.lib)
        self.strcspn = rte_ip_frag_strcspn.load(self.lib)
        self.strspn = rte_ip_frag_strspn.load(self.lib)
        self.strpbrk = rte_ip_frag_strpbrk.load(self.lib)
        self.strstr = rte_ip_frag_strstr.load(self.lib)
        self.strtok = rte_ip_frag_strtok.load(self.lib)
        self.strtok_r = rte_ip_frag_strtok_r.load(self.lib)
        self.strlen = rte_ip_frag_strlen.load(self.lib)
        self.strnlen = rte_ip_frag_strnlen.load(self.lib)
        self.strerror = rte_ip_frag_strerror.load(self.lib)
        self.strerror_r = rte_ip_frag_strerror_r.load(self.lib)
        self.strerror_l = rte_ip_frag_strerror_l.load(self.lib)
        self.bcmp = rte_ip_frag_bcmp.load(self.lib)
        self.bcopy = rte_ip_frag_bcopy.load(self.lib)
        self.bzero = rte_ip_frag_bzero.load(self.lib)
        self.index = rte_ip_frag_index.load(self.lib)
        self.rindex = rte_ip_frag_rindex.load(self.lib)
        self.ffs = rte_ip_frag_ffs.load(self.lib)
        self.ffsl = rte_ip_frag_ffsl.load(self.lib)
        self.ffsll = rte_ip_frag_ffsll.load(self.lib)
        self.strcasecmp = rte_ip_frag_strcasecmp.load(self.lib)
        self.strncasecmp = rte_ip_frag_strncasecmp.load(self.lib)
        self.strcasecmp_l = rte_ip_frag_strcasecmp_l.load(self.lib)
        self.strncasecmp_l = rte_ip_frag_strncasecmp_l.load(self.lib)
        self.explicit_bzero = rte_ip_frag_explicit_bzero.load(self.lib)
        self.strsep = rte_ip_frag_strsep.load(self.lib)
        self.strsignal = rte_ip_frag_strsignal.load(self.lib)
        self.stpcpy = rte_ip_frag_stpcpy.load(self.lib)
        self.stpncpy = rte_ip_frag_stpncpy.load(self.lib)
        self.rte_uuid_is_null = rte_ip_frag_rte_uuid_is_null.load(self.lib)
        self.rte_uuid_copy = rte_ip_frag_rte_uuid_copy.load(self.lib)
        self.rte_uuid_compare = rte_ip_frag_rte_uuid_compare.load(self.lib)
        self.rte_uuid_parse = rte_ip_frag_rte_uuid_parse.load(self.lib)
        self.rte_uuid_unparse = rte_ip_frag_rte_uuid_unparse.load(self.lib)
        self.rte_eal_process_type = rte_ip_frag_rte_eal_process_type.load(self.lib)
        self.rte_eal_iopl_init = rte_ip_frag_rte_eal_iopl_init.load(self.lib)
        self.rte_eal_init = rte_ip_frag_rte_eal_init.load(self.lib)
        self.rte_eal_cleanup = rte_ip_frag_rte_eal_cleanup.load(self.lib)
        self.rte_eal_primary_proc_alive = rte_ip_frag_rte_eal_primary_proc_alive.load(self.lib)
        self.rte_mp_disable = rte_ip_frag_rte_mp_disable.load(self.lib)
        self.rte_mp_action_register = rte_ip_frag_rte_mp_action_register.load(self.lib)
        self.rte_mp_action_unregister = rte_ip_frag_rte_mp_action_unregister.load(self.lib)
        self.rte_mp_sendmsg = rte_ip_frag_rte_mp_sendmsg.load(self.lib)
        self.rte_mp_request_sync = rte_ip_frag_rte_mp_request_sync.load(self.lib)
        self.rte_mp_request_async = rte_ip_frag_rte_mp_request_async.load(self.lib)
        self.rte_set_application_usage_hook = rte_ip_frag_rte_set_application_usage_hook.load(self.lib)
        self.rte_eal_has_hugepages = rte_ip_frag_rte_eal_has_hugepages.load(self.lib)
        self.rte_eal_has_pci = rte_ip_frag_rte_eal_has_pci.load(self.lib)
        self.rte_eal_create_uio_dev = rte_ip_frag_rte_eal_create_uio_dev.load(self.lib)
        self.rte_eal_vfio_intr_mode = rte_ip_frag_rte_eal_vfio_intr_mode.load(self.lib)
        self.rte_eal_vfio_get_vf_token = rte_ip_frag_rte_eal_vfio_get_vf_token.load(self.lib)
        self.rte_sys_gettid = rte_ip_frag_rte_sys_gettid.load(self.lib)
        self.rte_gettid = rte_ip_frag_rte_gettid.load(self.lib)
        self.rte_eal_get_baseaddr = rte_ip_frag_rte_eal_get_baseaddr.load(self.lib)
        self.rte_eal_iova_mode = rte_ip_frag_rte_eal_iova_mode.load(self.lib)
        self.rte_eal_mbuf_user_pool_ops = rte_ip_frag_rte_eal_mbuf_user_pool_ops.load(self.lib)
        self.rte_eal_get_runtime_dir = rte_ip_frag_rte_eal_get_runtime_dir.load(self.lib)
        self.rte_eal_parse_coremask = rte_ip_frag_rte_eal_parse_coremask.load(self.lib)
        self.rte_eal_remote_launch = rte_ip_frag_rte_eal_remote_launch.load(self.lib)
        self.rte_eal_mp_remote_launch = rte_ip_frag_rte_eal_mp_remote_launch.load(self.lib)
        self.rte_eal_get_lcore_state = rte_ip_frag_rte_eal_get_lcore_state.load(self.lib)
        self.rte_eal_wait_lcore = rte_ip_frag_rte_eal_wait_lcore.load(self.lib)
        self.rte_eal_mp_wait_lcore = rte_ip_frag_rte_eal_mp_wait_lcore.load(self.lib)
        self.rte_thread_create = rte_ip_frag_rte_thread_create.load(self.lib)
        self.rte_thread_create_control = rte_ip_frag_rte_thread_create_control.load(self.lib)
        self.rte_thread_create_internal_control = rte_ip_frag_rte_thread_create_internal_control.load(self.lib)
        self.rte_thread_join = rte_ip_frag_rte_thread_join.load(self.lib)
        self.rte_thread_detach = rte_ip_frag_rte_thread_detach.load(self.lib)
        self.rte_thread_self = rte_ip_frag_rte_thread_self.load(self.lib)
        self.rte_thread_set_name = rte_ip_frag_rte_thread_set_name.load(self.lib)
        self.rte_thread_set_prefixed_name = rte_ip_frag_rte_thread_set_prefixed_name.load(self.lib)
        self.rte_thread_equal = rte_ip_frag_rte_thread_equal.load(self.lib)
        self.rte_thread_attr_init = rte_ip_frag_rte_thread_attr_init.load(self.lib)
        self.rte_thread_attr_set_priority = rte_ip_frag_rte_thread_attr_set_priority.load(self.lib)
        self.rte_thread_get_priority = rte_ip_frag_rte_thread_get_priority.load(self.lib)
        self.rte_thread_set_priority = rte_ip_frag_rte_thread_set_priority.load(self.lib)
        self.rte_thread_key_create = rte_ip_frag_rte_thread_key_create.load(self.lib)
        self.rte_thread_key_delete = rte_ip_frag_rte_thread_key_delete.load(self.lib)
        self.rte_thread_value_set = rte_ip_frag_rte_thread_value_set.load(self.lib)
        self.rte_thread_value_get = rte_ip_frag_rte_thread_value_get.load(self.lib)
        self.rte_eal_lcore_role = rte_ip_frag_rte_eal_lcore_role.load(self.lib)
        self.rte_lcore_has_role = rte_ip_frag_rte_lcore_has_role.load(self.lib)
        self.rte_lcore_id = rte_ip_frag_rte_lcore_id.load(self.lib)
        self.rte_get_main_lcore = rte_ip_frag_rte_get_main_lcore.load(self.lib)
        self.rte_lcore_count = rte_ip_frag_rte_lcore_count.load(self.lib)
        self.rte_lcore_index = rte_ip_frag_rte_lcore_index.load(self.lib)
        self.rte_socket_id = rte_ip_frag_rte_socket_id.load(self.lib)
        self.rte_socket_count = rte_ip_frag_rte_socket_count.load(self.lib)
        self.rte_socket_id_by_idx = rte_ip_frag_rte_socket_id_by_idx.load(self.lib)
        self.rte_lcore_to_socket_id = rte_ip_frag_rte_lcore_to_socket_id.load(self.lib)
        self.rte_lcore_to_cpu_id = rte_ip_frag_rte_lcore_to_cpu_id.load(self.lib)
        self.rte_lcore_is_enabled = rte_ip_frag_rte_lcore_is_enabled.load(self.lib)
        self.rte_get_next_lcore = rte_ip_frag_rte_get_next_lcore.load(self.lib)
        self.rte_lcore_callback_register = rte_ip_frag_rte_lcore_callback_register.load(self.lib)
        self.rte_lcore_callback_unregister = rte_ip_frag_rte_lcore_callback_unregister.load(self.lib)
        self.rte_lcore_iterate = rte_ip_frag_rte_lcore_iterate.load(self.lib)
        self.rte_lcore_register_usage_cb = rte_ip_frag_rte_lcore_register_usage_cb.load(self.lib)
        self.rte_lcore_dump = rte_ip_frag_rte_lcore_dump.load(self.lib)
        self.rte_thread_register = rte_ip_frag_rte_thread_register.load(self.lib)
        self.rte_thread_unregister = rte_ip_frag_rte_thread_unregister.load(self.lib)
        self.rte_spinlock_init = rte_ip_frag_rte_spinlock_init.load(self.lib)
        self.rte_spinlock_lock = rte_ip_frag_rte_spinlock_lock.load(self.lib)
        self.rte_spinlock_unlock = rte_ip_frag_rte_spinlock_unlock.load(self.lib)
        self.rte_spinlock_trylock = rte_ip_frag_rte_spinlock_trylock.load(self.lib)
        self.rte_spinlock_is_locked = rte_ip_frag_rte_spinlock_is_locked.load(self.lib)
        self.rte_tm_supported = rte_ip_frag_rte_tm_supported.load(self.lib)
        self.rte_spinlock_lock_tm = rte_ip_frag_rte_spinlock_lock_tm.load(self.lib)
        self.rte_spinlock_unlock_tm = rte_ip_frag_rte_spinlock_unlock_tm.load(self.lib)
        self.rte_spinlock_trylock_tm = rte_ip_frag_rte_spinlock_trylock_tm.load(self.lib)
        self.rte_spinlock_recursive_init = rte_ip_frag_rte_spinlock_recursive_init.load(self.lib)
        self.rte_spinlock_recursive_lock = rte_ip_frag_rte_spinlock_recursive_lock.load(self.lib)
        self.rte_spinlock_recursive_unlock = rte_ip_frag_rte_spinlock_recursive_unlock.load(self.lib)
        self.rte_spinlock_recursive_trylock = rte_ip_frag_rte_spinlock_recursive_trylock.load(self.lib)
        self.rte_spinlock_recursive_lock_tm = rte_ip_frag_rte_spinlock_recursive_lock_tm.load(self.lib)
        self.rte_spinlock_recursive_unlock_tm = rte_ip_frag_rte_spinlock_recursive_unlock_tm.load(self.lib)
        self.rte_spinlock_recursive_trylock_tm = rte_ip_frag_rte_spinlock_recursive_trylock_tm.load(self.lib)
        self.rte_mcfg_mem_get_lock = rte_ip_frag_rte_mcfg_mem_get_lock.load(self.lib)
        self.rte_mcfg_tailq_get_lock = rte_ip_frag_rte_mcfg_tailq_get_lock.load(self.lib)
        self.rte_mcfg_mempool_get_lock = rte_ip_frag_rte_mcfg_mempool_get_lock.load(self.lib)
        self.rte_mcfg_timer_get_lock = rte_ip_frag_rte_mcfg_timer_get_lock.load(self.lib)
        self.rte_mcfg_ethdev_get_lock = rte_ip_frag_rte_mcfg_ethdev_get_lock.load(self.lib)
        self.rte_mcfg_mem_read_lock = rte_ip_frag_rte_mcfg_mem_read_lock.load(self.lib)
        self.rte_mcfg_mem_read_unlock = rte_ip_frag_rte_mcfg_mem_read_unlock.load(self.lib)
        self.rte_mcfg_mem_write_lock = rte_ip_frag_rte_mcfg_mem_write_lock.load(self.lib)
        self.rte_mcfg_mem_write_unlock = rte_ip_frag_rte_mcfg_mem_write_unlock.load(self.lib)
        self.rte_mcfg_tailq_read_lock = rte_ip_frag_rte_mcfg_tailq_read_lock.load(self.lib)
        self.rte_mcfg_tailq_read_unlock = rte_ip_frag_rte_mcfg_tailq_read_unlock.load(self.lib)
        self.rte_mcfg_tailq_write_lock = rte_ip_frag_rte_mcfg_tailq_write_lock.load(self.lib)
        self.rte_mcfg_tailq_write_unlock = rte_ip_frag_rte_mcfg_tailq_write_unlock.load(self.lib)
        self.rte_mcfg_mempool_read_lock = rte_ip_frag_rte_mcfg_mempool_read_lock.load(self.lib)
        self.rte_mcfg_mempool_read_unlock = rte_ip_frag_rte_mcfg_mempool_read_unlock.load(self.lib)
        self.rte_mcfg_mempool_write_lock = rte_ip_frag_rte_mcfg_mempool_write_lock.load(self.lib)
        self.rte_mcfg_mempool_write_unlock = rte_ip_frag_rte_mcfg_mempool_write_unlock.load(self.lib)
        self.rte_mcfg_timer_lock = rte_ip_frag_rte_mcfg_timer_lock.load(self.lib)
        self.rte_mcfg_timer_unlock = rte_ip_frag_rte_mcfg_timer_unlock.load(self.lib)
        self.rte_mcfg_get_single_file_segments = rte_ip_frag_rte_mcfg_get_single_file_segments.load(self.lib)
        self.rte_fbarray_init = rte_ip_frag_rte_fbarray_init.load(self.lib)
        self.rte_fbarray_attach = rte_ip_frag_rte_fbarray_attach.load(self.lib)
        self.rte_fbarray_destroy = rte_ip_frag_rte_fbarray_destroy.load(self.lib)
        self.rte_fbarray_detach = rte_ip_frag_rte_fbarray_detach.load(self.lib)
        self.rte_fbarray_get = rte_ip_frag_rte_fbarray_get.load(self.lib)
        self.rte_fbarray_find_idx = rte_ip_frag_rte_fbarray_find_idx.load(self.lib)
        self.rte_fbarray_set_used = rte_ip_frag_rte_fbarray_set_used.load(self.lib)
        self.rte_fbarray_set_free = rte_ip_frag_rte_fbarray_set_free.load(self.lib)
        self.rte_fbarray_is_used = rte_ip_frag_rte_fbarray_is_used.load(self.lib)
        self.rte_fbarray_find_next_free = rte_ip_frag_rte_fbarray_find_next_free.load(self.lib)
        self.rte_fbarray_find_next_used = rte_ip_frag_rte_fbarray_find_next_used.load(self.lib)
        self.rte_fbarray_find_next_n_free = rte_ip_frag_rte_fbarray_find_next_n_free.load(self.lib)
        self.rte_fbarray_find_next_n_used = rte_ip_frag_rte_fbarray_find_next_n_used.load(self.lib)
        self.rte_fbarray_find_contig_free = rte_ip_frag_rte_fbarray_find_contig_free.load(self.lib)
        self.rte_fbarray_find_contig_used = rte_ip_frag_rte_fbarray_find_contig_used.load(self.lib)
        self.rte_fbarray_find_prev_free = rte_ip_frag_rte_fbarray_find_prev_free.load(self.lib)
        self.rte_fbarray_find_prev_used = rte_ip_frag_rte_fbarray_find_prev_used.load(self.lib)
        self.rte_fbarray_find_prev_n_free = rte_ip_frag_rte_fbarray_find_prev_n_free.load(self.lib)
        self.rte_fbarray_find_prev_n_used = rte_ip_frag_rte_fbarray_find_prev_n_used.load(self.lib)
        self.rte_fbarray_find_rev_contig_free = rte_ip_frag_rte_fbarray_find_rev_contig_free.load(self.lib)
        self.rte_fbarray_find_rev_contig_used = rte_ip_frag_rte_fbarray_find_rev_contig_used.load(self.lib)
        self.rte_fbarray_find_biggest_free = rte_ip_frag_rte_fbarray_find_biggest_free.load(self.lib)
        self.rte_fbarray_find_biggest_used = rte_ip_frag_rte_fbarray_find_biggest_used.load(self.lib)
        self.rte_fbarray_find_rev_biggest_free = rte_ip_frag_rte_fbarray_find_rev_biggest_free.load(self.lib)
        self.rte_fbarray_find_rev_biggest_used = rte_ip_frag_rte_fbarray_find_rev_biggest_used.load(self.lib)
        self.rte_fbarray_dump_metadata = rte_ip_frag_rte_fbarray_dump_metadata.load(self.lib)
        self.rte_mem_lock_page = rte_ip_frag_rte_mem_lock_page.load(self.lib)
        self.rte_mem_virt2phy = rte_ip_frag_rte_mem_virt2phy.load(self.lib)
        self.rte_mem_virt2iova = rte_ip_frag_rte_mem_virt2iova.load(self.lib)
        self.rte_mem_iova2virt = rte_ip_frag_rte_mem_iova2virt.load(self.lib)
        self.rte_mem_virt2memseg = rte_ip_frag_rte_mem_virt2memseg.load(self.lib)
        self.rte_mem_virt2memseg_list = rte_ip_frag_rte_mem_virt2memseg_list.load(self.lib)
        self.rte_memseg_walk = rte_ip_frag_rte_memseg_walk.load(self.lib)
        self.rte_memseg_contig_walk = rte_ip_frag_rte_memseg_contig_walk.load(self.lib)
        self.rte_memseg_list_walk = rte_ip_frag_rte_memseg_list_walk.load(self.lib)
        self.rte_memseg_walk_thread_unsafe = rte_ip_frag_rte_memseg_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_contig_walk_thread_unsafe = rte_ip_frag_rte_memseg_contig_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_list_walk_thread_unsafe = rte_ip_frag_rte_memseg_list_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_get_fd = rte_ip_frag_rte_memseg_get_fd.load(self.lib)
        self.rte_memseg_get_fd_thread_unsafe = rte_ip_frag_rte_memseg_get_fd_thread_unsafe.load(self.lib)
        self.rte_memseg_get_fd_offset = rte_ip_frag_rte_memseg_get_fd_offset.load(self.lib)
        self.rte_memseg_get_fd_offset_thread_unsafe = rte_ip_frag_rte_memseg_get_fd_offset_thread_unsafe.load(self.lib)
        self.rte_extmem_register = rte_ip_frag_rte_extmem_register.load(self.lib)
        self.rte_extmem_unregister = rte_ip_frag_rte_extmem_unregister.load(self.lib)
        self.rte_extmem_attach = rte_ip_frag_rte_extmem_attach.load(self.lib)
        self.rte_extmem_detach = rte_ip_frag_rte_extmem_detach.load(self.lib)
        self.rte_dump_physmem_layout = rte_ip_frag_rte_dump_physmem_layout.load(self.lib)
        self.rte_eal_get_physmem_size = rte_ip_frag_rte_eal_get_physmem_size.load(self.lib)
        self.rte_memory_get_nchannel = rte_ip_frag_rte_memory_get_nchannel.load(self.lib)
        self.rte_memory_get_nrank = rte_ip_frag_rte_memory_get_nrank.load(self.lib)
        self.rte_mem_check_dma_mask = rte_ip_frag_rte_mem_check_dma_mask.load(self.lib)
        self.rte_mem_check_dma_mask_thread_unsafe = rte_ip_frag_rte_mem_check_dma_mask_thread_unsafe.load(self.lib)
        self.rte_mem_set_dma_mask = rte_ip_frag_rte_mem_set_dma_mask.load(self.lib)
        self.rte_eal_using_phys_addrs = rte_ip_frag_rte_eal_using_phys_addrs.load(self.lib)
        self.rte_mem_event_callback_register = rte_ip_frag_rte_mem_event_callback_register.load(self.lib)
        self.rte_mem_event_callback_unregister = rte_ip_frag_rte_mem_event_callback_unregister.load(self.lib)
        self.rte_mem_alloc_validator_register = rte_ip_frag_rte_mem_alloc_validator_register.load(self.lib)
        self.rte_mem_alloc_validator_unregister = rte_ip_frag_rte_mem_alloc_validator_unregister.load(self.lib)
        self.rte_memzero_explicit = rte_ip_frag_rte_memzero_explicit.load(self.lib)
        self.rte_free = rte_ip_frag_rte_free.load(self.lib)
        self.rte_free_sensitive = rte_ip_frag_rte_free_sensitive.load(self.lib)
        self.rte_malloc = rte_ip_frag_rte_malloc.load(self.lib)
        self.rte_zmalloc = rte_ip_frag_rte_zmalloc.load(self.lib)
        self.rte_calloc = rte_ip_frag_rte_calloc.load(self.lib)
        self.rte_realloc = rte_ip_frag_rte_realloc.load(self.lib)
        self.rte_realloc_socket = rte_ip_frag_rte_realloc_socket.load(self.lib)
        self.rte_malloc_socket = rte_ip_frag_rte_malloc_socket.load(self.lib)
        self.rte_zmalloc_socket = rte_ip_frag_rte_zmalloc_socket.load(self.lib)
        self.rte_calloc_socket = rte_ip_frag_rte_calloc_socket.load(self.lib)
        self.rte_malloc_validate = rte_ip_frag_rte_malloc_validate.load(self.lib)
        self.rte_malloc_get_socket_stats = rte_ip_frag_rte_malloc_get_socket_stats.load(self.lib)
        self.rte_malloc_heap_memory_add = rte_ip_frag_rte_malloc_heap_memory_add.load(self.lib)
        self.rte_malloc_heap_memory_remove = rte_ip_frag_rte_malloc_heap_memory_remove.load(self.lib)
        self.rte_malloc_heap_memory_attach = rte_ip_frag_rte_malloc_heap_memory_attach.load(self.lib)
        self.rte_malloc_heap_memory_detach = rte_ip_frag_rte_malloc_heap_memory_detach.load(self.lib)
        self.rte_malloc_heap_create = rte_ip_frag_rte_malloc_heap_create.load(self.lib)
        self.rte_malloc_heap_destroy = rte_ip_frag_rte_malloc_heap_destroy.load(self.lib)
        self.rte_malloc_heap_get_socket = rte_ip_frag_rte_malloc_heap_get_socket.load(self.lib)
        self.rte_malloc_heap_socket_is_external = rte_ip_frag_rte_malloc_heap_socket_is_external.load(self.lib)
        self.rte_malloc_dump_stats = rte_ip_frag_rte_malloc_dump_stats.load(self.lib)
        self.rte_malloc_dump_heaps = rte_ip_frag_rte_malloc_dump_heaps.load(self.lib)
        self.rte_malloc_virt2iova = rte_ip_frag_rte_malloc_virt2iova.load(self.lib)
        self.select = rte_ip_frag_select.load(self.lib)
        self.pselect = rte_ip_frag_pselect.load(self.lib)
        self.socket = rte_ip_frag_socket.load(self.lib)
        self.socketpair = rte_ip_frag_socketpair.load(self.lib)
        self.bind = rte_ip_frag_bind.load(self.lib)
        self.getsockname = rte_ip_frag_getsockname.load(self.lib)
        self.connect = rte_ip_frag_connect.load(self.lib)
        self.getpeername = rte_ip_frag_getpeername.load(self.lib)
        self.send = rte_ip_frag_send.load(self.lib)
        self.recv = rte_ip_frag_recv.load(self.lib)
        self.sendto = rte_ip_frag_sendto.load(self.lib)
        self.recvfrom = rte_ip_frag_recvfrom.load(self.lib)
        self.sendmsg = rte_ip_frag_sendmsg.load(self.lib)
        self.recvmsg = rte_ip_frag_recvmsg.load(self.lib)
        self.getsockopt = rte_ip_frag_getsockopt.load(self.lib)
        self.setsockopt = rte_ip_frag_setsockopt.load(self.lib)
        self.listen = rte_ip_frag_listen.load(self.lib)
        self.accept = rte_ip_frag_accept.load(self.lib)
        self.shutdown = rte_ip_frag_shutdown.load(self.lib)
        self.sockatmark = rte_ip_frag_sockatmark.load(self.lib)
        self.isfdtype = rte_ip_frag_isfdtype.load(self.lib)
        self.ntohl = rte_ip_frag_ntohl.load(self.lib)
        self.ntohs = rte_ip_frag_ntohs.load(self.lib)
        self.htonl = rte_ip_frag_htonl.load(self.lib)
        self.htons = rte_ip_frag_htons.load(self.lib)
        self.bindresvport = rte_ip_frag_bindresvport.load(self.lib)
        self.bindresvport6 = rte_ip_frag_bindresvport6.load(self.lib)
        self.inet_addr = rte_ip_frag_inet_addr.load(self.lib)
        self.inet_lnaof = rte_ip_frag_inet_lnaof.load(self.lib)
        self.inet_makeaddr = rte_ip_frag_inet_makeaddr.load(self.lib)
        self.inet_netof = rte_ip_frag_inet_netof.load(self.lib)
        self.inet_network = rte_ip_frag_inet_network.load(self.lib)
        self.inet_ntoa = rte_ip_frag_inet_ntoa.load(self.lib)
        self.inet_pton = rte_ip_frag_inet_pton.load(self.lib)
        self.inet_ntop = rte_ip_frag_inet_ntop.load(self.lib)
        self.inet_aton = rte_ip_frag_inet_aton.load(self.lib)
        self.inet_neta = rte_ip_frag_inet_neta.load(self.lib)
        self.inet_net_ntop = rte_ip_frag_inet_net_ntop.load(self.lib)
        self.inet_net_pton = rte_ip_frag_inet_net_pton.load(self.lib)
        self.inet_nsap_addr = rte_ip_frag_inet_nsap_addr.load(self.lib)
        self.inet_nsap_ntoa = rte_ip_frag_inet_nsap_ntoa.load(self.lib)
        self.imaxabs = rte_ip_frag_imaxabs.load(self.lib)
        self.imaxdiv = rte_ip_frag_imaxdiv.load(self.lib)
        self.strtoimax = rte_ip_frag_strtoimax.load(self.lib)
        self.strtoumax = rte_ip_frag_strtoumax.load(self.lib)
        self.wcstoimax = rte_ip_frag_wcstoimax.load(self.lib)
        self.wcstoumax = rte_ip_frag_wcstoumax.load(self.lib)
        self.rte_constant_bswap16 = rte_ip_frag_rte_constant_bswap16.load(self.lib)
        self.rte_constant_bswap32 = rte_ip_frag_rte_constant_bswap32.load(self.lib)
        self.rte_constant_bswap64 = rte_ip_frag_rte_constant_bswap64.load(self.lib)
        self.rte_memzone_max_set = rte_ip_frag_rte_memzone_max_set.load(self.lib)
        self.rte_memzone_max_get = rte_ip_frag_rte_memzone_max_get.load(self.lib)
        self.rte_memzone_reserve = rte_ip_frag_rte_memzone_reserve.load(self.lib)
        self.rte_memzone_reserve_aligned = rte_ip_frag_rte_memzone_reserve_aligned.load(self.lib)
        self.rte_memzone_reserve_bounded = rte_ip_frag_rte_memzone_reserve_bounded.load(self.lib)
        self.rte_memzone_free = rte_ip_frag_rte_memzone_free.load(self.lib)
        self.rte_memzone_lookup = rte_ip_frag_rte_memzone_lookup.load(self.lib)
        self.rte_memzone_dump = rte_ip_frag_rte_memzone_dump.load(self.lib)
        self.rte_memzone_walk = rte_ip_frag_rte_memzone_walk.load(self.lib)
        self.rte_ring_get_memsize_elem = rte_ip_frag_rte_ring_get_memsize_elem.load(self.lib)
        self.rte_ring_create_elem = rte_ip_frag_rte_ring_create_elem.load(self.lib)
        self.rte_ring_mp_enqueue_bulk_elem = rte_ip_frag_rte_ring_mp_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_sp_enqueue_bulk_elem = rte_ip_frag_rte_ring_sp_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mp_hts_enqueue_bulk_elem = rte_ip_frag_rte_ring_mp_hts_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mc_hts_dequeue_bulk_elem = rte_ip_frag_rte_ring_mc_hts_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_mp_hts_enqueue_burst_elem = rte_ip_frag_rte_ring_mp_hts_enqueue_burst_elem.load(self.lib)
        self.rte_ring_mc_hts_dequeue_burst_elem = rte_ip_frag_rte_ring_mc_hts_dequeue_burst_elem.load(self.lib)
        self.rte_ring_mp_hts_enqueue_bulk = rte_ip_frag_rte_ring_mp_hts_enqueue_bulk.load(self.lib)
        self.rte_ring_mc_hts_dequeue_bulk = rte_ip_frag_rte_ring_mc_hts_dequeue_bulk.load(self.lib)
        self.rte_ring_mp_hts_enqueue_burst = rte_ip_frag_rte_ring_mp_hts_enqueue_burst.load(self.lib)
        self.rte_ring_mc_hts_dequeue_burst = rte_ip_frag_rte_ring_mc_hts_dequeue_burst.load(self.lib)
        self.rte_ring_mp_rts_enqueue_bulk_elem = rte_ip_frag_rte_ring_mp_rts_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mc_rts_dequeue_bulk_elem = rte_ip_frag_rte_ring_mc_rts_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_mp_rts_enqueue_burst_elem = rte_ip_frag_rte_ring_mp_rts_enqueue_burst_elem.load(self.lib)
        self.rte_ring_mc_rts_dequeue_burst_elem = rte_ip_frag_rte_ring_mc_rts_dequeue_burst_elem.load(self.lib)
        self.rte_ring_mp_rts_enqueue_bulk = rte_ip_frag_rte_ring_mp_rts_enqueue_bulk.load(self.lib)
        self.rte_ring_mc_rts_dequeue_bulk = rte_ip_frag_rte_ring_mc_rts_dequeue_bulk.load(self.lib)
        self.rte_ring_mp_rts_enqueue_burst = rte_ip_frag_rte_ring_mp_rts_enqueue_burst.load(self.lib)
        self.rte_ring_mc_rts_dequeue_burst = rte_ip_frag_rte_ring_mc_rts_dequeue_burst.load(self.lib)
        self.rte_ring_get_prod_htd_max = rte_ip_frag_rte_ring_get_prod_htd_max.load(self.lib)
        self.rte_ring_set_prod_htd_max = rte_ip_frag_rte_ring_set_prod_htd_max.load(self.lib)
        self.rte_ring_get_cons_htd_max = rte_ip_frag_rte_ring_get_cons_htd_max.load(self.lib)
        self.rte_ring_set_cons_htd_max = rte_ip_frag_rte_ring_set_cons_htd_max.load(self.lib)
        self.rte_ring_enqueue_bulk_elem = rte_ip_frag_rte_ring_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mp_enqueue_elem = rte_ip_frag_rte_ring_mp_enqueue_elem.load(self.lib)
        self.rte_ring_sp_enqueue_elem = rte_ip_frag_rte_ring_sp_enqueue_elem.load(self.lib)
        self.rte_ring_enqueue_elem = rte_ip_frag_rte_ring_enqueue_elem.load(self.lib)
        self.rte_ring_mc_dequeue_bulk_elem = rte_ip_frag_rte_ring_mc_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_sc_dequeue_bulk_elem = rte_ip_frag_rte_ring_sc_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_dequeue_bulk_elem = rte_ip_frag_rte_ring_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_mc_dequeue_elem = rte_ip_frag_rte_ring_mc_dequeue_elem.load(self.lib)
        self.rte_ring_sc_dequeue_elem = rte_ip_frag_rte_ring_sc_dequeue_elem.load(self.lib)
        self.rte_ring_dequeue_elem = rte_ip_frag_rte_ring_dequeue_elem.load(self.lib)
        self.rte_ring_mp_enqueue_burst_elem = rte_ip_frag_rte_ring_mp_enqueue_burst_elem.load(self.lib)
        self.rte_ring_sp_enqueue_burst_elem = rte_ip_frag_rte_ring_sp_enqueue_burst_elem.load(self.lib)
        self.rte_ring_enqueue_burst_elem = rte_ip_frag_rte_ring_enqueue_burst_elem.load(self.lib)
        self.rte_ring_mc_dequeue_burst_elem = rte_ip_frag_rte_ring_mc_dequeue_burst_elem.load(self.lib)
        self.rte_ring_sc_dequeue_burst_elem = rte_ip_frag_rte_ring_sc_dequeue_burst_elem.load(self.lib)
        self.rte_ring_dequeue_burst_elem = rte_ip_frag_rte_ring_dequeue_burst_elem.load(self.lib)
        self.rte_ring_enqueue_bulk_elem_start = rte_ip_frag_rte_ring_enqueue_bulk_elem_start.load(self.lib)
        self.rte_ring_enqueue_bulk_start = rte_ip_frag_rte_ring_enqueue_bulk_start.load(self.lib)
        self.rte_ring_enqueue_burst_elem_start = rte_ip_frag_rte_ring_enqueue_burst_elem_start.load(self.lib)
        self.rte_ring_enqueue_burst_start = rte_ip_frag_rte_ring_enqueue_burst_start.load(self.lib)
        self.rte_ring_enqueue_elem_finish = rte_ip_frag_rte_ring_enqueue_elem_finish.load(self.lib)
        self.rte_ring_enqueue_finish = rte_ip_frag_rte_ring_enqueue_finish.load(self.lib)
        self.rte_ring_dequeue_bulk_elem_start = rte_ip_frag_rte_ring_dequeue_bulk_elem_start.load(self.lib)
        self.rte_ring_dequeue_bulk_start = rte_ip_frag_rte_ring_dequeue_bulk_start.load(self.lib)
        self.rte_ring_dequeue_burst_elem_start = rte_ip_frag_rte_ring_dequeue_burst_elem_start.load(self.lib)
        self.rte_ring_dequeue_burst_start = rte_ip_frag_rte_ring_dequeue_burst_start.load(self.lib)
        self.rte_ring_dequeue_elem_finish = rte_ip_frag_rte_ring_dequeue_elem_finish.load(self.lib)
        self.rte_ring_dequeue_finish = rte_ip_frag_rte_ring_dequeue_finish.load(self.lib)
        self.rte_ring_enqueue_zc_bulk_elem_start = rte_ip_frag_rte_ring_enqueue_zc_bulk_elem_start.load(self.lib)
        self.rte_ring_enqueue_zc_bulk_start = rte_ip_frag_rte_ring_enqueue_zc_bulk_start.load(self.lib)
        self.rte_ring_enqueue_zc_burst_elem_start = rte_ip_frag_rte_ring_enqueue_zc_burst_elem_start.load(self.lib)
        self.rte_ring_enqueue_zc_burst_start = rte_ip_frag_rte_ring_enqueue_zc_burst_start.load(self.lib)
        self.rte_ring_enqueue_zc_elem_finish = rte_ip_frag_rte_ring_enqueue_zc_elem_finish.load(self.lib)
        self.rte_ring_enqueue_zc_finish = rte_ip_frag_rte_ring_enqueue_zc_finish.load(self.lib)
        self.rte_ring_dequeue_zc_bulk_elem_start = rte_ip_frag_rte_ring_dequeue_zc_bulk_elem_start.load(self.lib)
        self.rte_ring_dequeue_zc_bulk_start = rte_ip_frag_rte_ring_dequeue_zc_bulk_start.load(self.lib)
        self.rte_ring_dequeue_zc_burst_elem_start = rte_ip_frag_rte_ring_dequeue_zc_burst_elem_start.load(self.lib)
        self.rte_ring_dequeue_zc_burst_start = rte_ip_frag_rte_ring_dequeue_zc_burst_start.load(self.lib)
        self.rte_ring_dequeue_zc_elem_finish = rte_ip_frag_rte_ring_dequeue_zc_elem_finish.load(self.lib)
        self.rte_ring_dequeue_zc_finish = rte_ip_frag_rte_ring_dequeue_zc_finish.load(self.lib)
        self.rte_ring_get_memsize = rte_ip_frag_rte_ring_get_memsize.load(self.lib)
        self.rte_ring_init = rte_ip_frag_rte_ring_init.load(self.lib)
        self.rte_ring_free = rte_ip_frag_rte_ring_free.load(self.lib)
        self.rte_ring_create = rte_ip_frag_rte_ring_create.load(self.lib)
        self.rte_ring_dump = rte_ip_frag_rte_ring_dump.load(self.lib)
        self.rte_ring_headtail_dump = rte_ip_frag_rte_ring_headtail_dump.load(self.lib)
        self.rte_ring_mp_enqueue_bulk = rte_ip_frag_rte_ring_mp_enqueue_bulk.load(self.lib)
        self.rte_ring_sp_enqueue_bulk = rte_ip_frag_rte_ring_sp_enqueue_bulk.load(self.lib)
        self.rte_ring_enqueue_bulk = rte_ip_frag_rte_ring_enqueue_bulk.load(self.lib)
        self.rte_ring_mp_enqueue = rte_ip_frag_rte_ring_mp_enqueue.load(self.lib)
        self.rte_ring_sp_enqueue = rte_ip_frag_rte_ring_sp_enqueue.load(self.lib)
        self.rte_ring_enqueue = rte_ip_frag_rte_ring_enqueue.load(self.lib)
        self.rte_ring_mc_dequeue_bulk = rte_ip_frag_rte_ring_mc_dequeue_bulk.load(self.lib)
        self.rte_ring_sc_dequeue_bulk = rte_ip_frag_rte_ring_sc_dequeue_bulk.load(self.lib)
        self.rte_ring_dequeue_bulk = rte_ip_frag_rte_ring_dequeue_bulk.load(self.lib)
        self.rte_ring_mc_dequeue = rte_ip_frag_rte_ring_mc_dequeue.load(self.lib)
        self.rte_ring_sc_dequeue = rte_ip_frag_rte_ring_sc_dequeue.load(self.lib)
        self.rte_ring_dequeue = rte_ip_frag_rte_ring_dequeue.load(self.lib)
        self.rte_ring_reset = rte_ip_frag_rte_ring_reset.load(self.lib)
        self.rte_ring_count = rte_ip_frag_rte_ring_count.load(self.lib)
        self.rte_ring_free_count = rte_ip_frag_rte_ring_free_count.load(self.lib)
        self.rte_ring_full = rte_ip_frag_rte_ring_full.load(self.lib)
        self.rte_ring_empty = rte_ip_frag_rte_ring_empty.load(self.lib)
        self.rte_ring_get_size = rte_ip_frag_rte_ring_get_size.load(self.lib)
        self.rte_ring_get_capacity = rte_ip_frag_rte_ring_get_capacity.load(self.lib)
        self.rte_ring_get_prod_sync_type = rte_ip_frag_rte_ring_get_prod_sync_type.load(self.lib)
        self.rte_ring_is_prod_single = rte_ip_frag_rte_ring_is_prod_single.load(self.lib)
        self.rte_ring_get_cons_sync_type = rte_ip_frag_rte_ring_get_cons_sync_type.load(self.lib)
        self.rte_ring_is_cons_single = rte_ip_frag_rte_ring_is_cons_single.load(self.lib)
        self.rte_ring_list_dump = rte_ip_frag_rte_ring_list_dump.load(self.lib)
        self.rte_ring_lookup = rte_ip_frag_rte_ring_lookup.load(self.lib)
        self.rte_ring_mp_enqueue_burst = rte_ip_frag_rte_ring_mp_enqueue_burst.load(self.lib)
        self.rte_ring_sp_enqueue_burst = rte_ip_frag_rte_ring_sp_enqueue_burst.load(self.lib)
        self.rte_ring_enqueue_burst = rte_ip_frag_rte_ring_enqueue_burst.load(self.lib)
        self.rte_ring_mc_dequeue_burst = rte_ip_frag_rte_ring_mc_dequeue_burst.load(self.lib)
        self.rte_ring_sc_dequeue_burst = rte_ip_frag_rte_ring_sc_dequeue_burst.load(self.lib)
        self.rte_ring_dequeue_burst = rte_ip_frag_rte_ring_dequeue_burst.load(self.lib)
        self.rte_mov16 = rte_ip_frag_rte_mov16.load(self.lib)
        self.rte_mov32 = rte_ip_frag_rte_mov32.load(self.lib)
        self.rte_mov64 = rte_ip_frag_rte_mov64.load(self.lib)
        self.rte_mov128 = rte_ip_frag_rte_mov128.load(self.lib)
        self.rte_mov256 = rte_ip_frag_rte_mov256.load(self.lib)
        self.rte_mov48 = rte_ip_frag_rte_mov48.load(self.lib)
        self.rte_get_tsc_hz = rte_ip_frag_rte_get_tsc_hz.load(self.lib)
        self.rte_get_tsc_cycles = rte_ip_frag_rte_get_tsc_cycles.load(self.lib)
        self.rte_get_timer_cycles = rte_ip_frag_rte_get_timer_cycles.load(self.lib)
        self.rte_get_timer_hz = rte_ip_frag_rte_get_timer_hz.load(self.lib)
        self.rte_delay_ms = rte_ip_frag_rte_delay_ms.load(self.lib)
        self.rte_delay_us_block = rte_ip_frag_rte_delay_us_block.load(self.lib)
        self.rte_delay_us_sleep = rte_ip_frag_rte_delay_us_sleep.load(self.lib)
        self.rte_delay_us_callback_register = rte_ip_frag_rte_delay_us_callback_register.load(self.lib)
        self.rte_rdtsc = rte_ip_frag_rte_rdtsc.load(self.lib)
        self.rte_rdtsc_precise = rte_ip_frag_rte_rdtsc_precise.load(self.lib)
        self.isalnum = rte_ip_frag_isalnum.load(self.lib)
        self.isalpha = rte_ip_frag_isalpha.load(self.lib)
        self.iscntrl = rte_ip_frag_iscntrl.load(self.lib)
        self.isdigit = rte_ip_frag_isdigit.load(self.lib)
        self.islower = rte_ip_frag_islower.load(self.lib)
        self.isgraph = rte_ip_frag_isgraph.load(self.lib)
        self.isprint = rte_ip_frag_isprint.load(self.lib)
        self.ispunct = rte_ip_frag_ispunct.load(self.lib)
        self.isspace = rte_ip_frag_isspace.load(self.lib)
        self.isupper = rte_ip_frag_isupper.load(self.lib)
        self.isxdigit = rte_ip_frag_isxdigit.load(self.lib)
        self.tolower = rte_ip_frag_tolower.load(self.lib)
        self.toupper = rte_ip_frag_toupper.load(self.lib)
        self.isblank = rte_ip_frag_isblank.load(self.lib)
        self.isascii = rte_ip_frag_isascii.load(self.lib)
        self.toascii = rte_ip_frag_toascii.load(self.lib)
        self.isalnum_l = rte_ip_frag_isalnum_l.load(self.lib)
        self.isalpha_l = rte_ip_frag_isalpha_l.load(self.lib)
        self.iscntrl_l = rte_ip_frag_iscntrl_l.load(self.lib)
        self.isdigit_l = rte_ip_frag_isdigit_l.load(self.lib)
        self.islower_l = rte_ip_frag_islower_l.load(self.lib)
        self.isgraph_l = rte_ip_frag_isgraph_l.load(self.lib)
        self.isprint_l = rte_ip_frag_isprint_l.load(self.lib)
        self.ispunct_l = rte_ip_frag_ispunct_l.load(self.lib)
        self.isspace_l = rte_ip_frag_isspace_l.load(self.lib)
        self.isupper_l = rte_ip_frag_isupper_l.load(self.lib)
        self.isxdigit_l = rte_ip_frag_isxdigit_l.load(self.lib)
        self.isblank_l = rte_ip_frag_isblank_l.load(self.lib)
        self.tolower_l = rte_ip_frag_tolower_l.load(self.lib)
        self.toupper_l = rte_ip_frag_toupper_l.load(self.lib)
        self.rte_strsplit = rte_ip_frag_rte_strsplit.load(self.lib)
        self.rte_strlcpy = rte_ip_frag_rte_strlcpy.load(self.lib)
        self.rte_strlcat = rte_ip_frag_rte_strlcat.load(self.lib)
        self.rte_strscpy = rte_ip_frag_rte_strscpy.load(self.lib)
        self.rte_str_skip_leading_spaces = rte_ip_frag_rte_str_skip_leading_spaces.load(self.lib)
        self.rte_trace_is_enabled = rte_ip_frag_rte_trace_is_enabled.load(self.lib)
        self.rte_trace_feature_is_enabled = rte_ip_frag_rte_trace_feature_is_enabled.load(self.lib)
        self.rte_trace_mode_set = rte_ip_frag_rte_trace_mode_set.load(self.lib)
        self.rte_trace_mode_get = rte_ip_frag_rte_trace_mode_get.load(self.lib)
        self.rte_trace_pattern = rte_ip_frag_rte_trace_pattern.load(self.lib)
        self.rte_trace_regexp = rte_ip_frag_rte_trace_regexp.load(self.lib)
        self.rte_trace_save = rte_ip_frag_rte_trace_save.load(self.lib)
        self.rte_trace_metadata_dump = rte_ip_frag_rte_trace_metadata_dump.load(self.lib)
        self.rte_trace_dump = rte_ip_frag_rte_trace_dump.load(self.lib)
        self.rte_trace_point_enable = rte_ip_frag_rte_trace_point_enable.load(self.lib)
        self.rte_trace_point_disable = rte_ip_frag_rte_trace_point_disable.load(self.lib)
        self.rte_trace_point_is_enabled = rte_ip_frag_rte_trace_point_is_enabled.load(self.lib)
        self.rte_trace_point_lookup = rte_ip_frag_rte_trace_point_lookup.load(self.lib)
        self.rte_mempool_trace_ops_dequeue_bulk = rte_ip_frag_rte_mempool_trace_ops_dequeue_bulk.load(self.lib)
        self.rte_mempool_trace_ops_dequeue_contig_blocks = rte_ip_frag_rte_mempool_trace_ops_dequeue_contig_blocks.load(self.lib)
        self.rte_mempool_trace_ops_enqueue_bulk = rte_ip_frag_rte_mempool_trace_ops_enqueue_bulk.load(self.lib)
        self.rte_mempool_trace_generic_put = rte_ip_frag_rte_mempool_trace_generic_put.load(self.lib)
        self.rte_mempool_trace_put_bulk = rte_ip_frag_rte_mempool_trace_put_bulk.load(self.lib)
        self.rte_mempool_trace_generic_get = rte_ip_frag_rte_mempool_trace_generic_get.load(self.lib)
        self.rte_mempool_trace_get_bulk = rte_ip_frag_rte_mempool_trace_get_bulk.load(self.lib)
        self.rte_mempool_trace_get_contig_blocks = rte_ip_frag_rte_mempool_trace_get_contig_blocks.load(self.lib)
        self.rte_mempool_trace_default_cache = rte_ip_frag_rte_mempool_trace_default_cache.load(self.lib)
        self.rte_mempool_trace_cache_flush = rte_ip_frag_rte_mempool_trace_cache_flush.load(self.lib)
        self.rte_mempool_get_header = rte_ip_frag_rte_mempool_get_header.load(self.lib)
        self.rte_mempool_from_obj = rte_ip_frag_rte_mempool_from_obj.load(self.lib)
        self.rte_mempool_get_trailer = rte_ip_frag_rte_mempool_get_trailer.load(self.lib)
        self.rte_mempool_check_cookies = rte_ip_frag_rte_mempool_check_cookies.load(self.lib)
        self.rte_mempool_contig_blocks_check_cookies = rte_ip_frag_rte_mempool_contig_blocks_check_cookies.load(self.lib)
        self.rte_mempool_op_calc_mem_size_helper = rte_ip_frag_rte_mempool_op_calc_mem_size_helper.load(self.lib)
        self.rte_mempool_op_calc_mem_size_default = rte_ip_frag_rte_mempool_op_calc_mem_size_default.load(self.lib)
        self.rte_mempool_op_populate_helper = rte_ip_frag_rte_mempool_op_populate_helper.load(self.lib)
        self.rte_mempool_op_populate_default = rte_ip_frag_rte_mempool_op_populate_default.load(self.lib)
        self.rte_mempool_get_ops = rte_ip_frag_rte_mempool_get_ops.load(self.lib)
        self.rte_mempool_ops_alloc = rte_ip_frag_rte_mempool_ops_alloc.load(self.lib)
        self.rte_mempool_ops_dequeue_bulk = rte_ip_frag_rte_mempool_ops_dequeue_bulk.load(self.lib)
        self.rte_mempool_ops_dequeue_contig_blocks = rte_ip_frag_rte_mempool_ops_dequeue_contig_blocks.load(self.lib)
        self.rte_mempool_ops_enqueue_bulk = rte_ip_frag_rte_mempool_ops_enqueue_bulk.load(self.lib)
        self.rte_mempool_ops_get_count = rte_ip_frag_rte_mempool_ops_get_count.load(self.lib)
        self.rte_mempool_ops_calc_mem_size = rte_ip_frag_rte_mempool_ops_calc_mem_size.load(self.lib)
        self.rte_mempool_ops_populate = rte_ip_frag_rte_mempool_ops_populate.load(self.lib)
        self.rte_mempool_ops_get_info = rte_ip_frag_rte_mempool_ops_get_info.load(self.lib)
        self.rte_mempool_ops_free = rte_ip_frag_rte_mempool_ops_free.load(self.lib)
        self.rte_mempool_set_ops_byname = rte_ip_frag_rte_mempool_set_ops_byname.load(self.lib)
        self.rte_mempool_register_ops = rte_ip_frag_rte_mempool_register_ops.load(self.lib)
        self.rte_mempool_free = rte_ip_frag_rte_mempool_free.load(self.lib)
        self.rte_mempool_create = rte_ip_frag_rte_mempool_create.load(self.lib)
        self.rte_mempool_create_empty = rte_ip_frag_rte_mempool_create_empty.load(self.lib)
        self.rte_mempool_populate_iova = rte_ip_frag_rte_mempool_populate_iova.load(self.lib)
        self.rte_mempool_populate_virt = rte_ip_frag_rte_mempool_populate_virt.load(self.lib)
        self.rte_mempool_populate_default = rte_ip_frag_rte_mempool_populate_default.load(self.lib)
        self.rte_mempool_populate_anon = rte_ip_frag_rte_mempool_populate_anon.load(self.lib)
        self.rte_mempool_obj_iter = rte_ip_frag_rte_mempool_obj_iter.load(self.lib)
        self.rte_mempool_mem_iter = rte_ip_frag_rte_mempool_mem_iter.load(self.lib)
        self.rte_mempool_dump = rte_ip_frag_rte_mempool_dump.load(self.lib)
        self.rte_mempool_cache_create = rte_ip_frag_rte_mempool_cache_create.load(self.lib)
        self.rte_mempool_cache_free = rte_ip_frag_rte_mempool_cache_free.load(self.lib)
        self.rte_mempool_default_cache = rte_ip_frag_rte_mempool_default_cache.load(self.lib)
        self.rte_mempool_cache_flush = rte_ip_frag_rte_mempool_cache_flush.load(self.lib)
        self.rte_mempool_do_generic_put = rte_ip_frag_rte_mempool_do_generic_put.load(self.lib)
        self.rte_mempool_generic_put = rte_ip_frag_rte_mempool_generic_put.load(self.lib)
        self.rte_mempool_put_bulk = rte_ip_frag_rte_mempool_put_bulk.load(self.lib)
        self.rte_mempool_put = rte_ip_frag_rte_mempool_put.load(self.lib)
        self.rte_mempool_do_generic_get = rte_ip_frag_rte_mempool_do_generic_get.load(self.lib)
        self.rte_mempool_generic_get = rte_ip_frag_rte_mempool_generic_get.load(self.lib)
        self.rte_mempool_get_bulk = rte_ip_frag_rte_mempool_get_bulk.load(self.lib)
        self.rte_mempool_get = rte_ip_frag_rte_mempool_get.load(self.lib)
        self.rte_mempool_get_contig_blocks = rte_ip_frag_rte_mempool_get_contig_blocks.load(self.lib)
        self.rte_mempool_avail_count = rte_ip_frag_rte_mempool_avail_count.load(self.lib)
        self.rte_mempool_in_use_count = rte_ip_frag_rte_mempool_in_use_count.load(self.lib)
        self.rte_mempool_full = rte_ip_frag_rte_mempool_full.load(self.lib)
        self.rte_mempool_empty = rte_ip_frag_rte_mempool_empty.load(self.lib)
        self.rte_mempool_virt2iova = rte_ip_frag_rte_mempool_virt2iova.load(self.lib)
        self.rte_mempool_audit = rte_ip_frag_rte_mempool_audit.load(self.lib)
        self.rte_mempool_get_priv = rte_ip_frag_rte_mempool_get_priv.load(self.lib)
        self.rte_mempool_list_dump = rte_ip_frag_rte_mempool_list_dump.load(self.lib)
        self.rte_mempool_lookup = rte_ip_frag_rte_mempool_lookup.load(self.lib)
        self.rte_mempool_calc_obj_size = rte_ip_frag_rte_mempool_calc_obj_size.load(self.lib)
        self.rte_mempool_walk = rte_ip_frag_rte_mempool_walk.load(self.lib)
        self.rte_mempool_get_mem_range = rte_ip_frag_rte_mempool_get_mem_range.load(self.lib)
        self.rte_mempool_get_obj_alignment = rte_ip_frag_rte_mempool_get_obj_alignment.load(self.lib)
        self.rte_mempool_get_page_size = rte_ip_frag_rte_mempool_get_page_size.load(self.lib)
        self.rte_mempool_event_callback_register = rte_ip_frag_rte_mempool_event_callback_register.load(self.lib)
        self.rte_mempool_event_callback_unregister = rte_ip_frag_rte_mempool_event_callback_unregister.load(self.lib)
        self.rte_prefetch0 = rte_ip_frag_rte_prefetch0.load(self.lib)
        self.rte_prefetch1 = rte_ip_frag_rte_prefetch1.load(self.lib)
        self.rte_prefetch2 = rte_ip_frag_rte_prefetch2.load(self.lib)
        self.rte_prefetch_non_temporal = rte_ip_frag_rte_prefetch_non_temporal.load(self.lib)
        self.rte_prefetch0_write = rte_ip_frag_rte_prefetch0_write.load(self.lib)
        self.rte_prefetch1_write = rte_ip_frag_rte_prefetch1_write.load(self.lib)
        self.rte_prefetch2_write = rte_ip_frag_rte_prefetch2_write.load(self.lib)
        self.rte_cldemote = rte_ip_frag_rte_cldemote.load(self.lib)
        self.rte_get_ptype_l2_name = rte_ip_frag_rte_get_ptype_l2_name.load(self.lib)
        self.rte_get_ptype_l3_name = rte_ip_frag_rte_get_ptype_l3_name.load(self.lib)
        self.rte_get_ptype_l4_name = rte_ip_frag_rte_get_ptype_l4_name.load(self.lib)
        self.rte_get_ptype_tunnel_name = rte_ip_frag_rte_get_ptype_tunnel_name.load(self.lib)
        self.rte_get_ptype_inner_l2_name = rte_ip_frag_rte_get_ptype_inner_l2_name.load(self.lib)
        self.rte_get_ptype_inner_l3_name = rte_ip_frag_rte_get_ptype_inner_l3_name.load(self.lib)
        self.rte_get_ptype_inner_l4_name = rte_ip_frag_rte_get_ptype_inner_l4_name.load(self.lib)
        self.rte_get_ptype_name = rte_ip_frag_rte_get_ptype_name.load(self.lib)
        self.rte_get_rx_ol_flag_name = rte_ip_frag_rte_get_rx_ol_flag_name.load(self.lib)
        self.rte_get_rx_ol_flag_list = rte_ip_frag_rte_get_rx_ol_flag_list.load(self.lib)
        self.rte_get_tx_ol_flag_name = rte_ip_frag_rte_get_tx_ol_flag_name.load(self.lib)
        self.rte_get_tx_ol_flag_list = rte_ip_frag_rte_get_tx_ol_flag_list.load(self.lib)
        self.rte_mbuf_prefetch_part1 = rte_ip_frag_rte_mbuf_prefetch_part1.load(self.lib)
        self.rte_mbuf_prefetch_part2 = rte_ip_frag_rte_mbuf_prefetch_part2.load(self.lib)
        self.rte_pktmbuf_priv_size = rte_ip_frag_rte_pktmbuf_priv_size.load(self.lib)
        self.rte_mbuf_iova_get = rte_ip_frag_rte_mbuf_iova_get.load(self.lib)
        self.rte_mbuf_iova_set = rte_ip_frag_rte_mbuf_iova_set.load(self.lib)
        self.rte_mbuf_data_iova = rte_ip_frag_rte_mbuf_data_iova.load(self.lib)
        self.rte_mbuf_data_iova_default = rte_ip_frag_rte_mbuf_data_iova_default.load(self.lib)
        self.rte_mbuf_from_indirect = rte_ip_frag_rte_mbuf_from_indirect.load(self.lib)
        self.rte_mbuf_buf_addr = rte_ip_frag_rte_mbuf_buf_addr.load(self.lib)
        self.rte_mbuf_data_addr_default = rte_ip_frag_rte_mbuf_data_addr_default.load(self.lib)
        self.rte_mbuf_to_baddr = rte_ip_frag_rte_mbuf_to_baddr.load(self.lib)
        self.rte_mbuf_to_priv = rte_ip_frag_rte_mbuf_to_priv.load(self.lib)
        self.rte_pktmbuf_priv_flags = rte_ip_frag_rte_pktmbuf_priv_flags.load(self.lib)
        self.rte_mbuf_refcnt_read = rte_ip_frag_rte_mbuf_refcnt_read.load(self.lib)
        self.rte_mbuf_refcnt_set = rte_ip_frag_rte_mbuf_refcnt_set.load(self.lib)
        self.rte_mbuf_refcnt_update = rte_ip_frag_rte_mbuf_refcnt_update.load(self.lib)
        self.rte_mbuf_ext_refcnt_read = rte_ip_frag_rte_mbuf_ext_refcnt_read.load(self.lib)
        self.rte_mbuf_ext_refcnt_set = rte_ip_frag_rte_mbuf_ext_refcnt_set.load(self.lib)
        self.rte_mbuf_ext_refcnt_update = rte_ip_frag_rte_mbuf_ext_refcnt_update.load(self.lib)
        self.rte_mbuf_sanity_check = rte_ip_frag_rte_mbuf_sanity_check.load(self.lib)
        self.rte_mbuf_check = rte_ip_frag_rte_mbuf_check.load(self.lib)
        self.rte_mbuf_raw_alloc = rte_ip_frag_rte_mbuf_raw_alloc.load(self.lib)
        self.rte_mbuf_raw_alloc_bulk = rte_ip_frag_rte_mbuf_raw_alloc_bulk.load(self.lib)
        self.rte_mbuf_raw_free = rte_ip_frag_rte_mbuf_raw_free.load(self.lib)
        self.rte_mbuf_raw_free_bulk = rte_ip_frag_rte_mbuf_raw_free_bulk.load(self.lib)
        self.rte_pktmbuf_init = rte_ip_frag_rte_pktmbuf_init.load(self.lib)
        self.rte_pktmbuf_pool_init = rte_ip_frag_rte_pktmbuf_pool_init.load(self.lib)
        self.rte_pktmbuf_pool_create = rte_ip_frag_rte_pktmbuf_pool_create.load(self.lib)
        self.rte_pktmbuf_pool_create_by_ops = rte_ip_frag_rte_pktmbuf_pool_create_by_ops.load(self.lib)
        self.rte_pktmbuf_pool_create_extbuf = rte_ip_frag_rte_pktmbuf_pool_create_extbuf.load(self.lib)
        self.rte_pktmbuf_data_room_size = rte_ip_frag_rte_pktmbuf_data_room_size.load(self.lib)
        self.rte_pktmbuf_reset_headroom = rte_ip_frag_rte_pktmbuf_reset_headroom.load(self.lib)
        self.rte_pktmbuf_reset = rte_ip_frag_rte_pktmbuf_reset.load(self.lib)
        self.rte_pktmbuf_alloc = rte_ip_frag_rte_pktmbuf_alloc.load(self.lib)
        self.rte_pktmbuf_alloc_bulk = rte_ip_frag_rte_pktmbuf_alloc_bulk.load(self.lib)
        self.rte_pktmbuf_ext_shinfo_init_helper = rte_ip_frag_rte_pktmbuf_ext_shinfo_init_helper.load(self.lib)
        self.rte_pktmbuf_attach_extbuf = rte_ip_frag_rte_pktmbuf_attach_extbuf.load(self.lib)
        self.rte_mbuf_dynfield_copy = rte_ip_frag_rte_mbuf_dynfield_copy.load(self.lib)
        self.rte_pktmbuf_attach = rte_ip_frag_rte_pktmbuf_attach.load(self.lib)
        self.rte_pktmbuf_detach = rte_ip_frag_rte_pktmbuf_detach.load(self.lib)
        self.rte_pktmbuf_prefree_seg = rte_ip_frag_rte_pktmbuf_prefree_seg.load(self.lib)
        self.rte_pktmbuf_free_seg = rte_ip_frag_rte_pktmbuf_free_seg.load(self.lib)
        self.rte_pktmbuf_free = rte_ip_frag_rte_pktmbuf_free.load(self.lib)
        self.rte_pktmbuf_free_bulk = rte_ip_frag_rte_pktmbuf_free_bulk.load(self.lib)
        self.rte_pktmbuf_clone = rte_ip_frag_rte_pktmbuf_clone.load(self.lib)
        self.rte_pktmbuf_copy = rte_ip_frag_rte_pktmbuf_copy.load(self.lib)
        self.rte_pktmbuf_refcnt_update = rte_ip_frag_rte_pktmbuf_refcnt_update.load(self.lib)
        self.rte_pktmbuf_headroom = rte_ip_frag_rte_pktmbuf_headroom.load(self.lib)
        self.rte_pktmbuf_tailroom = rte_ip_frag_rte_pktmbuf_tailroom.load(self.lib)
        self.rte_pktmbuf_lastseg = rte_ip_frag_rte_pktmbuf_lastseg.load(self.lib)
        self.rte_pktmbuf_prepend = rte_ip_frag_rte_pktmbuf_prepend.load(self.lib)
        self.rte_pktmbuf_append = rte_ip_frag_rte_pktmbuf_append.load(self.lib)
        self.rte_pktmbuf_adj = rte_ip_frag_rte_pktmbuf_adj.load(self.lib)
        self.rte_pktmbuf_trim = rte_ip_frag_rte_pktmbuf_trim.load(self.lib)
        self.rte_pktmbuf_is_contiguous = rte_ip_frag_rte_pktmbuf_is_contiguous.load(self.lib)
        self.rte_pktmbuf_read = rte_ip_frag_rte_pktmbuf_read.load(self.lib)
        self.rte_pktmbuf_chain = rte_ip_frag_rte_pktmbuf_chain.load(self.lib)
        self.rte_mbuf_tx_offload = rte_ip_frag_rte_mbuf_tx_offload.load(self.lib)
        self.rte_validate_tx_offload = rte_ip_frag_rte_validate_tx_offload.load(self.lib)
        self.rte_pktmbuf_linearize = rte_ip_frag_rte_pktmbuf_linearize.load(self.lib)
        self.rte_pktmbuf_dump = rte_ip_frag_rte_pktmbuf_dump.load(self.lib)
        self.rte_mbuf_sched_queue_get = rte_ip_frag_rte_mbuf_sched_queue_get.load(self.lib)
        self.rte_mbuf_sched_traffic_class_get = rte_ip_frag_rte_mbuf_sched_traffic_class_get.load(self.lib)
        self.rte_mbuf_sched_color_get = rte_ip_frag_rte_mbuf_sched_color_get.load(self.lib)
        self.rte_mbuf_sched_get = rte_ip_frag_rte_mbuf_sched_get.load(self.lib)
        self.rte_mbuf_sched_queue_set = rte_ip_frag_rte_mbuf_sched_queue_set.load(self.lib)
        self.rte_mbuf_sched_traffic_class_set = rte_ip_frag_rte_mbuf_sched_traffic_class_set.load(self.lib)
        self.rte_mbuf_sched_color_set = rte_ip_frag_rte_mbuf_sched_color_set.load(self.lib)
        self.rte_mbuf_sched_set = rte_ip_frag_rte_mbuf_sched_set.load(self.lib)
        self.rte_raw_cksum = rte_ip_frag_rte_raw_cksum.load(self.lib)
        self.rte_raw_cksum_mbuf = rte_ip_frag_rte_raw_cksum_mbuf.load(self.lib)
        self.rte_ipv4_hdr_len = rte_ip_frag_rte_ipv4_hdr_len.load(self.lib)
        self.rte_ipv4_cksum = rte_ip_frag_rte_ipv4_cksum.load(self.lib)
        self.rte_ipv4_cksum_simple = rte_ip_frag_rte_ipv4_cksum_simple.load(self.lib)
        self.rte_ipv4_phdr_cksum = rte_ip_frag_rte_ipv4_phdr_cksum.load(self.lib)
        self.rte_ipv4_udptcp_cksum = rte_ip_frag_rte_ipv4_udptcp_cksum.load(self.lib)
        self.rte_ipv4_udptcp_cksum_mbuf = rte_ip_frag_rte_ipv4_udptcp_cksum_mbuf.load(self.lib)
        self.rte_ipv4_udptcp_cksum_verify = rte_ip_frag_rte_ipv4_udptcp_cksum_verify.load(self.lib)
        self.rte_ipv4_udptcp_cksum_mbuf_verify = rte_ip_frag_rte_ipv4_udptcp_cksum_mbuf_verify.load(self.lib)
        self.rte_srand = rte_ip_frag_rte_srand.load(self.lib)
        self.rte_rand = rte_ip_frag_rte_rand.load(self.lib)
        self.rte_rand_max = rte_ip_frag_rte_rand_max.load(self.lib)
        self.rte_drand = rte_ip_frag_rte_drand.load(self.lib)
        self.rte_is_same_ether_addr = rte_ip_frag_rte_is_same_ether_addr.load(self.lib)
        self.rte_is_zero_ether_addr = rte_ip_frag_rte_is_zero_ether_addr.load(self.lib)
        self.rte_is_unicast_ether_addr = rte_ip_frag_rte_is_unicast_ether_addr.load(self.lib)
        self.rte_is_multicast_ether_addr = rte_ip_frag_rte_is_multicast_ether_addr.load(self.lib)
        self.rte_is_broadcast_ether_addr = rte_ip_frag_rte_is_broadcast_ether_addr.load(self.lib)
        self.rte_is_universal_ether_addr = rte_ip_frag_rte_is_universal_ether_addr.load(self.lib)
        self.rte_is_local_admin_ether_addr = rte_ip_frag_rte_is_local_admin_ether_addr.load(self.lib)
        self.rte_is_valid_assigned_ether_addr = rte_ip_frag_rte_is_valid_assigned_ether_addr.load(self.lib)
        self.rte_eth_random_addr = rte_ip_frag_rte_eth_random_addr.load(self.lib)
        self.rte_ether_addr_copy = rte_ip_frag_rte_ether_addr_copy.load(self.lib)
        self.rte_ether_format_addr = rte_ip_frag_rte_ether_format_addr.load(self.lib)
        self.rte_ether_unformat_addr = rte_ip_frag_rte_ether_unformat_addr.load(self.lib)
        self.rte_vlan_strip = rte_ip_frag_rte_vlan_strip.load(self.lib)
        self.rte_vlan_insert = rte_ip_frag_rte_vlan_insert.load(self.lib)
        self.rte_ipv6_addr_eq = rte_ip_frag_rte_ipv6_addr_eq.load(self.lib)
        self.rte_ipv6_addr_mask = rte_ip_frag_rte_ipv6_addr_mask.load(self.lib)
        self.rte_ipv6_addr_eq_prefix = rte_ip_frag_rte_ipv6_addr_eq_prefix.load(self.lib)
        self.rte_ipv6_mask_depth = rte_ip_frag_rte_ipv6_mask_depth.load(self.lib)
        self.rte_ipv6_addr_is_unspec = rte_ip_frag_rte_ipv6_addr_is_unspec.load(self.lib)
        self.rte_ipv6_addr_is_loopback = rte_ip_frag_rte_ipv6_addr_is_loopback.load(self.lib)
        self.rte_ipv6_addr_is_linklocal = rte_ip_frag_rte_ipv6_addr_is_linklocal.load(self.lib)
        self.rte_ipv6_addr_is_sitelocal = rte_ip_frag_rte_ipv6_addr_is_sitelocal.load(self.lib)
        self.rte_ipv6_addr_is_v4compat = rte_ip_frag_rte_ipv6_addr_is_v4compat.load(self.lib)
        self.rte_ipv6_addr_is_v4mapped = rte_ip_frag_rte_ipv6_addr_is_v4mapped.load(self.lib)
        self.rte_ipv6_addr_is_mcast = rte_ip_frag_rte_ipv6_addr_is_mcast.load(self.lib)
        self.rte_ipv6_llocal_from_ethernet = rte_ip_frag_rte_ipv6_llocal_from_ethernet.load(self.lib)
        self.rte_ipv6_solnode_from_addr = rte_ip_frag_rte_ipv6_solnode_from_addr.load(self.lib)
        self.rte_ether_mcast_from_ipv6 = rte_ip_frag_rte_ether_mcast_from_ipv6.load(self.lib)
        self.rte_ipv6_check_version = rte_ip_frag_rte_ipv6_check_version.load(self.lib)
        self.rte_ipv6_phdr_cksum = rte_ip_frag_rte_ipv6_phdr_cksum.load(self.lib)
        self.rte_ipv6_udptcp_cksum = rte_ip_frag_rte_ipv6_udptcp_cksum.load(self.lib)
        self.rte_ipv6_udptcp_cksum_mbuf = rte_ip_frag_rte_ipv6_udptcp_cksum_mbuf.load(self.lib)
        self.rte_ipv6_udptcp_cksum_verify = rte_ip_frag_rte_ipv6_udptcp_cksum_verify.load(self.lib)
        self.rte_ipv6_udptcp_cksum_mbuf_verify = rte_ip_frag_rte_ipv6_udptcp_cksum_mbuf_verify.load(self.lib)
        self.rte_ipv6_get_next_ext = rte_ip_frag_rte_ipv6_get_next_ext.load(self.lib)
        self.rte_ip_frag_table_create = rte_ip_frag_rte_ip_frag_table_create.load(self.lib)
        self.rte_ip_frag_table_destroy = rte_ip_frag_rte_ip_frag_table_destroy.load(self.lib)
        self.rte_ipv6_fragment_packet = rte_ip_frag_rte_ipv6_fragment_packet.load(self.lib)
        self.rte_ipv6_frag_reassemble_packet = rte_ip_frag_rte_ipv6_frag_reassemble_packet.load(self.lib)
        self.rte_ipv6_frag_get_ipv6_fragment_header = rte_ip_frag_rte_ipv6_frag_get_ipv6_fragment_header.load(self.lib)
        self.rte_ipv4_fragment_packet = rte_ip_frag_rte_ipv4_fragment_packet.load(self.lib)
        self.rte_ipv4_fragment_copy_nonseg_packet = rte_ip_frag_rte_ipv4_fragment_copy_nonseg_packet.load(self.lib)
        self.rte_ipv4_frag_reassemble_packet = rte_ip_frag_rte_ipv4_frag_reassemble_packet.load(self.lib)
        self.rte_ipv4_frag_pkt_is_fragmented = rte_ip_frag_rte_ipv4_frag_pkt_is_fragmented.load(self.lib)
        self.rte_ip_frag_free_death_row = rte_ip_frag_rte_ip_frag_free_death_row.load(self.lib)
        self.rte_ip_frag_table_statistics_dump = rte_ip_frag_rte_ip_frag_table_statistics_dump.load(self.lib)
        self.rte_ip_frag_table_del_expired_entries = rte_ip_frag_rte_ip_frag_table_del_expired_entries.load(self.lib)

