
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
struct __NSConstantString_tag(Copyable & Movable):
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
struct __va_list(Copyable & Movable):
	pass
alias __builtin_va_list = __va_list

alias __assert_fail = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], UInt32, read UnsafePointer[Int8]) -> NoneType
alias __assert_perror_fail = fn (Int32, read UnsafePointer[Int8], UInt32, read UnsafePointer[Int8]) -> NoneType
alias __assert = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], Int32) -> NoneType
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
struct anonomous_record_1364(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_1364

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
struct anonomous_record_1365(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_1365

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
	# {"id":"0x973a2a0","inner":[{"id":"0x95accf0","inner":[{"id":"0x95abfb0","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"void *[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Generic marker for any place in a structure. 

alias RTE_MARKER8 = 	# # Node: PlaceHolder()
	# {"id":"0x973a430","inner":[{"decl":{"id":"0x96c5f98","kind":"TypedefDecl","name":"uint8_t"},"id":"0x973a390","inner":[{"decl":{"id":"0x969b4b0","kind":"TypedefDecl","name":"__uint8_t"},"id":"0x969b840","inner":[{"id":"0x95ac0b0","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"TypedefType","type":{"qualType":"__uint8_t"}}],"kind":"TypedefType","type":{"qualType":"uint8_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint8_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 1B alignment in a structure. 

alias RTE_MARKER16 = 	# # Node: PlaceHolder()
	# {"id":"0x973a590","inner":[{"decl":{"id":"0x96c6000","kind":"TypedefDecl","name":"uint16_t"},"id":"0x970d010","inner":[{"decl":{"id":"0x969b590","kind":"TypedefDecl","name":"__uint16_t"},"id":"0x969b960","inner":[{"id":"0x95ac0d0","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"TypedefType","type":{"qualType":"__uint16_t"}}],"kind":"TypedefType","type":{"qualType":"uint16_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint16_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 2B alignment in a structure. 

alias RTE_MARKER32 = 	# # Node: PlaceHolder()
	# {"id":"0x973a6f0","inner":[{"decl":{"id":"0x96c6068","kind":"TypedefDecl","name":"uint32_t"},"id":"0x970cf80","inner":[{"decl":{"id":"0x969b670","kind":"TypedefDecl","name":"__uint32_t"},"id":"0x969ba80","inner":[{"id":"0x95ac0f0","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"__uint32_t"}}],"kind":"TypedefType","type":{"qualType":"uint32_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint32_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 4B alignment in a structure. 

alias RTE_MARKER64 = 	# # Node: PlaceHolder()
	# {"id":"0x973a850","inner":[{"decl":{"id":"0x96c60d0","kind":"TypedefDecl","name":"uint64_t"},"id":"0x970cef0","inner":[{"decl":{"id":"0x969b750","kind":"TypedefDecl","name":"__uint64_t"},"id":"0x969bba0","inner":[{"id":"0x95ac110","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uint64_t"}}],"kind":"TypedefType","type":{"qualType":"uint64_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint64_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 8B alignment in a structure. 

alias rte_str_to_size = fn (read UnsafePointer[Int8]) -> ffi.c_ulong_long
alias rte_size_to_str = fn (UnsafePointer[Int8], Int32, ffi.c_ulong_long, Bool, read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_exit = fn (Int32, read *UnsafePointer[Int8]) -> NoneType
alias va_list = __builtin_va_list
alias __gnuc_va_list = __builtin_va_list
alias anonomous_record_1366 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_1367(Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_1366

alias __mbstate_t = anonomous_record_1367

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
alias rte_power_cpufreq_init_t = fn(UInt32) -> Int32
alias rte_power_cpufreq_exit_t = fn(UInt32) -> Int32
alias rte_power_check_env_support_t = fn() -> Int32
alias rte_power_freqs_t = fn(UInt32, UnsafePointer[ffi.c_ulong], ffi.c_ulong) -> ffi.c_ulong
alias rte_power_get_freq_t = fn(UInt32) -> ffi.c_ulong
alias rte_power_set_freq_t = fn(UInt32, ffi.c_ulong) -> Int32
alias rte_power_freq_change_t = fn(UInt32) -> Int32
struct anonomous_record_1368(Copyable & Movable):
	var turbo : ffi.c_ulong

	var priority : ffi.c_ulong

alias anonomous_record_1369 = C_Union[ffi.c_ulong, anonomous_record_1368, , ]

struct rte_power_core_capabilities(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_1369




alias rte_power_get_capabilities_t = fn(UInt32, UnsafePointer[rte_power_core_capabilities]) -> Int32
struct anonomous_record_1370(Copyable & Movable):
	var tqe_next : UnsafePointer[rte_power_cpufreq_ops]

	var tqe_prev : UnsafePointer[UnsafePointer[rte_power_cpufreq_ops]]

struct rte_power_cpufreq_ops(Copyable & Movable):

	var next : anonomous_record_1370

	var name : InlineArray[Int8, 24]

	var init : fn(UInt32) -> Int32

	var exit : fn(UInt32) -> Int32

	var check_env_support : fn() -> Int32

	var get_avail_freqs : fn(UInt32, UnsafePointer[ffi.c_ulong], ffi.c_ulong) -> ffi.c_ulong

	var get_freq : fn(UInt32) -> ffi.c_ulong

	var set_freq : fn(UInt32, ffi.c_ulong) -> Int32

	var freq_up : fn(UInt32) -> Int32

	var freq_down : fn(UInt32) -> Int32

	var freq_max : fn(UInt32) -> Int32

	var freq_min : fn(UInt32) -> Int32

	var turbo_status : fn(UInt32) -> Int32

	var enable_turbo : fn(UInt32) -> Int32

	var disable_turbo : fn(UInt32) -> Int32

	var get_caps : fn(UInt32, UnsafePointer[rte_power_core_capabilities]) -> Int32

alias rte_power_register_cpufreq_ops = fn (UnsafePointer[rte_power_cpufreq_ops]) -> Int32
struct power_management_env(Copyable & Movable):

	alias PM_ENV_NOT_SET = 0

	alias PM_ENV_ACPI_CPUFREQ = 1

	alias PM_ENV_KVM_VM = 2

	alias PM_ENV_PSTATE_CPUFREQ = 3

	alias PM_ENV_CPPC_CPUFREQ = 4

	alias PM_ENV_AMD_PSTATE_CPUFREQ = 5

alias rte_power_check_env_supported = fn (power_management_env) -> Int32
alias rte_power_set_env = fn (power_management_env) -> Int32
alias rte_power_unset_env = fn (NoneType) -> NoneType
alias rte_power_get_env = fn (NoneType) -> power_management_env
alias rte_power_init = fn (UInt32) -> Int32
alias rte_power_exit = fn (UInt32) -> Int32
alias rte_power_freqs = fn (UInt32, UnsafePointer[ffi.c_ulong], ffi.c_ulong) -> ffi.c_ulong
alias rte_power_get_freq = fn (UInt32) -> ffi.c_ulong
alias rte_power_set_freq = fn (UInt32, ffi.c_ulong) -> ffi.c_ulong
alias rte_power_freq_up = fn (UInt32) -> Int32
alias rte_power_freq_down = fn (UInt32) -> Int32
alias rte_power_freq_max = fn (UInt32) -> Int32
alias rte_power_freq_min = fn (UInt32) -> Int32
alias rte_power_turbo_status = fn (UInt32) -> Int32
alias rte_power_freq_enable_turbo = fn (UInt32) -> Int32
alias rte_power_freq_disable_turbo = fn (UInt32) -> Int32
alias rte_power_get_capabilities = fn (UInt32, UnsafePointer[rte_power_core_capabilities]) -> Int32


alias rte_power_cpufreq_alloca = ExternalFunction['alloca', alloca]
alias rte_power_cpufreq_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_power_cpufreq_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_power_cpufreq_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_power_cpufreq_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_power_cpufreq_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_power_cpufreq_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_power_cpufreq_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_power_cpufreq_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_power_cpufreq_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_power_cpufreq_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_power_cpufreq_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_power_cpufreq_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_power_cpufreq_remove = ExternalFunction['remove', remove]
alias rte_power_cpufreq_rename = ExternalFunction['rename', rename]
alias rte_power_cpufreq_renameat = ExternalFunction['renameat', renameat]
alias rte_power_cpufreq_fclose = ExternalFunction['fclose', fclose]
alias rte_power_cpufreq_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias rte_power_cpufreq_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias rte_power_cpufreq_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias rte_power_cpufreq_tempnam = ExternalFunction['tempnam', tempnam]
alias rte_power_cpufreq_fflush = ExternalFunction['fflush', fflush]
alias rte_power_cpufreq_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias rte_power_cpufreq_fopen = ExternalFunction['fopen', fopen]
alias rte_power_cpufreq_freopen = ExternalFunction['freopen', freopen]
alias rte_power_cpufreq_fdopen = ExternalFunction['fdopen', fdopen]
alias rte_power_cpufreq_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias rte_power_cpufreq_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias rte_power_cpufreq_setbuf = ExternalFunction['setbuf', setbuf]
alias rte_power_cpufreq_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias rte_power_cpufreq_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias rte_power_cpufreq_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias rte_power_cpufreq_fprintf = ExternalFunction['fprintf', fprintf]
alias rte_power_cpufreq_printf = ExternalFunction['printf', printf]
alias rte_power_cpufreq_sprintf = ExternalFunction['sprintf', sprintf]
alias rte_power_cpufreq_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias rte_power_cpufreq_vprintf = ExternalFunction['vprintf', vprintf]
alias rte_power_cpufreq_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias rte_power_cpufreq_snprintf = ExternalFunction['snprintf', snprintf]
alias rte_power_cpufreq_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias rte_power_cpufreq_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias rte_power_cpufreq_dprintf = ExternalFunction['dprintf', dprintf]
alias rte_power_cpufreq_fscanf = ExternalFunction['fscanf', fscanf]
alias rte_power_cpufreq_scanf = ExternalFunction['scanf', scanf]
alias rte_power_cpufreq_sscanf = ExternalFunction['sscanf', sscanf]
alias rte_power_cpufreq_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias rte_power_cpufreq_vscanf = ExternalFunction['vscanf', vscanf]
alias rte_power_cpufreq_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias rte_power_cpufreq_fgetc = ExternalFunction['fgetc', fgetc]
alias rte_power_cpufreq_getc = ExternalFunction['getc', getc]
alias rte_power_cpufreq_getchar = ExternalFunction['getchar', getchar]
alias rte_power_cpufreq_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias rte_power_cpufreq_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias rte_power_cpufreq_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias rte_power_cpufreq_fputc = ExternalFunction['fputc', fputc]
alias rte_power_cpufreq_putc = ExternalFunction['putc', putc]
alias rte_power_cpufreq_putchar = ExternalFunction['putchar', putchar]
alias rte_power_cpufreq_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias rte_power_cpufreq_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias rte_power_cpufreq_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias rte_power_cpufreq_getw = ExternalFunction['getw', getw]
alias rte_power_cpufreq_putw = ExternalFunction['putw', putw]
alias rte_power_cpufreq_fgets = ExternalFunction['fgets', fgets]
alias rte_power_cpufreq_getdelim = ExternalFunction['getdelim', getdelim]
alias rte_power_cpufreq_getline = ExternalFunction['getline', getline]
alias rte_power_cpufreq_fputs = ExternalFunction['fputs', fputs]
alias rte_power_cpufreq_puts = ExternalFunction['puts', puts]
alias rte_power_cpufreq_ungetc = ExternalFunction['ungetc', ungetc]
alias rte_power_cpufreq_fread = ExternalFunction['fread', fread]
alias rte_power_cpufreq_fwrite = ExternalFunction['fwrite', fwrite]
alias rte_power_cpufreq_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias rte_power_cpufreq_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias rte_power_cpufreq_fseek = ExternalFunction['fseek', fseek]
alias rte_power_cpufreq_ftell = ExternalFunction['ftell', ftell]
alias rte_power_cpufreq_rewind = ExternalFunction['rewind', rewind]
alias rte_power_cpufreq_fseeko = ExternalFunction['fseeko', fseeko]
alias rte_power_cpufreq_ftello = ExternalFunction['ftello', ftello]
alias rte_power_cpufreq_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias rte_power_cpufreq_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias rte_power_cpufreq_clearerr = ExternalFunction['clearerr', clearerr]
alias rte_power_cpufreq_feof = ExternalFunction['feof', feof]
alias rte_power_cpufreq_ferror = ExternalFunction['ferror', ferror]
alias rte_power_cpufreq_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias rte_power_cpufreq_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias rte_power_cpufreq_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias rte_power_cpufreq_perror = ExternalFunction['perror', perror]
alias rte_power_cpufreq_fileno = ExternalFunction['fileno', fileno]
alias rte_power_cpufreq_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias rte_power_cpufreq_pclose = ExternalFunction['pclose', pclose]
alias rte_power_cpufreq_popen = ExternalFunction['popen', popen]
alias rte_power_cpufreq_ctermid = ExternalFunction['ctermid', ctermid]
alias rte_power_cpufreq_flockfile = ExternalFunction['flockfile', flockfile]
alias rte_power_cpufreq_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias rte_power_cpufreq_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias rte_power_cpufreq_rte_openlog_stream = ExternalFunction['rte_openlog_stream', rte_openlog_stream]
alias rte_power_cpufreq_rte_log_get_stream = ExternalFunction['rte_log_get_stream', rte_log_get_stream]
alias rte_power_cpufreq_rte_log_set_global_level = ExternalFunction['rte_log_set_global_level', rte_log_set_global_level]
alias rte_power_cpufreq_rte_log_get_global_level = ExternalFunction['rte_log_get_global_level', rte_log_get_global_level]
alias rte_power_cpufreq_rte_log_get_level = ExternalFunction['rte_log_get_level', rte_log_get_level]
alias rte_power_cpufreq_rte_log_can_log = ExternalFunction['rte_log_can_log', rte_log_can_log]
alias rte_power_cpufreq_rte_log_set_level_pattern = ExternalFunction['rte_log_set_level_pattern', rte_log_set_level_pattern]
alias rte_power_cpufreq_rte_log_set_level_regexp = ExternalFunction['rte_log_set_level_regexp', rte_log_set_level_regexp]
alias rte_power_cpufreq_rte_log_set_level = ExternalFunction['rte_log_set_level', rte_log_set_level]
alias rte_power_cpufreq_rte_log_cur_msg_loglevel = ExternalFunction['rte_log_cur_msg_loglevel', rte_log_cur_msg_loglevel]
alias rte_power_cpufreq_rte_log_cur_msg_logtype = ExternalFunction['rte_log_cur_msg_logtype', rte_log_cur_msg_logtype]
alias rte_power_cpufreq_rte_log_register = ExternalFunction['rte_log_register', rte_log_register]
alias rte_power_cpufreq_rte_log_register_type_and_pick_level = ExternalFunction['rte_log_register_type_and_pick_level', rte_log_register_type_and_pick_level]
alias rte_power_cpufreq_rte_log_list_types = ExternalFunction['rte_log_list_types', rte_log_list_types]
alias rte_power_cpufreq_rte_log_dump = ExternalFunction['rte_log_dump', rte_log_dump]
alias rte_power_cpufreq_rte_log = ExternalFunction['rte_log', rte_log]
alias rte_power_cpufreq_rte_vlog = ExternalFunction['rte_vlog', rte_vlog]
alias rte_power_cpufreq_rte_power_register_cpufreq_ops = ExternalFunction['rte_power_register_cpufreq_ops', rte_power_register_cpufreq_ops]
alias rte_power_cpufreq_rte_power_check_env_supported = ExternalFunction['rte_power_check_env_supported', rte_power_check_env_supported]
alias rte_power_cpufreq_rte_power_set_env = ExternalFunction['rte_power_set_env', rte_power_set_env]
alias rte_power_cpufreq_rte_power_unset_env = ExternalFunction['rte_power_unset_env', rte_power_unset_env]
alias rte_power_cpufreq_rte_power_get_env = ExternalFunction['rte_power_get_env', rte_power_get_env]
alias rte_power_cpufreq_rte_power_init = ExternalFunction['rte_power_init', rte_power_init]
alias rte_power_cpufreq_rte_power_exit = ExternalFunction['rte_power_exit', rte_power_exit]
alias rte_power_cpufreq_rte_power_freqs = ExternalFunction['rte_power_freqs', rte_power_freqs]
alias rte_power_cpufreq_rte_power_get_freq = ExternalFunction['rte_power_get_freq', rte_power_get_freq]
alias rte_power_cpufreq_rte_power_set_freq = ExternalFunction['rte_power_set_freq', rte_power_set_freq]
alias rte_power_cpufreq_rte_power_freq_up = ExternalFunction['rte_power_freq_up', rte_power_freq_up]
alias rte_power_cpufreq_rte_power_freq_down = ExternalFunction['rte_power_freq_down', rte_power_freq_down]
alias rte_power_cpufreq_rte_power_freq_max = ExternalFunction['rte_power_freq_max', rte_power_freq_max]
alias rte_power_cpufreq_rte_power_freq_min = ExternalFunction['rte_power_freq_min', rte_power_freq_min]
alias rte_power_cpufreq_rte_power_turbo_status = ExternalFunction['rte_power_turbo_status', rte_power_turbo_status]
alias rte_power_cpufreq_rte_power_freq_enable_turbo = ExternalFunction['rte_power_freq_enable_turbo', rte_power_freq_enable_turbo]
alias rte_power_cpufreq_rte_power_freq_disable_turbo = ExternalFunction['rte_power_freq_disable_turbo', rte_power_freq_disable_turbo]
alias rte_power_cpufreq_rte_power_get_capabilities = ExternalFunction['rte_power_get_capabilities', rte_power_get_capabilities]

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
struct rte_power_cpufreq(Copyable, Movable):
    var lib: DLHandle
    
    var alloca: rte_power_cpufreq_alloca.type
    var sched_setparam: rte_power_cpufreq_sched_setparam.type
    var sched_getparam: rte_power_cpufreq_sched_getparam.type
    var sched_setscheduler: rte_power_cpufreq_sched_setscheduler.type
    var sched_getscheduler: rte_power_cpufreq_sched_getscheduler.type
    var sched_yield: rte_power_cpufreq_sched_yield.type
    var sched_get_priority_max: rte_power_cpufreq_sched_get_priority_max.type
    var sched_get_priority_min: rte_power_cpufreq_sched_get_priority_min.type
    var sched_rr_get_interval: rte_power_cpufreq_sched_rr_get_interval.type
    var rte_is_aligned: rte_power_cpufreq_rte_is_aligned.type
    var rte_str_to_size: rte_power_cpufreq_rte_str_to_size.type
    var rte_size_to_str: rte_power_cpufreq_rte_size_to_str.type
    var rte_exit: rte_power_cpufreq_rte_exit.type
    var remove: rte_power_cpufreq_remove.type
    var rename: rte_power_cpufreq_rename.type
    var renameat: rte_power_cpufreq_renameat.type
    var fclose: rte_power_cpufreq_fclose.type
    var tmpfile: rte_power_cpufreq_tmpfile.type
    var tmpnam: rte_power_cpufreq_tmpnam.type
    var tmpnam_r: rte_power_cpufreq_tmpnam_r.type
    var tempnam: rte_power_cpufreq_tempnam.type
    var fflush: rte_power_cpufreq_fflush.type
    var fflush_unlocked: rte_power_cpufreq_fflush_unlocked.type
    var fopen: rte_power_cpufreq_fopen.type
    var freopen: rte_power_cpufreq_freopen.type
    var fdopen: rte_power_cpufreq_fdopen.type
    var fmemopen: rte_power_cpufreq_fmemopen.type
    var open_memstream: rte_power_cpufreq_open_memstream.type
    var setbuf: rte_power_cpufreq_setbuf.type
    var setvbuf: rte_power_cpufreq_setvbuf.type
    var setbuffer: rte_power_cpufreq_setbuffer.type
    var setlinebuf: rte_power_cpufreq_setlinebuf.type
    var fprintf: rte_power_cpufreq_fprintf.type
    var printf: rte_power_cpufreq_printf.type
    var sprintf: rte_power_cpufreq_sprintf.type
    var vfprintf: rte_power_cpufreq_vfprintf.type
    var vprintf: rte_power_cpufreq_vprintf.type
    var vsprintf: rte_power_cpufreq_vsprintf.type
    var snprintf: rte_power_cpufreq_snprintf.type
    var vsnprintf: rte_power_cpufreq_vsnprintf.type
    var vdprintf: rte_power_cpufreq_vdprintf.type
    var dprintf: rte_power_cpufreq_dprintf.type
    var fscanf: rte_power_cpufreq_fscanf.type
    var scanf: rte_power_cpufreq_scanf.type
    var sscanf: rte_power_cpufreq_sscanf.type
    var vfscanf: rte_power_cpufreq_vfscanf.type
    var vscanf: rte_power_cpufreq_vscanf.type
    var vsscanf: rte_power_cpufreq_vsscanf.type
    var fgetc: rte_power_cpufreq_fgetc.type
    var getc: rte_power_cpufreq_getc.type
    var getchar: rte_power_cpufreq_getchar.type
    var getc_unlocked: rte_power_cpufreq_getc_unlocked.type
    var getchar_unlocked: rte_power_cpufreq_getchar_unlocked.type
    var fgetc_unlocked: rte_power_cpufreq_fgetc_unlocked.type
    var fputc: rte_power_cpufreq_fputc.type
    var putc: rte_power_cpufreq_putc.type
    var putchar: rte_power_cpufreq_putchar.type
    var fputc_unlocked: rte_power_cpufreq_fputc_unlocked.type
    var putc_unlocked: rte_power_cpufreq_putc_unlocked.type
    var putchar_unlocked: rte_power_cpufreq_putchar_unlocked.type
    var getw: rte_power_cpufreq_getw.type
    var putw: rte_power_cpufreq_putw.type
    var fgets: rte_power_cpufreq_fgets.type
    var getdelim: rte_power_cpufreq_getdelim.type
    var getline: rte_power_cpufreq_getline.type
    var fputs: rte_power_cpufreq_fputs.type
    var puts: rte_power_cpufreq_puts.type
    var ungetc: rte_power_cpufreq_ungetc.type
    var fread: rte_power_cpufreq_fread.type
    var fwrite: rte_power_cpufreq_fwrite.type
    var fread_unlocked: rte_power_cpufreq_fread_unlocked.type
    var fwrite_unlocked: rte_power_cpufreq_fwrite_unlocked.type
    var fseek: rte_power_cpufreq_fseek.type
    var ftell: rte_power_cpufreq_ftell.type
    var rewind: rte_power_cpufreq_rewind.type
    var fseeko: rte_power_cpufreq_fseeko.type
    var ftello: rte_power_cpufreq_ftello.type
    var fgetpos: rte_power_cpufreq_fgetpos.type
    var fsetpos: rte_power_cpufreq_fsetpos.type
    var clearerr: rte_power_cpufreq_clearerr.type
    var feof: rte_power_cpufreq_feof.type
    var ferror: rte_power_cpufreq_ferror.type
    var clearerr_unlocked: rte_power_cpufreq_clearerr_unlocked.type
    var feof_unlocked: rte_power_cpufreq_feof_unlocked.type
    var ferror_unlocked: rte_power_cpufreq_ferror_unlocked.type
    var perror: rte_power_cpufreq_perror.type
    var fileno: rte_power_cpufreq_fileno.type
    var fileno_unlocked: rte_power_cpufreq_fileno_unlocked.type
    var pclose: rte_power_cpufreq_pclose.type
    var popen: rte_power_cpufreq_popen.type
    var ctermid: rte_power_cpufreq_ctermid.type
    var flockfile: rte_power_cpufreq_flockfile.type
    var ftrylockfile: rte_power_cpufreq_ftrylockfile.type
    var funlockfile: rte_power_cpufreq_funlockfile.type
    var rte_openlog_stream: rte_power_cpufreq_rte_openlog_stream.type
    var rte_log_get_stream: rte_power_cpufreq_rte_log_get_stream.type
    var rte_log_set_global_level: rte_power_cpufreq_rte_log_set_global_level.type
    var rte_log_get_global_level: rte_power_cpufreq_rte_log_get_global_level.type
    var rte_log_get_level: rte_power_cpufreq_rte_log_get_level.type
    var rte_log_can_log: rte_power_cpufreq_rte_log_can_log.type
    var rte_log_set_level_pattern: rte_power_cpufreq_rte_log_set_level_pattern.type
    var rte_log_set_level_regexp: rte_power_cpufreq_rte_log_set_level_regexp.type
    var rte_log_set_level: rte_power_cpufreq_rte_log_set_level.type
    var rte_log_cur_msg_loglevel: rte_power_cpufreq_rte_log_cur_msg_loglevel.type
    var rte_log_cur_msg_logtype: rte_power_cpufreq_rte_log_cur_msg_logtype.type
    var rte_log_register: rte_power_cpufreq_rte_log_register.type
    var rte_log_register_type_and_pick_level: rte_power_cpufreq_rte_log_register_type_and_pick_level.type
    var rte_log_list_types: rte_power_cpufreq_rte_log_list_types.type
    var rte_log_dump: rte_power_cpufreq_rte_log_dump.type
    var rte_log: rte_power_cpufreq_rte_log.type
    var rte_vlog: rte_power_cpufreq_rte_vlog.type
    var rte_power_register_cpufreq_ops: rte_power_cpufreq_rte_power_register_cpufreq_ops.type
    var rte_power_check_env_supported: rte_power_cpufreq_rte_power_check_env_supported.type
    var rte_power_set_env: rte_power_cpufreq_rte_power_set_env.type
    var rte_power_unset_env: rte_power_cpufreq_rte_power_unset_env.type
    var rte_power_get_env: rte_power_cpufreq_rte_power_get_env.type
    var rte_power_init: rte_power_cpufreq_rte_power_init.type
    var rte_power_exit: rte_power_cpufreq_rte_power_exit.type
    var rte_power_freqs: rte_power_cpufreq_rte_power_freqs.type
    var rte_power_get_freq: rte_power_cpufreq_rte_power_get_freq.type
    var rte_power_set_freq: rte_power_cpufreq_rte_power_set_freq.type
    var rte_power_freq_up: rte_power_cpufreq_rte_power_freq_up.type
    var rte_power_freq_down: rte_power_cpufreq_rte_power_freq_down.type
    var rte_power_freq_max: rte_power_cpufreq_rte_power_freq_max.type
    var rte_power_freq_min: rte_power_cpufreq_rte_power_freq_min.type
    var rte_power_turbo_status: rte_power_cpufreq_rte_power_turbo_status.type
    var rte_power_freq_enable_turbo: rte_power_cpufreq_rte_power_freq_enable_turbo.type
    var rte_power_freq_disable_turbo: rte_power_cpufreq_rte_power_freq_disable_turbo.type
    var rte_power_get_capabilities: rte_power_cpufreq_rte_power_get_capabilities.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_power.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_power_cpufreq from", 'librte_power.so', ":\n", e)
            )

    
        self.alloca = rte_power_cpufreq_alloca.load(self.lib)
        self.sched_setparam = rte_power_cpufreq_sched_setparam.load(self.lib)
        self.sched_getparam = rte_power_cpufreq_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_power_cpufreq_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_power_cpufreq_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_power_cpufreq_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_power_cpufreq_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_power_cpufreq_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_power_cpufreq_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_power_cpufreq_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_power_cpufreq_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_power_cpufreq_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_power_cpufreq_rte_exit.load(self.lib)
        self.remove = rte_power_cpufreq_remove.load(self.lib)
        self.rename = rte_power_cpufreq_rename.load(self.lib)
        self.renameat = rte_power_cpufreq_renameat.load(self.lib)
        self.fclose = rte_power_cpufreq_fclose.load(self.lib)
        self.tmpfile = rte_power_cpufreq_tmpfile.load(self.lib)
        self.tmpnam = rte_power_cpufreq_tmpnam.load(self.lib)
        self.tmpnam_r = rte_power_cpufreq_tmpnam_r.load(self.lib)
        self.tempnam = rte_power_cpufreq_tempnam.load(self.lib)
        self.fflush = rte_power_cpufreq_fflush.load(self.lib)
        self.fflush_unlocked = rte_power_cpufreq_fflush_unlocked.load(self.lib)
        self.fopen = rte_power_cpufreq_fopen.load(self.lib)
        self.freopen = rte_power_cpufreq_freopen.load(self.lib)
        self.fdopen = rte_power_cpufreq_fdopen.load(self.lib)
        self.fmemopen = rte_power_cpufreq_fmemopen.load(self.lib)
        self.open_memstream = rte_power_cpufreq_open_memstream.load(self.lib)
        self.setbuf = rte_power_cpufreq_setbuf.load(self.lib)
        self.setvbuf = rte_power_cpufreq_setvbuf.load(self.lib)
        self.setbuffer = rte_power_cpufreq_setbuffer.load(self.lib)
        self.setlinebuf = rte_power_cpufreq_setlinebuf.load(self.lib)
        self.fprintf = rte_power_cpufreq_fprintf.load(self.lib)
        self.printf = rte_power_cpufreq_printf.load(self.lib)
        self.sprintf = rte_power_cpufreq_sprintf.load(self.lib)
        self.vfprintf = rte_power_cpufreq_vfprintf.load(self.lib)
        self.vprintf = rte_power_cpufreq_vprintf.load(self.lib)
        self.vsprintf = rte_power_cpufreq_vsprintf.load(self.lib)
        self.snprintf = rte_power_cpufreq_snprintf.load(self.lib)
        self.vsnprintf = rte_power_cpufreq_vsnprintf.load(self.lib)
        self.vdprintf = rte_power_cpufreq_vdprintf.load(self.lib)
        self.dprintf = rte_power_cpufreq_dprintf.load(self.lib)
        self.fscanf = rte_power_cpufreq_fscanf.load(self.lib)
        self.scanf = rte_power_cpufreq_scanf.load(self.lib)
        self.sscanf = rte_power_cpufreq_sscanf.load(self.lib)
        self.vfscanf = rte_power_cpufreq_vfscanf.load(self.lib)
        self.vscanf = rte_power_cpufreq_vscanf.load(self.lib)
        self.vsscanf = rte_power_cpufreq_vsscanf.load(self.lib)
        self.fgetc = rte_power_cpufreq_fgetc.load(self.lib)
        self.getc = rte_power_cpufreq_getc.load(self.lib)
        self.getchar = rte_power_cpufreq_getchar.load(self.lib)
        self.getc_unlocked = rte_power_cpufreq_getc_unlocked.load(self.lib)
        self.getchar_unlocked = rte_power_cpufreq_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = rte_power_cpufreq_fgetc_unlocked.load(self.lib)
        self.fputc = rte_power_cpufreq_fputc.load(self.lib)
        self.putc = rte_power_cpufreq_putc.load(self.lib)
        self.putchar = rte_power_cpufreq_putchar.load(self.lib)
        self.fputc_unlocked = rte_power_cpufreq_fputc_unlocked.load(self.lib)
        self.putc_unlocked = rte_power_cpufreq_putc_unlocked.load(self.lib)
        self.putchar_unlocked = rte_power_cpufreq_putchar_unlocked.load(self.lib)
        self.getw = rte_power_cpufreq_getw.load(self.lib)
        self.putw = rte_power_cpufreq_putw.load(self.lib)
        self.fgets = rte_power_cpufreq_fgets.load(self.lib)
        self.getdelim = rte_power_cpufreq_getdelim.load(self.lib)
        self.getline = rte_power_cpufreq_getline.load(self.lib)
        self.fputs = rte_power_cpufreq_fputs.load(self.lib)
        self.puts = rte_power_cpufreq_puts.load(self.lib)
        self.ungetc = rte_power_cpufreq_ungetc.load(self.lib)
        self.fread = rte_power_cpufreq_fread.load(self.lib)
        self.fwrite = rte_power_cpufreq_fwrite.load(self.lib)
        self.fread_unlocked = rte_power_cpufreq_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = rte_power_cpufreq_fwrite_unlocked.load(self.lib)
        self.fseek = rte_power_cpufreq_fseek.load(self.lib)
        self.ftell = rte_power_cpufreq_ftell.load(self.lib)
        self.rewind = rte_power_cpufreq_rewind.load(self.lib)
        self.fseeko = rte_power_cpufreq_fseeko.load(self.lib)
        self.ftello = rte_power_cpufreq_ftello.load(self.lib)
        self.fgetpos = rte_power_cpufreq_fgetpos.load(self.lib)
        self.fsetpos = rte_power_cpufreq_fsetpos.load(self.lib)
        self.clearerr = rte_power_cpufreq_clearerr.load(self.lib)
        self.feof = rte_power_cpufreq_feof.load(self.lib)
        self.ferror = rte_power_cpufreq_ferror.load(self.lib)
        self.clearerr_unlocked = rte_power_cpufreq_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = rte_power_cpufreq_feof_unlocked.load(self.lib)
        self.ferror_unlocked = rte_power_cpufreq_ferror_unlocked.load(self.lib)
        self.perror = rte_power_cpufreq_perror.load(self.lib)
        self.fileno = rte_power_cpufreq_fileno.load(self.lib)
        self.fileno_unlocked = rte_power_cpufreq_fileno_unlocked.load(self.lib)
        self.pclose = rte_power_cpufreq_pclose.load(self.lib)
        self.popen = rte_power_cpufreq_popen.load(self.lib)
        self.ctermid = rte_power_cpufreq_ctermid.load(self.lib)
        self.flockfile = rte_power_cpufreq_flockfile.load(self.lib)
        self.ftrylockfile = rte_power_cpufreq_ftrylockfile.load(self.lib)
        self.funlockfile = rte_power_cpufreq_funlockfile.load(self.lib)
        self.rte_openlog_stream = rte_power_cpufreq_rte_openlog_stream.load(self.lib)
        self.rte_log_get_stream = rte_power_cpufreq_rte_log_get_stream.load(self.lib)
        self.rte_log_set_global_level = rte_power_cpufreq_rte_log_set_global_level.load(self.lib)
        self.rte_log_get_global_level = rte_power_cpufreq_rte_log_get_global_level.load(self.lib)
        self.rte_log_get_level = rte_power_cpufreq_rte_log_get_level.load(self.lib)
        self.rte_log_can_log = rte_power_cpufreq_rte_log_can_log.load(self.lib)
        self.rte_log_set_level_pattern = rte_power_cpufreq_rte_log_set_level_pattern.load(self.lib)
        self.rte_log_set_level_regexp = rte_power_cpufreq_rte_log_set_level_regexp.load(self.lib)
        self.rte_log_set_level = rte_power_cpufreq_rte_log_set_level.load(self.lib)
        self.rte_log_cur_msg_loglevel = rte_power_cpufreq_rte_log_cur_msg_loglevel.load(self.lib)
        self.rte_log_cur_msg_logtype = rte_power_cpufreq_rte_log_cur_msg_logtype.load(self.lib)
        self.rte_log_register = rte_power_cpufreq_rte_log_register.load(self.lib)
        self.rte_log_register_type_and_pick_level = rte_power_cpufreq_rte_log_register_type_and_pick_level.load(self.lib)
        self.rte_log_list_types = rte_power_cpufreq_rte_log_list_types.load(self.lib)
        self.rte_log_dump = rte_power_cpufreq_rte_log_dump.load(self.lib)
        self.rte_log = rte_power_cpufreq_rte_log.load(self.lib)
        self.rte_vlog = rte_power_cpufreq_rte_vlog.load(self.lib)
        self.rte_power_register_cpufreq_ops = rte_power_cpufreq_rte_power_register_cpufreq_ops.load(self.lib)
        self.rte_power_check_env_supported = rte_power_cpufreq_rte_power_check_env_supported.load(self.lib)
        self.rte_power_set_env = rte_power_cpufreq_rte_power_set_env.load(self.lib)
        self.rte_power_unset_env = rte_power_cpufreq_rte_power_unset_env.load(self.lib)
        self.rte_power_get_env = rte_power_cpufreq_rte_power_get_env.load(self.lib)
        self.rte_power_init = rte_power_cpufreq_rte_power_init.load(self.lib)
        self.rte_power_exit = rte_power_cpufreq_rte_power_exit.load(self.lib)
        self.rte_power_freqs = rte_power_cpufreq_rte_power_freqs.load(self.lib)
        self.rte_power_get_freq = rte_power_cpufreq_rte_power_get_freq.load(self.lib)
        self.rte_power_set_freq = rte_power_cpufreq_rte_power_set_freq.load(self.lib)
        self.rte_power_freq_up = rte_power_cpufreq_rte_power_freq_up.load(self.lib)
        self.rte_power_freq_down = rte_power_cpufreq_rte_power_freq_down.load(self.lib)
        self.rte_power_freq_max = rte_power_cpufreq_rte_power_freq_max.load(self.lib)
        self.rte_power_freq_min = rte_power_cpufreq_rte_power_freq_min.load(self.lib)
        self.rte_power_turbo_status = rte_power_cpufreq_rte_power_turbo_status.load(self.lib)
        self.rte_power_freq_enable_turbo = rte_power_cpufreq_rte_power_freq_enable_turbo.load(self.lib)
        self.rte_power_freq_disable_turbo = rte_power_cpufreq_rte_power_freq_disable_turbo.load(self.lib)
        self.rte_power_get_capabilities = rte_power_cpufreq_rte_power_get_capabilities.load(self.lib)

