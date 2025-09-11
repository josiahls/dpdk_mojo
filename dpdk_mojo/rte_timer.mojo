
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

alias size_t = ffi.c_ulong
alias va_list = __builtin_va_list
alias __gnuc_va_list = __builtin_va_list
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
struct anonomous_record_1769(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_1769

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
alias anonomous_record_1770 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_1771(Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_1770

alias __mbstate_t = anonomous_record_1771

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
alias __assert_fail = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], UInt32, read UnsafePointer[Int8]) -> NoneType
alias __assert_perror_fail = fn (Int32, read UnsafePointer[Int8], UInt32, read UnsafePointer[Int8]) -> NoneType
alias __assert = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], Int32) -> NoneType
alias alloca = fn (ffi.c_ulong) -> OpaquePointer
alias time_t = __time_t
struct timespec(Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_nsec : ffi.c_long

alias pid_t = __pid_t
struct sched_param(Copyable & Movable):
	var sched_priority : Int32

alias __cpu_mask = ffi.c_ulong
struct anonomous_record_1772(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_1772

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
	# {"id":"0x142049a0","inner":[{"id":"0x1404bc40","inner":[{"id":"0x1404af00","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"void *[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Generic marker for any place in a structure. 

alias RTE_MARKER8 = 	# # Node: PlaceHolder()
	# {"id":"0x14204b30","inner":[{"decl":{"id":"0x14178180","kind":"TypedefDecl","name":"uint8_t"},"id":"0x14204a90","inner":[{"decl":{"id":"0x140ef398","kind":"TypedefDecl","name":"__uint8_t"},"id":"0x1413c300","inner":[{"id":"0x1404b000","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"TypedefType","type":{"qualType":"__uint8_t"}}],"kind":"TypedefType","type":{"qualType":"uint8_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint8_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 1B alignment in a structure. 

alias RTE_MARKER16 = 	# # Node: PlaceHolder()
	# {"id":"0x14204c90","inner":[{"decl":{"id":"0x141781e8","kind":"TypedefDecl","name":"uint16_t"},"id":"0x141f8550","inner":[{"decl":{"id":"0x140ef478","kind":"TypedefDecl","name":"__uint16_t"},"id":"0x1413c420","inner":[{"id":"0x1404b020","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"TypedefType","type":{"qualType":"__uint16_t"}}],"kind":"TypedefType","type":{"qualType":"uint16_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint16_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 2B alignment in a structure. 

alias RTE_MARKER32 = 	# # Node: PlaceHolder()
	# {"id":"0x14204df0","inner":[{"decl":{"id":"0x14178250","kind":"TypedefDecl","name":"uint32_t"},"id":"0x141f84c0","inner":[{"decl":{"id":"0x1413c130","kind":"TypedefDecl","name":"__uint32_t"},"id":"0x1413c540","inner":[{"id":"0x1404b040","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"__uint32_t"}}],"kind":"TypedefType","type":{"qualType":"uint32_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint32_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 4B alignment in a structure. 

alias RTE_MARKER64 = 	# # Node: PlaceHolder()
	# {"id":"0x14204f50","inner":[{"decl":{"id":"0x141782b8","kind":"TypedefDecl","name":"uint64_t"},"id":"0x141f8430","inner":[{"decl":{"id":"0x1413c210","kind":"TypedefDecl","name":"__uint64_t"},"id":"0x1413c660","inner":[{"id":"0x1404b060","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uint64_t"}}],"kind":"TypedefType","type":{"qualType":"uint64_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint64_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 8B alignment in a structure. 

alias rte_str_to_size = fn (read UnsafePointer[Int8]) -> ffi.c_ulong_long
alias rte_size_to_str = fn (UnsafePointer[Int8], Int32, ffi.c_ulong_long, Bool, read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_exit = fn (Int32, read *UnsafePointer[Int8]) -> NoneType
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
alias ptrdiff_t = ffi.c_long
alias wchar_t = UInt32
struct anonomous_record_1773(Copyable & Movable):
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_1773

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
	# {"id":"0x1422cd30","inner":[{"id":"0x1404b000","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"ConstantArrayType","size":16,"type":{"qualType":"unsigned char[16]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Struct describing a Universal Unique Identifier

alias rte_uuid_is_null = fn (read UnsafePointer[UInt8]) -> Bool
alias rte_uuid_copy = fn (UnsafePointer[UInt8], read UnsafePointer[UInt8]) -> NoneType
alias rte_uuid_compare = fn (read UnsafePointer[UInt8], read UnsafePointer[UInt8]) -> Int32
alias rte_uuid_parse = fn (read UnsafePointer[Int8], UnsafePointer[UInt8]) -> Int32
alias rte_uuid_unparse = fn (read UnsafePointer[UInt8], UnsafePointer[Int8], size_t) -> NoneType
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

alias rte_eal_process_type = fn (NoneType) -> rte_proc_type_t
alias rte_eal_iopl_init = fn (NoneType) -> Int32
alias rte_eal_init = fn (Int32, UnsafePointer[UnsafePointer[Int8]]) -> Int32
alias rte_eal_cleanup = fn (NoneType) -> Int32
alias rte_eal_primary_proc_alive = fn (read UnsafePointer[Int8]) -> Int32
alias rte_mp_disable = fn (NoneType) -> Bool
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
struct rte_iova_mode(Copyable & Movable):

	alias RTE_IOVA_DC = 0

	alias RTE_IOVA_PA = 1

	alias RTE_IOVA_VA = 2

alias rte_eal_iova_mode = fn (NoneType) -> rte_iova_mode
alias rte_eal_mbuf_user_pool_ops = fn (NoneType) -> UnsafePointer[Int8]
alias rte_eal_get_runtime_dir = fn (NoneType) -> UnsafePointer[Int8]
alias rte_eal_parse_coremask = fn (read UnsafePointer[Int8], UnsafePointer[Int32]) -> Int32
struct rte_lcore_state_t(Copyable & Movable):

	alias WAIT = 0

	alias RUNNING = 1

alias lcore_function_t = 	# # Node: PlaceHolder()
	# {"id":"0x1425ca00","inner":[{"cc":"cdecl","id":"0x1422fec0","inner":[{"id":"0x1404afa0","kind":"BuiltinType","type":{"qualType":"int"}},{"id":"0x1404bc40","inner":[{"id":"0x1404af00","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"FunctionProtoType","type":{"qualType":"int (void *)"}}],"kind":"ParenType","type":{"qualType":"int (void *)"}}

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
alias rte_eal_mp_wait_lcore = fn (NoneType) -> NoneType
struct anonomous_record_1774(Copyable & Movable):

	var opaque_id : ffi.c_ulong

alias rte_thread_t = anonomous_record_1774

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Thread id descriptor.

alias rte_thread_func = fn(OpaquePointer) -> ffi.c_ulong
struct rte_thread_priority(Copyable & Movable):

	alias RTE_THREAD_PRIORITY_NORMAL = 0

	alias RTE_THREAD_PRIORITY_REALTIME_CRITICAL = 1

struct anonomous_record_1775(Copyable & Movable):

	var priority : rte_thread_priority

alias rte_thread_attr_t = anonomous_record_1775

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Representation for thread attributes.

struct eal_tls_key(Copyable & Movable):
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
struct rte_lcore_role_t(Copyable & Movable):

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
struct rte_lcore_usage(Copyable & Movable):

	var total_cycles : ffi.c_ulong

	var busy_cycles : ffi.c_ulong

alias rte_lcore_usage_cb = fn(UInt32, UnsafePointer[rte_lcore_usage]) -> Int32
alias rte_lcore_register_usage_cb = fn (rte_lcore_usage_cb) -> NoneType
alias rte_lcore_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_thread_register = fn (NoneType) -> Int32
alias rte_thread_unregister = fn (NoneType) -> NoneType
alias rte_memory_order = Int32
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The memory order is an integer type in GCC built-ins,
# Node: TextComment()
#  not an enumerated type like in C11.

alias rte_atomic_thread_fence = fn (rte_memory_order) -> NoneType
alias rte_atomic16_cmpset = fn (UnsafePointer[UInt16], UInt16, UInt16) -> Int32
alias __sync_bool_compare_and_swap = fn () -> NoneType
alias __sync_bool_compare_and_swap_2 = fn (UnsafePointer[Int16], Int16, *Int16) -> Bool
alias rte_atomic16_exchange = fn (UnsafePointer[UInt16], UInt16) -> UInt16
alias __atomic_exchange_n = fn () -> NoneType
struct anonomous_record_1776(Copyable & Movable):

	var cnt : Int16

alias rte_atomic16_t = anonomous_record_1776

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
struct anonomous_record_1777(Copyable & Movable):

	var cnt : Int32

alias rte_atomic32_t = anonomous_record_1777

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
struct anonomous_record_1778(Copyable & Movable):

	var cnt : ffi.c_long

alias rte_atomic64_t = anonomous_record_1778

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
alias anonomous_record_1779 = C_Union[InlineArray[ffi.c_ulong_long, 2], Int128]

struct anonomous_record_1780(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x142926e0","inner":[{"id":"0x142926c0","inner":[{"id":"0x14292600","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}},"end":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}}},"type":{"qualType":"int"},"value":"16","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}},"end":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}}},"type":{"qualType":"int"},"value":"16","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":16,"file":"dpdk/lib/eal/include/generic/rte_atomic.h","includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"line":1101,"offset":25559,"tokLen":13},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/timer/rte_timer.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":16,"file":"dpdk/lib/eal/include/generic/rte_atomic.h","includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"line":1101,"offset":25559,"tokLen":13},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/timer/rte_timer.h"},"line":121,"offset":3797,"tokLen":1}}}}


	var union_placeholder_1 : anonomous_record_1779



alias rte_int128_t = anonomous_record_1780

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  128-bit integer structure.

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
alias __atomic_thread_fence = fn (Int32) -> NoneType
alias rte_atomic128_cmp_exchange = fn (UnsafePointer[rte_int128_t], UnsafePointer[rte_int128_t], read UnsafePointer[rte_int128_t], UInt32, Int32, Int32) -> Int32
alias __builtin_expect = fn (ffi.c_long, ffi.c_long) -> ffi.c_long
alias rte_pause = fn (NoneType) -> NoneType
alias rte_wait_until_equal_16 = fn (UnsafePointer[UInt16], UInt16, rte_memory_order) -> NoneType
alias rte_wait_until_equal_32 = fn (UnsafePointer[ffi.c_ulong], ffi.c_ulong, rte_memory_order) -> NoneType
alias rte_wait_until_equal_64 = fn (UnsafePointer[ffi.c_ulong_long], ffi.c_ulong_long, rte_memory_order) -> NoneType
alias __atomic_load_n = fn () -> NoneType
struct anonomous_record_1781(Copyable & Movable):

	var locked : Int32

alias rte_spinlock_t = anonomous_record_1781

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
alias rte_tm_supported = fn (NoneType) -> Int32
alias rte_spinlock_lock_tm = fn (UnsafePointer[rte_spinlock_t]) -> NoneType
alias rte_spinlock_unlock_tm = fn (UnsafePointer[rte_spinlock_t]) -> NoneType
alias rte_spinlock_trylock_tm = fn (UnsafePointer[rte_spinlock_t]) -> Int32
struct anonomous_record_1782(Copyable & Movable):

	var sl : rte_spinlock_t

	var user : Int32

	var count : Int32

alias rte_spinlock_recursive_t = anonomous_record_1782

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
struct rte_timer_type(Copyable & Movable):

	alias SINGLE = 0

	alias PERIODICAL = 1

struct anonomous_record_1783(Copyable & Movable):
	var state : UInt16

	var owner : Int16

alias rte_timer_status = C_Union[anonomous_record_1783, , , UInt32]

struct rte_timer(Copyable & Movable):
	pass
alias rte_timer_cb_t = fn(UnsafePointer[rte_timer], OpaquePointer) -> NoneType
alias rte_timer_data_alloc = fn (UnsafePointer[ffi.c_ulong]) -> Int32
alias rte_timer_data_dealloc = fn (ffi.c_ulong) -> Int32
alias rte_timer_subsystem_init = fn (NoneType) -> Int32
alias rte_timer_subsystem_finalize = fn (NoneType) -> NoneType
alias rte_timer_init = fn (UnsafePointer[rte_timer]) -> NoneType
alias rte_timer_reset = fn (UnsafePointer[rte_timer], ffi.c_ulong_long, rte_timer_type, UInt32, rte_timer_cb_t, OpaquePointer) -> Int32
alias rte_timer_reset_sync = fn (UnsafePointer[rte_timer], ffi.c_ulong_long, rte_timer_type, UInt32, rte_timer_cb_t, OpaquePointer) -> NoneType
alias rte_timer_stop = fn (UnsafePointer[rte_timer]) -> Int32
alias rte_timer_stop_sync = fn (UnsafePointer[rte_timer]) -> NoneType
alias rte_timer_pending = fn (UnsafePointer[rte_timer]) -> Int32
alias rte_timer_next_ticks = fn (NoneType) -> ffi.c_long_long
alias rte_timer_manage = fn (NoneType) -> Int32
alias rte_timer_dump_stats = fn (UnsafePointer[FILE]) -> Int32
alias rte_timer_alt_reset = fn (ffi.c_ulong, UnsafePointer[rte_timer], ffi.c_ulong_long, rte_timer_type, UInt32, rte_timer_cb_t, OpaquePointer) -> Int32
alias rte_timer_alt_stop = fn (ffi.c_ulong, UnsafePointer[rte_timer]) -> Int32
alias rte_timer_alt_manage_cb_t = fn(UnsafePointer[rte_timer]) -> NoneType
alias rte_timer_alt_manage = fn (ffi.c_ulong, UnsafePointer[UInt32], Int32, rte_timer_alt_manage_cb_t) -> Int32
alias rte_timer_stop_all_cb_t = fn(UnsafePointer[rte_timer], OpaquePointer) -> NoneType
alias rte_timer_stop_all = fn (ffi.c_ulong, UnsafePointer[UInt32], Int32, rte_timer_stop_all_cb_t, OpaquePointer) -> Int32
alias rte_timer_alt_dump_stats = fn (ffi.c_ulong, UnsafePointer[FILE]) -> Int32


alias rte_timer_remove = ExternalFunction['remove', remove]
alias rte_timer_rename = ExternalFunction['rename', rename]
alias rte_timer_renameat = ExternalFunction['renameat', renameat]
alias rte_timer_fclose = ExternalFunction['fclose', fclose]
alias rte_timer_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias rte_timer_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias rte_timer_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias rte_timer_tempnam = ExternalFunction['tempnam', tempnam]
alias rte_timer_fflush = ExternalFunction['fflush', fflush]
alias rte_timer_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias rte_timer_fopen = ExternalFunction['fopen', fopen]
alias rte_timer_freopen = ExternalFunction['freopen', freopen]
alias rte_timer_fdopen = ExternalFunction['fdopen', fdopen]
alias rte_timer_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias rte_timer_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias rte_timer_setbuf = ExternalFunction['setbuf', setbuf]
alias rte_timer_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias rte_timer_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias rte_timer_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias rte_timer_fprintf = ExternalFunction['fprintf', fprintf]
alias rte_timer_printf = ExternalFunction['printf', printf]
alias rte_timer_sprintf = ExternalFunction['sprintf', sprintf]
alias rte_timer_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias rte_timer_vprintf = ExternalFunction['vprintf', vprintf]
alias rte_timer_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias rte_timer_snprintf = ExternalFunction['snprintf', snprintf]
alias rte_timer_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias rte_timer_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias rte_timer_dprintf = ExternalFunction['dprintf', dprintf]
alias rte_timer_fscanf = ExternalFunction['fscanf', fscanf]
alias rte_timer_scanf = ExternalFunction['scanf', scanf]
alias rte_timer_sscanf = ExternalFunction['sscanf', sscanf]
alias rte_timer_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias rte_timer_vscanf = ExternalFunction['vscanf', vscanf]
alias rte_timer_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias rte_timer_fgetc = ExternalFunction['fgetc', fgetc]
alias rte_timer_getc = ExternalFunction['getc', getc]
alias rte_timer_getchar = ExternalFunction['getchar', getchar]
alias rte_timer_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias rte_timer_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias rte_timer_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias rte_timer_fputc = ExternalFunction['fputc', fputc]
alias rte_timer_putc = ExternalFunction['putc', putc]
alias rte_timer_putchar = ExternalFunction['putchar', putchar]
alias rte_timer_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias rte_timer_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias rte_timer_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias rte_timer_getw = ExternalFunction['getw', getw]
alias rte_timer_putw = ExternalFunction['putw', putw]
alias rte_timer_fgets = ExternalFunction['fgets', fgets]
alias rte_timer_getdelim = ExternalFunction['getdelim', getdelim]
alias rte_timer_getline = ExternalFunction['getline', getline]
alias rte_timer_fputs = ExternalFunction['fputs', fputs]
alias rte_timer_puts = ExternalFunction['puts', puts]
alias rte_timer_ungetc = ExternalFunction['ungetc', ungetc]
alias rte_timer_fread = ExternalFunction['fread', fread]
alias rte_timer_fwrite = ExternalFunction['fwrite', fwrite]
alias rte_timer_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias rte_timer_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias rte_timer_fseek = ExternalFunction['fseek', fseek]
alias rte_timer_ftell = ExternalFunction['ftell', ftell]
alias rte_timer_rewind = ExternalFunction['rewind', rewind]
alias rte_timer_fseeko = ExternalFunction['fseeko', fseeko]
alias rte_timer_ftello = ExternalFunction['ftello', ftello]
alias rte_timer_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias rte_timer_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias rte_timer_clearerr = ExternalFunction['clearerr', clearerr]
alias rte_timer_feof = ExternalFunction['feof', feof]
alias rte_timer_ferror = ExternalFunction['ferror', ferror]
alias rte_timer_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias rte_timer_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias rte_timer_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias rte_timer_perror = ExternalFunction['perror', perror]
alias rte_timer_fileno = ExternalFunction['fileno', fileno]
alias rte_timer_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias rte_timer_pclose = ExternalFunction['pclose', pclose]
alias rte_timer_popen = ExternalFunction['popen', popen]
alias rte_timer_ctermid = ExternalFunction['ctermid', ctermid]
alias rte_timer_flockfile = ExternalFunction['flockfile', flockfile]
alias rte_timer_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias rte_timer_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias rte_timer_alloca = ExternalFunction['alloca', alloca]
alias rte_timer_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_timer_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_timer_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_timer_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_timer_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_timer_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_timer_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_timer_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_timer_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_timer_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_timer_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_timer_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_timer_clock = ExternalFunction['clock', clock]
alias rte_timer_time = ExternalFunction['time', time]
alias rte_timer_difftime = ExternalFunction['difftime', difftime]
alias rte_timer_mktime = ExternalFunction['mktime', mktime]
alias rte_timer_strftime = ExternalFunction['strftime', strftime]
alias rte_timer_strftime_l = ExternalFunction['strftime_l', strftime_l]
alias rte_timer_gmtime = ExternalFunction['gmtime', gmtime]
alias rte_timer_localtime = ExternalFunction['localtime', localtime]
alias rte_timer_gmtime_r = ExternalFunction['gmtime_r', gmtime_r]
alias rte_timer_localtime_r = ExternalFunction['localtime_r', localtime_r]
alias rte_timer_asctime = ExternalFunction['asctime', asctime]
alias rte_timer_ctime = ExternalFunction['ctime', ctime]
alias rte_timer_asctime_r = ExternalFunction['asctime_r', asctime_r]
alias rte_timer_ctime_r = ExternalFunction['ctime_r', ctime_r]
alias rte_timer_tzset = ExternalFunction['tzset', tzset]
alias rte_timer_timegm = ExternalFunction['timegm', timegm]
alias rte_timer_timelocal = ExternalFunction['timelocal', timelocal]
alias rte_timer_dysize = ExternalFunction['dysize', dysize]
alias rte_timer_nanosleep = ExternalFunction['nanosleep', nanosleep]
alias rte_timer_clock_getres = ExternalFunction['clock_getres', clock_getres]
alias rte_timer_clock_gettime = ExternalFunction['clock_gettime', clock_gettime]
alias rte_timer_clock_settime = ExternalFunction['clock_settime', clock_settime]
alias rte_timer_clock_nanosleep = ExternalFunction['clock_nanosleep', clock_nanosleep]
alias rte_timer_clock_getcpuclockid = ExternalFunction['clock_getcpuclockid', clock_getcpuclockid]
alias rte_timer_timer_create = ExternalFunction['timer_create', timer_create]
alias rte_timer_timer_delete = ExternalFunction['timer_delete', timer_delete]
alias rte_timer_timer_settime = ExternalFunction['timer_settime', timer_settime]
alias rte_timer_timer_gettime = ExternalFunction['timer_gettime', timer_gettime]
alias rte_timer_timer_getoverrun = ExternalFunction['timer_getoverrun', timer_getoverrun]
alias rte_timer_timespec_get = ExternalFunction['timespec_get', timespec_get]
alias rte_timer_memcpy = ExternalFunction['memcpy', memcpy]
alias rte_timer_memmove = ExternalFunction['memmove', memmove]
alias rte_timer_memccpy = ExternalFunction['memccpy', memccpy]
alias rte_timer_memset = ExternalFunction['memset', memset]
alias rte_timer_memcmp = ExternalFunction['memcmp', memcmp]
alias rte_timer_memchr = ExternalFunction['memchr', memchr]
alias rte_timer_strcpy = ExternalFunction['strcpy', strcpy]
alias rte_timer_strncpy = ExternalFunction['strncpy', strncpy]
alias rte_timer_strcat = ExternalFunction['strcat', strcat]
alias rte_timer_strncat = ExternalFunction['strncat', strncat]
alias rte_timer_strcmp = ExternalFunction['strcmp', strcmp]
alias rte_timer_strncmp = ExternalFunction['strncmp', strncmp]
alias rte_timer_strcoll = ExternalFunction['strcoll', strcoll]
alias rte_timer_strxfrm = ExternalFunction['strxfrm', strxfrm]
alias rte_timer_strcoll_l = ExternalFunction['strcoll_l', strcoll_l]
alias rte_timer_strxfrm_l = ExternalFunction['strxfrm_l', strxfrm_l]
alias rte_timer_strdup = ExternalFunction['strdup', strdup]
alias rte_timer_strndup = ExternalFunction['strndup', strndup]
alias rte_timer_strchr = ExternalFunction['strchr', strchr]
alias rte_timer_strrchr = ExternalFunction['strrchr', strrchr]
alias rte_timer_strcspn = ExternalFunction['strcspn', strcspn]
alias rte_timer_strspn = ExternalFunction['strspn', strspn]
alias rte_timer_strpbrk = ExternalFunction['strpbrk', strpbrk]
alias rte_timer_strstr = ExternalFunction['strstr', strstr]
alias rte_timer_strtok = ExternalFunction['strtok', strtok]
alias rte_timer_strtok_r = ExternalFunction['strtok_r', strtok_r]
alias rte_timer_strlen = ExternalFunction['strlen', strlen]
alias rte_timer_strnlen = ExternalFunction['strnlen', strnlen]
alias rte_timer_strerror = ExternalFunction['strerror', strerror]
alias rte_timer_strerror_r = ExternalFunction['strerror_r', strerror_r]
alias rte_timer_strerror_l = ExternalFunction['strerror_l', strerror_l]
alias rte_timer_bcmp = ExternalFunction['bcmp', bcmp]
alias rte_timer_bcopy = ExternalFunction['bcopy', bcopy]
alias rte_timer_bzero = ExternalFunction['bzero', bzero]
alias rte_timer_index = ExternalFunction['index', index]
alias rte_timer_rindex = ExternalFunction['rindex', rindex]
alias rte_timer_ffs = ExternalFunction['ffs', ffs]
alias rte_timer_ffsl = ExternalFunction['ffsl', ffsl]
alias rte_timer_ffsll = ExternalFunction['ffsll', ffsll]
alias rte_timer_strcasecmp = ExternalFunction['strcasecmp', strcasecmp]
alias rte_timer_strncasecmp = ExternalFunction['strncasecmp', strncasecmp]
alias rte_timer_strcasecmp_l = ExternalFunction['strcasecmp_l', strcasecmp_l]
alias rte_timer_strncasecmp_l = ExternalFunction['strncasecmp_l', strncasecmp_l]
alias rte_timer_explicit_bzero = ExternalFunction['explicit_bzero', explicit_bzero]
alias rte_timer_strsep = ExternalFunction['strsep', strsep]
alias rte_timer_strsignal = ExternalFunction['strsignal', strsignal]
alias rte_timer_stpcpy = ExternalFunction['stpcpy', stpcpy]
alias rte_timer_stpncpy = ExternalFunction['stpncpy', stpncpy]
alias rte_timer_rte_uuid_is_null = ExternalFunction['rte_uuid_is_null', rte_uuid_is_null]
alias rte_timer_rte_uuid_copy = ExternalFunction['rte_uuid_copy', rte_uuid_copy]
alias rte_timer_rte_uuid_compare = ExternalFunction['rte_uuid_compare', rte_uuid_compare]
alias rte_timer_rte_uuid_parse = ExternalFunction['rte_uuid_parse', rte_uuid_parse]
alias rte_timer_rte_uuid_unparse = ExternalFunction['rte_uuid_unparse', rte_uuid_unparse]
alias rte_timer_rte_eal_process_type = ExternalFunction['rte_eal_process_type', rte_eal_process_type]
alias rte_timer_rte_eal_iopl_init = ExternalFunction['rte_eal_iopl_init', rte_eal_iopl_init]
alias rte_timer_rte_eal_init = ExternalFunction['rte_eal_init', rte_eal_init]
alias rte_timer_rte_eal_cleanup = ExternalFunction['rte_eal_cleanup', rte_eal_cleanup]
alias rte_timer_rte_eal_primary_proc_alive = ExternalFunction['rte_eal_primary_proc_alive', rte_eal_primary_proc_alive]
alias rte_timer_rte_mp_disable = ExternalFunction['rte_mp_disable', rte_mp_disable]
alias rte_timer_rte_mp_action_register = ExternalFunction['rte_mp_action_register', rte_mp_action_register]
alias rte_timer_rte_mp_action_unregister = ExternalFunction['rte_mp_action_unregister', rte_mp_action_unregister]
alias rte_timer_rte_mp_sendmsg = ExternalFunction['rte_mp_sendmsg', rte_mp_sendmsg]
alias rte_timer_rte_mp_request_sync = ExternalFunction['rte_mp_request_sync', rte_mp_request_sync]
alias rte_timer_rte_mp_request_async = ExternalFunction['rte_mp_request_async', rte_mp_request_async]
alias rte_timer_rte_set_application_usage_hook = ExternalFunction['rte_set_application_usage_hook', rte_set_application_usage_hook]
alias rte_timer_rte_eal_has_hugepages = ExternalFunction['rte_eal_has_hugepages', rte_eal_has_hugepages]
alias rte_timer_rte_eal_has_pci = ExternalFunction['rte_eal_has_pci', rte_eal_has_pci]
alias rte_timer_rte_eal_create_uio_dev = ExternalFunction['rte_eal_create_uio_dev', rte_eal_create_uio_dev]
alias rte_timer_rte_eal_vfio_intr_mode = ExternalFunction['rte_eal_vfio_intr_mode', rte_eal_vfio_intr_mode]
alias rte_timer_rte_eal_vfio_get_vf_token = ExternalFunction['rte_eal_vfio_get_vf_token', rte_eal_vfio_get_vf_token]
alias rte_timer_rte_sys_gettid = ExternalFunction['rte_sys_gettid', rte_sys_gettid]
alias rte_timer_rte_gettid = ExternalFunction['rte_gettid', rte_gettid]
alias rte_timer_rte_eal_get_baseaddr = ExternalFunction['rte_eal_get_baseaddr', rte_eal_get_baseaddr]
alias rte_timer_rte_eal_iova_mode = ExternalFunction['rte_eal_iova_mode', rte_eal_iova_mode]
alias rte_timer_rte_eal_mbuf_user_pool_ops = ExternalFunction['rte_eal_mbuf_user_pool_ops', rte_eal_mbuf_user_pool_ops]
alias rte_timer_rte_eal_get_runtime_dir = ExternalFunction['rte_eal_get_runtime_dir', rte_eal_get_runtime_dir]
alias rte_timer_rte_eal_parse_coremask = ExternalFunction['rte_eal_parse_coremask', rte_eal_parse_coremask]
alias rte_timer_rte_eal_remote_launch = ExternalFunction['rte_eal_remote_launch', rte_eal_remote_launch]
alias rte_timer_rte_eal_mp_remote_launch = ExternalFunction['rte_eal_mp_remote_launch', rte_eal_mp_remote_launch]
alias rte_timer_rte_eal_get_lcore_state = ExternalFunction['rte_eal_get_lcore_state', rte_eal_get_lcore_state]
alias rte_timer_rte_eal_wait_lcore = ExternalFunction['rte_eal_wait_lcore', rte_eal_wait_lcore]
alias rte_timer_rte_eal_mp_wait_lcore = ExternalFunction['rte_eal_mp_wait_lcore', rte_eal_mp_wait_lcore]
alias rte_timer_rte_thread_create = ExternalFunction['rte_thread_create', rte_thread_create]
alias rte_timer_rte_thread_create_control = ExternalFunction['rte_thread_create_control', rte_thread_create_control]
alias rte_timer_rte_thread_create_internal_control = ExternalFunction['rte_thread_create_internal_control', rte_thread_create_internal_control]
alias rte_timer_rte_thread_join = ExternalFunction['rte_thread_join', rte_thread_join]
alias rte_timer_rte_thread_detach = ExternalFunction['rte_thread_detach', rte_thread_detach]
alias rte_timer_rte_thread_self = ExternalFunction['rte_thread_self', rte_thread_self]
alias rte_timer_rte_thread_set_name = ExternalFunction['rte_thread_set_name', rte_thread_set_name]
alias rte_timer_rte_thread_set_prefixed_name = ExternalFunction['rte_thread_set_prefixed_name', rte_thread_set_prefixed_name]
alias rte_timer_rte_thread_equal = ExternalFunction['rte_thread_equal', rte_thread_equal]
alias rte_timer_rte_thread_attr_init = ExternalFunction['rte_thread_attr_init', rte_thread_attr_init]
alias rte_timer_rte_thread_attr_set_priority = ExternalFunction['rte_thread_attr_set_priority', rte_thread_attr_set_priority]
alias rte_timer_rte_thread_get_priority = ExternalFunction['rte_thread_get_priority', rte_thread_get_priority]
alias rte_timer_rte_thread_set_priority = ExternalFunction['rte_thread_set_priority', rte_thread_set_priority]
alias rte_timer_rte_thread_key_create = ExternalFunction['rte_thread_key_create', rte_thread_key_create]
alias rte_timer_rte_thread_key_delete = ExternalFunction['rte_thread_key_delete', rte_thread_key_delete]
alias rte_timer_rte_thread_value_set = ExternalFunction['rte_thread_value_set', rte_thread_value_set]
alias rte_timer_rte_thread_value_get = ExternalFunction['rte_thread_value_get', rte_thread_value_get]
alias rte_timer_rte_eal_lcore_role = ExternalFunction['rte_eal_lcore_role', rte_eal_lcore_role]
alias rte_timer_rte_lcore_has_role = ExternalFunction['rte_lcore_has_role', rte_lcore_has_role]
alias rte_timer_rte_lcore_id = ExternalFunction['rte_lcore_id', rte_lcore_id]
alias rte_timer_rte_get_main_lcore = ExternalFunction['rte_get_main_lcore', rte_get_main_lcore]
alias rte_timer_rte_lcore_count = ExternalFunction['rte_lcore_count', rte_lcore_count]
alias rte_timer_rte_lcore_index = ExternalFunction['rte_lcore_index', rte_lcore_index]
alias rte_timer_rte_socket_id = ExternalFunction['rte_socket_id', rte_socket_id]
alias rte_timer_rte_socket_count = ExternalFunction['rte_socket_count', rte_socket_count]
alias rte_timer_rte_socket_id_by_idx = ExternalFunction['rte_socket_id_by_idx', rte_socket_id_by_idx]
alias rte_timer_rte_lcore_to_socket_id = ExternalFunction['rte_lcore_to_socket_id', rte_lcore_to_socket_id]
alias rte_timer_rte_lcore_to_cpu_id = ExternalFunction['rte_lcore_to_cpu_id', rte_lcore_to_cpu_id]
alias rte_timer_rte_lcore_is_enabled = ExternalFunction['rte_lcore_is_enabled', rte_lcore_is_enabled]
alias rte_timer_rte_get_next_lcore = ExternalFunction['rte_get_next_lcore', rte_get_next_lcore]
alias rte_timer_rte_lcore_callback_register = ExternalFunction['rte_lcore_callback_register', rte_lcore_callback_register]
alias rte_timer_rte_lcore_callback_unregister = ExternalFunction['rte_lcore_callback_unregister', rte_lcore_callback_unregister]
alias rte_timer_rte_lcore_iterate = ExternalFunction['rte_lcore_iterate', rte_lcore_iterate]
alias rte_timer_rte_lcore_register_usage_cb = ExternalFunction['rte_lcore_register_usage_cb', rte_lcore_register_usage_cb]
alias rte_timer_rte_lcore_dump = ExternalFunction['rte_lcore_dump', rte_lcore_dump]
alias rte_timer_rte_thread_register = ExternalFunction['rte_thread_register', rte_thread_register]
alias rte_timer_rte_thread_unregister = ExternalFunction['rte_thread_unregister', rte_thread_unregister]
alias rte_timer_rte_atomic_thread_fence = ExternalFunction['rte_atomic_thread_fence', rte_atomic_thread_fence]
alias rte_timer_rte_atomic16_cmpset = ExternalFunction['rte_atomic16_cmpset', rte_atomic16_cmpset]
alias rte_timer_rte_atomic16_exchange = ExternalFunction['rte_atomic16_exchange', rte_atomic16_exchange]
alias rte_timer_rte_atomic16_init = ExternalFunction['rte_atomic16_init', rte_atomic16_init]
alias rte_timer_rte_atomic16_read = ExternalFunction['rte_atomic16_read', rte_atomic16_read]
alias rte_timer_rte_atomic16_set = ExternalFunction['rte_atomic16_set', rte_atomic16_set]
alias rte_timer_rte_atomic16_add = ExternalFunction['rte_atomic16_add', rte_atomic16_add]
alias rte_timer_rte_atomic16_sub = ExternalFunction['rte_atomic16_sub', rte_atomic16_sub]
alias rte_timer_rte_atomic16_inc = ExternalFunction['rte_atomic16_inc', rte_atomic16_inc]
alias rte_timer_rte_atomic16_dec = ExternalFunction['rte_atomic16_dec', rte_atomic16_dec]
alias rte_timer_rte_atomic16_add_return = ExternalFunction['rte_atomic16_add_return', rte_atomic16_add_return]
alias rte_timer_rte_atomic16_sub_return = ExternalFunction['rte_atomic16_sub_return', rte_atomic16_sub_return]
alias rte_timer_rte_atomic16_inc_and_test = ExternalFunction['rte_atomic16_inc_and_test', rte_atomic16_inc_and_test]
alias rte_timer_rte_atomic16_dec_and_test = ExternalFunction['rte_atomic16_dec_and_test', rte_atomic16_dec_and_test]
alias rte_timer_rte_atomic16_test_and_set = ExternalFunction['rte_atomic16_test_and_set', rte_atomic16_test_and_set]
alias rte_timer_rte_atomic16_clear = ExternalFunction['rte_atomic16_clear', rte_atomic16_clear]
alias rte_timer_rte_atomic32_cmpset = ExternalFunction['rte_atomic32_cmpset', rte_atomic32_cmpset]
alias rte_timer_rte_atomic32_exchange = ExternalFunction['rte_atomic32_exchange', rte_atomic32_exchange]
alias rte_timer_rte_atomic32_init = ExternalFunction['rte_atomic32_init', rte_atomic32_init]
alias rte_timer_rte_atomic32_read = ExternalFunction['rte_atomic32_read', rte_atomic32_read]
alias rte_timer_rte_atomic32_set = ExternalFunction['rte_atomic32_set', rte_atomic32_set]
alias rte_timer_rte_atomic32_add = ExternalFunction['rte_atomic32_add', rte_atomic32_add]
alias rte_timer_rte_atomic32_sub = ExternalFunction['rte_atomic32_sub', rte_atomic32_sub]
alias rte_timer_rte_atomic32_inc = ExternalFunction['rte_atomic32_inc', rte_atomic32_inc]
alias rte_timer_rte_atomic32_dec = ExternalFunction['rte_atomic32_dec', rte_atomic32_dec]
alias rte_timer_rte_atomic32_add_return = ExternalFunction['rte_atomic32_add_return', rte_atomic32_add_return]
alias rte_timer_rte_atomic32_sub_return = ExternalFunction['rte_atomic32_sub_return', rte_atomic32_sub_return]
alias rte_timer_rte_atomic32_inc_and_test = ExternalFunction['rte_atomic32_inc_and_test', rte_atomic32_inc_and_test]
alias rte_timer_rte_atomic32_dec_and_test = ExternalFunction['rte_atomic32_dec_and_test', rte_atomic32_dec_and_test]
alias rte_timer_rte_atomic32_test_and_set = ExternalFunction['rte_atomic32_test_and_set', rte_atomic32_test_and_set]
alias rte_timer_rte_atomic32_clear = ExternalFunction['rte_atomic32_clear', rte_atomic32_clear]
alias rte_timer_rte_atomic64_cmpset = ExternalFunction['rte_atomic64_cmpset', rte_atomic64_cmpset]
alias rte_timer_rte_atomic64_exchange = ExternalFunction['rte_atomic64_exchange', rte_atomic64_exchange]
alias rte_timer_rte_atomic64_init = ExternalFunction['rte_atomic64_init', rte_atomic64_init]
alias rte_timer_rte_atomic64_read = ExternalFunction['rte_atomic64_read', rte_atomic64_read]
alias rte_timer_rte_atomic64_set = ExternalFunction['rte_atomic64_set', rte_atomic64_set]
alias rte_timer_rte_atomic64_add = ExternalFunction['rte_atomic64_add', rte_atomic64_add]
alias rte_timer_rte_atomic64_sub = ExternalFunction['rte_atomic64_sub', rte_atomic64_sub]
alias rte_timer_rte_atomic64_inc = ExternalFunction['rte_atomic64_inc', rte_atomic64_inc]
alias rte_timer_rte_atomic64_dec = ExternalFunction['rte_atomic64_dec', rte_atomic64_dec]
alias rte_timer_rte_atomic64_add_return = ExternalFunction['rte_atomic64_add_return', rte_atomic64_add_return]
alias rte_timer_rte_atomic64_sub_return = ExternalFunction['rte_atomic64_sub_return', rte_atomic64_sub_return]
alias rte_timer_rte_atomic64_inc_and_test = ExternalFunction['rte_atomic64_inc_and_test', rte_atomic64_inc_and_test]
alias rte_timer_rte_atomic64_dec_and_test = ExternalFunction['rte_atomic64_dec_and_test', rte_atomic64_dec_and_test]
alias rte_timer_rte_atomic64_test_and_set = ExternalFunction['rte_atomic64_test_and_set', rte_atomic64_test_and_set]
alias rte_timer_rte_atomic64_clear = ExternalFunction['rte_atomic64_clear', rte_atomic64_clear]
alias rte_timer_rte_openlog_stream = ExternalFunction['rte_openlog_stream', rte_openlog_stream]
alias rte_timer_rte_log_get_stream = ExternalFunction['rte_log_get_stream', rte_log_get_stream]
alias rte_timer_rte_log_set_global_level = ExternalFunction['rte_log_set_global_level', rte_log_set_global_level]
alias rte_timer_rte_log_get_global_level = ExternalFunction['rte_log_get_global_level', rte_log_get_global_level]
alias rte_timer_rte_log_get_level = ExternalFunction['rte_log_get_level', rte_log_get_level]
alias rte_timer_rte_log_can_log = ExternalFunction['rte_log_can_log', rte_log_can_log]
alias rte_timer_rte_log_set_level_pattern = ExternalFunction['rte_log_set_level_pattern', rte_log_set_level_pattern]
alias rte_timer_rte_log_set_level_regexp = ExternalFunction['rte_log_set_level_regexp', rte_log_set_level_regexp]
alias rte_timer_rte_log_set_level = ExternalFunction['rte_log_set_level', rte_log_set_level]
alias rte_timer_rte_log_cur_msg_loglevel = ExternalFunction['rte_log_cur_msg_loglevel', rte_log_cur_msg_loglevel]
alias rte_timer_rte_log_cur_msg_logtype = ExternalFunction['rte_log_cur_msg_logtype', rte_log_cur_msg_logtype]
alias rte_timer_rte_log_register = ExternalFunction['rte_log_register', rte_log_register]
alias rte_timer_rte_log_register_type_and_pick_level = ExternalFunction['rte_log_register_type_and_pick_level', rte_log_register_type_and_pick_level]
alias rte_timer_rte_log_list_types = ExternalFunction['rte_log_list_types', rte_log_list_types]
alias rte_timer_rte_log_dump = ExternalFunction['rte_log_dump', rte_log_dump]
alias rte_timer_rte_log = ExternalFunction['rte_log', rte_log]
alias rte_timer_rte_vlog = ExternalFunction['rte_vlog', rte_vlog]
alias rte_timer_rte_dump_stack = ExternalFunction['rte_dump_stack', rte_dump_stack]
alias rte_timer_rte_atomic128_cmp_exchange = ExternalFunction['rte_atomic128_cmp_exchange', rte_atomic128_cmp_exchange]
alias rte_timer_rte_pause = ExternalFunction['rte_pause', rte_pause]
alias rte_timer_rte_wait_until_equal_16 = ExternalFunction['rte_wait_until_equal_16', rte_wait_until_equal_16]
alias rte_timer_rte_wait_until_equal_32 = ExternalFunction['rte_wait_until_equal_32', rte_wait_until_equal_32]
alias rte_timer_rte_wait_until_equal_64 = ExternalFunction['rte_wait_until_equal_64', rte_wait_until_equal_64]
alias rte_timer_rte_spinlock_init = ExternalFunction['rte_spinlock_init', rte_spinlock_init]
alias rte_timer_rte_spinlock_lock = ExternalFunction['rte_spinlock_lock', rte_spinlock_lock]
alias rte_timer_rte_spinlock_unlock = ExternalFunction['rte_spinlock_unlock', rte_spinlock_unlock]
alias rte_timer_rte_spinlock_trylock = ExternalFunction['rte_spinlock_trylock', rte_spinlock_trylock]
alias rte_timer_rte_spinlock_is_locked = ExternalFunction['rte_spinlock_is_locked', rte_spinlock_is_locked]
alias rte_timer_rte_tm_supported = ExternalFunction['rte_tm_supported', rte_tm_supported]
alias rte_timer_rte_spinlock_lock_tm = ExternalFunction['rte_spinlock_lock_tm', rte_spinlock_lock_tm]
alias rte_timer_rte_spinlock_unlock_tm = ExternalFunction['rte_spinlock_unlock_tm', rte_spinlock_unlock_tm]
alias rte_timer_rte_spinlock_trylock_tm = ExternalFunction['rte_spinlock_trylock_tm', rte_spinlock_trylock_tm]
alias rte_timer_rte_spinlock_recursive_init = ExternalFunction['rte_spinlock_recursive_init', rte_spinlock_recursive_init]
alias rte_timer_rte_spinlock_recursive_lock = ExternalFunction['rte_spinlock_recursive_lock', rte_spinlock_recursive_lock]
alias rte_timer_rte_spinlock_recursive_unlock = ExternalFunction['rte_spinlock_recursive_unlock', rte_spinlock_recursive_unlock]
alias rte_timer_rte_spinlock_recursive_trylock = ExternalFunction['rte_spinlock_recursive_trylock', rte_spinlock_recursive_trylock]
alias rte_timer_rte_spinlock_recursive_lock_tm = ExternalFunction['rte_spinlock_recursive_lock_tm', rte_spinlock_recursive_lock_tm]
alias rte_timer_rte_spinlock_recursive_unlock_tm = ExternalFunction['rte_spinlock_recursive_unlock_tm', rte_spinlock_recursive_unlock_tm]
alias rte_timer_rte_spinlock_recursive_trylock_tm = ExternalFunction['rte_spinlock_recursive_trylock_tm', rte_spinlock_recursive_trylock_tm]
alias rte_timer_rte_timer_data_alloc = ExternalFunction['rte_timer_data_alloc', rte_timer_data_alloc]
alias rte_timer_rte_timer_data_dealloc = ExternalFunction['rte_timer_data_dealloc', rte_timer_data_dealloc]
alias rte_timer_rte_timer_subsystem_init = ExternalFunction['rte_timer_subsystem_init', rte_timer_subsystem_init]
alias rte_timer_rte_timer_subsystem_finalize = ExternalFunction['rte_timer_subsystem_finalize', rte_timer_subsystem_finalize]
alias rte_timer_rte_timer_init = ExternalFunction['rte_timer_init', rte_timer_init]
alias rte_timer_rte_timer_reset = ExternalFunction['rte_timer_reset', rte_timer_reset]
alias rte_timer_rte_timer_reset_sync = ExternalFunction['rte_timer_reset_sync', rte_timer_reset_sync]
alias rte_timer_rte_timer_stop = ExternalFunction['rte_timer_stop', rte_timer_stop]
alias rte_timer_rte_timer_stop_sync = ExternalFunction['rte_timer_stop_sync', rte_timer_stop_sync]
alias rte_timer_rte_timer_pending = ExternalFunction['rte_timer_pending', rte_timer_pending]
alias rte_timer_rte_timer_next_ticks = ExternalFunction['rte_timer_next_ticks', rte_timer_next_ticks]
alias rte_timer_rte_timer_manage = ExternalFunction['rte_timer_manage', rte_timer_manage]
alias rte_timer_rte_timer_dump_stats = ExternalFunction['rte_timer_dump_stats', rte_timer_dump_stats]
alias rte_timer_rte_timer_alt_reset = ExternalFunction['rte_timer_alt_reset', rte_timer_alt_reset]
alias rte_timer_rte_timer_alt_stop = ExternalFunction['rte_timer_alt_stop', rte_timer_alt_stop]
alias rte_timer_rte_timer_alt_manage = ExternalFunction['rte_timer_alt_manage', rte_timer_alt_manage]
alias rte_timer_rte_timer_stop_all = ExternalFunction['rte_timer_stop_all', rte_timer_stop_all]
alias rte_timer_rte_timer_alt_dump_stats = ExternalFunction['rte_timer_alt_dump_stats', rte_timer_alt_dump_stats]

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
struct rte_timer(Copyable, Movable):
    var lib: DLHandle
    
    var remove: rte_timer_remove.type
    var rename: rte_timer_rename.type
    var renameat: rte_timer_renameat.type
    var fclose: rte_timer_fclose.type
    var tmpfile: rte_timer_tmpfile.type
    var tmpnam: rte_timer_tmpnam.type
    var tmpnam_r: rte_timer_tmpnam_r.type
    var tempnam: rte_timer_tempnam.type
    var fflush: rte_timer_fflush.type
    var fflush_unlocked: rte_timer_fflush_unlocked.type
    var fopen: rte_timer_fopen.type
    var freopen: rte_timer_freopen.type
    var fdopen: rte_timer_fdopen.type
    var fmemopen: rte_timer_fmemopen.type
    var open_memstream: rte_timer_open_memstream.type
    var setbuf: rte_timer_setbuf.type
    var setvbuf: rte_timer_setvbuf.type
    var setbuffer: rte_timer_setbuffer.type
    var setlinebuf: rte_timer_setlinebuf.type
    var fprintf: rte_timer_fprintf.type
    var printf: rte_timer_printf.type
    var sprintf: rte_timer_sprintf.type
    var vfprintf: rte_timer_vfprintf.type
    var vprintf: rte_timer_vprintf.type
    var vsprintf: rte_timer_vsprintf.type
    var snprintf: rte_timer_snprintf.type
    var vsnprintf: rte_timer_vsnprintf.type
    var vdprintf: rte_timer_vdprintf.type
    var dprintf: rte_timer_dprintf.type
    var fscanf: rte_timer_fscanf.type
    var scanf: rte_timer_scanf.type
    var sscanf: rte_timer_sscanf.type
    var vfscanf: rte_timer_vfscanf.type
    var vscanf: rte_timer_vscanf.type
    var vsscanf: rte_timer_vsscanf.type
    var fgetc: rte_timer_fgetc.type
    var getc: rte_timer_getc.type
    var getchar: rte_timer_getchar.type
    var getc_unlocked: rte_timer_getc_unlocked.type
    var getchar_unlocked: rte_timer_getchar_unlocked.type
    var fgetc_unlocked: rte_timer_fgetc_unlocked.type
    var fputc: rte_timer_fputc.type
    var putc: rte_timer_putc.type
    var putchar: rte_timer_putchar.type
    var fputc_unlocked: rte_timer_fputc_unlocked.type
    var putc_unlocked: rte_timer_putc_unlocked.type
    var putchar_unlocked: rte_timer_putchar_unlocked.type
    var getw: rte_timer_getw.type
    var putw: rte_timer_putw.type
    var fgets: rte_timer_fgets.type
    var getdelim: rte_timer_getdelim.type
    var getline: rte_timer_getline.type
    var fputs: rte_timer_fputs.type
    var puts: rte_timer_puts.type
    var ungetc: rte_timer_ungetc.type
    var fread: rte_timer_fread.type
    var fwrite: rte_timer_fwrite.type
    var fread_unlocked: rte_timer_fread_unlocked.type
    var fwrite_unlocked: rte_timer_fwrite_unlocked.type
    var fseek: rte_timer_fseek.type
    var ftell: rte_timer_ftell.type
    var rewind: rte_timer_rewind.type
    var fseeko: rte_timer_fseeko.type
    var ftello: rte_timer_ftello.type
    var fgetpos: rte_timer_fgetpos.type
    var fsetpos: rte_timer_fsetpos.type
    var clearerr: rte_timer_clearerr.type
    var feof: rte_timer_feof.type
    var ferror: rte_timer_ferror.type
    var clearerr_unlocked: rte_timer_clearerr_unlocked.type
    var feof_unlocked: rte_timer_feof_unlocked.type
    var ferror_unlocked: rte_timer_ferror_unlocked.type
    var perror: rte_timer_perror.type
    var fileno: rte_timer_fileno.type
    var fileno_unlocked: rte_timer_fileno_unlocked.type
    var pclose: rte_timer_pclose.type
    var popen: rte_timer_popen.type
    var ctermid: rte_timer_ctermid.type
    var flockfile: rte_timer_flockfile.type
    var ftrylockfile: rte_timer_ftrylockfile.type
    var funlockfile: rte_timer_funlockfile.type
    var alloca: rte_timer_alloca.type
    var sched_setparam: rte_timer_sched_setparam.type
    var sched_getparam: rte_timer_sched_getparam.type
    var sched_setscheduler: rte_timer_sched_setscheduler.type
    var sched_getscheduler: rte_timer_sched_getscheduler.type
    var sched_yield: rte_timer_sched_yield.type
    var sched_get_priority_max: rte_timer_sched_get_priority_max.type
    var sched_get_priority_min: rte_timer_sched_get_priority_min.type
    var sched_rr_get_interval: rte_timer_sched_rr_get_interval.type
    var rte_is_aligned: rte_timer_rte_is_aligned.type
    var rte_str_to_size: rte_timer_rte_str_to_size.type
    var rte_size_to_str: rte_timer_rte_size_to_str.type
    var rte_exit: rte_timer_rte_exit.type
    var clock: rte_timer_clock.type
    var time: rte_timer_time.type
    var difftime: rte_timer_difftime.type
    var mktime: rte_timer_mktime.type
    var strftime: rte_timer_strftime.type
    var strftime_l: rte_timer_strftime_l.type
    var gmtime: rte_timer_gmtime.type
    var localtime: rte_timer_localtime.type
    var gmtime_r: rte_timer_gmtime_r.type
    var localtime_r: rte_timer_localtime_r.type
    var asctime: rte_timer_asctime.type
    var ctime: rte_timer_ctime.type
    var asctime_r: rte_timer_asctime_r.type
    var ctime_r: rte_timer_ctime_r.type
    var tzset: rte_timer_tzset.type
    var timegm: rte_timer_timegm.type
    var timelocal: rte_timer_timelocal.type
    var dysize: rte_timer_dysize.type
    var nanosleep: rte_timer_nanosleep.type
    var clock_getres: rte_timer_clock_getres.type
    var clock_gettime: rte_timer_clock_gettime.type
    var clock_settime: rte_timer_clock_settime.type
    var clock_nanosleep: rte_timer_clock_nanosleep.type
    var clock_getcpuclockid: rte_timer_clock_getcpuclockid.type
    var timer_create: rte_timer_timer_create.type
    var timer_delete: rte_timer_timer_delete.type
    var timer_settime: rte_timer_timer_settime.type
    var timer_gettime: rte_timer_timer_gettime.type
    var timer_getoverrun: rte_timer_timer_getoverrun.type
    var timespec_get: rte_timer_timespec_get.type
    var memcpy: rte_timer_memcpy.type
    var memmove: rte_timer_memmove.type
    var memccpy: rte_timer_memccpy.type
    var memset: rte_timer_memset.type
    var memcmp: rte_timer_memcmp.type
    var memchr: rte_timer_memchr.type
    var strcpy: rte_timer_strcpy.type
    var strncpy: rte_timer_strncpy.type
    var strcat: rte_timer_strcat.type
    var strncat: rte_timer_strncat.type
    var strcmp: rte_timer_strcmp.type
    var strncmp: rte_timer_strncmp.type
    var strcoll: rte_timer_strcoll.type
    var strxfrm: rte_timer_strxfrm.type
    var strcoll_l: rte_timer_strcoll_l.type
    var strxfrm_l: rte_timer_strxfrm_l.type
    var strdup: rte_timer_strdup.type
    var strndup: rte_timer_strndup.type
    var strchr: rte_timer_strchr.type
    var strrchr: rte_timer_strrchr.type
    var strcspn: rte_timer_strcspn.type
    var strspn: rte_timer_strspn.type
    var strpbrk: rte_timer_strpbrk.type
    var strstr: rte_timer_strstr.type
    var strtok: rte_timer_strtok.type
    var strtok_r: rte_timer_strtok_r.type
    var strlen: rte_timer_strlen.type
    var strnlen: rte_timer_strnlen.type
    var strerror: rte_timer_strerror.type
    var strerror_r: rte_timer_strerror_r.type
    var strerror_l: rte_timer_strerror_l.type
    var bcmp: rte_timer_bcmp.type
    var bcopy: rte_timer_bcopy.type
    var bzero: rte_timer_bzero.type
    var index: rte_timer_index.type
    var rindex: rte_timer_rindex.type
    var ffs: rte_timer_ffs.type
    var ffsl: rte_timer_ffsl.type
    var ffsll: rte_timer_ffsll.type
    var strcasecmp: rte_timer_strcasecmp.type
    var strncasecmp: rte_timer_strncasecmp.type
    var strcasecmp_l: rte_timer_strcasecmp_l.type
    var strncasecmp_l: rte_timer_strncasecmp_l.type
    var explicit_bzero: rte_timer_explicit_bzero.type
    var strsep: rte_timer_strsep.type
    var strsignal: rte_timer_strsignal.type
    var stpcpy: rte_timer_stpcpy.type
    var stpncpy: rte_timer_stpncpy.type
    var rte_uuid_is_null: rte_timer_rte_uuid_is_null.type
    var rte_uuid_copy: rte_timer_rte_uuid_copy.type
    var rte_uuid_compare: rte_timer_rte_uuid_compare.type
    var rte_uuid_parse: rte_timer_rte_uuid_parse.type
    var rte_uuid_unparse: rte_timer_rte_uuid_unparse.type
    var rte_eal_process_type: rte_timer_rte_eal_process_type.type
    var rte_eal_iopl_init: rte_timer_rte_eal_iopl_init.type
    var rte_eal_init: rte_timer_rte_eal_init.type
    var rte_eal_cleanup: rte_timer_rte_eal_cleanup.type
    var rte_eal_primary_proc_alive: rte_timer_rte_eal_primary_proc_alive.type
    var rte_mp_disable: rte_timer_rte_mp_disable.type
    var rte_mp_action_register: rte_timer_rte_mp_action_register.type
    var rte_mp_action_unregister: rte_timer_rte_mp_action_unregister.type
    var rte_mp_sendmsg: rte_timer_rte_mp_sendmsg.type
    var rte_mp_request_sync: rte_timer_rte_mp_request_sync.type
    var rte_mp_request_async: rte_timer_rte_mp_request_async.type
    var rte_set_application_usage_hook: rte_timer_rte_set_application_usage_hook.type
    var rte_eal_has_hugepages: rte_timer_rte_eal_has_hugepages.type
    var rte_eal_has_pci: rte_timer_rte_eal_has_pci.type
    var rte_eal_create_uio_dev: rte_timer_rte_eal_create_uio_dev.type
    var rte_eal_vfio_intr_mode: rte_timer_rte_eal_vfio_intr_mode.type
    var rte_eal_vfio_get_vf_token: rte_timer_rte_eal_vfio_get_vf_token.type
    var rte_sys_gettid: rte_timer_rte_sys_gettid.type
    var rte_gettid: rte_timer_rte_gettid.type
    var rte_eal_get_baseaddr: rte_timer_rte_eal_get_baseaddr.type
    var rte_eal_iova_mode: rte_timer_rte_eal_iova_mode.type
    var rte_eal_mbuf_user_pool_ops: rte_timer_rte_eal_mbuf_user_pool_ops.type
    var rte_eal_get_runtime_dir: rte_timer_rte_eal_get_runtime_dir.type
    var rte_eal_parse_coremask: rte_timer_rte_eal_parse_coremask.type
    var rte_eal_remote_launch: rte_timer_rte_eal_remote_launch.type
    var rte_eal_mp_remote_launch: rte_timer_rte_eal_mp_remote_launch.type
    var rte_eal_get_lcore_state: rte_timer_rte_eal_get_lcore_state.type
    var rte_eal_wait_lcore: rte_timer_rte_eal_wait_lcore.type
    var rte_eal_mp_wait_lcore: rte_timer_rte_eal_mp_wait_lcore.type
    var rte_thread_create: rte_timer_rte_thread_create.type
    var rte_thread_create_control: rte_timer_rte_thread_create_control.type
    var rte_thread_create_internal_control: rte_timer_rte_thread_create_internal_control.type
    var rte_thread_join: rte_timer_rte_thread_join.type
    var rte_thread_detach: rte_timer_rte_thread_detach.type
    var rte_thread_self: rte_timer_rte_thread_self.type
    var rte_thread_set_name: rte_timer_rte_thread_set_name.type
    var rte_thread_set_prefixed_name: rte_timer_rte_thread_set_prefixed_name.type
    var rte_thread_equal: rte_timer_rte_thread_equal.type
    var rte_thread_attr_init: rte_timer_rte_thread_attr_init.type
    var rte_thread_attr_set_priority: rte_timer_rte_thread_attr_set_priority.type
    var rte_thread_get_priority: rte_timer_rte_thread_get_priority.type
    var rte_thread_set_priority: rte_timer_rte_thread_set_priority.type
    var rte_thread_key_create: rte_timer_rte_thread_key_create.type
    var rte_thread_key_delete: rte_timer_rte_thread_key_delete.type
    var rte_thread_value_set: rte_timer_rte_thread_value_set.type
    var rte_thread_value_get: rte_timer_rte_thread_value_get.type
    var rte_eal_lcore_role: rte_timer_rte_eal_lcore_role.type
    var rte_lcore_has_role: rte_timer_rte_lcore_has_role.type
    var rte_lcore_id: rte_timer_rte_lcore_id.type
    var rte_get_main_lcore: rte_timer_rte_get_main_lcore.type
    var rte_lcore_count: rte_timer_rte_lcore_count.type
    var rte_lcore_index: rte_timer_rte_lcore_index.type
    var rte_socket_id: rte_timer_rte_socket_id.type
    var rte_socket_count: rte_timer_rte_socket_count.type
    var rte_socket_id_by_idx: rte_timer_rte_socket_id_by_idx.type
    var rte_lcore_to_socket_id: rte_timer_rte_lcore_to_socket_id.type
    var rte_lcore_to_cpu_id: rte_timer_rte_lcore_to_cpu_id.type
    var rte_lcore_is_enabled: rte_timer_rte_lcore_is_enabled.type
    var rte_get_next_lcore: rte_timer_rte_get_next_lcore.type
    var rte_lcore_callback_register: rte_timer_rte_lcore_callback_register.type
    var rte_lcore_callback_unregister: rte_timer_rte_lcore_callback_unregister.type
    var rte_lcore_iterate: rte_timer_rte_lcore_iterate.type
    var rte_lcore_register_usage_cb: rte_timer_rte_lcore_register_usage_cb.type
    var rte_lcore_dump: rte_timer_rte_lcore_dump.type
    var rte_thread_register: rte_timer_rte_thread_register.type
    var rte_thread_unregister: rte_timer_rte_thread_unregister.type
    var rte_atomic_thread_fence: rte_timer_rte_atomic_thread_fence.type
    var rte_atomic16_cmpset: rte_timer_rte_atomic16_cmpset.type
    var rte_atomic16_exchange: rte_timer_rte_atomic16_exchange.type
    var rte_atomic16_init: rte_timer_rte_atomic16_init.type
    var rte_atomic16_read: rte_timer_rte_atomic16_read.type
    var rte_atomic16_set: rte_timer_rte_atomic16_set.type
    var rte_atomic16_add: rte_timer_rte_atomic16_add.type
    var rte_atomic16_sub: rte_timer_rte_atomic16_sub.type
    var rte_atomic16_inc: rte_timer_rte_atomic16_inc.type
    var rte_atomic16_dec: rte_timer_rte_atomic16_dec.type
    var rte_atomic16_add_return: rte_timer_rte_atomic16_add_return.type
    var rte_atomic16_sub_return: rte_timer_rte_atomic16_sub_return.type
    var rte_atomic16_inc_and_test: rte_timer_rte_atomic16_inc_and_test.type
    var rte_atomic16_dec_and_test: rte_timer_rte_atomic16_dec_and_test.type
    var rte_atomic16_test_and_set: rte_timer_rte_atomic16_test_and_set.type
    var rte_atomic16_clear: rte_timer_rte_atomic16_clear.type
    var rte_atomic32_cmpset: rte_timer_rte_atomic32_cmpset.type
    var rte_atomic32_exchange: rte_timer_rte_atomic32_exchange.type
    var rte_atomic32_init: rte_timer_rte_atomic32_init.type
    var rte_atomic32_read: rte_timer_rte_atomic32_read.type
    var rte_atomic32_set: rte_timer_rte_atomic32_set.type
    var rte_atomic32_add: rte_timer_rte_atomic32_add.type
    var rte_atomic32_sub: rte_timer_rte_atomic32_sub.type
    var rte_atomic32_inc: rte_timer_rte_atomic32_inc.type
    var rte_atomic32_dec: rte_timer_rte_atomic32_dec.type
    var rte_atomic32_add_return: rte_timer_rte_atomic32_add_return.type
    var rte_atomic32_sub_return: rte_timer_rte_atomic32_sub_return.type
    var rte_atomic32_inc_and_test: rte_timer_rte_atomic32_inc_and_test.type
    var rte_atomic32_dec_and_test: rte_timer_rte_atomic32_dec_and_test.type
    var rte_atomic32_test_and_set: rte_timer_rte_atomic32_test_and_set.type
    var rte_atomic32_clear: rte_timer_rte_atomic32_clear.type
    var rte_atomic64_cmpset: rte_timer_rte_atomic64_cmpset.type
    var rte_atomic64_exchange: rte_timer_rte_atomic64_exchange.type
    var rte_atomic64_init: rte_timer_rte_atomic64_init.type
    var rte_atomic64_read: rte_timer_rte_atomic64_read.type
    var rte_atomic64_set: rte_timer_rte_atomic64_set.type
    var rte_atomic64_add: rte_timer_rte_atomic64_add.type
    var rte_atomic64_sub: rte_timer_rte_atomic64_sub.type
    var rte_atomic64_inc: rte_timer_rte_atomic64_inc.type
    var rte_atomic64_dec: rte_timer_rte_atomic64_dec.type
    var rte_atomic64_add_return: rte_timer_rte_atomic64_add_return.type
    var rte_atomic64_sub_return: rte_timer_rte_atomic64_sub_return.type
    var rte_atomic64_inc_and_test: rte_timer_rte_atomic64_inc_and_test.type
    var rte_atomic64_dec_and_test: rte_timer_rte_atomic64_dec_and_test.type
    var rte_atomic64_test_and_set: rte_timer_rte_atomic64_test_and_set.type
    var rte_atomic64_clear: rte_timer_rte_atomic64_clear.type
    var rte_openlog_stream: rte_timer_rte_openlog_stream.type
    var rte_log_get_stream: rte_timer_rte_log_get_stream.type
    var rte_log_set_global_level: rte_timer_rte_log_set_global_level.type
    var rte_log_get_global_level: rte_timer_rte_log_get_global_level.type
    var rte_log_get_level: rte_timer_rte_log_get_level.type
    var rte_log_can_log: rte_timer_rte_log_can_log.type
    var rte_log_set_level_pattern: rte_timer_rte_log_set_level_pattern.type
    var rte_log_set_level_regexp: rte_timer_rte_log_set_level_regexp.type
    var rte_log_set_level: rte_timer_rte_log_set_level.type
    var rte_log_cur_msg_loglevel: rte_timer_rte_log_cur_msg_loglevel.type
    var rte_log_cur_msg_logtype: rte_timer_rte_log_cur_msg_logtype.type
    var rte_log_register: rte_timer_rte_log_register.type
    var rte_log_register_type_and_pick_level: rte_timer_rte_log_register_type_and_pick_level.type
    var rte_log_list_types: rte_timer_rte_log_list_types.type
    var rte_log_dump: rte_timer_rte_log_dump.type
    var rte_log: rte_timer_rte_log.type
    var rte_vlog: rte_timer_rte_vlog.type
    var rte_dump_stack: rte_timer_rte_dump_stack.type
    var rte_atomic128_cmp_exchange: rte_timer_rte_atomic128_cmp_exchange.type
    var rte_pause: rte_timer_rte_pause.type
    var rte_wait_until_equal_16: rte_timer_rte_wait_until_equal_16.type
    var rte_wait_until_equal_32: rte_timer_rte_wait_until_equal_32.type
    var rte_wait_until_equal_64: rte_timer_rte_wait_until_equal_64.type
    var rte_spinlock_init: rte_timer_rte_spinlock_init.type
    var rte_spinlock_lock: rte_timer_rte_spinlock_lock.type
    var rte_spinlock_unlock: rte_timer_rte_spinlock_unlock.type
    var rte_spinlock_trylock: rte_timer_rte_spinlock_trylock.type
    var rte_spinlock_is_locked: rte_timer_rte_spinlock_is_locked.type
    var rte_tm_supported: rte_timer_rte_tm_supported.type
    var rte_spinlock_lock_tm: rte_timer_rte_spinlock_lock_tm.type
    var rte_spinlock_unlock_tm: rte_timer_rte_spinlock_unlock_tm.type
    var rte_spinlock_trylock_tm: rte_timer_rte_spinlock_trylock_tm.type
    var rte_spinlock_recursive_init: rte_timer_rte_spinlock_recursive_init.type
    var rte_spinlock_recursive_lock: rte_timer_rte_spinlock_recursive_lock.type
    var rte_spinlock_recursive_unlock: rte_timer_rte_spinlock_recursive_unlock.type
    var rte_spinlock_recursive_trylock: rte_timer_rte_spinlock_recursive_trylock.type
    var rte_spinlock_recursive_lock_tm: rte_timer_rte_spinlock_recursive_lock_tm.type
    var rte_spinlock_recursive_unlock_tm: rte_timer_rte_spinlock_recursive_unlock_tm.type
    var rte_spinlock_recursive_trylock_tm: rte_timer_rte_spinlock_recursive_trylock_tm.type
    var rte_timer_data_alloc: rte_timer_rte_timer_data_alloc.type
    var rte_timer_data_dealloc: rte_timer_rte_timer_data_dealloc.type
    var rte_timer_subsystem_init: rte_timer_rte_timer_subsystem_init.type
    var rte_timer_subsystem_finalize: rte_timer_rte_timer_subsystem_finalize.type
    var rte_timer_init: rte_timer_rte_timer_init.type
    var rte_timer_reset: rte_timer_rte_timer_reset.type
    var rte_timer_reset_sync: rte_timer_rte_timer_reset_sync.type
    var rte_timer_stop: rte_timer_rte_timer_stop.type
    var rte_timer_stop_sync: rte_timer_rte_timer_stop_sync.type
    var rte_timer_pending: rte_timer_rte_timer_pending.type
    var rte_timer_next_ticks: rte_timer_rte_timer_next_ticks.type
    var rte_timer_manage: rte_timer_rte_timer_manage.type
    var rte_timer_dump_stats: rte_timer_rte_timer_dump_stats.type
    var rte_timer_alt_reset: rte_timer_rte_timer_alt_reset.type
    var rte_timer_alt_stop: rte_timer_rte_timer_alt_stop.type
    var rte_timer_alt_manage: rte_timer_rte_timer_alt_manage.type
    var rte_timer_stop_all: rte_timer_rte_timer_stop_all.type
    var rte_timer_alt_dump_stats: rte_timer_rte_timer_alt_dump_stats.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_timer.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_timer from", 'librte_timer.so', ":\n", e)
            )

    
        self.remove = rte_timer_remove.load(self.lib)
        self.rename = rte_timer_rename.load(self.lib)
        self.renameat = rte_timer_renameat.load(self.lib)
        self.fclose = rte_timer_fclose.load(self.lib)
        self.tmpfile = rte_timer_tmpfile.load(self.lib)
        self.tmpnam = rte_timer_tmpnam.load(self.lib)
        self.tmpnam_r = rte_timer_tmpnam_r.load(self.lib)
        self.tempnam = rte_timer_tempnam.load(self.lib)
        self.fflush = rte_timer_fflush.load(self.lib)
        self.fflush_unlocked = rte_timer_fflush_unlocked.load(self.lib)
        self.fopen = rte_timer_fopen.load(self.lib)
        self.freopen = rte_timer_freopen.load(self.lib)
        self.fdopen = rte_timer_fdopen.load(self.lib)
        self.fmemopen = rte_timer_fmemopen.load(self.lib)
        self.open_memstream = rte_timer_open_memstream.load(self.lib)
        self.setbuf = rte_timer_setbuf.load(self.lib)
        self.setvbuf = rte_timer_setvbuf.load(self.lib)
        self.setbuffer = rte_timer_setbuffer.load(self.lib)
        self.setlinebuf = rte_timer_setlinebuf.load(self.lib)
        self.fprintf = rte_timer_fprintf.load(self.lib)
        self.printf = rte_timer_printf.load(self.lib)
        self.sprintf = rte_timer_sprintf.load(self.lib)
        self.vfprintf = rte_timer_vfprintf.load(self.lib)
        self.vprintf = rte_timer_vprintf.load(self.lib)
        self.vsprintf = rte_timer_vsprintf.load(self.lib)
        self.snprintf = rte_timer_snprintf.load(self.lib)
        self.vsnprintf = rte_timer_vsnprintf.load(self.lib)
        self.vdprintf = rte_timer_vdprintf.load(self.lib)
        self.dprintf = rte_timer_dprintf.load(self.lib)
        self.fscanf = rte_timer_fscanf.load(self.lib)
        self.scanf = rte_timer_scanf.load(self.lib)
        self.sscanf = rte_timer_sscanf.load(self.lib)
        self.vfscanf = rte_timer_vfscanf.load(self.lib)
        self.vscanf = rte_timer_vscanf.load(self.lib)
        self.vsscanf = rte_timer_vsscanf.load(self.lib)
        self.fgetc = rte_timer_fgetc.load(self.lib)
        self.getc = rte_timer_getc.load(self.lib)
        self.getchar = rte_timer_getchar.load(self.lib)
        self.getc_unlocked = rte_timer_getc_unlocked.load(self.lib)
        self.getchar_unlocked = rte_timer_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = rte_timer_fgetc_unlocked.load(self.lib)
        self.fputc = rte_timer_fputc.load(self.lib)
        self.putc = rte_timer_putc.load(self.lib)
        self.putchar = rte_timer_putchar.load(self.lib)
        self.fputc_unlocked = rte_timer_fputc_unlocked.load(self.lib)
        self.putc_unlocked = rte_timer_putc_unlocked.load(self.lib)
        self.putchar_unlocked = rte_timer_putchar_unlocked.load(self.lib)
        self.getw = rte_timer_getw.load(self.lib)
        self.putw = rte_timer_putw.load(self.lib)
        self.fgets = rte_timer_fgets.load(self.lib)
        self.getdelim = rte_timer_getdelim.load(self.lib)
        self.getline = rte_timer_getline.load(self.lib)
        self.fputs = rte_timer_fputs.load(self.lib)
        self.puts = rte_timer_puts.load(self.lib)
        self.ungetc = rte_timer_ungetc.load(self.lib)
        self.fread = rte_timer_fread.load(self.lib)
        self.fwrite = rte_timer_fwrite.load(self.lib)
        self.fread_unlocked = rte_timer_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = rte_timer_fwrite_unlocked.load(self.lib)
        self.fseek = rte_timer_fseek.load(self.lib)
        self.ftell = rte_timer_ftell.load(self.lib)
        self.rewind = rte_timer_rewind.load(self.lib)
        self.fseeko = rte_timer_fseeko.load(self.lib)
        self.ftello = rte_timer_ftello.load(self.lib)
        self.fgetpos = rte_timer_fgetpos.load(self.lib)
        self.fsetpos = rte_timer_fsetpos.load(self.lib)
        self.clearerr = rte_timer_clearerr.load(self.lib)
        self.feof = rte_timer_feof.load(self.lib)
        self.ferror = rte_timer_ferror.load(self.lib)
        self.clearerr_unlocked = rte_timer_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = rte_timer_feof_unlocked.load(self.lib)
        self.ferror_unlocked = rte_timer_ferror_unlocked.load(self.lib)
        self.perror = rte_timer_perror.load(self.lib)
        self.fileno = rte_timer_fileno.load(self.lib)
        self.fileno_unlocked = rte_timer_fileno_unlocked.load(self.lib)
        self.pclose = rte_timer_pclose.load(self.lib)
        self.popen = rte_timer_popen.load(self.lib)
        self.ctermid = rte_timer_ctermid.load(self.lib)
        self.flockfile = rte_timer_flockfile.load(self.lib)
        self.ftrylockfile = rte_timer_ftrylockfile.load(self.lib)
        self.funlockfile = rte_timer_funlockfile.load(self.lib)
        self.alloca = rte_timer_alloca.load(self.lib)
        self.sched_setparam = rte_timer_sched_setparam.load(self.lib)
        self.sched_getparam = rte_timer_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_timer_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_timer_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_timer_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_timer_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_timer_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_timer_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_timer_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_timer_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_timer_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_timer_rte_exit.load(self.lib)
        self.clock = rte_timer_clock.load(self.lib)
        self.time = rte_timer_time.load(self.lib)
        self.difftime = rte_timer_difftime.load(self.lib)
        self.mktime = rte_timer_mktime.load(self.lib)
        self.strftime = rte_timer_strftime.load(self.lib)
        self.strftime_l = rte_timer_strftime_l.load(self.lib)
        self.gmtime = rte_timer_gmtime.load(self.lib)
        self.localtime = rte_timer_localtime.load(self.lib)
        self.gmtime_r = rte_timer_gmtime_r.load(self.lib)
        self.localtime_r = rte_timer_localtime_r.load(self.lib)
        self.asctime = rte_timer_asctime.load(self.lib)
        self.ctime = rte_timer_ctime.load(self.lib)
        self.asctime_r = rte_timer_asctime_r.load(self.lib)
        self.ctime_r = rte_timer_ctime_r.load(self.lib)
        self.tzset = rte_timer_tzset.load(self.lib)
        self.timegm = rte_timer_timegm.load(self.lib)
        self.timelocal = rte_timer_timelocal.load(self.lib)
        self.dysize = rte_timer_dysize.load(self.lib)
        self.nanosleep = rte_timer_nanosleep.load(self.lib)
        self.clock_getres = rte_timer_clock_getres.load(self.lib)
        self.clock_gettime = rte_timer_clock_gettime.load(self.lib)
        self.clock_settime = rte_timer_clock_settime.load(self.lib)
        self.clock_nanosleep = rte_timer_clock_nanosleep.load(self.lib)
        self.clock_getcpuclockid = rte_timer_clock_getcpuclockid.load(self.lib)
        self.timer_create = rte_timer_timer_create.load(self.lib)
        self.timer_delete = rte_timer_timer_delete.load(self.lib)
        self.timer_settime = rte_timer_timer_settime.load(self.lib)
        self.timer_gettime = rte_timer_timer_gettime.load(self.lib)
        self.timer_getoverrun = rte_timer_timer_getoverrun.load(self.lib)
        self.timespec_get = rte_timer_timespec_get.load(self.lib)
        self.memcpy = rte_timer_memcpy.load(self.lib)
        self.memmove = rte_timer_memmove.load(self.lib)
        self.memccpy = rte_timer_memccpy.load(self.lib)
        self.memset = rte_timer_memset.load(self.lib)
        self.memcmp = rte_timer_memcmp.load(self.lib)
        self.memchr = rte_timer_memchr.load(self.lib)
        self.strcpy = rte_timer_strcpy.load(self.lib)
        self.strncpy = rte_timer_strncpy.load(self.lib)
        self.strcat = rte_timer_strcat.load(self.lib)
        self.strncat = rte_timer_strncat.load(self.lib)
        self.strcmp = rte_timer_strcmp.load(self.lib)
        self.strncmp = rte_timer_strncmp.load(self.lib)
        self.strcoll = rte_timer_strcoll.load(self.lib)
        self.strxfrm = rte_timer_strxfrm.load(self.lib)
        self.strcoll_l = rte_timer_strcoll_l.load(self.lib)
        self.strxfrm_l = rte_timer_strxfrm_l.load(self.lib)
        self.strdup = rte_timer_strdup.load(self.lib)
        self.strndup = rte_timer_strndup.load(self.lib)
        self.strchr = rte_timer_strchr.load(self.lib)
        self.strrchr = rte_timer_strrchr.load(self.lib)
        self.strcspn = rte_timer_strcspn.load(self.lib)
        self.strspn = rte_timer_strspn.load(self.lib)
        self.strpbrk = rte_timer_strpbrk.load(self.lib)
        self.strstr = rte_timer_strstr.load(self.lib)
        self.strtok = rte_timer_strtok.load(self.lib)
        self.strtok_r = rte_timer_strtok_r.load(self.lib)
        self.strlen = rte_timer_strlen.load(self.lib)
        self.strnlen = rte_timer_strnlen.load(self.lib)
        self.strerror = rte_timer_strerror.load(self.lib)
        self.strerror_r = rte_timer_strerror_r.load(self.lib)
        self.strerror_l = rte_timer_strerror_l.load(self.lib)
        self.bcmp = rte_timer_bcmp.load(self.lib)
        self.bcopy = rte_timer_bcopy.load(self.lib)
        self.bzero = rte_timer_bzero.load(self.lib)
        self.index = rte_timer_index.load(self.lib)
        self.rindex = rte_timer_rindex.load(self.lib)
        self.ffs = rte_timer_ffs.load(self.lib)
        self.ffsl = rte_timer_ffsl.load(self.lib)
        self.ffsll = rte_timer_ffsll.load(self.lib)
        self.strcasecmp = rte_timer_strcasecmp.load(self.lib)
        self.strncasecmp = rte_timer_strncasecmp.load(self.lib)
        self.strcasecmp_l = rte_timer_strcasecmp_l.load(self.lib)
        self.strncasecmp_l = rte_timer_strncasecmp_l.load(self.lib)
        self.explicit_bzero = rte_timer_explicit_bzero.load(self.lib)
        self.strsep = rte_timer_strsep.load(self.lib)
        self.strsignal = rte_timer_strsignal.load(self.lib)
        self.stpcpy = rte_timer_stpcpy.load(self.lib)
        self.stpncpy = rte_timer_stpncpy.load(self.lib)
        self.rte_uuid_is_null = rte_timer_rte_uuid_is_null.load(self.lib)
        self.rte_uuid_copy = rte_timer_rte_uuid_copy.load(self.lib)
        self.rte_uuid_compare = rte_timer_rte_uuid_compare.load(self.lib)
        self.rte_uuid_parse = rte_timer_rte_uuid_parse.load(self.lib)
        self.rte_uuid_unparse = rte_timer_rte_uuid_unparse.load(self.lib)
        self.rte_eal_process_type = rte_timer_rte_eal_process_type.load(self.lib)
        self.rte_eal_iopl_init = rte_timer_rte_eal_iopl_init.load(self.lib)
        self.rte_eal_init = rte_timer_rte_eal_init.load(self.lib)
        self.rte_eal_cleanup = rte_timer_rte_eal_cleanup.load(self.lib)
        self.rte_eal_primary_proc_alive = rte_timer_rte_eal_primary_proc_alive.load(self.lib)
        self.rte_mp_disable = rte_timer_rte_mp_disable.load(self.lib)
        self.rte_mp_action_register = rte_timer_rte_mp_action_register.load(self.lib)
        self.rte_mp_action_unregister = rte_timer_rte_mp_action_unregister.load(self.lib)
        self.rte_mp_sendmsg = rte_timer_rte_mp_sendmsg.load(self.lib)
        self.rte_mp_request_sync = rte_timer_rte_mp_request_sync.load(self.lib)
        self.rte_mp_request_async = rte_timer_rte_mp_request_async.load(self.lib)
        self.rte_set_application_usage_hook = rte_timer_rte_set_application_usage_hook.load(self.lib)
        self.rte_eal_has_hugepages = rte_timer_rte_eal_has_hugepages.load(self.lib)
        self.rte_eal_has_pci = rte_timer_rte_eal_has_pci.load(self.lib)
        self.rte_eal_create_uio_dev = rte_timer_rte_eal_create_uio_dev.load(self.lib)
        self.rte_eal_vfio_intr_mode = rte_timer_rte_eal_vfio_intr_mode.load(self.lib)
        self.rte_eal_vfio_get_vf_token = rte_timer_rte_eal_vfio_get_vf_token.load(self.lib)
        self.rte_sys_gettid = rte_timer_rte_sys_gettid.load(self.lib)
        self.rte_gettid = rte_timer_rte_gettid.load(self.lib)
        self.rte_eal_get_baseaddr = rte_timer_rte_eal_get_baseaddr.load(self.lib)
        self.rte_eal_iova_mode = rte_timer_rte_eal_iova_mode.load(self.lib)
        self.rte_eal_mbuf_user_pool_ops = rte_timer_rte_eal_mbuf_user_pool_ops.load(self.lib)
        self.rte_eal_get_runtime_dir = rte_timer_rte_eal_get_runtime_dir.load(self.lib)
        self.rte_eal_parse_coremask = rte_timer_rte_eal_parse_coremask.load(self.lib)
        self.rte_eal_remote_launch = rte_timer_rte_eal_remote_launch.load(self.lib)
        self.rte_eal_mp_remote_launch = rte_timer_rte_eal_mp_remote_launch.load(self.lib)
        self.rte_eal_get_lcore_state = rte_timer_rte_eal_get_lcore_state.load(self.lib)
        self.rte_eal_wait_lcore = rte_timer_rte_eal_wait_lcore.load(self.lib)
        self.rte_eal_mp_wait_lcore = rte_timer_rte_eal_mp_wait_lcore.load(self.lib)
        self.rte_thread_create = rte_timer_rte_thread_create.load(self.lib)
        self.rte_thread_create_control = rte_timer_rte_thread_create_control.load(self.lib)
        self.rte_thread_create_internal_control = rte_timer_rte_thread_create_internal_control.load(self.lib)
        self.rte_thread_join = rte_timer_rte_thread_join.load(self.lib)
        self.rte_thread_detach = rte_timer_rte_thread_detach.load(self.lib)
        self.rte_thread_self = rte_timer_rte_thread_self.load(self.lib)
        self.rte_thread_set_name = rte_timer_rte_thread_set_name.load(self.lib)
        self.rte_thread_set_prefixed_name = rte_timer_rte_thread_set_prefixed_name.load(self.lib)
        self.rte_thread_equal = rte_timer_rte_thread_equal.load(self.lib)
        self.rte_thread_attr_init = rte_timer_rte_thread_attr_init.load(self.lib)
        self.rte_thread_attr_set_priority = rte_timer_rte_thread_attr_set_priority.load(self.lib)
        self.rte_thread_get_priority = rte_timer_rte_thread_get_priority.load(self.lib)
        self.rte_thread_set_priority = rte_timer_rte_thread_set_priority.load(self.lib)
        self.rte_thread_key_create = rte_timer_rte_thread_key_create.load(self.lib)
        self.rte_thread_key_delete = rte_timer_rte_thread_key_delete.load(self.lib)
        self.rte_thread_value_set = rte_timer_rte_thread_value_set.load(self.lib)
        self.rte_thread_value_get = rte_timer_rte_thread_value_get.load(self.lib)
        self.rte_eal_lcore_role = rte_timer_rte_eal_lcore_role.load(self.lib)
        self.rte_lcore_has_role = rte_timer_rte_lcore_has_role.load(self.lib)
        self.rte_lcore_id = rte_timer_rte_lcore_id.load(self.lib)
        self.rte_get_main_lcore = rte_timer_rte_get_main_lcore.load(self.lib)
        self.rte_lcore_count = rte_timer_rte_lcore_count.load(self.lib)
        self.rte_lcore_index = rte_timer_rte_lcore_index.load(self.lib)
        self.rte_socket_id = rte_timer_rte_socket_id.load(self.lib)
        self.rte_socket_count = rte_timer_rte_socket_count.load(self.lib)
        self.rte_socket_id_by_idx = rte_timer_rte_socket_id_by_idx.load(self.lib)
        self.rte_lcore_to_socket_id = rte_timer_rte_lcore_to_socket_id.load(self.lib)
        self.rte_lcore_to_cpu_id = rte_timer_rte_lcore_to_cpu_id.load(self.lib)
        self.rte_lcore_is_enabled = rte_timer_rte_lcore_is_enabled.load(self.lib)
        self.rte_get_next_lcore = rte_timer_rte_get_next_lcore.load(self.lib)
        self.rte_lcore_callback_register = rte_timer_rte_lcore_callback_register.load(self.lib)
        self.rte_lcore_callback_unregister = rte_timer_rte_lcore_callback_unregister.load(self.lib)
        self.rte_lcore_iterate = rte_timer_rte_lcore_iterate.load(self.lib)
        self.rte_lcore_register_usage_cb = rte_timer_rte_lcore_register_usage_cb.load(self.lib)
        self.rte_lcore_dump = rte_timer_rte_lcore_dump.load(self.lib)
        self.rte_thread_register = rte_timer_rte_thread_register.load(self.lib)
        self.rte_thread_unregister = rte_timer_rte_thread_unregister.load(self.lib)
        self.rte_atomic_thread_fence = rte_timer_rte_atomic_thread_fence.load(self.lib)
        self.rte_atomic16_cmpset = rte_timer_rte_atomic16_cmpset.load(self.lib)
        self.rte_atomic16_exchange = rte_timer_rte_atomic16_exchange.load(self.lib)
        self.rte_atomic16_init = rte_timer_rte_atomic16_init.load(self.lib)
        self.rte_atomic16_read = rte_timer_rte_atomic16_read.load(self.lib)
        self.rte_atomic16_set = rte_timer_rte_atomic16_set.load(self.lib)
        self.rte_atomic16_add = rte_timer_rte_atomic16_add.load(self.lib)
        self.rte_atomic16_sub = rte_timer_rte_atomic16_sub.load(self.lib)
        self.rte_atomic16_inc = rte_timer_rte_atomic16_inc.load(self.lib)
        self.rte_atomic16_dec = rte_timer_rte_atomic16_dec.load(self.lib)
        self.rte_atomic16_add_return = rte_timer_rte_atomic16_add_return.load(self.lib)
        self.rte_atomic16_sub_return = rte_timer_rte_atomic16_sub_return.load(self.lib)
        self.rte_atomic16_inc_and_test = rte_timer_rte_atomic16_inc_and_test.load(self.lib)
        self.rte_atomic16_dec_and_test = rte_timer_rte_atomic16_dec_and_test.load(self.lib)
        self.rte_atomic16_test_and_set = rte_timer_rte_atomic16_test_and_set.load(self.lib)
        self.rte_atomic16_clear = rte_timer_rte_atomic16_clear.load(self.lib)
        self.rte_atomic32_cmpset = rte_timer_rte_atomic32_cmpset.load(self.lib)
        self.rte_atomic32_exchange = rte_timer_rte_atomic32_exchange.load(self.lib)
        self.rte_atomic32_init = rte_timer_rte_atomic32_init.load(self.lib)
        self.rte_atomic32_read = rte_timer_rte_atomic32_read.load(self.lib)
        self.rte_atomic32_set = rte_timer_rte_atomic32_set.load(self.lib)
        self.rte_atomic32_add = rte_timer_rte_atomic32_add.load(self.lib)
        self.rte_atomic32_sub = rte_timer_rte_atomic32_sub.load(self.lib)
        self.rte_atomic32_inc = rte_timer_rte_atomic32_inc.load(self.lib)
        self.rte_atomic32_dec = rte_timer_rte_atomic32_dec.load(self.lib)
        self.rte_atomic32_add_return = rte_timer_rte_atomic32_add_return.load(self.lib)
        self.rte_atomic32_sub_return = rte_timer_rte_atomic32_sub_return.load(self.lib)
        self.rte_atomic32_inc_and_test = rte_timer_rte_atomic32_inc_and_test.load(self.lib)
        self.rte_atomic32_dec_and_test = rte_timer_rte_atomic32_dec_and_test.load(self.lib)
        self.rte_atomic32_test_and_set = rte_timer_rte_atomic32_test_and_set.load(self.lib)
        self.rte_atomic32_clear = rte_timer_rte_atomic32_clear.load(self.lib)
        self.rte_atomic64_cmpset = rte_timer_rte_atomic64_cmpset.load(self.lib)
        self.rte_atomic64_exchange = rte_timer_rte_atomic64_exchange.load(self.lib)
        self.rte_atomic64_init = rte_timer_rte_atomic64_init.load(self.lib)
        self.rte_atomic64_read = rte_timer_rte_atomic64_read.load(self.lib)
        self.rte_atomic64_set = rte_timer_rte_atomic64_set.load(self.lib)
        self.rte_atomic64_add = rte_timer_rte_atomic64_add.load(self.lib)
        self.rte_atomic64_sub = rte_timer_rte_atomic64_sub.load(self.lib)
        self.rte_atomic64_inc = rte_timer_rte_atomic64_inc.load(self.lib)
        self.rte_atomic64_dec = rte_timer_rte_atomic64_dec.load(self.lib)
        self.rte_atomic64_add_return = rte_timer_rte_atomic64_add_return.load(self.lib)
        self.rte_atomic64_sub_return = rte_timer_rte_atomic64_sub_return.load(self.lib)
        self.rte_atomic64_inc_and_test = rte_timer_rte_atomic64_inc_and_test.load(self.lib)
        self.rte_atomic64_dec_and_test = rte_timer_rte_atomic64_dec_and_test.load(self.lib)
        self.rte_atomic64_test_and_set = rte_timer_rte_atomic64_test_and_set.load(self.lib)
        self.rte_atomic64_clear = rte_timer_rte_atomic64_clear.load(self.lib)
        self.rte_openlog_stream = rte_timer_rte_openlog_stream.load(self.lib)
        self.rte_log_get_stream = rte_timer_rte_log_get_stream.load(self.lib)
        self.rte_log_set_global_level = rte_timer_rte_log_set_global_level.load(self.lib)
        self.rte_log_get_global_level = rte_timer_rte_log_get_global_level.load(self.lib)
        self.rte_log_get_level = rte_timer_rte_log_get_level.load(self.lib)
        self.rte_log_can_log = rte_timer_rte_log_can_log.load(self.lib)
        self.rte_log_set_level_pattern = rte_timer_rte_log_set_level_pattern.load(self.lib)
        self.rte_log_set_level_regexp = rte_timer_rte_log_set_level_regexp.load(self.lib)
        self.rte_log_set_level = rte_timer_rte_log_set_level.load(self.lib)
        self.rte_log_cur_msg_loglevel = rte_timer_rte_log_cur_msg_loglevel.load(self.lib)
        self.rte_log_cur_msg_logtype = rte_timer_rte_log_cur_msg_logtype.load(self.lib)
        self.rte_log_register = rte_timer_rte_log_register.load(self.lib)
        self.rte_log_register_type_and_pick_level = rte_timer_rte_log_register_type_and_pick_level.load(self.lib)
        self.rte_log_list_types = rte_timer_rte_log_list_types.load(self.lib)
        self.rte_log_dump = rte_timer_rte_log_dump.load(self.lib)
        self.rte_log = rte_timer_rte_log.load(self.lib)
        self.rte_vlog = rte_timer_rte_vlog.load(self.lib)
        self.rte_dump_stack = rte_timer_rte_dump_stack.load(self.lib)
        self.rte_atomic128_cmp_exchange = rte_timer_rte_atomic128_cmp_exchange.load(self.lib)
        self.rte_pause = rte_timer_rte_pause.load(self.lib)
        self.rte_wait_until_equal_16 = rte_timer_rte_wait_until_equal_16.load(self.lib)
        self.rte_wait_until_equal_32 = rte_timer_rte_wait_until_equal_32.load(self.lib)
        self.rte_wait_until_equal_64 = rte_timer_rte_wait_until_equal_64.load(self.lib)
        self.rte_spinlock_init = rte_timer_rte_spinlock_init.load(self.lib)
        self.rte_spinlock_lock = rte_timer_rte_spinlock_lock.load(self.lib)
        self.rte_spinlock_unlock = rte_timer_rte_spinlock_unlock.load(self.lib)
        self.rte_spinlock_trylock = rte_timer_rte_spinlock_trylock.load(self.lib)
        self.rte_spinlock_is_locked = rte_timer_rte_spinlock_is_locked.load(self.lib)
        self.rte_tm_supported = rte_timer_rte_tm_supported.load(self.lib)
        self.rte_spinlock_lock_tm = rte_timer_rte_spinlock_lock_tm.load(self.lib)
        self.rte_spinlock_unlock_tm = rte_timer_rte_spinlock_unlock_tm.load(self.lib)
        self.rte_spinlock_trylock_tm = rte_timer_rte_spinlock_trylock_tm.load(self.lib)
        self.rte_spinlock_recursive_init = rte_timer_rte_spinlock_recursive_init.load(self.lib)
        self.rte_spinlock_recursive_lock = rte_timer_rte_spinlock_recursive_lock.load(self.lib)
        self.rte_spinlock_recursive_unlock = rte_timer_rte_spinlock_recursive_unlock.load(self.lib)
        self.rte_spinlock_recursive_trylock = rte_timer_rte_spinlock_recursive_trylock.load(self.lib)
        self.rte_spinlock_recursive_lock_tm = rte_timer_rte_spinlock_recursive_lock_tm.load(self.lib)
        self.rte_spinlock_recursive_unlock_tm = rte_timer_rte_spinlock_recursive_unlock_tm.load(self.lib)
        self.rte_spinlock_recursive_trylock_tm = rte_timer_rte_spinlock_recursive_trylock_tm.load(self.lib)
        self.rte_timer_data_alloc = rte_timer_rte_timer_data_alloc.load(self.lib)
        self.rte_timer_data_dealloc = rte_timer_rte_timer_data_dealloc.load(self.lib)
        self.rte_timer_subsystem_init = rte_timer_rte_timer_subsystem_init.load(self.lib)
        self.rte_timer_subsystem_finalize = rte_timer_rte_timer_subsystem_finalize.load(self.lib)
        self.rte_timer_init = rte_timer_rte_timer_init.load(self.lib)
        self.rte_timer_reset = rte_timer_rte_timer_reset.load(self.lib)
        self.rte_timer_reset_sync = rte_timer_rte_timer_reset_sync.load(self.lib)
        self.rte_timer_stop = rte_timer_rte_timer_stop.load(self.lib)
        self.rte_timer_stop_sync = rte_timer_rte_timer_stop_sync.load(self.lib)
        self.rte_timer_pending = rte_timer_rte_timer_pending.load(self.lib)
        self.rte_timer_next_ticks = rte_timer_rte_timer_next_ticks.load(self.lib)
        self.rte_timer_manage = rte_timer_rte_timer_manage.load(self.lib)
        self.rte_timer_dump_stats = rte_timer_rte_timer_dump_stats.load(self.lib)
        self.rte_timer_alt_reset = rte_timer_rte_timer_alt_reset.load(self.lib)
        self.rte_timer_alt_stop = rte_timer_rte_timer_alt_stop.load(self.lib)
        self.rte_timer_alt_manage = rte_timer_rte_timer_alt_manage.load(self.lib)
        self.rte_timer_stop_all = rte_timer_rte_timer_stop_all.load(self.lib)
        self.rte_timer_alt_dump_stats = rte_timer_rte_timer_alt_dump_stats.load(self.lib)

