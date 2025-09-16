
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
struct anonomous_record_522(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_522

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
alias anonomous_record_523 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_524(Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_523

alias __mbstate_t = anonomous_record_524

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
struct anonomous_record_525(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_525

alias __sched_cpucount = fn (size_t, UnsafePointer[cpu_set_t]) -> Int32
alias __sched_cpualloc = fn (size_t) -> UnsafePointer[cpu_set_t]
alias __sched_cpufree = fn (UnsafePointer[cpu_set_t]) -> NoneType
alias sched_setparam = fn (__pid_t, UnsafePointer[sched_param
sched_param
]) -> Int32
alias sched_getparam = fn (__pid_t, UnsafePointer[sched_param
sched_param
]) -> Int32
alias sched_setscheduler = fn (__pid_t, Int32, UnsafePointer[sched_param
sched_param
]) -> Int32
alias sched_getscheduler = fn (__pid_t) -> Int32
alias sched_yield = fn () -> Int32
alias sched_get_priority_max = fn (Int32) -> Int32
alias sched_get_priority_min = fn (Int32) -> Int32
alias sched_rr_get_interval = fn (__pid_t, UnsafePointer[timespec
timespec
]) -> Int32
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
alias rte_dma_dev_max = fn (size_t) -> Int32
alias rte_dma_get_dev_id_by_name = fn (UnsafePointer[Int8]) -> Int32
alias rte_dma_is_valid = fn (Int16) -> Bool
alias rte_dma_count_avail = fn () -> UInt16
alias rte_dma_next_dev = fn (Int16) -> Int16
struct rte_dma_info(Copyable & Movable):
# # Node: PlaceHolder()
# {"id":"0x18d456e0","inner":[{"id":"0x18d45740","inner":[{"id":"0x18d45710","kind":"TextComment","loc":{"col":8,"offset":11018,"tokLen":0},"range":{"begin":{"col":8,"offset":11018,"tokLen":0},"end":{"col":24,"offset":11034,"tokLen":1}},"text":" rte_dma_info_get"}],"kind":"ParagraphComment","loc":{"col":8,"offset":11018,"tokLen":0},"range":{"begin":{"col":8,"offset":11018,"tokLen":0},"end":{"col":24,"offset":11034,"tokLen":1}}}],"kind":"BlockCommandComment","loc":{"col":5,"offset":11015,"tokLen":3},"name":"see","range":{"begin":{"col":4,"offset":11014,"tokLen":1},"end":{"col":24,"offset":11034,"tokLen":1}}}

	var dev_name : UnsafePointer[Int8]

	var dev_capa : ffi.c_ulong

	var max_vchans : UInt16

	var max_desc : UInt16

	var min_desc : UInt16

	var max_sges : UInt16

	var numa_node : Int16

	var nb_vchans : UInt16

	var nb_priorities : UInt16

alias rte_dma_info_get = fn (Int16, UnsafePointer[rte_dma_info
rte_dma_info
]) -> Int32
struct rte_dma_conf(Copyable & Movable):
# # Node: PlaceHolder()
# {"id":"0x18d46470","inner":[{"id":"0x18d464d0","inner":[{"id":"0x18d464a0","kind":"TextComment","loc":{"col":8,"offset":12456,"tokLen":0},"range":{"begin":{"col":8,"offset":12456,"tokLen":0},"end":{"col":25,"offset":12473,"tokLen":1}},"text":" rte_dma_configure"}],"kind":"ParagraphComment","loc":{"col":8,"offset":12456,"tokLen":0},"range":{"begin":{"col":8,"offset":12456,"tokLen":0},"end":{"col":25,"offset":12473,"tokLen":1}}}],"kind":"BlockCommandComment","loc":{"col":5,"offset":12453,"tokLen":3},"name":"see","range":{"begin":{"col":4,"offset":12452,"tokLen":1},"end":{"col":25,"offset":12473,"tokLen":1}}}

	var nb_vchans : UInt16

	var enable_silent : Bool

	var priority : UInt16

alias rte_dma_configure = fn (Int16, UnsafePointer[rte_dma_conf
rte_dma_conf
]) -> Int32
alias rte_dma_start = fn (Int16) -> Int32
alias rte_dma_stop = fn (Int16) -> Int32
alias rte_dma_close = fn (Int16) -> Int32
struct rte_dma_direction(Copyable & Movable):
# # Node: PlaceHolder()
# {"id":"0x18d478b0","inner":[{"id":"0x18d47910","inner":[{"id":"0x18d478e0","kind":"TextComment","loc":{"col":8,"offset":14660,"tokLen":0},"range":{"begin":{"col":8,"offset":14660,"tokLen":0},"end":{"col":44,"offset":14696,"tokLen":1}},"text":" struct rte_dma_vchan_conf::direction"}],"kind":"ParagraphComment","loc":{"col":8,"offset":14660,"tokLen":0},"range":{"begin":{"col":8,"offset":14660,"tokLen":0},"end":{"col":44,"offset":14696,"tokLen":1}}}],"kind":"BlockCommandComment","loc":{"col":5,"offset":14657,"tokLen":3},"name":"see","range":{"begin":{"col":4,"offset":14656,"tokLen":1},"end":{"col":44,"offset":14696,"tokLen":1}}}

	alias RTE_DMA_DIR_MEM_TO_MEM = 0

	alias RTE_DMA_DIR_MEM_TO_DEV = 1

	alias RTE_DMA_DIR_DEV_TO_MEM = 2

	alias RTE_DMA_DIR_DEV_TO_DEV = 3

struct rte_dma_port_type(Copyable & Movable):
# # Node: PlaceHolder()
# {"id":"0x18d48300","inner":[{"id":"0x18d48360","inner":[{"id":"0x18d48330","kind":"TextComment","loc":{"col":8,"offset":16138,"tokLen":0},"range":{"begin":{"col":8,"offset":16138,"tokLen":0},"end":{"col":44,"offset":16174,"tokLen":1}},"text":" struct rte_dma_port_param::port_type"}],"kind":"ParagraphComment","loc":{"col":8,"offset":16138,"tokLen":0},"range":{"begin":{"col":8,"offset":16138,"tokLen":0},"end":{"col":44,"offset":16174,"tokLen":1}}}],"kind":"BlockCommandComment","loc":{"col":5,"offset":16135,"tokLen":3},"name":"see","range":{"begin":{"col":4,"offset":16134,"tokLen":1},"end":{"col":44,"offset":16174,"tokLen":1}}}

	alias RTE_DMA_PORT_NONE = 0

	alias RTE_DMA_PORT_PCIE = 1

struct anonomous_record_526(Copyable & Movable):
	var coreid : ffi.c_ulong

	var pfid : ffi.c_ulong

	var vfen : ffi.c_ulong

	var vfid : ffi.c_ulong

	var pasid : ffi.c_ulong

	var attr : ffi.c_ulong

	var ph : ffi.c_ulong

	var st : ffi.c_ulong

alias anonomous_record_527 = C_Union[anonomous_record_526, , , , , , , , , ffi.c_ulong]
		# # Node: PlaceHolder()
		# {"closeName":"endcode","id":"0x18d48a90","inner":[{"id":"0x18d48ae0","kind":"VerbatimBlockLineComment","loc":{"col":11,"offset":16940,"tokLen":1},"range":{"begin":{"col":11,"offset":16940,"tokLen":1},"end":{"col":22,"offset":16951,"tokLen":0}},"text":"{.unparsed}"},{"id":"0x18d48b00","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":487,"offset":16956,"tokLen":0},"range":{"begin":{"col":5,"offset":16956,"tokLen":0},"end":{"col":16,"offset":16967,"tokLen":0}},"text":" System Bus"},{"id":"0x18d48b20","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":488,"offset":16972,"tokLen":0},"range":{"begin":{"col":5,"offset":16972,"tokLen":0},"end":{"col":46,"offset":17013,"tokLen":0}},"text":"    |     ----------PCIe module----------"},{"id":"0x18d48b40","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":489,"offset":17018,"tokLen":0},"range":{"begin":{"col":5,"offset":17018,"tokLen":0},"end":{"col":18,"offset":17031,"tokLen":0}},"text":"    |     Bus"},{"id":"0x18d48b60","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":490,"offset":17036,"tokLen":0},"range":{"begin":{"col":5,"offset":17036,"tokLen":0},"end":{"col":24,"offset":17055,"tokLen":0}},"text":"    |     Interface"},{"id":"0x18d48b80","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":491,"offset":17060,"tokLen":0},"range":{"begin":{"col":5,"offset":17060,"tokLen":0},"end":{"col":46,"offset":17101,"tokLen":0}},"text":"    |     -----        ------------------"},{"id":"0x18d48ba0","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":492,"offset":17106,"tokLen":0},"range":{"begin":{"col":5,"offset":17106,"tokLen":0},"end":{"col":46,"offset":17147,"tokLen":0}},"text":"    |     |   |        | PCIe Core0     |"},{"id":"0x18d49bf0","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":493,"offset":17152,"tokLen":0},"range":{"begin":{"col":5,"offset":17152,"tokLen":0},"end":{"col":65,"offset":17212,"tokLen":0}},"text":"    |     |   |        |                |        -----------"},{"id":"0x18d49c10","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":494,"offset":17217,"tokLen":0},"range":{"begin":{"col":5,"offset":17217,"tokLen":0},"end":{"col":65,"offset":17277,"tokLen":0}},"text":"    |     |   |        |   PF-0 -- VF-0 |        | Host A  |"},{"id":"0x18d49c30","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":495,"offset":17282,"tokLen":0},"range":{"begin":{"col":5,"offset":17282,"tokLen":0},"end":{"col":65,"offset":17342,"tokLen":0}},"text":"    |     |   |--------|        |- VF-1 |--------| Root    |"},{"id":"0x18d49c50","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":496,"offset":17347,"tokLen":0},"range":{"begin":{"col":5,"offset":17347,"tokLen":0},"end":{"col":65,"offset":17407,"tokLen":0}},"text":"    |     |   |        |   PF-1         |        | Complex |"},{"id":"0x18d49c70","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":497,"offset":17412,"tokLen":0},"range":{"begin":{"col":5,"offset":17412,"tokLen":0},"end":{"col":65,"offset":17472,"tokLen":0}},"text":"    |     |   |        |   PF-2         |        -----------"},{"id":"0x18d49c90","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":498,"offset":17477,"tokLen":0},"range":{"begin":{"col":5,"offset":17477,"tokLen":0},"end":{"col":46,"offset":17518,"tokLen":0}},"text":"    |     |   |        ------------------"},{"id":"0x18d49cb0","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":499,"offset":17523,"tokLen":0},"range":{"begin":{"col":5,"offset":17523,"tokLen":0},"end":{"col":20,"offset":17538,"tokLen":0}},"text":"    |     |   |"},{"id":"0x18d49cd0","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":500,"offset":17543,"tokLen":0},"range":{"begin":{"col":5,"offset":17543,"tokLen":0},"end":{"col":46,"offset":17584,"tokLen":0}},"text":"    |     |   |        ------------------"},{"id":"0x18d49cf0","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":501,"offset":17589,"tokLen":0},"range":{"begin":{"col":5,"offset":17589,"tokLen":0},"end":{"col":46,"offset":17630,"tokLen":0}},"text":"    |     |   |        | PCIe Core1     |"},{"id":"0x18d49d10","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":502,"offset":17635,"tokLen":0},"range":{"begin":{"col":5,"offset":17635,"tokLen":0},"end":{"col":65,"offset":17695,"tokLen":0}},"text":"    |     |   |        |                |        -----------"},{"id":"0x18d49d30","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":503,"offset":17700,"tokLen":0},"range":{"begin":{"col":5,"offset":17700,"tokLen":0},"end":{"col":65,"offset":17760,"tokLen":0}},"text":"    |     |   |        |   PF-0 -- VF-0 |        | Host B  |"},{"id":"0x18d49d50","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":504,"offset":17765,"tokLen":0},"range":{"begin":{"col":5,"offset":17765,"tokLen":0},"end":{"col":65,"offset":17825,"tokLen":0}},"text":"    |-----|   |--------|   PF-1 -- VF-0 |--------| Root    |"},{"id":"0x18d49d70","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":505,"offset":17830,"tokLen":0},"range":{"begin":{"col":5,"offset":17830,"tokLen":0},"end":{"col":65,"offset":17890,"tokLen":0}},"text":"    |     |   |        |        |- VF-1 |        | Complex |"},{"id":"0x18d49d90","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":506,"offset":17895,"tokLen":0},"range":{"begin":{"col":5,"offset":17895,"tokLen":0},"end":{"col":65,"offset":17955,"tokLen":0}},"text":"    |     |   |        |   PF-2         |        -----------"},{"id":"0x18d49db0","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":507,"offset":17960,"tokLen":0},"range":{"begin":{"col":5,"offset":17960,"tokLen":0},"end":{"col":46,"offset":18001,"tokLen":0}},"text":"    |     |   |        ------------------"},{"id":"0x18d49dd0","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":508,"offset":18006,"tokLen":0},"range":{"begin":{"col":5,"offset":18006,"tokLen":0},"end":{"col":20,"offset":18021,"tokLen":0}},"text":"    |     |   |"},{"id":"0x18d49df0","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":509,"offset":18026,"tokLen":0},"range":{"begin":{"col":5,"offset":18026,"tokLen":0},"end":{"col":46,"offset":18067,"tokLen":0}},"text":"    |     |   |        ------------------"},{"id":"0x18d49e10","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":510,"offset":18072,"tokLen":0},"range":{"begin":{"col":5,"offset":18072,"tokLen":0},"end":{"col":60,"offset":18127,"tokLen":0}},"text":"    |     |DMA|        |                |        ------"},{"id":"0x18d49e30","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":511,"offset":18132,"tokLen":0},"range":{"begin":{"col":5,"offset":18132,"tokLen":0},"end":{"col":60,"offset":18187,"tokLen":0}},"text":"    |     |   |        |                |--------| EP |"},{"id":"0x18d49e50","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":512,"offset":18192,"tokLen":0},"range":{"begin":{"col":5,"offset":18192,"tokLen":0},"end":{"col":60,"offset":18247,"tokLen":0}},"text":"    |     |   |--------| PCIe Core2     |        ------"},{"id":"0x18d49e70","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":513,"offset":18252,"tokLen":0},"range":{"begin":{"col":5,"offset":18252,"tokLen":0},"end":{"col":60,"offset":18307,"tokLen":0}},"text":"    |     |   |        |                |        ------"},{"id":"0x18d49e90","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":514,"offset":18312,"tokLen":0},"range":{"begin":{"col":5,"offset":18312,"tokLen":0},"end":{"col":60,"offset":18367,"tokLen":0}},"text":"    |     |   |        |                |--------| EP |"},{"id":"0x18d49eb0","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":515,"offset":18372,"tokLen":0},"range":{"begin":{"col":5,"offset":18372,"tokLen":0},"end":{"col":60,"offset":18427,"tokLen":0}},"text":"    |     |   |        |                |        ------"},{"id":"0x18d49ed0","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":516,"offset":18432,"tokLen":0},"range":{"begin":{"col":5,"offset":18432,"tokLen":0},"end":{"col":46,"offset":18473,"tokLen":0}},"text":"    |     -----        ------------------"},{"id":"0x18d49ef0","kind":"VerbatimBlockLineComment","loc":{"col":5,"line":517,"offset":18478,"tokLen":0},"range":{"begin":{"col":5,"offset":18478,"tokLen":0},"end":{"col":5,"offset":18478,"tokLen":0}},"text":""}],"kind":"VerbatimBlockComment","loc":{"col":7,"offset":16936,"tokLen":4},"name":"code","range":{"begin":{"col":6,"offset":16935,"tokLen":1},"end":{"col":11,"offset":16940,"tokLen":1}}}
		# # Node: PlaceHolder()
		# {"id":"0x18d4a060","inner":[{"id":"0x18d4a130","inner":[{"id":"0x18d4a090","kind":"TextComment","loc":{"col":11,"line":520,"offset":18508,"tokLen":0},"range":{"begin":{"col":11,"offset":18508,"tokLen":0},"end":{"col":53,"offset":18550,"tokLen":1}},"text":" If some fields can not be supported by the"},{"id":"0x18d4a0b0","kind":"TextComment","loc":{"col":5,"line":521,"offset":18556,"tokLen":0},"range":{"begin":{"col":5,"offset":18556,"tokLen":0},"end":{"col":59,"offset":18610,"tokLen":1}},"text":" hardware/driver, then the driver ignores those fields."},{"id":"0x18d4a0d0","kind":"TextComment","loc":{"col":5,"line":522,"offset":18616,"tokLen":0},"range":{"begin":{"col":5,"offset":18616,"tokLen":0},"end":{"col":63,"offset":18674,"tokLen":1}},"text":" Please check driver-specific documentation for limitations"},{"id":"0x18d4a0f0","kind":"TextComment","loc":{"col":5,"line":523,"offset":18680,"tokLen":0},"range":{"begin":{"col":5,"offset":18680,"tokLen":0},"end":{"col":22,"offset":18697,"tokLen":1}},"text":" and capabilities."}],"kind":"ParagraphComment","loc":{"col":11,"line":520,"offset":18508,"tokLen":0},"range":{"begin":{"col":11,"offset":18508,"tokLen":0},"end":{"col":22,"line":523,"offset":18697,"tokLen":1}}}],"kind":"BlockCommandComment","loc":{"col":7,"offset":18504,"tokLen":4},"name":"note","range":{"begin":{"col":6,"offset":18503,"tokLen":1},"end":{"col":22,"line":523,"offset":18697,"tokLen":1}}}

alias anonomous_record_528 = C_Union[anonomous_record_527]

struct rte_dma_port_param(Copyable & Movable):
# # Node: PlaceHolder()
# {"id":"0x18d48580","inner":[{"id":"0x18d48600","inner":[{"id":"0x18d485b0","kind":"TextComment","loc":{"col":8,"line":467,"offset":16360,"tokLen":0},"range":{"begin":{"col":8,"offset":16360,"tokLen":0},"end":{"col":43,"offset":16395,"tokLen":1}},"text":" struct rte_dma_vchan_conf::src_port"},{"id":"0x18d485d0","kind":"TextComment","loc":{"col":3,"line":468,"offset":16399,"tokLen":0},"range":{"begin":{"col":3,"offset":16399,"tokLen":0},"end":{"col":3,"offset":16399,"tokLen":0}},"text":" "}],"kind":"ParagraphComment","loc":{"col":8,"line":467,"offset":16360,"tokLen":0},"range":{"begin":{"col":8,"offset":16360,"tokLen":0},"end":{"col":3,"line":468,"offset":16399,"tokLen":0}}}],"kind":"BlockCommandComment","loc":{"col":5,"offset":16357,"tokLen":3},"name":"see","range":{"begin":{"col":4,"offset":16356,"tokLen":1},"end":{"col":3,"line":468,"offset":16399,"tokLen":0}}}
# # Node: PlaceHolder()
# {"id":"0x18d48620","inner":[{"id":"0x18d48680","inner":[{"id":"0x18d48650","kind":"TextComment","loc":{"col":8,"offset":16404,"tokLen":0},"range":{"begin":{"col":8,"offset":16404,"tokLen":0},"end":{"col":43,"offset":16439,"tokLen":1}},"text":" struct rte_dma_vchan_conf::dst_port"}],"kind":"ParagraphComment","loc":{"col":8,"offset":16404,"tokLen":0},"range":{"begin":{"col":8,"offset":16404,"tokLen":0},"end":{"col":43,"offset":16439,"tokLen":1}}}],"kind":"BlockCommandComment","loc":{"col":5,"offset":16401,"tokLen":3},"name":"see","range":{"begin":{"col":4,"offset":16400,"tokLen":1},"end":{"col":43,"offset":16439,"tokLen":1}}}

	var port_type : rte_dma_port_type

	var union_placeholder_1 : anonomous_record_528


	var reserved : InlineArray[ffi.c_ulong_long, 2]

struct rte_mempool(Copyable & Movable):
	pass
struct anonomous_record_529(Copyable & Movable):
	var pool : rte_mempool

alias anonomous_record_530 = C_Union[anonomous_record_529]

struct rte_dma_auto_free_param(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_530


	var reserved : InlineArray[ffi.c_ulong_long, 2]

struct rte_dma_vchan_conf(Copyable & Movable):
# # Node: PlaceHolder()
# {"id":"0x18d4ad80","inner":[{"id":"0x18d4ade0","inner":[{"id":"0x18d4adb0","kind":"TextComment","loc":{"col":8,"offset":19822,"tokLen":0},"range":{"begin":{"col":8,"offset":19822,"tokLen":0},"end":{"col":27,"offset":19841,"tokLen":1}},"text":" rte_dma_vchan_setup"}],"kind":"ParagraphComment","loc":{"col":8,"offset":19822,"tokLen":0},"range":{"begin":{"col":8,"offset":19822,"tokLen":0},"end":{"col":27,"offset":19841,"tokLen":1}}}],"kind":"BlockCommandComment","loc":{"col":5,"offset":19819,"tokLen":3},"name":"see","range":{"begin":{"col":4,"offset":19818,"tokLen":1},"end":{"col":27,"offset":19841,"tokLen":1}}}

	var direction : rte_dma_direction

	var nb_desc : UInt16

	var src_port : rte_dma_port_param

	var dst_port : rte_dma_port_param

	var auto_free : rte_dma_auto_free_param

alias rte_dma_vchan_setup = fn (Int16, UInt16, UnsafePointer[rte_dma_vchan_conf
rte_dma_vchan_conf
]) -> Int32
struct rte_dma_stats(Copyable & Movable):
# # Node: PlaceHolder()
# {"id":"0x18d4bd70","inner":[{"id":"0x18d4bdd0","inner":[{"id":"0x18d4bda0","kind":"TextComment","loc":{"col":8,"offset":21580,"tokLen":0},"range":{"begin":{"col":8,"offset":21580,"tokLen":0},"end":{"col":25,"offset":21597,"tokLen":1}},"text":" rte_dma_stats_get"}],"kind":"ParagraphComment","loc":{"col":8,"offset":21580,"tokLen":0},"range":{"begin":{"col":8,"offset":21580,"tokLen":0},"end":{"col":25,"offset":21597,"tokLen":1}}}],"kind":"BlockCommandComment","loc":{"col":5,"offset":21577,"tokLen":3},"name":"see","range":{"begin":{"col":4,"offset":21576,"tokLen":1},"end":{"col":25,"offset":21597,"tokLen":1}}}

	var submitted : ffi.c_ulong

	var completed : ffi.c_ulong

	var errors : ffi.c_ulong

alias rte_dma_stats_get = fn (Int16, UInt16, UnsafePointer[rte_dma_stats
rte_dma_stats
]) -> Int32
alias rte_dma_stats_reset = fn (Int16, UInt16) -> Int32
struct rte_dma_vchan_status(Copyable & Movable):
# # Node: PlaceHolder()
# {"id":"0x18d4ca40","inner":[{"id":"0x18d4caa0","inner":[{"id":"0x18d4ca70","kind":"TextComment","loc":{"col":8,"offset":23079,"tokLen":0},"range":{"begin":{"col":8,"offset":23079,"tokLen":0},"end":{"col":28,"offset":23099,"tokLen":1}},"text":" rte_dma_vchan_status"}],"kind":"ParagraphComment","loc":{"col":8,"offset":23079,"tokLen":0},"range":{"begin":{"col":8,"offset":23079,"tokLen":0},"end":{"col":28,"offset":23099,"tokLen":1}}}],"kind":"BlockCommandComment","loc":{"col":5,"offset":23076,"tokLen":3},"name":"see","range":{"begin":{"col":4,"offset":23075,"tokLen":1},"end":{"col":28,"offset":23099,"tokLen":1}}}

	alias RTE_DMA_VCHAN_IDLE = 0

	alias RTE_DMA_VCHAN_ACTIVE = 1

	alias RTE_DMA_VCHAN_HALTED_ERROR = 2

alias rte_dma_dump = fn (Int16, UnsafePointer[FILE]) -> Int32
struct rte_dma_status_code(Copyable & Movable):
# # Node: PlaceHolder()
# {"id":"0x18d4d6e0","inner":[{"id":"0x18d4d740","inner":[{"id":"0x18d4d710","kind":"TextComment","loc":{"col":8,"offset":24281,"tokLen":0},"range":{"begin":{"col":8,"offset":24281,"tokLen":0},"end":{"col":32,"offset":24305,"tokLen":1}},"text":" rte_dma_completed_status"}],"kind":"ParagraphComment","loc":{"col":8,"offset":24281,"tokLen":0},"range":{"begin":{"col":8,"offset":24281,"tokLen":0},"end":{"col":32,"offset":24305,"tokLen":1}}}],"kind":"BlockCommandComment","loc":{"col":5,"offset":24278,"tokLen":3},"name":"see","range":{"begin":{"col":4,"offset":24277,"tokLen":1},"end":{"col":32,"offset":24305,"tokLen":1}}}

	alias RTE_DMA_STATUS_SUCCESSFUL = 0

	alias RTE_DMA_STATUS_USER_ABORT = 1

	alias RTE_DMA_STATUS_NOT_ATTEMPTED = 2

	alias RTE_DMA_STATUS_INVALID_SRC_ADDR = 3

	alias RTE_DMA_STATUS_INVALID_DST_ADDR = 4

	alias RTE_DMA_STATUS_INVALID_ADDR = 5

	alias RTE_DMA_STATUS_INVALID_LENGTH = 6

	alias RTE_DMA_STATUS_INVALID_OPCODE = 7

	alias RTE_DMA_STATUS_BUS_READ_ERROR = 8

	alias RTE_DMA_STATUS_BUS_WRITE_ERROR = 9

	alias RTE_DMA_STATUS_BUS_ERROR = 10

	alias RTE_DMA_STATUS_DATA_POISION = 11

	alias RTE_DMA_STATUS_DESCRIPTOR_READ_ERROR = 12

	alias RTE_DMA_STATUS_DEV_LINK_ERROR = 13

	alias RTE_DMA_STATUS_PAGE_FAULT = 14

	alias RTE_DMA_STATUS_ERROR_UNKNOWN = 256

struct rte_dma_sge(Copyable & Movable):
# # Node: PlaceHolder()
# {"id":"0x18d4e840","inner":[{"id":"0x18d4e8a0","inner":[{"id":"0x18d4e870","kind":"TextComment","loc":{"col":8,"offset":27022,"tokLen":0},"range":{"begin":{"col":8,"offset":27022,"tokLen":0},"end":{"col":23,"offset":27037,"tokLen":1}},"text":" rte_dma_copy_sg"}],"kind":"ParagraphComment","loc":{"col":8,"offset":27022,"tokLen":0},"range":{"begin":{"col":8,"offset":27022,"tokLen":0},"end":{"col":23,"offset":27037,"tokLen":1}}}],"kind":"BlockCommandComment","loc":{"col":5,"offset":27019,"tokLen":3},"name":"see","range":{"begin":{"col":4,"offset":27018,"tokLen":1},"end":{"col":23,"offset":27037,"tokLen":1}}}

	var addr : ffi.c_ulong

	var length : UInt32

alias rte_dma_copy_t = fn(OpaquePointer, UInt16, rte_iova_t, rte_iova_t, ffi.c_ulong, ffi.c_ulong_long) -> Int32
alias rte_dma_copy_sg_t = fn(OpaquePointer, UInt16, read UnsafePointer[rte_dma_sge], read UnsafePointer[rte_dma_sge], UInt16, UInt16, ffi.c_ulong_long) -> Int32
alias rte_dma_fill_t = fn(OpaquePointer, UInt16, ffi.c_ulong_long, rte_iova_t, ffi.c_ulong, ffi.c_ulong_long) -> Int32
alias rte_dma_submit_t = fn(OpaquePointer, UInt16) -> Int32
alias rte_dma_completed_t = fn(OpaquePointer, UInt16, read UInt16, UnsafePointer[UInt16], UnsafePointer[Bool]) -> UInt16
alias rte_dma_completed_status_t = fn(OpaquePointer, UInt16, read UInt16, UnsafePointer[UInt16], UnsafePointer[rte_dma_status_code]) -> UInt16
alias rte_dma_burst_capacity_t = fn(read OpaquePointer, UInt16) -> UInt16
struct rte_dma_fp_object(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x18c7de50","inner":[{"id":"0x18c7de30","inner":[{"id":"0x18c7dd68","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/dmadev/rte_dmadev_core.h","includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"isMacroArgExpansion":true,"line":64,"offset":2155,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/dmadev/rte_dmadev_core.h","includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"isMacroArgExpansion":true,"line":64,"offset":2155,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/dmadev/rte_dmadev_core.h","includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"isMacroArgExpansion":true,"line":64,"offset":2155,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/dmadev/rte_dmadev_core.h","includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"isMacroArgExpansion":true,"line":64,"offset":2155,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/dmadev/rte_dmadev_core.h","includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"line":64,"offset":2155,"tokLen":19},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/dmadev/rte_dmadev_core.h","includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"line":64,"offset":2155,"tokLen":19},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":121,"offset":3797,"tokLen":1}}}}

# # Node: PlaceHolder()
# {"closeName":"","id":"0x18d4f550","inner":[{"id":"0x18d4f5a0","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"line":55,"offset":1821,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":1821,"tokLen":0},"end":{"col":73,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":1891,"tokLen":0}},"text":" Fast-path dmadev functions and related data are hold in a flat array."},{"id":"0x18d4f5c0","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"line":56,"offset":1894,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":1894,"tokLen":0},"end":{"col":25,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":1916,"tokLen":0}},"text":" One entry per dmadev."},{"id":"0x18d4f5e0","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"line":57,"offset":1919,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":1919,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":1919,"tokLen":0}},"text":""},{"id":"0x18d4f600","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"line":58,"offset":1922,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":1922,"tokLen":0},"end":{"col":72,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":1991,"tokLen":0}},"text":" This structure occupy exactly 128B which reserve space for future IO"},{"id":"0x18d4f620","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"line":59,"offset":1994,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":1994,"tokLen":0},"end":{"col":14,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":2005,"tokLen":0}},"text":" functions."},{"id":"0x18d4f640","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"line":60,"offset":2008,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":2008,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":2008,"tokLen":0}},"text":""},{"id":"0x18d4f660","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"line":61,"offset":2011,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":2011,"tokLen":0},"end":{"col":74,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":2082,"tokLen":0}},"text":" The 'dev_private' field was placed in the first cache line to optimize"},{"id":"0x18d4f680","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"line":62,"offset":2085,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":2085,"tokLen":0},"end":{"col":61,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":2143,"tokLen":0}},"text":" performance because the PMD mainly depends on this field."},{"id":"0x18d4f6a0","kind":"VerbatimBlockLineComment","loc":{"col":1,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"line":63,"offset":2144,"tokLen":0},"range":{"begin":{"col":1,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":2144,"tokLen":0},"end":{"col":2,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":2145,"tokLen":1}},"text":" "},{"id":"0x18d4f6c0","kind":"VerbatimBlockLineComment","loc":{"col":4,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":2147,"tokLen":0},"range":{"begin":{"col":4,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":2147,"tokLen":0},"end":{"col":4,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":2147,"tokLen":0}},"text":""}],"kind":"VerbatimBlockComment","loc":{"col":5,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":1810,"tokLen":8},"name":"internal","range":{"begin":{"col":4,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":1809,"tokLen":1},"end":{"col":13,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/dmadev/rte_dmadev.h"},"offset":1818,"tokLen":0}}}

	var dev_private : OpaquePointer

	var copy_ : fn(OpaquePointer, UInt16, rte_iova_t, rte_iova_t, ffi.c_ulong, ffi.c_ulong_long) -> Int32

	var copy_sg : fn(OpaquePointer, UInt16, read UnsafePointer[rte_dma_sge], read UnsafePointer[rte_dma_sge], UInt16, UInt16, ffi.c_ulong_long) -> Int32

	var fill : fn(OpaquePointer, UInt16, ffi.c_ulong_long, rte_iova_t, ffi.c_ulong, ffi.c_ulong_long) -> Int32

	var submit : fn(OpaquePointer, UInt16) -> Int32

	var completed : fn(OpaquePointer, UInt16, read UInt16, UnsafePointer[UInt16], UnsafePointer[Bool]) -> UInt16

	var completed_status : fn(OpaquePointer, UInt16, read UInt16, UnsafePointer[UInt16], UnsafePointer[rte_dma_status_code]) -> UInt16

	var burst_capacity : fn(read OpaquePointer, UInt16) -> UInt16

alias rte_dma_fp_objs = UnsafePointer[rte_dma_fp_object]
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
alias mktime = fn (UnsafePointer[tm
tm
]) -> time_t
alias strftime = fn (UnsafePointer[Int8], size_t, UnsafePointer[Int8], UnsafePointer[tm
tm
]) -> size_t
alias strftime_l = fn (UnsafePointer[Int8], size_t, UnsafePointer[Int8], UnsafePointer[tm
tm
], locale_t) -> size_t
alias gmtime = fn (UnsafePointer[time_t]) -> UnsafePointer[tm
tm
]
alias localtime = fn (UnsafePointer[time_t]) -> UnsafePointer[tm
tm
]
alias gmtime_r = fn (UnsafePointer[time_t], UnsafePointer[tm
tm
]) -> UnsafePointer[tm
tm
]
alias localtime_r = fn (UnsafePointer[time_t], UnsafePointer[tm
tm
]) -> UnsafePointer[tm
tm
]
alias asctime = fn (UnsafePointer[tm
tm
]) -> UnsafePointer[Int8]
alias ctime = fn (UnsafePointer[time_t]) -> UnsafePointer[Int8]
alias asctime_r = fn (UnsafePointer[tm
tm
], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias ctime_r = fn (UnsafePointer[time_t], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias __tzname = InlineArray[UnsafePointer[Int8], 2]
alias __daylight = Int32
alias __timezone = ffi.c_long
alias tzname = InlineArray[UnsafePointer[Int8], 2]
alias tzset = fn () -> NoneType
alias daylight = Int32
alias timezone = ffi.c_long
alias timegm = fn (UnsafePointer[tm
tm
]) -> time_t
alias timelocal = fn (UnsafePointer[tm
tm
]) -> time_t
alias dysize = fn (Int32) -> Int32
alias nanosleep = fn (UnsafePointer[timespec
timespec
], UnsafePointer[timespec
timespec
]) -> Int32
alias clock_getres = fn (clockid_t, UnsafePointer[timespec
timespec
]) -> Int32
alias clock_gettime = fn (clockid_t, UnsafePointer[timespec
timespec
]) -> Int32
alias clock_settime = fn (clockid_t, UnsafePointer[timespec
timespec
]) -> Int32
alias clock_nanosleep = fn (clockid_t, Int32, UnsafePointer[timespec
timespec
], UnsafePointer[timespec
timespec
]) -> Int32
alias clock_getcpuclockid = fn (pid_t, UnsafePointer[clockid_t]) -> Int32
alias timer_create = fn (clockid_t, UnsafePointer[sigevent
sigevent
], UnsafePointer[timer_t]) -> Int32
alias timer_delete = fn (timer_t) -> Int32
alias timer_settime = fn (timer_t, Int32, UnsafePointer[itimerspec
itimerspec
], UnsafePointer[itimerspec
itimerspec
]) -> Int32
alias timer_gettime = fn (timer_t, UnsafePointer[itimerspec
itimerspec
]) -> Int32
alias timer_getoverrun = fn (timer_t) -> Int32
alias timespec_get = fn (UnsafePointer[timespec
timespec
], Int32) -> Int32
alias rte_atomic_thread_fence = fn (rte_memory_order) -> NoneType
alias rte_atomic16_cmpset = fn (UnsafePointer[Int16], UInt16, UInt16) -> Int32
alias __sync_bool_compare_and_swap = fn () -> NoneType
alias __sync_bool_compare_and_swap_2 = fn (UnsafePointer[Int16], Int16, Int16) -> Bool
alias rte_atomic16_exchange = fn (UnsafePointer[Int16], UInt16) -> UInt16
alias __atomic_exchange_n = fn () -> NoneType
struct anonomous_record_531(Copyable & Movable):

	var cnt : Int16

alias rte_atomic16_t = anonomous_record_531

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
struct anonomous_record_532(Copyable & Movable):

	var cnt : Int32

alias rte_atomic32_t = anonomous_record_532

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
struct anonomous_record_533(Copyable & Movable):

	var cnt : ffi.c_long

alias rte_atomic64_t = anonomous_record_533

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
alias anonomous_record_534 = C_Union[InlineArray[ffi.c_ulong_long, 2], ffi.c_long_long]

struct anonomous_record_535(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x18cc0460","inner":[{"id":"0x18cc0440","inner":[{"id":"0x18cc0180","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}},"end":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}}},"type":{"qualType":"int"},"value":"16","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}},"end":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}}},"type":{"qualType":"int"},"value":"16","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":16,"file":"dpdk/lib/eal/include/generic/rte_atomic.h","includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"line":1101,"offset":25559,"tokLen":13},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":16,"file":"dpdk/lib/eal/include/generic/rte_atomic.h","includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"line":1101,"offset":25559,"tokLen":13},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":121,"offset":3797,"tokLen":1}}}}


	var union_placeholder_1 : anonomous_record_534



alias rte_int128_t = anonomous_record_535

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  128-bit integer structure.

alias __atomic_thread_fence = fn (Int32) -> NoneType
alias rte_atomic128_cmp_exchange = fn (UnsafePointer[ffi.c_long_long], UnsafePointer[ffi.c_long_long], UnsafePointer[ffi.c_long_long], UInt32, Int32, Int32) -> Int32
alias __builtin_expect = fn (ffi.c_long, ffi.c_long) -> ffi.c_long
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
alias rte_delay_us_callback_register = fn (/,userfunc: fn (UInt32) -> NoneType) -> NoneType
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

alias rte_trace_mode_set = fn (
rte_trace_mode
) -> NoneType
alias rte_trace_mode_get = fn () -> 
rte_trace_mode

alias rte_trace_pattern = fn (UnsafePointer[Int8], Bool) -> Int32
alias rte_trace_regexp = fn (UnsafePointer[Int8], Bool) -> Int32
alias rte_trace_save = fn () -> Int32
alias rte_trace_metadata_dump = fn (UnsafePointer[FILE]) -> Int32
alias rte_trace_dump = fn (UnsafePointer[FILE]) -> NoneType
alias ptrdiff_t = ffi.c_long
alias wchar_t = UInt32
struct anonomous_record_536(Copyable & Movable):
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_536

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
alias __rte_trace_point_register = fn (UnsafePointer[rte_trace_point_t], UnsafePointer[Int8], /,register_fn: fn (NoneType) -> NoneType) -> Int32
alias __rte_dma_trace_stats_get = rte_trace_point_t
alias rte_dma_trace_stats_get = fn (Int16, UInt16, UnsafePointer[rte_dma_stats
rte_dma_stats
], Int32) -> NoneType
alias __rte_dma_trace_vchan_status = rte_trace_point_t
alias rte_dma_trace_vchan_status = fn (Int16, UInt16, UnsafePointer[
rte_dma_vchan_status
], Int32) -> NoneType
alias __rte_dma_trace_copy = rte_trace_point_t
alias rte_dma_trace_copy = fn (Int16, UInt16, rte_iova_t, rte_iova_t, UInt32, ffi.c_ulong, Int32) -> NoneType
alias __rte_dma_trace_copy_sg = rte_trace_point_t
alias rte_dma_trace_copy_sg = fn (Int16, UInt16, UnsafePointer[rte_dma_sge
rte_dma_sge
], UnsafePointer[rte_dma_sge
rte_dma_sge
], UInt16, UInt16, ffi.c_ulong, Int32) -> NoneType
alias __rte_dma_trace_fill = rte_trace_point_t
alias rte_dma_trace_fill = fn (Int16, UInt16, ffi.c_ulong, rte_iova_t, UInt32, ffi.c_ulong, Int32) -> NoneType
alias __rte_dma_trace_submit = rte_trace_point_t
alias rte_dma_trace_submit = fn (Int16, UInt16, Int32) -> NoneType
alias __rte_dma_trace_completed = rte_trace_point_t
alias rte_dma_trace_completed = fn (Int16, UInt16, Int16, UnsafePointer[UInt16], UnsafePointer[Bool], UInt16) -> NoneType
alias __rte_dma_trace_completed_status = rte_trace_point_t
alias rte_dma_trace_completed_status = fn (Int16, UInt16, Int16, UnsafePointer[UInt16], UnsafePointer[
rte_dma_status_code
], UInt16) -> NoneType
alias __rte_dma_trace_burst_capacity = rte_trace_point_t
alias rte_dma_trace_burst_capacity = fn (Int16, UInt16, UInt16) -> NoneType
alias rte_dma_copy = fn (Int16, UInt16, rte_iova_t, rte_iova_t, UInt32, ffi.c_ulong) -> Int32
alias rte_dma_copy_sg = fn (Int16, UInt16, UnsafePointer[rte_dma_sge
rte_dma_sge
], UnsafePointer[rte_dma_sge
rte_dma_sge
], UInt16, UInt16, ffi.c_ulong) -> Int32
alias rte_dma_fill = fn (Int16, UInt16, ffi.c_ulong, rte_iova_t, UInt32, ffi.c_ulong) -> Int32
alias rte_dma_submit = fn (Int16, UInt16) -> Int32
alias rte_dma_completed = fn (Int16, UInt16, Int16, UnsafePointer[UInt16], UnsafePointer[Bool]) -> UInt16
alias rte_dma_completed_status = fn (Int16, UInt16, Int16, UnsafePointer[UInt16], UnsafePointer[
rte_dma_status_code
]) -> UInt16
alias rte_dma_burst_capacity = fn (Int16, UInt16) -> UInt16


alias rte_dmadev_remove = ExternalFunction['remove', remove]
alias rte_dmadev_rename = ExternalFunction['rename', rename]
alias rte_dmadev_renameat = ExternalFunction['renameat', renameat]
alias rte_dmadev_fclose = ExternalFunction['fclose', fclose]
alias rte_dmadev_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias rte_dmadev_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias rte_dmadev_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias rte_dmadev_tempnam = ExternalFunction['tempnam', tempnam]
alias rte_dmadev_fflush = ExternalFunction['fflush', fflush]
alias rte_dmadev_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias rte_dmadev_fopen = ExternalFunction['fopen', fopen]
alias rte_dmadev_freopen = ExternalFunction['freopen', freopen]
alias rte_dmadev_fdopen = ExternalFunction['fdopen', fdopen]
alias rte_dmadev_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias rte_dmadev_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias rte_dmadev_setbuf = ExternalFunction['setbuf', setbuf]
alias rte_dmadev_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias rte_dmadev_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias rte_dmadev_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias rte_dmadev_fprintf = ExternalFunction['fprintf', fprintf]
alias rte_dmadev_printf = ExternalFunction['printf', printf]
alias rte_dmadev_sprintf = ExternalFunction['sprintf', sprintf]
alias rte_dmadev_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias rte_dmadev_vprintf = ExternalFunction['vprintf', vprintf]
alias rte_dmadev_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias rte_dmadev_snprintf = ExternalFunction['snprintf', snprintf]
alias rte_dmadev_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias rte_dmadev_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias rte_dmadev_dprintf = ExternalFunction['dprintf', dprintf]
alias rte_dmadev_fscanf = ExternalFunction['fscanf', fscanf]
alias rte_dmadev_scanf = ExternalFunction['scanf', scanf]
alias rte_dmadev_sscanf = ExternalFunction['sscanf', sscanf]
alias rte_dmadev_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias rte_dmadev_vscanf = ExternalFunction['vscanf', vscanf]
alias rte_dmadev_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias rte_dmadev_fgetc = ExternalFunction['fgetc', fgetc]
alias rte_dmadev_getc = ExternalFunction['getc', getc]
alias rte_dmadev_getchar = ExternalFunction['getchar', getchar]
alias rte_dmadev_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias rte_dmadev_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias rte_dmadev_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias rte_dmadev_fputc = ExternalFunction['fputc', fputc]
alias rte_dmadev_putc = ExternalFunction['putc', putc]
alias rte_dmadev_putchar = ExternalFunction['putchar', putchar]
alias rte_dmadev_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias rte_dmadev_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias rte_dmadev_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias rte_dmadev_getw = ExternalFunction['getw', getw]
alias rte_dmadev_putw = ExternalFunction['putw', putw]
alias rte_dmadev_fgets = ExternalFunction['fgets', fgets]
alias rte_dmadev_getdelim = ExternalFunction['getdelim', getdelim]
alias rte_dmadev_getline = ExternalFunction['getline', getline]
alias rte_dmadev_fputs = ExternalFunction['fputs', fputs]
alias rte_dmadev_puts = ExternalFunction['puts', puts]
alias rte_dmadev_ungetc = ExternalFunction['ungetc', ungetc]
alias rte_dmadev_fread = ExternalFunction['fread', fread]
alias rte_dmadev_fwrite = ExternalFunction['fwrite', fwrite]
alias rte_dmadev_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias rte_dmadev_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias rte_dmadev_fseek = ExternalFunction['fseek', fseek]
alias rte_dmadev_ftell = ExternalFunction['ftell', ftell]
alias rte_dmadev_rewind = ExternalFunction['rewind', rewind]
alias rte_dmadev_fseeko = ExternalFunction['fseeko', fseeko]
alias rte_dmadev_ftello = ExternalFunction['ftello', ftello]
alias rte_dmadev_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias rte_dmadev_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias rte_dmadev_clearerr = ExternalFunction['clearerr', clearerr]
alias rte_dmadev_feof = ExternalFunction['feof', feof]
alias rte_dmadev_ferror = ExternalFunction['ferror', ferror]
alias rte_dmadev_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias rte_dmadev_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias rte_dmadev_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias rte_dmadev_perror = ExternalFunction['perror', perror]
alias rte_dmadev_fileno = ExternalFunction['fileno', fileno]
alias rte_dmadev_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias rte_dmadev_pclose = ExternalFunction['pclose', pclose]
alias rte_dmadev_popen = ExternalFunction['popen', popen]
alias rte_dmadev_ctermid = ExternalFunction['ctermid', ctermid]
alias rte_dmadev_flockfile = ExternalFunction['flockfile', flockfile]
alias rte_dmadev_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias rte_dmadev_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias rte_dmadev_alloca = ExternalFunction['alloca', alloca]
alias rte_dmadev_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_dmadev_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_dmadev_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_dmadev_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_dmadev_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_dmadev_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_dmadev_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_dmadev_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_dmadev_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_dmadev_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_dmadev_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_dmadev_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_dmadev_rte_openlog_stream = ExternalFunction['rte_openlog_stream', rte_openlog_stream]
alias rte_dmadev_rte_log_get_stream = ExternalFunction['rte_log_get_stream', rte_log_get_stream]
alias rte_dmadev_rte_log_set_global_level = ExternalFunction['rte_log_set_global_level', rte_log_set_global_level]
alias rte_dmadev_rte_log_get_global_level = ExternalFunction['rte_log_get_global_level', rte_log_get_global_level]
alias rte_dmadev_rte_log_get_level = ExternalFunction['rte_log_get_level', rte_log_get_level]
alias rte_dmadev_rte_log_can_log = ExternalFunction['rte_log_can_log', rte_log_can_log]
alias rte_dmadev_rte_log_set_level_pattern = ExternalFunction['rte_log_set_level_pattern', rte_log_set_level_pattern]
alias rte_dmadev_rte_log_set_level_regexp = ExternalFunction['rte_log_set_level_regexp', rte_log_set_level_regexp]
alias rte_dmadev_rte_log_set_level = ExternalFunction['rte_log_set_level', rte_log_set_level]
alias rte_dmadev_rte_log_cur_msg_loglevel = ExternalFunction['rte_log_cur_msg_loglevel', rte_log_cur_msg_loglevel]
alias rte_dmadev_rte_log_cur_msg_logtype = ExternalFunction['rte_log_cur_msg_logtype', rte_log_cur_msg_logtype]
alias rte_dmadev_rte_log_register = ExternalFunction['rte_log_register', rte_log_register]
alias rte_dmadev_rte_log_register_type_and_pick_level = ExternalFunction['rte_log_register_type_and_pick_level', rte_log_register_type_and_pick_level]
alias rte_dmadev_rte_log_list_types = ExternalFunction['rte_log_list_types', rte_log_list_types]
alias rte_dmadev_rte_log_dump = ExternalFunction['rte_log_dump', rte_log_dump]
alias rte_dmadev_rte_log = ExternalFunction['rte_log', rte_log]
alias rte_dmadev_rte_vlog = ExternalFunction['rte_vlog', rte_vlog]
alias rte_dmadev_rte_dump_stack = ExternalFunction['rte_dump_stack', rte_dump_stack]
alias rte_dmadev_rte_bit_relaxed_get32 = ExternalFunction['rte_bit_relaxed_get32', rte_bit_relaxed_get32]
alias rte_dmadev_rte_bit_relaxed_set32 = ExternalFunction['rte_bit_relaxed_set32', rte_bit_relaxed_set32]
alias rte_dmadev_rte_bit_relaxed_clear32 = ExternalFunction['rte_bit_relaxed_clear32', rte_bit_relaxed_clear32]
alias rte_dmadev_rte_bit_relaxed_test_and_set32 = ExternalFunction['rte_bit_relaxed_test_and_set32', rte_bit_relaxed_test_and_set32]
alias rte_dmadev_rte_bit_relaxed_test_and_clear32 = ExternalFunction['rte_bit_relaxed_test_and_clear32', rte_bit_relaxed_test_and_clear32]
alias rte_dmadev_rte_bit_relaxed_get64 = ExternalFunction['rte_bit_relaxed_get64', rte_bit_relaxed_get64]
alias rte_dmadev_rte_bit_relaxed_set64 = ExternalFunction['rte_bit_relaxed_set64', rte_bit_relaxed_set64]
alias rte_dmadev_rte_bit_relaxed_clear64 = ExternalFunction['rte_bit_relaxed_clear64', rte_bit_relaxed_clear64]
alias rte_dmadev_rte_bit_relaxed_test_and_set64 = ExternalFunction['rte_bit_relaxed_test_and_set64', rte_bit_relaxed_test_and_set64]
alias rte_dmadev_rte_bit_relaxed_test_and_clear64 = ExternalFunction['rte_bit_relaxed_test_and_clear64', rte_bit_relaxed_test_and_clear64]
alias rte_dmadev_rte_clz32 = ExternalFunction['rte_clz32', rte_clz32]
alias rte_dmadev_rte_clz64 = ExternalFunction['rte_clz64', rte_clz64]
alias rte_dmadev_rte_ctz32 = ExternalFunction['rte_ctz32', rte_ctz32]
alias rte_dmadev_rte_ctz64 = ExternalFunction['rte_ctz64', rte_ctz64]
alias rte_dmadev_rte_popcount32 = ExternalFunction['rte_popcount32', rte_popcount32]
alias rte_dmadev_rte_popcount64 = ExternalFunction['rte_popcount64', rte_popcount64]
alias rte_dmadev_rte_ffs32 = ExternalFunction['rte_ffs32', rte_ffs32]
alias rte_dmadev_rte_ffs64 = ExternalFunction['rte_ffs64', rte_ffs64]
alias rte_dmadev_rte_combine32ms1b = ExternalFunction['rte_combine32ms1b', rte_combine32ms1b]
alias rte_dmadev_rte_combine64ms1b = ExternalFunction['rte_combine64ms1b', rte_combine64ms1b]
alias rte_dmadev_rte_bsf32 = ExternalFunction['rte_bsf32', rte_bsf32]
alias rte_dmadev_rte_bsf32_safe = ExternalFunction['rte_bsf32_safe', rte_bsf32_safe]
alias rte_dmadev_rte_bsf64 = ExternalFunction['rte_bsf64', rte_bsf64]
alias rte_dmadev_rte_bsf64_safe = ExternalFunction['rte_bsf64_safe', rte_bsf64_safe]
alias rte_dmadev_rte_fls_u32 = ExternalFunction['rte_fls_u32', rte_fls_u32]
alias rte_dmadev_rte_fls_u64 = ExternalFunction['rte_fls_u64', rte_fls_u64]
alias rte_dmadev_rte_is_power_of_2 = ExternalFunction['rte_is_power_of_2', rte_is_power_of_2]
alias rte_dmadev_rte_align32pow2 = ExternalFunction['rte_align32pow2', rte_align32pow2]
alias rte_dmadev_rte_align32prevpow2 = ExternalFunction['rte_align32prevpow2', rte_align32prevpow2]
alias rte_dmadev_rte_align64pow2 = ExternalFunction['rte_align64pow2', rte_align64pow2]
alias rte_dmadev_rte_align64prevpow2 = ExternalFunction['rte_align64prevpow2', rte_align64prevpow2]
alias rte_dmadev_rte_log2_u32 = ExternalFunction['rte_log2_u32', rte_log2_u32]
alias rte_dmadev_rte_log2_u64 = ExternalFunction['rte_log2_u64', rte_log2_u64]
alias rte_dmadev_rte_dma_dev_max = ExternalFunction['rte_dma_dev_max', rte_dma_dev_max]
alias rte_dmadev_rte_dma_get_dev_id_by_name = ExternalFunction['rte_dma_get_dev_id_by_name', rte_dma_get_dev_id_by_name]
alias rte_dmadev_rte_dma_is_valid = ExternalFunction['rte_dma_is_valid', rte_dma_is_valid]
alias rte_dmadev_rte_dma_count_avail = ExternalFunction['rte_dma_count_avail', rte_dma_count_avail]
alias rte_dmadev_rte_dma_next_dev = ExternalFunction['rte_dma_next_dev', rte_dma_next_dev]
alias rte_dmadev_rte_dma_info_get = ExternalFunction['rte_dma_info_get', rte_dma_info_get]
alias rte_dmadev_rte_dma_configure = ExternalFunction['rte_dma_configure', rte_dma_configure]
alias rte_dmadev_rte_dma_start = ExternalFunction['rte_dma_start', rte_dma_start]
alias rte_dmadev_rte_dma_stop = ExternalFunction['rte_dma_stop', rte_dma_stop]
alias rte_dmadev_rte_dma_close = ExternalFunction['rte_dma_close', rte_dma_close]
alias rte_dmadev_rte_dma_vchan_setup = ExternalFunction['rte_dma_vchan_setup', rte_dma_vchan_setup]
alias rte_dmadev_rte_dma_stats_get = ExternalFunction['rte_dma_stats_get', rte_dma_stats_get]
alias rte_dmadev_rte_dma_stats_reset = ExternalFunction['rte_dma_stats_reset', rte_dma_stats_reset]
alias rte_dmadev_rte_dma_dump = ExternalFunction['rte_dma_dump', rte_dma_dump]
alias rte_dmadev_clock = ExternalFunction['clock', clock]
alias rte_dmadev_time = ExternalFunction['time', time]
alias rte_dmadev_difftime = ExternalFunction['difftime', difftime]
alias rte_dmadev_mktime = ExternalFunction['mktime', mktime]
alias rte_dmadev_strftime = ExternalFunction['strftime', strftime]
alias rte_dmadev_strftime_l = ExternalFunction['strftime_l', strftime_l]
alias rte_dmadev_gmtime = ExternalFunction['gmtime', gmtime]
alias rte_dmadev_localtime = ExternalFunction['localtime', localtime]
alias rte_dmadev_gmtime_r = ExternalFunction['gmtime_r', gmtime_r]
alias rte_dmadev_localtime_r = ExternalFunction['localtime_r', localtime_r]
alias rte_dmadev_asctime = ExternalFunction['asctime', asctime]
alias rte_dmadev_ctime = ExternalFunction['ctime', ctime]
alias rte_dmadev_asctime_r = ExternalFunction['asctime_r', asctime_r]
alias rte_dmadev_ctime_r = ExternalFunction['ctime_r', ctime_r]
alias rte_dmadev_tzset = ExternalFunction['tzset', tzset]
alias rte_dmadev_timegm = ExternalFunction['timegm', timegm]
alias rte_dmadev_timelocal = ExternalFunction['timelocal', timelocal]
alias rte_dmadev_dysize = ExternalFunction['dysize', dysize]
alias rte_dmadev_nanosleep = ExternalFunction['nanosleep', nanosleep]
alias rte_dmadev_clock_getres = ExternalFunction['clock_getres', clock_getres]
alias rte_dmadev_clock_gettime = ExternalFunction['clock_gettime', clock_gettime]
alias rte_dmadev_clock_settime = ExternalFunction['clock_settime', clock_settime]
alias rte_dmadev_clock_nanosleep = ExternalFunction['clock_nanosleep', clock_nanosleep]
alias rte_dmadev_clock_getcpuclockid = ExternalFunction['clock_getcpuclockid', clock_getcpuclockid]
alias rte_dmadev_timer_create = ExternalFunction['timer_create', timer_create]
alias rte_dmadev_timer_delete = ExternalFunction['timer_delete', timer_delete]
alias rte_dmadev_timer_settime = ExternalFunction['timer_settime', timer_settime]
alias rte_dmadev_timer_gettime = ExternalFunction['timer_gettime', timer_gettime]
alias rte_dmadev_timer_getoverrun = ExternalFunction['timer_getoverrun', timer_getoverrun]
alias rte_dmadev_timespec_get = ExternalFunction['timespec_get', timespec_get]
alias rte_dmadev_rte_atomic_thread_fence = ExternalFunction['rte_atomic_thread_fence', rte_atomic_thread_fence]
alias rte_dmadev_rte_atomic16_cmpset = ExternalFunction['rte_atomic16_cmpset', rte_atomic16_cmpset]
alias rte_dmadev_rte_atomic16_exchange = ExternalFunction['rte_atomic16_exchange', rte_atomic16_exchange]
alias rte_dmadev_rte_atomic16_init = ExternalFunction['rte_atomic16_init', rte_atomic16_init]
alias rte_dmadev_rte_atomic16_read = ExternalFunction['rte_atomic16_read', rte_atomic16_read]
alias rte_dmadev_rte_atomic16_set = ExternalFunction['rte_atomic16_set', rte_atomic16_set]
alias rte_dmadev_rte_atomic16_add = ExternalFunction['rte_atomic16_add', rte_atomic16_add]
alias rte_dmadev_rte_atomic16_sub = ExternalFunction['rte_atomic16_sub', rte_atomic16_sub]
alias rte_dmadev_rte_atomic16_inc = ExternalFunction['rte_atomic16_inc', rte_atomic16_inc]
alias rte_dmadev_rte_atomic16_dec = ExternalFunction['rte_atomic16_dec', rte_atomic16_dec]
alias rte_dmadev_rte_atomic16_add_return = ExternalFunction['rte_atomic16_add_return', rte_atomic16_add_return]
alias rte_dmadev_rte_atomic16_sub_return = ExternalFunction['rte_atomic16_sub_return', rte_atomic16_sub_return]
alias rte_dmadev_rte_atomic16_inc_and_test = ExternalFunction['rte_atomic16_inc_and_test', rte_atomic16_inc_and_test]
alias rte_dmadev_rte_atomic16_dec_and_test = ExternalFunction['rte_atomic16_dec_and_test', rte_atomic16_dec_and_test]
alias rte_dmadev_rte_atomic16_test_and_set = ExternalFunction['rte_atomic16_test_and_set', rte_atomic16_test_and_set]
alias rte_dmadev_rte_atomic16_clear = ExternalFunction['rte_atomic16_clear', rte_atomic16_clear]
alias rte_dmadev_rte_atomic32_cmpset = ExternalFunction['rte_atomic32_cmpset', rte_atomic32_cmpset]
alias rte_dmadev_rte_atomic32_exchange = ExternalFunction['rte_atomic32_exchange', rte_atomic32_exchange]
alias rte_dmadev_rte_atomic32_init = ExternalFunction['rte_atomic32_init', rte_atomic32_init]
alias rte_dmadev_rte_atomic32_read = ExternalFunction['rte_atomic32_read', rte_atomic32_read]
alias rte_dmadev_rte_atomic32_set = ExternalFunction['rte_atomic32_set', rte_atomic32_set]
alias rte_dmadev_rte_atomic32_add = ExternalFunction['rte_atomic32_add', rte_atomic32_add]
alias rte_dmadev_rte_atomic32_sub = ExternalFunction['rte_atomic32_sub', rte_atomic32_sub]
alias rte_dmadev_rte_atomic32_inc = ExternalFunction['rte_atomic32_inc', rte_atomic32_inc]
alias rte_dmadev_rte_atomic32_dec = ExternalFunction['rte_atomic32_dec', rte_atomic32_dec]
alias rte_dmadev_rte_atomic32_add_return = ExternalFunction['rte_atomic32_add_return', rte_atomic32_add_return]
alias rte_dmadev_rte_atomic32_sub_return = ExternalFunction['rte_atomic32_sub_return', rte_atomic32_sub_return]
alias rte_dmadev_rte_atomic32_inc_and_test = ExternalFunction['rte_atomic32_inc_and_test', rte_atomic32_inc_and_test]
alias rte_dmadev_rte_atomic32_dec_and_test = ExternalFunction['rte_atomic32_dec_and_test', rte_atomic32_dec_and_test]
alias rte_dmadev_rte_atomic32_test_and_set = ExternalFunction['rte_atomic32_test_and_set', rte_atomic32_test_and_set]
alias rte_dmadev_rte_atomic32_clear = ExternalFunction['rte_atomic32_clear', rte_atomic32_clear]
alias rte_dmadev_rte_atomic64_cmpset = ExternalFunction['rte_atomic64_cmpset', rte_atomic64_cmpset]
alias rte_dmadev_rte_atomic64_exchange = ExternalFunction['rte_atomic64_exchange', rte_atomic64_exchange]
alias rte_dmadev_rte_atomic64_init = ExternalFunction['rte_atomic64_init', rte_atomic64_init]
alias rte_dmadev_rte_atomic64_read = ExternalFunction['rte_atomic64_read', rte_atomic64_read]
alias rte_dmadev_rte_atomic64_set = ExternalFunction['rte_atomic64_set', rte_atomic64_set]
alias rte_dmadev_rte_atomic64_add = ExternalFunction['rte_atomic64_add', rte_atomic64_add]
alias rte_dmadev_rte_atomic64_sub = ExternalFunction['rte_atomic64_sub', rte_atomic64_sub]
alias rte_dmadev_rte_atomic64_inc = ExternalFunction['rte_atomic64_inc', rte_atomic64_inc]
alias rte_dmadev_rte_atomic64_dec = ExternalFunction['rte_atomic64_dec', rte_atomic64_dec]
alias rte_dmadev_rte_atomic64_add_return = ExternalFunction['rte_atomic64_add_return', rte_atomic64_add_return]
alias rte_dmadev_rte_atomic64_sub_return = ExternalFunction['rte_atomic64_sub_return', rte_atomic64_sub_return]
alias rte_dmadev_rte_atomic64_inc_and_test = ExternalFunction['rte_atomic64_inc_and_test', rte_atomic64_inc_and_test]
alias rte_dmadev_rte_atomic64_dec_and_test = ExternalFunction['rte_atomic64_dec_and_test', rte_atomic64_dec_and_test]
alias rte_dmadev_rte_atomic64_test_and_set = ExternalFunction['rte_atomic64_test_and_set', rte_atomic64_test_and_set]
alias rte_dmadev_rte_atomic64_clear = ExternalFunction['rte_atomic64_clear', rte_atomic64_clear]
alias rte_dmadev_rte_atomic128_cmp_exchange = ExternalFunction['rte_atomic128_cmp_exchange', rte_atomic128_cmp_exchange]
alias rte_dmadev_rte_get_tsc_hz = ExternalFunction['rte_get_tsc_hz', rte_get_tsc_hz]
alias rte_dmadev_rte_get_tsc_cycles = ExternalFunction['rte_get_tsc_cycles', rte_get_tsc_cycles]
alias rte_dmadev_rte_get_timer_cycles = ExternalFunction['rte_get_timer_cycles', rte_get_timer_cycles]
alias rte_dmadev_rte_get_timer_hz = ExternalFunction['rte_get_timer_hz', rte_get_timer_hz]
alias rte_dmadev_rte_delay_ms = ExternalFunction['rte_delay_ms', rte_delay_ms]
alias rte_dmadev_rte_delay_us_block = ExternalFunction['rte_delay_us_block', rte_delay_us_block]
alias rte_dmadev_rte_delay_us_sleep = ExternalFunction['rte_delay_us_sleep', rte_delay_us_sleep]
alias rte_dmadev_rte_delay_us_callback_register = ExternalFunction['rte_delay_us_callback_register', rte_delay_us_callback_register]
alias rte_dmadev_rte_rdtsc = ExternalFunction['rte_rdtsc', rte_rdtsc]
alias rte_dmadev_rte_rdtsc_precise = ExternalFunction['rte_rdtsc_precise', rte_rdtsc_precise]
alias rte_dmadev_isalnum = ExternalFunction['isalnum', isalnum]
alias rte_dmadev_isalpha = ExternalFunction['isalpha', isalpha]
alias rte_dmadev_iscntrl = ExternalFunction['iscntrl', iscntrl]
alias rte_dmadev_isdigit = ExternalFunction['isdigit', isdigit]
alias rte_dmadev_islower = ExternalFunction['islower', islower]
alias rte_dmadev_isgraph = ExternalFunction['isgraph', isgraph]
alias rte_dmadev_isprint = ExternalFunction['isprint', isprint]
alias rte_dmadev_ispunct = ExternalFunction['ispunct', ispunct]
alias rte_dmadev_isspace = ExternalFunction['isspace', isspace]
alias rte_dmadev_isupper = ExternalFunction['isupper', isupper]
alias rte_dmadev_isxdigit = ExternalFunction['isxdigit', isxdigit]
alias rte_dmadev_tolower = ExternalFunction['tolower', tolower]
alias rte_dmadev_toupper = ExternalFunction['toupper', toupper]
alias rte_dmadev_isblank = ExternalFunction['isblank', isblank]
alias rte_dmadev_isascii = ExternalFunction['isascii', isascii]
alias rte_dmadev_toascii = ExternalFunction['toascii', toascii]
alias rte_dmadev_isalnum_l = ExternalFunction['isalnum_l', isalnum_l]
alias rte_dmadev_isalpha_l = ExternalFunction['isalpha_l', isalpha_l]
alias rte_dmadev_iscntrl_l = ExternalFunction['iscntrl_l', iscntrl_l]
alias rte_dmadev_isdigit_l = ExternalFunction['isdigit_l', isdigit_l]
alias rte_dmadev_islower_l = ExternalFunction['islower_l', islower_l]
alias rte_dmadev_isgraph_l = ExternalFunction['isgraph_l', isgraph_l]
alias rte_dmadev_isprint_l = ExternalFunction['isprint_l', isprint_l]
alias rte_dmadev_ispunct_l = ExternalFunction['ispunct_l', ispunct_l]
alias rte_dmadev_isspace_l = ExternalFunction['isspace_l', isspace_l]
alias rte_dmadev_isupper_l = ExternalFunction['isupper_l', isupper_l]
alias rte_dmadev_isxdigit_l = ExternalFunction['isxdigit_l', isxdigit_l]
alias rte_dmadev_isblank_l = ExternalFunction['isblank_l', isblank_l]
alias rte_dmadev_tolower_l = ExternalFunction['tolower_l', tolower_l]
alias rte_dmadev_toupper_l = ExternalFunction['toupper_l', toupper_l]
alias rte_dmadev_memcpy = ExternalFunction['memcpy', memcpy]
alias rte_dmadev_memmove = ExternalFunction['memmove', memmove]
alias rte_dmadev_memccpy = ExternalFunction['memccpy', memccpy]
alias rte_dmadev_memset = ExternalFunction['memset', memset]
alias rte_dmadev_memcmp = ExternalFunction['memcmp', memcmp]
alias rte_dmadev_memchr = ExternalFunction['memchr', memchr]
alias rte_dmadev_strcpy = ExternalFunction['strcpy', strcpy]
alias rte_dmadev_strncpy = ExternalFunction['strncpy', strncpy]
alias rte_dmadev_strcat = ExternalFunction['strcat', strcat]
alias rte_dmadev_strncat = ExternalFunction['strncat', strncat]
alias rte_dmadev_strcmp = ExternalFunction['strcmp', strcmp]
alias rte_dmadev_strncmp = ExternalFunction['strncmp', strncmp]
alias rte_dmadev_strcoll = ExternalFunction['strcoll', strcoll]
alias rte_dmadev_strxfrm = ExternalFunction['strxfrm', strxfrm]
alias rte_dmadev_strcoll_l = ExternalFunction['strcoll_l', strcoll_l]
alias rte_dmadev_strxfrm_l = ExternalFunction['strxfrm_l', strxfrm_l]
alias rte_dmadev_strdup = ExternalFunction['strdup', strdup]
alias rte_dmadev_strndup = ExternalFunction['strndup', strndup]
alias rte_dmadev_strchr = ExternalFunction['strchr', strchr]
alias rte_dmadev_strrchr = ExternalFunction['strrchr', strrchr]
alias rte_dmadev_strcspn = ExternalFunction['strcspn', strcspn]
alias rte_dmadev_strspn = ExternalFunction['strspn', strspn]
alias rte_dmadev_strpbrk = ExternalFunction['strpbrk', strpbrk]
alias rte_dmadev_strstr = ExternalFunction['strstr', strstr]
alias rte_dmadev_strtok = ExternalFunction['strtok', strtok]
alias rte_dmadev_strtok_r = ExternalFunction['strtok_r', strtok_r]
alias rte_dmadev_strlen = ExternalFunction['strlen', strlen]
alias rte_dmadev_strnlen = ExternalFunction['strnlen', strnlen]
alias rte_dmadev_strerror = ExternalFunction['strerror', strerror]
alias rte_dmadev_strerror_r = ExternalFunction['strerror_r', strerror_r]
alias rte_dmadev_strerror_l = ExternalFunction['strerror_l', strerror_l]
alias rte_dmadev_bcmp = ExternalFunction['bcmp', bcmp]
alias rte_dmadev_bcopy = ExternalFunction['bcopy', bcopy]
alias rte_dmadev_bzero = ExternalFunction['bzero', bzero]
alias rte_dmadev_index = ExternalFunction['index', index]
alias rte_dmadev_rindex = ExternalFunction['rindex', rindex]
alias rte_dmadev_ffs = ExternalFunction['ffs', ffs]
alias rte_dmadev_ffsl = ExternalFunction['ffsl', ffsl]
alias rte_dmadev_ffsll = ExternalFunction['ffsll', ffsll]
alias rte_dmadev_strcasecmp = ExternalFunction['strcasecmp', strcasecmp]
alias rte_dmadev_strncasecmp = ExternalFunction['strncasecmp', strncasecmp]
alias rte_dmadev_strcasecmp_l = ExternalFunction['strcasecmp_l', strcasecmp_l]
alias rte_dmadev_strncasecmp_l = ExternalFunction['strncasecmp_l', strncasecmp_l]
alias rte_dmadev_explicit_bzero = ExternalFunction['explicit_bzero', explicit_bzero]
alias rte_dmadev_strsep = ExternalFunction['strsep', strsep]
alias rte_dmadev_strsignal = ExternalFunction['strsignal', strsignal]
alias rte_dmadev_stpcpy = ExternalFunction['stpcpy', stpcpy]
alias rte_dmadev_stpncpy = ExternalFunction['stpncpy', stpncpy]
alias rte_dmadev_rte_strsplit = ExternalFunction['rte_strsplit', rte_strsplit]
alias rte_dmadev_rte_strlcpy = ExternalFunction['rte_strlcpy', rte_strlcpy]
alias rte_dmadev_rte_strlcat = ExternalFunction['rte_strlcat', rte_strlcat]
alias rte_dmadev_rte_strscpy = ExternalFunction['rte_strscpy', rte_strscpy]
alias rte_dmadev_rte_str_skip_leading_spaces = ExternalFunction['rte_str_skip_leading_spaces', rte_str_skip_leading_spaces]
alias rte_dmadev_rte_trace_is_enabled = ExternalFunction['rte_trace_is_enabled', rte_trace_is_enabled]
alias rte_dmadev_rte_trace_feature_is_enabled = ExternalFunction['rte_trace_feature_is_enabled', rte_trace_feature_is_enabled]
alias rte_dmadev_rte_trace_mode_set = ExternalFunction['rte_trace_mode_set', rte_trace_mode_set]
alias rte_dmadev_rte_trace_mode_get = ExternalFunction['rte_trace_mode_get', rte_trace_mode_get]
alias rte_dmadev_rte_trace_pattern = ExternalFunction['rte_trace_pattern', rte_trace_pattern]
alias rte_dmadev_rte_trace_regexp = ExternalFunction['rte_trace_regexp', rte_trace_regexp]
alias rte_dmadev_rte_trace_save = ExternalFunction['rte_trace_save', rte_trace_save]
alias rte_dmadev_rte_trace_metadata_dump = ExternalFunction['rte_trace_metadata_dump', rte_trace_metadata_dump]
alias rte_dmadev_rte_trace_dump = ExternalFunction['rte_trace_dump', rte_trace_dump]
alias rte_dmadev_rte_uuid_is_null = ExternalFunction['rte_uuid_is_null', rte_uuid_is_null]
alias rte_dmadev_rte_uuid_copy = ExternalFunction['rte_uuid_copy', rte_uuid_copy]
alias rte_dmadev_rte_uuid_compare = ExternalFunction['rte_uuid_compare', rte_uuid_compare]
alias rte_dmadev_rte_uuid_parse = ExternalFunction['rte_uuid_parse', rte_uuid_parse]
alias rte_dmadev_rte_uuid_unparse = ExternalFunction['rte_uuid_unparse', rte_uuid_unparse]
alias rte_dmadev_rte_trace_point_enable = ExternalFunction['rte_trace_point_enable', rte_trace_point_enable]
alias rte_dmadev_rte_trace_point_disable = ExternalFunction['rte_trace_point_disable', rte_trace_point_disable]
alias rte_dmadev_rte_trace_point_is_enabled = ExternalFunction['rte_trace_point_is_enabled', rte_trace_point_is_enabled]
alias rte_dmadev_rte_trace_point_lookup = ExternalFunction['rte_trace_point_lookup', rte_trace_point_lookup]
alias rte_dmadev_rte_dma_trace_stats_get = ExternalFunction['rte_dma_trace_stats_get', rte_dma_trace_stats_get]
alias rte_dmadev_rte_dma_trace_vchan_status = ExternalFunction['rte_dma_trace_vchan_status', rte_dma_trace_vchan_status]
alias rte_dmadev_rte_dma_trace_copy = ExternalFunction['rte_dma_trace_copy', rte_dma_trace_copy]
alias rte_dmadev_rte_dma_trace_copy_sg = ExternalFunction['rte_dma_trace_copy_sg', rte_dma_trace_copy_sg]
alias rte_dmadev_rte_dma_trace_fill = ExternalFunction['rte_dma_trace_fill', rte_dma_trace_fill]
alias rte_dmadev_rte_dma_trace_submit = ExternalFunction['rte_dma_trace_submit', rte_dma_trace_submit]
alias rte_dmadev_rte_dma_trace_completed = ExternalFunction['rte_dma_trace_completed', rte_dma_trace_completed]
alias rte_dmadev_rte_dma_trace_completed_status = ExternalFunction['rte_dma_trace_completed_status', rte_dma_trace_completed_status]
alias rte_dmadev_rte_dma_trace_burst_capacity = ExternalFunction['rte_dma_trace_burst_capacity', rte_dma_trace_burst_capacity]
alias rte_dmadev_rte_dma_copy = ExternalFunction['rte_dma_copy', rte_dma_copy]
alias rte_dmadev_rte_dma_copy_sg = ExternalFunction['rte_dma_copy_sg', rte_dma_copy_sg]
alias rte_dmadev_rte_dma_fill = ExternalFunction['rte_dma_fill', rte_dma_fill]
alias rte_dmadev_rte_dma_submit = ExternalFunction['rte_dma_submit', rte_dma_submit]
alias rte_dmadev_rte_dma_completed = ExternalFunction['rte_dma_completed', rte_dma_completed]
alias rte_dmadev_rte_dma_completed_status = ExternalFunction['rte_dma_completed_status', rte_dma_completed_status]
alias rte_dmadev_rte_dma_burst_capacity = ExternalFunction['rte_dma_burst_capacity', rte_dma_burst_capacity]

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
struct rte_dmadev(Copyable, Movable):
    var lib: DLHandle
    
    var remove: rte_dmadev_remove.type
    var rename: rte_dmadev_rename.type
    var renameat: rte_dmadev_renameat.type
    var fclose: rte_dmadev_fclose.type
    var tmpfile: rte_dmadev_tmpfile.type
    var tmpnam: rte_dmadev_tmpnam.type
    var tmpnam_r: rte_dmadev_tmpnam_r.type
    var tempnam: rte_dmadev_tempnam.type
    var fflush: rte_dmadev_fflush.type
    var fflush_unlocked: rte_dmadev_fflush_unlocked.type
    var fopen: rte_dmadev_fopen.type
    var freopen: rte_dmadev_freopen.type
    var fdopen: rte_dmadev_fdopen.type
    var fmemopen: rte_dmadev_fmemopen.type
    var open_memstream: rte_dmadev_open_memstream.type
    var setbuf: rte_dmadev_setbuf.type
    var setvbuf: rte_dmadev_setvbuf.type
    var setbuffer: rte_dmadev_setbuffer.type
    var setlinebuf: rte_dmadev_setlinebuf.type
    var fprintf: rte_dmadev_fprintf.type
    var printf: rte_dmadev_printf.type
    var sprintf: rte_dmadev_sprintf.type
    var vfprintf: rte_dmadev_vfprintf.type
    var vprintf: rte_dmadev_vprintf.type
    var vsprintf: rte_dmadev_vsprintf.type
    var snprintf: rte_dmadev_snprintf.type
    var vsnprintf: rte_dmadev_vsnprintf.type
    var vdprintf: rte_dmadev_vdprintf.type
    var dprintf: rte_dmadev_dprintf.type
    var fscanf: rte_dmadev_fscanf.type
    var scanf: rte_dmadev_scanf.type
    var sscanf: rte_dmadev_sscanf.type
    var vfscanf: rte_dmadev_vfscanf.type
    var vscanf: rte_dmadev_vscanf.type
    var vsscanf: rte_dmadev_vsscanf.type
    var fgetc: rte_dmadev_fgetc.type
    var getc: rte_dmadev_getc.type
    var getchar: rte_dmadev_getchar.type
    var getc_unlocked: rte_dmadev_getc_unlocked.type
    var getchar_unlocked: rte_dmadev_getchar_unlocked.type
    var fgetc_unlocked: rte_dmadev_fgetc_unlocked.type
    var fputc: rte_dmadev_fputc.type
    var putc: rte_dmadev_putc.type
    var putchar: rte_dmadev_putchar.type
    var fputc_unlocked: rte_dmadev_fputc_unlocked.type
    var putc_unlocked: rte_dmadev_putc_unlocked.type
    var putchar_unlocked: rte_dmadev_putchar_unlocked.type
    var getw: rte_dmadev_getw.type
    var putw: rte_dmadev_putw.type
    var fgets: rte_dmadev_fgets.type
    var getdelim: rte_dmadev_getdelim.type
    var getline: rte_dmadev_getline.type
    var fputs: rte_dmadev_fputs.type
    var puts: rte_dmadev_puts.type
    var ungetc: rte_dmadev_ungetc.type
    var fread: rte_dmadev_fread.type
    var fwrite: rte_dmadev_fwrite.type
    var fread_unlocked: rte_dmadev_fread_unlocked.type
    var fwrite_unlocked: rte_dmadev_fwrite_unlocked.type
    var fseek: rte_dmadev_fseek.type
    var ftell: rte_dmadev_ftell.type
    var rewind: rte_dmadev_rewind.type
    var fseeko: rte_dmadev_fseeko.type
    var ftello: rte_dmadev_ftello.type
    var fgetpos: rte_dmadev_fgetpos.type
    var fsetpos: rte_dmadev_fsetpos.type
    var clearerr: rte_dmadev_clearerr.type
    var feof: rte_dmadev_feof.type
    var ferror: rte_dmadev_ferror.type
    var clearerr_unlocked: rte_dmadev_clearerr_unlocked.type
    var feof_unlocked: rte_dmadev_feof_unlocked.type
    var ferror_unlocked: rte_dmadev_ferror_unlocked.type
    var perror: rte_dmadev_perror.type
    var fileno: rte_dmadev_fileno.type
    var fileno_unlocked: rte_dmadev_fileno_unlocked.type
    var pclose: rte_dmadev_pclose.type
    var popen: rte_dmadev_popen.type
    var ctermid: rte_dmadev_ctermid.type
    var flockfile: rte_dmadev_flockfile.type
    var ftrylockfile: rte_dmadev_ftrylockfile.type
    var funlockfile: rte_dmadev_funlockfile.type
    var alloca: rte_dmadev_alloca.type
    var sched_setparam: rte_dmadev_sched_setparam.type
    var sched_getparam: rte_dmadev_sched_getparam.type
    var sched_setscheduler: rte_dmadev_sched_setscheduler.type
    var sched_getscheduler: rte_dmadev_sched_getscheduler.type
    var sched_yield: rte_dmadev_sched_yield.type
    var sched_get_priority_max: rte_dmadev_sched_get_priority_max.type
    var sched_get_priority_min: rte_dmadev_sched_get_priority_min.type
    var sched_rr_get_interval: rte_dmadev_sched_rr_get_interval.type
    var rte_is_aligned: rte_dmadev_rte_is_aligned.type
    var rte_str_to_size: rte_dmadev_rte_str_to_size.type
    var rte_size_to_str: rte_dmadev_rte_size_to_str.type
    var rte_exit: rte_dmadev_rte_exit.type
    var rte_openlog_stream: rte_dmadev_rte_openlog_stream.type
    var rte_log_get_stream: rte_dmadev_rte_log_get_stream.type
    var rte_log_set_global_level: rte_dmadev_rte_log_set_global_level.type
    var rte_log_get_global_level: rte_dmadev_rte_log_get_global_level.type
    var rte_log_get_level: rte_dmadev_rte_log_get_level.type
    var rte_log_can_log: rte_dmadev_rte_log_can_log.type
    var rte_log_set_level_pattern: rte_dmadev_rte_log_set_level_pattern.type
    var rte_log_set_level_regexp: rte_dmadev_rte_log_set_level_regexp.type
    var rte_log_set_level: rte_dmadev_rte_log_set_level.type
    var rte_log_cur_msg_loglevel: rte_dmadev_rte_log_cur_msg_loglevel.type
    var rte_log_cur_msg_logtype: rte_dmadev_rte_log_cur_msg_logtype.type
    var rte_log_register: rte_dmadev_rte_log_register.type
    var rte_log_register_type_and_pick_level: rte_dmadev_rte_log_register_type_and_pick_level.type
    var rte_log_list_types: rte_dmadev_rte_log_list_types.type
    var rte_log_dump: rte_dmadev_rte_log_dump.type
    var rte_log: rte_dmadev_rte_log.type
    var rte_vlog: rte_dmadev_rte_vlog.type
    var rte_dump_stack: rte_dmadev_rte_dump_stack.type
    var rte_bit_relaxed_get32: rte_dmadev_rte_bit_relaxed_get32.type
    var rte_bit_relaxed_set32: rte_dmadev_rte_bit_relaxed_set32.type
    var rte_bit_relaxed_clear32: rte_dmadev_rte_bit_relaxed_clear32.type
    var rte_bit_relaxed_test_and_set32: rte_dmadev_rte_bit_relaxed_test_and_set32.type
    var rte_bit_relaxed_test_and_clear32: rte_dmadev_rte_bit_relaxed_test_and_clear32.type
    var rte_bit_relaxed_get64: rte_dmadev_rte_bit_relaxed_get64.type
    var rte_bit_relaxed_set64: rte_dmadev_rte_bit_relaxed_set64.type
    var rte_bit_relaxed_clear64: rte_dmadev_rte_bit_relaxed_clear64.type
    var rte_bit_relaxed_test_and_set64: rte_dmadev_rte_bit_relaxed_test_and_set64.type
    var rte_bit_relaxed_test_and_clear64: rte_dmadev_rte_bit_relaxed_test_and_clear64.type
    var rte_clz32: rte_dmadev_rte_clz32.type
    var rte_clz64: rte_dmadev_rte_clz64.type
    var rte_ctz32: rte_dmadev_rte_ctz32.type
    var rte_ctz64: rte_dmadev_rte_ctz64.type
    var rte_popcount32: rte_dmadev_rte_popcount32.type
    var rte_popcount64: rte_dmadev_rte_popcount64.type
    var rte_ffs32: rte_dmadev_rte_ffs32.type
    var rte_ffs64: rte_dmadev_rte_ffs64.type
    var rte_combine32ms1b: rte_dmadev_rte_combine32ms1b.type
    var rte_combine64ms1b: rte_dmadev_rte_combine64ms1b.type
    var rte_bsf32: rte_dmadev_rte_bsf32.type
    var rte_bsf32_safe: rte_dmadev_rte_bsf32_safe.type
    var rte_bsf64: rte_dmadev_rte_bsf64.type
    var rte_bsf64_safe: rte_dmadev_rte_bsf64_safe.type
    var rte_fls_u32: rte_dmadev_rte_fls_u32.type
    var rte_fls_u64: rte_dmadev_rte_fls_u64.type
    var rte_is_power_of_2: rte_dmadev_rte_is_power_of_2.type
    var rte_align32pow2: rte_dmadev_rte_align32pow2.type
    var rte_align32prevpow2: rte_dmadev_rte_align32prevpow2.type
    var rte_align64pow2: rte_dmadev_rte_align64pow2.type
    var rte_align64prevpow2: rte_dmadev_rte_align64prevpow2.type
    var rte_log2_u32: rte_dmadev_rte_log2_u32.type
    var rte_log2_u64: rte_dmadev_rte_log2_u64.type
    var rte_dma_dev_max: rte_dmadev_rte_dma_dev_max.type
    var rte_dma_get_dev_id_by_name: rte_dmadev_rte_dma_get_dev_id_by_name.type
    var rte_dma_is_valid: rte_dmadev_rte_dma_is_valid.type
    var rte_dma_count_avail: rte_dmadev_rte_dma_count_avail.type
    var rte_dma_next_dev: rte_dmadev_rte_dma_next_dev.type
    var rte_dma_info_get: rte_dmadev_rte_dma_info_get.type
    var rte_dma_configure: rte_dmadev_rte_dma_configure.type
    var rte_dma_start: rte_dmadev_rte_dma_start.type
    var rte_dma_stop: rte_dmadev_rte_dma_stop.type
    var rte_dma_close: rte_dmadev_rte_dma_close.type
    var rte_dma_vchan_setup: rte_dmadev_rte_dma_vchan_setup.type
    var rte_dma_stats_get: rte_dmadev_rte_dma_stats_get.type
    var rte_dma_stats_reset: rte_dmadev_rte_dma_stats_reset.type
    var rte_dma_dump: rte_dmadev_rte_dma_dump.type
    var clock: rte_dmadev_clock.type
    var time: rte_dmadev_time.type
    var difftime: rte_dmadev_difftime.type
    var mktime: rte_dmadev_mktime.type
    var strftime: rte_dmadev_strftime.type
    var strftime_l: rte_dmadev_strftime_l.type
    var gmtime: rte_dmadev_gmtime.type
    var localtime: rte_dmadev_localtime.type
    var gmtime_r: rte_dmadev_gmtime_r.type
    var localtime_r: rte_dmadev_localtime_r.type
    var asctime: rte_dmadev_asctime.type
    var ctime: rte_dmadev_ctime.type
    var asctime_r: rte_dmadev_asctime_r.type
    var ctime_r: rte_dmadev_ctime_r.type
    var tzset: rte_dmadev_tzset.type
    var timegm: rte_dmadev_timegm.type
    var timelocal: rte_dmadev_timelocal.type
    var dysize: rte_dmadev_dysize.type
    var nanosleep: rte_dmadev_nanosleep.type
    var clock_getres: rte_dmadev_clock_getres.type
    var clock_gettime: rte_dmadev_clock_gettime.type
    var clock_settime: rte_dmadev_clock_settime.type
    var clock_nanosleep: rte_dmadev_clock_nanosleep.type
    var clock_getcpuclockid: rte_dmadev_clock_getcpuclockid.type
    var timer_create: rte_dmadev_timer_create.type
    var timer_delete: rte_dmadev_timer_delete.type
    var timer_settime: rte_dmadev_timer_settime.type
    var timer_gettime: rte_dmadev_timer_gettime.type
    var timer_getoverrun: rte_dmadev_timer_getoverrun.type
    var timespec_get: rte_dmadev_timespec_get.type
    var rte_atomic_thread_fence: rte_dmadev_rte_atomic_thread_fence.type
    var rte_atomic16_cmpset: rte_dmadev_rte_atomic16_cmpset.type
    var rte_atomic16_exchange: rte_dmadev_rte_atomic16_exchange.type
    var rte_atomic16_init: rte_dmadev_rte_atomic16_init.type
    var rte_atomic16_read: rte_dmadev_rte_atomic16_read.type
    var rte_atomic16_set: rte_dmadev_rte_atomic16_set.type
    var rte_atomic16_add: rte_dmadev_rte_atomic16_add.type
    var rte_atomic16_sub: rte_dmadev_rte_atomic16_sub.type
    var rte_atomic16_inc: rte_dmadev_rte_atomic16_inc.type
    var rte_atomic16_dec: rte_dmadev_rte_atomic16_dec.type
    var rte_atomic16_add_return: rte_dmadev_rte_atomic16_add_return.type
    var rte_atomic16_sub_return: rte_dmadev_rte_atomic16_sub_return.type
    var rte_atomic16_inc_and_test: rte_dmadev_rte_atomic16_inc_and_test.type
    var rte_atomic16_dec_and_test: rte_dmadev_rte_atomic16_dec_and_test.type
    var rte_atomic16_test_and_set: rte_dmadev_rte_atomic16_test_and_set.type
    var rte_atomic16_clear: rte_dmadev_rte_atomic16_clear.type
    var rte_atomic32_cmpset: rte_dmadev_rte_atomic32_cmpset.type
    var rte_atomic32_exchange: rte_dmadev_rte_atomic32_exchange.type
    var rte_atomic32_init: rte_dmadev_rte_atomic32_init.type
    var rte_atomic32_read: rte_dmadev_rte_atomic32_read.type
    var rte_atomic32_set: rte_dmadev_rte_atomic32_set.type
    var rte_atomic32_add: rte_dmadev_rte_atomic32_add.type
    var rte_atomic32_sub: rte_dmadev_rte_atomic32_sub.type
    var rte_atomic32_inc: rte_dmadev_rte_atomic32_inc.type
    var rte_atomic32_dec: rte_dmadev_rte_atomic32_dec.type
    var rte_atomic32_add_return: rte_dmadev_rte_atomic32_add_return.type
    var rte_atomic32_sub_return: rte_dmadev_rte_atomic32_sub_return.type
    var rte_atomic32_inc_and_test: rte_dmadev_rte_atomic32_inc_and_test.type
    var rte_atomic32_dec_and_test: rte_dmadev_rte_atomic32_dec_and_test.type
    var rte_atomic32_test_and_set: rte_dmadev_rte_atomic32_test_and_set.type
    var rte_atomic32_clear: rte_dmadev_rte_atomic32_clear.type
    var rte_atomic64_cmpset: rte_dmadev_rte_atomic64_cmpset.type
    var rte_atomic64_exchange: rte_dmadev_rte_atomic64_exchange.type
    var rte_atomic64_init: rte_dmadev_rte_atomic64_init.type
    var rte_atomic64_read: rte_dmadev_rte_atomic64_read.type
    var rte_atomic64_set: rte_dmadev_rte_atomic64_set.type
    var rte_atomic64_add: rte_dmadev_rte_atomic64_add.type
    var rte_atomic64_sub: rte_dmadev_rte_atomic64_sub.type
    var rte_atomic64_inc: rte_dmadev_rte_atomic64_inc.type
    var rte_atomic64_dec: rte_dmadev_rte_atomic64_dec.type
    var rte_atomic64_add_return: rte_dmadev_rte_atomic64_add_return.type
    var rte_atomic64_sub_return: rte_dmadev_rte_atomic64_sub_return.type
    var rte_atomic64_inc_and_test: rte_dmadev_rte_atomic64_inc_and_test.type
    var rte_atomic64_dec_and_test: rte_dmadev_rte_atomic64_dec_and_test.type
    var rte_atomic64_test_and_set: rte_dmadev_rte_atomic64_test_and_set.type
    var rte_atomic64_clear: rte_dmadev_rte_atomic64_clear.type
    var rte_atomic128_cmp_exchange: rte_dmadev_rte_atomic128_cmp_exchange.type
    var rte_get_tsc_hz: rte_dmadev_rte_get_tsc_hz.type
    var rte_get_tsc_cycles: rte_dmadev_rte_get_tsc_cycles.type
    var rte_get_timer_cycles: rte_dmadev_rte_get_timer_cycles.type
    var rte_get_timer_hz: rte_dmadev_rte_get_timer_hz.type
    var rte_delay_ms: rte_dmadev_rte_delay_ms.type
    var rte_delay_us_block: rte_dmadev_rte_delay_us_block.type
    var rte_delay_us_sleep: rte_dmadev_rte_delay_us_sleep.type
    var rte_delay_us_callback_register: rte_dmadev_rte_delay_us_callback_register.type
    var rte_rdtsc: rte_dmadev_rte_rdtsc.type
    var rte_rdtsc_precise: rte_dmadev_rte_rdtsc_precise.type
    var isalnum: rte_dmadev_isalnum.type
    var isalpha: rte_dmadev_isalpha.type
    var iscntrl: rte_dmadev_iscntrl.type
    var isdigit: rte_dmadev_isdigit.type
    var islower: rte_dmadev_islower.type
    var isgraph: rte_dmadev_isgraph.type
    var isprint: rte_dmadev_isprint.type
    var ispunct: rte_dmadev_ispunct.type
    var isspace: rte_dmadev_isspace.type
    var isupper: rte_dmadev_isupper.type
    var isxdigit: rte_dmadev_isxdigit.type
    var tolower: rte_dmadev_tolower.type
    var toupper: rte_dmadev_toupper.type
    var isblank: rte_dmadev_isblank.type
    var isascii: rte_dmadev_isascii.type
    var toascii: rte_dmadev_toascii.type
    var isalnum_l: rte_dmadev_isalnum_l.type
    var isalpha_l: rte_dmadev_isalpha_l.type
    var iscntrl_l: rte_dmadev_iscntrl_l.type
    var isdigit_l: rte_dmadev_isdigit_l.type
    var islower_l: rte_dmadev_islower_l.type
    var isgraph_l: rte_dmadev_isgraph_l.type
    var isprint_l: rte_dmadev_isprint_l.type
    var ispunct_l: rte_dmadev_ispunct_l.type
    var isspace_l: rte_dmadev_isspace_l.type
    var isupper_l: rte_dmadev_isupper_l.type
    var isxdigit_l: rte_dmadev_isxdigit_l.type
    var isblank_l: rte_dmadev_isblank_l.type
    var tolower_l: rte_dmadev_tolower_l.type
    var toupper_l: rte_dmadev_toupper_l.type
    var memcpy: rte_dmadev_memcpy.type
    var memmove: rte_dmadev_memmove.type
    var memccpy: rte_dmadev_memccpy.type
    var memset: rte_dmadev_memset.type
    var memcmp: rte_dmadev_memcmp.type
    var memchr: rte_dmadev_memchr.type
    var strcpy: rte_dmadev_strcpy.type
    var strncpy: rte_dmadev_strncpy.type
    var strcat: rte_dmadev_strcat.type
    var strncat: rte_dmadev_strncat.type
    var strcmp: rte_dmadev_strcmp.type
    var strncmp: rte_dmadev_strncmp.type
    var strcoll: rte_dmadev_strcoll.type
    var strxfrm: rte_dmadev_strxfrm.type
    var strcoll_l: rte_dmadev_strcoll_l.type
    var strxfrm_l: rte_dmadev_strxfrm_l.type
    var strdup: rte_dmadev_strdup.type
    var strndup: rte_dmadev_strndup.type
    var strchr: rte_dmadev_strchr.type
    var strrchr: rte_dmadev_strrchr.type
    var strcspn: rte_dmadev_strcspn.type
    var strspn: rte_dmadev_strspn.type
    var strpbrk: rte_dmadev_strpbrk.type
    var strstr: rte_dmadev_strstr.type
    var strtok: rte_dmadev_strtok.type
    var strtok_r: rte_dmadev_strtok_r.type
    var strlen: rte_dmadev_strlen.type
    var strnlen: rte_dmadev_strnlen.type
    var strerror: rte_dmadev_strerror.type
    var strerror_r: rte_dmadev_strerror_r.type
    var strerror_l: rte_dmadev_strerror_l.type
    var bcmp: rte_dmadev_bcmp.type
    var bcopy: rte_dmadev_bcopy.type
    var bzero: rte_dmadev_bzero.type
    var index: rte_dmadev_index.type
    var rindex: rte_dmadev_rindex.type
    var ffs: rte_dmadev_ffs.type
    var ffsl: rte_dmadev_ffsl.type
    var ffsll: rte_dmadev_ffsll.type
    var strcasecmp: rte_dmadev_strcasecmp.type
    var strncasecmp: rte_dmadev_strncasecmp.type
    var strcasecmp_l: rte_dmadev_strcasecmp_l.type
    var strncasecmp_l: rte_dmadev_strncasecmp_l.type
    var explicit_bzero: rte_dmadev_explicit_bzero.type
    var strsep: rte_dmadev_strsep.type
    var strsignal: rte_dmadev_strsignal.type
    var stpcpy: rte_dmadev_stpcpy.type
    var stpncpy: rte_dmadev_stpncpy.type
    var rte_strsplit: rte_dmadev_rte_strsplit.type
    var rte_strlcpy: rte_dmadev_rte_strlcpy.type
    var rte_strlcat: rte_dmadev_rte_strlcat.type
    var rte_strscpy: rte_dmadev_rte_strscpy.type
    var rte_str_skip_leading_spaces: rte_dmadev_rte_str_skip_leading_spaces.type
    var rte_trace_is_enabled: rte_dmadev_rte_trace_is_enabled.type
    var rte_trace_feature_is_enabled: rte_dmadev_rte_trace_feature_is_enabled.type
    var rte_trace_mode_set: rte_dmadev_rte_trace_mode_set.type
    var rte_trace_mode_get: rte_dmadev_rte_trace_mode_get.type
    var rte_trace_pattern: rte_dmadev_rte_trace_pattern.type
    var rte_trace_regexp: rte_dmadev_rte_trace_regexp.type
    var rte_trace_save: rte_dmadev_rte_trace_save.type
    var rte_trace_metadata_dump: rte_dmadev_rte_trace_metadata_dump.type
    var rte_trace_dump: rte_dmadev_rte_trace_dump.type
    var rte_uuid_is_null: rte_dmadev_rte_uuid_is_null.type
    var rte_uuid_copy: rte_dmadev_rte_uuid_copy.type
    var rte_uuid_compare: rte_dmadev_rte_uuid_compare.type
    var rte_uuid_parse: rte_dmadev_rte_uuid_parse.type
    var rte_uuid_unparse: rte_dmadev_rte_uuid_unparse.type
    var rte_trace_point_enable: rte_dmadev_rte_trace_point_enable.type
    var rte_trace_point_disable: rte_dmadev_rte_trace_point_disable.type
    var rte_trace_point_is_enabled: rte_dmadev_rte_trace_point_is_enabled.type
    var rte_trace_point_lookup: rte_dmadev_rte_trace_point_lookup.type
    var rte_dma_trace_stats_get: rte_dmadev_rte_dma_trace_stats_get.type
    var rte_dma_trace_vchan_status: rte_dmadev_rte_dma_trace_vchan_status.type
    var rte_dma_trace_copy: rte_dmadev_rte_dma_trace_copy.type
    var rte_dma_trace_copy_sg: rte_dmadev_rte_dma_trace_copy_sg.type
    var rte_dma_trace_fill: rte_dmadev_rte_dma_trace_fill.type
    var rte_dma_trace_submit: rte_dmadev_rte_dma_trace_submit.type
    var rte_dma_trace_completed: rte_dmadev_rte_dma_trace_completed.type
    var rte_dma_trace_completed_status: rte_dmadev_rte_dma_trace_completed_status.type
    var rte_dma_trace_burst_capacity: rte_dmadev_rte_dma_trace_burst_capacity.type
    var rte_dma_copy: rte_dmadev_rte_dma_copy.type
    var rte_dma_copy_sg: rte_dmadev_rte_dma_copy_sg.type
    var rte_dma_fill: rte_dmadev_rte_dma_fill.type
    var rte_dma_submit: rte_dmadev_rte_dma_submit.type
    var rte_dma_completed: rte_dmadev_rte_dma_completed.type
    var rte_dma_completed_status: rte_dmadev_rte_dma_completed_status.type
    var rte_dma_burst_capacity: rte_dmadev_rte_dma_burst_capacity.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_dmadev.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_dmadev from", 'librte_dmadev.so', ":\n", e)
            )

    
        self.remove = rte_dmadev_remove.load(self.lib)
        self.rename = rte_dmadev_rename.load(self.lib)
        self.renameat = rte_dmadev_renameat.load(self.lib)
        self.fclose = rte_dmadev_fclose.load(self.lib)
        self.tmpfile = rte_dmadev_tmpfile.load(self.lib)
        self.tmpnam = rte_dmadev_tmpnam.load(self.lib)
        self.tmpnam_r = rte_dmadev_tmpnam_r.load(self.lib)
        self.tempnam = rte_dmadev_tempnam.load(self.lib)
        self.fflush = rte_dmadev_fflush.load(self.lib)
        self.fflush_unlocked = rte_dmadev_fflush_unlocked.load(self.lib)
        self.fopen = rte_dmadev_fopen.load(self.lib)
        self.freopen = rte_dmadev_freopen.load(self.lib)
        self.fdopen = rte_dmadev_fdopen.load(self.lib)
        self.fmemopen = rte_dmadev_fmemopen.load(self.lib)
        self.open_memstream = rte_dmadev_open_memstream.load(self.lib)
        self.setbuf = rte_dmadev_setbuf.load(self.lib)
        self.setvbuf = rte_dmadev_setvbuf.load(self.lib)
        self.setbuffer = rte_dmadev_setbuffer.load(self.lib)
        self.setlinebuf = rte_dmadev_setlinebuf.load(self.lib)
        self.fprintf = rte_dmadev_fprintf.load(self.lib)
        self.printf = rte_dmadev_printf.load(self.lib)
        self.sprintf = rte_dmadev_sprintf.load(self.lib)
        self.vfprintf = rte_dmadev_vfprintf.load(self.lib)
        self.vprintf = rte_dmadev_vprintf.load(self.lib)
        self.vsprintf = rte_dmadev_vsprintf.load(self.lib)
        self.snprintf = rte_dmadev_snprintf.load(self.lib)
        self.vsnprintf = rte_dmadev_vsnprintf.load(self.lib)
        self.vdprintf = rte_dmadev_vdprintf.load(self.lib)
        self.dprintf = rte_dmadev_dprintf.load(self.lib)
        self.fscanf = rte_dmadev_fscanf.load(self.lib)
        self.scanf = rte_dmadev_scanf.load(self.lib)
        self.sscanf = rte_dmadev_sscanf.load(self.lib)
        self.vfscanf = rte_dmadev_vfscanf.load(self.lib)
        self.vscanf = rte_dmadev_vscanf.load(self.lib)
        self.vsscanf = rte_dmadev_vsscanf.load(self.lib)
        self.fgetc = rte_dmadev_fgetc.load(self.lib)
        self.getc = rte_dmadev_getc.load(self.lib)
        self.getchar = rte_dmadev_getchar.load(self.lib)
        self.getc_unlocked = rte_dmadev_getc_unlocked.load(self.lib)
        self.getchar_unlocked = rte_dmadev_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = rte_dmadev_fgetc_unlocked.load(self.lib)
        self.fputc = rte_dmadev_fputc.load(self.lib)
        self.putc = rte_dmadev_putc.load(self.lib)
        self.putchar = rte_dmadev_putchar.load(self.lib)
        self.fputc_unlocked = rte_dmadev_fputc_unlocked.load(self.lib)
        self.putc_unlocked = rte_dmadev_putc_unlocked.load(self.lib)
        self.putchar_unlocked = rte_dmadev_putchar_unlocked.load(self.lib)
        self.getw = rte_dmadev_getw.load(self.lib)
        self.putw = rte_dmadev_putw.load(self.lib)
        self.fgets = rte_dmadev_fgets.load(self.lib)
        self.getdelim = rte_dmadev_getdelim.load(self.lib)
        self.getline = rte_dmadev_getline.load(self.lib)
        self.fputs = rte_dmadev_fputs.load(self.lib)
        self.puts = rte_dmadev_puts.load(self.lib)
        self.ungetc = rte_dmadev_ungetc.load(self.lib)
        self.fread = rte_dmadev_fread.load(self.lib)
        self.fwrite = rte_dmadev_fwrite.load(self.lib)
        self.fread_unlocked = rte_dmadev_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = rte_dmadev_fwrite_unlocked.load(self.lib)
        self.fseek = rte_dmadev_fseek.load(self.lib)
        self.ftell = rte_dmadev_ftell.load(self.lib)
        self.rewind = rte_dmadev_rewind.load(self.lib)
        self.fseeko = rte_dmadev_fseeko.load(self.lib)
        self.ftello = rte_dmadev_ftello.load(self.lib)
        self.fgetpos = rte_dmadev_fgetpos.load(self.lib)
        self.fsetpos = rte_dmadev_fsetpos.load(self.lib)
        self.clearerr = rte_dmadev_clearerr.load(self.lib)
        self.feof = rte_dmadev_feof.load(self.lib)
        self.ferror = rte_dmadev_ferror.load(self.lib)
        self.clearerr_unlocked = rte_dmadev_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = rte_dmadev_feof_unlocked.load(self.lib)
        self.ferror_unlocked = rte_dmadev_ferror_unlocked.load(self.lib)
        self.perror = rte_dmadev_perror.load(self.lib)
        self.fileno = rte_dmadev_fileno.load(self.lib)
        self.fileno_unlocked = rte_dmadev_fileno_unlocked.load(self.lib)
        self.pclose = rte_dmadev_pclose.load(self.lib)
        self.popen = rte_dmadev_popen.load(self.lib)
        self.ctermid = rte_dmadev_ctermid.load(self.lib)
        self.flockfile = rte_dmadev_flockfile.load(self.lib)
        self.ftrylockfile = rte_dmadev_ftrylockfile.load(self.lib)
        self.funlockfile = rte_dmadev_funlockfile.load(self.lib)
        self.alloca = rte_dmadev_alloca.load(self.lib)
        self.sched_setparam = rte_dmadev_sched_setparam.load(self.lib)
        self.sched_getparam = rte_dmadev_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_dmadev_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_dmadev_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_dmadev_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_dmadev_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_dmadev_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_dmadev_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_dmadev_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_dmadev_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_dmadev_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_dmadev_rte_exit.load(self.lib)
        self.rte_openlog_stream = rte_dmadev_rte_openlog_stream.load(self.lib)
        self.rte_log_get_stream = rte_dmadev_rte_log_get_stream.load(self.lib)
        self.rte_log_set_global_level = rte_dmadev_rte_log_set_global_level.load(self.lib)
        self.rte_log_get_global_level = rte_dmadev_rte_log_get_global_level.load(self.lib)
        self.rte_log_get_level = rte_dmadev_rte_log_get_level.load(self.lib)
        self.rte_log_can_log = rte_dmadev_rte_log_can_log.load(self.lib)
        self.rte_log_set_level_pattern = rte_dmadev_rte_log_set_level_pattern.load(self.lib)
        self.rte_log_set_level_regexp = rte_dmadev_rte_log_set_level_regexp.load(self.lib)
        self.rte_log_set_level = rte_dmadev_rte_log_set_level.load(self.lib)
        self.rte_log_cur_msg_loglevel = rte_dmadev_rte_log_cur_msg_loglevel.load(self.lib)
        self.rte_log_cur_msg_logtype = rte_dmadev_rte_log_cur_msg_logtype.load(self.lib)
        self.rte_log_register = rte_dmadev_rte_log_register.load(self.lib)
        self.rte_log_register_type_and_pick_level = rte_dmadev_rte_log_register_type_and_pick_level.load(self.lib)
        self.rte_log_list_types = rte_dmadev_rte_log_list_types.load(self.lib)
        self.rte_log_dump = rte_dmadev_rte_log_dump.load(self.lib)
        self.rte_log = rte_dmadev_rte_log.load(self.lib)
        self.rte_vlog = rte_dmadev_rte_vlog.load(self.lib)
        self.rte_dump_stack = rte_dmadev_rte_dump_stack.load(self.lib)
        self.rte_bit_relaxed_get32 = rte_dmadev_rte_bit_relaxed_get32.load(self.lib)
        self.rte_bit_relaxed_set32 = rte_dmadev_rte_bit_relaxed_set32.load(self.lib)
        self.rte_bit_relaxed_clear32 = rte_dmadev_rte_bit_relaxed_clear32.load(self.lib)
        self.rte_bit_relaxed_test_and_set32 = rte_dmadev_rte_bit_relaxed_test_and_set32.load(self.lib)
        self.rte_bit_relaxed_test_and_clear32 = rte_dmadev_rte_bit_relaxed_test_and_clear32.load(self.lib)
        self.rte_bit_relaxed_get64 = rte_dmadev_rte_bit_relaxed_get64.load(self.lib)
        self.rte_bit_relaxed_set64 = rte_dmadev_rte_bit_relaxed_set64.load(self.lib)
        self.rte_bit_relaxed_clear64 = rte_dmadev_rte_bit_relaxed_clear64.load(self.lib)
        self.rte_bit_relaxed_test_and_set64 = rte_dmadev_rte_bit_relaxed_test_and_set64.load(self.lib)
        self.rte_bit_relaxed_test_and_clear64 = rte_dmadev_rte_bit_relaxed_test_and_clear64.load(self.lib)
        self.rte_clz32 = rte_dmadev_rte_clz32.load(self.lib)
        self.rte_clz64 = rte_dmadev_rte_clz64.load(self.lib)
        self.rte_ctz32 = rte_dmadev_rte_ctz32.load(self.lib)
        self.rte_ctz64 = rte_dmadev_rte_ctz64.load(self.lib)
        self.rte_popcount32 = rte_dmadev_rte_popcount32.load(self.lib)
        self.rte_popcount64 = rte_dmadev_rte_popcount64.load(self.lib)
        self.rte_ffs32 = rte_dmadev_rte_ffs32.load(self.lib)
        self.rte_ffs64 = rte_dmadev_rte_ffs64.load(self.lib)
        self.rte_combine32ms1b = rte_dmadev_rte_combine32ms1b.load(self.lib)
        self.rte_combine64ms1b = rte_dmadev_rte_combine64ms1b.load(self.lib)
        self.rte_bsf32 = rte_dmadev_rte_bsf32.load(self.lib)
        self.rte_bsf32_safe = rte_dmadev_rte_bsf32_safe.load(self.lib)
        self.rte_bsf64 = rte_dmadev_rte_bsf64.load(self.lib)
        self.rte_bsf64_safe = rte_dmadev_rte_bsf64_safe.load(self.lib)
        self.rte_fls_u32 = rte_dmadev_rte_fls_u32.load(self.lib)
        self.rte_fls_u64 = rte_dmadev_rte_fls_u64.load(self.lib)
        self.rte_is_power_of_2 = rte_dmadev_rte_is_power_of_2.load(self.lib)
        self.rte_align32pow2 = rte_dmadev_rte_align32pow2.load(self.lib)
        self.rte_align32prevpow2 = rte_dmadev_rte_align32prevpow2.load(self.lib)
        self.rte_align64pow2 = rte_dmadev_rte_align64pow2.load(self.lib)
        self.rte_align64prevpow2 = rte_dmadev_rte_align64prevpow2.load(self.lib)
        self.rte_log2_u32 = rte_dmadev_rte_log2_u32.load(self.lib)
        self.rte_log2_u64 = rte_dmadev_rte_log2_u64.load(self.lib)
        self.rte_dma_dev_max = rte_dmadev_rte_dma_dev_max.load(self.lib)
        self.rte_dma_get_dev_id_by_name = rte_dmadev_rte_dma_get_dev_id_by_name.load(self.lib)
        self.rte_dma_is_valid = rte_dmadev_rte_dma_is_valid.load(self.lib)
        self.rte_dma_count_avail = rte_dmadev_rte_dma_count_avail.load(self.lib)
        self.rte_dma_next_dev = rte_dmadev_rte_dma_next_dev.load(self.lib)
        self.rte_dma_info_get = rte_dmadev_rte_dma_info_get.load(self.lib)
        self.rte_dma_configure = rte_dmadev_rte_dma_configure.load(self.lib)
        self.rte_dma_start = rte_dmadev_rte_dma_start.load(self.lib)
        self.rte_dma_stop = rte_dmadev_rte_dma_stop.load(self.lib)
        self.rte_dma_close = rte_dmadev_rte_dma_close.load(self.lib)
        self.rte_dma_vchan_setup = rte_dmadev_rte_dma_vchan_setup.load(self.lib)
        self.rte_dma_stats_get = rte_dmadev_rte_dma_stats_get.load(self.lib)
        self.rte_dma_stats_reset = rte_dmadev_rte_dma_stats_reset.load(self.lib)
        self.rte_dma_dump = rte_dmadev_rte_dma_dump.load(self.lib)
        self.clock = rte_dmadev_clock.load(self.lib)
        self.time = rte_dmadev_time.load(self.lib)
        self.difftime = rte_dmadev_difftime.load(self.lib)
        self.mktime = rte_dmadev_mktime.load(self.lib)
        self.strftime = rte_dmadev_strftime.load(self.lib)
        self.strftime_l = rte_dmadev_strftime_l.load(self.lib)
        self.gmtime = rte_dmadev_gmtime.load(self.lib)
        self.localtime = rte_dmadev_localtime.load(self.lib)
        self.gmtime_r = rte_dmadev_gmtime_r.load(self.lib)
        self.localtime_r = rte_dmadev_localtime_r.load(self.lib)
        self.asctime = rte_dmadev_asctime.load(self.lib)
        self.ctime = rte_dmadev_ctime.load(self.lib)
        self.asctime_r = rte_dmadev_asctime_r.load(self.lib)
        self.ctime_r = rte_dmadev_ctime_r.load(self.lib)
        self.tzset = rte_dmadev_tzset.load(self.lib)
        self.timegm = rte_dmadev_timegm.load(self.lib)
        self.timelocal = rte_dmadev_timelocal.load(self.lib)
        self.dysize = rte_dmadev_dysize.load(self.lib)
        self.nanosleep = rte_dmadev_nanosleep.load(self.lib)
        self.clock_getres = rte_dmadev_clock_getres.load(self.lib)
        self.clock_gettime = rte_dmadev_clock_gettime.load(self.lib)
        self.clock_settime = rte_dmadev_clock_settime.load(self.lib)
        self.clock_nanosleep = rte_dmadev_clock_nanosleep.load(self.lib)
        self.clock_getcpuclockid = rte_dmadev_clock_getcpuclockid.load(self.lib)
        self.timer_create = rte_dmadev_timer_create.load(self.lib)
        self.timer_delete = rte_dmadev_timer_delete.load(self.lib)
        self.timer_settime = rte_dmadev_timer_settime.load(self.lib)
        self.timer_gettime = rte_dmadev_timer_gettime.load(self.lib)
        self.timer_getoverrun = rte_dmadev_timer_getoverrun.load(self.lib)
        self.timespec_get = rte_dmadev_timespec_get.load(self.lib)
        self.rte_atomic_thread_fence = rte_dmadev_rte_atomic_thread_fence.load(self.lib)
        self.rte_atomic16_cmpset = rte_dmadev_rte_atomic16_cmpset.load(self.lib)
        self.rte_atomic16_exchange = rte_dmadev_rte_atomic16_exchange.load(self.lib)
        self.rte_atomic16_init = rte_dmadev_rte_atomic16_init.load(self.lib)
        self.rte_atomic16_read = rte_dmadev_rte_atomic16_read.load(self.lib)
        self.rte_atomic16_set = rte_dmadev_rte_atomic16_set.load(self.lib)
        self.rte_atomic16_add = rte_dmadev_rte_atomic16_add.load(self.lib)
        self.rte_atomic16_sub = rte_dmadev_rte_atomic16_sub.load(self.lib)
        self.rte_atomic16_inc = rte_dmadev_rte_atomic16_inc.load(self.lib)
        self.rte_atomic16_dec = rte_dmadev_rte_atomic16_dec.load(self.lib)
        self.rte_atomic16_add_return = rte_dmadev_rte_atomic16_add_return.load(self.lib)
        self.rte_atomic16_sub_return = rte_dmadev_rte_atomic16_sub_return.load(self.lib)
        self.rte_atomic16_inc_and_test = rte_dmadev_rte_atomic16_inc_and_test.load(self.lib)
        self.rte_atomic16_dec_and_test = rte_dmadev_rte_atomic16_dec_and_test.load(self.lib)
        self.rte_atomic16_test_and_set = rte_dmadev_rte_atomic16_test_and_set.load(self.lib)
        self.rte_atomic16_clear = rte_dmadev_rte_atomic16_clear.load(self.lib)
        self.rte_atomic32_cmpset = rte_dmadev_rte_atomic32_cmpset.load(self.lib)
        self.rte_atomic32_exchange = rte_dmadev_rte_atomic32_exchange.load(self.lib)
        self.rte_atomic32_init = rte_dmadev_rte_atomic32_init.load(self.lib)
        self.rte_atomic32_read = rte_dmadev_rte_atomic32_read.load(self.lib)
        self.rte_atomic32_set = rte_dmadev_rte_atomic32_set.load(self.lib)
        self.rte_atomic32_add = rte_dmadev_rte_atomic32_add.load(self.lib)
        self.rte_atomic32_sub = rte_dmadev_rte_atomic32_sub.load(self.lib)
        self.rte_atomic32_inc = rte_dmadev_rte_atomic32_inc.load(self.lib)
        self.rte_atomic32_dec = rte_dmadev_rte_atomic32_dec.load(self.lib)
        self.rte_atomic32_add_return = rte_dmadev_rte_atomic32_add_return.load(self.lib)
        self.rte_atomic32_sub_return = rte_dmadev_rte_atomic32_sub_return.load(self.lib)
        self.rte_atomic32_inc_and_test = rte_dmadev_rte_atomic32_inc_and_test.load(self.lib)
        self.rte_atomic32_dec_and_test = rte_dmadev_rte_atomic32_dec_and_test.load(self.lib)
        self.rte_atomic32_test_and_set = rte_dmadev_rte_atomic32_test_and_set.load(self.lib)
        self.rte_atomic32_clear = rte_dmadev_rte_atomic32_clear.load(self.lib)
        self.rte_atomic64_cmpset = rte_dmadev_rte_atomic64_cmpset.load(self.lib)
        self.rte_atomic64_exchange = rte_dmadev_rte_atomic64_exchange.load(self.lib)
        self.rte_atomic64_init = rte_dmadev_rte_atomic64_init.load(self.lib)
        self.rte_atomic64_read = rte_dmadev_rte_atomic64_read.load(self.lib)
        self.rte_atomic64_set = rte_dmadev_rte_atomic64_set.load(self.lib)
        self.rte_atomic64_add = rte_dmadev_rte_atomic64_add.load(self.lib)
        self.rte_atomic64_sub = rte_dmadev_rte_atomic64_sub.load(self.lib)
        self.rte_atomic64_inc = rte_dmadev_rte_atomic64_inc.load(self.lib)
        self.rte_atomic64_dec = rte_dmadev_rte_atomic64_dec.load(self.lib)
        self.rte_atomic64_add_return = rte_dmadev_rte_atomic64_add_return.load(self.lib)
        self.rte_atomic64_sub_return = rte_dmadev_rte_atomic64_sub_return.load(self.lib)
        self.rte_atomic64_inc_and_test = rte_dmadev_rte_atomic64_inc_and_test.load(self.lib)
        self.rte_atomic64_dec_and_test = rte_dmadev_rte_atomic64_dec_and_test.load(self.lib)
        self.rte_atomic64_test_and_set = rte_dmadev_rte_atomic64_test_and_set.load(self.lib)
        self.rte_atomic64_clear = rte_dmadev_rte_atomic64_clear.load(self.lib)
        self.rte_atomic128_cmp_exchange = rte_dmadev_rte_atomic128_cmp_exchange.load(self.lib)
        self.rte_get_tsc_hz = rte_dmadev_rte_get_tsc_hz.load(self.lib)
        self.rte_get_tsc_cycles = rte_dmadev_rte_get_tsc_cycles.load(self.lib)
        self.rte_get_timer_cycles = rte_dmadev_rte_get_timer_cycles.load(self.lib)
        self.rte_get_timer_hz = rte_dmadev_rte_get_timer_hz.load(self.lib)
        self.rte_delay_ms = rte_dmadev_rte_delay_ms.load(self.lib)
        self.rte_delay_us_block = rte_dmadev_rte_delay_us_block.load(self.lib)
        self.rte_delay_us_sleep = rte_dmadev_rte_delay_us_sleep.load(self.lib)
        self.rte_delay_us_callback_register = rte_dmadev_rte_delay_us_callback_register.load(self.lib)
        self.rte_rdtsc = rte_dmadev_rte_rdtsc.load(self.lib)
        self.rte_rdtsc_precise = rte_dmadev_rte_rdtsc_precise.load(self.lib)
        self.isalnum = rte_dmadev_isalnum.load(self.lib)
        self.isalpha = rte_dmadev_isalpha.load(self.lib)
        self.iscntrl = rte_dmadev_iscntrl.load(self.lib)
        self.isdigit = rte_dmadev_isdigit.load(self.lib)
        self.islower = rte_dmadev_islower.load(self.lib)
        self.isgraph = rte_dmadev_isgraph.load(self.lib)
        self.isprint = rte_dmadev_isprint.load(self.lib)
        self.ispunct = rte_dmadev_ispunct.load(self.lib)
        self.isspace = rte_dmadev_isspace.load(self.lib)
        self.isupper = rte_dmadev_isupper.load(self.lib)
        self.isxdigit = rte_dmadev_isxdigit.load(self.lib)
        self.tolower = rte_dmadev_tolower.load(self.lib)
        self.toupper = rte_dmadev_toupper.load(self.lib)
        self.isblank = rte_dmadev_isblank.load(self.lib)
        self.isascii = rte_dmadev_isascii.load(self.lib)
        self.toascii = rte_dmadev_toascii.load(self.lib)
        self.isalnum_l = rte_dmadev_isalnum_l.load(self.lib)
        self.isalpha_l = rte_dmadev_isalpha_l.load(self.lib)
        self.iscntrl_l = rte_dmadev_iscntrl_l.load(self.lib)
        self.isdigit_l = rte_dmadev_isdigit_l.load(self.lib)
        self.islower_l = rte_dmadev_islower_l.load(self.lib)
        self.isgraph_l = rte_dmadev_isgraph_l.load(self.lib)
        self.isprint_l = rte_dmadev_isprint_l.load(self.lib)
        self.ispunct_l = rte_dmadev_ispunct_l.load(self.lib)
        self.isspace_l = rte_dmadev_isspace_l.load(self.lib)
        self.isupper_l = rte_dmadev_isupper_l.load(self.lib)
        self.isxdigit_l = rte_dmadev_isxdigit_l.load(self.lib)
        self.isblank_l = rte_dmadev_isblank_l.load(self.lib)
        self.tolower_l = rte_dmadev_tolower_l.load(self.lib)
        self.toupper_l = rte_dmadev_toupper_l.load(self.lib)
        self.memcpy = rte_dmadev_memcpy.load(self.lib)
        self.memmove = rte_dmadev_memmove.load(self.lib)
        self.memccpy = rte_dmadev_memccpy.load(self.lib)
        self.memset = rte_dmadev_memset.load(self.lib)
        self.memcmp = rte_dmadev_memcmp.load(self.lib)
        self.memchr = rte_dmadev_memchr.load(self.lib)
        self.strcpy = rte_dmadev_strcpy.load(self.lib)
        self.strncpy = rte_dmadev_strncpy.load(self.lib)
        self.strcat = rte_dmadev_strcat.load(self.lib)
        self.strncat = rte_dmadev_strncat.load(self.lib)
        self.strcmp = rte_dmadev_strcmp.load(self.lib)
        self.strncmp = rte_dmadev_strncmp.load(self.lib)
        self.strcoll = rte_dmadev_strcoll.load(self.lib)
        self.strxfrm = rte_dmadev_strxfrm.load(self.lib)
        self.strcoll_l = rte_dmadev_strcoll_l.load(self.lib)
        self.strxfrm_l = rte_dmadev_strxfrm_l.load(self.lib)
        self.strdup = rte_dmadev_strdup.load(self.lib)
        self.strndup = rte_dmadev_strndup.load(self.lib)
        self.strchr = rte_dmadev_strchr.load(self.lib)
        self.strrchr = rte_dmadev_strrchr.load(self.lib)
        self.strcspn = rte_dmadev_strcspn.load(self.lib)
        self.strspn = rte_dmadev_strspn.load(self.lib)
        self.strpbrk = rte_dmadev_strpbrk.load(self.lib)
        self.strstr = rte_dmadev_strstr.load(self.lib)
        self.strtok = rte_dmadev_strtok.load(self.lib)
        self.strtok_r = rte_dmadev_strtok_r.load(self.lib)
        self.strlen = rte_dmadev_strlen.load(self.lib)
        self.strnlen = rte_dmadev_strnlen.load(self.lib)
        self.strerror = rte_dmadev_strerror.load(self.lib)
        self.strerror_r = rte_dmadev_strerror_r.load(self.lib)
        self.strerror_l = rte_dmadev_strerror_l.load(self.lib)
        self.bcmp = rte_dmadev_bcmp.load(self.lib)
        self.bcopy = rte_dmadev_bcopy.load(self.lib)
        self.bzero = rte_dmadev_bzero.load(self.lib)
        self.index = rte_dmadev_index.load(self.lib)
        self.rindex = rte_dmadev_rindex.load(self.lib)
        self.ffs = rte_dmadev_ffs.load(self.lib)
        self.ffsl = rte_dmadev_ffsl.load(self.lib)
        self.ffsll = rte_dmadev_ffsll.load(self.lib)
        self.strcasecmp = rte_dmadev_strcasecmp.load(self.lib)
        self.strncasecmp = rte_dmadev_strncasecmp.load(self.lib)
        self.strcasecmp_l = rte_dmadev_strcasecmp_l.load(self.lib)
        self.strncasecmp_l = rte_dmadev_strncasecmp_l.load(self.lib)
        self.explicit_bzero = rte_dmadev_explicit_bzero.load(self.lib)
        self.strsep = rte_dmadev_strsep.load(self.lib)
        self.strsignal = rte_dmadev_strsignal.load(self.lib)
        self.stpcpy = rte_dmadev_stpcpy.load(self.lib)
        self.stpncpy = rte_dmadev_stpncpy.load(self.lib)
        self.rte_strsplit = rte_dmadev_rte_strsplit.load(self.lib)
        self.rte_strlcpy = rte_dmadev_rte_strlcpy.load(self.lib)
        self.rte_strlcat = rte_dmadev_rte_strlcat.load(self.lib)
        self.rte_strscpy = rte_dmadev_rte_strscpy.load(self.lib)
        self.rte_str_skip_leading_spaces = rte_dmadev_rte_str_skip_leading_spaces.load(self.lib)
        self.rte_trace_is_enabled = rte_dmadev_rte_trace_is_enabled.load(self.lib)
        self.rte_trace_feature_is_enabled = rte_dmadev_rte_trace_feature_is_enabled.load(self.lib)
        self.rte_trace_mode_set = rte_dmadev_rte_trace_mode_set.load(self.lib)
        self.rte_trace_mode_get = rte_dmadev_rte_trace_mode_get.load(self.lib)
        self.rte_trace_pattern = rte_dmadev_rte_trace_pattern.load(self.lib)
        self.rte_trace_regexp = rte_dmadev_rte_trace_regexp.load(self.lib)
        self.rte_trace_save = rte_dmadev_rte_trace_save.load(self.lib)
        self.rte_trace_metadata_dump = rte_dmadev_rte_trace_metadata_dump.load(self.lib)
        self.rte_trace_dump = rte_dmadev_rte_trace_dump.load(self.lib)
        self.rte_uuid_is_null = rte_dmadev_rte_uuid_is_null.load(self.lib)
        self.rte_uuid_copy = rte_dmadev_rte_uuid_copy.load(self.lib)
        self.rte_uuid_compare = rte_dmadev_rte_uuid_compare.load(self.lib)
        self.rte_uuid_parse = rte_dmadev_rte_uuid_parse.load(self.lib)
        self.rte_uuid_unparse = rte_dmadev_rte_uuid_unparse.load(self.lib)
        self.rte_trace_point_enable = rte_dmadev_rte_trace_point_enable.load(self.lib)
        self.rte_trace_point_disable = rte_dmadev_rte_trace_point_disable.load(self.lib)
        self.rte_trace_point_is_enabled = rte_dmadev_rte_trace_point_is_enabled.load(self.lib)
        self.rte_trace_point_lookup = rte_dmadev_rte_trace_point_lookup.load(self.lib)
        self.rte_dma_trace_stats_get = rte_dmadev_rte_dma_trace_stats_get.load(self.lib)
        self.rte_dma_trace_vchan_status = rte_dmadev_rte_dma_trace_vchan_status.load(self.lib)
        self.rte_dma_trace_copy = rte_dmadev_rte_dma_trace_copy.load(self.lib)
        self.rte_dma_trace_copy_sg = rte_dmadev_rte_dma_trace_copy_sg.load(self.lib)
        self.rte_dma_trace_fill = rte_dmadev_rte_dma_trace_fill.load(self.lib)
        self.rte_dma_trace_submit = rte_dmadev_rte_dma_trace_submit.load(self.lib)
        self.rte_dma_trace_completed = rte_dmadev_rte_dma_trace_completed.load(self.lib)
        self.rte_dma_trace_completed_status = rte_dmadev_rte_dma_trace_completed_status.load(self.lib)
        self.rte_dma_trace_burst_capacity = rte_dmadev_rte_dma_trace_burst_capacity.load(self.lib)
        self.rte_dma_copy = rte_dmadev_rte_dma_copy.load(self.lib)
        self.rte_dma_copy_sg = rte_dmadev_rte_dma_copy_sg.load(self.lib)
        self.rte_dma_fill = rte_dmadev_rte_dma_fill.load(self.lib)
        self.rte_dma_submit = rte_dmadev_rte_dma_submit.load(self.lib)
        self.rte_dma_completed = rte_dmadev_rte_dma_completed.load(self.lib)
        self.rte_dma_completed_status = rte_dmadev_rte_dma_completed_status.load(self.lib)
        self.rte_dma_burst_capacity = rte_dmadev_rte_dma_burst_capacity.load(self.lib)

