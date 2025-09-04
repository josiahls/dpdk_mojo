
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
struct anonomous_record_106(ExplicitlyCopyable & Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_106

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
struct timespec(ExplicitlyCopyable & Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_nsec : ffi.c_long

alias pid_t = __pid_t
struct sched_param(ExplicitlyCopyable & Copyable & Movable):
	var sched_priority : Int32

alias __cpu_mask = ffi.c_ulong
struct anonomous_record_107(ExplicitlyCopyable & Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_107

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
	# {"id":"0x342ee6a0","inner":[{"id":"0x34161eb0","inner":[{"id":"0x34161170","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"void *[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Generic marker for any place in a structure. 

alias RTE_MARKER8 = 	# # Node: PlaceHolder()
	# {"id":"0x342ee830","inner":[{"decl":{"id":"0x34279938","kind":"TypedefDecl","name":"uint8_t"},"id":"0x342ee790","inner":[{"decl":{"id":"0x34250090","kind":"TypedefDecl","name":"__uint8_t"},"id":"0x34250420","inner":[{"id":"0x34161270","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"TypedefType","type":{"qualType":"__uint8_t"}}],"kind":"TypedefType","type":{"qualType":"uint8_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint8_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 1B alignment in a structure. 

alias RTE_MARKER16 = 	# # Node: PlaceHolder()
	# {"id":"0x342ee990","inner":[{"decl":{"id":"0x342799a0","kind":"TypedefDecl","name":"uint16_t"},"id":"0x342c0910","inner":[{"decl":{"id":"0x34250170","kind":"TypedefDecl","name":"__uint16_t"},"id":"0x34250540","inner":[{"id":"0x34161290","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"TypedefType","type":{"qualType":"__uint16_t"}}],"kind":"TypedefType","type":{"qualType":"uint16_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint16_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 2B alignment in a structure. 

alias RTE_MARKER32 = 	# # Node: PlaceHolder()
	# {"id":"0x342eeaf0","inner":[{"decl":{"id":"0x34279a08","kind":"TypedefDecl","name":"uint32_t"},"id":"0x342c0880","inner":[{"decl":{"id":"0x34250250","kind":"TypedefDecl","name":"__uint32_t"},"id":"0x34250660","inner":[{"id":"0x341612b0","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"__uint32_t"}}],"kind":"TypedefType","type":{"qualType":"uint32_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint32_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 4B alignment in a structure. 

alias RTE_MARKER64 = 	# # Node: PlaceHolder()
	# {"id":"0x342eec50","inner":[{"decl":{"id":"0x34279a70","kind":"TypedefDecl","name":"uint64_t"},"id":"0x342c07f0","inner":[{"decl":{"id":"0x34250330","kind":"TypedefDecl","name":"__uint64_t"},"id":"0x34250780","inner":[{"id":"0x341612d0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uint64_t"}}],"kind":"TypedefType","type":{"qualType":"uint64_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint64_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 8B alignment in a structure. 

alias rte_str_to_size = fn (read UnsafePointer[Int8]) -> ffi.c_ulong_long
alias rte_size_to_str = fn (UnsafePointer[Int8], Int32, ffi.c_ulong_long, Bool, read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_exit = fn (Int32, read *UnsafePointer[Int8]) -> NoneType
alias va_list = __builtin_va_list
alias __gnuc_va_list = __builtin_va_list
alias anonomous_record_108 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_109(ExplicitlyCopyable & Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_108

alias __mbstate_t = anonomous_record_109

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
struct cirbuf(ExplicitlyCopyable & Copyable & Movable):

	var maxlen : UInt32

	var start : UInt32

	var end : UInt32

	var len : UInt32

	var buf : UnsafePointer[Int8]

alias cirbuf_init = fn (UnsafePointer[cirbuf], UnsafePointer[Int8], UInt32, UInt32) -> Int32
alias cirbuf_add_head_safe = fn (UnsafePointer[cirbuf], Int8) -> Int32
alias cirbuf_add_head = fn (UnsafePointer[cirbuf], Int8) -> NoneType
alias cirbuf_add_tail_safe = fn (UnsafePointer[cirbuf], Int8) -> Int32
alias cirbuf_add_tail = fn (UnsafePointer[cirbuf], Int8) -> NoneType
alias cirbuf_del_head_safe = fn (UnsafePointer[cirbuf]) -> Int32
alias cirbuf_del_head = fn (UnsafePointer[cirbuf]) -> NoneType
alias cirbuf_del_tail_safe = fn (UnsafePointer[cirbuf]) -> Int32
alias cirbuf_del_tail = fn (UnsafePointer[cirbuf]) -> NoneType
alias cirbuf_get_head = fn (UnsafePointer[cirbuf]) -> Int8
alias cirbuf_get_tail = fn (UnsafePointer[cirbuf]) -> Int8
alias cirbuf_add_buf_head = fn (UnsafePointer[cirbuf], read UnsafePointer[Int8], UInt32) -> Int32
alias cirbuf_add_buf_tail = fn (UnsafePointer[cirbuf], read UnsafePointer[Int8], UInt32) -> Int32
alias cirbuf_del_buf_head = fn (UnsafePointer[cirbuf], UInt32) -> Int32
alias cirbuf_del_buf_tail = fn (UnsafePointer[cirbuf], UInt32) -> Int32
alias cirbuf_get_buf_head = fn (UnsafePointer[cirbuf], UnsafePointer[Int8], UInt32) -> Int32
alias cirbuf_get_buf_tail = fn (UnsafePointer[cirbuf], UnsafePointer[Int8], UInt32) -> Int32
alias cirbuf_align_left = fn (UnsafePointer[cirbuf]) -> Int32
alias cirbuf_align_right = fn (UnsafePointer[cirbuf]) -> Int32
alias cmdline_vt100_commands = UnsafePointer[UnsafePointer[Int8]] # Failed to parse array size
struct cmdline_vt100_parser_state(ExplicitlyCopyable & Copyable & Movable):
	alias CMDLINE_VT100_INIT = 0

	alias CMDLINE_VT100_ESCAPE = 1

	alias CMDLINE_VT100_ESCAPE_CSI = 2

struct cmdline_vt100(ExplicitlyCopyable & Copyable & Movable):
	var bufpos : UInt8

	var buf : InlineArray[Int8, 8]

	var state : cmdline_vt100_parser_state

alias vt100_init = fn (UnsafePointer[cmdline_vt100]) -> NoneType
alias vt100_parser = fn (UnsafePointer[cmdline_vt100], Int8) -> Int32
struct rdline(ExplicitlyCopyable & Copyable & Movable):
	pass
alias rdline_write_char_t = 	# # Node: PlaceHolder()
	# {"id":"0x34333b30","inner":[{"cc":"cdecl","id":"0x34333af0","inner":[{"id":"0x34161210","kind":"BuiltinType","type":{"qualType":"int"}},{"id":"0x34333980","inner":[{"id":"0x34333920","inner":[{"decl":{"id":"0x34333880","kind":"RecordDecl","name":"rdline"},"id":"0x34333900","kind":"RecordType","type":{"qualType":"struct rdline"}}],"kind":"ElaboratedType","type":{"qualType":"struct rdline"}}],"kind":"PointerType","type":{"qualType":"struct rdline *"}},{"id":"0x341611b0","kind":"BuiltinType","type":{"qualType":"char"}}],"kind":"FunctionProtoType","type":{"qualType":"int (struct rdline *, char)"}}],"kind":"ParenType","type":{"qualType":"int (struct rdline *, char)"}}

alias rdline_validate_t = 	# # Node: PlaceHolder()
	# {"id":"0x34333e00","inner":[{"cc":"cdecl","id":"0x34333dc0","inner":[{"id":"0x34161170","kind":"BuiltinType","type":{"qualType":"void"}},{"id":"0x34333980","inner":[{"id":"0x34333920","inner":[{"decl":{"id":"0x34333880","kind":"RecordDecl","name":"rdline"},"id":"0x34333900","kind":"RecordType","type":{"qualType":"struct rdline"}}],"kind":"ElaboratedType","type":{"qualType":"struct rdline"}}],"kind":"PointerType","type":{"qualType":"struct rdline *"}},{"id":"0x342038f0","inner":[{"id":"0x341611b1","inner":[{"id":"0x341611b0","kind":"BuiltinType","type":{"qualType":"char"}}],"kind":"QualType","qualifiers":"const","type":{"qualType":"const char"}}],"kind":"PointerType","type":{"qualType":"const char *"}},{"id":"0x341612b0","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"FunctionProtoType","type":{"qualType":"void (struct rdline *, const char *, unsigned int)"}}],"kind":"ParenType","type":{"qualType":"void (struct rdline *, const char *, unsigned int)"}}

alias rdline_complete_t = 	# # Node: PlaceHolder()
	# {"id":"0x34334220","inner":[{"cc":"cdecl","id":"0x343341d0","inner":[{"id":"0x34161210","kind":"BuiltinType","type":{"qualType":"int"}},{"id":"0x34333980","inner":[{"id":"0x34333920","inner":[{"decl":{"id":"0x34333880","kind":"RecordDecl","name":"rdline"},"id":"0x34333900","kind":"RecordType","type":{"qualType":"struct rdline"}}],"kind":"ElaboratedType","type":{"qualType":"struct rdline"}}],"kind":"PointerType","type":{"qualType":"struct rdline *"}},{"id":"0x342038f0","inner":[{"id":"0x341611b1","inner":[{"id":"0x341611b0","kind":"BuiltinType","type":{"qualType":"char"}}],"kind":"QualType","qualifiers":"const","type":{"qualType":"const char"}}],"kind":"PointerType","type":{"qualType":"const char *"}},{"id":"0x342052d0","inner":[{"id":"0x341611b0","kind":"BuiltinType","type":{"qualType":"char"}}],"kind":"PointerType","type":{"qualType":"char *"}},{"id":"0x341612b0","kind":"BuiltinType","type":{"qualType":"unsigned int"}},{"id":"0x343340d0","inner":[{"id":"0x34161210","kind":"BuiltinType","type":{"qualType":"int"}}],"kind":"PointerType","type":{"qualType":"int *"}}],"kind":"FunctionProtoType","type":{"qualType":"int (struct rdline *, const char *, char *, unsigned int, int *)"}}],"kind":"ParenType","type":{"qualType":"int (struct rdline *, const char *, char *, unsigned int, int *)"}}

alias rdline_new = fn (UnsafePointer[rdline_write_char_t], UnsafePointer[rdline_validate_t], UnsafePointer[rdline_complete_t], OpaquePointer) -> UnsafePointer[rdline]
alias rdline_free = fn (UnsafePointer[rdline]) -> NoneType
alias rdline_newline = fn (UnsafePointer[rdline], read UnsafePointer[Int8]) -> NoneType
alias rdline_stop = fn (UnsafePointer[rdline]) -> NoneType
alias rdline_quit = fn (UnsafePointer[rdline]) -> NoneType
alias rdline_restart = fn (UnsafePointer[rdline]) -> NoneType
alias rdline_redisplay = fn (UnsafePointer[rdline]) -> NoneType
alias rdline_reset = fn (UnsafePointer[rdline]) -> NoneType
alias rdline_char_in = fn (UnsafePointer[rdline], Int8) -> Int32
alias rdline_get_buffer = fn (UnsafePointer[rdline]) -> UnsafePointer[Int8]
alias rdline_add_history = fn (UnsafePointer[rdline], read UnsafePointer[Int8]) -> Int32
alias rdline_clear_history = fn (UnsafePointer[rdline]) -> NoneType
alias rdline_get_history_item = fn (UnsafePointer[rdline], UInt32) -> UnsafePointer[Int8]
alias rdline_get_history_buffer_size = fn (UnsafePointer[rdline]) -> size_t
alias rdline_get_opaque = fn (UnsafePointer[rdline]) -> OpaquePointer
struct cmdline_token_ops(ExplicitlyCopyable & Copyable & Movable):
	pass
struct cmdline_token_hdr(ExplicitlyCopyable & Copyable & Movable):

	var ops : cmdline_token_ops

	var offset : UInt32

alias cmdline_parse_token_hdr_t = cmdline_token_hdr

struct cmdline(ExplicitlyCopyable & Copyable & Movable):
	pass
struct cmdline_inst(ExplicitlyCopyable & Copyable & Movable):
# # Node: PlaceHolder()
# {"closeName":"endcode","id":"0x34348fb0","inner":[{"id":"0x34349000","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":84,"offset":2755,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":2755,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":2755,"tokLen":0}},"text":""},{"id":"0x34349020","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":85,"offset":2758,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":2758,"tokLen":0},"end":{"col":44,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":2799,"tokLen":0}},"text":" f((struct cmdline_token_hdr **)&token_p,"},{"id":"0x34349040","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":86,"offset":2802,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":2802,"tokLen":0},"end":{"col":11,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":2810,"tokLen":0}},"text":"   NULL,"},{"id":"0x34349060","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":87,"offset":2813,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":2813,"tokLen":0},"end":{"col":55,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":2865,"tokLen":0}},"text":"   (struct cmdline_token_hdr **)&inst->tokens[num]);"},{"id":"0x34349080","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":88,"offset":2868,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":2868,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":2868,"tokLen":0}},"text":""}],"kind":"VerbatimBlockComment","loc":{"col":5,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":2748,"tokLen":4},"name":"code","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":2747,"tokLen":1},"end":{"col":9,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":2752,"tokLen":0}}}
# # Node: PlaceHolder()
# {"closeName":"endcode","id":"0x3434ace0","inner":[{"id":"0x3434ad30","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":113,"offset":3880,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":3880,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":3880,"tokLen":0}},"text":""},{"id":"0x3434ad50","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":114,"offset":3883,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":3883,"tokLen":0},"end":{"col":74,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":3954,"tokLen":0}},"text":" // Assuming first and third arguments are respectively named \"token_p\""},{"id":"0x3434ad70","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":115,"offset":3957,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":3957,"tokLen":0},"end":{"col":19,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":3973,"tokLen":0}},"text":" // and \"token\":"},{"id":"0x3434ad90","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":116,"offset":3976,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":3976,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":3976,"tokLen":0}},"text":""},{"id":"0x3434adb0","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":117,"offset":3979,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":3979,"tokLen":0},"end":{"col":37,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4013,"tokLen":0}},"text":" int index = token - inst->tokens;"},{"id":"0x3434add0","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":118,"offset":4016,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4016,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4016,"tokLen":0}},"text":""},{"id":"0x3434adf0","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":119,"offset":4019,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4019,"tokLen":0},"end":{"col":17,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4033,"tokLen":0}},"text":" if (!index) {"},{"id":"0x3434ae10","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":120,"offset":4036,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4036,"tokLen":0},"end":{"col":50,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4083,"tokLen":0}},"text":"     [...] // Clean up internal context if any."},{"id":"0x3434ae30","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":121,"offset":4086,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4086,"tokLen":0},"end":{"col":5,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4088,"tokLen":0}},"text":" }"},{"id":"0x3434ae50","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":122,"offset":4091,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4091,"tokLen":0},"end":{"col":54,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4142,"tokLen":0}},"text":" [...] // Then set up dyn_token according to index."},{"id":"0x3434ae70","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":123,"offset":4145,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4145,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4145,"tokLen":0}},"text":""},{"id":"0x3434ae90","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":124,"offset":4148,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4148,"tokLen":0},"end":{"col":23,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4168,"tokLen":0}},"text":" if (no_more_tokens)"},{"id":"0x3434aeb0","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":125,"offset":4171,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4171,"tokLen":0},"end":{"col":24,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4192,"tokLen":0}},"text":"     *token_p = NULL;"},{"id":"0x3434aed0","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":126,"offset":4195,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4195,"tokLen":0},"end":{"col":8,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4200,"tokLen":0}},"text":" else"},{"id":"0x3434aef0","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":127,"offset":4203,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4203,"tokLen":0},"end":{"col":30,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4230,"tokLen":0}},"text":"     *token_p = &dyn_token;"},{"id":"0x3434af10","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"line":128,"offset":4233,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4233,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":4233,"tokLen":0}},"text":""}],"kind":"VerbatimBlockComment","loc":{"col":5,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":3873,"tokLen":4},"name":"code","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":3872,"tokLen":1},"end":{"col":9,"includedFrom":{"file":"dpdk/lib/cmdline/cmdline.h"},"offset":3877,"tokLen":0}}}

	var f : fn(OpaquePointer, UnsafePointer[cmdline], OpaquePointer) -> NoneType

	var data : OpaquePointer

	var help_str : UnsafePointer[Int8]

	var tokens : UnsafePointer[UnsafePointer[cmdline_parse_token_hdr_t]] # Failed to parse array size

alias cmdline_parse_inst_t = cmdline_inst

alias cmdline_parse_ctx_t = UnsafePointer[cmdline_parse_inst_t]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  A context is identified by its name, and contains a list of
# Node: TextComment()
#  instruction

alias cmdline_parse = fn (UnsafePointer[cmdline], read UnsafePointer[Int8]) -> Int32
alias cmdline_parse_check = fn (UnsafePointer[cmdline], read UnsafePointer[Int8]) -> Int32
alias cmdline_complete = fn (UnsafePointer[cmdline], read UnsafePointer[Int8], UnsafePointer[Int32], UnsafePointer[Int8], UInt32) -> Int32
alias cmdline_isendoftoken = fn (Int8) -> Int32
alias cmdline_isendofcommand = fn (Int8) -> Int32
struct rdline_status(ExplicitlyCopyable & Copyable & Movable):
	alias RDLINE_INIT = 0

	alias RDLINE_RUNNING = 1

	alias RDLINE_EXITED = 2

alias cmdline_new = fn (UnsafePointer[cmdline_parse_ctx_t], read UnsafePointer[Int8], Int32, Int32) -> UnsafePointer[cmdline]
alias cmdline_set_prompt = fn (UnsafePointer[cmdline], read UnsafePointer[Int8]) -> NoneType
alias cmdline_free = fn (UnsafePointer[cmdline]) -> NoneType
alias cmdline_printf = fn (read UnsafePointer[cmdline], read *UnsafePointer[Int8]) -> NoneType
alias cmdline_in = fn (UnsafePointer[cmdline], read UnsafePointer[Int8], Int32) -> Int32
alias cmdline_write_char = fn (UnsafePointer[rdline], Int8) -> Int32
alias cmdline_get_rdline = fn (UnsafePointer[cmdline]) -> UnsafePointer[rdline]
alias cmdline_interact = fn (UnsafePointer[cmdline]) -> NoneType
alias cmdline_quit = fn (UnsafePointer[cmdline]) -> NoneType


alias cmdline_alloca = ExternalFunction['alloca', alloca]
alias cmdline_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias cmdline_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias cmdline_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias cmdline_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias cmdline_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias cmdline_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias cmdline_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias cmdline_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias cmdline_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias cmdline_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias cmdline_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias cmdline_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias cmdline_remove = ExternalFunction['remove', remove]
alias cmdline_rename = ExternalFunction['rename', rename]
alias cmdline_renameat = ExternalFunction['renameat', renameat]
alias cmdline_fclose = ExternalFunction['fclose', fclose]
alias cmdline_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias cmdline_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias cmdline_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias cmdline_tempnam = ExternalFunction['tempnam', tempnam]
alias cmdline_fflush = ExternalFunction['fflush', fflush]
alias cmdline_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias cmdline_fopen = ExternalFunction['fopen', fopen]
alias cmdline_freopen = ExternalFunction['freopen', freopen]
alias cmdline_fdopen = ExternalFunction['fdopen', fdopen]
alias cmdline_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias cmdline_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias cmdline_setbuf = ExternalFunction['setbuf', setbuf]
alias cmdline_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias cmdline_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias cmdline_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias cmdline_fprintf = ExternalFunction['fprintf', fprintf]
alias cmdline_printf = ExternalFunction['printf', printf]
alias cmdline_sprintf = ExternalFunction['sprintf', sprintf]
alias cmdline_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias cmdline_vprintf = ExternalFunction['vprintf', vprintf]
alias cmdline_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias cmdline_snprintf = ExternalFunction['snprintf', snprintf]
alias cmdline_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias cmdline_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias cmdline_dprintf = ExternalFunction['dprintf', dprintf]
alias cmdline_fscanf = ExternalFunction['fscanf', fscanf]
alias cmdline_scanf = ExternalFunction['scanf', scanf]
alias cmdline_sscanf = ExternalFunction['sscanf', sscanf]
alias cmdline_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias cmdline_vscanf = ExternalFunction['vscanf', vscanf]
alias cmdline_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias cmdline_fgetc = ExternalFunction['fgetc', fgetc]
alias cmdline_getc = ExternalFunction['getc', getc]
alias cmdline_getchar = ExternalFunction['getchar', getchar]
alias cmdline_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias cmdline_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias cmdline_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias cmdline_fputc = ExternalFunction['fputc', fputc]
alias cmdline_putc = ExternalFunction['putc', putc]
alias cmdline_putchar = ExternalFunction['putchar', putchar]
alias cmdline_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias cmdline_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias cmdline_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias cmdline_getw = ExternalFunction['getw', getw]
alias cmdline_putw = ExternalFunction['putw', putw]
alias cmdline_fgets = ExternalFunction['fgets', fgets]
alias cmdline_getdelim = ExternalFunction['getdelim', getdelim]
alias cmdline_getline = ExternalFunction['getline', getline]
alias cmdline_fputs = ExternalFunction['fputs', fputs]
alias cmdline_puts = ExternalFunction['puts', puts]
alias cmdline_ungetc = ExternalFunction['ungetc', ungetc]
alias cmdline_fread = ExternalFunction['fread', fread]
alias cmdline_fwrite = ExternalFunction['fwrite', fwrite]
alias cmdline_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias cmdline_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias cmdline_fseek = ExternalFunction['fseek', fseek]
alias cmdline_ftell = ExternalFunction['ftell', ftell]
alias cmdline_rewind = ExternalFunction['rewind', rewind]
alias cmdline_fseeko = ExternalFunction['fseeko', fseeko]
alias cmdline_ftello = ExternalFunction['ftello', ftello]
alias cmdline_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias cmdline_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias cmdline_clearerr = ExternalFunction['clearerr', clearerr]
alias cmdline_feof = ExternalFunction['feof', feof]
alias cmdline_ferror = ExternalFunction['ferror', ferror]
alias cmdline_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias cmdline_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias cmdline_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias cmdline_perror = ExternalFunction['perror', perror]
alias cmdline_fileno = ExternalFunction['fileno', fileno]
alias cmdline_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias cmdline_pclose = ExternalFunction['pclose', pclose]
alias cmdline_popen = ExternalFunction['popen', popen]
alias cmdline_ctermid = ExternalFunction['ctermid', ctermid]
alias cmdline_flockfile = ExternalFunction['flockfile', flockfile]
alias cmdline_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias cmdline_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias cmdline_cirbuf_init = ExternalFunction['cirbuf_init', cirbuf_init]
alias cmdline_cirbuf_add_head_safe = ExternalFunction['cirbuf_add_head_safe', cirbuf_add_head_safe]
alias cmdline_cirbuf_add_head = ExternalFunction['cirbuf_add_head', cirbuf_add_head]
alias cmdline_cirbuf_add_tail_safe = ExternalFunction['cirbuf_add_tail_safe', cirbuf_add_tail_safe]
alias cmdline_cirbuf_add_tail = ExternalFunction['cirbuf_add_tail', cirbuf_add_tail]
alias cmdline_cirbuf_del_head_safe = ExternalFunction['cirbuf_del_head_safe', cirbuf_del_head_safe]
alias cmdline_cirbuf_del_head = ExternalFunction['cirbuf_del_head', cirbuf_del_head]
alias cmdline_cirbuf_del_tail_safe = ExternalFunction['cirbuf_del_tail_safe', cirbuf_del_tail_safe]
alias cmdline_cirbuf_del_tail = ExternalFunction['cirbuf_del_tail', cirbuf_del_tail]
alias cmdline_cirbuf_get_head = ExternalFunction['cirbuf_get_head', cirbuf_get_head]
alias cmdline_cirbuf_get_tail = ExternalFunction['cirbuf_get_tail', cirbuf_get_tail]
alias cmdline_cirbuf_add_buf_head = ExternalFunction['cirbuf_add_buf_head', cirbuf_add_buf_head]
alias cmdline_cirbuf_add_buf_tail = ExternalFunction['cirbuf_add_buf_tail', cirbuf_add_buf_tail]
alias cmdline_cirbuf_del_buf_head = ExternalFunction['cirbuf_del_buf_head', cirbuf_del_buf_head]
alias cmdline_cirbuf_del_buf_tail = ExternalFunction['cirbuf_del_buf_tail', cirbuf_del_buf_tail]
alias cmdline_cirbuf_get_buf_head = ExternalFunction['cirbuf_get_buf_head', cirbuf_get_buf_head]
alias cmdline_cirbuf_get_buf_tail = ExternalFunction['cirbuf_get_buf_tail', cirbuf_get_buf_tail]
alias cmdline_cirbuf_align_left = ExternalFunction['cirbuf_align_left', cirbuf_align_left]
alias cmdline_cirbuf_align_right = ExternalFunction['cirbuf_align_right', cirbuf_align_right]
alias cmdline_vt100_init = ExternalFunction['vt100_init', vt100_init]
alias cmdline_vt100_parser = ExternalFunction['vt100_parser', vt100_parser]
alias cmdline_rdline_new = ExternalFunction['rdline_new', rdline_new]
alias cmdline_rdline_free = ExternalFunction['rdline_free', rdline_free]
alias cmdline_rdline_newline = ExternalFunction['rdline_newline', rdline_newline]
alias cmdline_rdline_stop = ExternalFunction['rdline_stop', rdline_stop]
alias cmdline_rdline_quit = ExternalFunction['rdline_quit', rdline_quit]
alias cmdline_rdline_restart = ExternalFunction['rdline_restart', rdline_restart]
alias cmdline_rdline_redisplay = ExternalFunction['rdline_redisplay', rdline_redisplay]
alias cmdline_rdline_reset = ExternalFunction['rdline_reset', rdline_reset]
alias cmdline_rdline_char_in = ExternalFunction['rdline_char_in', rdline_char_in]
alias cmdline_rdline_get_buffer = ExternalFunction['rdline_get_buffer', rdline_get_buffer]
alias cmdline_rdline_add_history = ExternalFunction['rdline_add_history', rdline_add_history]
alias cmdline_rdline_clear_history = ExternalFunction['rdline_clear_history', rdline_clear_history]
alias cmdline_rdline_get_history_item = ExternalFunction['rdline_get_history_item', rdline_get_history_item]
alias cmdline_rdline_get_history_buffer_size = ExternalFunction['rdline_get_history_buffer_size', rdline_get_history_buffer_size]
alias cmdline_rdline_get_opaque = ExternalFunction['rdline_get_opaque', rdline_get_opaque]
alias cmdline_cmdline_parse = ExternalFunction['cmdline_parse', cmdline_parse]
alias cmdline_cmdline_parse_check = ExternalFunction['cmdline_parse_check', cmdline_parse_check]
alias cmdline_cmdline_complete = ExternalFunction['cmdline_complete', cmdline_complete]
alias cmdline_cmdline_isendoftoken = ExternalFunction['cmdline_isendoftoken', cmdline_isendoftoken]
alias cmdline_cmdline_isendofcommand = ExternalFunction['cmdline_isendofcommand', cmdline_isendofcommand]
alias cmdline_cmdline_new = ExternalFunction['cmdline_new', cmdline_new]
alias cmdline_cmdline_set_prompt = ExternalFunction['cmdline_set_prompt', cmdline_set_prompt]
alias cmdline_cmdline_free = ExternalFunction['cmdline_free', cmdline_free]
alias cmdline_cmdline_printf = ExternalFunction['cmdline_printf', cmdline_printf]
alias cmdline_cmdline_in = ExternalFunction['cmdline_in', cmdline_in]
alias cmdline_cmdline_write_char = ExternalFunction['cmdline_write_char', cmdline_write_char]
alias cmdline_cmdline_get_rdline = ExternalFunction['cmdline_get_rdline', cmdline_get_rdline]
alias cmdline_cmdline_interact = ExternalFunction['cmdline_interact', cmdline_interact]
alias cmdline_cmdline_quit = ExternalFunction['cmdline_quit', cmdline_quit]

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
struct cmdline(Copyable, Movable):
    var lib: DLHandle
    
    var alloca: cmdline_alloca.type
    var sched_setparam: cmdline_sched_setparam.type
    var sched_getparam: cmdline_sched_getparam.type
    var sched_setscheduler: cmdline_sched_setscheduler.type
    var sched_getscheduler: cmdline_sched_getscheduler.type
    var sched_yield: cmdline_sched_yield.type
    var sched_get_priority_max: cmdline_sched_get_priority_max.type
    var sched_get_priority_min: cmdline_sched_get_priority_min.type
    var sched_rr_get_interval: cmdline_sched_rr_get_interval.type
    var rte_is_aligned: cmdline_rte_is_aligned.type
    var rte_str_to_size: cmdline_rte_str_to_size.type
    var rte_size_to_str: cmdline_rte_size_to_str.type
    var rte_exit: cmdline_rte_exit.type
    var remove: cmdline_remove.type
    var rename: cmdline_rename.type
    var renameat: cmdline_renameat.type
    var fclose: cmdline_fclose.type
    var tmpfile: cmdline_tmpfile.type
    var tmpnam: cmdline_tmpnam.type
    var tmpnam_r: cmdline_tmpnam_r.type
    var tempnam: cmdline_tempnam.type
    var fflush: cmdline_fflush.type
    var fflush_unlocked: cmdline_fflush_unlocked.type
    var fopen: cmdline_fopen.type
    var freopen: cmdline_freopen.type
    var fdopen: cmdline_fdopen.type
    var fmemopen: cmdline_fmemopen.type
    var open_memstream: cmdline_open_memstream.type
    var setbuf: cmdline_setbuf.type
    var setvbuf: cmdline_setvbuf.type
    var setbuffer: cmdline_setbuffer.type
    var setlinebuf: cmdline_setlinebuf.type
    var fprintf: cmdline_fprintf.type
    var printf: cmdline_printf.type
    var sprintf: cmdline_sprintf.type
    var vfprintf: cmdline_vfprintf.type
    var vprintf: cmdline_vprintf.type
    var vsprintf: cmdline_vsprintf.type
    var snprintf: cmdline_snprintf.type
    var vsnprintf: cmdline_vsnprintf.type
    var vdprintf: cmdline_vdprintf.type
    var dprintf: cmdline_dprintf.type
    var fscanf: cmdline_fscanf.type
    var scanf: cmdline_scanf.type
    var sscanf: cmdline_sscanf.type
    var vfscanf: cmdline_vfscanf.type
    var vscanf: cmdline_vscanf.type
    var vsscanf: cmdline_vsscanf.type
    var fgetc: cmdline_fgetc.type
    var getc: cmdline_getc.type
    var getchar: cmdline_getchar.type
    var getc_unlocked: cmdline_getc_unlocked.type
    var getchar_unlocked: cmdline_getchar_unlocked.type
    var fgetc_unlocked: cmdline_fgetc_unlocked.type
    var fputc: cmdline_fputc.type
    var putc: cmdline_putc.type
    var putchar: cmdline_putchar.type
    var fputc_unlocked: cmdline_fputc_unlocked.type
    var putc_unlocked: cmdline_putc_unlocked.type
    var putchar_unlocked: cmdline_putchar_unlocked.type
    var getw: cmdline_getw.type
    var putw: cmdline_putw.type
    var fgets: cmdline_fgets.type
    var getdelim: cmdline_getdelim.type
    var getline: cmdline_getline.type
    var fputs: cmdline_fputs.type
    var puts: cmdline_puts.type
    var ungetc: cmdline_ungetc.type
    var fread: cmdline_fread.type
    var fwrite: cmdline_fwrite.type
    var fread_unlocked: cmdline_fread_unlocked.type
    var fwrite_unlocked: cmdline_fwrite_unlocked.type
    var fseek: cmdline_fseek.type
    var ftell: cmdline_ftell.type
    var rewind: cmdline_rewind.type
    var fseeko: cmdline_fseeko.type
    var ftello: cmdline_ftello.type
    var fgetpos: cmdline_fgetpos.type
    var fsetpos: cmdline_fsetpos.type
    var clearerr: cmdline_clearerr.type
    var feof: cmdline_feof.type
    var ferror: cmdline_ferror.type
    var clearerr_unlocked: cmdline_clearerr_unlocked.type
    var feof_unlocked: cmdline_feof_unlocked.type
    var ferror_unlocked: cmdline_ferror_unlocked.type
    var perror: cmdline_perror.type
    var fileno: cmdline_fileno.type
    var fileno_unlocked: cmdline_fileno_unlocked.type
    var pclose: cmdline_pclose.type
    var popen: cmdline_popen.type
    var ctermid: cmdline_ctermid.type
    var flockfile: cmdline_flockfile.type
    var ftrylockfile: cmdline_ftrylockfile.type
    var funlockfile: cmdline_funlockfile.type
    var cirbuf_init: cmdline_cirbuf_init.type
    var cirbuf_add_head_safe: cmdline_cirbuf_add_head_safe.type
    var cirbuf_add_head: cmdline_cirbuf_add_head.type
    var cirbuf_add_tail_safe: cmdline_cirbuf_add_tail_safe.type
    var cirbuf_add_tail: cmdline_cirbuf_add_tail.type
    var cirbuf_del_head_safe: cmdline_cirbuf_del_head_safe.type
    var cirbuf_del_head: cmdline_cirbuf_del_head.type
    var cirbuf_del_tail_safe: cmdline_cirbuf_del_tail_safe.type
    var cirbuf_del_tail: cmdline_cirbuf_del_tail.type
    var cirbuf_get_head: cmdline_cirbuf_get_head.type
    var cirbuf_get_tail: cmdline_cirbuf_get_tail.type
    var cirbuf_add_buf_head: cmdline_cirbuf_add_buf_head.type
    var cirbuf_add_buf_tail: cmdline_cirbuf_add_buf_tail.type
    var cirbuf_del_buf_head: cmdline_cirbuf_del_buf_head.type
    var cirbuf_del_buf_tail: cmdline_cirbuf_del_buf_tail.type
    var cirbuf_get_buf_head: cmdline_cirbuf_get_buf_head.type
    var cirbuf_get_buf_tail: cmdline_cirbuf_get_buf_tail.type
    var cirbuf_align_left: cmdline_cirbuf_align_left.type
    var cirbuf_align_right: cmdline_cirbuf_align_right.type
    var vt100_init: cmdline_vt100_init.type
    var vt100_parser: cmdline_vt100_parser.type
    var rdline_new: cmdline_rdline_new.type
    var rdline_free: cmdline_rdline_free.type
    var rdline_newline: cmdline_rdline_newline.type
    var rdline_stop: cmdline_rdline_stop.type
    var rdline_quit: cmdline_rdline_quit.type
    var rdline_restart: cmdline_rdline_restart.type
    var rdline_redisplay: cmdline_rdline_redisplay.type
    var rdline_reset: cmdline_rdline_reset.type
    var rdline_char_in: cmdline_rdline_char_in.type
    var rdline_get_buffer: cmdline_rdline_get_buffer.type
    var rdline_add_history: cmdline_rdline_add_history.type
    var rdline_clear_history: cmdline_rdline_clear_history.type
    var rdline_get_history_item: cmdline_rdline_get_history_item.type
    var rdline_get_history_buffer_size: cmdline_rdline_get_history_buffer_size.type
    var rdline_get_opaque: cmdline_rdline_get_opaque.type
    var cmdline_parse: cmdline_cmdline_parse.type
    var cmdline_parse_check: cmdline_cmdline_parse_check.type
    var cmdline_complete: cmdline_cmdline_complete.type
    var cmdline_isendoftoken: cmdline_cmdline_isendoftoken.type
    var cmdline_isendofcommand: cmdline_cmdline_isendofcommand.type
    var cmdline_new: cmdline_cmdline_new.type
    var cmdline_set_prompt: cmdline_cmdline_set_prompt.type
    var cmdline_free: cmdline_cmdline_free.type
    var cmdline_printf: cmdline_cmdline_printf.type
    var cmdline_in: cmdline_cmdline_in.type
    var cmdline_write_char: cmdline_cmdline_write_char.type
    var cmdline_get_rdline: cmdline_cmdline_get_rdline.type
    var cmdline_interact: cmdline_cmdline_interact.type
    var cmdline_quit: cmdline_cmdline_quit.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_cmdline.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load cmdline from", 'librte_cmdline.so', ":\n", e)
            )

    
        self.alloca = cmdline_alloca.load(self.lib)
        self.sched_setparam = cmdline_sched_setparam.load(self.lib)
        self.sched_getparam = cmdline_sched_getparam.load(self.lib)
        self.sched_setscheduler = cmdline_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = cmdline_sched_getscheduler.load(self.lib)
        self.sched_yield = cmdline_sched_yield.load(self.lib)
        self.sched_get_priority_max = cmdline_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = cmdline_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = cmdline_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = cmdline_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = cmdline_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = cmdline_rte_size_to_str.load(self.lib)
        self.rte_exit = cmdline_rte_exit.load(self.lib)
        self.remove = cmdline_remove.load(self.lib)
        self.rename = cmdline_rename.load(self.lib)
        self.renameat = cmdline_renameat.load(self.lib)
        self.fclose = cmdline_fclose.load(self.lib)
        self.tmpfile = cmdline_tmpfile.load(self.lib)
        self.tmpnam = cmdline_tmpnam.load(self.lib)
        self.tmpnam_r = cmdline_tmpnam_r.load(self.lib)
        self.tempnam = cmdline_tempnam.load(self.lib)
        self.fflush = cmdline_fflush.load(self.lib)
        self.fflush_unlocked = cmdline_fflush_unlocked.load(self.lib)
        self.fopen = cmdline_fopen.load(self.lib)
        self.freopen = cmdline_freopen.load(self.lib)
        self.fdopen = cmdline_fdopen.load(self.lib)
        self.fmemopen = cmdline_fmemopen.load(self.lib)
        self.open_memstream = cmdline_open_memstream.load(self.lib)
        self.setbuf = cmdline_setbuf.load(self.lib)
        self.setvbuf = cmdline_setvbuf.load(self.lib)
        self.setbuffer = cmdline_setbuffer.load(self.lib)
        self.setlinebuf = cmdline_setlinebuf.load(self.lib)
        self.fprintf = cmdline_fprintf.load(self.lib)
        self.printf = cmdline_printf.load(self.lib)
        self.sprintf = cmdline_sprintf.load(self.lib)
        self.vfprintf = cmdline_vfprintf.load(self.lib)
        self.vprintf = cmdline_vprintf.load(self.lib)
        self.vsprintf = cmdline_vsprintf.load(self.lib)
        self.snprintf = cmdline_snprintf.load(self.lib)
        self.vsnprintf = cmdline_vsnprintf.load(self.lib)
        self.vdprintf = cmdline_vdprintf.load(self.lib)
        self.dprintf = cmdline_dprintf.load(self.lib)
        self.fscanf = cmdline_fscanf.load(self.lib)
        self.scanf = cmdline_scanf.load(self.lib)
        self.sscanf = cmdline_sscanf.load(self.lib)
        self.vfscanf = cmdline_vfscanf.load(self.lib)
        self.vscanf = cmdline_vscanf.load(self.lib)
        self.vsscanf = cmdline_vsscanf.load(self.lib)
        self.fgetc = cmdline_fgetc.load(self.lib)
        self.getc = cmdline_getc.load(self.lib)
        self.getchar = cmdline_getchar.load(self.lib)
        self.getc_unlocked = cmdline_getc_unlocked.load(self.lib)
        self.getchar_unlocked = cmdline_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = cmdline_fgetc_unlocked.load(self.lib)
        self.fputc = cmdline_fputc.load(self.lib)
        self.putc = cmdline_putc.load(self.lib)
        self.putchar = cmdline_putchar.load(self.lib)
        self.fputc_unlocked = cmdline_fputc_unlocked.load(self.lib)
        self.putc_unlocked = cmdline_putc_unlocked.load(self.lib)
        self.putchar_unlocked = cmdline_putchar_unlocked.load(self.lib)
        self.getw = cmdline_getw.load(self.lib)
        self.putw = cmdline_putw.load(self.lib)
        self.fgets = cmdline_fgets.load(self.lib)
        self.getdelim = cmdline_getdelim.load(self.lib)
        self.getline = cmdline_getline.load(self.lib)
        self.fputs = cmdline_fputs.load(self.lib)
        self.puts = cmdline_puts.load(self.lib)
        self.ungetc = cmdline_ungetc.load(self.lib)
        self.fread = cmdline_fread.load(self.lib)
        self.fwrite = cmdline_fwrite.load(self.lib)
        self.fread_unlocked = cmdline_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = cmdline_fwrite_unlocked.load(self.lib)
        self.fseek = cmdline_fseek.load(self.lib)
        self.ftell = cmdline_ftell.load(self.lib)
        self.rewind = cmdline_rewind.load(self.lib)
        self.fseeko = cmdline_fseeko.load(self.lib)
        self.ftello = cmdline_ftello.load(self.lib)
        self.fgetpos = cmdline_fgetpos.load(self.lib)
        self.fsetpos = cmdline_fsetpos.load(self.lib)
        self.clearerr = cmdline_clearerr.load(self.lib)
        self.feof = cmdline_feof.load(self.lib)
        self.ferror = cmdline_ferror.load(self.lib)
        self.clearerr_unlocked = cmdline_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = cmdline_feof_unlocked.load(self.lib)
        self.ferror_unlocked = cmdline_ferror_unlocked.load(self.lib)
        self.perror = cmdline_perror.load(self.lib)
        self.fileno = cmdline_fileno.load(self.lib)
        self.fileno_unlocked = cmdline_fileno_unlocked.load(self.lib)
        self.pclose = cmdline_pclose.load(self.lib)
        self.popen = cmdline_popen.load(self.lib)
        self.ctermid = cmdline_ctermid.load(self.lib)
        self.flockfile = cmdline_flockfile.load(self.lib)
        self.ftrylockfile = cmdline_ftrylockfile.load(self.lib)
        self.funlockfile = cmdline_funlockfile.load(self.lib)
        self.cirbuf_init = cmdline_cirbuf_init.load(self.lib)
        self.cirbuf_add_head_safe = cmdline_cirbuf_add_head_safe.load(self.lib)
        self.cirbuf_add_head = cmdline_cirbuf_add_head.load(self.lib)
        self.cirbuf_add_tail_safe = cmdline_cirbuf_add_tail_safe.load(self.lib)
        self.cirbuf_add_tail = cmdline_cirbuf_add_tail.load(self.lib)
        self.cirbuf_del_head_safe = cmdline_cirbuf_del_head_safe.load(self.lib)
        self.cirbuf_del_head = cmdline_cirbuf_del_head.load(self.lib)
        self.cirbuf_del_tail_safe = cmdline_cirbuf_del_tail_safe.load(self.lib)
        self.cirbuf_del_tail = cmdline_cirbuf_del_tail.load(self.lib)
        self.cirbuf_get_head = cmdline_cirbuf_get_head.load(self.lib)
        self.cirbuf_get_tail = cmdline_cirbuf_get_tail.load(self.lib)
        self.cirbuf_add_buf_head = cmdline_cirbuf_add_buf_head.load(self.lib)
        self.cirbuf_add_buf_tail = cmdline_cirbuf_add_buf_tail.load(self.lib)
        self.cirbuf_del_buf_head = cmdline_cirbuf_del_buf_head.load(self.lib)
        self.cirbuf_del_buf_tail = cmdline_cirbuf_del_buf_tail.load(self.lib)
        self.cirbuf_get_buf_head = cmdline_cirbuf_get_buf_head.load(self.lib)
        self.cirbuf_get_buf_tail = cmdline_cirbuf_get_buf_tail.load(self.lib)
        self.cirbuf_align_left = cmdline_cirbuf_align_left.load(self.lib)
        self.cirbuf_align_right = cmdline_cirbuf_align_right.load(self.lib)
        self.vt100_init = cmdline_vt100_init.load(self.lib)
        self.vt100_parser = cmdline_vt100_parser.load(self.lib)
        self.rdline_new = cmdline_rdline_new.load(self.lib)
        self.rdline_free = cmdline_rdline_free.load(self.lib)
        self.rdline_newline = cmdline_rdline_newline.load(self.lib)
        self.rdline_stop = cmdline_rdline_stop.load(self.lib)
        self.rdline_quit = cmdline_rdline_quit.load(self.lib)
        self.rdline_restart = cmdline_rdline_restart.load(self.lib)
        self.rdline_redisplay = cmdline_rdline_redisplay.load(self.lib)
        self.rdline_reset = cmdline_rdline_reset.load(self.lib)
        self.rdline_char_in = cmdline_rdline_char_in.load(self.lib)
        self.rdline_get_buffer = cmdline_rdline_get_buffer.load(self.lib)
        self.rdline_add_history = cmdline_rdline_add_history.load(self.lib)
        self.rdline_clear_history = cmdline_rdline_clear_history.load(self.lib)
        self.rdline_get_history_item = cmdline_rdline_get_history_item.load(self.lib)
        self.rdline_get_history_buffer_size = cmdline_rdline_get_history_buffer_size.load(self.lib)
        self.rdline_get_opaque = cmdline_rdline_get_opaque.load(self.lib)
        self.cmdline_parse = cmdline_cmdline_parse.load(self.lib)
        self.cmdline_parse_check = cmdline_cmdline_parse_check.load(self.lib)
        self.cmdline_complete = cmdline_cmdline_complete.load(self.lib)
        self.cmdline_isendoftoken = cmdline_cmdline_isendoftoken.load(self.lib)
        self.cmdline_isendofcommand = cmdline_cmdline_isendofcommand.load(self.lib)
        self.cmdline_new = cmdline_cmdline_new.load(self.lib)
        self.cmdline_set_prompt = cmdline_cmdline_set_prompt.load(self.lib)
        self.cmdline_free = cmdline_cmdline_free.load(self.lib)
        self.cmdline_printf = cmdline_cmdline_printf.load(self.lib)
        self.cmdline_in = cmdline_cmdline_in.load(self.lib)
        self.cmdline_write_char = cmdline_cmdline_write_char.load(self.lib)
        self.cmdline_get_rdline = cmdline_cmdline_get_rdline.load(self.lib)
        self.cmdline_interact = cmdline_cmdline_interact.load(self.lib)
        self.cmdline_quit = cmdline_cmdline_quit.load(self.lib)

