
from sys.ffi import DLHandle
from sys import ffi
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from pathlib import Path
from c_binder_mojo.stdlib_ext import C_Union
from utils import StaticTuple

# # Node: TranslationUnitDecl()
alias __int128_t = Int128
alias __uint128_t = UInt128
struct __NSConstantString_tag(ExplicitlyCopyable & Copyable & Movable):
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
struct __va_list(ExplicitlyCopyable & Copyable & Movable):
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
struct anonomous_record_8(ExplicitlyCopyable & Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_8

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
alias anonomous_record_9 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_10(ExplicitlyCopyable & Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_9

alias __mbstate_t = anonomous_record_10

struct _G_fpos_t(ExplicitlyCopyable & Copyable & Movable):
	var __pos : ffi.c_long

	var __state : __mbstate_t

alias __fpos_t = _G_fpos_t

struct _G_fpos64_t(ExplicitlyCopyable & Copyable & Movable):
	var __pos : ffi.c_long

	var __state : __mbstate_t

alias __fpos64_t = _G_fpos64_t

struct _IO_FILE(ExplicitlyCopyable & Copyable & Movable):
	pass
alias __FILE = _IO_FILE

alias FILE = _IO_FILE

struct _IO_marker(ExplicitlyCopyable & Copyable & Movable):
	pass
struct _IO_codecvt(ExplicitlyCopyable & Copyable & Movable):
	pass
struct _IO_wide_data(ExplicitlyCopyable & Copyable & Movable):
	pass
alias _IO_lock_t = NoneType
alias off_t = __off_t
alias ssize_t = __ssize_t
alias fpos_t = __fpos_t
alias stdin = UnsafePointer[FILE]
alias stdout = UnsafePointer[FILE]
alias stderr = UnsafePointer[FILE]
alias remove = fn (read UnsafePointer[Int8]) -> Int32
alias rename = fn (read UnsafePointer[Int8], read UnsafePointer[Int8]) -> Int32
alias renameat = fn (Int32, read UnsafePointer[Int8], Int32, read UnsafePointer[Int8]) -> Int32
alias fclose = fn (UnsafePointer[FILE]) -> Int32
alias tmpfile = fn (NoneType) -> UnsafePointer[FILE]
alias tmpnam = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias tmpnam_r = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias tempnam = fn (read UnsafePointer[Int8], read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias fflush = fn (UnsafePointer[FILE]) -> Int32
alias fflush_unlocked = fn (UnsafePointer[FILE]) -> Int32
alias fopen = fn (read UnsafePointer[Int8], read UnsafePointer[Int8]) -> UnsafePointer[FILE]
alias freopen = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], UnsafePointer[FILE]) -> UnsafePointer[FILE]
alias fdopen = fn (Int32, read UnsafePointer[Int8]) -> UnsafePointer[FILE]
alias fmemopen = fn (OpaquePointer, size_t, read UnsafePointer[Int8]) -> UnsafePointer[FILE]
alias open_memstream = fn (UnsafePointer[UnsafePointer[Int8]], UnsafePointer[size_t]) -> UnsafePointer[FILE]
alias setbuf = fn (UnsafePointer[FILE], UnsafePointer[Int8]) -> NoneType
alias setvbuf = fn (UnsafePointer[FILE], UnsafePointer[Int8], Int32, size_t) -> Int32
alias setbuffer = fn (UnsafePointer[FILE], UnsafePointer[Int8], size_t) -> NoneType
alias setlinebuf = fn (UnsafePointer[FILE]) -> NoneType
alias fprintf = fn (UnsafePointer[FILE], read *UnsafePointer[Int8]) -> Int32
alias printf = fn (read *UnsafePointer[Int8]) -> Int32
alias sprintf = fn (UnsafePointer[Int8], read *UnsafePointer[Int8]) -> Int32
alias vfprintf = fn (UnsafePointer[FILE], read UnsafePointer[Int8], __builtin_va_list) -> Int32
alias vprintf = fn (read UnsafePointer[Int8], __builtin_va_list) -> Int32
alias vsprintf = fn (UnsafePointer[Int8], read UnsafePointer[Int8], __builtin_va_list) -> Int32
alias snprintf = fn (UnsafePointer[Int8], ffi.c_ulong, read *UnsafePointer[Int8]) -> Int32
alias vsnprintf = fn (UnsafePointer[Int8], ffi.c_ulong, read UnsafePointer[Int8], __builtin_va_list) -> Int32
alias vdprintf = fn (Int32, read UnsafePointer[Int8], __gnuc_va_list) -> Int32
alias dprintf = fn (Int32, read *UnsafePointer[Int8]) -> Int32
alias fscanf = fn (UnsafePointer[FILE], read *UnsafePointer[Int8]) -> Int32
alias scanf = fn (read *UnsafePointer[Int8]) -> Int32
alias sscanf = fn (read UnsafePointer[Int8], read *UnsafePointer[Int8]) -> Int32
alias _Float128 = Float64
alias _Float32 = Float32
alias _Float64 = Float64
alias _Float32x = Float64
alias _Float64x = Float64
alias vfscanf = fn (UnsafePointer[FILE], read UnsafePointer[Int8], __builtin_va_list) -> Int32
alias vscanf = fn (read UnsafePointer[Int8], __builtin_va_list) -> Int32
alias vsscanf = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], __builtin_va_list) -> Int32
alias fgetc = fn (UnsafePointer[FILE]) -> Int32
alias getc = fn (UnsafePointer[FILE]) -> Int32
alias getchar = fn (NoneType) -> Int32
alias getc_unlocked = fn (UnsafePointer[FILE]) -> Int32
alias getchar_unlocked = fn (NoneType) -> Int32
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
alias fputs = fn (read UnsafePointer[Int8], UnsafePointer[FILE]) -> Int32
alias puts = fn (read UnsafePointer[Int8]) -> Int32
alias ungetc = fn (Int32, UnsafePointer[FILE]) -> Int32
alias fread = fn (OpaquePointer, ffi.c_ulong, ffi.c_ulong, UnsafePointer[FILE]) -> ffi.c_ulong
alias fwrite = fn (read OpaquePointer, ffi.c_ulong, ffi.c_ulong, UnsafePointer[FILE]) -> ffi.c_ulong
alias fread_unlocked = fn (OpaquePointer, size_t, size_t, UnsafePointer[FILE]) -> size_t
alias fwrite_unlocked = fn (read OpaquePointer, size_t, size_t, UnsafePointer[FILE]) -> size_t
alias fseek = fn (UnsafePointer[FILE], ffi.c_long, Int32) -> Int32
alias ftell = fn (UnsafePointer[FILE]) -> ffi.c_long
alias rewind = fn (UnsafePointer[FILE]) -> NoneType
alias fseeko = fn (UnsafePointer[FILE], __off_t, Int32) -> Int32
alias ftello = fn (UnsafePointer[FILE]) -> __off_t
alias fgetpos = fn (UnsafePointer[FILE], UnsafePointer[fpos_t]) -> Int32
alias fsetpos = fn (UnsafePointer[FILE], read UnsafePointer[fpos_t]) -> Int32
alias clearerr = fn (UnsafePointer[FILE]) -> NoneType
alias feof = fn (UnsafePointer[FILE]) -> Int32
alias ferror = fn (UnsafePointer[FILE]) -> Int32
alias clearerr_unlocked = fn (UnsafePointer[FILE]) -> NoneType
alias feof_unlocked = fn (UnsafePointer[FILE]) -> Int32
alias ferror_unlocked = fn (UnsafePointer[FILE]) -> Int32
alias perror = fn (read UnsafePointer[Int8]) -> NoneType
alias fileno = fn (UnsafePointer[FILE]) -> Int32
alias fileno_unlocked = fn (UnsafePointer[FILE]) -> Int32
alias pclose = fn (UnsafePointer[FILE]) -> Int32
alias popen = fn (read UnsafePointer[Int8], read UnsafePointer[Int8]) -> UnsafePointer[FILE]
alias ctermid = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias flockfile = fn (UnsafePointer[FILE]) -> NoneType
alias ftrylockfile = fn (UnsafePointer[FILE]) -> Int32
alias funlockfile = fn (UnsafePointer[FILE]) -> NoneType
alias __uflow = fn (UnsafePointer[FILE]) -> Int32
alias __overflow = fn (UnsafePointer[FILE], Int32) -> Int32
alias ptrdiff_t = ffi.c_long
alias wchar_t = UInt32
struct anonomous_record_11(ExplicitlyCopyable & Copyable & Movable):
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_11

alias __assert_fail = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], UInt32, read UnsafePointer[Int8]) -> NoneType
alias __assert_perror_fail = fn (Int32, read UnsafePointer[Int8], UInt32, read UnsafePointer[Int8]) -> NoneType
alias __assert = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], Int32) -> NoneType
alias alloca = fn (ffi.c_ulong) -> OpaquePointer
alias time_t = __time_t
struct timespec(ExplicitlyCopyable & Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_nsec : ffi.c_long

alias pid_t = __pid_t
struct sched_param(ExplicitlyCopyable & Copyable & Movable):
	var sched_priority : Int32

alias __cpu_mask = ffi.c_ulong
struct anonomous_record_12(ExplicitlyCopyable & Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_12

alias __sched_cpucount = fn (size_t, read UnsafePointer[cpu_set_t]) -> Int32
alias __sched_cpualloc = fn (size_t) -> UnsafePointer[cpu_set_t]
alias __sched_cpufree = fn (UnsafePointer[cpu_set_t]) -> NoneType
alias sched_setparam = fn (__pid_t, read UnsafePointer[sched_param]) -> Int32
alias sched_getparam = fn (__pid_t, UnsafePointer[sched_param]) -> Int32
alias sched_setscheduler = fn (__pid_t, Int32, read UnsafePointer[sched_param]) -> Int32
alias sched_getscheduler = fn (__pid_t) -> Int32
alias sched_yield = fn (NoneType) -> Int32
alias sched_get_priority_max = fn (Int32) -> Int32
alias sched_get_priority_min = fn (Int32) -> Int32
alias sched_rr_get_interval = fn (__pid_t, UnsafePointer[timespec]) -> Int32
alias unaligned_uint64_t = uint64_t
alias unaligned_uint32_t = uint32_t
alias unaligned_uint16_t = uint16_t
alias rte_is_aligned = fn (read OpaquePointer, read UInt32) -> Int32
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

alias RTE_MARKER = 	# # Node: PlaceHolder()
	# {"id":"0x4066e6e0","inner":[{"id":"0x404b0e60","inner":[{"id":"0x404b0120","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"void *[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Generic marker for any place in a structure. 

alias RTE_MARKER8 = 	# # Node: PlaceHolder()
	# {"id":"0x4066e870","inner":[{"decl":{"id":"0x405ae338","kind":"TypedefDecl","name":"uint8_t"},"id":"0x4066e7d0","inner":[{"decl":{"id":"0x40556760","kind":"TypedefDecl","name":"__uint8_t"},"id":"0x405a3cf0","inner":[{"id":"0x404b0220","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"TypedefType","type":{"qualType":"__uint8_t"}}],"kind":"TypedefType","type":{"qualType":"uint8_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint8_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 1B alignment in a structure. 

alias RTE_MARKER16 = 	# # Node: PlaceHolder()
	# {"id":"0x4066e9d0","inner":[{"decl":{"id":"0x405ae3a0","kind":"TypedefDecl","name":"uint16_t"},"id":"0x40642ef0","inner":[{"decl":{"id":"0x40556840","kind":"TypedefDecl","name":"__uint16_t"},"id":"0x405a3e10","inner":[{"id":"0x404b0240","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"TypedefType","type":{"qualType":"__uint16_t"}}],"kind":"TypedefType","type":{"qualType":"uint16_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint16_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 2B alignment in a structure. 

alias RTE_MARKER32 = 	# # Node: PlaceHolder()
	# {"id":"0x4066eb30","inner":[{"decl":{"id":"0x405ae408","kind":"TypedefDecl","name":"uint32_t"},"id":"0x40642e60","inner":[{"decl":{"id":"0x40556920","kind":"TypedefDecl","name":"__uint32_t"},"id":"0x405a3f30","inner":[{"id":"0x404b0260","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"__uint32_t"}}],"kind":"TypedefType","type":{"qualType":"uint32_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint32_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 4B alignment in a structure. 

alias RTE_MARKER64 = 	# # Node: PlaceHolder()
	# {"id":"0x40674310","inner":[{"decl":{"id":"0x405ae470","kind":"TypedefDecl","name":"uint64_t"},"id":"0x40642dd0","inner":[{"decl":{"id":"0x40556a00","kind":"TypedefDecl","name":"__uint64_t"},"id":"0x405a4050","inner":[{"id":"0x404b0280","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uint64_t"}}],"kind":"TypedefType","type":{"qualType":"uint64_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint64_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 8B alignment in a structure. 

alias rte_str_to_size = fn (read UnsafePointer[Int8]) -> ffi.c_ulong_long
alias rte_size_to_str = fn (UnsafePointer[Int8], Int32, ffi.c_ulong_long, Bool, read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_exit = fn (Int32, read *UnsafePointer[Int8]) -> NoneType
alias rte_openlog_stream = fn (UnsafePointer[FILE]) -> Int32
alias rte_log_get_stream = fn (NoneType) -> UnsafePointer[FILE]
alias rte_log_set_global_level = fn (ffi.c_ulong) -> NoneType
alias rte_log_get_global_level = fn (NoneType) -> ffi.c_ulong
alias rte_log_get_level = fn (ffi.c_ulong) -> Int32
alias rte_log_can_log = fn (ffi.c_ulong, ffi.c_ulong) -> Bool
alias rte_log_set_level_pattern = fn (read UnsafePointer[Int8], ffi.c_ulong) -> Int32
alias rte_log_set_level_regexp = fn (read UnsafePointer[Int8], ffi.c_ulong) -> Int32
alias rte_log_set_level = fn (ffi.c_ulong, ffi.c_ulong) -> Int32
alias rte_log_cur_msg_loglevel = fn (NoneType) -> Int32
alias rte_log_cur_msg_logtype = fn (NoneType) -> Int32
alias rte_log_register = fn (read UnsafePointer[Int8]) -> Int32
alias rte_log_register_type_and_pick_level = fn (read UnsafePointer[Int8], ffi.c_ulong) -> Int32
alias rte_log_list_types = fn (UnsafePointer[FILE], read UnsafePointer[Int8]) -> NoneType
alias rte_log_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_log = fn (ffi.c_ulong, ffi.c_ulong, read *UnsafePointer[Int8]) -> Int32
alias rte_vlog = fn (ffi.c_ulong, ffi.c_ulong, read UnsafePointer[Int8], va_list) -> Int32
alias rte_dump_stack = fn (NoneType) -> NoneType
alias __rte_panic = fn (read UnsafePointer[Int8], read *UnsafePointer[Int8]) -> NoneType
alias rte_memory_order = Int32
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The memory order is an integer type in GCC built-ins,
# Node: TextComment()
#  not an enumerated type like in C11.

alias rte_bit_relaxed_get32 = fn (UInt32, UnsafePointer[ffi.c_ulong]) -> ffi.c_ulong
alias rte_bit_relaxed_set32 = fn (UInt32, UnsafePointer[ffi.c_ulong]) -> NoneType
alias rte_bit_relaxed_clear32 = fn (UInt32, UnsafePointer[ffi.c_ulong]) -> NoneType
alias rte_bit_relaxed_test_and_set32 = fn (UInt32, UnsafePointer[ffi.c_ulong]) -> ffi.c_ulong
alias rte_bit_relaxed_test_and_clear32 = fn (UInt32, UnsafePointer[ffi.c_ulong]) -> ffi.c_ulong
alias rte_bit_relaxed_get64 = fn (UInt32, UnsafePointer[ffi.c_ulong_long]) -> ffi.c_ulong_long
alias rte_bit_relaxed_set64 = fn (UInt32, UnsafePointer[ffi.c_ulong_long]) -> NoneType
alias rte_bit_relaxed_clear64 = fn (UInt32, UnsafePointer[ffi.c_ulong_long]) -> NoneType
alias rte_bit_relaxed_test_and_set64 = fn (UInt32, UnsafePointer[ffi.c_ulong_long]) -> ffi.c_ulong_long
alias rte_bit_relaxed_test_and_clear64 = fn (UInt32, UnsafePointer[ffi.c_ulong_long]) -> ffi.c_ulong_long
alias rte_clz32 = fn (ffi.c_ulong) -> UInt32
alias __builtin_clz = fn (UInt32) -> Int32
alias rte_clz64 = fn (ffi.c_ulong_long) -> UInt32
alias __builtin_clzll = fn (ffi.c_ulong_long) -> Int32
alias rte_ctz32 = fn (ffi.c_ulong) -> UInt32
alias __builtin_ctz = fn (UInt32) -> Int32
alias rte_ctz64 = fn (ffi.c_ulong_long) -> UInt32
alias __builtin_ctzll = fn (ffi.c_ulong_long) -> Int32
alias rte_popcount32 = fn (ffi.c_ulong) -> UInt32
alias __builtin_popcount = fn (UInt32) -> Int32
alias rte_popcount64 = fn (ffi.c_ulong_long) -> UInt32
alias __builtin_popcountll = fn (ffi.c_ulong_long) -> Int32
alias rte_ffs32 = fn (ffi.c_ulong) -> UInt32
alias __builtin_ffs = fn (Int32) -> Int32
alias rte_ffs64 = fn (ffi.c_ulong_long) -> UInt32
alias __builtin_ffsll = fn (ffi.c_long_long) -> Int32
alias rte_combine32ms1b = fn (ffi.c_ulong) -> ffi.c_ulong
alias rte_combine64ms1b = fn (ffi.c_ulong_long) -> ffi.c_ulong_long
alias rte_bsf32 = fn (ffi.c_ulong) -> ffi.c_ulong
alias rte_bsf32_safe = fn (ffi.c_ulong, UnsafePointer[ffi.c_ulong]) -> Int32
alias rte_bsf64 = fn (ffi.c_ulong_long) -> ffi.c_ulong
alias rte_bsf64_safe = fn (ffi.c_ulong_long, UnsafePointer[ffi.c_ulong]) -> Int32
alias rte_fls_u32 = fn (ffi.c_ulong) -> ffi.c_ulong
alias rte_fls_u64 = fn (ffi.c_ulong_long) -> ffi.c_ulong
alias rte_is_power_of_2 = fn (ffi.c_ulong) -> Int32
alias rte_align32pow2 = fn (ffi.c_ulong) -> ffi.c_ulong
alias rte_align32prevpow2 = fn (ffi.c_ulong) -> ffi.c_ulong
alias rte_align64pow2 = fn (ffi.c_ulong_long) -> ffi.c_ulong_long
alias rte_align64prevpow2 = fn (ffi.c_ulong_long) -> ffi.c_ulong_long
alias rte_log2_u32 = fn (ffi.c_ulong) -> ffi.c_ulong
alias rte_log2_u64 = fn (ffi.c_ulong_long) -> ffi.c_ulong
alias __errno_location = fn (NoneType) -> UnsafePointer[Int32]
alias rte_atomic_thread_fence = fn (rte_memory_order) -> NoneType
alias rte_atomic16_cmpset = fn (UnsafePointer[UInt16], UInt16, UInt16) -> Int32
alias __sync_bool_compare_and_swap = fn () -> NoneType
alias __sync_bool_compare_and_swap_2 = fn (UnsafePointer[Int16], Int16, *Int16) -> Bool
alias rte_atomic16_exchange = fn (UnsafePointer[UInt16], UInt16) -> UInt16
alias __atomic_exchange_n = fn () -> NoneType
struct anonomous_record_13(ExplicitlyCopyable & Copyable & Movable):

	var cnt : Int16

alias rte_atomic16_t = anonomous_record_13

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The atomic counter structure.

alias rte_atomic16_init = fn (UnsafePointer[rte_atomic16_t]) -> NoneType
alias rte_atomic16_read = fn (read UnsafePointer[rte_atomic16_t]) -> Int16
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
alias rte_atomic32_cmpset = fn (UnsafePointer[ffi.c_ulong], ffi.c_ulong, ffi.c_ulong) -> Int32
alias __sync_bool_compare_and_swap_4 = fn (UnsafePointer[Int32], Int32, *Int32) -> Bool
alias rte_atomic32_exchange = fn (UnsafePointer[ffi.c_ulong], ffi.c_ulong) -> ffi.c_ulong
struct anonomous_record_14(ExplicitlyCopyable & Copyable & Movable):

	var cnt : Int32

alias rte_atomic32_t = anonomous_record_14

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The atomic counter structure.

alias rte_atomic32_init = fn (UnsafePointer[rte_atomic32_t]) -> NoneType
alias rte_atomic32_read = fn (read UnsafePointer[rte_atomic32_t]) -> ffi.c_long
alias rte_atomic32_set = fn (UnsafePointer[rte_atomic32_t], ffi.c_long) -> NoneType
alias rte_atomic32_add = fn (UnsafePointer[rte_atomic32_t], ffi.c_long) -> NoneType
alias rte_atomic32_sub = fn (UnsafePointer[rte_atomic32_t], ffi.c_long) -> NoneType
alias rte_atomic32_inc = fn (UnsafePointer[rte_atomic32_t]) -> NoneType
alias rte_atomic32_dec = fn (UnsafePointer[rte_atomic32_t]) -> NoneType
alias rte_atomic32_add_return = fn (UnsafePointer[rte_atomic32_t], ffi.c_long) -> ffi.c_long
alias rte_atomic32_sub_return = fn (UnsafePointer[rte_atomic32_t], ffi.c_long) -> ffi.c_long
alias rte_atomic32_inc_and_test = fn (UnsafePointer[rte_atomic32_t]) -> Int32
alias rte_atomic32_dec_and_test = fn (UnsafePointer[rte_atomic32_t]) -> Int32
alias rte_atomic32_test_and_set = fn (UnsafePointer[rte_atomic32_t]) -> Int32
alias rte_atomic32_clear = fn (UnsafePointer[rte_atomic32_t]) -> NoneType
alias rte_atomic64_cmpset = fn (UnsafePointer[ffi.c_ulong_long], ffi.c_ulong_long, ffi.c_ulong_long) -> Int32
alias __sync_bool_compare_and_swap_8 = fn (UnsafePointer[ffi.c_long_long], ffi.c_long_long, *ffi.c_long_long) -> Bool
alias rte_atomic64_exchange = fn (UnsafePointer[ffi.c_ulong_long], ffi.c_ulong_long) -> ffi.c_ulong_long
struct anonomous_record_15(ExplicitlyCopyable & Copyable & Movable):

	var cnt : ffi.c_long

alias rte_atomic64_t = anonomous_record_15

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The atomic counter structure.

alias rte_atomic64_init = fn (UnsafePointer[rte_atomic64_t]) -> NoneType
alias rte_atomic64_read = fn (UnsafePointer[rte_atomic64_t]) -> ffi.c_long_long
alias rte_atomic64_set = fn (UnsafePointer[rte_atomic64_t], ffi.c_long_long) -> NoneType
alias rte_atomic64_add = fn (UnsafePointer[rte_atomic64_t], ffi.c_long_long) -> NoneType
alias rte_atomic64_sub = fn (UnsafePointer[rte_atomic64_t], ffi.c_long_long) -> NoneType
alias rte_atomic64_inc = fn (UnsafePointer[rte_atomic64_t]) -> NoneType
alias rte_atomic64_dec = fn (UnsafePointer[rte_atomic64_t]) -> NoneType
alias rte_atomic64_add_return = fn (UnsafePointer[rte_atomic64_t], ffi.c_long_long) -> ffi.c_long_long
alias rte_atomic64_sub_return = fn (UnsafePointer[rte_atomic64_t], ffi.c_long_long) -> ffi.c_long_long
alias rte_atomic64_inc_and_test = fn (UnsafePointer[rte_atomic64_t]) -> Int32
alias rte_atomic64_dec_and_test = fn (UnsafePointer[rte_atomic64_t]) -> Int32
alias rte_atomic64_test_and_set = fn (UnsafePointer[rte_atomic64_t]) -> Int32
alias rte_atomic64_clear = fn (UnsafePointer[rte_atomic64_t]) -> NoneType
alias anonomous_record_16 = C_Union[InlineArray[ffi.c_ulong_long, 2], Int128]

struct anonomous_record_17(ExplicitlyCopyable & Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x406f3160","inner":[{"id":"0x406f3140","inner":[{"id":"0x406f3080","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}},"end":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}}},"type":{"qualType":"int"},"value":"16","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}},"end":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}}},"type":{"qualType":"int"},"value":"16","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":16,"file":"dpdk/lib/eal/include/generic/rte_atomic.h","includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"line":1101,"offset":25559,"tokLen":13},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":16,"file":"dpdk/lib/eal/include/generic/rte_atomic.h","includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"line":1101,"offset":25559,"tokLen":13},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":121,"offset":3797,"tokLen":1}}}}


	var union_placeholder_1 : anonomous_record_16



alias rte_int128_t = anonomous_record_17

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  128-bit integer structure.

alias __atomic_thread_fence = fn (Int32) -> NoneType
alias rte_atomic128_cmp_exchange = fn (UnsafePointer[rte_int128_t], UnsafePointer[rte_int128_t], read UnsafePointer[rte_int128_t], UInt32, Int32, Int32) -> Int32
alias __builtin_expect = fn (ffi.c_long, ffi.c_long) -> ffi.c_long
alias rte_pause = fn (NoneType) -> NoneType
alias rte_wait_until_equal_16 = fn (UnsafePointer[UInt16], UInt16, rte_memory_order) -> NoneType
alias rte_wait_until_equal_32 = fn (UnsafePointer[ffi.c_ulong], ffi.c_ulong, rte_memory_order) -> NoneType
alias rte_wait_until_equal_64 = fn (UnsafePointer[ffi.c_ulong_long], ffi.c_ulong_long, rte_memory_order) -> NoneType
alias __atomic_load_n = fn () -> NoneType
struct anonomous_record_18(ExplicitlyCopyable & Copyable & Movable):
	var cnt : Int32

alias rte_rwlock_t = anonomous_record_18

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
struct tm(ExplicitlyCopyable & Copyable & Movable):
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
struct itimerspec(ExplicitlyCopyable & Copyable & Movable):
	var it_interval : timespec

	var it_value : timespec

struct sigevent(ExplicitlyCopyable & Copyable & Movable):
	pass
struct __locale_data(ExplicitlyCopyable & Copyable & Movable):
	pass
struct __locale_struct(ExplicitlyCopyable & Copyable & Movable):
	var __locales : __locale_data

	var __ctype_b : UnsafePointer[UInt16]

	var __ctype_tolower : UnsafePointer[Int32]

	var __ctype_toupper : UnsafePointer[Int32]

	var __names : InlineArray[UnsafePointer[Int8], 13]

alias __locale_t = UnsafePointer[__locale_struct]
alias locale_t = __locale_t
alias clock = fn (NoneType) -> clock_t
alias time = fn (UnsafePointer[time_t]) -> time_t
alias difftime = fn (time_t, time_t) -> Float64
alias mktime = fn (UnsafePointer[tm]) -> time_t
alias strftime = fn (UnsafePointer[Int8], size_t, read UnsafePointer[Int8], read UnsafePointer[tm]) -> size_t
alias strftime_l = fn (UnsafePointer[Int8], size_t, read UnsafePointer[Int8], read UnsafePointer[tm], locale_t) -> size_t
alias gmtime = fn (read UnsafePointer[time_t]) -> UnsafePointer[tm]
alias localtime = fn (read UnsafePointer[time_t]) -> UnsafePointer[tm]
alias gmtime_r = fn (read UnsafePointer[time_t], UnsafePointer[tm]) -> UnsafePointer[tm]
alias localtime_r = fn (read UnsafePointer[time_t], UnsafePointer[tm]) -> UnsafePointer[tm]
alias asctime = fn (read UnsafePointer[tm]) -> UnsafePointer[Int8]
alias ctime = fn (read UnsafePointer[time_t]) -> UnsafePointer[Int8]
alias asctime_r = fn (read UnsafePointer[tm], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias ctime_r = fn (read UnsafePointer[time_t], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias __tzname = InlineArray[UnsafePointer[Int8], 2]
alias __daylight = Int32
alias __timezone = ffi.c_long
alias tzname = InlineArray[UnsafePointer[Int8], 2]
alias tzset = fn (NoneType) -> NoneType
alias daylight = Int32
alias timezone = ffi.c_long
alias timegm = fn (UnsafePointer[tm]) -> time_t
alias timelocal = fn (UnsafePointer[tm]) -> time_t
alias dysize = fn (Int32) -> Int32
alias nanosleep = fn (read UnsafePointer[timespec], UnsafePointer[timespec]) -> Int32
alias clock_getres = fn (clockid_t, UnsafePointer[timespec]) -> Int32
alias clock_gettime = fn (clockid_t, UnsafePointer[timespec]) -> Int32
alias clock_settime = fn (clockid_t, read UnsafePointer[timespec]) -> Int32
alias clock_nanosleep = fn (clockid_t, Int32, read UnsafePointer[timespec], UnsafePointer[timespec]) -> Int32
alias clock_getcpuclockid = fn (pid_t, UnsafePointer[clockid_t]) -> Int32
alias timer_create = fn (clockid_t, UnsafePointer[sigevent], UnsafePointer[timer_t]) -> Int32
alias timer_delete = fn (timer_t) -> Int32
alias timer_settime = fn (timer_t, Int32, read UnsafePointer[itimerspec], UnsafePointer[itimerspec]) -> Int32
alias timer_gettime = fn (timer_t, UnsafePointer[itimerspec]) -> Int32
alias timer_getoverrun = fn (timer_t) -> Int32
alias timespec_get = fn (UnsafePointer[timespec], Int32) -> Int32
alias memcpy = fn (OpaquePointer, read OpaquePointer, ffi.c_ulong) -> OpaquePointer
alias memmove = fn (OpaquePointer, read OpaquePointer, ffi.c_ulong) -> OpaquePointer
alias memccpy = fn (OpaquePointer, read OpaquePointer, Int32, ffi.c_ulong) -> OpaquePointer
alias memset = fn (OpaquePointer, Int32, ffi.c_ulong) -> OpaquePointer
alias memcmp = fn (read OpaquePointer, read OpaquePointer, ffi.c_ulong) -> Int32
alias __memcmpeq = fn (read OpaquePointer, read OpaquePointer, size_t) -> Int32
alias memchr = fn (read OpaquePointer, Int32, ffi.c_ulong) -> OpaquePointer
alias strcpy = fn (UnsafePointer[Int8], read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias strncpy = fn (UnsafePointer[Int8], read UnsafePointer[Int8], ffi.c_ulong) -> UnsafePointer[Int8]
alias strcat = fn (UnsafePointer[Int8], read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias strncat = fn (UnsafePointer[Int8], read UnsafePointer[Int8], ffi.c_ulong) -> UnsafePointer[Int8]
alias strcmp = fn (read UnsafePointer[Int8], read UnsafePointer[Int8]) -> Int32
alias strncmp = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], ffi.c_ulong) -> Int32
alias strcoll = fn (read UnsafePointer[Int8], read UnsafePointer[Int8]) -> Int32
alias strxfrm = fn (UnsafePointer[Int8], read UnsafePointer[Int8], ffi.c_ulong) -> ffi.c_ulong
alias strcoll_l = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], locale_t) -> Int32
alias strxfrm_l = fn (UnsafePointer[Int8], read UnsafePointer[Int8], size_t, locale_t) -> size_t
alias strdup = fn (read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias strndup = fn (read UnsafePointer[Int8], ffi.c_ulong) -> UnsafePointer[Int8]
alias strchr = fn (read UnsafePointer[Int8], Int32) -> UnsafePointer[Int8]
alias strrchr = fn (read UnsafePointer[Int8], Int32) -> UnsafePointer[Int8]
alias strcspn = fn (read UnsafePointer[Int8], read UnsafePointer[Int8]) -> ffi.c_ulong
alias strspn = fn (read UnsafePointer[Int8], read UnsafePointer[Int8]) -> ffi.c_ulong
alias strpbrk = fn (read UnsafePointer[Int8], read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias strstr = fn (read UnsafePointer[Int8], read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias strtok = fn (UnsafePointer[Int8], read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias __strtok_r = fn (UnsafePointer[Int8], read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> UnsafePointer[Int8]
alias strtok_r = fn (UnsafePointer[Int8], read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> UnsafePointer[Int8]
alias strlen = fn (read UnsafePointer[Int8]) -> ffi.c_ulong
alias strnlen = fn (read UnsafePointer[Int8], size_t) -> size_t
alias strerror = fn (Int32) -> UnsafePointer[Int8]
alias strerror_r = fn (Int32, UnsafePointer[Int8], size_t) -> Int32
alias strerror_l = fn (Int32, locale_t) -> UnsafePointer[Int8]
alias bcmp = fn (read OpaquePointer, read OpaquePointer, ffi.c_ulong) -> Int32
alias bcopy = fn (read OpaquePointer, OpaquePointer, size_t) -> NoneType
alias bzero = fn (OpaquePointer, ffi.c_ulong) -> NoneType
alias index = fn (read UnsafePointer[Int8], Int32) -> UnsafePointer[Int8]
alias rindex = fn (read UnsafePointer[Int8], Int32) -> UnsafePointer[Int8]
alias ffs = fn (Int32) -> Int32
alias ffsl = fn (ffi.c_long) -> Int32
alias ffsll = fn (ffi.c_long_long) -> Int32
alias strcasecmp = fn (read UnsafePointer[Int8], read UnsafePointer[Int8]) -> Int32
alias strncasecmp = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], ffi.c_ulong) -> Int32
alias strcasecmp_l = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], locale_t) -> Int32
alias strncasecmp_l = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], size_t, locale_t) -> Int32
alias explicit_bzero = fn (OpaquePointer, size_t) -> NoneType
alias strsep = fn (UnsafePointer[UnsafePointer[Int8]], read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias strsignal = fn (Int32) -> UnsafePointer[Int8]
alias __stpcpy = fn (UnsafePointer[Int8], read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias stpcpy = fn (UnsafePointer[Int8], read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias __stpncpy = fn (UnsafePointer[Int8], read UnsafePointer[Int8], size_t) -> UnsafePointer[Int8]
alias stpncpy = fn (UnsafePointer[Int8], read UnsafePointer[Int8], ffi.c_ulong) -> UnsafePointer[Int8]
alias rte_uuid_t = 	# # Node: PlaceHolder()
	# {"id":"0x40743d70","inner":[{"id":"0x404b0220","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"ConstantArrayType","size":16,"type":{"qualType":"unsigned char[16]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Struct describing a Universal Unique Identifier

alias rte_uuid_is_null = fn (read UnsafePointer[UInt8]) -> Bool
alias rte_uuid_copy = fn (UnsafePointer[UInt8], read UnsafePointer[UInt8]) -> NoneType
alias rte_uuid_compare = fn (read UnsafePointer[UInt8], read UnsafePointer[UInt8]) -> Int32
alias rte_uuid_parse = fn (read UnsafePointer[Int8], UnsafePointer[UInt8]) -> Int32
alias rte_uuid_unparse = fn (read UnsafePointer[UInt8], UnsafePointer[Int8], size_t) -> NoneType
struct rte_intr_mode(ExplicitlyCopyable & Copyable & Movable):

	alias RTE_INTR_MODE_NONE = 0

	alias RTE_INTR_MODE_LEGACY = 1

	alias RTE_INTR_MODE_MSI = 2

	alias RTE_INTR_MODE_MSIX = 3

struct rte_proc_type_t(ExplicitlyCopyable & Copyable & Movable):

	alias RTE_PROC_AUTO = -1

	alias RTE_PROC_PRIMARY = 0

	alias RTE_PROC_SECONDARY = 1

	alias RTE_PROC_INVALID = 2

alias rte_eal_process_type = fn (NoneType) -> rte_proc_type_t
alias rte_eal_iopl_init = fn (NoneType) -> Int32
alias rte_eal_init = fn (Int32, UnsafePointer[UnsafePointer[Int8]]) -> Int32
alias rte_eal_cleanup = fn (NoneType) -> Int32
alias rte_eal_primary_proc_alive = fn (read UnsafePointer[Int8]) -> Int32
alias rte_mp_disable = fn (NoneType) -> Bool
struct rte_mp_msg(ExplicitlyCopyable & Copyable & Movable):
	var name : InlineArray[Int8, 64]

	var len_param : Int32

	var num_fds : Int32

	var param : InlineArray[UInt8, 256]

	var fds : InlineArray[Int32, 253]

struct rte_mp_reply(ExplicitlyCopyable & Copyable & Movable):
	var nb_sent : Int32

	var nb_received : Int32

	var msgs : UnsafePointer[rte_mp_msg]

alias rte_mp_t = fn(read UnsafePointer[rte_mp_msg], read OpaquePointer) -> Int32
alias rte_mp_async_reply_t = fn(read UnsafePointer[rte_mp_msg], read UnsafePointer[rte_mp_reply]) -> Int32
alias rte_mp_action_register = fn (read UnsafePointer[Int8], rte_mp_t) -> Int32
alias rte_mp_action_unregister = fn (read UnsafePointer[Int8]) -> NoneType
alias rte_mp_sendmsg = fn (UnsafePointer[rte_mp_msg]) -> Int32
alias rte_mp_request_sync = fn (UnsafePointer[rte_mp_msg], UnsafePointer[rte_mp_reply], read UnsafePointer[timespec]) -> Int32
alias rte_mp_request_async = fn (UnsafePointer[rte_mp_msg], read UnsafePointer[timespec], rte_mp_async_reply_t) -> Int32
alias rte_usage_hook_t = fn(read UnsafePointer[Int8]) -> NoneType
alias rte_set_application_usage_hook = fn (rte_usage_hook_t) -> rte_usage_hook_t
alias rte_eal_has_hugepages = fn (NoneType) -> Int32
alias rte_eal_has_pci = fn (NoneType) -> Int32
alias rte_eal_create_uio_dev = fn (NoneType) -> Int32
alias rte_eal_vfio_intr_mode = fn (NoneType) -> rte_intr_mode
alias rte_eal_vfio_get_vf_token = fn (UnsafePointer[UInt8]) -> NoneType
alias rte_sys_gettid = fn (NoneType) -> Int32
alias per_lcore__thread_id = Int32
alias rte_gettid = fn (NoneType) -> Int32
alias rte_eal_get_baseaddr = fn (NoneType) -> ffi.c_ulong_long
struct rte_iova_mode(ExplicitlyCopyable & Copyable & Movable):

	alias RTE_IOVA_DC = 0

	alias RTE_IOVA_PA = 1

	alias RTE_IOVA_VA = 2

alias rte_eal_iova_mode = fn (NoneType) -> rte_iova_mode
alias rte_eal_mbuf_user_pool_ops = fn (NoneType) -> UnsafePointer[Int8]
alias rte_eal_get_runtime_dir = fn (NoneType) -> UnsafePointer[Int8]
alias rte_eal_parse_coremask = fn (read UnsafePointer[Int8], UnsafePointer[Int32]) -> Int32
struct rte_lcore_state_t(ExplicitlyCopyable & Copyable & Movable):

	alias WAIT = 0

	alias RUNNING = 1

alias lcore_function_t = 	# # Node: PlaceHolder()
	# {"id":"0x40751cc0","inner":[{"cc":"cdecl","id":"0x4072b510","inner":[{"id":"0x404b01c0","kind":"BuiltinType","type":{"qualType":"int"}},{"id":"0x404b0e60","inner":[{"id":"0x404b0120","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"FunctionProtoType","type":{"qualType":"int (void *)"}}],"kind":"ParenType","type":{"qualType":"int (void *)"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Definition of a remote launch function.

alias rte_eal_remote_launch = fn (UnsafePointer[lcore_function_t], OpaquePointer, UInt32) -> Int32
struct rte_rmt_call_main_t(ExplicitlyCopyable & Copyable & Movable):

	alias SKIP_MAIN = 0

	alias CALL_MAIN = 1

alias rte_eal_mp_remote_launch = fn (UnsafePointer[lcore_function_t], OpaquePointer, rte_rmt_call_main_t) -> Int32
alias rte_eal_get_lcore_state = fn (UInt32) -> rte_lcore_state_t
alias rte_eal_wait_lcore = fn (UInt32) -> Int32
alias rte_eal_mp_wait_lcore = fn (NoneType) -> NoneType
struct anonomous_record_19(ExplicitlyCopyable & Copyable & Movable):

	var opaque_id : ffi.c_ulong

alias rte_thread_t = anonomous_record_19

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Thread id descriptor.

alias rte_thread_func = fn(OpaquePointer) -> ffi.c_ulong
struct rte_thread_priority(ExplicitlyCopyable & Copyable & Movable):

	alias RTE_THREAD_PRIORITY_NORMAL = 0

	alias RTE_THREAD_PRIORITY_REALTIME_CRITICAL = 1

struct anonomous_record_20(ExplicitlyCopyable & Copyable & Movable):

	var priority : rte_thread_priority

alias rte_thread_attr_t = anonomous_record_20

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Representation for thread attributes.

struct eal_tls_key(ExplicitlyCopyable & Copyable & Movable):
	pass
alias rte_thread_key = UnsafePointer[eal_tls_key]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  TLS key type, an opaque pointer.

alias rte_thread_create = fn (UnsafePointer[rte_thread_t], read UnsafePointer[rte_thread_attr_t], rte_thread_func, OpaquePointer) -> Int32
alias rte_thread_create_control = fn (UnsafePointer[rte_thread_t], read UnsafePointer[Int8], rte_thread_func, OpaquePointer) -> Int32
alias rte_thread_create_internal_control = fn (UnsafePointer[rte_thread_t], read UnsafePointer[Int8], rte_thread_func, OpaquePointer) -> Int32
alias rte_thread_join = fn (rte_thread_t, UnsafePointer[ffi.c_ulong]) -> Int32
alias rte_thread_detach = fn (rte_thread_t) -> Int32
alias rte_thread_self = fn (NoneType) -> rte_thread_t
alias rte_thread_set_name = fn (rte_thread_t, read UnsafePointer[Int8]) -> NoneType
alias rte_thread_set_prefixed_name = fn (rte_thread_t, read UnsafePointer[Int8]) -> NoneType
alias rte_thread_equal = fn (rte_thread_t, rte_thread_t) -> Int32
alias rte_thread_attr_init = fn (UnsafePointer[rte_thread_attr_t]) -> Int32
alias rte_thread_attr_set_priority = fn (UnsafePointer[rte_thread_attr_t], rte_thread_priority) -> Int32
alias rte_thread_get_priority = fn (rte_thread_t, UnsafePointer[rte_thread_priority]) -> Int32
alias rte_thread_set_priority = fn (rte_thread_t, rte_thread_priority) -> Int32
alias rte_thread_key_create = fn (fn(OpaquePointer) -> UnsafePointer[rte_thread_key], NoneType) -> Int32
alias rte_thread_key_delete = fn (rte_thread_key) -> Int32
alias rte_thread_value_set = fn (rte_thread_key, read OpaquePointer) -> Int32
alias rte_thread_value_get = fn (rte_thread_key) -> OpaquePointer
alias per_lcore__lcore_id = UInt32
struct rte_lcore_role_t(ExplicitlyCopyable & Copyable & Movable):

	alias ROLE_RTE = 0

	alias ROLE_OFF = 1

	alias ROLE_SERVICE = 2

	alias ROLE_NON_EAL = 3

alias rte_eal_lcore_role = fn (UInt32) -> rte_lcore_role_t
alias rte_lcore_has_role = fn (UInt32, rte_lcore_role_t) -> Int32
alias rte_lcore_id = fn (NoneType) -> UInt32
alias rte_get_main_lcore = fn (NoneType) -> UInt32
alias rte_lcore_count = fn (NoneType) -> UInt32
alias rte_lcore_index = fn (Int32) -> Int32
alias rte_socket_id = fn (NoneType) -> UInt32
alias rte_socket_count = fn (NoneType) -> UInt32
alias rte_socket_id_by_idx = fn (UInt32) -> Int32
alias rte_lcore_to_socket_id = fn (UInt32) -> UInt32
alias rte_lcore_to_cpu_id = fn (Int32) -> Int32
alias rte_lcore_is_enabled = fn (UInt32) -> Int32
alias rte_get_next_lcore = fn (UInt32, Int32, Int32) -> UInt32
alias rte_lcore_init_cb = fn(UInt32, OpaquePointer) -> Int32
alias rte_lcore_uninit_cb = fn(UInt32, OpaquePointer) -> NoneType
alias rte_lcore_callback_register = fn (read UnsafePointer[Int8], rte_lcore_init_cb, rte_lcore_uninit_cb, OpaquePointer) -> OpaquePointer
alias rte_lcore_callback_unregister = fn (OpaquePointer) -> NoneType
alias rte_lcore_iterate_cb = fn(UInt32, OpaquePointer) -> Int32
alias rte_lcore_iterate = fn (rte_lcore_iterate_cb, OpaquePointer) -> Int32
struct rte_lcore_usage(ExplicitlyCopyable & Copyable & Movable):

	var total_cycles : ffi.c_ulong

	var busy_cycles : ffi.c_ulong

alias rte_lcore_usage_cb = fn(UInt32, UnsafePointer[rte_lcore_usage]) -> Int32
alias rte_lcore_register_usage_cb = fn (rte_lcore_usage_cb) -> NoneType
alias rte_lcore_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_thread_register = fn (NoneType) -> Int32
alias rte_thread_unregister = fn (NoneType) -> NoneType
struct anonomous_record_21(ExplicitlyCopyable & Copyable & Movable):

	var locked : Int32

alias rte_spinlock_t = anonomous_record_21

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
alias rte_tm_supported = fn (NoneType) -> Int32
alias rte_spinlock_lock_tm = fn (UnsafePointer[rte_spinlock_t]) -> NoneType
alias rte_spinlock_unlock_tm = fn (UnsafePointer[rte_spinlock_t]) -> NoneType
alias rte_spinlock_trylock_tm = fn (UnsafePointer[rte_spinlock_t]) -> Int32
struct anonomous_record_22(ExplicitlyCopyable & Copyable & Movable):

	var sl : rte_spinlock_t

	var user : Int32

	var count : Int32

alias rte_spinlock_recursive_t = anonomous_record_22

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
alias rte_mcfg_mem_get_lock = fn (NoneType) -> UnsafePointer[rte_rwlock_t]
alias rte_mcfg_tailq_get_lock = fn (NoneType) -> UnsafePointer[rte_rwlock_t]
alias rte_mcfg_mempool_get_lock = fn (NoneType) -> UnsafePointer[rte_rwlock_t]
alias rte_mcfg_timer_get_lock = fn (NoneType) -> UnsafePointer[rte_spinlock_t]
alias rte_mcfg_ethdev_get_lock = fn (NoneType) -> UnsafePointer[rte_spinlock_t]
alias rte_mcfg_mem_read_lock = fn (NoneType) -> NoneType
alias rte_mcfg_mem_read_unlock = fn (NoneType) -> NoneType
alias rte_mcfg_mem_write_lock = fn (NoneType) -> NoneType
alias rte_mcfg_mem_write_unlock = fn (NoneType) -> NoneType
alias rte_mcfg_tailq_read_lock = fn (NoneType) -> NoneType
alias rte_mcfg_tailq_read_unlock = fn (NoneType) -> NoneType
alias rte_mcfg_tailq_write_lock = fn (NoneType) -> NoneType
alias rte_mcfg_tailq_write_unlock = fn (NoneType) -> NoneType
alias rte_mcfg_mempool_read_lock = fn (NoneType) -> NoneType
alias rte_mcfg_mempool_read_unlock = fn (NoneType) -> NoneType
alias rte_mcfg_mempool_write_lock = fn (NoneType) -> NoneType
alias rte_mcfg_mempool_write_unlock = fn (NoneType) -> NoneType
alias rte_mcfg_timer_lock = fn (NoneType) -> NoneType
alias rte_mcfg_timer_unlock = fn (NoneType) -> NoneType
alias rte_mcfg_get_single_file_segments = fn (NoneType) -> Bool
struct rte_fbarray(ExplicitlyCopyable & Copyable & Movable):
	var name : InlineArray[Int8, 64]

	var count : UInt32

	var len : UInt32

	var elt_sz : UInt32

	var data : OpaquePointer

	var rwlock : rte_rwlock_t

alias rte_fbarray_init = fn (UnsafePointer[rte_fbarray], read UnsafePointer[Int8], UInt32, UInt32) -> Int32
alias rte_fbarray_attach = fn (UnsafePointer[rte_fbarray]) -> Int32
alias rte_fbarray_destroy = fn (UnsafePointer[rte_fbarray]) -> Int32
alias rte_fbarray_detach = fn (UnsafePointer[rte_fbarray]) -> Int32
alias rte_fbarray_get = fn (read UnsafePointer[rte_fbarray], UInt32) -> OpaquePointer
alias rte_fbarray_find_idx = fn (read UnsafePointer[rte_fbarray], read OpaquePointer) -> Int32
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
alias anonomous_record_23 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memseg(ExplicitlyCopyable & Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x40775b18","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/eal/include/rte_memory.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_malloc.h"},"line":61,"offset":1680,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/eal/include/rte_memory.h","includedFrom":{"file":"dpdk/lib/eal/include/rte_malloc.h"},"line":61,"offset":1680,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/log/rte_log.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var iova : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_23



	var len : ffi.c_ulong

	var hugepage_sz : ffi.c_ulong

	var socket_id : Int32

	var nchannel : UInt32

	var nrank : UInt32

	var flags : UInt32

alias anonomous_record_24 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memseg_list(ExplicitlyCopyable & Copyable & Movable):

	var union_placeholder_1 : anonomous_record_24



	var page_sz : ffi.c_ulong

	var socket_id : Int32

	var version : UInt32

	var len : ffi.c_ulong

	var external : UInt32

	var heap : UInt32

	var memseg_arr : rte_fbarray

alias rte_mem_lock_page = fn (read OpaquePointer) -> Int32
alias rte_mem_virt2phy = fn (read OpaquePointer) -> phys_addr_t
alias rte_mem_virt2iova = fn (read OpaquePointer) -> rte_iova_t
alias rte_mem_iova2virt = fn (rte_iova_t) -> OpaquePointer
alias rte_mem_virt2memseg = fn (read OpaquePointer, read UnsafePointer[rte_memseg_list]) -> UnsafePointer[rte_memseg]
alias rte_mem_virt2memseg_list = fn (read OpaquePointer) -> UnsafePointer[rte_memseg_list]
alias rte_memseg_walk_t = fn(read UnsafePointer[rte_memseg_list], read UnsafePointer[rte_memseg], OpaquePointer) -> Int32
alias rte_memseg_contig_walk_t = fn(read UnsafePointer[rte_memseg_list], read UnsafePointer[rte_memseg], size_t, OpaquePointer) -> Int32
alias rte_memseg_list_walk_t = fn(read UnsafePointer[rte_memseg_list], OpaquePointer) -> Int32
alias rte_memseg_walk = fn (rte_memseg_walk_t, OpaquePointer) -> Int32
alias rte_memseg_contig_walk = fn (rte_memseg_contig_walk_t, OpaquePointer) -> Int32
alias rte_memseg_list_walk = fn (rte_memseg_list_walk_t, OpaquePointer) -> Int32
alias rte_memseg_walk_thread_unsafe = fn (rte_memseg_walk_t, OpaquePointer) -> Int32
alias rte_memseg_contig_walk_thread_unsafe = fn (rte_memseg_contig_walk_t, OpaquePointer) -> Int32
alias rte_memseg_list_walk_thread_unsafe = fn (rte_memseg_list_walk_t, OpaquePointer) -> Int32
alias rte_memseg_get_fd = fn (read UnsafePointer[rte_memseg]) -> Int32
alias rte_memseg_get_fd_thread_unsafe = fn (read UnsafePointer[rte_memseg]) -> Int32
alias rte_memseg_get_fd_offset = fn (read UnsafePointer[rte_memseg], UnsafePointer[size_t]) -> Int32
alias rte_memseg_get_fd_offset_thread_unsafe = fn (read UnsafePointer[rte_memseg], UnsafePointer[size_t]) -> Int32
alias rte_extmem_register = fn (OpaquePointer, size_t, UnsafePointer[rte_iova_t], UInt32, size_t) -> Int32
alias rte_extmem_unregister = fn (OpaquePointer, size_t) -> Int32
alias rte_extmem_attach = fn (OpaquePointer, size_t) -> Int32
alias rte_extmem_detach = fn (OpaquePointer, size_t) -> Int32
alias rte_dump_physmem_layout = fn (UnsafePointer[FILE]) -> NoneType
alias rte_eal_get_physmem_size = fn (NoneType) -> ffi.c_ulong_long
alias rte_memory_get_nchannel = fn (NoneType) -> UInt32
alias rte_memory_get_nrank = fn (NoneType) -> UInt32
alias rte_mem_check_dma_mask = fn (UInt8) -> Int32
alias rte_mem_check_dma_mask_thread_unsafe = fn (UInt8) -> Int32
alias rte_mem_set_dma_mask = fn (UInt8) -> NoneType
alias rte_eal_using_phys_addrs = fn (NoneType) -> Int32
struct rte_mem_event(ExplicitlyCopyable & Copyable & Movable):

	alias RTE_MEM_EVENT_ALLOC = 0

	alias RTE_MEM_EVENT_FREE = 1

alias rte_mem_event_callback_t = fn(rte_mem_event, read OpaquePointer, size_t, OpaquePointer) -> NoneType
alias rte_mem_event_callback_register = fn (read UnsafePointer[Int8], rte_mem_event_callback_t, OpaquePointer) -> Int32
alias rte_mem_event_callback_unregister = fn (read UnsafePointer[Int8], OpaquePointer) -> Int32
alias rte_mem_alloc_validator_t = fn(Int32, size_t, size_t) -> Int32
alias rte_mem_alloc_validator_register = fn (read UnsafePointer[Int8], rte_mem_alloc_validator_t, Int32, size_t) -> Int32
alias rte_mem_alloc_validator_unregister = fn (read UnsafePointer[Int8], Int32) -> Int32
alias rte_memzero_explicit = fn (OpaquePointer, size_t) -> NoneType
struct rte_malloc_socket_stats(ExplicitlyCopyable & Copyable & Movable):

	var heap_totalsz_bytes : ffi.c_ulong

	var heap_freesz_bytes : ffi.c_ulong

	var greatest_free_size : ffi.c_ulong

	var free_count : UInt32

	var alloc_count : UInt32

	var heap_allocsz_bytes : ffi.c_ulong

alias rte_free = fn (OpaquePointer) -> NoneType
alias rte_free_sensitive = fn (OpaquePointer) -> NoneType
alias rte_malloc = fn (read UnsafePointer[Int8], size_t, UInt32) -> OpaquePointer
alias rte_zmalloc = fn (read UnsafePointer[Int8], size_t, UInt32) -> OpaquePointer
alias rte_calloc = fn (read UnsafePointer[Int8], size_t, size_t, UInt32) -> OpaquePointer
alias rte_realloc = fn (OpaquePointer, size_t, UInt32) -> OpaquePointer
alias rte_realloc_socket = fn (OpaquePointer, size_t, UInt32, Int32) -> OpaquePointer
alias rte_malloc_socket = fn (read UnsafePointer[Int8], size_t, UInt32, Int32) -> OpaquePointer
alias rte_zmalloc_socket = fn (read UnsafePointer[Int8], size_t, UInt32, Int32) -> OpaquePointer
alias rte_calloc_socket = fn (read UnsafePointer[Int8], size_t, size_t, UInt32, Int32) -> OpaquePointer
alias rte_malloc_validate = fn (read OpaquePointer, UnsafePointer[size_t]) -> Int32
alias rte_malloc_get_socket_stats = fn (Int32, UnsafePointer[rte_malloc_socket_stats]) -> Int32
alias rte_malloc_heap_memory_add = fn (read UnsafePointer[Int8], OpaquePointer, size_t, UnsafePointer[rte_iova_t], UInt32, size_t) -> Int32
alias rte_malloc_heap_memory_remove = fn (read UnsafePointer[Int8], OpaquePointer, size_t) -> Int32
alias rte_malloc_heap_memory_attach = fn (read UnsafePointer[Int8], OpaquePointer, size_t) -> Int32
alias rte_malloc_heap_memory_detach = fn (read UnsafePointer[Int8], OpaquePointer, size_t) -> Int32
alias rte_malloc_heap_create = fn (read UnsafePointer[Int8]) -> Int32
alias rte_malloc_heap_destroy = fn (read UnsafePointer[Int8]) -> Int32
alias rte_malloc_heap_get_socket = fn (read UnsafePointer[Int8]) -> Int32
alias rte_malloc_heap_socket_is_external = fn (Int32) -> Int32
alias rte_malloc_dump_stats = fn (UnsafePointer[FILE], read UnsafePointer[Int8]) -> NoneType
alias rte_malloc_dump_heaps = fn (UnsafePointer[FILE]) -> NoneType
alias rte_malloc_virt2iova = fn (read OpaquePointer) -> rte_iova_t
alias __bswap_16 = fn (__uint16_t) -> __uint16_t
alias __bswap_32 = fn (__uint32_t) -> __uint32_t
alias __bswap_64 = fn (__uint64_t) -> __uint64_t
alias __uint16_identity = fn (__uint16_t) -> __uint16_t
alias __uint32_identity = fn (__uint32_t) -> __uint32_t
alias __uint64_identity = fn (__uint64_t) -> __uint64_t
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
alias rte_constant_bswap32 = fn (ffi.c_ulong) -> ffi.c_ulong
alias rte_constant_bswap64 = fn (ffi.c_ulong_long) -> ffi.c_ulong_long
struct rte_mbuf(ExplicitlyCopyable & Copyable & Movable):
	pass
struct rte_ip_frag_death_row(ExplicitlyCopyable & Copyable & Movable):

	var cnt : UInt32

	var row : InlineArray[UnsafePointer[rte_mbuf], 288]

struct rte_ip_frag_tbl(ExplicitlyCopyable & Copyable & Movable):
	pass
alias rte_ip_frag_table_create = fn (ffi.c_ulong, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong_long, Int32) -> UnsafePointer[rte_ip_frag_tbl]
alias rte_ip_frag_table_destroy = fn (UnsafePointer[rte_ip_frag_tbl]) -> NoneType
alias rte_ipv6_fragment_packet = fn (UnsafePointer[rte_mbuf], UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, UInt16, UnsafePointer[rte_mempool], UnsafePointer[rte_mempool]) -> ffi.c_long
alias rte_ipv6_frag_reassemble_packet = fn (UnsafePointer[rte_ip_frag_tbl], UnsafePointer[rte_ip_frag_death_row], UnsafePointer[rte_mbuf], ffi.c_ulong_long, UnsafePointer[rte_ipv6_hdr], UnsafePointer[rte_ipv6_fragment_ext]) -> UnsafePointer[rte_mbuf]
struct rte_ipv6_fragment_ext(ExplicitlyCopyable & Copyable & Movable):
	pass
alias rte_ipv6_frag_get_ipv6_fragment_header = fn (UnsafePointer[rte_ipv6_hdr]) -> UnsafePointer[rte_ipv6_fragment_ext]
alias rte_ipv4_fragment_packet = fn (UnsafePointer[rte_mbuf], UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, UInt16, UnsafePointer[rte_mempool], UnsafePointer[rte_mempool]) -> ffi.c_long
alias rte_ipv4_fragment_copy_nonseg_packet = fn (UnsafePointer[rte_mbuf], UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, UInt16, UnsafePointer[rte_mempool]) -> ffi.c_long
alias rte_ipv4_frag_reassemble_packet = fn (UnsafePointer[rte_ip_frag_tbl], UnsafePointer[rte_ip_frag_death_row], UnsafePointer[rte_mbuf], ffi.c_ulong_long, UnsafePointer[rte_ipv4_hdr]) -> UnsafePointer[rte_mbuf]
alias rte_ipv4_frag_pkt_is_fragmented = fn (read UnsafePointer[rte_ipv4_hdr]) -> Int32
alias __builtin_bswap16 = fn (UInt16) -> UInt16
alias rte_ip_frag_free_death_row = fn (UnsafePointer[rte_ip_frag_death_row], ffi.c_ulong) -> NoneType
alias rte_ip_frag_table_statistics_dump = fn (UnsafePointer[FILE], read UnsafePointer[rte_ip_frag_tbl]) -> NoneType
alias rte_ip_frag_table_del_expired_entries = fn (UnsafePointer[rte_ip_frag_tbl], UnsafePointer[rte_ip_frag_death_row], ffi.c_ulong_long) -> NoneType


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
alias rte_ip_frag_rte_constant_bswap16 = ExternalFunction['rte_constant_bswap16', rte_constant_bswap16]
alias rte_ip_frag_rte_constant_bswap32 = ExternalFunction['rte_constant_bswap32', rte_constant_bswap32]
alias rte_ip_frag_rte_constant_bswap64 = ExternalFunction['rte_constant_bswap64', rte_constant_bswap64]
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
    var rte_constant_bswap16: rte_ip_frag_rte_constant_bswap16.type
    var rte_constant_bswap32: rte_ip_frag_rte_constant_bswap32.type
    var rte_constant_bswap64: rte_ip_frag_rte_constant_bswap64.type
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
        self.rte_constant_bswap16 = rte_ip_frag_rte_constant_bswap16.load(self.lib)
        self.rte_constant_bswap32 = rte_ip_frag_rte_constant_bswap32.load(self.lib)
        self.rte_constant_bswap64 = rte_ip_frag_rte_constant_bswap64.load(self.lib)
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

