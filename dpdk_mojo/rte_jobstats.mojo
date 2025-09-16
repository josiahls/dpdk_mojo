
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
struct anonomous_record_799(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_799

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
alias ptrdiff_t = ffi.c_long
alias size_t = ffi.c_ulong
alias wchar_t = UInt32
struct anonomous_record_800(Copyable & Movable):
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_800

alias va_list = __builtin_va_list
alias __gnuc_va_list = __builtin_va_list
alias anonomous_record_801 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_802(Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_801

alias __mbstate_t = anonomous_record_802

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
struct anonomous_record_803(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_803

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
alias __errno_location = fn () -> UnsafePointer[Int32]
alias rte_atomic_thread_fence = fn (rte_memory_order) -> NoneType
alias rte_atomic16_cmpset = fn (UnsafePointer[Int16], UInt16, UInt16) -> Int32
alias __sync_bool_compare_and_swap = fn () -> NoneType
alias __sync_bool_compare_and_swap_2 = fn (UnsafePointer[Int16], Int16, Int16) -> Bool
alias rte_atomic16_exchange = fn (UnsafePointer[Int16], UInt16) -> UInt16
alias __atomic_exchange_n = fn () -> NoneType
struct anonomous_record_804(Copyable & Movable):

	var cnt : Int16

alias rte_atomic16_t = anonomous_record_804

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
struct anonomous_record_805(Copyable & Movable):

	var cnt : Int32

alias rte_atomic32_t = anonomous_record_805

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
struct anonomous_record_806(Copyable & Movable):

	var cnt : ffi.c_long

alias rte_atomic64_t = anonomous_record_806

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
alias anonomous_record_807 = C_Union[InlineArray[ffi.c_ulong_long, 2], ffi.c_long_long]

struct anonomous_record_808(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x1da4c3c0","inner":[{"id":"0x1da4c3a0","inner":[{"id":"0x1da4c2e0","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}},"end":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}}},"type":{"qualType":"int"},"value":"16","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}},"end":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}}},"type":{"qualType":"int"},"value":"16","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":16,"file":"dpdk/lib/eal/include/generic/rte_atomic.h","includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"line":1101,"offset":25559,"tokLen":13},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":16,"file":"dpdk/lib/eal/include/generic/rte_atomic.h","includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"line":1101,"offset":25559,"tokLen":13},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":121,"offset":3797,"tokLen":1}}}}


	var union_placeholder_1 : anonomous_record_807



alias rte_int128_t = anonomous_record_808

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
struct anonomous_record_809(Copyable & Movable):
	var cnt : Int32

alias rte_rwlock_t = anonomous_record_809

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

alias rte_eal_process_type = fn () -> 
rte_proc_type_t

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
alias rte_mp_sendmsg = fn (UnsafePointer[rte_mp_msg
rte_mp_msg
]) -> Int32
alias rte_mp_request_sync = fn (UnsafePointer[rte_mp_msg
rte_mp_msg
], UnsafePointer[rte_mp_reply
rte_mp_reply
], UnsafePointer[timespec
timespec
]) -> Int32
alias rte_mp_request_async = fn (UnsafePointer[rte_mp_msg
rte_mp_msg
], UnsafePointer[timespec
timespec
], rte_mp_async_reply_t) -> Int32
alias rte_usage_hook_t = fn(read UnsafePointer[Int8]) -> NoneType
alias rte_set_application_usage_hook = fn (rte_usage_hook_t) -> rte_usage_hook_t
alias rte_eal_has_hugepages = fn () -> Int32
alias rte_eal_has_pci = fn () -> Int32
alias rte_eal_create_uio_dev = fn () -> Int32
alias rte_eal_vfio_intr_mode = fn () -> 
rte_intr_mode

alias rte_eal_vfio_get_vf_token = fn (UnsafePointer[UInt8]) -> NoneType
alias rte_sys_gettid = fn () -> Int32
alias per_lcore__thread_id = Int32
alias rte_gettid = fn () -> Int32
alias rte_eal_get_baseaddr = fn () -> ffi.c_ulong
struct rte_iova_mode(Copyable & Movable):

	alias RTE_IOVA_DC = 0

	alias RTE_IOVA_PA = 1

	alias RTE_IOVA_VA = 2

alias rte_eal_iova_mode = fn () -> 
rte_iova_mode

alias rte_eal_mbuf_user_pool_ops = fn () -> UnsafePointer[Int8]
alias rte_eal_get_runtime_dir = fn () -> UnsafePointer[Int8]
alias rte_eal_parse_coremask = fn (UnsafePointer[Int8], UnsafePointer[Int32]) -> Int32
struct rte_lcore_state_t(Copyable & Movable):

	alias WAIT = 0

	alias RUNNING = 1

alias lcore_function_t = 	# # Node: PlaceHolder()
	# {"id":"0x1daa9000","inner":[{"cc":"cdecl","id":"0x1da83410","inner":[{"id":"0x1d801070","kind":"BuiltinType","type":{"qualType":"int"}},{"id":"0x1d801d10","inner":[{"id":"0x1d800fd0","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"FunctionProtoType","type":{"qualType":"int (void *)"}}],"kind":"ParenType","type":{"qualType":"int (void *)"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Definition of a remote launch function.

alias rte_eal_remote_launch = fn (UnsafePointer[lcore_function_t], OpaquePointer, UInt32) -> Int32
struct rte_rmt_call_main_t(Copyable & Movable):

	alias SKIP_MAIN = 0

	alias CALL_MAIN = 1

alias rte_eal_mp_remote_launch = fn (UnsafePointer[lcore_function_t], OpaquePointer, 
rte_rmt_call_main_t
) -> Int32
alias rte_eal_get_lcore_state = fn (UInt32) -> 
rte_lcore_state_t

alias rte_eal_wait_lcore = fn (UInt32) -> Int32
alias rte_eal_mp_wait_lcore = fn () -> NoneType
struct anonomous_record_810(Copyable & Movable):

	var opaque_id : ffi.c_ulong

alias rte_thread_t = anonomous_record_810

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Thread id descriptor.

alias rte_thread_func = fn(OpaquePointer) -> ffi.c_ulong
struct rte_thread_priority(Copyable & Movable):

	alias RTE_THREAD_PRIORITY_NORMAL = 0

	alias RTE_THREAD_PRIORITY_REALTIME_CRITICAL = 1

struct anonomous_record_811(Copyable & Movable):

	var priority : rte_thread_priority

alias rte_thread_attr_t = anonomous_record_811

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
alias rte_thread_attr_set_priority = fn (UnsafePointer[rte_thread_attr_t], 
rte_thread_priority
) -> Int32
alias rte_thread_get_priority = fn (rte_thread_t, UnsafePointer[
rte_thread_priority
]) -> Int32
alias rte_thread_set_priority = fn (rte_thread_t, 
rte_thread_priority
) -> Int32
alias rte_thread_key_create = fn (UnsafePointer[rte_thread_key], /,destructor: fn (OpaquePointer) -> NoneType) -> Int32
alias rte_thread_key_delete = fn (rte_thread_key) -> Int32
alias rte_thread_value_set = fn (rte_thread_key, OpaquePointer) -> Int32
alias rte_thread_value_get = fn (rte_thread_key) -> OpaquePointer
alias per_lcore__lcore_id = UInt32
struct rte_lcore_role_t(Copyable & Movable):

	alias ROLE_RTE = 0

	alias ROLE_OFF = 1

	alias ROLE_SERVICE = 2

	alias ROLE_NON_EAL = 3

alias rte_eal_lcore_role = fn (UInt32) -> 
rte_lcore_role_t

alias rte_lcore_has_role = fn (UInt32, 
rte_lcore_role_t
) -> Int32
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
struct anonomous_record_812(Copyable & Movable):

	var locked : Int32

alias rte_spinlock_t = anonomous_record_812

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
struct anonomous_record_813(Copyable & Movable):

	var sl : rte_spinlock_t

	var user : Int32

	var count : Int32

alias rte_spinlock_recursive_t = anonomous_record_813

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

alias rte_fbarray_init = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UnsafePointer[Int8], UInt32, UInt32) -> Int32
alias rte_fbarray_attach = fn (UnsafePointer[rte_fbarray
rte_fbarray
]) -> Int32
alias rte_fbarray_destroy = fn (UnsafePointer[rte_fbarray
rte_fbarray
]) -> Int32
alias rte_fbarray_detach = fn (UnsafePointer[rte_fbarray
rte_fbarray
]) -> Int32
alias rte_fbarray_get = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> OpaquePointer
alias rte_fbarray_find_idx = fn (UnsafePointer[rte_fbarray
rte_fbarray
], OpaquePointer) -> Int32
alias rte_fbarray_set_used = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> Int32
alias rte_fbarray_set_free = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> Int32
alias rte_fbarray_is_used = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> Int32
alias rte_fbarray_find_next_free = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> Int32
alias rte_fbarray_find_next_used = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> Int32
alias rte_fbarray_find_next_n_free = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32, UInt32) -> Int32
alias rte_fbarray_find_next_n_used = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32, UInt32) -> Int32
alias rte_fbarray_find_contig_free = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> Int32
alias rte_fbarray_find_contig_used = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> Int32
alias rte_fbarray_find_prev_free = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> Int32
alias rte_fbarray_find_prev_used = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> Int32
alias rte_fbarray_find_prev_n_free = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32, UInt32) -> Int32
alias rte_fbarray_find_prev_n_used = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32, UInt32) -> Int32
alias rte_fbarray_find_rev_contig_free = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> Int32
alias rte_fbarray_find_rev_contig_used = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> Int32
alias rte_fbarray_find_biggest_free = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> Int32
alias rte_fbarray_find_biggest_used = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> Int32
alias rte_fbarray_find_rev_biggest_free = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> Int32
alias rte_fbarray_find_rev_biggest_used = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UInt32) -> Int32
alias rte_fbarray_dump_metadata = fn (UnsafePointer[rte_fbarray
rte_fbarray
], UnsafePointer[FILE]) -> NoneType
alias anonomous_record_814 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memseg(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x1dacd898","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/eal/include/rte_memory.h","includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/jobstats/rte_jobstats.h"},"line":61,"offset":1680,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/eal/include/rte_memory.h","includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/build/../lib/jobstats/rte_jobstats.h"},"line":61,"offset":1680,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var iova : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_814



	var len : ffi.c_ulong

	var hugepage_sz : ffi.c_ulong

	var socket_id : Int32

	var nchannel : UInt32

	var nrank : UInt32

	var flags : UInt32

alias anonomous_record_815 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memseg_list(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_815



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
alias rte_mem_virt2memseg = fn (OpaquePointer, UnsafePointer[rte_memseg_list
rte_memseg_list
]) -> UnsafePointer[rte_memseg
rte_memseg
]
alias rte_mem_virt2memseg_list = fn (OpaquePointer) -> UnsafePointer[rte_memseg_list
rte_memseg_list
]
alias rte_memseg_walk_t = fn(read UnsafePointer[rte_memseg_list], read UnsafePointer[rte_memseg], OpaquePointer) -> Int32
alias rte_memseg_contig_walk_t = fn(read UnsafePointer[rte_memseg_list], read UnsafePointer[rte_memseg], size_t, OpaquePointer) -> Int32
alias rte_memseg_list_walk_t = fn(read UnsafePointer[rte_memseg_list], OpaquePointer) -> Int32
alias rte_memseg_walk = fn (rte_memseg_walk_t, OpaquePointer) -> Int32
alias rte_memseg_contig_walk = fn (rte_memseg_contig_walk_t, OpaquePointer) -> Int32
alias rte_memseg_list_walk = fn (rte_memseg_list_walk_t, OpaquePointer) -> Int32
alias rte_memseg_walk_thread_unsafe = fn (rte_memseg_walk_t, OpaquePointer) -> Int32
alias rte_memseg_contig_walk_thread_unsafe = fn (rte_memseg_contig_walk_t, OpaquePointer) -> Int32
alias rte_memseg_list_walk_thread_unsafe = fn (rte_memseg_list_walk_t, OpaquePointer) -> Int32
alias rte_memseg_get_fd = fn (UnsafePointer[rte_memseg
rte_memseg
]) -> Int32
alias rte_memseg_get_fd_thread_unsafe = fn (UnsafePointer[rte_memseg
rte_memseg
]) -> Int32
alias rte_memseg_get_fd_offset = fn (UnsafePointer[rte_memseg
rte_memseg
], UnsafePointer[size_t]) -> Int32
alias rte_memseg_get_fd_offset_thread_unsafe = fn (UnsafePointer[rte_memseg
rte_memseg
], UnsafePointer[size_t]) -> Int32
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
struct rte_jobstats_context(Copyable & Movable):

	pass
struct rte_jobstats(Copyable & Movable):
	pass
alias rte_job_update_period_cb_t = fn(UnsafePointer[rte_jobstats], ffi.c_long_long) -> NoneType
alias rte_jobstats_context_init = fn (UnsafePointer[rte_jobstats_context
rte_jobstats_context
]) -> Int32
alias rte_jobstats_context_start = fn (UnsafePointer[rte_jobstats_context
rte_jobstats_context
]) -> NoneType
alias rte_jobstats_context_finish = fn (UnsafePointer[rte_jobstats_context
rte_jobstats_context
]) -> NoneType
alias rte_jobstats_context_reset = fn (UnsafePointer[rte_jobstats_context
rte_jobstats_context
]) -> NoneType
alias rte_jobstats_init = fn (UnsafePointer[rte_jobstats
rte_jobstats
], UnsafePointer[Int8], ffi.c_ulong, ffi.c_ulong, ffi.c_ulong, ffi.c_long) -> Int32
alias rte_jobstats_set_target = fn (UnsafePointer[rte_jobstats
rte_jobstats
], ffi.c_long) -> NoneType
alias rte_jobstats_start = fn (UnsafePointer[rte_jobstats_context
rte_jobstats_context
], UnsafePointer[rte_jobstats
rte_jobstats
]) -> Int32
alias rte_jobstats_abort = fn (UnsafePointer[rte_jobstats
rte_jobstats
]) -> Int32
alias rte_jobstats_finish = fn (UnsafePointer[rte_jobstats
rte_jobstats
], ffi.c_long) -> Int32
alias rte_jobstats_set_period = fn (UnsafePointer[rte_jobstats
rte_jobstats
], ffi.c_ulong, UInt8) -> NoneType
alias rte_jobstats_set_min = fn (UnsafePointer[rte_jobstats
rte_jobstats
], ffi.c_ulong) -> NoneType
alias rte_jobstats_set_max = fn (UnsafePointer[rte_jobstats
rte_jobstats
], ffi.c_ulong) -> NoneType
alias rte_jobstats_set_update_period_function = fn (UnsafePointer[rte_jobstats
rte_jobstats
], rte_job_update_period_cb_t) -> NoneType
alias rte_jobstats_reset = fn (UnsafePointer[rte_jobstats
rte_jobstats
]) -> NoneType


alias rte_jobstats_remove = ExternalFunction['remove', remove]
alias rte_jobstats_rename = ExternalFunction['rename', rename]
alias rte_jobstats_renameat = ExternalFunction['renameat', renameat]
alias rte_jobstats_fclose = ExternalFunction['fclose', fclose]
alias rte_jobstats_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias rte_jobstats_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias rte_jobstats_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias rte_jobstats_tempnam = ExternalFunction['tempnam', tempnam]
alias rte_jobstats_fflush = ExternalFunction['fflush', fflush]
alias rte_jobstats_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias rte_jobstats_fopen = ExternalFunction['fopen', fopen]
alias rte_jobstats_freopen = ExternalFunction['freopen', freopen]
alias rte_jobstats_fdopen = ExternalFunction['fdopen', fdopen]
alias rte_jobstats_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias rte_jobstats_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias rte_jobstats_setbuf = ExternalFunction['setbuf', setbuf]
alias rte_jobstats_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias rte_jobstats_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias rte_jobstats_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias rte_jobstats_fprintf = ExternalFunction['fprintf', fprintf]
alias rte_jobstats_printf = ExternalFunction['printf', printf]
alias rte_jobstats_sprintf = ExternalFunction['sprintf', sprintf]
alias rte_jobstats_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias rte_jobstats_vprintf = ExternalFunction['vprintf', vprintf]
alias rte_jobstats_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias rte_jobstats_snprintf = ExternalFunction['snprintf', snprintf]
alias rte_jobstats_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias rte_jobstats_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias rte_jobstats_dprintf = ExternalFunction['dprintf', dprintf]
alias rte_jobstats_fscanf = ExternalFunction['fscanf', fscanf]
alias rte_jobstats_scanf = ExternalFunction['scanf', scanf]
alias rte_jobstats_sscanf = ExternalFunction['sscanf', sscanf]
alias rte_jobstats_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias rte_jobstats_vscanf = ExternalFunction['vscanf', vscanf]
alias rte_jobstats_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias rte_jobstats_fgetc = ExternalFunction['fgetc', fgetc]
alias rte_jobstats_getc = ExternalFunction['getc', getc]
alias rte_jobstats_getchar = ExternalFunction['getchar', getchar]
alias rte_jobstats_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias rte_jobstats_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias rte_jobstats_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias rte_jobstats_fputc = ExternalFunction['fputc', fputc]
alias rte_jobstats_putc = ExternalFunction['putc', putc]
alias rte_jobstats_putchar = ExternalFunction['putchar', putchar]
alias rte_jobstats_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias rte_jobstats_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias rte_jobstats_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias rte_jobstats_getw = ExternalFunction['getw', getw]
alias rte_jobstats_putw = ExternalFunction['putw', putw]
alias rte_jobstats_fgets = ExternalFunction['fgets', fgets]
alias rte_jobstats_getdelim = ExternalFunction['getdelim', getdelim]
alias rte_jobstats_getline = ExternalFunction['getline', getline]
alias rte_jobstats_fputs = ExternalFunction['fputs', fputs]
alias rte_jobstats_puts = ExternalFunction['puts', puts]
alias rte_jobstats_ungetc = ExternalFunction['ungetc', ungetc]
alias rte_jobstats_fread = ExternalFunction['fread', fread]
alias rte_jobstats_fwrite = ExternalFunction['fwrite', fwrite]
alias rte_jobstats_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias rte_jobstats_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias rte_jobstats_fseek = ExternalFunction['fseek', fseek]
alias rte_jobstats_ftell = ExternalFunction['ftell', ftell]
alias rte_jobstats_rewind = ExternalFunction['rewind', rewind]
alias rte_jobstats_fseeko = ExternalFunction['fseeko', fseeko]
alias rte_jobstats_ftello = ExternalFunction['ftello', ftello]
alias rte_jobstats_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias rte_jobstats_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias rte_jobstats_clearerr = ExternalFunction['clearerr', clearerr]
alias rte_jobstats_feof = ExternalFunction['feof', feof]
alias rte_jobstats_ferror = ExternalFunction['ferror', ferror]
alias rte_jobstats_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias rte_jobstats_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias rte_jobstats_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias rte_jobstats_perror = ExternalFunction['perror', perror]
alias rte_jobstats_fileno = ExternalFunction['fileno', fileno]
alias rte_jobstats_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias rte_jobstats_pclose = ExternalFunction['pclose', pclose]
alias rte_jobstats_popen = ExternalFunction['popen', popen]
alias rte_jobstats_ctermid = ExternalFunction['ctermid', ctermid]
alias rte_jobstats_flockfile = ExternalFunction['flockfile', flockfile]
alias rte_jobstats_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias rte_jobstats_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias rte_jobstats_alloca = ExternalFunction['alloca', alloca]
alias rte_jobstats_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_jobstats_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_jobstats_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_jobstats_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_jobstats_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_jobstats_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_jobstats_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_jobstats_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_jobstats_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_jobstats_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_jobstats_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_jobstats_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_jobstats_rte_openlog_stream = ExternalFunction['rte_openlog_stream', rte_openlog_stream]
alias rte_jobstats_rte_log_get_stream = ExternalFunction['rte_log_get_stream', rte_log_get_stream]
alias rte_jobstats_rte_log_set_global_level = ExternalFunction['rte_log_set_global_level', rte_log_set_global_level]
alias rte_jobstats_rte_log_get_global_level = ExternalFunction['rte_log_get_global_level', rte_log_get_global_level]
alias rte_jobstats_rte_log_get_level = ExternalFunction['rte_log_get_level', rte_log_get_level]
alias rte_jobstats_rte_log_can_log = ExternalFunction['rte_log_can_log', rte_log_can_log]
alias rte_jobstats_rte_log_set_level_pattern = ExternalFunction['rte_log_set_level_pattern', rte_log_set_level_pattern]
alias rte_jobstats_rte_log_set_level_regexp = ExternalFunction['rte_log_set_level_regexp', rte_log_set_level_regexp]
alias rte_jobstats_rte_log_set_level = ExternalFunction['rte_log_set_level', rte_log_set_level]
alias rte_jobstats_rte_log_cur_msg_loglevel = ExternalFunction['rte_log_cur_msg_loglevel', rte_log_cur_msg_loglevel]
alias rte_jobstats_rte_log_cur_msg_logtype = ExternalFunction['rte_log_cur_msg_logtype', rte_log_cur_msg_logtype]
alias rte_jobstats_rte_log_register = ExternalFunction['rte_log_register', rte_log_register]
alias rte_jobstats_rte_log_register_type_and_pick_level = ExternalFunction['rte_log_register_type_and_pick_level', rte_log_register_type_and_pick_level]
alias rte_jobstats_rte_log_list_types = ExternalFunction['rte_log_list_types', rte_log_list_types]
alias rte_jobstats_rte_log_dump = ExternalFunction['rte_log_dump', rte_log_dump]
alias rte_jobstats_rte_log = ExternalFunction['rte_log', rte_log]
alias rte_jobstats_rte_vlog = ExternalFunction['rte_vlog', rte_vlog]
alias rte_jobstats_rte_dump_stack = ExternalFunction['rte_dump_stack', rte_dump_stack]
alias rte_jobstats_rte_bit_relaxed_get32 = ExternalFunction['rte_bit_relaxed_get32', rte_bit_relaxed_get32]
alias rte_jobstats_rte_bit_relaxed_set32 = ExternalFunction['rte_bit_relaxed_set32', rte_bit_relaxed_set32]
alias rte_jobstats_rte_bit_relaxed_clear32 = ExternalFunction['rte_bit_relaxed_clear32', rte_bit_relaxed_clear32]
alias rte_jobstats_rte_bit_relaxed_test_and_set32 = ExternalFunction['rte_bit_relaxed_test_and_set32', rte_bit_relaxed_test_and_set32]
alias rte_jobstats_rte_bit_relaxed_test_and_clear32 = ExternalFunction['rte_bit_relaxed_test_and_clear32', rte_bit_relaxed_test_and_clear32]
alias rte_jobstats_rte_bit_relaxed_get64 = ExternalFunction['rte_bit_relaxed_get64', rte_bit_relaxed_get64]
alias rte_jobstats_rte_bit_relaxed_set64 = ExternalFunction['rte_bit_relaxed_set64', rte_bit_relaxed_set64]
alias rte_jobstats_rte_bit_relaxed_clear64 = ExternalFunction['rte_bit_relaxed_clear64', rte_bit_relaxed_clear64]
alias rte_jobstats_rte_bit_relaxed_test_and_set64 = ExternalFunction['rte_bit_relaxed_test_and_set64', rte_bit_relaxed_test_and_set64]
alias rte_jobstats_rte_bit_relaxed_test_and_clear64 = ExternalFunction['rte_bit_relaxed_test_and_clear64', rte_bit_relaxed_test_and_clear64]
alias rte_jobstats_rte_clz32 = ExternalFunction['rte_clz32', rte_clz32]
alias rte_jobstats_rte_clz64 = ExternalFunction['rte_clz64', rte_clz64]
alias rte_jobstats_rte_ctz32 = ExternalFunction['rte_ctz32', rte_ctz32]
alias rte_jobstats_rte_ctz64 = ExternalFunction['rte_ctz64', rte_ctz64]
alias rte_jobstats_rte_popcount32 = ExternalFunction['rte_popcount32', rte_popcount32]
alias rte_jobstats_rte_popcount64 = ExternalFunction['rte_popcount64', rte_popcount64]
alias rte_jobstats_rte_ffs32 = ExternalFunction['rte_ffs32', rte_ffs32]
alias rte_jobstats_rte_ffs64 = ExternalFunction['rte_ffs64', rte_ffs64]
alias rte_jobstats_rte_combine32ms1b = ExternalFunction['rte_combine32ms1b', rte_combine32ms1b]
alias rte_jobstats_rte_combine64ms1b = ExternalFunction['rte_combine64ms1b', rte_combine64ms1b]
alias rte_jobstats_rte_bsf32 = ExternalFunction['rte_bsf32', rte_bsf32]
alias rte_jobstats_rte_bsf32_safe = ExternalFunction['rte_bsf32_safe', rte_bsf32_safe]
alias rte_jobstats_rte_bsf64 = ExternalFunction['rte_bsf64', rte_bsf64]
alias rte_jobstats_rte_bsf64_safe = ExternalFunction['rte_bsf64_safe', rte_bsf64_safe]
alias rte_jobstats_rte_fls_u32 = ExternalFunction['rte_fls_u32', rte_fls_u32]
alias rte_jobstats_rte_fls_u64 = ExternalFunction['rte_fls_u64', rte_fls_u64]
alias rte_jobstats_rte_is_power_of_2 = ExternalFunction['rte_is_power_of_2', rte_is_power_of_2]
alias rte_jobstats_rte_align32pow2 = ExternalFunction['rte_align32pow2', rte_align32pow2]
alias rte_jobstats_rte_align32prevpow2 = ExternalFunction['rte_align32prevpow2', rte_align32prevpow2]
alias rte_jobstats_rte_align64pow2 = ExternalFunction['rte_align64pow2', rte_align64pow2]
alias rte_jobstats_rte_align64prevpow2 = ExternalFunction['rte_align64prevpow2', rte_align64prevpow2]
alias rte_jobstats_rte_log2_u32 = ExternalFunction['rte_log2_u32', rte_log2_u32]
alias rte_jobstats_rte_log2_u64 = ExternalFunction['rte_log2_u64', rte_log2_u64]
alias rte_jobstats_rte_atomic_thread_fence = ExternalFunction['rte_atomic_thread_fence', rte_atomic_thread_fence]
alias rte_jobstats_rte_atomic16_cmpset = ExternalFunction['rte_atomic16_cmpset', rte_atomic16_cmpset]
alias rte_jobstats_rte_atomic16_exchange = ExternalFunction['rte_atomic16_exchange', rte_atomic16_exchange]
alias rte_jobstats_rte_atomic16_init = ExternalFunction['rte_atomic16_init', rte_atomic16_init]
alias rte_jobstats_rte_atomic16_read = ExternalFunction['rte_atomic16_read', rte_atomic16_read]
alias rte_jobstats_rte_atomic16_set = ExternalFunction['rte_atomic16_set', rte_atomic16_set]
alias rte_jobstats_rte_atomic16_add = ExternalFunction['rte_atomic16_add', rte_atomic16_add]
alias rte_jobstats_rte_atomic16_sub = ExternalFunction['rte_atomic16_sub', rte_atomic16_sub]
alias rte_jobstats_rte_atomic16_inc = ExternalFunction['rte_atomic16_inc', rte_atomic16_inc]
alias rte_jobstats_rte_atomic16_dec = ExternalFunction['rte_atomic16_dec', rte_atomic16_dec]
alias rte_jobstats_rte_atomic16_add_return = ExternalFunction['rte_atomic16_add_return', rte_atomic16_add_return]
alias rte_jobstats_rte_atomic16_sub_return = ExternalFunction['rte_atomic16_sub_return', rte_atomic16_sub_return]
alias rte_jobstats_rte_atomic16_inc_and_test = ExternalFunction['rte_atomic16_inc_and_test', rte_atomic16_inc_and_test]
alias rte_jobstats_rte_atomic16_dec_and_test = ExternalFunction['rte_atomic16_dec_and_test', rte_atomic16_dec_and_test]
alias rte_jobstats_rte_atomic16_test_and_set = ExternalFunction['rte_atomic16_test_and_set', rte_atomic16_test_and_set]
alias rte_jobstats_rte_atomic16_clear = ExternalFunction['rte_atomic16_clear', rte_atomic16_clear]
alias rte_jobstats_rte_atomic32_cmpset = ExternalFunction['rte_atomic32_cmpset', rte_atomic32_cmpset]
alias rte_jobstats_rte_atomic32_exchange = ExternalFunction['rte_atomic32_exchange', rte_atomic32_exchange]
alias rte_jobstats_rte_atomic32_init = ExternalFunction['rte_atomic32_init', rte_atomic32_init]
alias rte_jobstats_rte_atomic32_read = ExternalFunction['rte_atomic32_read', rte_atomic32_read]
alias rte_jobstats_rte_atomic32_set = ExternalFunction['rte_atomic32_set', rte_atomic32_set]
alias rte_jobstats_rte_atomic32_add = ExternalFunction['rte_atomic32_add', rte_atomic32_add]
alias rte_jobstats_rte_atomic32_sub = ExternalFunction['rte_atomic32_sub', rte_atomic32_sub]
alias rte_jobstats_rte_atomic32_inc = ExternalFunction['rte_atomic32_inc', rte_atomic32_inc]
alias rte_jobstats_rte_atomic32_dec = ExternalFunction['rte_atomic32_dec', rte_atomic32_dec]
alias rte_jobstats_rte_atomic32_add_return = ExternalFunction['rte_atomic32_add_return', rte_atomic32_add_return]
alias rte_jobstats_rte_atomic32_sub_return = ExternalFunction['rte_atomic32_sub_return', rte_atomic32_sub_return]
alias rte_jobstats_rte_atomic32_inc_and_test = ExternalFunction['rte_atomic32_inc_and_test', rte_atomic32_inc_and_test]
alias rte_jobstats_rte_atomic32_dec_and_test = ExternalFunction['rte_atomic32_dec_and_test', rte_atomic32_dec_and_test]
alias rte_jobstats_rte_atomic32_test_and_set = ExternalFunction['rte_atomic32_test_and_set', rte_atomic32_test_and_set]
alias rte_jobstats_rte_atomic32_clear = ExternalFunction['rte_atomic32_clear', rte_atomic32_clear]
alias rte_jobstats_rte_atomic64_cmpset = ExternalFunction['rte_atomic64_cmpset', rte_atomic64_cmpset]
alias rte_jobstats_rte_atomic64_exchange = ExternalFunction['rte_atomic64_exchange', rte_atomic64_exchange]
alias rte_jobstats_rte_atomic64_init = ExternalFunction['rte_atomic64_init', rte_atomic64_init]
alias rte_jobstats_rte_atomic64_read = ExternalFunction['rte_atomic64_read', rte_atomic64_read]
alias rte_jobstats_rte_atomic64_set = ExternalFunction['rte_atomic64_set', rte_atomic64_set]
alias rte_jobstats_rte_atomic64_add = ExternalFunction['rte_atomic64_add', rte_atomic64_add]
alias rte_jobstats_rte_atomic64_sub = ExternalFunction['rte_atomic64_sub', rte_atomic64_sub]
alias rte_jobstats_rte_atomic64_inc = ExternalFunction['rte_atomic64_inc', rte_atomic64_inc]
alias rte_jobstats_rte_atomic64_dec = ExternalFunction['rte_atomic64_dec', rte_atomic64_dec]
alias rte_jobstats_rte_atomic64_add_return = ExternalFunction['rte_atomic64_add_return', rte_atomic64_add_return]
alias rte_jobstats_rte_atomic64_sub_return = ExternalFunction['rte_atomic64_sub_return', rte_atomic64_sub_return]
alias rte_jobstats_rte_atomic64_inc_and_test = ExternalFunction['rte_atomic64_inc_and_test', rte_atomic64_inc_and_test]
alias rte_jobstats_rte_atomic64_dec_and_test = ExternalFunction['rte_atomic64_dec_and_test', rte_atomic64_dec_and_test]
alias rte_jobstats_rte_atomic64_test_and_set = ExternalFunction['rte_atomic64_test_and_set', rte_atomic64_test_and_set]
alias rte_jobstats_rte_atomic64_clear = ExternalFunction['rte_atomic64_clear', rte_atomic64_clear]
alias rte_jobstats_rte_atomic128_cmp_exchange = ExternalFunction['rte_atomic128_cmp_exchange', rte_atomic128_cmp_exchange]
alias rte_jobstats_rte_pause = ExternalFunction['rte_pause', rte_pause]
alias rte_jobstats_rte_wait_until_equal_16 = ExternalFunction['rte_wait_until_equal_16', rte_wait_until_equal_16]
alias rte_jobstats_rte_wait_until_equal_32 = ExternalFunction['rte_wait_until_equal_32', rte_wait_until_equal_32]
alias rte_jobstats_rte_wait_until_equal_64 = ExternalFunction['rte_wait_until_equal_64', rte_wait_until_equal_64]
alias rte_jobstats_rte_rwlock_init = ExternalFunction['rte_rwlock_init', rte_rwlock_init]
alias rte_jobstats_rte_rwlock_read_lock = ExternalFunction['rte_rwlock_read_lock', rte_rwlock_read_lock]
alias rte_jobstats_rte_rwlock_read_trylock = ExternalFunction['rte_rwlock_read_trylock', rte_rwlock_read_trylock]
alias rte_jobstats_rte_rwlock_read_unlock = ExternalFunction['rte_rwlock_read_unlock', rte_rwlock_read_unlock]
alias rte_jobstats_rte_rwlock_write_trylock = ExternalFunction['rte_rwlock_write_trylock', rte_rwlock_write_trylock]
alias rte_jobstats_rte_rwlock_write_lock = ExternalFunction['rte_rwlock_write_lock', rte_rwlock_write_lock]
alias rte_jobstats_rte_rwlock_write_unlock = ExternalFunction['rte_rwlock_write_unlock', rte_rwlock_write_unlock]
alias rte_jobstats_rte_rwlock_write_is_locked = ExternalFunction['rte_rwlock_write_is_locked', rte_rwlock_write_is_locked]
alias rte_jobstats_rte_rwlock_read_lock_tm = ExternalFunction['rte_rwlock_read_lock_tm', rte_rwlock_read_lock_tm]
alias rte_jobstats_rte_rwlock_read_unlock_tm = ExternalFunction['rte_rwlock_read_unlock_tm', rte_rwlock_read_unlock_tm]
alias rte_jobstats_rte_rwlock_write_lock_tm = ExternalFunction['rte_rwlock_write_lock_tm', rte_rwlock_write_lock_tm]
alias rte_jobstats_rte_rwlock_write_unlock_tm = ExternalFunction['rte_rwlock_write_unlock_tm', rte_rwlock_write_unlock_tm]
alias rte_jobstats_clock = ExternalFunction['clock', clock]
alias rte_jobstats_time = ExternalFunction['time', time]
alias rte_jobstats_difftime = ExternalFunction['difftime', difftime]
alias rte_jobstats_mktime = ExternalFunction['mktime', mktime]
alias rte_jobstats_strftime = ExternalFunction['strftime', strftime]
alias rte_jobstats_strftime_l = ExternalFunction['strftime_l', strftime_l]
alias rte_jobstats_gmtime = ExternalFunction['gmtime', gmtime]
alias rte_jobstats_localtime = ExternalFunction['localtime', localtime]
alias rte_jobstats_gmtime_r = ExternalFunction['gmtime_r', gmtime_r]
alias rte_jobstats_localtime_r = ExternalFunction['localtime_r', localtime_r]
alias rte_jobstats_asctime = ExternalFunction['asctime', asctime]
alias rte_jobstats_ctime = ExternalFunction['ctime', ctime]
alias rte_jobstats_asctime_r = ExternalFunction['asctime_r', asctime_r]
alias rte_jobstats_ctime_r = ExternalFunction['ctime_r', ctime_r]
alias rte_jobstats_tzset = ExternalFunction['tzset', tzset]
alias rte_jobstats_timegm = ExternalFunction['timegm', timegm]
alias rte_jobstats_timelocal = ExternalFunction['timelocal', timelocal]
alias rte_jobstats_dysize = ExternalFunction['dysize', dysize]
alias rte_jobstats_nanosleep = ExternalFunction['nanosleep', nanosleep]
alias rte_jobstats_clock_getres = ExternalFunction['clock_getres', clock_getres]
alias rte_jobstats_clock_gettime = ExternalFunction['clock_gettime', clock_gettime]
alias rte_jobstats_clock_settime = ExternalFunction['clock_settime', clock_settime]
alias rte_jobstats_clock_nanosleep = ExternalFunction['clock_nanosleep', clock_nanosleep]
alias rte_jobstats_clock_getcpuclockid = ExternalFunction['clock_getcpuclockid', clock_getcpuclockid]
alias rte_jobstats_timer_create = ExternalFunction['timer_create', timer_create]
alias rte_jobstats_timer_delete = ExternalFunction['timer_delete', timer_delete]
alias rte_jobstats_timer_settime = ExternalFunction['timer_settime', timer_settime]
alias rte_jobstats_timer_gettime = ExternalFunction['timer_gettime', timer_gettime]
alias rte_jobstats_timer_getoverrun = ExternalFunction['timer_getoverrun', timer_getoverrun]
alias rte_jobstats_timespec_get = ExternalFunction['timespec_get', timespec_get]
alias rte_jobstats_memcpy = ExternalFunction['memcpy', memcpy]
alias rte_jobstats_memmove = ExternalFunction['memmove', memmove]
alias rte_jobstats_memccpy = ExternalFunction['memccpy', memccpy]
alias rte_jobstats_memset = ExternalFunction['memset', memset]
alias rte_jobstats_memcmp = ExternalFunction['memcmp', memcmp]
alias rte_jobstats_memchr = ExternalFunction['memchr', memchr]
alias rte_jobstats_strcpy = ExternalFunction['strcpy', strcpy]
alias rte_jobstats_strncpy = ExternalFunction['strncpy', strncpy]
alias rte_jobstats_strcat = ExternalFunction['strcat', strcat]
alias rte_jobstats_strncat = ExternalFunction['strncat', strncat]
alias rte_jobstats_strcmp = ExternalFunction['strcmp', strcmp]
alias rte_jobstats_strncmp = ExternalFunction['strncmp', strncmp]
alias rte_jobstats_strcoll = ExternalFunction['strcoll', strcoll]
alias rte_jobstats_strxfrm = ExternalFunction['strxfrm', strxfrm]
alias rte_jobstats_strcoll_l = ExternalFunction['strcoll_l', strcoll_l]
alias rte_jobstats_strxfrm_l = ExternalFunction['strxfrm_l', strxfrm_l]
alias rte_jobstats_strdup = ExternalFunction['strdup', strdup]
alias rte_jobstats_strndup = ExternalFunction['strndup', strndup]
alias rte_jobstats_strchr = ExternalFunction['strchr', strchr]
alias rte_jobstats_strrchr = ExternalFunction['strrchr', strrchr]
alias rte_jobstats_strcspn = ExternalFunction['strcspn', strcspn]
alias rte_jobstats_strspn = ExternalFunction['strspn', strspn]
alias rte_jobstats_strpbrk = ExternalFunction['strpbrk', strpbrk]
alias rte_jobstats_strstr = ExternalFunction['strstr', strstr]
alias rte_jobstats_strtok = ExternalFunction['strtok', strtok]
alias rte_jobstats_strtok_r = ExternalFunction['strtok_r', strtok_r]
alias rte_jobstats_strlen = ExternalFunction['strlen', strlen]
alias rte_jobstats_strnlen = ExternalFunction['strnlen', strnlen]
alias rte_jobstats_strerror = ExternalFunction['strerror', strerror]
alias rte_jobstats_strerror_r = ExternalFunction['strerror_r', strerror_r]
alias rte_jobstats_strerror_l = ExternalFunction['strerror_l', strerror_l]
alias rte_jobstats_bcmp = ExternalFunction['bcmp', bcmp]
alias rte_jobstats_bcopy = ExternalFunction['bcopy', bcopy]
alias rte_jobstats_bzero = ExternalFunction['bzero', bzero]
alias rte_jobstats_index = ExternalFunction['index', index]
alias rte_jobstats_rindex = ExternalFunction['rindex', rindex]
alias rte_jobstats_ffs = ExternalFunction['ffs', ffs]
alias rte_jobstats_ffsl = ExternalFunction['ffsl', ffsl]
alias rte_jobstats_ffsll = ExternalFunction['ffsll', ffsll]
alias rte_jobstats_strcasecmp = ExternalFunction['strcasecmp', strcasecmp]
alias rte_jobstats_strncasecmp = ExternalFunction['strncasecmp', strncasecmp]
alias rte_jobstats_strcasecmp_l = ExternalFunction['strcasecmp_l', strcasecmp_l]
alias rte_jobstats_strncasecmp_l = ExternalFunction['strncasecmp_l', strncasecmp_l]
alias rte_jobstats_explicit_bzero = ExternalFunction['explicit_bzero', explicit_bzero]
alias rte_jobstats_strsep = ExternalFunction['strsep', strsep]
alias rte_jobstats_strsignal = ExternalFunction['strsignal', strsignal]
alias rte_jobstats_stpcpy = ExternalFunction['stpcpy', stpcpy]
alias rte_jobstats_stpncpy = ExternalFunction['stpncpy', stpncpy]
alias rte_jobstats_rte_uuid_is_null = ExternalFunction['rte_uuid_is_null', rte_uuid_is_null]
alias rte_jobstats_rte_uuid_copy = ExternalFunction['rte_uuid_copy', rte_uuid_copy]
alias rte_jobstats_rte_uuid_compare = ExternalFunction['rte_uuid_compare', rte_uuid_compare]
alias rte_jobstats_rte_uuid_parse = ExternalFunction['rte_uuid_parse', rte_uuid_parse]
alias rte_jobstats_rte_uuid_unparse = ExternalFunction['rte_uuid_unparse', rte_uuid_unparse]
alias rte_jobstats_rte_eal_process_type = ExternalFunction['rte_eal_process_type', rte_eal_process_type]
alias rte_jobstats_rte_eal_iopl_init = ExternalFunction['rte_eal_iopl_init', rte_eal_iopl_init]
alias rte_jobstats_rte_eal_init = ExternalFunction['rte_eal_init', rte_eal_init]
alias rte_jobstats_rte_eal_cleanup = ExternalFunction['rte_eal_cleanup', rte_eal_cleanup]
alias rte_jobstats_rte_eal_primary_proc_alive = ExternalFunction['rte_eal_primary_proc_alive', rte_eal_primary_proc_alive]
alias rte_jobstats_rte_mp_disable = ExternalFunction['rte_mp_disable', rte_mp_disable]
alias rte_jobstats_rte_mp_action_register = ExternalFunction['rte_mp_action_register', rte_mp_action_register]
alias rte_jobstats_rte_mp_action_unregister = ExternalFunction['rte_mp_action_unregister', rte_mp_action_unregister]
alias rte_jobstats_rte_mp_sendmsg = ExternalFunction['rte_mp_sendmsg', rte_mp_sendmsg]
alias rte_jobstats_rte_mp_request_sync = ExternalFunction['rte_mp_request_sync', rte_mp_request_sync]
alias rte_jobstats_rte_mp_request_async = ExternalFunction['rte_mp_request_async', rte_mp_request_async]
alias rte_jobstats_rte_set_application_usage_hook = ExternalFunction['rte_set_application_usage_hook', rte_set_application_usage_hook]
alias rte_jobstats_rte_eal_has_hugepages = ExternalFunction['rte_eal_has_hugepages', rte_eal_has_hugepages]
alias rte_jobstats_rte_eal_has_pci = ExternalFunction['rte_eal_has_pci', rte_eal_has_pci]
alias rte_jobstats_rte_eal_create_uio_dev = ExternalFunction['rte_eal_create_uio_dev', rte_eal_create_uio_dev]
alias rte_jobstats_rte_eal_vfio_intr_mode = ExternalFunction['rte_eal_vfio_intr_mode', rte_eal_vfio_intr_mode]
alias rte_jobstats_rte_eal_vfio_get_vf_token = ExternalFunction['rte_eal_vfio_get_vf_token', rte_eal_vfio_get_vf_token]
alias rte_jobstats_rte_sys_gettid = ExternalFunction['rte_sys_gettid', rte_sys_gettid]
alias rte_jobstats_rte_gettid = ExternalFunction['rte_gettid', rte_gettid]
alias rte_jobstats_rte_eal_get_baseaddr = ExternalFunction['rte_eal_get_baseaddr', rte_eal_get_baseaddr]
alias rte_jobstats_rte_eal_iova_mode = ExternalFunction['rte_eal_iova_mode', rte_eal_iova_mode]
alias rte_jobstats_rte_eal_mbuf_user_pool_ops = ExternalFunction['rte_eal_mbuf_user_pool_ops', rte_eal_mbuf_user_pool_ops]
alias rte_jobstats_rte_eal_get_runtime_dir = ExternalFunction['rte_eal_get_runtime_dir', rte_eal_get_runtime_dir]
alias rte_jobstats_rte_eal_parse_coremask = ExternalFunction['rte_eal_parse_coremask', rte_eal_parse_coremask]
alias rte_jobstats_rte_eal_remote_launch = ExternalFunction['rte_eal_remote_launch', rte_eal_remote_launch]
alias rte_jobstats_rte_eal_mp_remote_launch = ExternalFunction['rte_eal_mp_remote_launch', rte_eal_mp_remote_launch]
alias rte_jobstats_rte_eal_get_lcore_state = ExternalFunction['rte_eal_get_lcore_state', rte_eal_get_lcore_state]
alias rte_jobstats_rte_eal_wait_lcore = ExternalFunction['rte_eal_wait_lcore', rte_eal_wait_lcore]
alias rte_jobstats_rte_eal_mp_wait_lcore = ExternalFunction['rte_eal_mp_wait_lcore', rte_eal_mp_wait_lcore]
alias rte_jobstats_rte_thread_create = ExternalFunction['rte_thread_create', rte_thread_create]
alias rte_jobstats_rte_thread_create_control = ExternalFunction['rte_thread_create_control', rte_thread_create_control]
alias rte_jobstats_rte_thread_create_internal_control = ExternalFunction['rte_thread_create_internal_control', rte_thread_create_internal_control]
alias rte_jobstats_rte_thread_join = ExternalFunction['rte_thread_join', rte_thread_join]
alias rte_jobstats_rte_thread_detach = ExternalFunction['rte_thread_detach', rte_thread_detach]
alias rte_jobstats_rte_thread_self = ExternalFunction['rte_thread_self', rte_thread_self]
alias rte_jobstats_rte_thread_set_name = ExternalFunction['rte_thread_set_name', rte_thread_set_name]
alias rte_jobstats_rte_thread_set_prefixed_name = ExternalFunction['rte_thread_set_prefixed_name', rte_thread_set_prefixed_name]
alias rte_jobstats_rte_thread_equal = ExternalFunction['rte_thread_equal', rte_thread_equal]
alias rte_jobstats_rte_thread_attr_init = ExternalFunction['rte_thread_attr_init', rte_thread_attr_init]
alias rte_jobstats_rte_thread_attr_set_priority = ExternalFunction['rte_thread_attr_set_priority', rte_thread_attr_set_priority]
alias rte_jobstats_rte_thread_get_priority = ExternalFunction['rte_thread_get_priority', rte_thread_get_priority]
alias rte_jobstats_rte_thread_set_priority = ExternalFunction['rte_thread_set_priority', rte_thread_set_priority]
alias rte_jobstats_rte_thread_key_create = ExternalFunction['rte_thread_key_create', rte_thread_key_create]
alias rte_jobstats_rte_thread_key_delete = ExternalFunction['rte_thread_key_delete', rte_thread_key_delete]
alias rte_jobstats_rte_thread_value_set = ExternalFunction['rte_thread_value_set', rte_thread_value_set]
alias rte_jobstats_rte_thread_value_get = ExternalFunction['rte_thread_value_get', rte_thread_value_get]
alias rte_jobstats_rte_eal_lcore_role = ExternalFunction['rte_eal_lcore_role', rte_eal_lcore_role]
alias rte_jobstats_rte_lcore_has_role = ExternalFunction['rte_lcore_has_role', rte_lcore_has_role]
alias rte_jobstats_rte_lcore_id = ExternalFunction['rte_lcore_id', rte_lcore_id]
alias rte_jobstats_rte_get_main_lcore = ExternalFunction['rte_get_main_lcore', rte_get_main_lcore]
alias rte_jobstats_rte_lcore_count = ExternalFunction['rte_lcore_count', rte_lcore_count]
alias rte_jobstats_rte_lcore_index = ExternalFunction['rte_lcore_index', rte_lcore_index]
alias rte_jobstats_rte_socket_id = ExternalFunction['rte_socket_id', rte_socket_id]
alias rte_jobstats_rte_socket_count = ExternalFunction['rte_socket_count', rte_socket_count]
alias rte_jobstats_rte_socket_id_by_idx = ExternalFunction['rte_socket_id_by_idx', rte_socket_id_by_idx]
alias rte_jobstats_rte_lcore_to_socket_id = ExternalFunction['rte_lcore_to_socket_id', rte_lcore_to_socket_id]
alias rte_jobstats_rte_lcore_to_cpu_id = ExternalFunction['rte_lcore_to_cpu_id', rte_lcore_to_cpu_id]
alias rte_jobstats_rte_lcore_is_enabled = ExternalFunction['rte_lcore_is_enabled', rte_lcore_is_enabled]
alias rte_jobstats_rte_get_next_lcore = ExternalFunction['rte_get_next_lcore', rte_get_next_lcore]
alias rte_jobstats_rte_lcore_callback_register = ExternalFunction['rte_lcore_callback_register', rte_lcore_callback_register]
alias rte_jobstats_rte_lcore_callback_unregister = ExternalFunction['rte_lcore_callback_unregister', rte_lcore_callback_unregister]
alias rte_jobstats_rte_lcore_iterate = ExternalFunction['rte_lcore_iterate', rte_lcore_iterate]
alias rte_jobstats_rte_lcore_register_usage_cb = ExternalFunction['rte_lcore_register_usage_cb', rte_lcore_register_usage_cb]
alias rte_jobstats_rte_lcore_dump = ExternalFunction['rte_lcore_dump', rte_lcore_dump]
alias rte_jobstats_rte_thread_register = ExternalFunction['rte_thread_register', rte_thread_register]
alias rte_jobstats_rte_thread_unregister = ExternalFunction['rte_thread_unregister', rte_thread_unregister]
alias rte_jobstats_rte_spinlock_init = ExternalFunction['rte_spinlock_init', rte_spinlock_init]
alias rte_jobstats_rte_spinlock_lock = ExternalFunction['rte_spinlock_lock', rte_spinlock_lock]
alias rte_jobstats_rte_spinlock_unlock = ExternalFunction['rte_spinlock_unlock', rte_spinlock_unlock]
alias rte_jobstats_rte_spinlock_trylock = ExternalFunction['rte_spinlock_trylock', rte_spinlock_trylock]
alias rte_jobstats_rte_spinlock_is_locked = ExternalFunction['rte_spinlock_is_locked', rte_spinlock_is_locked]
alias rte_jobstats_rte_tm_supported = ExternalFunction['rte_tm_supported', rte_tm_supported]
alias rte_jobstats_rte_spinlock_lock_tm = ExternalFunction['rte_spinlock_lock_tm', rte_spinlock_lock_tm]
alias rte_jobstats_rte_spinlock_unlock_tm = ExternalFunction['rte_spinlock_unlock_tm', rte_spinlock_unlock_tm]
alias rte_jobstats_rte_spinlock_trylock_tm = ExternalFunction['rte_spinlock_trylock_tm', rte_spinlock_trylock_tm]
alias rte_jobstats_rte_spinlock_recursive_init = ExternalFunction['rte_spinlock_recursive_init', rte_spinlock_recursive_init]
alias rte_jobstats_rte_spinlock_recursive_lock = ExternalFunction['rte_spinlock_recursive_lock', rte_spinlock_recursive_lock]
alias rte_jobstats_rte_spinlock_recursive_unlock = ExternalFunction['rte_spinlock_recursive_unlock', rte_spinlock_recursive_unlock]
alias rte_jobstats_rte_spinlock_recursive_trylock = ExternalFunction['rte_spinlock_recursive_trylock', rte_spinlock_recursive_trylock]
alias rte_jobstats_rte_spinlock_recursive_lock_tm = ExternalFunction['rte_spinlock_recursive_lock_tm', rte_spinlock_recursive_lock_tm]
alias rte_jobstats_rte_spinlock_recursive_unlock_tm = ExternalFunction['rte_spinlock_recursive_unlock_tm', rte_spinlock_recursive_unlock_tm]
alias rte_jobstats_rte_spinlock_recursive_trylock_tm = ExternalFunction['rte_spinlock_recursive_trylock_tm', rte_spinlock_recursive_trylock_tm]
alias rte_jobstats_rte_mcfg_mem_get_lock = ExternalFunction['rte_mcfg_mem_get_lock', rte_mcfg_mem_get_lock]
alias rte_jobstats_rte_mcfg_tailq_get_lock = ExternalFunction['rte_mcfg_tailq_get_lock', rte_mcfg_tailq_get_lock]
alias rte_jobstats_rte_mcfg_mempool_get_lock = ExternalFunction['rte_mcfg_mempool_get_lock', rte_mcfg_mempool_get_lock]
alias rte_jobstats_rte_mcfg_timer_get_lock = ExternalFunction['rte_mcfg_timer_get_lock', rte_mcfg_timer_get_lock]
alias rte_jobstats_rte_mcfg_ethdev_get_lock = ExternalFunction['rte_mcfg_ethdev_get_lock', rte_mcfg_ethdev_get_lock]
alias rte_jobstats_rte_mcfg_mem_read_lock = ExternalFunction['rte_mcfg_mem_read_lock', rte_mcfg_mem_read_lock]
alias rte_jobstats_rte_mcfg_mem_read_unlock = ExternalFunction['rte_mcfg_mem_read_unlock', rte_mcfg_mem_read_unlock]
alias rte_jobstats_rte_mcfg_mem_write_lock = ExternalFunction['rte_mcfg_mem_write_lock', rte_mcfg_mem_write_lock]
alias rte_jobstats_rte_mcfg_mem_write_unlock = ExternalFunction['rte_mcfg_mem_write_unlock', rte_mcfg_mem_write_unlock]
alias rte_jobstats_rte_mcfg_tailq_read_lock = ExternalFunction['rte_mcfg_tailq_read_lock', rte_mcfg_tailq_read_lock]
alias rte_jobstats_rte_mcfg_tailq_read_unlock = ExternalFunction['rte_mcfg_tailq_read_unlock', rte_mcfg_tailq_read_unlock]
alias rte_jobstats_rte_mcfg_tailq_write_lock = ExternalFunction['rte_mcfg_tailq_write_lock', rte_mcfg_tailq_write_lock]
alias rte_jobstats_rte_mcfg_tailq_write_unlock = ExternalFunction['rte_mcfg_tailq_write_unlock', rte_mcfg_tailq_write_unlock]
alias rte_jobstats_rte_mcfg_mempool_read_lock = ExternalFunction['rte_mcfg_mempool_read_lock', rte_mcfg_mempool_read_lock]
alias rte_jobstats_rte_mcfg_mempool_read_unlock = ExternalFunction['rte_mcfg_mempool_read_unlock', rte_mcfg_mempool_read_unlock]
alias rte_jobstats_rte_mcfg_mempool_write_lock = ExternalFunction['rte_mcfg_mempool_write_lock', rte_mcfg_mempool_write_lock]
alias rte_jobstats_rte_mcfg_mempool_write_unlock = ExternalFunction['rte_mcfg_mempool_write_unlock', rte_mcfg_mempool_write_unlock]
alias rte_jobstats_rte_mcfg_timer_lock = ExternalFunction['rte_mcfg_timer_lock', rte_mcfg_timer_lock]
alias rte_jobstats_rte_mcfg_timer_unlock = ExternalFunction['rte_mcfg_timer_unlock', rte_mcfg_timer_unlock]
alias rte_jobstats_rte_mcfg_get_single_file_segments = ExternalFunction['rte_mcfg_get_single_file_segments', rte_mcfg_get_single_file_segments]
alias rte_jobstats_rte_fbarray_init = ExternalFunction['rte_fbarray_init', rte_fbarray_init]
alias rte_jobstats_rte_fbarray_attach = ExternalFunction['rte_fbarray_attach', rte_fbarray_attach]
alias rte_jobstats_rte_fbarray_destroy = ExternalFunction['rte_fbarray_destroy', rte_fbarray_destroy]
alias rte_jobstats_rte_fbarray_detach = ExternalFunction['rte_fbarray_detach', rte_fbarray_detach]
alias rte_jobstats_rte_fbarray_get = ExternalFunction['rte_fbarray_get', rte_fbarray_get]
alias rte_jobstats_rte_fbarray_find_idx = ExternalFunction['rte_fbarray_find_idx', rte_fbarray_find_idx]
alias rte_jobstats_rte_fbarray_set_used = ExternalFunction['rte_fbarray_set_used', rte_fbarray_set_used]
alias rte_jobstats_rte_fbarray_set_free = ExternalFunction['rte_fbarray_set_free', rte_fbarray_set_free]
alias rte_jobstats_rte_fbarray_is_used = ExternalFunction['rte_fbarray_is_used', rte_fbarray_is_used]
alias rte_jobstats_rte_fbarray_find_next_free = ExternalFunction['rte_fbarray_find_next_free', rte_fbarray_find_next_free]
alias rte_jobstats_rte_fbarray_find_next_used = ExternalFunction['rte_fbarray_find_next_used', rte_fbarray_find_next_used]
alias rte_jobstats_rte_fbarray_find_next_n_free = ExternalFunction['rte_fbarray_find_next_n_free', rte_fbarray_find_next_n_free]
alias rte_jobstats_rte_fbarray_find_next_n_used = ExternalFunction['rte_fbarray_find_next_n_used', rte_fbarray_find_next_n_used]
alias rte_jobstats_rte_fbarray_find_contig_free = ExternalFunction['rte_fbarray_find_contig_free', rte_fbarray_find_contig_free]
alias rte_jobstats_rte_fbarray_find_contig_used = ExternalFunction['rte_fbarray_find_contig_used', rte_fbarray_find_contig_used]
alias rte_jobstats_rte_fbarray_find_prev_free = ExternalFunction['rte_fbarray_find_prev_free', rte_fbarray_find_prev_free]
alias rte_jobstats_rte_fbarray_find_prev_used = ExternalFunction['rte_fbarray_find_prev_used', rte_fbarray_find_prev_used]
alias rte_jobstats_rte_fbarray_find_prev_n_free = ExternalFunction['rte_fbarray_find_prev_n_free', rte_fbarray_find_prev_n_free]
alias rte_jobstats_rte_fbarray_find_prev_n_used = ExternalFunction['rte_fbarray_find_prev_n_used', rte_fbarray_find_prev_n_used]
alias rte_jobstats_rte_fbarray_find_rev_contig_free = ExternalFunction['rte_fbarray_find_rev_contig_free', rte_fbarray_find_rev_contig_free]
alias rte_jobstats_rte_fbarray_find_rev_contig_used = ExternalFunction['rte_fbarray_find_rev_contig_used', rte_fbarray_find_rev_contig_used]
alias rte_jobstats_rte_fbarray_find_biggest_free = ExternalFunction['rte_fbarray_find_biggest_free', rte_fbarray_find_biggest_free]
alias rte_jobstats_rte_fbarray_find_biggest_used = ExternalFunction['rte_fbarray_find_biggest_used', rte_fbarray_find_biggest_used]
alias rte_jobstats_rte_fbarray_find_rev_biggest_free = ExternalFunction['rte_fbarray_find_rev_biggest_free', rte_fbarray_find_rev_biggest_free]
alias rte_jobstats_rte_fbarray_find_rev_biggest_used = ExternalFunction['rte_fbarray_find_rev_biggest_used', rte_fbarray_find_rev_biggest_used]
alias rte_jobstats_rte_fbarray_dump_metadata = ExternalFunction['rte_fbarray_dump_metadata', rte_fbarray_dump_metadata]
alias rte_jobstats_rte_mem_lock_page = ExternalFunction['rte_mem_lock_page', rte_mem_lock_page]
alias rte_jobstats_rte_mem_virt2phy = ExternalFunction['rte_mem_virt2phy', rte_mem_virt2phy]
alias rte_jobstats_rte_mem_virt2iova = ExternalFunction['rte_mem_virt2iova', rte_mem_virt2iova]
alias rte_jobstats_rte_mem_iova2virt = ExternalFunction['rte_mem_iova2virt', rte_mem_iova2virt]
alias rte_jobstats_rte_mem_virt2memseg = ExternalFunction['rte_mem_virt2memseg', rte_mem_virt2memseg]
alias rte_jobstats_rte_mem_virt2memseg_list = ExternalFunction['rte_mem_virt2memseg_list', rte_mem_virt2memseg_list]
alias rte_jobstats_rte_memseg_walk = ExternalFunction['rte_memseg_walk', rte_memseg_walk]
alias rte_jobstats_rte_memseg_contig_walk = ExternalFunction['rte_memseg_contig_walk', rte_memseg_contig_walk]
alias rte_jobstats_rte_memseg_list_walk = ExternalFunction['rte_memseg_list_walk', rte_memseg_list_walk]
alias rte_jobstats_rte_memseg_walk_thread_unsafe = ExternalFunction['rte_memseg_walk_thread_unsafe', rte_memseg_walk_thread_unsafe]
alias rte_jobstats_rte_memseg_contig_walk_thread_unsafe = ExternalFunction['rte_memseg_contig_walk_thread_unsafe', rte_memseg_contig_walk_thread_unsafe]
alias rte_jobstats_rte_memseg_list_walk_thread_unsafe = ExternalFunction['rte_memseg_list_walk_thread_unsafe', rte_memseg_list_walk_thread_unsafe]
alias rte_jobstats_rte_memseg_get_fd = ExternalFunction['rte_memseg_get_fd', rte_memseg_get_fd]
alias rte_jobstats_rte_memseg_get_fd_thread_unsafe = ExternalFunction['rte_memseg_get_fd_thread_unsafe', rte_memseg_get_fd_thread_unsafe]
alias rte_jobstats_rte_memseg_get_fd_offset = ExternalFunction['rte_memseg_get_fd_offset', rte_memseg_get_fd_offset]
alias rte_jobstats_rte_memseg_get_fd_offset_thread_unsafe = ExternalFunction['rte_memseg_get_fd_offset_thread_unsafe', rte_memseg_get_fd_offset_thread_unsafe]
alias rte_jobstats_rte_extmem_register = ExternalFunction['rte_extmem_register', rte_extmem_register]
alias rte_jobstats_rte_extmem_unregister = ExternalFunction['rte_extmem_unregister', rte_extmem_unregister]
alias rte_jobstats_rte_extmem_attach = ExternalFunction['rte_extmem_attach', rte_extmem_attach]
alias rte_jobstats_rte_extmem_detach = ExternalFunction['rte_extmem_detach', rte_extmem_detach]
alias rte_jobstats_rte_dump_physmem_layout = ExternalFunction['rte_dump_physmem_layout', rte_dump_physmem_layout]
alias rte_jobstats_rte_eal_get_physmem_size = ExternalFunction['rte_eal_get_physmem_size', rte_eal_get_physmem_size]
alias rte_jobstats_rte_memory_get_nchannel = ExternalFunction['rte_memory_get_nchannel', rte_memory_get_nchannel]
alias rte_jobstats_rte_memory_get_nrank = ExternalFunction['rte_memory_get_nrank', rte_memory_get_nrank]
alias rte_jobstats_rte_mem_check_dma_mask = ExternalFunction['rte_mem_check_dma_mask', rte_mem_check_dma_mask]
alias rte_jobstats_rte_mem_check_dma_mask_thread_unsafe = ExternalFunction['rte_mem_check_dma_mask_thread_unsafe', rte_mem_check_dma_mask_thread_unsafe]
alias rte_jobstats_rte_mem_set_dma_mask = ExternalFunction['rte_mem_set_dma_mask', rte_mem_set_dma_mask]
alias rte_jobstats_rte_eal_using_phys_addrs = ExternalFunction['rte_eal_using_phys_addrs', rte_eal_using_phys_addrs]
alias rte_jobstats_rte_mem_event_callback_register = ExternalFunction['rte_mem_event_callback_register', rte_mem_event_callback_register]
alias rte_jobstats_rte_mem_event_callback_unregister = ExternalFunction['rte_mem_event_callback_unregister', rte_mem_event_callback_unregister]
alias rte_jobstats_rte_mem_alloc_validator_register = ExternalFunction['rte_mem_alloc_validator_register', rte_mem_alloc_validator_register]
alias rte_jobstats_rte_mem_alloc_validator_unregister = ExternalFunction['rte_mem_alloc_validator_unregister', rte_mem_alloc_validator_unregister]
alias rte_jobstats_rte_memzero_explicit = ExternalFunction['rte_memzero_explicit', rte_memzero_explicit]
alias rte_jobstats_rte_jobstats_context_init = ExternalFunction['rte_jobstats_context_init', rte_jobstats_context_init]
alias rte_jobstats_rte_jobstats_context_start = ExternalFunction['rte_jobstats_context_start', rte_jobstats_context_start]
alias rte_jobstats_rte_jobstats_context_finish = ExternalFunction['rte_jobstats_context_finish', rte_jobstats_context_finish]
alias rte_jobstats_rte_jobstats_context_reset = ExternalFunction['rte_jobstats_context_reset', rte_jobstats_context_reset]
alias rte_jobstats_rte_jobstats_init = ExternalFunction['rte_jobstats_init', rte_jobstats_init]
alias rte_jobstats_rte_jobstats_set_target = ExternalFunction['rte_jobstats_set_target', rte_jobstats_set_target]
alias rte_jobstats_rte_jobstats_start = ExternalFunction['rte_jobstats_start', rte_jobstats_start]
alias rte_jobstats_rte_jobstats_abort = ExternalFunction['rte_jobstats_abort', rte_jobstats_abort]
alias rte_jobstats_rte_jobstats_finish = ExternalFunction['rte_jobstats_finish', rte_jobstats_finish]
alias rte_jobstats_rte_jobstats_set_period = ExternalFunction['rte_jobstats_set_period', rte_jobstats_set_period]
alias rte_jobstats_rte_jobstats_set_min = ExternalFunction['rte_jobstats_set_min', rte_jobstats_set_min]
alias rte_jobstats_rte_jobstats_set_max = ExternalFunction['rte_jobstats_set_max', rte_jobstats_set_max]
alias rte_jobstats_rte_jobstats_set_update_period_function = ExternalFunction['rte_jobstats_set_update_period_function', rte_jobstats_set_update_period_function]
alias rte_jobstats_rte_jobstats_reset = ExternalFunction['rte_jobstats_reset', rte_jobstats_reset]

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
struct rte_jobstats(Copyable, Movable):
    var lib: DLHandle
    
    var remove: rte_jobstats_remove.type
    var rename: rte_jobstats_rename.type
    var renameat: rte_jobstats_renameat.type
    var fclose: rte_jobstats_fclose.type
    var tmpfile: rte_jobstats_tmpfile.type
    var tmpnam: rte_jobstats_tmpnam.type
    var tmpnam_r: rte_jobstats_tmpnam_r.type
    var tempnam: rte_jobstats_tempnam.type
    var fflush: rte_jobstats_fflush.type
    var fflush_unlocked: rte_jobstats_fflush_unlocked.type
    var fopen: rte_jobstats_fopen.type
    var freopen: rte_jobstats_freopen.type
    var fdopen: rte_jobstats_fdopen.type
    var fmemopen: rte_jobstats_fmemopen.type
    var open_memstream: rte_jobstats_open_memstream.type
    var setbuf: rte_jobstats_setbuf.type
    var setvbuf: rte_jobstats_setvbuf.type
    var setbuffer: rte_jobstats_setbuffer.type
    var setlinebuf: rte_jobstats_setlinebuf.type
    var fprintf: rte_jobstats_fprintf.type
    var printf: rte_jobstats_printf.type
    var sprintf: rte_jobstats_sprintf.type
    var vfprintf: rte_jobstats_vfprintf.type
    var vprintf: rte_jobstats_vprintf.type
    var vsprintf: rte_jobstats_vsprintf.type
    var snprintf: rte_jobstats_snprintf.type
    var vsnprintf: rte_jobstats_vsnprintf.type
    var vdprintf: rte_jobstats_vdprintf.type
    var dprintf: rte_jobstats_dprintf.type
    var fscanf: rte_jobstats_fscanf.type
    var scanf: rte_jobstats_scanf.type
    var sscanf: rte_jobstats_sscanf.type
    var vfscanf: rte_jobstats_vfscanf.type
    var vscanf: rte_jobstats_vscanf.type
    var vsscanf: rte_jobstats_vsscanf.type
    var fgetc: rte_jobstats_fgetc.type
    var getc: rte_jobstats_getc.type
    var getchar: rte_jobstats_getchar.type
    var getc_unlocked: rte_jobstats_getc_unlocked.type
    var getchar_unlocked: rte_jobstats_getchar_unlocked.type
    var fgetc_unlocked: rte_jobstats_fgetc_unlocked.type
    var fputc: rte_jobstats_fputc.type
    var putc: rte_jobstats_putc.type
    var putchar: rte_jobstats_putchar.type
    var fputc_unlocked: rte_jobstats_fputc_unlocked.type
    var putc_unlocked: rte_jobstats_putc_unlocked.type
    var putchar_unlocked: rte_jobstats_putchar_unlocked.type
    var getw: rte_jobstats_getw.type
    var putw: rte_jobstats_putw.type
    var fgets: rte_jobstats_fgets.type
    var getdelim: rte_jobstats_getdelim.type
    var getline: rte_jobstats_getline.type
    var fputs: rte_jobstats_fputs.type
    var puts: rte_jobstats_puts.type
    var ungetc: rte_jobstats_ungetc.type
    var fread: rte_jobstats_fread.type
    var fwrite: rte_jobstats_fwrite.type
    var fread_unlocked: rte_jobstats_fread_unlocked.type
    var fwrite_unlocked: rte_jobstats_fwrite_unlocked.type
    var fseek: rte_jobstats_fseek.type
    var ftell: rte_jobstats_ftell.type
    var rewind: rte_jobstats_rewind.type
    var fseeko: rte_jobstats_fseeko.type
    var ftello: rte_jobstats_ftello.type
    var fgetpos: rte_jobstats_fgetpos.type
    var fsetpos: rte_jobstats_fsetpos.type
    var clearerr: rte_jobstats_clearerr.type
    var feof: rte_jobstats_feof.type
    var ferror: rte_jobstats_ferror.type
    var clearerr_unlocked: rte_jobstats_clearerr_unlocked.type
    var feof_unlocked: rte_jobstats_feof_unlocked.type
    var ferror_unlocked: rte_jobstats_ferror_unlocked.type
    var perror: rte_jobstats_perror.type
    var fileno: rte_jobstats_fileno.type
    var fileno_unlocked: rte_jobstats_fileno_unlocked.type
    var pclose: rte_jobstats_pclose.type
    var popen: rte_jobstats_popen.type
    var ctermid: rte_jobstats_ctermid.type
    var flockfile: rte_jobstats_flockfile.type
    var ftrylockfile: rte_jobstats_ftrylockfile.type
    var funlockfile: rte_jobstats_funlockfile.type
    var alloca: rte_jobstats_alloca.type
    var sched_setparam: rte_jobstats_sched_setparam.type
    var sched_getparam: rte_jobstats_sched_getparam.type
    var sched_setscheduler: rte_jobstats_sched_setscheduler.type
    var sched_getscheduler: rte_jobstats_sched_getscheduler.type
    var sched_yield: rte_jobstats_sched_yield.type
    var sched_get_priority_max: rte_jobstats_sched_get_priority_max.type
    var sched_get_priority_min: rte_jobstats_sched_get_priority_min.type
    var sched_rr_get_interval: rte_jobstats_sched_rr_get_interval.type
    var rte_is_aligned: rte_jobstats_rte_is_aligned.type
    var rte_str_to_size: rte_jobstats_rte_str_to_size.type
    var rte_size_to_str: rte_jobstats_rte_size_to_str.type
    var rte_exit: rte_jobstats_rte_exit.type
    var rte_openlog_stream: rte_jobstats_rte_openlog_stream.type
    var rte_log_get_stream: rte_jobstats_rte_log_get_stream.type
    var rte_log_set_global_level: rte_jobstats_rte_log_set_global_level.type
    var rte_log_get_global_level: rte_jobstats_rte_log_get_global_level.type
    var rte_log_get_level: rte_jobstats_rte_log_get_level.type
    var rte_log_can_log: rte_jobstats_rte_log_can_log.type
    var rte_log_set_level_pattern: rte_jobstats_rte_log_set_level_pattern.type
    var rte_log_set_level_regexp: rte_jobstats_rte_log_set_level_regexp.type
    var rte_log_set_level: rte_jobstats_rte_log_set_level.type
    var rte_log_cur_msg_loglevel: rte_jobstats_rte_log_cur_msg_loglevel.type
    var rte_log_cur_msg_logtype: rte_jobstats_rte_log_cur_msg_logtype.type
    var rte_log_register: rte_jobstats_rte_log_register.type
    var rte_log_register_type_and_pick_level: rte_jobstats_rte_log_register_type_and_pick_level.type
    var rte_log_list_types: rte_jobstats_rte_log_list_types.type
    var rte_log_dump: rte_jobstats_rte_log_dump.type
    var rte_log: rte_jobstats_rte_log.type
    var rte_vlog: rte_jobstats_rte_vlog.type
    var rte_dump_stack: rte_jobstats_rte_dump_stack.type
    var rte_bit_relaxed_get32: rte_jobstats_rte_bit_relaxed_get32.type
    var rte_bit_relaxed_set32: rte_jobstats_rte_bit_relaxed_set32.type
    var rte_bit_relaxed_clear32: rte_jobstats_rte_bit_relaxed_clear32.type
    var rte_bit_relaxed_test_and_set32: rte_jobstats_rte_bit_relaxed_test_and_set32.type
    var rte_bit_relaxed_test_and_clear32: rte_jobstats_rte_bit_relaxed_test_and_clear32.type
    var rte_bit_relaxed_get64: rte_jobstats_rte_bit_relaxed_get64.type
    var rte_bit_relaxed_set64: rte_jobstats_rte_bit_relaxed_set64.type
    var rte_bit_relaxed_clear64: rte_jobstats_rte_bit_relaxed_clear64.type
    var rte_bit_relaxed_test_and_set64: rte_jobstats_rte_bit_relaxed_test_and_set64.type
    var rte_bit_relaxed_test_and_clear64: rte_jobstats_rte_bit_relaxed_test_and_clear64.type
    var rte_clz32: rte_jobstats_rte_clz32.type
    var rte_clz64: rte_jobstats_rte_clz64.type
    var rte_ctz32: rte_jobstats_rte_ctz32.type
    var rte_ctz64: rte_jobstats_rte_ctz64.type
    var rte_popcount32: rte_jobstats_rte_popcount32.type
    var rte_popcount64: rte_jobstats_rte_popcount64.type
    var rte_ffs32: rte_jobstats_rte_ffs32.type
    var rte_ffs64: rte_jobstats_rte_ffs64.type
    var rte_combine32ms1b: rte_jobstats_rte_combine32ms1b.type
    var rte_combine64ms1b: rte_jobstats_rte_combine64ms1b.type
    var rte_bsf32: rte_jobstats_rte_bsf32.type
    var rte_bsf32_safe: rte_jobstats_rte_bsf32_safe.type
    var rte_bsf64: rte_jobstats_rte_bsf64.type
    var rte_bsf64_safe: rte_jobstats_rte_bsf64_safe.type
    var rte_fls_u32: rte_jobstats_rte_fls_u32.type
    var rte_fls_u64: rte_jobstats_rte_fls_u64.type
    var rte_is_power_of_2: rte_jobstats_rte_is_power_of_2.type
    var rte_align32pow2: rte_jobstats_rte_align32pow2.type
    var rte_align32prevpow2: rte_jobstats_rte_align32prevpow2.type
    var rte_align64pow2: rte_jobstats_rte_align64pow2.type
    var rte_align64prevpow2: rte_jobstats_rte_align64prevpow2.type
    var rte_log2_u32: rte_jobstats_rte_log2_u32.type
    var rte_log2_u64: rte_jobstats_rte_log2_u64.type
    var rte_atomic_thread_fence: rte_jobstats_rte_atomic_thread_fence.type
    var rte_atomic16_cmpset: rte_jobstats_rte_atomic16_cmpset.type
    var rte_atomic16_exchange: rte_jobstats_rte_atomic16_exchange.type
    var rte_atomic16_init: rte_jobstats_rte_atomic16_init.type
    var rte_atomic16_read: rte_jobstats_rte_atomic16_read.type
    var rte_atomic16_set: rte_jobstats_rte_atomic16_set.type
    var rte_atomic16_add: rte_jobstats_rte_atomic16_add.type
    var rte_atomic16_sub: rte_jobstats_rte_atomic16_sub.type
    var rte_atomic16_inc: rte_jobstats_rte_atomic16_inc.type
    var rte_atomic16_dec: rte_jobstats_rte_atomic16_dec.type
    var rte_atomic16_add_return: rte_jobstats_rte_atomic16_add_return.type
    var rte_atomic16_sub_return: rte_jobstats_rte_atomic16_sub_return.type
    var rte_atomic16_inc_and_test: rte_jobstats_rte_atomic16_inc_and_test.type
    var rte_atomic16_dec_and_test: rte_jobstats_rte_atomic16_dec_and_test.type
    var rte_atomic16_test_and_set: rte_jobstats_rte_atomic16_test_and_set.type
    var rte_atomic16_clear: rte_jobstats_rte_atomic16_clear.type
    var rte_atomic32_cmpset: rte_jobstats_rte_atomic32_cmpset.type
    var rte_atomic32_exchange: rte_jobstats_rte_atomic32_exchange.type
    var rte_atomic32_init: rte_jobstats_rte_atomic32_init.type
    var rte_atomic32_read: rte_jobstats_rte_atomic32_read.type
    var rte_atomic32_set: rte_jobstats_rte_atomic32_set.type
    var rte_atomic32_add: rte_jobstats_rte_atomic32_add.type
    var rte_atomic32_sub: rte_jobstats_rte_atomic32_sub.type
    var rte_atomic32_inc: rte_jobstats_rte_atomic32_inc.type
    var rte_atomic32_dec: rte_jobstats_rte_atomic32_dec.type
    var rte_atomic32_add_return: rte_jobstats_rte_atomic32_add_return.type
    var rte_atomic32_sub_return: rte_jobstats_rte_atomic32_sub_return.type
    var rte_atomic32_inc_and_test: rte_jobstats_rte_atomic32_inc_and_test.type
    var rte_atomic32_dec_and_test: rte_jobstats_rte_atomic32_dec_and_test.type
    var rte_atomic32_test_and_set: rte_jobstats_rte_atomic32_test_and_set.type
    var rte_atomic32_clear: rte_jobstats_rte_atomic32_clear.type
    var rte_atomic64_cmpset: rte_jobstats_rte_atomic64_cmpset.type
    var rte_atomic64_exchange: rte_jobstats_rte_atomic64_exchange.type
    var rte_atomic64_init: rte_jobstats_rte_atomic64_init.type
    var rte_atomic64_read: rte_jobstats_rte_atomic64_read.type
    var rte_atomic64_set: rte_jobstats_rte_atomic64_set.type
    var rte_atomic64_add: rte_jobstats_rte_atomic64_add.type
    var rte_atomic64_sub: rte_jobstats_rte_atomic64_sub.type
    var rte_atomic64_inc: rte_jobstats_rte_atomic64_inc.type
    var rte_atomic64_dec: rte_jobstats_rte_atomic64_dec.type
    var rte_atomic64_add_return: rte_jobstats_rte_atomic64_add_return.type
    var rte_atomic64_sub_return: rte_jobstats_rte_atomic64_sub_return.type
    var rte_atomic64_inc_and_test: rte_jobstats_rte_atomic64_inc_and_test.type
    var rte_atomic64_dec_and_test: rte_jobstats_rte_atomic64_dec_and_test.type
    var rte_atomic64_test_and_set: rte_jobstats_rte_atomic64_test_and_set.type
    var rte_atomic64_clear: rte_jobstats_rte_atomic64_clear.type
    var rte_atomic128_cmp_exchange: rte_jobstats_rte_atomic128_cmp_exchange.type
    var rte_pause: rte_jobstats_rte_pause.type
    var rte_wait_until_equal_16: rte_jobstats_rte_wait_until_equal_16.type
    var rte_wait_until_equal_32: rte_jobstats_rte_wait_until_equal_32.type
    var rte_wait_until_equal_64: rte_jobstats_rte_wait_until_equal_64.type
    var rte_rwlock_init: rte_jobstats_rte_rwlock_init.type
    var rte_rwlock_read_lock: rte_jobstats_rte_rwlock_read_lock.type
    var rte_rwlock_read_trylock: rte_jobstats_rte_rwlock_read_trylock.type
    var rte_rwlock_read_unlock: rte_jobstats_rte_rwlock_read_unlock.type
    var rte_rwlock_write_trylock: rte_jobstats_rte_rwlock_write_trylock.type
    var rte_rwlock_write_lock: rte_jobstats_rte_rwlock_write_lock.type
    var rte_rwlock_write_unlock: rte_jobstats_rte_rwlock_write_unlock.type
    var rte_rwlock_write_is_locked: rte_jobstats_rte_rwlock_write_is_locked.type
    var rte_rwlock_read_lock_tm: rte_jobstats_rte_rwlock_read_lock_tm.type
    var rte_rwlock_read_unlock_tm: rte_jobstats_rte_rwlock_read_unlock_tm.type
    var rte_rwlock_write_lock_tm: rte_jobstats_rte_rwlock_write_lock_tm.type
    var rte_rwlock_write_unlock_tm: rte_jobstats_rte_rwlock_write_unlock_tm.type
    var clock: rte_jobstats_clock.type
    var time: rte_jobstats_time.type
    var difftime: rte_jobstats_difftime.type
    var mktime: rte_jobstats_mktime.type
    var strftime: rte_jobstats_strftime.type
    var strftime_l: rte_jobstats_strftime_l.type
    var gmtime: rte_jobstats_gmtime.type
    var localtime: rte_jobstats_localtime.type
    var gmtime_r: rte_jobstats_gmtime_r.type
    var localtime_r: rte_jobstats_localtime_r.type
    var asctime: rte_jobstats_asctime.type
    var ctime: rte_jobstats_ctime.type
    var asctime_r: rte_jobstats_asctime_r.type
    var ctime_r: rte_jobstats_ctime_r.type
    var tzset: rte_jobstats_tzset.type
    var timegm: rte_jobstats_timegm.type
    var timelocal: rte_jobstats_timelocal.type
    var dysize: rte_jobstats_dysize.type
    var nanosleep: rte_jobstats_nanosleep.type
    var clock_getres: rte_jobstats_clock_getres.type
    var clock_gettime: rte_jobstats_clock_gettime.type
    var clock_settime: rte_jobstats_clock_settime.type
    var clock_nanosleep: rte_jobstats_clock_nanosleep.type
    var clock_getcpuclockid: rte_jobstats_clock_getcpuclockid.type
    var timer_create: rte_jobstats_timer_create.type
    var timer_delete: rte_jobstats_timer_delete.type
    var timer_settime: rte_jobstats_timer_settime.type
    var timer_gettime: rte_jobstats_timer_gettime.type
    var timer_getoverrun: rte_jobstats_timer_getoverrun.type
    var timespec_get: rte_jobstats_timespec_get.type
    var memcpy: rte_jobstats_memcpy.type
    var memmove: rte_jobstats_memmove.type
    var memccpy: rte_jobstats_memccpy.type
    var memset: rte_jobstats_memset.type
    var memcmp: rte_jobstats_memcmp.type
    var memchr: rte_jobstats_memchr.type
    var strcpy: rte_jobstats_strcpy.type
    var strncpy: rte_jobstats_strncpy.type
    var strcat: rte_jobstats_strcat.type
    var strncat: rte_jobstats_strncat.type
    var strcmp: rte_jobstats_strcmp.type
    var strncmp: rte_jobstats_strncmp.type
    var strcoll: rte_jobstats_strcoll.type
    var strxfrm: rte_jobstats_strxfrm.type
    var strcoll_l: rte_jobstats_strcoll_l.type
    var strxfrm_l: rte_jobstats_strxfrm_l.type
    var strdup: rte_jobstats_strdup.type
    var strndup: rte_jobstats_strndup.type
    var strchr: rte_jobstats_strchr.type
    var strrchr: rte_jobstats_strrchr.type
    var strcspn: rte_jobstats_strcspn.type
    var strspn: rte_jobstats_strspn.type
    var strpbrk: rte_jobstats_strpbrk.type
    var strstr: rte_jobstats_strstr.type
    var strtok: rte_jobstats_strtok.type
    var strtok_r: rte_jobstats_strtok_r.type
    var strlen: rte_jobstats_strlen.type
    var strnlen: rte_jobstats_strnlen.type
    var strerror: rte_jobstats_strerror.type
    var strerror_r: rte_jobstats_strerror_r.type
    var strerror_l: rte_jobstats_strerror_l.type
    var bcmp: rte_jobstats_bcmp.type
    var bcopy: rte_jobstats_bcopy.type
    var bzero: rte_jobstats_bzero.type
    var index: rte_jobstats_index.type
    var rindex: rte_jobstats_rindex.type
    var ffs: rte_jobstats_ffs.type
    var ffsl: rte_jobstats_ffsl.type
    var ffsll: rte_jobstats_ffsll.type
    var strcasecmp: rte_jobstats_strcasecmp.type
    var strncasecmp: rte_jobstats_strncasecmp.type
    var strcasecmp_l: rte_jobstats_strcasecmp_l.type
    var strncasecmp_l: rte_jobstats_strncasecmp_l.type
    var explicit_bzero: rte_jobstats_explicit_bzero.type
    var strsep: rte_jobstats_strsep.type
    var strsignal: rte_jobstats_strsignal.type
    var stpcpy: rte_jobstats_stpcpy.type
    var stpncpy: rte_jobstats_stpncpy.type
    var rte_uuid_is_null: rte_jobstats_rte_uuid_is_null.type
    var rte_uuid_copy: rte_jobstats_rte_uuid_copy.type
    var rte_uuid_compare: rte_jobstats_rte_uuid_compare.type
    var rte_uuid_parse: rte_jobstats_rte_uuid_parse.type
    var rte_uuid_unparse: rte_jobstats_rte_uuid_unparse.type
    var rte_eal_process_type: rte_jobstats_rte_eal_process_type.type
    var rte_eal_iopl_init: rte_jobstats_rte_eal_iopl_init.type
    var rte_eal_init: rte_jobstats_rte_eal_init.type
    var rte_eal_cleanup: rte_jobstats_rte_eal_cleanup.type
    var rte_eal_primary_proc_alive: rte_jobstats_rte_eal_primary_proc_alive.type
    var rte_mp_disable: rte_jobstats_rte_mp_disable.type
    var rte_mp_action_register: rte_jobstats_rte_mp_action_register.type
    var rte_mp_action_unregister: rte_jobstats_rte_mp_action_unregister.type
    var rte_mp_sendmsg: rte_jobstats_rte_mp_sendmsg.type
    var rte_mp_request_sync: rte_jobstats_rte_mp_request_sync.type
    var rte_mp_request_async: rte_jobstats_rte_mp_request_async.type
    var rte_set_application_usage_hook: rte_jobstats_rte_set_application_usage_hook.type
    var rte_eal_has_hugepages: rte_jobstats_rte_eal_has_hugepages.type
    var rte_eal_has_pci: rte_jobstats_rte_eal_has_pci.type
    var rte_eal_create_uio_dev: rte_jobstats_rte_eal_create_uio_dev.type
    var rte_eal_vfio_intr_mode: rte_jobstats_rte_eal_vfio_intr_mode.type
    var rte_eal_vfio_get_vf_token: rte_jobstats_rte_eal_vfio_get_vf_token.type
    var rte_sys_gettid: rte_jobstats_rte_sys_gettid.type
    var rte_gettid: rte_jobstats_rte_gettid.type
    var rte_eal_get_baseaddr: rte_jobstats_rte_eal_get_baseaddr.type
    var rte_eal_iova_mode: rte_jobstats_rte_eal_iova_mode.type
    var rte_eal_mbuf_user_pool_ops: rte_jobstats_rte_eal_mbuf_user_pool_ops.type
    var rte_eal_get_runtime_dir: rte_jobstats_rte_eal_get_runtime_dir.type
    var rte_eal_parse_coremask: rte_jobstats_rte_eal_parse_coremask.type
    var rte_eal_remote_launch: rte_jobstats_rte_eal_remote_launch.type
    var rte_eal_mp_remote_launch: rte_jobstats_rte_eal_mp_remote_launch.type
    var rte_eal_get_lcore_state: rte_jobstats_rte_eal_get_lcore_state.type
    var rte_eal_wait_lcore: rte_jobstats_rte_eal_wait_lcore.type
    var rte_eal_mp_wait_lcore: rte_jobstats_rte_eal_mp_wait_lcore.type
    var rte_thread_create: rte_jobstats_rte_thread_create.type
    var rte_thread_create_control: rte_jobstats_rte_thread_create_control.type
    var rte_thread_create_internal_control: rte_jobstats_rte_thread_create_internal_control.type
    var rte_thread_join: rte_jobstats_rte_thread_join.type
    var rte_thread_detach: rte_jobstats_rte_thread_detach.type
    var rte_thread_self: rte_jobstats_rte_thread_self.type
    var rte_thread_set_name: rte_jobstats_rte_thread_set_name.type
    var rte_thread_set_prefixed_name: rte_jobstats_rte_thread_set_prefixed_name.type
    var rte_thread_equal: rte_jobstats_rte_thread_equal.type
    var rte_thread_attr_init: rte_jobstats_rte_thread_attr_init.type
    var rte_thread_attr_set_priority: rte_jobstats_rte_thread_attr_set_priority.type
    var rte_thread_get_priority: rte_jobstats_rte_thread_get_priority.type
    var rte_thread_set_priority: rte_jobstats_rte_thread_set_priority.type
    var rte_thread_key_create: rte_jobstats_rte_thread_key_create.type
    var rte_thread_key_delete: rte_jobstats_rte_thread_key_delete.type
    var rte_thread_value_set: rte_jobstats_rte_thread_value_set.type
    var rte_thread_value_get: rte_jobstats_rte_thread_value_get.type
    var rte_eal_lcore_role: rte_jobstats_rte_eal_lcore_role.type
    var rte_lcore_has_role: rte_jobstats_rte_lcore_has_role.type
    var rte_lcore_id: rte_jobstats_rte_lcore_id.type
    var rte_get_main_lcore: rte_jobstats_rte_get_main_lcore.type
    var rte_lcore_count: rte_jobstats_rte_lcore_count.type
    var rte_lcore_index: rte_jobstats_rte_lcore_index.type
    var rte_socket_id: rte_jobstats_rte_socket_id.type
    var rte_socket_count: rte_jobstats_rte_socket_count.type
    var rte_socket_id_by_idx: rte_jobstats_rte_socket_id_by_idx.type
    var rte_lcore_to_socket_id: rte_jobstats_rte_lcore_to_socket_id.type
    var rte_lcore_to_cpu_id: rte_jobstats_rte_lcore_to_cpu_id.type
    var rte_lcore_is_enabled: rte_jobstats_rte_lcore_is_enabled.type
    var rte_get_next_lcore: rte_jobstats_rte_get_next_lcore.type
    var rte_lcore_callback_register: rte_jobstats_rte_lcore_callback_register.type
    var rte_lcore_callback_unregister: rte_jobstats_rte_lcore_callback_unregister.type
    var rte_lcore_iterate: rte_jobstats_rte_lcore_iterate.type
    var rte_lcore_register_usage_cb: rte_jobstats_rte_lcore_register_usage_cb.type
    var rte_lcore_dump: rte_jobstats_rte_lcore_dump.type
    var rte_thread_register: rte_jobstats_rte_thread_register.type
    var rte_thread_unregister: rte_jobstats_rte_thread_unregister.type
    var rte_spinlock_init: rte_jobstats_rte_spinlock_init.type
    var rte_spinlock_lock: rte_jobstats_rte_spinlock_lock.type
    var rte_spinlock_unlock: rte_jobstats_rte_spinlock_unlock.type
    var rte_spinlock_trylock: rte_jobstats_rte_spinlock_trylock.type
    var rte_spinlock_is_locked: rte_jobstats_rte_spinlock_is_locked.type
    var rte_tm_supported: rte_jobstats_rte_tm_supported.type
    var rte_spinlock_lock_tm: rte_jobstats_rte_spinlock_lock_tm.type
    var rte_spinlock_unlock_tm: rte_jobstats_rte_spinlock_unlock_tm.type
    var rte_spinlock_trylock_tm: rte_jobstats_rte_spinlock_trylock_tm.type
    var rte_spinlock_recursive_init: rte_jobstats_rte_spinlock_recursive_init.type
    var rte_spinlock_recursive_lock: rte_jobstats_rte_spinlock_recursive_lock.type
    var rte_spinlock_recursive_unlock: rte_jobstats_rte_spinlock_recursive_unlock.type
    var rte_spinlock_recursive_trylock: rte_jobstats_rte_spinlock_recursive_trylock.type
    var rte_spinlock_recursive_lock_tm: rte_jobstats_rte_spinlock_recursive_lock_tm.type
    var rte_spinlock_recursive_unlock_tm: rte_jobstats_rte_spinlock_recursive_unlock_tm.type
    var rte_spinlock_recursive_trylock_tm: rte_jobstats_rte_spinlock_recursive_trylock_tm.type
    var rte_mcfg_mem_get_lock: rte_jobstats_rte_mcfg_mem_get_lock.type
    var rte_mcfg_tailq_get_lock: rte_jobstats_rte_mcfg_tailq_get_lock.type
    var rte_mcfg_mempool_get_lock: rte_jobstats_rte_mcfg_mempool_get_lock.type
    var rte_mcfg_timer_get_lock: rte_jobstats_rte_mcfg_timer_get_lock.type
    var rte_mcfg_ethdev_get_lock: rte_jobstats_rte_mcfg_ethdev_get_lock.type
    var rte_mcfg_mem_read_lock: rte_jobstats_rte_mcfg_mem_read_lock.type
    var rte_mcfg_mem_read_unlock: rte_jobstats_rte_mcfg_mem_read_unlock.type
    var rte_mcfg_mem_write_lock: rte_jobstats_rte_mcfg_mem_write_lock.type
    var rte_mcfg_mem_write_unlock: rte_jobstats_rte_mcfg_mem_write_unlock.type
    var rte_mcfg_tailq_read_lock: rte_jobstats_rte_mcfg_tailq_read_lock.type
    var rte_mcfg_tailq_read_unlock: rte_jobstats_rte_mcfg_tailq_read_unlock.type
    var rte_mcfg_tailq_write_lock: rte_jobstats_rte_mcfg_tailq_write_lock.type
    var rte_mcfg_tailq_write_unlock: rte_jobstats_rte_mcfg_tailq_write_unlock.type
    var rte_mcfg_mempool_read_lock: rte_jobstats_rte_mcfg_mempool_read_lock.type
    var rte_mcfg_mempool_read_unlock: rte_jobstats_rte_mcfg_mempool_read_unlock.type
    var rte_mcfg_mempool_write_lock: rte_jobstats_rte_mcfg_mempool_write_lock.type
    var rte_mcfg_mempool_write_unlock: rte_jobstats_rte_mcfg_mempool_write_unlock.type
    var rte_mcfg_timer_lock: rte_jobstats_rte_mcfg_timer_lock.type
    var rte_mcfg_timer_unlock: rte_jobstats_rte_mcfg_timer_unlock.type
    var rte_mcfg_get_single_file_segments: rte_jobstats_rte_mcfg_get_single_file_segments.type
    var rte_fbarray_init: rte_jobstats_rte_fbarray_init.type
    var rte_fbarray_attach: rte_jobstats_rte_fbarray_attach.type
    var rte_fbarray_destroy: rte_jobstats_rte_fbarray_destroy.type
    var rte_fbarray_detach: rte_jobstats_rte_fbarray_detach.type
    var rte_fbarray_get: rte_jobstats_rte_fbarray_get.type
    var rte_fbarray_find_idx: rte_jobstats_rte_fbarray_find_idx.type
    var rte_fbarray_set_used: rte_jobstats_rte_fbarray_set_used.type
    var rte_fbarray_set_free: rte_jobstats_rte_fbarray_set_free.type
    var rte_fbarray_is_used: rte_jobstats_rte_fbarray_is_used.type
    var rte_fbarray_find_next_free: rte_jobstats_rte_fbarray_find_next_free.type
    var rte_fbarray_find_next_used: rte_jobstats_rte_fbarray_find_next_used.type
    var rte_fbarray_find_next_n_free: rte_jobstats_rte_fbarray_find_next_n_free.type
    var rte_fbarray_find_next_n_used: rte_jobstats_rte_fbarray_find_next_n_used.type
    var rte_fbarray_find_contig_free: rte_jobstats_rte_fbarray_find_contig_free.type
    var rte_fbarray_find_contig_used: rte_jobstats_rte_fbarray_find_contig_used.type
    var rte_fbarray_find_prev_free: rte_jobstats_rte_fbarray_find_prev_free.type
    var rte_fbarray_find_prev_used: rte_jobstats_rte_fbarray_find_prev_used.type
    var rte_fbarray_find_prev_n_free: rte_jobstats_rte_fbarray_find_prev_n_free.type
    var rte_fbarray_find_prev_n_used: rte_jobstats_rte_fbarray_find_prev_n_used.type
    var rte_fbarray_find_rev_contig_free: rte_jobstats_rte_fbarray_find_rev_contig_free.type
    var rte_fbarray_find_rev_contig_used: rte_jobstats_rte_fbarray_find_rev_contig_used.type
    var rte_fbarray_find_biggest_free: rte_jobstats_rte_fbarray_find_biggest_free.type
    var rte_fbarray_find_biggest_used: rte_jobstats_rte_fbarray_find_biggest_used.type
    var rte_fbarray_find_rev_biggest_free: rte_jobstats_rte_fbarray_find_rev_biggest_free.type
    var rte_fbarray_find_rev_biggest_used: rte_jobstats_rte_fbarray_find_rev_biggest_used.type
    var rte_fbarray_dump_metadata: rte_jobstats_rte_fbarray_dump_metadata.type
    var rte_mem_lock_page: rte_jobstats_rte_mem_lock_page.type
    var rte_mem_virt2phy: rte_jobstats_rte_mem_virt2phy.type
    var rte_mem_virt2iova: rte_jobstats_rte_mem_virt2iova.type
    var rte_mem_iova2virt: rte_jobstats_rte_mem_iova2virt.type
    var rte_mem_virt2memseg: rte_jobstats_rte_mem_virt2memseg.type
    var rte_mem_virt2memseg_list: rte_jobstats_rte_mem_virt2memseg_list.type
    var rte_memseg_walk: rte_jobstats_rte_memseg_walk.type
    var rte_memseg_contig_walk: rte_jobstats_rte_memseg_contig_walk.type
    var rte_memseg_list_walk: rte_jobstats_rte_memseg_list_walk.type
    var rte_memseg_walk_thread_unsafe: rte_jobstats_rte_memseg_walk_thread_unsafe.type
    var rte_memseg_contig_walk_thread_unsafe: rte_jobstats_rte_memseg_contig_walk_thread_unsafe.type
    var rte_memseg_list_walk_thread_unsafe: rte_jobstats_rte_memseg_list_walk_thread_unsafe.type
    var rte_memseg_get_fd: rte_jobstats_rte_memseg_get_fd.type
    var rte_memseg_get_fd_thread_unsafe: rte_jobstats_rte_memseg_get_fd_thread_unsafe.type
    var rte_memseg_get_fd_offset: rte_jobstats_rte_memseg_get_fd_offset.type
    var rte_memseg_get_fd_offset_thread_unsafe: rte_jobstats_rte_memseg_get_fd_offset_thread_unsafe.type
    var rte_extmem_register: rte_jobstats_rte_extmem_register.type
    var rte_extmem_unregister: rte_jobstats_rte_extmem_unregister.type
    var rte_extmem_attach: rte_jobstats_rte_extmem_attach.type
    var rte_extmem_detach: rte_jobstats_rte_extmem_detach.type
    var rte_dump_physmem_layout: rte_jobstats_rte_dump_physmem_layout.type
    var rte_eal_get_physmem_size: rte_jobstats_rte_eal_get_physmem_size.type
    var rte_memory_get_nchannel: rte_jobstats_rte_memory_get_nchannel.type
    var rte_memory_get_nrank: rte_jobstats_rte_memory_get_nrank.type
    var rte_mem_check_dma_mask: rte_jobstats_rte_mem_check_dma_mask.type
    var rte_mem_check_dma_mask_thread_unsafe: rte_jobstats_rte_mem_check_dma_mask_thread_unsafe.type
    var rte_mem_set_dma_mask: rte_jobstats_rte_mem_set_dma_mask.type
    var rte_eal_using_phys_addrs: rte_jobstats_rte_eal_using_phys_addrs.type
    var rte_mem_event_callback_register: rte_jobstats_rte_mem_event_callback_register.type
    var rte_mem_event_callback_unregister: rte_jobstats_rte_mem_event_callback_unregister.type
    var rte_mem_alloc_validator_register: rte_jobstats_rte_mem_alloc_validator_register.type
    var rte_mem_alloc_validator_unregister: rte_jobstats_rte_mem_alloc_validator_unregister.type
    var rte_memzero_explicit: rte_jobstats_rte_memzero_explicit.type
    var rte_jobstats_context_init: rte_jobstats_rte_jobstats_context_init.type
    var rte_jobstats_context_start: rte_jobstats_rte_jobstats_context_start.type
    var rte_jobstats_context_finish: rte_jobstats_rte_jobstats_context_finish.type
    var rte_jobstats_context_reset: rte_jobstats_rte_jobstats_context_reset.type
    var rte_jobstats_init: rte_jobstats_rte_jobstats_init.type
    var rte_jobstats_set_target: rte_jobstats_rte_jobstats_set_target.type
    var rte_jobstats_start: rte_jobstats_rte_jobstats_start.type
    var rte_jobstats_abort: rte_jobstats_rte_jobstats_abort.type
    var rte_jobstats_finish: rte_jobstats_rte_jobstats_finish.type
    var rte_jobstats_set_period: rte_jobstats_rte_jobstats_set_period.type
    var rte_jobstats_set_min: rte_jobstats_rte_jobstats_set_min.type
    var rte_jobstats_set_max: rte_jobstats_rte_jobstats_set_max.type
    var rte_jobstats_set_update_period_function: rte_jobstats_rte_jobstats_set_update_period_function.type
    var rte_jobstats_reset: rte_jobstats_rte_jobstats_reset.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_jobstats.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_jobstats from", 'librte_jobstats.so', ":\n", e)
            )

    
        self.remove = rte_jobstats_remove.load(self.lib)
        self.rename = rte_jobstats_rename.load(self.lib)
        self.renameat = rte_jobstats_renameat.load(self.lib)
        self.fclose = rte_jobstats_fclose.load(self.lib)
        self.tmpfile = rte_jobstats_tmpfile.load(self.lib)
        self.tmpnam = rte_jobstats_tmpnam.load(self.lib)
        self.tmpnam_r = rte_jobstats_tmpnam_r.load(self.lib)
        self.tempnam = rte_jobstats_tempnam.load(self.lib)
        self.fflush = rte_jobstats_fflush.load(self.lib)
        self.fflush_unlocked = rte_jobstats_fflush_unlocked.load(self.lib)
        self.fopen = rte_jobstats_fopen.load(self.lib)
        self.freopen = rte_jobstats_freopen.load(self.lib)
        self.fdopen = rte_jobstats_fdopen.load(self.lib)
        self.fmemopen = rte_jobstats_fmemopen.load(self.lib)
        self.open_memstream = rte_jobstats_open_memstream.load(self.lib)
        self.setbuf = rte_jobstats_setbuf.load(self.lib)
        self.setvbuf = rte_jobstats_setvbuf.load(self.lib)
        self.setbuffer = rte_jobstats_setbuffer.load(self.lib)
        self.setlinebuf = rte_jobstats_setlinebuf.load(self.lib)
        self.fprintf = rte_jobstats_fprintf.load(self.lib)
        self.printf = rte_jobstats_printf.load(self.lib)
        self.sprintf = rte_jobstats_sprintf.load(self.lib)
        self.vfprintf = rte_jobstats_vfprintf.load(self.lib)
        self.vprintf = rte_jobstats_vprintf.load(self.lib)
        self.vsprintf = rte_jobstats_vsprintf.load(self.lib)
        self.snprintf = rte_jobstats_snprintf.load(self.lib)
        self.vsnprintf = rte_jobstats_vsnprintf.load(self.lib)
        self.vdprintf = rte_jobstats_vdprintf.load(self.lib)
        self.dprintf = rte_jobstats_dprintf.load(self.lib)
        self.fscanf = rte_jobstats_fscanf.load(self.lib)
        self.scanf = rte_jobstats_scanf.load(self.lib)
        self.sscanf = rte_jobstats_sscanf.load(self.lib)
        self.vfscanf = rte_jobstats_vfscanf.load(self.lib)
        self.vscanf = rte_jobstats_vscanf.load(self.lib)
        self.vsscanf = rte_jobstats_vsscanf.load(self.lib)
        self.fgetc = rte_jobstats_fgetc.load(self.lib)
        self.getc = rte_jobstats_getc.load(self.lib)
        self.getchar = rte_jobstats_getchar.load(self.lib)
        self.getc_unlocked = rte_jobstats_getc_unlocked.load(self.lib)
        self.getchar_unlocked = rte_jobstats_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = rte_jobstats_fgetc_unlocked.load(self.lib)
        self.fputc = rte_jobstats_fputc.load(self.lib)
        self.putc = rte_jobstats_putc.load(self.lib)
        self.putchar = rte_jobstats_putchar.load(self.lib)
        self.fputc_unlocked = rte_jobstats_fputc_unlocked.load(self.lib)
        self.putc_unlocked = rte_jobstats_putc_unlocked.load(self.lib)
        self.putchar_unlocked = rte_jobstats_putchar_unlocked.load(self.lib)
        self.getw = rte_jobstats_getw.load(self.lib)
        self.putw = rte_jobstats_putw.load(self.lib)
        self.fgets = rte_jobstats_fgets.load(self.lib)
        self.getdelim = rte_jobstats_getdelim.load(self.lib)
        self.getline = rte_jobstats_getline.load(self.lib)
        self.fputs = rte_jobstats_fputs.load(self.lib)
        self.puts = rte_jobstats_puts.load(self.lib)
        self.ungetc = rte_jobstats_ungetc.load(self.lib)
        self.fread = rte_jobstats_fread.load(self.lib)
        self.fwrite = rte_jobstats_fwrite.load(self.lib)
        self.fread_unlocked = rte_jobstats_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = rte_jobstats_fwrite_unlocked.load(self.lib)
        self.fseek = rte_jobstats_fseek.load(self.lib)
        self.ftell = rte_jobstats_ftell.load(self.lib)
        self.rewind = rte_jobstats_rewind.load(self.lib)
        self.fseeko = rte_jobstats_fseeko.load(self.lib)
        self.ftello = rte_jobstats_ftello.load(self.lib)
        self.fgetpos = rte_jobstats_fgetpos.load(self.lib)
        self.fsetpos = rte_jobstats_fsetpos.load(self.lib)
        self.clearerr = rte_jobstats_clearerr.load(self.lib)
        self.feof = rte_jobstats_feof.load(self.lib)
        self.ferror = rte_jobstats_ferror.load(self.lib)
        self.clearerr_unlocked = rte_jobstats_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = rte_jobstats_feof_unlocked.load(self.lib)
        self.ferror_unlocked = rte_jobstats_ferror_unlocked.load(self.lib)
        self.perror = rte_jobstats_perror.load(self.lib)
        self.fileno = rte_jobstats_fileno.load(self.lib)
        self.fileno_unlocked = rte_jobstats_fileno_unlocked.load(self.lib)
        self.pclose = rte_jobstats_pclose.load(self.lib)
        self.popen = rte_jobstats_popen.load(self.lib)
        self.ctermid = rte_jobstats_ctermid.load(self.lib)
        self.flockfile = rte_jobstats_flockfile.load(self.lib)
        self.ftrylockfile = rte_jobstats_ftrylockfile.load(self.lib)
        self.funlockfile = rte_jobstats_funlockfile.load(self.lib)
        self.alloca = rte_jobstats_alloca.load(self.lib)
        self.sched_setparam = rte_jobstats_sched_setparam.load(self.lib)
        self.sched_getparam = rte_jobstats_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_jobstats_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_jobstats_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_jobstats_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_jobstats_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_jobstats_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_jobstats_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_jobstats_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_jobstats_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_jobstats_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_jobstats_rte_exit.load(self.lib)
        self.rte_openlog_stream = rte_jobstats_rte_openlog_stream.load(self.lib)
        self.rte_log_get_stream = rte_jobstats_rte_log_get_stream.load(self.lib)
        self.rte_log_set_global_level = rte_jobstats_rte_log_set_global_level.load(self.lib)
        self.rte_log_get_global_level = rte_jobstats_rte_log_get_global_level.load(self.lib)
        self.rte_log_get_level = rte_jobstats_rte_log_get_level.load(self.lib)
        self.rte_log_can_log = rte_jobstats_rte_log_can_log.load(self.lib)
        self.rte_log_set_level_pattern = rte_jobstats_rte_log_set_level_pattern.load(self.lib)
        self.rte_log_set_level_regexp = rte_jobstats_rte_log_set_level_regexp.load(self.lib)
        self.rte_log_set_level = rte_jobstats_rte_log_set_level.load(self.lib)
        self.rte_log_cur_msg_loglevel = rte_jobstats_rte_log_cur_msg_loglevel.load(self.lib)
        self.rte_log_cur_msg_logtype = rte_jobstats_rte_log_cur_msg_logtype.load(self.lib)
        self.rte_log_register = rte_jobstats_rte_log_register.load(self.lib)
        self.rte_log_register_type_and_pick_level = rte_jobstats_rte_log_register_type_and_pick_level.load(self.lib)
        self.rte_log_list_types = rte_jobstats_rte_log_list_types.load(self.lib)
        self.rte_log_dump = rte_jobstats_rte_log_dump.load(self.lib)
        self.rte_log = rte_jobstats_rte_log.load(self.lib)
        self.rte_vlog = rte_jobstats_rte_vlog.load(self.lib)
        self.rte_dump_stack = rte_jobstats_rte_dump_stack.load(self.lib)
        self.rte_bit_relaxed_get32 = rte_jobstats_rte_bit_relaxed_get32.load(self.lib)
        self.rte_bit_relaxed_set32 = rte_jobstats_rte_bit_relaxed_set32.load(self.lib)
        self.rte_bit_relaxed_clear32 = rte_jobstats_rte_bit_relaxed_clear32.load(self.lib)
        self.rte_bit_relaxed_test_and_set32 = rte_jobstats_rte_bit_relaxed_test_and_set32.load(self.lib)
        self.rte_bit_relaxed_test_and_clear32 = rte_jobstats_rte_bit_relaxed_test_and_clear32.load(self.lib)
        self.rte_bit_relaxed_get64 = rte_jobstats_rte_bit_relaxed_get64.load(self.lib)
        self.rte_bit_relaxed_set64 = rte_jobstats_rte_bit_relaxed_set64.load(self.lib)
        self.rte_bit_relaxed_clear64 = rte_jobstats_rte_bit_relaxed_clear64.load(self.lib)
        self.rte_bit_relaxed_test_and_set64 = rte_jobstats_rte_bit_relaxed_test_and_set64.load(self.lib)
        self.rte_bit_relaxed_test_and_clear64 = rte_jobstats_rte_bit_relaxed_test_and_clear64.load(self.lib)
        self.rte_clz32 = rte_jobstats_rte_clz32.load(self.lib)
        self.rte_clz64 = rte_jobstats_rte_clz64.load(self.lib)
        self.rte_ctz32 = rte_jobstats_rte_ctz32.load(self.lib)
        self.rte_ctz64 = rte_jobstats_rte_ctz64.load(self.lib)
        self.rte_popcount32 = rte_jobstats_rte_popcount32.load(self.lib)
        self.rte_popcount64 = rte_jobstats_rte_popcount64.load(self.lib)
        self.rte_ffs32 = rte_jobstats_rte_ffs32.load(self.lib)
        self.rte_ffs64 = rte_jobstats_rte_ffs64.load(self.lib)
        self.rte_combine32ms1b = rte_jobstats_rte_combine32ms1b.load(self.lib)
        self.rte_combine64ms1b = rte_jobstats_rte_combine64ms1b.load(self.lib)
        self.rte_bsf32 = rte_jobstats_rte_bsf32.load(self.lib)
        self.rte_bsf32_safe = rte_jobstats_rte_bsf32_safe.load(self.lib)
        self.rte_bsf64 = rte_jobstats_rte_bsf64.load(self.lib)
        self.rte_bsf64_safe = rte_jobstats_rte_bsf64_safe.load(self.lib)
        self.rte_fls_u32 = rte_jobstats_rte_fls_u32.load(self.lib)
        self.rte_fls_u64 = rte_jobstats_rte_fls_u64.load(self.lib)
        self.rte_is_power_of_2 = rte_jobstats_rte_is_power_of_2.load(self.lib)
        self.rte_align32pow2 = rte_jobstats_rte_align32pow2.load(self.lib)
        self.rte_align32prevpow2 = rte_jobstats_rte_align32prevpow2.load(self.lib)
        self.rte_align64pow2 = rte_jobstats_rte_align64pow2.load(self.lib)
        self.rte_align64prevpow2 = rte_jobstats_rte_align64prevpow2.load(self.lib)
        self.rte_log2_u32 = rte_jobstats_rte_log2_u32.load(self.lib)
        self.rte_log2_u64 = rte_jobstats_rte_log2_u64.load(self.lib)
        self.rte_atomic_thread_fence = rte_jobstats_rte_atomic_thread_fence.load(self.lib)
        self.rte_atomic16_cmpset = rte_jobstats_rte_atomic16_cmpset.load(self.lib)
        self.rte_atomic16_exchange = rte_jobstats_rte_atomic16_exchange.load(self.lib)
        self.rte_atomic16_init = rte_jobstats_rte_atomic16_init.load(self.lib)
        self.rte_atomic16_read = rte_jobstats_rte_atomic16_read.load(self.lib)
        self.rte_atomic16_set = rte_jobstats_rte_atomic16_set.load(self.lib)
        self.rte_atomic16_add = rte_jobstats_rte_atomic16_add.load(self.lib)
        self.rte_atomic16_sub = rte_jobstats_rte_atomic16_sub.load(self.lib)
        self.rte_atomic16_inc = rte_jobstats_rte_atomic16_inc.load(self.lib)
        self.rte_atomic16_dec = rte_jobstats_rte_atomic16_dec.load(self.lib)
        self.rte_atomic16_add_return = rte_jobstats_rte_atomic16_add_return.load(self.lib)
        self.rte_atomic16_sub_return = rte_jobstats_rte_atomic16_sub_return.load(self.lib)
        self.rte_atomic16_inc_and_test = rte_jobstats_rte_atomic16_inc_and_test.load(self.lib)
        self.rte_atomic16_dec_and_test = rte_jobstats_rte_atomic16_dec_and_test.load(self.lib)
        self.rte_atomic16_test_and_set = rte_jobstats_rte_atomic16_test_and_set.load(self.lib)
        self.rte_atomic16_clear = rte_jobstats_rte_atomic16_clear.load(self.lib)
        self.rte_atomic32_cmpset = rte_jobstats_rte_atomic32_cmpset.load(self.lib)
        self.rte_atomic32_exchange = rte_jobstats_rte_atomic32_exchange.load(self.lib)
        self.rte_atomic32_init = rte_jobstats_rte_atomic32_init.load(self.lib)
        self.rte_atomic32_read = rte_jobstats_rte_atomic32_read.load(self.lib)
        self.rte_atomic32_set = rte_jobstats_rte_atomic32_set.load(self.lib)
        self.rte_atomic32_add = rte_jobstats_rte_atomic32_add.load(self.lib)
        self.rte_atomic32_sub = rte_jobstats_rte_atomic32_sub.load(self.lib)
        self.rte_atomic32_inc = rte_jobstats_rte_atomic32_inc.load(self.lib)
        self.rte_atomic32_dec = rte_jobstats_rte_atomic32_dec.load(self.lib)
        self.rte_atomic32_add_return = rte_jobstats_rte_atomic32_add_return.load(self.lib)
        self.rte_atomic32_sub_return = rte_jobstats_rte_atomic32_sub_return.load(self.lib)
        self.rte_atomic32_inc_and_test = rte_jobstats_rte_atomic32_inc_and_test.load(self.lib)
        self.rte_atomic32_dec_and_test = rte_jobstats_rte_atomic32_dec_and_test.load(self.lib)
        self.rte_atomic32_test_and_set = rte_jobstats_rte_atomic32_test_and_set.load(self.lib)
        self.rte_atomic32_clear = rte_jobstats_rte_atomic32_clear.load(self.lib)
        self.rte_atomic64_cmpset = rte_jobstats_rte_atomic64_cmpset.load(self.lib)
        self.rte_atomic64_exchange = rte_jobstats_rte_atomic64_exchange.load(self.lib)
        self.rte_atomic64_init = rte_jobstats_rte_atomic64_init.load(self.lib)
        self.rte_atomic64_read = rte_jobstats_rte_atomic64_read.load(self.lib)
        self.rte_atomic64_set = rte_jobstats_rte_atomic64_set.load(self.lib)
        self.rte_atomic64_add = rte_jobstats_rte_atomic64_add.load(self.lib)
        self.rte_atomic64_sub = rte_jobstats_rte_atomic64_sub.load(self.lib)
        self.rte_atomic64_inc = rte_jobstats_rte_atomic64_inc.load(self.lib)
        self.rte_atomic64_dec = rte_jobstats_rte_atomic64_dec.load(self.lib)
        self.rte_atomic64_add_return = rte_jobstats_rte_atomic64_add_return.load(self.lib)
        self.rte_atomic64_sub_return = rte_jobstats_rte_atomic64_sub_return.load(self.lib)
        self.rte_atomic64_inc_and_test = rte_jobstats_rte_atomic64_inc_and_test.load(self.lib)
        self.rte_atomic64_dec_and_test = rte_jobstats_rte_atomic64_dec_and_test.load(self.lib)
        self.rte_atomic64_test_and_set = rte_jobstats_rte_atomic64_test_and_set.load(self.lib)
        self.rte_atomic64_clear = rte_jobstats_rte_atomic64_clear.load(self.lib)
        self.rte_atomic128_cmp_exchange = rte_jobstats_rte_atomic128_cmp_exchange.load(self.lib)
        self.rte_pause = rte_jobstats_rte_pause.load(self.lib)
        self.rte_wait_until_equal_16 = rte_jobstats_rte_wait_until_equal_16.load(self.lib)
        self.rte_wait_until_equal_32 = rte_jobstats_rte_wait_until_equal_32.load(self.lib)
        self.rte_wait_until_equal_64 = rte_jobstats_rte_wait_until_equal_64.load(self.lib)
        self.rte_rwlock_init = rte_jobstats_rte_rwlock_init.load(self.lib)
        self.rte_rwlock_read_lock = rte_jobstats_rte_rwlock_read_lock.load(self.lib)
        self.rte_rwlock_read_trylock = rte_jobstats_rte_rwlock_read_trylock.load(self.lib)
        self.rte_rwlock_read_unlock = rte_jobstats_rte_rwlock_read_unlock.load(self.lib)
        self.rte_rwlock_write_trylock = rte_jobstats_rte_rwlock_write_trylock.load(self.lib)
        self.rte_rwlock_write_lock = rte_jobstats_rte_rwlock_write_lock.load(self.lib)
        self.rte_rwlock_write_unlock = rte_jobstats_rte_rwlock_write_unlock.load(self.lib)
        self.rte_rwlock_write_is_locked = rte_jobstats_rte_rwlock_write_is_locked.load(self.lib)
        self.rte_rwlock_read_lock_tm = rte_jobstats_rte_rwlock_read_lock_tm.load(self.lib)
        self.rte_rwlock_read_unlock_tm = rte_jobstats_rte_rwlock_read_unlock_tm.load(self.lib)
        self.rte_rwlock_write_lock_tm = rte_jobstats_rte_rwlock_write_lock_tm.load(self.lib)
        self.rte_rwlock_write_unlock_tm = rte_jobstats_rte_rwlock_write_unlock_tm.load(self.lib)
        self.clock = rte_jobstats_clock.load(self.lib)
        self.time = rte_jobstats_time.load(self.lib)
        self.difftime = rte_jobstats_difftime.load(self.lib)
        self.mktime = rte_jobstats_mktime.load(self.lib)
        self.strftime = rte_jobstats_strftime.load(self.lib)
        self.strftime_l = rte_jobstats_strftime_l.load(self.lib)
        self.gmtime = rte_jobstats_gmtime.load(self.lib)
        self.localtime = rte_jobstats_localtime.load(self.lib)
        self.gmtime_r = rte_jobstats_gmtime_r.load(self.lib)
        self.localtime_r = rte_jobstats_localtime_r.load(self.lib)
        self.asctime = rte_jobstats_asctime.load(self.lib)
        self.ctime = rte_jobstats_ctime.load(self.lib)
        self.asctime_r = rte_jobstats_asctime_r.load(self.lib)
        self.ctime_r = rte_jobstats_ctime_r.load(self.lib)
        self.tzset = rte_jobstats_tzset.load(self.lib)
        self.timegm = rte_jobstats_timegm.load(self.lib)
        self.timelocal = rte_jobstats_timelocal.load(self.lib)
        self.dysize = rte_jobstats_dysize.load(self.lib)
        self.nanosleep = rte_jobstats_nanosleep.load(self.lib)
        self.clock_getres = rte_jobstats_clock_getres.load(self.lib)
        self.clock_gettime = rte_jobstats_clock_gettime.load(self.lib)
        self.clock_settime = rte_jobstats_clock_settime.load(self.lib)
        self.clock_nanosleep = rte_jobstats_clock_nanosleep.load(self.lib)
        self.clock_getcpuclockid = rte_jobstats_clock_getcpuclockid.load(self.lib)
        self.timer_create = rte_jobstats_timer_create.load(self.lib)
        self.timer_delete = rte_jobstats_timer_delete.load(self.lib)
        self.timer_settime = rte_jobstats_timer_settime.load(self.lib)
        self.timer_gettime = rte_jobstats_timer_gettime.load(self.lib)
        self.timer_getoverrun = rte_jobstats_timer_getoverrun.load(self.lib)
        self.timespec_get = rte_jobstats_timespec_get.load(self.lib)
        self.memcpy = rte_jobstats_memcpy.load(self.lib)
        self.memmove = rte_jobstats_memmove.load(self.lib)
        self.memccpy = rte_jobstats_memccpy.load(self.lib)
        self.memset = rte_jobstats_memset.load(self.lib)
        self.memcmp = rte_jobstats_memcmp.load(self.lib)
        self.memchr = rte_jobstats_memchr.load(self.lib)
        self.strcpy = rte_jobstats_strcpy.load(self.lib)
        self.strncpy = rte_jobstats_strncpy.load(self.lib)
        self.strcat = rte_jobstats_strcat.load(self.lib)
        self.strncat = rte_jobstats_strncat.load(self.lib)
        self.strcmp = rte_jobstats_strcmp.load(self.lib)
        self.strncmp = rte_jobstats_strncmp.load(self.lib)
        self.strcoll = rte_jobstats_strcoll.load(self.lib)
        self.strxfrm = rte_jobstats_strxfrm.load(self.lib)
        self.strcoll_l = rte_jobstats_strcoll_l.load(self.lib)
        self.strxfrm_l = rte_jobstats_strxfrm_l.load(self.lib)
        self.strdup = rte_jobstats_strdup.load(self.lib)
        self.strndup = rte_jobstats_strndup.load(self.lib)
        self.strchr = rte_jobstats_strchr.load(self.lib)
        self.strrchr = rte_jobstats_strrchr.load(self.lib)
        self.strcspn = rte_jobstats_strcspn.load(self.lib)
        self.strspn = rte_jobstats_strspn.load(self.lib)
        self.strpbrk = rte_jobstats_strpbrk.load(self.lib)
        self.strstr = rte_jobstats_strstr.load(self.lib)
        self.strtok = rte_jobstats_strtok.load(self.lib)
        self.strtok_r = rte_jobstats_strtok_r.load(self.lib)
        self.strlen = rte_jobstats_strlen.load(self.lib)
        self.strnlen = rte_jobstats_strnlen.load(self.lib)
        self.strerror = rte_jobstats_strerror.load(self.lib)
        self.strerror_r = rte_jobstats_strerror_r.load(self.lib)
        self.strerror_l = rte_jobstats_strerror_l.load(self.lib)
        self.bcmp = rte_jobstats_bcmp.load(self.lib)
        self.bcopy = rte_jobstats_bcopy.load(self.lib)
        self.bzero = rte_jobstats_bzero.load(self.lib)
        self.index = rte_jobstats_index.load(self.lib)
        self.rindex = rte_jobstats_rindex.load(self.lib)
        self.ffs = rte_jobstats_ffs.load(self.lib)
        self.ffsl = rte_jobstats_ffsl.load(self.lib)
        self.ffsll = rte_jobstats_ffsll.load(self.lib)
        self.strcasecmp = rte_jobstats_strcasecmp.load(self.lib)
        self.strncasecmp = rte_jobstats_strncasecmp.load(self.lib)
        self.strcasecmp_l = rte_jobstats_strcasecmp_l.load(self.lib)
        self.strncasecmp_l = rte_jobstats_strncasecmp_l.load(self.lib)
        self.explicit_bzero = rte_jobstats_explicit_bzero.load(self.lib)
        self.strsep = rte_jobstats_strsep.load(self.lib)
        self.strsignal = rte_jobstats_strsignal.load(self.lib)
        self.stpcpy = rte_jobstats_stpcpy.load(self.lib)
        self.stpncpy = rte_jobstats_stpncpy.load(self.lib)
        self.rte_uuid_is_null = rte_jobstats_rte_uuid_is_null.load(self.lib)
        self.rte_uuid_copy = rte_jobstats_rte_uuid_copy.load(self.lib)
        self.rte_uuid_compare = rte_jobstats_rte_uuid_compare.load(self.lib)
        self.rte_uuid_parse = rte_jobstats_rte_uuid_parse.load(self.lib)
        self.rte_uuid_unparse = rte_jobstats_rte_uuid_unparse.load(self.lib)
        self.rte_eal_process_type = rte_jobstats_rte_eal_process_type.load(self.lib)
        self.rte_eal_iopl_init = rte_jobstats_rte_eal_iopl_init.load(self.lib)
        self.rte_eal_init = rte_jobstats_rte_eal_init.load(self.lib)
        self.rte_eal_cleanup = rte_jobstats_rte_eal_cleanup.load(self.lib)
        self.rte_eal_primary_proc_alive = rte_jobstats_rte_eal_primary_proc_alive.load(self.lib)
        self.rte_mp_disable = rte_jobstats_rte_mp_disable.load(self.lib)
        self.rte_mp_action_register = rte_jobstats_rte_mp_action_register.load(self.lib)
        self.rte_mp_action_unregister = rte_jobstats_rte_mp_action_unregister.load(self.lib)
        self.rte_mp_sendmsg = rte_jobstats_rte_mp_sendmsg.load(self.lib)
        self.rte_mp_request_sync = rte_jobstats_rte_mp_request_sync.load(self.lib)
        self.rte_mp_request_async = rte_jobstats_rte_mp_request_async.load(self.lib)
        self.rte_set_application_usage_hook = rte_jobstats_rte_set_application_usage_hook.load(self.lib)
        self.rte_eal_has_hugepages = rte_jobstats_rte_eal_has_hugepages.load(self.lib)
        self.rte_eal_has_pci = rte_jobstats_rte_eal_has_pci.load(self.lib)
        self.rte_eal_create_uio_dev = rte_jobstats_rte_eal_create_uio_dev.load(self.lib)
        self.rte_eal_vfio_intr_mode = rte_jobstats_rte_eal_vfio_intr_mode.load(self.lib)
        self.rte_eal_vfio_get_vf_token = rte_jobstats_rte_eal_vfio_get_vf_token.load(self.lib)
        self.rte_sys_gettid = rte_jobstats_rte_sys_gettid.load(self.lib)
        self.rte_gettid = rte_jobstats_rte_gettid.load(self.lib)
        self.rte_eal_get_baseaddr = rte_jobstats_rte_eal_get_baseaddr.load(self.lib)
        self.rte_eal_iova_mode = rte_jobstats_rte_eal_iova_mode.load(self.lib)
        self.rte_eal_mbuf_user_pool_ops = rte_jobstats_rte_eal_mbuf_user_pool_ops.load(self.lib)
        self.rte_eal_get_runtime_dir = rte_jobstats_rte_eal_get_runtime_dir.load(self.lib)
        self.rte_eal_parse_coremask = rte_jobstats_rte_eal_parse_coremask.load(self.lib)
        self.rte_eal_remote_launch = rte_jobstats_rte_eal_remote_launch.load(self.lib)
        self.rte_eal_mp_remote_launch = rte_jobstats_rte_eal_mp_remote_launch.load(self.lib)
        self.rte_eal_get_lcore_state = rte_jobstats_rte_eal_get_lcore_state.load(self.lib)
        self.rte_eal_wait_lcore = rte_jobstats_rte_eal_wait_lcore.load(self.lib)
        self.rte_eal_mp_wait_lcore = rte_jobstats_rte_eal_mp_wait_lcore.load(self.lib)
        self.rte_thread_create = rte_jobstats_rte_thread_create.load(self.lib)
        self.rte_thread_create_control = rte_jobstats_rte_thread_create_control.load(self.lib)
        self.rte_thread_create_internal_control = rte_jobstats_rte_thread_create_internal_control.load(self.lib)
        self.rte_thread_join = rte_jobstats_rte_thread_join.load(self.lib)
        self.rte_thread_detach = rte_jobstats_rte_thread_detach.load(self.lib)
        self.rte_thread_self = rte_jobstats_rte_thread_self.load(self.lib)
        self.rte_thread_set_name = rte_jobstats_rte_thread_set_name.load(self.lib)
        self.rte_thread_set_prefixed_name = rte_jobstats_rte_thread_set_prefixed_name.load(self.lib)
        self.rte_thread_equal = rte_jobstats_rte_thread_equal.load(self.lib)
        self.rte_thread_attr_init = rte_jobstats_rte_thread_attr_init.load(self.lib)
        self.rte_thread_attr_set_priority = rte_jobstats_rte_thread_attr_set_priority.load(self.lib)
        self.rte_thread_get_priority = rte_jobstats_rte_thread_get_priority.load(self.lib)
        self.rte_thread_set_priority = rte_jobstats_rte_thread_set_priority.load(self.lib)
        self.rte_thread_key_create = rte_jobstats_rte_thread_key_create.load(self.lib)
        self.rte_thread_key_delete = rte_jobstats_rte_thread_key_delete.load(self.lib)
        self.rte_thread_value_set = rte_jobstats_rte_thread_value_set.load(self.lib)
        self.rte_thread_value_get = rte_jobstats_rte_thread_value_get.load(self.lib)
        self.rte_eal_lcore_role = rte_jobstats_rte_eal_lcore_role.load(self.lib)
        self.rte_lcore_has_role = rte_jobstats_rte_lcore_has_role.load(self.lib)
        self.rte_lcore_id = rte_jobstats_rte_lcore_id.load(self.lib)
        self.rte_get_main_lcore = rte_jobstats_rte_get_main_lcore.load(self.lib)
        self.rte_lcore_count = rte_jobstats_rte_lcore_count.load(self.lib)
        self.rte_lcore_index = rte_jobstats_rte_lcore_index.load(self.lib)
        self.rte_socket_id = rte_jobstats_rte_socket_id.load(self.lib)
        self.rte_socket_count = rte_jobstats_rte_socket_count.load(self.lib)
        self.rte_socket_id_by_idx = rte_jobstats_rte_socket_id_by_idx.load(self.lib)
        self.rte_lcore_to_socket_id = rte_jobstats_rte_lcore_to_socket_id.load(self.lib)
        self.rte_lcore_to_cpu_id = rte_jobstats_rte_lcore_to_cpu_id.load(self.lib)
        self.rte_lcore_is_enabled = rte_jobstats_rte_lcore_is_enabled.load(self.lib)
        self.rte_get_next_lcore = rte_jobstats_rte_get_next_lcore.load(self.lib)
        self.rte_lcore_callback_register = rte_jobstats_rte_lcore_callback_register.load(self.lib)
        self.rte_lcore_callback_unregister = rte_jobstats_rte_lcore_callback_unregister.load(self.lib)
        self.rte_lcore_iterate = rte_jobstats_rte_lcore_iterate.load(self.lib)
        self.rte_lcore_register_usage_cb = rte_jobstats_rte_lcore_register_usage_cb.load(self.lib)
        self.rte_lcore_dump = rte_jobstats_rte_lcore_dump.load(self.lib)
        self.rte_thread_register = rte_jobstats_rte_thread_register.load(self.lib)
        self.rte_thread_unregister = rte_jobstats_rte_thread_unregister.load(self.lib)
        self.rte_spinlock_init = rte_jobstats_rte_spinlock_init.load(self.lib)
        self.rte_spinlock_lock = rte_jobstats_rte_spinlock_lock.load(self.lib)
        self.rte_spinlock_unlock = rte_jobstats_rte_spinlock_unlock.load(self.lib)
        self.rte_spinlock_trylock = rte_jobstats_rte_spinlock_trylock.load(self.lib)
        self.rte_spinlock_is_locked = rte_jobstats_rte_spinlock_is_locked.load(self.lib)
        self.rte_tm_supported = rte_jobstats_rte_tm_supported.load(self.lib)
        self.rte_spinlock_lock_tm = rte_jobstats_rte_spinlock_lock_tm.load(self.lib)
        self.rte_spinlock_unlock_tm = rte_jobstats_rte_spinlock_unlock_tm.load(self.lib)
        self.rte_spinlock_trylock_tm = rte_jobstats_rte_spinlock_trylock_tm.load(self.lib)
        self.rte_spinlock_recursive_init = rte_jobstats_rte_spinlock_recursive_init.load(self.lib)
        self.rte_spinlock_recursive_lock = rte_jobstats_rte_spinlock_recursive_lock.load(self.lib)
        self.rte_spinlock_recursive_unlock = rte_jobstats_rte_spinlock_recursive_unlock.load(self.lib)
        self.rte_spinlock_recursive_trylock = rte_jobstats_rte_spinlock_recursive_trylock.load(self.lib)
        self.rte_spinlock_recursive_lock_tm = rte_jobstats_rte_spinlock_recursive_lock_tm.load(self.lib)
        self.rte_spinlock_recursive_unlock_tm = rte_jobstats_rte_spinlock_recursive_unlock_tm.load(self.lib)
        self.rte_spinlock_recursive_trylock_tm = rte_jobstats_rte_spinlock_recursive_trylock_tm.load(self.lib)
        self.rte_mcfg_mem_get_lock = rte_jobstats_rte_mcfg_mem_get_lock.load(self.lib)
        self.rte_mcfg_tailq_get_lock = rte_jobstats_rte_mcfg_tailq_get_lock.load(self.lib)
        self.rte_mcfg_mempool_get_lock = rte_jobstats_rte_mcfg_mempool_get_lock.load(self.lib)
        self.rte_mcfg_timer_get_lock = rte_jobstats_rte_mcfg_timer_get_lock.load(self.lib)
        self.rte_mcfg_ethdev_get_lock = rte_jobstats_rte_mcfg_ethdev_get_lock.load(self.lib)
        self.rte_mcfg_mem_read_lock = rte_jobstats_rte_mcfg_mem_read_lock.load(self.lib)
        self.rte_mcfg_mem_read_unlock = rte_jobstats_rte_mcfg_mem_read_unlock.load(self.lib)
        self.rte_mcfg_mem_write_lock = rte_jobstats_rte_mcfg_mem_write_lock.load(self.lib)
        self.rte_mcfg_mem_write_unlock = rte_jobstats_rte_mcfg_mem_write_unlock.load(self.lib)
        self.rte_mcfg_tailq_read_lock = rte_jobstats_rte_mcfg_tailq_read_lock.load(self.lib)
        self.rte_mcfg_tailq_read_unlock = rte_jobstats_rte_mcfg_tailq_read_unlock.load(self.lib)
        self.rte_mcfg_tailq_write_lock = rte_jobstats_rte_mcfg_tailq_write_lock.load(self.lib)
        self.rte_mcfg_tailq_write_unlock = rte_jobstats_rte_mcfg_tailq_write_unlock.load(self.lib)
        self.rte_mcfg_mempool_read_lock = rte_jobstats_rte_mcfg_mempool_read_lock.load(self.lib)
        self.rte_mcfg_mempool_read_unlock = rte_jobstats_rte_mcfg_mempool_read_unlock.load(self.lib)
        self.rte_mcfg_mempool_write_lock = rte_jobstats_rte_mcfg_mempool_write_lock.load(self.lib)
        self.rte_mcfg_mempool_write_unlock = rte_jobstats_rte_mcfg_mempool_write_unlock.load(self.lib)
        self.rte_mcfg_timer_lock = rte_jobstats_rte_mcfg_timer_lock.load(self.lib)
        self.rte_mcfg_timer_unlock = rte_jobstats_rte_mcfg_timer_unlock.load(self.lib)
        self.rte_mcfg_get_single_file_segments = rte_jobstats_rte_mcfg_get_single_file_segments.load(self.lib)
        self.rte_fbarray_init = rte_jobstats_rte_fbarray_init.load(self.lib)
        self.rte_fbarray_attach = rte_jobstats_rte_fbarray_attach.load(self.lib)
        self.rte_fbarray_destroy = rte_jobstats_rte_fbarray_destroy.load(self.lib)
        self.rte_fbarray_detach = rte_jobstats_rte_fbarray_detach.load(self.lib)
        self.rte_fbarray_get = rte_jobstats_rte_fbarray_get.load(self.lib)
        self.rte_fbarray_find_idx = rte_jobstats_rte_fbarray_find_idx.load(self.lib)
        self.rte_fbarray_set_used = rte_jobstats_rte_fbarray_set_used.load(self.lib)
        self.rte_fbarray_set_free = rte_jobstats_rte_fbarray_set_free.load(self.lib)
        self.rte_fbarray_is_used = rte_jobstats_rte_fbarray_is_used.load(self.lib)
        self.rte_fbarray_find_next_free = rte_jobstats_rte_fbarray_find_next_free.load(self.lib)
        self.rte_fbarray_find_next_used = rte_jobstats_rte_fbarray_find_next_used.load(self.lib)
        self.rte_fbarray_find_next_n_free = rte_jobstats_rte_fbarray_find_next_n_free.load(self.lib)
        self.rte_fbarray_find_next_n_used = rte_jobstats_rte_fbarray_find_next_n_used.load(self.lib)
        self.rte_fbarray_find_contig_free = rte_jobstats_rte_fbarray_find_contig_free.load(self.lib)
        self.rte_fbarray_find_contig_used = rte_jobstats_rte_fbarray_find_contig_used.load(self.lib)
        self.rte_fbarray_find_prev_free = rte_jobstats_rte_fbarray_find_prev_free.load(self.lib)
        self.rte_fbarray_find_prev_used = rte_jobstats_rte_fbarray_find_prev_used.load(self.lib)
        self.rte_fbarray_find_prev_n_free = rte_jobstats_rte_fbarray_find_prev_n_free.load(self.lib)
        self.rte_fbarray_find_prev_n_used = rte_jobstats_rte_fbarray_find_prev_n_used.load(self.lib)
        self.rte_fbarray_find_rev_contig_free = rte_jobstats_rte_fbarray_find_rev_contig_free.load(self.lib)
        self.rte_fbarray_find_rev_contig_used = rte_jobstats_rte_fbarray_find_rev_contig_used.load(self.lib)
        self.rte_fbarray_find_biggest_free = rte_jobstats_rte_fbarray_find_biggest_free.load(self.lib)
        self.rte_fbarray_find_biggest_used = rte_jobstats_rte_fbarray_find_biggest_used.load(self.lib)
        self.rte_fbarray_find_rev_biggest_free = rte_jobstats_rte_fbarray_find_rev_biggest_free.load(self.lib)
        self.rte_fbarray_find_rev_biggest_used = rte_jobstats_rte_fbarray_find_rev_biggest_used.load(self.lib)
        self.rte_fbarray_dump_metadata = rte_jobstats_rte_fbarray_dump_metadata.load(self.lib)
        self.rte_mem_lock_page = rte_jobstats_rte_mem_lock_page.load(self.lib)
        self.rte_mem_virt2phy = rte_jobstats_rte_mem_virt2phy.load(self.lib)
        self.rte_mem_virt2iova = rte_jobstats_rte_mem_virt2iova.load(self.lib)
        self.rte_mem_iova2virt = rte_jobstats_rte_mem_iova2virt.load(self.lib)
        self.rte_mem_virt2memseg = rte_jobstats_rte_mem_virt2memseg.load(self.lib)
        self.rte_mem_virt2memseg_list = rte_jobstats_rte_mem_virt2memseg_list.load(self.lib)
        self.rte_memseg_walk = rte_jobstats_rte_memseg_walk.load(self.lib)
        self.rte_memseg_contig_walk = rte_jobstats_rte_memseg_contig_walk.load(self.lib)
        self.rte_memseg_list_walk = rte_jobstats_rte_memseg_list_walk.load(self.lib)
        self.rte_memseg_walk_thread_unsafe = rte_jobstats_rte_memseg_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_contig_walk_thread_unsafe = rte_jobstats_rte_memseg_contig_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_list_walk_thread_unsafe = rte_jobstats_rte_memseg_list_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_get_fd = rte_jobstats_rte_memseg_get_fd.load(self.lib)
        self.rte_memseg_get_fd_thread_unsafe = rte_jobstats_rte_memseg_get_fd_thread_unsafe.load(self.lib)
        self.rte_memseg_get_fd_offset = rte_jobstats_rte_memseg_get_fd_offset.load(self.lib)
        self.rte_memseg_get_fd_offset_thread_unsafe = rte_jobstats_rte_memseg_get_fd_offset_thread_unsafe.load(self.lib)
        self.rte_extmem_register = rte_jobstats_rte_extmem_register.load(self.lib)
        self.rte_extmem_unregister = rte_jobstats_rte_extmem_unregister.load(self.lib)
        self.rte_extmem_attach = rte_jobstats_rte_extmem_attach.load(self.lib)
        self.rte_extmem_detach = rte_jobstats_rte_extmem_detach.load(self.lib)
        self.rte_dump_physmem_layout = rte_jobstats_rte_dump_physmem_layout.load(self.lib)
        self.rte_eal_get_physmem_size = rte_jobstats_rte_eal_get_physmem_size.load(self.lib)
        self.rte_memory_get_nchannel = rte_jobstats_rte_memory_get_nchannel.load(self.lib)
        self.rte_memory_get_nrank = rte_jobstats_rte_memory_get_nrank.load(self.lib)
        self.rte_mem_check_dma_mask = rte_jobstats_rte_mem_check_dma_mask.load(self.lib)
        self.rte_mem_check_dma_mask_thread_unsafe = rte_jobstats_rte_mem_check_dma_mask_thread_unsafe.load(self.lib)
        self.rte_mem_set_dma_mask = rte_jobstats_rte_mem_set_dma_mask.load(self.lib)
        self.rte_eal_using_phys_addrs = rte_jobstats_rte_eal_using_phys_addrs.load(self.lib)
        self.rte_mem_event_callback_register = rte_jobstats_rte_mem_event_callback_register.load(self.lib)
        self.rte_mem_event_callback_unregister = rte_jobstats_rte_mem_event_callback_unregister.load(self.lib)
        self.rte_mem_alloc_validator_register = rte_jobstats_rte_mem_alloc_validator_register.load(self.lib)
        self.rte_mem_alloc_validator_unregister = rte_jobstats_rte_mem_alloc_validator_unregister.load(self.lib)
        self.rte_memzero_explicit = rte_jobstats_rte_memzero_explicit.load(self.lib)
        self.rte_jobstats_context_init = rte_jobstats_rte_jobstats_context_init.load(self.lib)
        self.rte_jobstats_context_start = rte_jobstats_rte_jobstats_context_start.load(self.lib)
        self.rte_jobstats_context_finish = rte_jobstats_rte_jobstats_context_finish.load(self.lib)
        self.rte_jobstats_context_reset = rte_jobstats_rte_jobstats_context_reset.load(self.lib)
        self.rte_jobstats_init = rte_jobstats_rte_jobstats_init.load(self.lib)
        self.rte_jobstats_set_target = rte_jobstats_rte_jobstats_set_target.load(self.lib)
        self.rte_jobstats_start = rte_jobstats_rte_jobstats_start.load(self.lib)
        self.rte_jobstats_abort = rte_jobstats_rte_jobstats_abort.load(self.lib)
        self.rte_jobstats_finish = rte_jobstats_rte_jobstats_finish.load(self.lib)
        self.rte_jobstats_set_period = rte_jobstats_rte_jobstats_set_period.load(self.lib)
        self.rte_jobstats_set_min = rte_jobstats_rte_jobstats_set_min.load(self.lib)
        self.rte_jobstats_set_max = rte_jobstats_rte_jobstats_set_max.load(self.lib)
        self.rte_jobstats_set_update_period_function = rte_jobstats_rte_jobstats_set_update_period_function.load(self.lib)
        self.rte_jobstats_reset = rte_jobstats_rte_jobstats_reset.load(self.lib)

