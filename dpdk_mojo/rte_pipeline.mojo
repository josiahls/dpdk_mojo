
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
struct anonomous_record_1725(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_1725

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
alias __assert_fail = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], UInt32, read UnsafePointer[Int8]) -> NoneType
alias __assert_perror_fail = fn (Int32, read UnsafePointer[Int8], UInt32, read UnsafePointer[Int8]) -> NoneType
alias __assert = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], Int32) -> NoneType
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
struct anonomous_record_1726(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_1726

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
	# {"id":"0x19e58af0","inner":[{"id":"0x19cb3c90","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"void *[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Generic marker for any place in a structure. 

alias RTE_MARKER8 = 	# # Node: PlaceHolder()
	# {"id":"0x19e58c80","inner":[{"decl":{"id":"0x19db9838","kind":"TypedefDecl","name":"uint8_t"},"id":"0x19e58be0","inner":[{"decl":{"id":"0x19d571a0","kind":"TypedefDecl","name":"__uint8_t"},"id":"0x19dae780","inner":[{"id":"0x19cb3050","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"TypedefType","type":{"qualType":"__uint8_t"}}],"kind":"TypedefType","type":{"qualType":"uint8_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint8_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 1B alignment in a structure. 

alias RTE_MARKER16 = 	# # Node: PlaceHolder()
	# {"id":"0x19e58de0","inner":[{"decl":{"id":"0x19db98a0","kind":"TypedefDecl","name":"uint16_t"},"id":"0x19e2a8a0","inner":[{"decl":{"id":"0x19d57280","kind":"TypedefDecl","name":"__uint16_t"},"id":"0x19dae8a0","inner":[{"id":"0x19cb3070","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"TypedefType","type":{"qualType":"__uint16_t"}}],"kind":"TypedefType","type":{"qualType":"uint16_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint16_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 2B alignment in a structure. 

alias RTE_MARKER32 = 	# # Node: PlaceHolder()
	# {"id":"0x19e58f40","inner":[{"decl":{"id":"0x19db9908","kind":"TypedefDecl","name":"uint32_t"},"id":"0x19e2a810","inner":[{"decl":{"id":"0x19d57360","kind":"TypedefDecl","name":"__uint32_t"},"id":"0x19dae9c0","inner":[{"id":"0x19cb3090","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"__uint32_t"}}],"kind":"TypedefType","type":{"qualType":"uint32_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint32_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 4B alignment in a structure. 

alias RTE_MARKER64 = 	# # Node: PlaceHolder()
	# {"id":"0x19e590a0","inner":[{"decl":{"id":"0x19db9970","kind":"TypedefDecl","name":"uint64_t"},"id":"0x19e2a780","inner":[{"decl":{"id":"0x19d57440","kind":"TypedefDecl","name":"__uint64_t"},"id":"0x19daeae0","inner":[{"id":"0x19cb30b0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uint64_t"}}],"kind":"TypedefType","type":{"qualType":"uint64_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint64_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 8B alignment in a structure. 

alias rte_str_to_size = fn (read UnsafePointer[Int8]) -> ffi.c_ulong_long
alias rte_size_to_str = fn (UnsafePointer[Int8], Int32, ffi.c_ulong_long, Bool, read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_exit = fn (Int32, read *UnsafePointer[Int8]) -> NoneType
alias va_list = __builtin_va_list
alias __gnuc_va_list = __builtin_va_list
alias anonomous_record_1727 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_1728(Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_1727

alias __mbstate_t = anonomous_record_1728

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
alias __gwchar_t = UInt32
struct anonomous_record_1729(Copyable & Movable):
	var quot : ffi.c_long

	var rem : ffi.c_long

alias imaxdiv_t = anonomous_record_1729

alias imaxabs = fn (intmax_t) -> intmax_t
alias imaxdiv = fn (intmax_t, intmax_t) -> imaxdiv_t
alias strtoimax = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> intmax_t
alias strtoumax = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> uintmax_t
alias wcstoimax = fn (read UnsafePointer[__gwchar_t], UnsafePointer[UnsafePointer[__gwchar_t]], Int32) -> intmax_t
alias wcstoumax = fn (read UnsafePointer[__gwchar_t], UnsafePointer[UnsafePointer[__gwchar_t]], Int32) -> uintmax_t
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
struct anonomous_record_1730(Copyable & Movable):
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_1730

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
	# {"id":"0x19efc960","inner":[{"id":"0x19cb3050","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"ConstantArrayType","size":16,"type":{"qualType":"unsigned char[16]"}}

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
	# {"id":"0x19f0c670","inner":[{"cc":"cdecl","id":"0x19edb710","inner":[{"id":"0x19cb2ff0","kind":"BuiltinType","type":{"qualType":"int"}},{"id":"0x19cb3c90","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"FunctionProtoType","type":{"qualType":"int (void *)"}}],"kind":"ParenType","type":{"qualType":"int (void *)"}}

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
struct anonomous_record_1731(Copyable & Movable):

	var opaque_id : ffi.c_ulong

alias rte_thread_t = anonomous_record_1731

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Thread id descriptor.

alias rte_thread_func = fn(OpaquePointer) -> ffi.c_ulong
struct rte_thread_priority(Copyable & Movable):

	alias RTE_THREAD_PRIORITY_NORMAL = 0

	alias RTE_THREAD_PRIORITY_REALTIME_CRITICAL = 1

struct anonomous_record_1732(Copyable & Movable):

	var priority : rte_thread_priority

alias rte_thread_attr_t = anonomous_record_1732

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
struct anonomous_record_1733(Copyable & Movable):

	var cnt : Int16

alias rte_atomic16_t = anonomous_record_1733

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
struct anonomous_record_1734(Copyable & Movable):

	var cnt : Int32

alias rte_atomic32_t = anonomous_record_1734

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
struct anonomous_record_1735(Copyable & Movable):

	var cnt : ffi.c_long

alias rte_atomic64_t = anonomous_record_1735

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
alias anonomous_record_1736 = C_Union[InlineArray[ffi.c_ulong_long, 2], Int128]

struct anonomous_record_1737(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x19f3e950","inner":[{"id":"0x19f3e930","inner":[{"id":"0x19f3e870","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}},"end":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}}},"type":{"qualType":"int"},"value":"16","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}},"end":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"offset":25573,"tokLen":2}}},"type":{"qualType":"int"},"value":"16","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":16,"file":"dpdk/lib/eal/include/generic/rte_atomic.h","includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"line":1101,"offset":25559,"tokLen":13},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":16,"file":"dpdk/lib/eal/include/generic/rte_atomic.h","includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_64.h"},"line":1101,"offset":25559,"tokLen":13},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3797,"tokLen":1}}}}


	var union_placeholder_1 : anonomous_record_1736



alias rte_int128_t = anonomous_record_1737

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
struct anonomous_record_1738(Copyable & Movable):

	var locked : Int32

alias rte_spinlock_t = anonomous_record_1738

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
struct anonomous_record_1739(Copyable & Movable):

	var sl : rte_spinlock_t

	var user : Int32

	var count : Int32

alias rte_spinlock_recursive_t = anonomous_record_1739

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
alias __errno_location = fn (NoneType) -> UnsafePointer[Int32]
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
struct anonomous_record_1740(Copyable & Movable):
	var cnt : Int32

alias rte_rwlock_t = anonomous_record_1740

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
struct rte_fbarray(Copyable & Movable):
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
alias anonomous_record_1741 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memseg(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x19fb5338","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/eal/include/rte_memory.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring_core.h"},"line":61,"offset":1680,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/eal/include/rte_memory.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring_core.h"},"line":61,"offset":1680,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var iova : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_1741



	var len : ffi.c_ulong

	var hugepage_sz : ffi.c_ulong

	var socket_id : Int32

	var nchannel : UInt32

	var nrank : UInt32

	var flags : UInt32

alias anonomous_record_1742 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memseg_list(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_1742



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
struct rte_mem_event(Copyable & Movable):

	alias RTE_MEM_EVENT_ALLOC = 0

	alias RTE_MEM_EVENT_FREE = 1

alias rte_mem_event_callback_t = fn(rte_mem_event, read OpaquePointer, size_t, OpaquePointer) -> NoneType
alias rte_mem_event_callback_register = fn (read UnsafePointer[Int8], rte_mem_event_callback_t, OpaquePointer) -> Int32
alias rte_mem_event_callback_unregister = fn (read UnsafePointer[Int8], OpaquePointer) -> Int32
alias rte_mem_alloc_validator_t = fn(Int32, size_t, size_t) -> Int32
alias rte_mem_alloc_validator_register = fn (read UnsafePointer[Int8], rte_mem_alloc_validator_t, Int32, size_t) -> Int32
alias rte_mem_alloc_validator_unregister = fn (read UnsafePointer[Int8], Int32) -> Int32
alias rte_memzero_explicit = fn (OpaquePointer, size_t) -> NoneType
alias anonomous_record_1743 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memzone(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x19fc9130","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/eal/include/rte_memzone.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring_core.h"},"line":65,"offset":2366,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/eal/include/rte_memzone.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring_core.h"},"line":65,"offset":2366,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var name : InlineArray[Int8, 32]

	var iova : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_1743



	var len : ffi.c_ulong

	var hugepage_sz : ffi.c_ulong

	var socket_id : Int32

	var flags : UInt32

alias rte_memzone_max_set = fn (size_t) -> Int32
alias rte_memzone_max_get = fn (NoneType) -> size_t
alias rte_memzone_reserve = fn (read UnsafePointer[Int8], size_t, Int32, UInt32) -> UnsafePointer[rte_memzone]
alias rte_memzone_reserve_aligned = fn (read UnsafePointer[Int8], size_t, Int32, UInt32, UInt32) -> UnsafePointer[rte_memzone]
alias rte_memzone_reserve_bounded = fn (read UnsafePointer[Int8], size_t, Int32, UInt32, UInt32, UInt32) -> UnsafePointer[rte_memzone]
alias rte_memzone_free = fn (read UnsafePointer[rte_memzone]) -> Int32
alias rte_memzone_lookup = fn (read UnsafePointer[Int8]) -> UnsafePointer[rte_memzone]
alias rte_memzone_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_memzone_walk = fn (fn(read UnsafePointer[rte_memzone], OpaquePointer), OpaquePointer -> NoneType) -> NoneType
struct rte_ring_queue_behavior(Copyable & Movable):

	alias RTE_RING_QUEUE_FIXED = 0

	alias RTE_RING_QUEUE_VARIABLE = 1

struct rte_ring_sync_type(Copyable & Movable):

	alias RTE_RING_SYNC_MT = 0

	alias RTE_RING_SYNC_ST = 1

	alias RTE_RING_SYNC_MT_RTS = 2

	alias RTE_RING_SYNC_MT_HTS = 3

alias anonomous_record_1744 = C_Union[rte_ring_sync_type, UInt32]

struct rte_ring_headtail(Copyable & Movable):

	var head : UInt32

	var tail : UInt32

	var union_placeholder_1 : anonomous_record_1744



struct anonomous_record_1745(Copyable & Movable):
	var cnt : UInt32

	var pos : UInt32

alias __rte_ring_rts_poscnt = C_Union[ffi.c_ulong, anonomous_record_1745]

struct rte_ring_rts_headtail(Copyable & Movable):
	var tail : union __rte_ring_rts_poscnt

	var sync_type : rte_ring_sync_type

	var htd_max : UInt32

	var head : union __rte_ring_rts_poscnt

struct anonomous_record_1746(Copyable & Movable):
	var head : UInt32

	var tail : UInt32

alias __rte_ring_hts_pos = C_Union[ffi.c_ulong, anonomous_record_1746]

struct rte_ring_hts_headtail(Copyable & Movable):
	var ht : union __rte_ring_hts_pos

	var sync_type : rte_ring_sync_type

alias anonomous_record_1748 = C_Union[rte_ring_headtail, rte_ring_hts_headtail, rte_ring_rts_headtail]
		# # Node: PlaceHolder()
		# {"id":"0x19fcf810","inner":[{"id":"0x19fcf7f0","inner":[{"id":"0x19fcf728","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_core.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring.h"},"isMacroArgExpansion":true,"line":138,"offset":4241,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_core.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring.h"},"isMacroArgExpansion":true,"line":138,"offset":4241,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_core.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring.h"},"isMacroArgExpansion":true,"line":138,"offset":4241,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_core.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring.h"},"isMacroArgExpansion":true,"line":138,"offset":4241,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_core.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring.h"},"line":138,"offset":4241,"tokLen":19},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_core.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring.h"},"line":138,"offset":4241,"tokLen":19},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3797,"tokLen":1}}}}

alias anonomous_record_1747 = C_Union[rte_ring_headtail, rte_ring_hts_headtail, rte_ring_rts_headtail]
		# # Node: PlaceHolder()
		# {"id":"0x19fcd050","inner":[{"id":"0x19fcd030","inner":[{"id":"0x19fccf68","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_core.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring.h"},"isMacroArgExpansion":true,"line":129,"offset":4043,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_core.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring.h"},"isMacroArgExpansion":true,"line":129,"offset":4043,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_core.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring.h"},"isMacroArgExpansion":true,"line":129,"offset":4043,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_core.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring.h"},"isMacroArgExpansion":true,"line":129,"offset":4043,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_core.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring.h"},"line":129,"offset":4043,"tokLen":19},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_core.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring.h"},"line":129,"offset":4043,"tokLen":19},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3797,"tokLen":1}}}}

struct rte_ring(Copyable & Movable):

	var name : InlineArray[Int8, 29]

	var flags : Int32

	var memzone : UnsafePointer[rte_memzone]

	var size : UInt32

	var mask : UInt32

	var capacity : UInt32

	var cache_guard_0 : InlineArray[Int8, 128]

	var union_placeholder_1 : anonomous_record_1747




	var cache_guard_1 : InlineArray[Int8, 128]

	var union_placeholder_2 : anonomous_record_1748




	var cache_guard_2 : InlineArray[Int8, 128]

alias __rte_ring_enqueue_elems_32 = fn (OpaquePointer, read OpaquePointer, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> NoneType
alias __rte_ring_enqueue_elems_64 = fn (OpaquePointer, read OpaquePointer, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> NoneType
alias __rte_ring_enqueue_elems_128 = fn (OpaquePointer, read OpaquePointer, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> NoneType
alias __rte_ring_do_enqueue_elems = fn (OpaquePointer, read OpaquePointer, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> NoneType
alias __rte_ring_enqueue_elems = fn (UnsafePointer[rte_ring], ffi.c_ulong, read OpaquePointer, ffi.c_ulong, ffi.c_ulong) -> NoneType
alias __rte_ring_dequeue_elems_32 = fn (OpaquePointer, read OpaquePointer, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> NoneType
alias __rte_ring_dequeue_elems_64 = fn (OpaquePointer, read OpaquePointer, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> NoneType
alias __rte_ring_dequeue_elems_128 = fn (OpaquePointer, read OpaquePointer, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> NoneType
alias __rte_ring_do_dequeue_elems = fn (OpaquePointer, read OpaquePointer, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> NoneType
alias __rte_ring_dequeue_elems = fn (UnsafePointer[rte_ring], ffi.c_ulong, OpaquePointer, ffi.c_ulong, ffi.c_ulong) -> NoneType
alias __rte_ring_update_tail = fn (UnsafePointer[rte_ring_headtail], ffi.c_ulong, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> NoneType
alias __rte_ring_headtail_move_head = fn (UnsafePointer[rte_ring_headtail], read UnsafePointer[rte_ring_headtail], ffi.c_ulong, UInt32, UInt32, rte_ring_queue_behavior, UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong]) -> UInt32
alias __rte_ring_move_prod_head = fn (UnsafePointer[rte_ring], UInt32, UInt32, rte_ring_queue_behavior, UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong]) -> UInt32
alias __rte_ring_move_cons_head = fn (UnsafePointer[rte_ring], UInt32, UInt32, rte_ring_queue_behavior, UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong]) -> UInt32
alias __rte_ring_do_enqueue_elem = fn (UnsafePointer[rte_ring], read OpaquePointer, UInt32, UInt32, rte_ring_queue_behavior, UInt32, UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_do_dequeue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, rte_ring_queue_behavior, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_get_memsize_elem = fn (UInt32, UInt32) -> ssize_t
alias rte_ring_create_elem = fn (read UnsafePointer[Int8], UInt32, UInt32, Int32, UInt32) -> UnsafePointer[rte_ring]
alias rte_ring_mp_enqueue_bulk_elem = fn (UnsafePointer[rte_ring], read OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_sp_enqueue_bulk_elem = fn (UnsafePointer[rte_ring], read OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_hts_update_tail = fn (UnsafePointer[rte_ring_hts_headtail], ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> NoneType
alias __rte_ring_hts_head_wait = fn (read UnsafePointer[rte_ring_hts_headtail], UnsafePointer[union __rte_ring_hts_pos]) -> NoneType
alias __rte_ring_hts_move_head = fn (UnsafePointer[rte_ring_hts_headtail], read UnsafePointer[rte_ring_headtail], ffi.c_ulong, UInt32, rte_ring_queue_behavior, UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong]) -> ffi.c_ulong
alias __rte_ring_hts_move_prod_head = fn (UnsafePointer[rte_ring], UInt32, rte_ring_queue_behavior, UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong]) -> UInt32
alias __rte_ring_hts_move_cons_head = fn (UnsafePointer[rte_ring], UInt32, rte_ring_queue_behavior, UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong]) -> UInt32
alias __rte_ring_do_hts_enqueue_elem = fn (UnsafePointer[rte_ring], read OpaquePointer, ffi.c_ulong, ffi.c_ulong, rte_ring_queue_behavior, UnsafePointer[ffi.c_ulong]) -> UInt32
alias __rte_ring_do_hts_dequeue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, ffi.c_ulong, ffi.c_ulong, rte_ring_queue_behavior, UnsafePointer[ffi.c_ulong]) -> UInt32
alias rte_ring_mp_hts_enqueue_bulk_elem = fn (UnsafePointer[rte_ring], read OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_hts_dequeue_bulk_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_hts_enqueue_burst_elem = fn (UnsafePointer[rte_ring], read OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_hts_dequeue_burst_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_hts_enqueue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_hts_dequeue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_hts_enqueue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_hts_dequeue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_rts_update_tail = fn (UnsafePointer[rte_ring_rts_headtail]) -> NoneType
alias __rte_ring_rts_head_wait = fn (read UnsafePointer[rte_ring_rts_headtail], UnsafePointer[union __rte_ring_rts_poscnt]) -> NoneType
alias __rte_ring_rts_move_head = fn (UnsafePointer[rte_ring_rts_headtail], read UnsafePointer[rte_ring_headtail], ffi.c_ulong, ffi.c_ulong, rte_ring_queue_behavior, UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong]) -> ffi.c_ulong
alias __rte_ring_rts_move_prod_head = fn (UnsafePointer[rte_ring], ffi.c_ulong, rte_ring_queue_behavior, UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong]) -> ffi.c_ulong
alias __rte_ring_rts_move_cons_head = fn (UnsafePointer[rte_ring], ffi.c_ulong, rte_ring_queue_behavior, UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong]) -> UInt32
alias __rte_ring_do_rts_enqueue_elem = fn (UnsafePointer[rte_ring], read OpaquePointer, ffi.c_ulong, ffi.c_ulong, rte_ring_queue_behavior, UnsafePointer[ffi.c_ulong]) -> UInt32
alias __rte_ring_do_rts_dequeue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, ffi.c_ulong, ffi.c_ulong, rte_ring_queue_behavior, UnsafePointer[ffi.c_ulong]) -> UInt32
alias rte_ring_mp_rts_enqueue_bulk_elem = fn (UnsafePointer[rte_ring], read OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_rts_dequeue_bulk_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_rts_enqueue_burst_elem = fn (UnsafePointer[rte_ring], read OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_rts_dequeue_burst_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_rts_enqueue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_rts_dequeue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_rts_enqueue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_rts_dequeue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_get_prod_htd_max = fn (read UnsafePointer[rte_ring]) -> ffi.c_ulong
alias rte_ring_set_prod_htd_max = fn (UnsafePointer[rte_ring], ffi.c_ulong) -> Int32
alias rte_ring_get_cons_htd_max = fn (read UnsafePointer[rte_ring]) -> ffi.c_ulong
alias rte_ring_set_cons_htd_max = fn (UnsafePointer[rte_ring], ffi.c_ulong) -> Int32
alias rte_ring_enqueue_bulk_elem = fn (UnsafePointer[rte_ring], read OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mp_enqueue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32) -> Int32
alias rte_ring_sp_enqueue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32) -> Int32
alias rte_ring_enqueue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32) -> Int32
alias rte_ring_mc_dequeue_bulk_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_sc_dequeue_bulk_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_bulk_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_dequeue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32) -> Int32
alias rte_ring_sc_dequeue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32) -> Int32
alias rte_ring_dequeue_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32) -> Int32
alias rte_ring_mp_enqueue_burst_elem = fn (UnsafePointer[rte_ring], read OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_sp_enqueue_burst_elem = fn (UnsafePointer[rte_ring], read OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_burst_elem = fn (UnsafePointer[rte_ring], read OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_dequeue_burst_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_sc_dequeue_burst_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_burst_elem = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias __rte_ring_st_get_tail = fn (UnsafePointer[rte_ring_headtail], UnsafePointer[ffi.c_ulong], ffi.c_ulong) -> ffi.c_ulong
alias __rte_ring_st_set_head_tail = fn (UnsafePointer[rte_ring_headtail], ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> NoneType
alias __rte_ring_hts_get_tail = fn (UnsafePointer[rte_ring_hts_headtail], UnsafePointer[ffi.c_ulong], ffi.c_ulong) -> ffi.c_ulong
alias __rte_ring_hts_set_head_tail = fn (UnsafePointer[rte_ring_hts_headtail], ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> NoneType
alias __rte_ring_do_enqueue_start = fn (UnsafePointer[rte_ring], ffi.c_ulong, rte_ring_queue_behavior, UnsafePointer[ffi.c_ulong]) -> UInt32
alias __rte_ring_do_dequeue_start = fn (UnsafePointer[rte_ring], OpaquePointer, ffi.c_ulong, ffi.c_ulong, rte_ring_queue_behavior, UnsafePointer[ffi.c_ulong]) -> UInt32
alias rte_ring_enqueue_bulk_elem_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_bulk_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_burst_elem_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_burst_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_elem_finish = fn (UnsafePointer[rte_ring], read OpaquePointer, UInt32, UInt32) -> NoneType
alias rte_ring_enqueue_finish = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32) -> NoneType
alias rte_ring_dequeue_bulk_elem_start = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_bulk_start = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_burst_elem_start = fn (UnsafePointer[rte_ring], OpaquePointer, UInt32, UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_burst_start = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_elem_finish = fn (UnsafePointer[rte_ring], UInt32) -> NoneType
alias rte_ring_dequeue_finish = fn (UnsafePointer[rte_ring], UInt32) -> NoneType
struct rte_ring_zc_data(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x1a03b760","inner":[{"id":"0x1a03b740","inner":[{"id":"0x1a03b680","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_peek_zc.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring_elem.h"},"isMacroArgExpansion":true,"line":82,"offset":2533,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_peek_zc.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring_elem.h"},"isMacroArgExpansion":true,"line":82,"offset":2533,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_peek_zc.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring_elem.h"},"isMacroArgExpansion":true,"line":82,"offset":2533,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_peek_zc.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring_elem.h"},"isMacroArgExpansion":true,"line":82,"offset":2533,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_peek_zc.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring_elem.h"},"line":82,"offset":2533,"tokLen":19},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/ring/rte_ring_peek_zc.h","includedFrom":{"file":"dpdk/lib/ring/rte_ring_elem.h"},"line":82,"offset":2533,"tokLen":19},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3797,"tokLen":1}}}}


	var ptr1 : OpaquePointer

	var ptr2 : OpaquePointer

	var n1 : UInt32

alias __rte_ring_get_elem_addr = fn (UnsafePointer[rte_ring], ffi.c_ulong, ffi.c_ulong, ffi.c_ulong, UnsafePointer[OpaquePointer], UnsafePointer[ffi.c_ulong], UnsafePointer[OpaquePointer]) -> NoneType
alias __rte_ring_do_enqueue_zc_elem_start = fn (UnsafePointer[rte_ring], UInt32, ffi.c_ulong, rte_ring_queue_behavior, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_zc_bulk_elem_start = fn (UnsafePointer[rte_ring], UInt32, UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_zc_bulk_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_zc_burst_elem_start = fn (UnsafePointer[rte_ring], UInt32, UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_zc_burst_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_zc_elem_finish = fn (UnsafePointer[rte_ring], UInt32) -> NoneType
alias rte_ring_enqueue_zc_finish = fn (UnsafePointer[rte_ring], UInt32) -> NoneType
alias __rte_ring_do_dequeue_zc_elem_start = fn (UnsafePointer[rte_ring], ffi.c_ulong, ffi.c_ulong, rte_ring_queue_behavior, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_zc_bulk_elem_start = fn (UnsafePointer[rte_ring], UInt32, UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_zc_bulk_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_zc_burst_elem_start = fn (UnsafePointer[rte_ring], UInt32, UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_zc_burst_start = fn (UnsafePointer[rte_ring], UInt32, UnsafePointer[rte_ring_zc_data], UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_zc_elem_finish = fn (UnsafePointer[rte_ring], UInt32) -> NoneType
alias rte_ring_dequeue_zc_finish = fn (UnsafePointer[rte_ring], UInt32) -> NoneType
alias rte_ring_get_memsize = fn (UInt32) -> ssize_t
alias rte_ring_init = fn (UnsafePointer[rte_ring], read UnsafePointer[Int8], UInt32, UInt32) -> Int32
alias rte_ring_free = fn (UnsafePointer[rte_ring]) -> NoneType
alias rte_ring_create = fn (read UnsafePointer[Int8], UInt32, Int32, UInt32) -> UnsafePointer[rte_ring]
alias rte_ring_dump = fn (UnsafePointer[FILE], read UnsafePointer[rte_ring]) -> NoneType
alias rte_ring_headtail_dump = fn (UnsafePointer[FILE], read UnsafePointer[Int8], read UnsafePointer[rte_ring_headtail]) -> NoneType
alias rte_ring_mp_enqueue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_sp_enqueue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_bulk = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
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
alias rte_ring_count = fn (read UnsafePointer[rte_ring]) -> UInt32
alias rte_ring_free_count = fn (read UnsafePointer[rte_ring]) -> UInt32
alias rte_ring_full = fn (read UnsafePointer[rte_ring]) -> Int32
alias rte_ring_empty = fn (read UnsafePointer[rte_ring]) -> Int32
alias rte_ring_get_size = fn (read UnsafePointer[rte_ring]) -> UInt32
alias rte_ring_get_capacity = fn (read UnsafePointer[rte_ring]) -> UInt32
alias rte_ring_get_prod_sync_type = fn (read UnsafePointer[rte_ring]) -> rte_ring_sync_type
alias rte_ring_is_prod_single = fn (read UnsafePointer[rte_ring]) -> Int32
alias rte_ring_get_cons_sync_type = fn (read UnsafePointer[rte_ring]) -> rte_ring_sync_type
alias rte_ring_is_cons_single = fn (read UnsafePointer[rte_ring]) -> Int32
alias rte_ring_list_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_ring_lookup = fn (read UnsafePointer[Int8]) -> UnsafePointer[rte_ring]
alias rte_ring_mp_enqueue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_sp_enqueue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_enqueue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_mc_dequeue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_sc_dequeue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_ring_dequeue_burst = fn (UnsafePointer[rte_ring], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[UInt32]) -> UInt32
alias rte_mov16 = fn (UnsafePointer[UInt8], read UnsafePointer[UInt8]) -> NoneType
alias rte_mov32 = fn (UnsafePointer[UInt8], read UnsafePointer[UInt8]) -> NoneType
alias rte_mov64 = fn (UnsafePointer[UInt8], read UnsafePointer[UInt8]) -> NoneType
alias rte_mov128 = fn (UnsafePointer[UInt8], read UnsafePointer[UInt8]) -> NoneType
alias rte_mov256 = fn (UnsafePointer[UInt8], read UnsafePointer[UInt8]) -> NoneType
alias rte_mov48 = fn (UnsafePointer[UInt8], read UnsafePointer[UInt8]) -> NoneType
struct timer_source(Copyable & Movable):
	alias EAL_TIMER_TSC = 0

	alias EAL_TIMER_HPET = 1

alias eal_timer_source = timer_source
alias rte_get_tsc_hz = fn (NoneType) -> ffi.c_ulong_long
alias rte_get_tsc_cycles = fn (NoneType) -> ffi.c_ulong_long
alias rte_get_timer_cycles = fn (NoneType) -> ffi.c_ulong_long
alias rte_get_timer_hz = fn (NoneType) -> ffi.c_ulong_long
alias rte_delay_us = fn(UInt32) -> NoneType
alias rte_delay_ms = fn (UInt32) -> NoneType
alias rte_delay_us_block = fn (UInt32) -> NoneType
alias rte_delay_us_sleep = fn (UInt32) -> NoneType
alias rte_delay_us_callback_register = fn (fn(UInt32) -> NoneType) -> NoneType
alias __rte_arm64_cntfrq = fn (NoneType) -> ffi.c_ulong_long
alias __rte_arm64_cntvct = fn (NoneType) -> ffi.c_ulong_long
alias __rte_arm64_cntvct_precise = fn (NoneType) -> ffi.c_ulong_long
alias rte_rdtsc = fn (NoneType) -> ffi.c_ulong_long
alias rte_rdtsc_precise = fn (NoneType) -> ffi.c_ulong_long
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

alias __ctype_b_loc = fn (NoneType) -> UnsafePointer[UnsafePointer[UInt16]]
alias __ctype_tolower_loc = fn (NoneType) -> UnsafePointer[UnsafePointer[__int32_t]]
alias __ctype_toupper_loc = fn (NoneType) -> UnsafePointer[UnsafePointer[__int32_t]]
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
alias rte_strlcpy = fn (UnsafePointer[Int8], read UnsafePointer[Int8], size_t) -> size_t
alias rte_strlcat = fn (UnsafePointer[Int8], read UnsafePointer[Int8], size_t) -> size_t
alias rte_strscpy = fn (UnsafePointer[Int8], read UnsafePointer[Int8], size_t) -> ssize_t
alias rte_str_skip_leading_spaces = fn (read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_trace_is_enabled = fn (NoneType) -> Bool
alias rte_trace_feature_is_enabled = fn (NoneType) -> Bool
struct rte_trace_mode(Copyable & Movable):

	alias RTE_TRACE_MODE_OVERWRITE = 0

	alias RTE_TRACE_MODE_DISCARD = 1

alias rte_trace_mode_set = fn (rte_trace_mode) -> NoneType
alias rte_trace_mode_get = fn (NoneType) -> rte_trace_mode
alias rte_trace_pattern = fn (read UnsafePointer[Int8], Bool) -> Int32
alias rte_trace_regexp = fn (read UnsafePointer[Int8], Bool) -> Int32
alias rte_trace_save = fn (NoneType) -> Int32
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
alias rte_trace_point_lookup = fn (read UnsafePointer[Int8]) -> UnsafePointer[rte_trace_point_t]
alias __rte_trace_point_fp_is_enabled = fn (NoneType) -> Bool
alias __rte_trace_mem_per_thread_alloc = fn (NoneType) -> NoneType
alias __rte_trace_point_emit_field = fn (size_t, read UnsafePointer[Int8], read UnsafePointer[Int8]) -> NoneType
alias __rte_trace_point_register = fn (fn() -> UnsafePointer[rte_trace_point_t], read UnsafePointer[Int8], NoneType) -> Int32
alias __rte_mempool_trace_ops_dequeue_bulk = rte_trace_point_t
alias rte_mempool_trace_ops_dequeue_bulk = fn (OpaquePointer, UnsafePointer[OpaquePointer], ffi.c_ulong) -> NoneType
alias __rte_mempool_trace_ops_dequeue_contig_blocks = rte_trace_point_t
alias rte_mempool_trace_ops_dequeue_contig_blocks = fn (OpaquePointer, UnsafePointer[OpaquePointer], ffi.c_ulong) -> NoneType
alias __rte_mempool_trace_ops_enqueue_bulk = rte_trace_point_t
alias rte_mempool_trace_ops_enqueue_bulk = fn (OpaquePointer, UnsafePointer[OpaquePointer], ffi.c_ulong) -> NoneType
alias __rte_mempool_trace_generic_put = rte_trace_point_t
alias rte_mempool_trace_generic_put = fn (OpaquePointer, UnsafePointer[OpaquePointer], ffi.c_ulong, OpaquePointer) -> NoneType
alias __rte_mempool_trace_put_bulk = rte_trace_point_t
alias rte_mempool_trace_put_bulk = fn (OpaquePointer, UnsafePointer[OpaquePointer], ffi.c_ulong, OpaquePointer) -> NoneType
alias __rte_mempool_trace_generic_get = rte_trace_point_t
alias rte_mempool_trace_generic_get = fn (OpaquePointer, UnsafePointer[OpaquePointer], ffi.c_ulong, OpaquePointer) -> NoneType
alias __rte_mempool_trace_get_bulk = rte_trace_point_t
alias rte_mempool_trace_get_bulk = fn (OpaquePointer, UnsafePointer[OpaquePointer], ffi.c_ulong, OpaquePointer) -> NoneType
alias __rte_mempool_trace_get_contig_blocks = rte_trace_point_t
alias rte_mempool_trace_get_contig_blocks = fn (OpaquePointer, UnsafePointer[OpaquePointer], ffi.c_ulong) -> NoneType
alias __rte_mempool_trace_default_cache = rte_trace_point_t
alias rte_mempool_trace_default_cache = fn (OpaquePointer, ffi.c_ulong, OpaquePointer) -> NoneType
alias __rte_mempool_trace_cache_flush = rte_trace_point_t
alias rte_mempool_trace_cache_flush = fn (OpaquePointer, OpaquePointer) -> NoneType
struct rte_mempool_cache(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x1a0a3c80","inner":[{"id":"0x1a0a3c60","inner":[{"id":"0x1a0a3ba0","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":90,"offset":3552,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":90,"offset":3552,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":90,"offset":3552,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":90,"offset":3552,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":90,"offset":3552,"tokLen":19},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":90,"offset":3552,"tokLen":19},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3797,"tokLen":1}}}}


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
struct anonomous_record_1749(Copyable & Movable):
	var stqe_next : UnsafePointer[rte_mempool_objhdr]

struct rte_mempool_objhdr(Copyable & Movable):

	var next : anonomous_record_1749

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

alias rte_mempool_memchunk_free_cb_t = 	# # Node: PlaceHolder()
	# {"id":"0x1a0a5560","inner":[{"cc":"cdecl","id":"0x1a0a5520","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}},{"id":"0x1a0a4fe0","inner":[{"id":"0x1a0a4fb0","inner":[{"decl":{"id":"0x1a0a5648","kind":"RecordDecl","name":"rte_mempool_memhdr"},"id":"0x1a0a4e70","kind":"RecordType","type":{"qualType":"struct rte_mempool_memhdr"}}],"kind":"ElaboratedType","type":{"qualType":"struct rte_mempool_memhdr"}}],"kind":"PointerType","type":{"qualType":"struct rte_mempool_memhdr *"}},{"id":"0x19cb3c90","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"FunctionProtoType","type":{"qualType":"void (struct rte_mempool_memhdr *, void *)"}}],"kind":"ParenType","type":{"qualType":"void (struct rte_mempool_memhdr *, void *)"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Callback used to free a memory chunk

struct anonomous_record_1750(Copyable & Movable):
	var stqe_next : UnsafePointer[rte_mempool_memhdr]

struct rte_mempool_info(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x1a0a5e80","inner":[{"id":"0x1a0a5e60","inner":[{"id":"0x1a0a5d98","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":222,"offset":7728,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":222,"offset":7728,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":222,"offset":7728,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":222,"offset":7728,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":222,"offset":7728,"tokLen":19},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":222,"offset":7728,"tokLen":19},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3797,"tokLen":1}}}}


	var contig_block_size : UInt32

alias anonomous_record_1751 = C_Union[OpaquePointer, ffi.c_ulong]

alias rte_mempool_get_header = fn (OpaquePointer) -> UnsafePointer[rte_mempool_objhdr]
alias rte_mempool_from_obj = fn (OpaquePointer) -> UnsafePointer[rte_mempool]
struct rte_mempool_objtlr(Copyable & Movable):
	pass
alias rte_mempool_get_trailer = fn (OpaquePointer) -> UnsafePointer[rte_mempool_objtlr]
alias rte_mempool_check_cookies = fn (read UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32, Int32) -> NoneType
alias rte_mempool_contig_blocks_check_cookies = fn (read UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32, Int32) -> NoneType
alias rte_mempool_alloc_t = fn(UnsafePointer[rte_mempool]) -> Int32
alias rte_mempool_free_t = fn(UnsafePointer[rte_mempool]) -> NoneType
alias rte_mempool_enqueue_t = fn(UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32
alias rte_mempool_dequeue_t = fn(UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32
alias rte_mempool_dequeue_contig_blocks_t = fn(UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32
alias rte_mempool_get_count = fn(read UnsafePointer[rte_mempool]) -> UInt32
alias rte_mempool_calc_mem_size_t = fn(read UnsafePointer[rte_mempool], ffi.c_ulong, ffi.c_ulong, UnsafePointer[size_t], UnsafePointer[size_t]) -> ssize_t
alias rte_mempool_op_calc_mem_size_helper = fn (read UnsafePointer[rte_mempool], ffi.c_ulong, ffi.c_ulong, size_t, UnsafePointer[size_t], UnsafePointer[size_t]) -> ssize_t
alias rte_mempool_op_calc_mem_size_default = fn (read UnsafePointer[rte_mempool], ffi.c_ulong, ffi.c_ulong, UnsafePointer[size_t], UnsafePointer[size_t]) -> ssize_t
alias rte_mempool_populate_obj_cb_t = 	# # Node: PlaceHolder()
	# {"id":"0x1a0b0b50","inner":[{"cc":"cdecl","id":"0x1a0b0b00","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}},{"id":"0x1a0a5900","inner":[{"id":"0x1a0a58d0","inner":[{"decl":{"id":"0x1a0a5fb8","kind":"RecordDecl","name":"rte_mempool"},"id":"0x1a0a4800","kind":"RecordType","type":{"qualType":"struct rte_mempool"}}],"kind":"ElaboratedType","type":{"qualType":"struct rte_mempool"}}],"kind":"PointerType","type":{"qualType":"struct rte_mempool *"}},{"id":"0x19cb3c90","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}},{"id":"0x19cb3c90","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}},{"decl":{"id":"0x19e589f8","kind":"TypedefDecl","name":"rte_iova_t"},"id":"0x19fb4c00","inner":[{"decl":{"id":"0x19db9970","kind":"TypedefDecl","name":"uint64_t"},"id":"0x19e2a780","inner":[{"decl":{"id":"0x19d57440","kind":"TypedefDecl","name":"__uint64_t"},"id":"0x19daeae0","inner":[{"id":"0x19cb30b0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uint64_t"}}],"kind":"TypedefType","type":{"qualType":"uint64_t"}}],"kind":"TypedefType","type":{"qualType":"rte_iova_t"}}],"kind":"FunctionProtoType","type":{"qualType":"void (struct rte_mempool *, void *, void *, rte_iova_t)"}}],"kind":"ParenType","type":{"qualType":"void (struct rte_mempool *, void *, void *, rte_iova_t)"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Function to be called for each populated object.
# Node: ParagraphComment()
# Node: TextComment()
#  
# # Node: PlaceHolder()
# {"direction":"in","explicit":true,"id":"0x1a211eb0","inner":[{"id":"0x1a211f60","inner":[{"id":"0x1a211f10","kind":"TextComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":587,"offset":20070,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20070,"tokLen":0},"end":{"col":40,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20107,"tokLen":1}},"text":"   A pointer to the mempool structure."},{"id":"0x1a211f30","kind":"TextComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":588,"offset":20111,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20111,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20111,"tokLen":0}},"text":" "}],"kind":"ParagraphComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":587,"offset":20070,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20070,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":588,"offset":20111,"tokLen":0}}}],"kind":"ParamCommandComment","loc":{"col":5,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20055,"tokLen":5},"param":"mp","paramIdx":0,"range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20054,"tokLen":1},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":588,"offset":20111,"tokLen":0}}}
# # Node: PlaceHolder()
# {"direction":"in","explicit":true,"id":"0x1a211f80","inner":[{"id":"0x1a212030","inner":[{"id":"0x1a211fe0","kind":"TextComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":589,"offset":20132,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20132,"tokLen":0},"end":{"col":42,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20171,"tokLen":1}},"text":"   An opaque pointer passed to iterator."},{"id":"0x1a212000","kind":"TextComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":590,"offset":20175,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20175,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20175,"tokLen":0}},"text":" "}],"kind":"ParagraphComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":589,"offset":20132,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20132,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":590,"offset":20175,"tokLen":0}}}],"kind":"ParamCommandComment","loc":{"col":5,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20113,"tokLen":5},"param":"opaque","paramIdx":1,"range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20112,"tokLen":1},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":590,"offset":20175,"tokLen":0}}}
# # Node: PlaceHolder()
# {"direction":"in","explicit":true,"id":"0x1a212050","inner":[{"id":"0x1a212100","inner":[{"id":"0x1a2120b0","kind":"TextComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":591,"offset":20195,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20195,"tokLen":0},"end":{"col":28,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20220,"tokLen":1}},"text":"   Object virtual address."},{"id":"0x1a2120d0","kind":"TextComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":592,"offset":20224,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20224,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20224,"tokLen":0}},"text":" "}],"kind":"ParagraphComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":591,"offset":20195,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20195,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":592,"offset":20224,"tokLen":0}}}],"kind":"ParamCommandComment","loc":{"col":5,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20177,"tokLen":5},"param":"vaddr","paramIdx":2,"range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20176,"tokLen":1},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":592,"offset":20224,"tokLen":0}}}
# # Node: PlaceHolder()
# {"direction":"in","explicit":true,"id":"0x1a212120","inner":[{"id":"0x1a2121b0","inner":[{"id":"0x1a212180","kind":"TextComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20243,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20243,"tokLen":0},"end":{"col":64,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20304,"tokLen":1}},"text":"   Input/output virtual address of the object or RTE_BAD_IOVA."}],"kind":"ParagraphComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20243,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20243,"tokLen":0},"end":{"col":64,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20304,"tokLen":1}}}],"kind":"ParamCommandComment","loc":{"col":5,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20226,"tokLen":5},"param":"iova","paramIdx":3,"range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":20225,"tokLen":1},"end":{"col":64,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":593,"offset":20304,"tokLen":1}}}

alias rte_mempool_populate_t = fn(UnsafePointer[rte_mempool], UInt32, OpaquePointer, rte_iova_t, size_t, UnsafePointer[rte_mempool_populate_obj_cb_t], OpaquePointer) -> Int32
alias rte_mempool_op_populate_helper = fn (UnsafePointer[rte_mempool], UInt32, UInt32, OpaquePointer, rte_iova_t, size_t, UnsafePointer[rte_mempool_populate_obj_cb_t], OpaquePointer) -> Int32
alias rte_mempool_op_populate_default = fn (UnsafePointer[rte_mempool], UInt32, OpaquePointer, rte_iova_t, size_t, UnsafePointer[rte_mempool_populate_obj_cb_t], OpaquePointer) -> Int32
alias rte_mempool_get_info_t = fn(read UnsafePointer[rte_mempool], UnsafePointer[rte_mempool_info]) -> Int32
struct rte_mempool_ops(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x1a0b4280","inner":[{"id":"0x1a0b4260","inner":[{"id":"0x1a0b4198","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":692,"offset":23692,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":692,"offset":23692,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":692,"offset":23692,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":692,"offset":23692,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":692,"offset":23692,"tokLen":19},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":692,"offset":23692,"tokLen":19},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3797,"tokLen":1}}}}


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
	# # Node: PlaceHolder()
	# {"id":"0x1a0b4b30","inner":[{"id":"0x1a0b4b10","inner":[{"id":"0x1a0b4a48","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":730,"offset":25181,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":730,"offset":25181,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":730,"offset":25181,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":730,"offset":25181,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":730,"offset":25181,"tokLen":19},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/mempool/rte_mempool.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":730,"offset":25181,"tokLen":19},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3797,"tokLen":1}}}}


	var sl : rte_spinlock_t

	var num_ops : UInt32

	var ops : InlineArray[rte_mempool_ops, 16]

alias rte_mempool_get_ops = fn (Int32) -> UnsafePointer[rte_mempool_ops]
alias rte_mempool_ops_alloc = fn (UnsafePointer[rte_mempool]) -> Int32
alias rte_mempool_ops_dequeue_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32
alias rte_mempool_ops_dequeue_contig_blocks = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32
alias rte_mempool_ops_enqueue_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32
alias rte_mempool_ops_get_count = fn (read UnsafePointer[rte_mempool]) -> UInt32
alias rte_mempool_ops_calc_mem_size = fn (read UnsafePointer[rte_mempool], ffi.c_ulong, ffi.c_ulong, UnsafePointer[size_t], UnsafePointer[size_t]) -> ssize_t
alias rte_mempool_ops_populate = fn (UnsafePointer[rte_mempool], UInt32, OpaquePointer, rte_iova_t, size_t, UnsafePointer[rte_mempool_populate_obj_cb_t], OpaquePointer) -> Int32
alias rte_mempool_ops_get_info = fn (read UnsafePointer[rte_mempool], UnsafePointer[rte_mempool_info]) -> Int32
alias rte_mempool_ops_free = fn (UnsafePointer[rte_mempool]) -> NoneType
alias rte_mempool_set_ops_byname = fn (UnsafePointer[rte_mempool], read UnsafePointer[Int8], OpaquePointer) -> Int32
alias rte_mempool_register_ops = fn (read UnsafePointer[rte_mempool_ops]) -> Int32
alias rte_mempool_obj_cb_t = 	# # Node: PlaceHolder()
	# {"id":"0x1a0bb380","inner":[{"cc":"cdecl","id":"0x1a0bb330","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}},{"id":"0x1a0a5900","inner":[{"id":"0x1a0a58d0","inner":[{"decl":{"id":"0x1a0a5fb8","kind":"RecordDecl","name":"rte_mempool"},"id":"0x1a0a4800","kind":"RecordType","type":{"qualType":"struct rte_mempool"}}],"kind":"ElaboratedType","type":{"qualType":"struct rte_mempool"}}],"kind":"PointerType","type":{"qualType":"struct rte_mempool *"}},{"id":"0x19cb3c90","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}},{"id":"0x19cb3c90","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}},{"id":"0x19cb3090","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"FunctionProtoType","type":{"qualType":"void (struct rte_mempool *, void *, void *, unsigned int)"}}],"kind":"ParenType","type":{"qualType":"void (struct rte_mempool *, void *, void *, unsigned int)"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  An object callback function for mempool.
# Node: ParagraphComment()
# Node: TextComment()
#  Used by rte_mempool_create() and rte_mempool_obj_iter().

alias rte_mempool_obj_ctor_t = rte_mempool_obj_cb_t
alias rte_mempool_mem_cb_t = 	# # Node: PlaceHolder()
	# {"id":"0x1a0bb800","inner":[{"cc":"cdecl","id":"0x1a0bb7b0","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}},{"id":"0x1a0a5900","inner":[{"id":"0x1a0a58d0","inner":[{"decl":{"id":"0x1a0a5fb8","kind":"RecordDecl","name":"rte_mempool"},"id":"0x1a0a4800","kind":"RecordType","type":{"qualType":"struct rte_mempool"}}],"kind":"ElaboratedType","type":{"qualType":"struct rte_mempool"}}],"kind":"PointerType","type":{"qualType":"struct rte_mempool *"}},{"id":"0x19cb3c90","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}},{"id":"0x1a0a4fe0","inner":[{"id":"0x1a0a4fb0","inner":[{"decl":{"id":"0x1a0a5648","kind":"RecordDecl","name":"rte_mempool_memhdr"},"id":"0x1a0a4e70","kind":"RecordType","type":{"qualType":"struct rte_mempool_memhdr"}}],"kind":"ElaboratedType","type":{"qualType":"struct rte_mempool_memhdr"}}],"kind":"PointerType","type":{"qualType":"struct rte_mempool_memhdr *"}},{"id":"0x19cb3090","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"FunctionProtoType","type":{"qualType":"void (struct rte_mempool *, void *, struct rte_mempool_memhdr *, unsigned int)"}}],"kind":"ParenType","type":{"qualType":"void (struct rte_mempool *, void *, struct rte_mempool_memhdr *, unsigned int)"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  A memory callback function for mempool.
# Node: ParagraphComment()
# Node: TextComment()
#  Used by rte_mempool_mem_iter().

alias rte_mempool_ctor_t = 	# # Node: PlaceHolder()
	# {"id":"0x1a0bba90","inner":[{"cc":"cdecl","id":"0x1a0bba50","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}},{"id":"0x1a0a5900","inner":[{"id":"0x1a0a58d0","inner":[{"decl":{"id":"0x1a0a5fb8","kind":"RecordDecl","name":"rte_mempool"},"id":"0x1a0a4800","kind":"RecordType","type":{"qualType":"struct rte_mempool"}}],"kind":"ElaboratedType","type":{"qualType":"struct rte_mempool"}}],"kind":"PointerType","type":{"qualType":"struct rte_mempool *"}},{"id":"0x19cb3c90","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"FunctionProtoType","type":{"qualType":"void (struct rte_mempool *, void *)"}}],"kind":"ParenType","type":{"qualType":"void (struct rte_mempool *, void *)"}}

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
alias rte_mempool_create = fn (read UnsafePointer[Int8], UInt32, UInt32, UInt32, UInt32, UnsafePointer[rte_mempool_ctor_t], OpaquePointer, UnsafePointer[rte_mempool_obj_cb_t], OpaquePointer, Int32, UInt32) -> UnsafePointer[rte_mempool]
alias rte_mempool_create_empty = fn (read UnsafePointer[Int8], UInt32, UInt32, UInt32, UInt32, Int32, UInt32) -> UnsafePointer[rte_mempool]
alias rte_mempool_populate_iova = fn (UnsafePointer[rte_mempool], UnsafePointer[Int8], rte_iova_t, size_t, UnsafePointer[rte_mempool_memchunk_free_cb_t], OpaquePointer) -> Int32
alias rte_mempool_populate_virt = fn (UnsafePointer[rte_mempool], UnsafePointer[Int8], size_t, size_t, UnsafePointer[rte_mempool_memchunk_free_cb_t], OpaquePointer) -> Int32
alias rte_mempool_populate_default = fn (UnsafePointer[rte_mempool]) -> Int32
alias rte_mempool_populate_anon = fn (UnsafePointer[rte_mempool]) -> Int32
alias rte_mempool_obj_iter = fn (UnsafePointer[rte_mempool], UnsafePointer[rte_mempool_obj_cb_t], OpaquePointer) -> ffi.c_ulong
alias rte_mempool_mem_iter = fn (UnsafePointer[rte_mempool], UnsafePointer[rte_mempool_mem_cb_t], OpaquePointer) -> ffi.c_ulong
alias rte_mempool_dump = fn (UnsafePointer[FILE], UnsafePointer[rte_mempool]) -> NoneType
alias rte_mempool_cache_create = fn (ffi.c_ulong, Int32) -> UnsafePointer[rte_mempool_cache]
alias rte_mempool_cache_free = fn (UnsafePointer[rte_mempool_cache]) -> NoneType
alias rte_mempool_default_cache = fn (UnsafePointer[rte_mempool], UInt32) -> UnsafePointer[rte_mempool_cache]
alias rte_mempool_cache_flush = fn (UnsafePointer[rte_mempool_cache], UnsafePointer[rte_mempool]) -> NoneType
alias rte_mempool_do_generic_put = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[rte_mempool_cache]) -> NoneType
alias __builtin_assume = fn (Bool) -> NoneType
alias rte_mempool_generic_put = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[rte_mempool_cache]) -> NoneType
alias rte_mempool_put_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> NoneType
alias rte_mempool_put = fn (UnsafePointer[rte_mempool], OpaquePointer) -> NoneType
alias rte_mempool_do_generic_get = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[rte_mempool_cache]) -> Int32
alias __builtin_constant_p = fn () -> Int32
alias rte_mempool_generic_get = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32, UnsafePointer[rte_mempool_cache]) -> Int32
alias rte_mempool_get_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32
alias rte_mempool_get = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer]) -> Int32
alias rte_mempool_get_contig_blocks = fn (UnsafePointer[rte_mempool], UnsafePointer[OpaquePointer], UInt32) -> Int32
alias rte_mempool_avail_count = fn (read UnsafePointer[rte_mempool]) -> UInt32
alias rte_mempool_in_use_count = fn (read UnsafePointer[rte_mempool]) -> UInt32
alias rte_mempool_full = fn (read UnsafePointer[rte_mempool]) -> Int32
alias rte_mempool_empty = fn (read UnsafePointer[rte_mempool]) -> Int32
alias rte_mempool_virt2iova = fn (read OpaquePointer) -> rte_iova_t
alias rte_mempool_audit = fn (UnsafePointer[rte_mempool]) -> NoneType
alias rte_mempool_get_priv = fn (UnsafePointer[rte_mempool]) -> OpaquePointer
alias rte_mempool_list_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_mempool_lookup = fn (read UnsafePointer[Int8]) -> UnsafePointer[rte_mempool]
alias rte_mempool_calc_obj_size = fn (ffi.c_ulong, ffi.c_ulong, UnsafePointer[rte_mempool_objsz]) -> ffi.c_ulong
alias rte_mempool_walk = fn (fn(UnsafePointer[rte_mempool], OpaquePointer), OpaquePointer -> NoneType) -> NoneType
struct rte_mempool_mem_range_info(Copyable & Movable):

	var start : OpaquePointer

	var length : ffi.c_ulong

	var is_contiguous : Bool

alias rte_mempool_get_mem_range = fn (read UnsafePointer[rte_mempool], UnsafePointer[rte_mempool_mem_range_info]) -> Int32
alias rte_mempool_get_obj_alignment = fn (read UnsafePointer[rte_mempool]) -> size_t
alias rte_mempool_get_page_size = fn (UnsafePointer[rte_mempool], UnsafePointer[size_t]) -> Int32
struct rte_mempool_event(Copyable & Movable):
# # Node: PlaceHolder()
# {"closeName":"","id":"0x1a2213d0","inner":[{"id":"0x1a221420","kind":"VerbatimBlockLineComment","loc":{"col":1,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":1990,"offset":64759,"tokLen":0},"range":{"begin":{"col":1,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":64759,"tokLen":0},"end":{"col":2,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":64760,"tokLen":1}},"text":" "},{"id":"0x1a221440","kind":"VerbatimBlockLineComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":64762,"tokLen":0},"range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":64762,"tokLen":0},"end":{"col":4,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":64762,"tokLen":0}},"text":""}],"kind":"VerbatimBlockComment","loc":{"col":5,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":64750,"tokLen":8},"name":"internal","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":64749,"tokLen":1},"end":{"col":13,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":64758,"tokLen":0}}}

	alias RTE_MEMPOOL_EVENT_READY = 0

	alias RTE_MEMPOOL_EVENT_DESTROY = 1

alias rte_mempool_event_callback = 	# # Node: PlaceHolder()
	# {"id":"0x1a0cc090","inner":[{"cc":"cdecl","id":"0x1a0cc050","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}},{"id":"0x1a0cbe40","inner":[{"decl":{"id":"0x1a0cbbc8","kind":"EnumDecl","name":"rte_mempool_event"},"id":"0x1a0cbc70","kind":"EnumType","type":{"qualType":"enum rte_mempool_event"}}],"kind":"ElaboratedType","type":{"qualType":"enum rte_mempool_event"}},{"id":"0x1a0a5900","inner":[{"id":"0x1a0a58d0","inner":[{"decl":{"id":"0x1a0a5fb8","kind":"RecordDecl","name":"rte_mempool"},"id":"0x1a0a4800","kind":"RecordType","type":{"qualType":"struct rte_mempool"}}],"kind":"ElaboratedType","type":{"qualType":"struct rte_mempool"}}],"kind":"PointerType","type":{"qualType":"struct rte_mempool *"}},{"id":"0x19cb3c90","inner":[{"id":"0x19cb2f50","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"FunctionProtoType","type":{"qualType":"void (enum rte_mempool_event, struct rte_mempool *, void *)"}}],"kind":"ParenType","type":{"qualType":"void (enum rte_mempool_event, struct rte_mempool *, void *)"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  
# # Node: PlaceHolder()
# {"closeName":"","id":"0x1a2216e0","inner":[{"id":"0x1a221730","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":2000,"offset":64983,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":64983,"tokLen":0},"end":{"col":27,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65007,"tokLen":0}},"text":" Mempool event callback."},{"id":"0x1a221750","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":2001,"offset":65010,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65010,"tokLen":0},"end":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65010,"tokLen":0}},"text":""},{"id":"0x1a221770","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":2002,"offset":65013,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65013,"tokLen":0},"end":{"col":81,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65091,"tokLen":0}},"text":" rte_mempool_event_callback_register() may be called from within the callback,"},{"id":"0x1a221790","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":2003,"offset":65094,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65094,"tokLen":0},"end":{"col":81,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65172,"tokLen":0}},"text":" but the callbacks registered this way will not be invoked for the same event."},{"id":"0x1a2217b0","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":2004,"offset":65175,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65175,"tokLen":0},"end":{"col":69,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65241,"tokLen":0}},"text":" rte_mempool_event_callback_unregister() may only be safely called"},{"id":"0x1a2217d0","kind":"VerbatimBlockLineComment","loc":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":2005,"offset":65244,"tokLen":0},"range":{"begin":{"col":3,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65244,"tokLen":0},"end":{"col":35,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65276,"tokLen":0}},"text":" to remove the running callback."},{"id":"0x1a2217f0","kind":"VerbatimBlockLineComment","loc":{"col":1,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":2006,"offset":65277,"tokLen":0},"range":{"begin":{"col":1,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65277,"tokLen":0},"end":{"col":2,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65278,"tokLen":1}},"text":" "},{"id":"0x1a221810","kind":"VerbatimBlockLineComment","loc":{"col":4,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65280,"tokLen":0},"range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65280,"tokLen":0},"end":{"col":4,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":65280,"tokLen":0}},"text":""}],"kind":"VerbatimBlockComment","loc":{"col":5,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":64972,"tokLen":8},"name":"internal","range":{"begin":{"col":4,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":64971,"tokLen":1},"end":{"col":13,"includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"offset":64980,"tokLen":0}}}

alias rte_mempool_event_callback_register = fn (UnsafePointer[rte_mempool_event_callback], OpaquePointer) -> Int32
alias rte_mempool_event_callback_unregister = fn (UnsafePointer[rte_mempool_event_callback], OpaquePointer) -> Int32
alias rte_prefetch0 = fn (read OpaquePointer) -> NoneType
alias rte_prefetch1 = fn (read OpaquePointer) -> NoneType
alias rte_prefetch2 = fn (read OpaquePointer) -> NoneType
alias rte_prefetch_non_temporal = fn (read OpaquePointer) -> NoneType
alias rte_prefetch0_write = fn (read OpaquePointer) -> NoneType
alias __builtin_prefetch = fn (read *OpaquePointer) -> NoneType
alias rte_prefetch1_write = fn (read OpaquePointer) -> NoneType
alias rte_prefetch2_write = fn (read OpaquePointer) -> NoneType
alias rte_cldemote = fn (read OpaquePointer) -> NoneType
alias rte_get_ptype_l2_name = fn (ffi.c_ulong) -> UnsafePointer[Int8]
alias rte_get_ptype_l3_name = fn (ffi.c_ulong) -> UnsafePointer[Int8]
alias rte_get_ptype_l4_name = fn (ffi.c_ulong) -> UnsafePointer[Int8]
alias rte_get_ptype_tunnel_name = fn (ffi.c_ulong) -> UnsafePointer[Int8]
alias rte_get_ptype_inner_l2_name = fn (ffi.c_ulong) -> UnsafePointer[Int8]
alias rte_get_ptype_inner_l3_name = fn (ffi.c_ulong) -> UnsafePointer[Int8]
alias rte_get_ptype_inner_l4_name = fn (ffi.c_ulong) -> UnsafePointer[Int8]
alias rte_get_ptype_name = fn (ffi.c_ulong, UnsafePointer[Int8], size_t) -> Int32
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

struct anonomous_record_1752(Copyable & Movable):
	var data_off : UInt16

	var refcnt : UInt16

	var nb_segs : UInt16

	var port : UInt16

struct anonomous_record_1754(Copyable & Movable):
	var inner_l2_type : UInt8

	var inner_l3_type : UInt8

alias anonomous_record_1755 = C_Union[UInt8, anonomous_record_1754, , ]

struct anonomous_record_1756(Copyable & Movable):
	var l2_type : UInt8

	var l3_type : UInt8

	var l4_type : UInt8

	var tun_type : UInt8

	var union_placeholder_1 : anonomous_record_1755




	var inner_l4_type : UInt8

struct anonomous_record_1758(Copyable & Movable):
	var hash : UInt16

	var id : UInt16

alias anonomous_record_1759 = C_Union[anonomous_record_1758, , , UInt32]

struct anonomous_record_1761(Copyable & Movable):
	var reserved1 : UInt32

	var reserved2 : UInt16

	var txq : UInt16

struct anonomous_record_1760(Copyable & Movable):
	var union_placeholder_1 : anonomous_record_1759




	var hi : UInt32

alias anonomous_record_1762 = C_Union[UInt32, anonomous_record_1760, rte_mbuf_sched, anonomous_record_1761, UInt32]

alias anonomous_record_1763 = C_Union[anonomous_record_1762]

alias anonomous_record_1757 = C_Union[UInt32, anonomous_record_1756, , , , , , , , ]

struct anonomous_record_1764(Copyable & Movable):
	var union_placeholder_1 : anonomous_record_1757










	var pkt_len : UInt32

	var data_len : UInt16

	var vlan_tci : UInt16

	var union_placeholder_2 : anonomous_record_1763


	var vlan_tci_outer : UInt16

	var buf_len : UInt16

struct anonomous_record_1766(Copyable & Movable):
	var l2_len : ffi.c_ulong

	var l3_len : ffi.c_ulong

	var l4_len : ffi.c_ulong

	var tso_segsz : ffi.c_ulong

	var outer_l3_len : ffi.c_ulong

	var outer_l2_len : ffi.c_ulong

struct rte_mbuf_ext_shared_info(Copyable & Movable):
	pass
alias anonomous_record_1767 = C_Union[ffi.c_ulong, anonomous_record_1766, , , , , , ]

alias anonomous_record_1765 = C_Union[InlineArray[OpaquePointer, 3], anonomous_record_1764, , , , , , , , , , , , , , , ]

alias anonomous_record_1753 = C_Union[InlineArray[ffi.c_ulong_long, 1], anonomous_record_1752, , , , ]

struct rte_mbuf(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x1a1007a0","inner":[{"id":"0x1a100780","inner":[{"id":"0x1a1006b8","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/mbuf/rte_mbuf_core.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":467,"offset":17345,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/mbuf/rte_mbuf_core.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":467,"offset":17345,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/mbuf/rte_mbuf_core.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":467,"offset":17345,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/mbuf/rte_mbuf_core.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"isMacroArgExpansion":true,"line":467,"offset":17345,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/mbuf/rte_mbuf_core.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":467,"offset":17345,"tokLen":19},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/mbuf/rte_mbuf_core.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":467,"offset":17345,"tokLen":19},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/mbuf/rte_mbuf.h"},"line":121,"offset":3797,"tokLen":1}}}}


	var buf_addr : OpaquePointer

	var buf_iova : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_1753






	var ol_flags : ffi.c_ulong

	var union_placeholder_2 : anonomous_record_1765

















	var pool : UnsafePointer[rte_mempool]

	var next : UnsafePointer[rte_mbuf]

	var union_placeholder_3 : anonomous_record_1767








	var shinfo : rte_mbuf_ext_shared_info

	var priv_size : UInt16

	var timesync : UInt16

	var dynfield1 : InlineArray[ffi.c_ulong, 9]

alias rte_mbuf_extbuf_free_callback_t = fn(OpaquePointer, OpaquePointer) -> NoneType
alias rte_get_rx_ol_flag_name = fn (ffi.c_ulong_long) -> UnsafePointer[Int8]
alias rte_get_rx_ol_flag_list = fn (ffi.c_ulong_long, UnsafePointer[Int8], size_t) -> Int32
alias rte_get_tx_ol_flag_name = fn (ffi.c_ulong_long) -> UnsafePointer[Int8]
alias rte_get_tx_ol_flag_list = fn (ffi.c_ulong_long, UnsafePointer[Int8], size_t) -> Int32
alias rte_mbuf_prefetch_part1 = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias rte_mbuf_prefetch_part2 = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias rte_pktmbuf_priv_size = fn (UnsafePointer[rte_mempool]) -> UInt16
alias rte_mbuf_iova_get = fn (read UnsafePointer[rte_mbuf]) -> rte_iova_t
alias rte_mbuf_iova_set = fn (UnsafePointer[rte_mbuf], rte_iova_t) -> NoneType
alias rte_mbuf_data_iova = fn (read UnsafePointer[rte_mbuf]) -> rte_iova_t
alias rte_mbuf_data_iova_default = fn (read UnsafePointer[rte_mbuf]) -> rte_iova_t
alias rte_mbuf_from_indirect = fn (UnsafePointer[rte_mbuf]) -> UnsafePointer[rte_mbuf]
alias rte_mbuf_buf_addr = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_mempool]) -> UnsafePointer[Int8]
alias rte_mbuf_data_addr_default = fn (UnsafePointer[rte_mbuf]) -> UnsafePointer[Int8]
alias rte_mbuf_to_baddr = fn (UnsafePointer[rte_mbuf]) -> UnsafePointer[Int8]
alias rte_mbuf_to_priv = fn (UnsafePointer[rte_mbuf]) -> OpaquePointer
struct rte_pktmbuf_pool_private(Copyable & Movable):

	var mbuf_data_room_size : UInt16

	var mbuf_priv_size : UInt16

	var flags : UInt32

alias rte_pktmbuf_priv_flags = fn (UnsafePointer[rte_mempool]) -> ffi.c_ulong
alias rte_mbuf_refcnt_read = fn (read UnsafePointer[rte_mbuf]) -> UInt16
alias rte_mbuf_refcnt_set = fn (UnsafePointer[rte_mbuf], UInt16) -> NoneType
alias __rte_mbuf_refcnt_update = fn (UnsafePointer[rte_mbuf], Int16) -> UInt16
alias rte_mbuf_refcnt_update = fn (UnsafePointer[rte_mbuf], Int16) -> UInt16
alias rte_mbuf_ext_refcnt_read = fn (read UnsafePointer[rte_mbuf_ext_shared_info]) -> UInt16
alias rte_mbuf_ext_refcnt_set = fn (UnsafePointer[rte_mbuf_ext_shared_info], UInt16) -> NoneType
alias rte_mbuf_ext_refcnt_update = fn (UnsafePointer[rte_mbuf_ext_shared_info], Int16) -> UInt16
alias rte_mbuf_sanity_check = fn (read UnsafePointer[rte_mbuf], Int32) -> NoneType
alias rte_mbuf_check = fn (read UnsafePointer[rte_mbuf], Int32, read UnsafePointer[UnsafePointer[Int8]]) -> Int32
alias __rte_mbuf_raw_sanity_check = fn (read UnsafePointer[rte_mbuf]) -> NoneType
alias rte_mbuf_raw_alloc = fn (UnsafePointer[rte_mempool]) -> UnsafePointer[rte_mbuf]
alias rte_mbuf_raw_alloc_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[UnsafePointer[rte_mbuf]], UInt32) -> Int32
alias rte_mbuf_raw_free = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias rte_mbuf_raw_free_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[UnsafePointer[rte_mbuf]], UInt32) -> NoneType
alias rte_pktmbuf_init = fn (UnsafePointer[rte_mempool], OpaquePointer, OpaquePointer, UInt32) -> NoneType
alias rte_pktmbuf_pool_init = fn (UnsafePointer[rte_mempool], OpaquePointer) -> NoneType
alias rte_pktmbuf_pool_create = fn (read UnsafePointer[Int8], UInt32, UInt32, UInt16, UInt16, Int32) -> UnsafePointer[rte_mempool]
alias rte_pktmbuf_pool_create_by_ops = fn (read UnsafePointer[Int8], UInt32, UInt32, UInt16, UInt16, Int32, read UnsafePointer[Int8]) -> UnsafePointer[rte_mempool]
struct rte_pktmbuf_extmem(Copyable & Movable):

	var buf_ptr : OpaquePointer

	var buf_iova : ffi.c_ulong

	var buf_len : ffi.c_ulong

	var elt_size : UInt16

alias rte_pktmbuf_pool_create_extbuf = fn (read UnsafePointer[Int8], UInt32, UInt32, UInt16, UInt16, Int32, read UnsafePointer[rte_pktmbuf_extmem], UInt32) -> UnsafePointer[rte_mempool]
alias rte_pktmbuf_data_room_size = fn (UnsafePointer[rte_mempool]) -> UInt16
alias rte_pktmbuf_reset_headroom = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias rte_pktmbuf_reset = fn (UnsafePointer[rte_mbuf]) -> NoneType
alias rte_pktmbuf_alloc = fn (UnsafePointer[rte_mempool]) -> UnsafePointer[rte_mbuf]
alias rte_pktmbuf_alloc_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[UnsafePointer[rte_mbuf]], UInt32) -> Int32
alias rte_pktmbuf_ext_shinfo_init_helper = fn (OpaquePointer, UnsafePointer[UInt16], rte_mbuf_extbuf_free_callback_t, OpaquePointer) -> UnsafePointer[rte_mbuf_ext_shared_info]
alias rte_pktmbuf_attach_extbuf = fn (UnsafePointer[rte_mbuf], OpaquePointer, rte_iova_t, UInt16, UnsafePointer[rte_mbuf_ext_shared_info]) -> NoneType
alias rte_mbuf_dynfield_copy = fn (UnsafePointer[rte_mbuf], read UnsafePointer[rte_mbuf]) -> NoneType
alias __rte_pktmbuf_copy_hdr = fn (UnsafePointer[rte_mbuf], read UnsafePointer[rte_mbuf]) -> NoneType
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
alias rte_pktmbuf_copy = fn (read UnsafePointer[rte_mbuf], UnsafePointer[rte_mempool], ffi.c_ulong, ffi.c_ulong) -> UnsafePointer[rte_mbuf]
alias rte_pktmbuf_refcnt_update = fn (UnsafePointer[rte_mbuf], Int16) -> NoneType
alias rte_pktmbuf_headroom = fn (read UnsafePointer[rte_mbuf]) -> UInt16
alias rte_pktmbuf_tailroom = fn (read UnsafePointer[rte_mbuf]) -> UInt16
alias rte_pktmbuf_lastseg = fn (UnsafePointer[rte_mbuf]) -> UnsafePointer[rte_mbuf]
alias rte_pktmbuf_prepend = fn (UnsafePointer[rte_mbuf], UInt16) -> UnsafePointer[Int8]
alias rte_pktmbuf_append = fn (UnsafePointer[rte_mbuf], UInt16) -> UnsafePointer[Int8]
alias rte_pktmbuf_adj = fn (UnsafePointer[rte_mbuf], UInt16) -> UnsafePointer[Int8]
alias rte_pktmbuf_trim = fn (UnsafePointer[rte_mbuf], UInt16) -> Int32
alias rte_pktmbuf_is_contiguous = fn (read UnsafePointer[rte_mbuf]) -> Int32
alias __rte_pktmbuf_read = fn (read UnsafePointer[rte_mbuf], ffi.c_ulong, ffi.c_ulong, OpaquePointer) -> OpaquePointer
alias rte_pktmbuf_read = fn (read UnsafePointer[rte_mbuf], ffi.c_ulong, ffi.c_ulong, OpaquePointer) -> OpaquePointer
alias rte_pktmbuf_chain = fn (UnsafePointer[rte_mbuf], UnsafePointer[rte_mbuf]) -> Int32
alias rte_mbuf_tx_offload = fn (ffi.c_ulong_long, ffi.c_ulong_long, ffi.c_ulong_long, ffi.c_ulong_long, ffi.c_ulong_long, ffi.c_ulong_long, ffi.c_ulong_long) -> ffi.c_ulong_long
alias rte_validate_tx_offload = fn (read UnsafePointer[rte_mbuf]) -> Int32
alias __rte_pktmbuf_linearize = fn (UnsafePointer[rte_mbuf]) -> Int32
alias rte_pktmbuf_linearize = fn (UnsafePointer[rte_mbuf]) -> Int32
alias rte_pktmbuf_dump = fn (UnsafePointer[FILE], read UnsafePointer[rte_mbuf], UInt32) -> NoneType
alias rte_mbuf_sched_queue_get = fn (read UnsafePointer[rte_mbuf]) -> ffi.c_ulong
alias rte_mbuf_sched_traffic_class_get = fn (read UnsafePointer[rte_mbuf]) -> UInt8
alias rte_mbuf_sched_color_get = fn (read UnsafePointer[rte_mbuf]) -> UInt8
alias rte_mbuf_sched_get = fn (read UnsafePointer[rte_mbuf], UnsafePointer[ffi.c_ulong], UnsafePointer[UInt8], UnsafePointer[UInt8]) -> NoneType
alias rte_mbuf_sched_queue_set = fn (UnsafePointer[rte_mbuf], ffi.c_ulong) -> NoneType
alias rte_mbuf_sched_traffic_class_set = fn (UnsafePointer[rte_mbuf], UInt8) -> NoneType
alias rte_mbuf_sched_color_set = fn (UnsafePointer[rte_mbuf], UInt8) -> NoneType
alias rte_mbuf_sched_set = fn (UnsafePointer[rte_mbuf], ffi.c_ulong, UInt8, UInt8) -> NoneType
struct rte_port_in_stats(Copyable & Movable):

	var n_pkts_in : ffi.c_ulong

	var n_pkts_drop : ffi.c_ulong

alias rte_port_in_op_create = fn(OpaquePointer, Int32) -> OpaquePointer
alias rte_port_in_op_free = fn(OpaquePointer) -> Int32
alias rte_port_in_op_rx = fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_mbuf]], ffi.c_ulong) -> Int32
alias rte_port_in_op_stats_read = fn(OpaquePointer, UnsafePointer[rte_port_in_stats], Int32) -> Int32
struct rte_port_in_ops(Copyable & Movable):

	var f_create : fn(OpaquePointer, Int32) -> OpaquePointer

	var f_free : fn(OpaquePointer) -> Int32

	var f_rx : fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_mbuf]], ffi.c_ulong) -> Int32

	var f_stats : fn(OpaquePointer, UnsafePointer[rte_port_in_stats], Int32) -> Int32

struct rte_port_out_stats(Copyable & Movable):

	var n_pkts_in : ffi.c_ulong

	var n_pkts_drop : ffi.c_ulong

alias rte_port_out_op_create = fn(OpaquePointer, Int32) -> OpaquePointer
alias rte_port_out_op_free = fn(OpaquePointer) -> Int32
alias rte_port_out_op_tx = fn(OpaquePointer, UnsafePointer[rte_mbuf]) -> Int32
alias rte_port_out_op_tx_bulk = fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_mbuf]], ffi.c_ulong_long) -> Int32
alias rte_port_out_op_flush = fn(OpaquePointer) -> Int32
alias rte_port_out_op_stats_read = fn(OpaquePointer, UnsafePointer[rte_port_out_stats], Int32) -> Int32
struct rte_port_out_ops(Copyable & Movable):

	var f_create : fn(OpaquePointer, Int32) -> OpaquePointer

	var f_free : fn(OpaquePointer) -> Int32

	var f_tx : fn(OpaquePointer, UnsafePointer[rte_mbuf]) -> Int32

	var f_tx_bulk : fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_mbuf]], ffi.c_ulong_long) -> Int32

	var f_flush : fn(OpaquePointer) -> Int32

	var f_stats : fn(OpaquePointer, UnsafePointer[rte_port_out_stats], Int32) -> Int32

struct rte_table_stats(Copyable & Movable):

	var n_pkts_in : ffi.c_ulong

	var n_pkts_lookup_miss : ffi.c_ulong

alias rte_table_op_create = fn(OpaquePointer, Int32, ffi.c_ulong) -> OpaquePointer
alias rte_table_op_free = fn(OpaquePointer) -> Int32
alias rte_table_op_entry_add = fn(OpaquePointer, OpaquePointer, OpaquePointer, UnsafePointer[Int32], UnsafePointer[OpaquePointer]) -> Int32
alias rte_table_op_entry_delete = fn(OpaquePointer, OpaquePointer, UnsafePointer[Int32], OpaquePointer) -> Int32
alias rte_table_op_entry_add_bulk = fn(OpaquePointer, UnsafePointer[OpaquePointer], UnsafePointer[OpaquePointer], ffi.c_ulong, UnsafePointer[Int32], UnsafePointer[OpaquePointer]) -> Int32
alias rte_table_op_entry_delete_bulk = fn(OpaquePointer, UnsafePointer[OpaquePointer], ffi.c_ulong, UnsafePointer[Int32], UnsafePointer[OpaquePointer]) -> Int32
alias rte_table_op_lookup = fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_mbuf]], ffi.c_ulong_long, UnsafePointer[ffi.c_ulong_long], UnsafePointer[OpaquePointer]) -> Int32
alias rte_table_op_stats_read = fn(OpaquePointer, UnsafePointer[rte_table_stats], Int32) -> Int32
struct rte_table_ops(Copyable & Movable):

	var f_create : fn(OpaquePointer, Int32, ffi.c_ulong) -> OpaquePointer

	var f_free : fn(OpaquePointer) -> Int32

	var f_add : fn(OpaquePointer, OpaquePointer, OpaquePointer, UnsafePointer[Int32], UnsafePointer[OpaquePointer]) -> Int32

	var f_delete : fn(OpaquePointer, OpaquePointer, UnsafePointer[Int32], OpaquePointer) -> Int32

	var f_add_bulk : fn(OpaquePointer, UnsafePointer[OpaquePointer], UnsafePointer[OpaquePointer], ffi.c_ulong, UnsafePointer[Int32], UnsafePointer[OpaquePointer]) -> Int32

	var f_delete_bulk : fn(OpaquePointer, UnsafePointer[OpaquePointer], ffi.c_ulong, UnsafePointer[Int32], UnsafePointer[OpaquePointer]) -> Int32

	var f_lookup : fn(OpaquePointer, UnsafePointer[UnsafePointer[rte_mbuf]], ffi.c_ulong_long, UnsafePointer[ffi.c_ulong_long], UnsafePointer[OpaquePointer]) -> Int32

	var f_stats : fn(OpaquePointer, UnsafePointer[rte_table_stats], Int32) -> Int32

struct rte_pipeline(Copyable & Movable):

	pass
struct rte_pipeline_params(Copyable & Movable):

	var name : UnsafePointer[Int8]

	var socket_id : Int32

	var offset_port_id : UInt32

struct rte_pipeline_port_in_stats(Copyable & Movable):

	var stats : rte_port_in_stats

	var n_pkts_dropped_by_ah : ffi.c_ulong

struct rte_pipeline_port_out_stats(Copyable & Movable):

	var stats : rte_port_out_stats

	var n_pkts_dropped_by_ah : ffi.c_ulong

struct rte_pipeline_table_stats(Copyable & Movable):

	var stats : rte_table_stats

	var n_pkts_dropped_by_lkp_hit_ah : ffi.c_ulong

	var n_pkts_dropped_by_lkp_miss_ah : ffi.c_ulong

	var n_pkts_dropped_lkp_hit : ffi.c_ulong

	var n_pkts_dropped_lkp_miss : ffi.c_ulong

alias rte_pipeline_create = fn (UnsafePointer[rte_pipeline_params]) -> UnsafePointer[rte_pipeline]
alias rte_pipeline_free = fn (UnsafePointer[rte_pipeline]) -> Int32
alias rte_pipeline_check = fn (UnsafePointer[rte_pipeline]) -> Int32
alias rte_pipeline_run = fn (UnsafePointer[rte_pipeline]) -> Int32
alias rte_pipeline_flush = fn (UnsafePointer[rte_pipeline]) -> Int32
struct rte_pipeline_action(Copyable & Movable):

	alias RTE_PIPELINE_ACTION_DROP = 0

	alias RTE_PIPELINE_ACTION_PORT = 1

	alias RTE_PIPELINE_ACTION_PORT_META = 2

	alias RTE_PIPELINE_ACTION_TABLE = 3

	alias RTE_PIPELINE_ACTIONS = 4

alias anonomous_record_1768 = C_Union[UInt32, UInt32]

struct rte_pipeline_table_entry(Copyable & Movable):

	var action : rte_pipeline_action

	var union_placeholder_1 : anonomous_record_1768



	var action_data : UnsafePointer[UInt8] # Failed to parse array size

alias rte_pipeline_table_action_handler_hit = fn(UnsafePointer[rte_pipeline], UnsafePointer[UnsafePointer[rte_mbuf]], ffi.c_ulong_long, UnsafePointer[UnsafePointer[rte_pipeline_table_entry]], OpaquePointer) -> Int32
alias rte_pipeline_table_action_handler_miss = fn(UnsafePointer[rte_pipeline], UnsafePointer[UnsafePointer[rte_mbuf]], ffi.c_ulong_long, UnsafePointer[rte_pipeline_table_entry], OpaquePointer) -> Int32
struct rte_pipeline_table_params(Copyable & Movable):

	var ops : UnsafePointer[rte_table_ops]

	var arg_create : OpaquePointer

	var f_action_hit : fn(UnsafePointer[rte_pipeline], UnsafePointer[UnsafePointer[rte_mbuf]], ffi.c_ulong_long, UnsafePointer[UnsafePointer[rte_pipeline_table_entry]], OpaquePointer) -> Int32

	var f_action_miss : fn(UnsafePointer[rte_pipeline], UnsafePointer[UnsafePointer[rte_mbuf]], ffi.c_ulong_long, UnsafePointer[rte_pipeline_table_entry], OpaquePointer) -> Int32

	var arg_ah : OpaquePointer

	var action_data_size : UInt32

alias rte_pipeline_table_create = fn (UnsafePointer[rte_pipeline], UnsafePointer[rte_pipeline_table_params], UnsafePointer[ffi.c_ulong]) -> Int32
alias rte_pipeline_table_default_entry_add = fn (UnsafePointer[rte_pipeline], ffi.c_ulong, UnsafePointer[rte_pipeline_table_entry], UnsafePointer[UnsafePointer[rte_pipeline_table_entry]]) -> Int32
alias rte_pipeline_table_default_entry_delete = fn (UnsafePointer[rte_pipeline], ffi.c_ulong, UnsafePointer[rte_pipeline_table_entry]) -> Int32
alias rte_pipeline_table_entry_add = fn (UnsafePointer[rte_pipeline], ffi.c_ulong, OpaquePointer, UnsafePointer[rte_pipeline_table_entry], UnsafePointer[Int32], UnsafePointer[UnsafePointer[rte_pipeline_table_entry]]) -> Int32
alias rte_pipeline_table_entry_delete = fn (UnsafePointer[rte_pipeline], ffi.c_ulong, OpaquePointer, UnsafePointer[Int32], UnsafePointer[rte_pipeline_table_entry]) -> Int32
alias rte_pipeline_table_entry_add_bulk = fn (UnsafePointer[rte_pipeline], ffi.c_ulong, UnsafePointer[OpaquePointer], UnsafePointer[UnsafePointer[rte_pipeline_table_entry]], ffi.c_ulong, UnsafePointer[Int32], UnsafePointer[UnsafePointer[rte_pipeline_table_entry]]) -> Int32
alias rte_pipeline_table_entry_delete_bulk = fn (UnsafePointer[rte_pipeline], ffi.c_ulong, UnsafePointer[OpaquePointer], ffi.c_ulong, UnsafePointer[Int32], UnsafePointer[UnsafePointer[rte_pipeline_table_entry]]) -> Int32
alias rte_pipeline_table_stats_read = fn (UnsafePointer[rte_pipeline], ffi.c_ulong, UnsafePointer[rte_pipeline_table_stats], Int32) -> Int32
alias rte_pipeline_port_in_action_handler = fn(UnsafePointer[rte_pipeline], UnsafePointer[UnsafePointer[rte_mbuf]], ffi.c_ulong, OpaquePointer) -> Int32
struct rte_pipeline_port_in_params(Copyable & Movable):

	var ops : UnsafePointer[rte_port_in_ops]

	var arg_create : OpaquePointer

	var f_action : fn(UnsafePointer[rte_pipeline], UnsafePointer[UnsafePointer[rte_mbuf]], ffi.c_ulong, OpaquePointer) -> Int32

	var arg_ah : OpaquePointer

	var burst_size : UInt32

alias rte_pipeline_port_in_create = fn (UnsafePointer[rte_pipeline], UnsafePointer[rte_pipeline_port_in_params], UnsafePointer[ffi.c_ulong]) -> Int32
alias rte_pipeline_port_in_connect_to_table = fn (UnsafePointer[rte_pipeline], ffi.c_ulong, ffi.c_ulong) -> Int32
alias rte_pipeline_port_in_enable = fn (UnsafePointer[rte_pipeline], ffi.c_ulong) -> Int32
alias rte_pipeline_port_in_disable = fn (UnsafePointer[rte_pipeline], ffi.c_ulong) -> Int32
alias rte_pipeline_port_in_stats_read = fn (UnsafePointer[rte_pipeline], ffi.c_ulong, UnsafePointer[rte_pipeline_port_in_stats], Int32) -> Int32
alias rte_pipeline_port_out_action_handler = fn(UnsafePointer[rte_pipeline], UnsafePointer[UnsafePointer[rte_mbuf]], ffi.c_ulong_long, OpaquePointer) -> Int32
struct rte_pipeline_port_out_params(Copyable & Movable):

	var ops : UnsafePointer[rte_port_out_ops]

	var arg_create : OpaquePointer

	var f_action : fn(UnsafePointer[rte_pipeline], UnsafePointer[UnsafePointer[rte_mbuf]], ffi.c_ulong_long, OpaquePointer) -> Int32

	var arg_ah : OpaquePointer

alias rte_pipeline_port_out_create = fn (UnsafePointer[rte_pipeline], UnsafePointer[rte_pipeline_port_out_params], UnsafePointer[ffi.c_ulong]) -> Int32
alias rte_pipeline_port_out_stats_read = fn (UnsafePointer[rte_pipeline], ffi.c_ulong, UnsafePointer[rte_pipeline_port_out_stats], Int32) -> Int32
alias rte_pipeline_port_out_packet_insert = fn (UnsafePointer[rte_pipeline], ffi.c_ulong, UnsafePointer[rte_mbuf]) -> Int32
alias rte_pipeline_ah_packet_hijack = fn (UnsafePointer[rte_pipeline], ffi.c_ulong_long) -> Int32
alias rte_pipeline_ah_packet_drop = fn (UnsafePointer[rte_pipeline], ffi.c_ulong_long) -> Int32


alias rte_pipeline_alloca = ExternalFunction['alloca', alloca]
alias rte_pipeline_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_pipeline_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_pipeline_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_pipeline_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_pipeline_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_pipeline_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_pipeline_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_pipeline_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_pipeline_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_pipeline_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_pipeline_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_pipeline_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_pipeline_remove = ExternalFunction['remove', remove]
alias rte_pipeline_rename = ExternalFunction['rename', rename]
alias rte_pipeline_renameat = ExternalFunction['renameat', renameat]
alias rte_pipeline_fclose = ExternalFunction['fclose', fclose]
alias rte_pipeline_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias rte_pipeline_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias rte_pipeline_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias rte_pipeline_tempnam = ExternalFunction['tempnam', tempnam]
alias rte_pipeline_fflush = ExternalFunction['fflush', fflush]
alias rte_pipeline_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias rte_pipeline_fopen = ExternalFunction['fopen', fopen]
alias rte_pipeline_freopen = ExternalFunction['freopen', freopen]
alias rte_pipeline_fdopen = ExternalFunction['fdopen', fdopen]
alias rte_pipeline_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias rte_pipeline_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias rte_pipeline_setbuf = ExternalFunction['setbuf', setbuf]
alias rte_pipeline_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias rte_pipeline_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias rte_pipeline_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias rte_pipeline_fprintf = ExternalFunction['fprintf', fprintf]
alias rte_pipeline_printf = ExternalFunction['printf', printf]
alias rte_pipeline_sprintf = ExternalFunction['sprintf', sprintf]
alias rte_pipeline_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias rte_pipeline_vprintf = ExternalFunction['vprintf', vprintf]
alias rte_pipeline_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias rte_pipeline_snprintf = ExternalFunction['snprintf', snprintf]
alias rte_pipeline_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias rte_pipeline_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias rte_pipeline_dprintf = ExternalFunction['dprintf', dprintf]
alias rte_pipeline_fscanf = ExternalFunction['fscanf', fscanf]
alias rte_pipeline_scanf = ExternalFunction['scanf', scanf]
alias rte_pipeline_sscanf = ExternalFunction['sscanf', sscanf]
alias rte_pipeline_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias rte_pipeline_vscanf = ExternalFunction['vscanf', vscanf]
alias rte_pipeline_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias rte_pipeline_fgetc = ExternalFunction['fgetc', fgetc]
alias rte_pipeline_getc = ExternalFunction['getc', getc]
alias rte_pipeline_getchar = ExternalFunction['getchar', getchar]
alias rte_pipeline_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias rte_pipeline_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias rte_pipeline_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias rte_pipeline_fputc = ExternalFunction['fputc', fputc]
alias rte_pipeline_putc = ExternalFunction['putc', putc]
alias rte_pipeline_putchar = ExternalFunction['putchar', putchar]
alias rte_pipeline_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias rte_pipeline_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias rte_pipeline_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias rte_pipeline_getw = ExternalFunction['getw', getw]
alias rte_pipeline_putw = ExternalFunction['putw', putw]
alias rte_pipeline_fgets = ExternalFunction['fgets', fgets]
alias rte_pipeline_getdelim = ExternalFunction['getdelim', getdelim]
alias rte_pipeline_getline = ExternalFunction['getline', getline]
alias rte_pipeline_fputs = ExternalFunction['fputs', fputs]
alias rte_pipeline_puts = ExternalFunction['puts', puts]
alias rte_pipeline_ungetc = ExternalFunction['ungetc', ungetc]
alias rte_pipeline_fread = ExternalFunction['fread', fread]
alias rte_pipeline_fwrite = ExternalFunction['fwrite', fwrite]
alias rte_pipeline_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias rte_pipeline_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias rte_pipeline_fseek = ExternalFunction['fseek', fseek]
alias rte_pipeline_ftell = ExternalFunction['ftell', ftell]
alias rte_pipeline_rewind = ExternalFunction['rewind', rewind]
alias rte_pipeline_fseeko = ExternalFunction['fseeko', fseeko]
alias rte_pipeline_ftello = ExternalFunction['ftello', ftello]
alias rte_pipeline_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias rte_pipeline_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias rte_pipeline_clearerr = ExternalFunction['clearerr', clearerr]
alias rte_pipeline_feof = ExternalFunction['feof', feof]
alias rte_pipeline_ferror = ExternalFunction['ferror', ferror]
alias rte_pipeline_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias rte_pipeline_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias rte_pipeline_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias rte_pipeline_perror = ExternalFunction['perror', perror]
alias rte_pipeline_fileno = ExternalFunction['fileno', fileno]
alias rte_pipeline_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias rte_pipeline_pclose = ExternalFunction['pclose', pclose]
alias rte_pipeline_popen = ExternalFunction['popen', popen]
alias rte_pipeline_ctermid = ExternalFunction['ctermid', ctermid]
alias rte_pipeline_flockfile = ExternalFunction['flockfile', flockfile]
alias rte_pipeline_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias rte_pipeline_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias rte_pipeline_imaxabs = ExternalFunction['imaxabs', imaxabs]
alias rte_pipeline_imaxdiv = ExternalFunction['imaxdiv', imaxdiv]
alias rte_pipeline_strtoimax = ExternalFunction['strtoimax', strtoimax]
alias rte_pipeline_strtoumax = ExternalFunction['strtoumax', strtoumax]
alias rte_pipeline_wcstoimax = ExternalFunction['wcstoimax', wcstoimax]
alias rte_pipeline_wcstoumax = ExternalFunction['wcstoumax', wcstoumax]
alias rte_pipeline_clock = ExternalFunction['clock', clock]
alias rte_pipeline_time = ExternalFunction['time', time]
alias rte_pipeline_difftime = ExternalFunction['difftime', difftime]
alias rte_pipeline_mktime = ExternalFunction['mktime', mktime]
alias rte_pipeline_strftime = ExternalFunction['strftime', strftime]
alias rte_pipeline_strftime_l = ExternalFunction['strftime_l', strftime_l]
alias rte_pipeline_gmtime = ExternalFunction['gmtime', gmtime]
alias rte_pipeline_localtime = ExternalFunction['localtime', localtime]
alias rte_pipeline_gmtime_r = ExternalFunction['gmtime_r', gmtime_r]
alias rte_pipeline_localtime_r = ExternalFunction['localtime_r', localtime_r]
alias rte_pipeline_asctime = ExternalFunction['asctime', asctime]
alias rte_pipeline_ctime = ExternalFunction['ctime', ctime]
alias rte_pipeline_asctime_r = ExternalFunction['asctime_r', asctime_r]
alias rte_pipeline_ctime_r = ExternalFunction['ctime_r', ctime_r]
alias rte_pipeline_tzset = ExternalFunction['tzset', tzset]
alias rte_pipeline_timegm = ExternalFunction['timegm', timegm]
alias rte_pipeline_timelocal = ExternalFunction['timelocal', timelocal]
alias rte_pipeline_dysize = ExternalFunction['dysize', dysize]
alias rte_pipeline_nanosleep = ExternalFunction['nanosleep', nanosleep]
alias rte_pipeline_clock_getres = ExternalFunction['clock_getres', clock_getres]
alias rte_pipeline_clock_gettime = ExternalFunction['clock_gettime', clock_gettime]
alias rte_pipeline_clock_settime = ExternalFunction['clock_settime', clock_settime]
alias rte_pipeline_clock_nanosleep = ExternalFunction['clock_nanosleep', clock_nanosleep]
alias rte_pipeline_clock_getcpuclockid = ExternalFunction['clock_getcpuclockid', clock_getcpuclockid]
alias rte_pipeline_timer_create = ExternalFunction['timer_create', timer_create]
alias rte_pipeline_timer_delete = ExternalFunction['timer_delete', timer_delete]
alias rte_pipeline_timer_settime = ExternalFunction['timer_settime', timer_settime]
alias rte_pipeline_timer_gettime = ExternalFunction['timer_gettime', timer_gettime]
alias rte_pipeline_timer_getoverrun = ExternalFunction['timer_getoverrun', timer_getoverrun]
alias rte_pipeline_timespec_get = ExternalFunction['timespec_get', timespec_get]
alias rte_pipeline_memcpy = ExternalFunction['memcpy', memcpy]
alias rte_pipeline_memmove = ExternalFunction['memmove', memmove]
alias rte_pipeline_memccpy = ExternalFunction['memccpy', memccpy]
alias rte_pipeline_memset = ExternalFunction['memset', memset]
alias rte_pipeline_memcmp = ExternalFunction['memcmp', memcmp]
alias rte_pipeline_memchr = ExternalFunction['memchr', memchr]
alias rte_pipeline_strcpy = ExternalFunction['strcpy', strcpy]
alias rte_pipeline_strncpy = ExternalFunction['strncpy', strncpy]
alias rte_pipeline_strcat = ExternalFunction['strcat', strcat]
alias rte_pipeline_strncat = ExternalFunction['strncat', strncat]
alias rte_pipeline_strcmp = ExternalFunction['strcmp', strcmp]
alias rte_pipeline_strncmp = ExternalFunction['strncmp', strncmp]
alias rte_pipeline_strcoll = ExternalFunction['strcoll', strcoll]
alias rte_pipeline_strxfrm = ExternalFunction['strxfrm', strxfrm]
alias rte_pipeline_strcoll_l = ExternalFunction['strcoll_l', strcoll_l]
alias rte_pipeline_strxfrm_l = ExternalFunction['strxfrm_l', strxfrm_l]
alias rte_pipeline_strdup = ExternalFunction['strdup', strdup]
alias rte_pipeline_strndup = ExternalFunction['strndup', strndup]
alias rte_pipeline_strchr = ExternalFunction['strchr', strchr]
alias rte_pipeline_strrchr = ExternalFunction['strrchr', strrchr]
alias rte_pipeline_strcspn = ExternalFunction['strcspn', strcspn]
alias rte_pipeline_strspn = ExternalFunction['strspn', strspn]
alias rte_pipeline_strpbrk = ExternalFunction['strpbrk', strpbrk]
alias rte_pipeline_strstr = ExternalFunction['strstr', strstr]
alias rte_pipeline_strtok = ExternalFunction['strtok', strtok]
alias rte_pipeline_strtok_r = ExternalFunction['strtok_r', strtok_r]
alias rte_pipeline_strlen = ExternalFunction['strlen', strlen]
alias rte_pipeline_strnlen = ExternalFunction['strnlen', strnlen]
alias rte_pipeline_strerror = ExternalFunction['strerror', strerror]
alias rte_pipeline_strerror_r = ExternalFunction['strerror_r', strerror_r]
alias rte_pipeline_strerror_l = ExternalFunction['strerror_l', strerror_l]
alias rte_pipeline_bcmp = ExternalFunction['bcmp', bcmp]
alias rte_pipeline_bcopy = ExternalFunction['bcopy', bcopy]
alias rte_pipeline_bzero = ExternalFunction['bzero', bzero]
alias rte_pipeline_index = ExternalFunction['index', index]
alias rte_pipeline_rindex = ExternalFunction['rindex', rindex]
alias rte_pipeline_ffs = ExternalFunction['ffs', ffs]
alias rte_pipeline_ffsl = ExternalFunction['ffsl', ffsl]
alias rte_pipeline_ffsll = ExternalFunction['ffsll', ffsll]
alias rte_pipeline_strcasecmp = ExternalFunction['strcasecmp', strcasecmp]
alias rte_pipeline_strncasecmp = ExternalFunction['strncasecmp', strncasecmp]
alias rte_pipeline_strcasecmp_l = ExternalFunction['strcasecmp_l', strcasecmp_l]
alias rte_pipeline_strncasecmp_l = ExternalFunction['strncasecmp_l', strncasecmp_l]
alias rte_pipeline_explicit_bzero = ExternalFunction['explicit_bzero', explicit_bzero]
alias rte_pipeline_strsep = ExternalFunction['strsep', strsep]
alias rte_pipeline_strsignal = ExternalFunction['strsignal', strsignal]
alias rte_pipeline_stpcpy = ExternalFunction['stpcpy', stpcpy]
alias rte_pipeline_stpncpy = ExternalFunction['stpncpy', stpncpy]
alias rte_pipeline_rte_uuid_is_null = ExternalFunction['rte_uuid_is_null', rte_uuid_is_null]
alias rte_pipeline_rte_uuid_copy = ExternalFunction['rte_uuid_copy', rte_uuid_copy]
alias rte_pipeline_rte_uuid_compare = ExternalFunction['rte_uuid_compare', rte_uuid_compare]
alias rte_pipeline_rte_uuid_parse = ExternalFunction['rte_uuid_parse', rte_uuid_parse]
alias rte_pipeline_rte_uuid_unparse = ExternalFunction['rte_uuid_unparse', rte_uuid_unparse]
alias rte_pipeline_rte_eal_process_type = ExternalFunction['rte_eal_process_type', rte_eal_process_type]
alias rte_pipeline_rte_eal_iopl_init = ExternalFunction['rte_eal_iopl_init', rte_eal_iopl_init]
alias rte_pipeline_rte_eal_init = ExternalFunction['rte_eal_init', rte_eal_init]
alias rte_pipeline_rte_eal_cleanup = ExternalFunction['rte_eal_cleanup', rte_eal_cleanup]
alias rte_pipeline_rte_eal_primary_proc_alive = ExternalFunction['rte_eal_primary_proc_alive', rte_eal_primary_proc_alive]
alias rte_pipeline_rte_mp_disable = ExternalFunction['rte_mp_disable', rte_mp_disable]
alias rte_pipeline_rte_mp_action_register = ExternalFunction['rte_mp_action_register', rte_mp_action_register]
alias rte_pipeline_rte_mp_action_unregister = ExternalFunction['rte_mp_action_unregister', rte_mp_action_unregister]
alias rte_pipeline_rte_mp_sendmsg = ExternalFunction['rte_mp_sendmsg', rte_mp_sendmsg]
alias rte_pipeline_rte_mp_request_sync = ExternalFunction['rte_mp_request_sync', rte_mp_request_sync]
alias rte_pipeline_rte_mp_request_async = ExternalFunction['rte_mp_request_async', rte_mp_request_async]
alias rte_pipeline_rte_set_application_usage_hook = ExternalFunction['rte_set_application_usage_hook', rte_set_application_usage_hook]
alias rte_pipeline_rte_eal_has_hugepages = ExternalFunction['rte_eal_has_hugepages', rte_eal_has_hugepages]
alias rte_pipeline_rte_eal_has_pci = ExternalFunction['rte_eal_has_pci', rte_eal_has_pci]
alias rte_pipeline_rte_eal_create_uio_dev = ExternalFunction['rte_eal_create_uio_dev', rte_eal_create_uio_dev]
alias rte_pipeline_rte_eal_vfio_intr_mode = ExternalFunction['rte_eal_vfio_intr_mode', rte_eal_vfio_intr_mode]
alias rte_pipeline_rte_eal_vfio_get_vf_token = ExternalFunction['rte_eal_vfio_get_vf_token', rte_eal_vfio_get_vf_token]
alias rte_pipeline_rte_sys_gettid = ExternalFunction['rte_sys_gettid', rte_sys_gettid]
alias rte_pipeline_rte_gettid = ExternalFunction['rte_gettid', rte_gettid]
alias rte_pipeline_rte_eal_get_baseaddr = ExternalFunction['rte_eal_get_baseaddr', rte_eal_get_baseaddr]
alias rte_pipeline_rte_eal_iova_mode = ExternalFunction['rte_eal_iova_mode', rte_eal_iova_mode]
alias rte_pipeline_rte_eal_mbuf_user_pool_ops = ExternalFunction['rte_eal_mbuf_user_pool_ops', rte_eal_mbuf_user_pool_ops]
alias rte_pipeline_rte_eal_get_runtime_dir = ExternalFunction['rte_eal_get_runtime_dir', rte_eal_get_runtime_dir]
alias rte_pipeline_rte_eal_parse_coremask = ExternalFunction['rte_eal_parse_coremask', rte_eal_parse_coremask]
alias rte_pipeline_rte_eal_remote_launch = ExternalFunction['rte_eal_remote_launch', rte_eal_remote_launch]
alias rte_pipeline_rte_eal_mp_remote_launch = ExternalFunction['rte_eal_mp_remote_launch', rte_eal_mp_remote_launch]
alias rte_pipeline_rte_eal_get_lcore_state = ExternalFunction['rte_eal_get_lcore_state', rte_eal_get_lcore_state]
alias rte_pipeline_rte_eal_wait_lcore = ExternalFunction['rte_eal_wait_lcore', rte_eal_wait_lcore]
alias rte_pipeline_rte_eal_mp_wait_lcore = ExternalFunction['rte_eal_mp_wait_lcore', rte_eal_mp_wait_lcore]
alias rte_pipeline_rte_thread_create = ExternalFunction['rte_thread_create', rte_thread_create]
alias rte_pipeline_rte_thread_create_control = ExternalFunction['rte_thread_create_control', rte_thread_create_control]
alias rte_pipeline_rte_thread_create_internal_control = ExternalFunction['rte_thread_create_internal_control', rte_thread_create_internal_control]
alias rte_pipeline_rte_thread_join = ExternalFunction['rte_thread_join', rte_thread_join]
alias rte_pipeline_rte_thread_detach = ExternalFunction['rte_thread_detach', rte_thread_detach]
alias rte_pipeline_rte_thread_self = ExternalFunction['rte_thread_self', rte_thread_self]
alias rte_pipeline_rte_thread_set_name = ExternalFunction['rte_thread_set_name', rte_thread_set_name]
alias rte_pipeline_rte_thread_set_prefixed_name = ExternalFunction['rte_thread_set_prefixed_name', rte_thread_set_prefixed_name]
alias rte_pipeline_rte_thread_equal = ExternalFunction['rte_thread_equal', rte_thread_equal]
alias rte_pipeline_rte_thread_attr_init = ExternalFunction['rte_thread_attr_init', rte_thread_attr_init]
alias rte_pipeline_rte_thread_attr_set_priority = ExternalFunction['rte_thread_attr_set_priority', rte_thread_attr_set_priority]
alias rte_pipeline_rte_thread_get_priority = ExternalFunction['rte_thread_get_priority', rte_thread_get_priority]
alias rte_pipeline_rte_thread_set_priority = ExternalFunction['rte_thread_set_priority', rte_thread_set_priority]
alias rte_pipeline_rte_thread_key_create = ExternalFunction['rte_thread_key_create', rte_thread_key_create]
alias rte_pipeline_rte_thread_key_delete = ExternalFunction['rte_thread_key_delete', rte_thread_key_delete]
alias rte_pipeline_rte_thread_value_set = ExternalFunction['rte_thread_value_set', rte_thread_value_set]
alias rte_pipeline_rte_thread_value_get = ExternalFunction['rte_thread_value_get', rte_thread_value_get]
alias rte_pipeline_rte_eal_lcore_role = ExternalFunction['rte_eal_lcore_role', rte_eal_lcore_role]
alias rte_pipeline_rte_lcore_has_role = ExternalFunction['rte_lcore_has_role', rte_lcore_has_role]
alias rte_pipeline_rte_lcore_id = ExternalFunction['rte_lcore_id', rte_lcore_id]
alias rte_pipeline_rte_get_main_lcore = ExternalFunction['rte_get_main_lcore', rte_get_main_lcore]
alias rte_pipeline_rte_lcore_count = ExternalFunction['rte_lcore_count', rte_lcore_count]
alias rte_pipeline_rte_lcore_index = ExternalFunction['rte_lcore_index', rte_lcore_index]
alias rte_pipeline_rte_socket_id = ExternalFunction['rte_socket_id', rte_socket_id]
alias rte_pipeline_rte_socket_count = ExternalFunction['rte_socket_count', rte_socket_count]
alias rte_pipeline_rte_socket_id_by_idx = ExternalFunction['rte_socket_id_by_idx', rte_socket_id_by_idx]
alias rte_pipeline_rte_lcore_to_socket_id = ExternalFunction['rte_lcore_to_socket_id', rte_lcore_to_socket_id]
alias rte_pipeline_rte_lcore_to_cpu_id = ExternalFunction['rte_lcore_to_cpu_id', rte_lcore_to_cpu_id]
alias rte_pipeline_rte_lcore_is_enabled = ExternalFunction['rte_lcore_is_enabled', rte_lcore_is_enabled]
alias rte_pipeline_rte_get_next_lcore = ExternalFunction['rte_get_next_lcore', rte_get_next_lcore]
alias rte_pipeline_rte_lcore_callback_register = ExternalFunction['rte_lcore_callback_register', rte_lcore_callback_register]
alias rte_pipeline_rte_lcore_callback_unregister = ExternalFunction['rte_lcore_callback_unregister', rte_lcore_callback_unregister]
alias rte_pipeline_rte_lcore_iterate = ExternalFunction['rte_lcore_iterate', rte_lcore_iterate]
alias rte_pipeline_rte_lcore_register_usage_cb = ExternalFunction['rte_lcore_register_usage_cb', rte_lcore_register_usage_cb]
alias rte_pipeline_rte_lcore_dump = ExternalFunction['rte_lcore_dump', rte_lcore_dump]
alias rte_pipeline_rte_thread_register = ExternalFunction['rte_thread_register', rte_thread_register]
alias rte_pipeline_rte_thread_unregister = ExternalFunction['rte_thread_unregister', rte_thread_unregister]
alias rte_pipeline_rte_atomic_thread_fence = ExternalFunction['rte_atomic_thread_fence', rte_atomic_thread_fence]
alias rte_pipeline_rte_atomic16_cmpset = ExternalFunction['rte_atomic16_cmpset', rte_atomic16_cmpset]
alias rte_pipeline_rte_atomic16_exchange = ExternalFunction['rte_atomic16_exchange', rte_atomic16_exchange]
alias rte_pipeline_rte_atomic16_init = ExternalFunction['rte_atomic16_init', rte_atomic16_init]
alias rte_pipeline_rte_atomic16_read = ExternalFunction['rte_atomic16_read', rte_atomic16_read]
alias rte_pipeline_rte_atomic16_set = ExternalFunction['rte_atomic16_set', rte_atomic16_set]
alias rte_pipeline_rte_atomic16_add = ExternalFunction['rte_atomic16_add', rte_atomic16_add]
alias rte_pipeline_rte_atomic16_sub = ExternalFunction['rte_atomic16_sub', rte_atomic16_sub]
alias rte_pipeline_rte_atomic16_inc = ExternalFunction['rte_atomic16_inc', rte_atomic16_inc]
alias rte_pipeline_rte_atomic16_dec = ExternalFunction['rte_atomic16_dec', rte_atomic16_dec]
alias rte_pipeline_rte_atomic16_add_return = ExternalFunction['rte_atomic16_add_return', rte_atomic16_add_return]
alias rte_pipeline_rte_atomic16_sub_return = ExternalFunction['rte_atomic16_sub_return', rte_atomic16_sub_return]
alias rte_pipeline_rte_atomic16_inc_and_test = ExternalFunction['rte_atomic16_inc_and_test', rte_atomic16_inc_and_test]
alias rte_pipeline_rte_atomic16_dec_and_test = ExternalFunction['rte_atomic16_dec_and_test', rte_atomic16_dec_and_test]
alias rte_pipeline_rte_atomic16_test_and_set = ExternalFunction['rte_atomic16_test_and_set', rte_atomic16_test_and_set]
alias rte_pipeline_rte_atomic16_clear = ExternalFunction['rte_atomic16_clear', rte_atomic16_clear]
alias rte_pipeline_rte_atomic32_cmpset = ExternalFunction['rte_atomic32_cmpset', rte_atomic32_cmpset]
alias rte_pipeline_rte_atomic32_exchange = ExternalFunction['rte_atomic32_exchange', rte_atomic32_exchange]
alias rte_pipeline_rte_atomic32_init = ExternalFunction['rte_atomic32_init', rte_atomic32_init]
alias rte_pipeline_rte_atomic32_read = ExternalFunction['rte_atomic32_read', rte_atomic32_read]
alias rte_pipeline_rte_atomic32_set = ExternalFunction['rte_atomic32_set', rte_atomic32_set]
alias rte_pipeline_rte_atomic32_add = ExternalFunction['rte_atomic32_add', rte_atomic32_add]
alias rte_pipeline_rte_atomic32_sub = ExternalFunction['rte_atomic32_sub', rte_atomic32_sub]
alias rte_pipeline_rte_atomic32_inc = ExternalFunction['rte_atomic32_inc', rte_atomic32_inc]
alias rte_pipeline_rte_atomic32_dec = ExternalFunction['rte_atomic32_dec', rte_atomic32_dec]
alias rte_pipeline_rte_atomic32_add_return = ExternalFunction['rte_atomic32_add_return', rte_atomic32_add_return]
alias rte_pipeline_rte_atomic32_sub_return = ExternalFunction['rte_atomic32_sub_return', rte_atomic32_sub_return]
alias rte_pipeline_rte_atomic32_inc_and_test = ExternalFunction['rte_atomic32_inc_and_test', rte_atomic32_inc_and_test]
alias rte_pipeline_rte_atomic32_dec_and_test = ExternalFunction['rte_atomic32_dec_and_test', rte_atomic32_dec_and_test]
alias rte_pipeline_rte_atomic32_test_and_set = ExternalFunction['rte_atomic32_test_and_set', rte_atomic32_test_and_set]
alias rte_pipeline_rte_atomic32_clear = ExternalFunction['rte_atomic32_clear', rte_atomic32_clear]
alias rte_pipeline_rte_atomic64_cmpset = ExternalFunction['rte_atomic64_cmpset', rte_atomic64_cmpset]
alias rte_pipeline_rte_atomic64_exchange = ExternalFunction['rte_atomic64_exchange', rte_atomic64_exchange]
alias rte_pipeline_rte_atomic64_init = ExternalFunction['rte_atomic64_init', rte_atomic64_init]
alias rte_pipeline_rte_atomic64_read = ExternalFunction['rte_atomic64_read', rte_atomic64_read]
alias rte_pipeline_rte_atomic64_set = ExternalFunction['rte_atomic64_set', rte_atomic64_set]
alias rte_pipeline_rte_atomic64_add = ExternalFunction['rte_atomic64_add', rte_atomic64_add]
alias rte_pipeline_rte_atomic64_sub = ExternalFunction['rte_atomic64_sub', rte_atomic64_sub]
alias rte_pipeline_rte_atomic64_inc = ExternalFunction['rte_atomic64_inc', rte_atomic64_inc]
alias rte_pipeline_rte_atomic64_dec = ExternalFunction['rte_atomic64_dec', rte_atomic64_dec]
alias rte_pipeline_rte_atomic64_add_return = ExternalFunction['rte_atomic64_add_return', rte_atomic64_add_return]
alias rte_pipeline_rte_atomic64_sub_return = ExternalFunction['rte_atomic64_sub_return', rte_atomic64_sub_return]
alias rte_pipeline_rte_atomic64_inc_and_test = ExternalFunction['rte_atomic64_inc_and_test', rte_atomic64_inc_and_test]
alias rte_pipeline_rte_atomic64_dec_and_test = ExternalFunction['rte_atomic64_dec_and_test', rte_atomic64_dec_and_test]
alias rte_pipeline_rte_atomic64_test_and_set = ExternalFunction['rte_atomic64_test_and_set', rte_atomic64_test_and_set]
alias rte_pipeline_rte_atomic64_clear = ExternalFunction['rte_atomic64_clear', rte_atomic64_clear]
alias rte_pipeline_rte_openlog_stream = ExternalFunction['rte_openlog_stream', rte_openlog_stream]
alias rte_pipeline_rte_log_get_stream = ExternalFunction['rte_log_get_stream', rte_log_get_stream]
alias rte_pipeline_rte_log_set_global_level = ExternalFunction['rte_log_set_global_level', rte_log_set_global_level]
alias rte_pipeline_rte_log_get_global_level = ExternalFunction['rte_log_get_global_level', rte_log_get_global_level]
alias rte_pipeline_rte_log_get_level = ExternalFunction['rte_log_get_level', rte_log_get_level]
alias rte_pipeline_rte_log_can_log = ExternalFunction['rte_log_can_log', rte_log_can_log]
alias rte_pipeline_rte_log_set_level_pattern = ExternalFunction['rte_log_set_level_pattern', rte_log_set_level_pattern]
alias rte_pipeline_rte_log_set_level_regexp = ExternalFunction['rte_log_set_level_regexp', rte_log_set_level_regexp]
alias rte_pipeline_rte_log_set_level = ExternalFunction['rte_log_set_level', rte_log_set_level]
alias rte_pipeline_rte_log_cur_msg_loglevel = ExternalFunction['rte_log_cur_msg_loglevel', rte_log_cur_msg_loglevel]
alias rte_pipeline_rte_log_cur_msg_logtype = ExternalFunction['rte_log_cur_msg_logtype', rte_log_cur_msg_logtype]
alias rte_pipeline_rte_log_register = ExternalFunction['rte_log_register', rte_log_register]
alias rte_pipeline_rte_log_register_type_and_pick_level = ExternalFunction['rte_log_register_type_and_pick_level', rte_log_register_type_and_pick_level]
alias rte_pipeline_rte_log_list_types = ExternalFunction['rte_log_list_types', rte_log_list_types]
alias rte_pipeline_rte_log_dump = ExternalFunction['rte_log_dump', rte_log_dump]
alias rte_pipeline_rte_log = ExternalFunction['rte_log', rte_log]
alias rte_pipeline_rte_vlog = ExternalFunction['rte_vlog', rte_vlog]
alias rte_pipeline_rte_dump_stack = ExternalFunction['rte_dump_stack', rte_dump_stack]
alias rte_pipeline_rte_atomic128_cmp_exchange = ExternalFunction['rte_atomic128_cmp_exchange', rte_atomic128_cmp_exchange]
alias rte_pipeline_rte_pause = ExternalFunction['rte_pause', rte_pause]
alias rte_pipeline_rte_wait_until_equal_16 = ExternalFunction['rte_wait_until_equal_16', rte_wait_until_equal_16]
alias rte_pipeline_rte_wait_until_equal_32 = ExternalFunction['rte_wait_until_equal_32', rte_wait_until_equal_32]
alias rte_pipeline_rte_wait_until_equal_64 = ExternalFunction['rte_wait_until_equal_64', rte_wait_until_equal_64]
alias rte_pipeline_rte_spinlock_init = ExternalFunction['rte_spinlock_init', rte_spinlock_init]
alias rte_pipeline_rte_spinlock_lock = ExternalFunction['rte_spinlock_lock', rte_spinlock_lock]
alias rte_pipeline_rte_spinlock_unlock = ExternalFunction['rte_spinlock_unlock', rte_spinlock_unlock]
alias rte_pipeline_rte_spinlock_trylock = ExternalFunction['rte_spinlock_trylock', rte_spinlock_trylock]
alias rte_pipeline_rte_spinlock_is_locked = ExternalFunction['rte_spinlock_is_locked', rte_spinlock_is_locked]
alias rte_pipeline_rte_tm_supported = ExternalFunction['rte_tm_supported', rte_tm_supported]
alias rte_pipeline_rte_spinlock_lock_tm = ExternalFunction['rte_spinlock_lock_tm', rte_spinlock_lock_tm]
alias rte_pipeline_rte_spinlock_unlock_tm = ExternalFunction['rte_spinlock_unlock_tm', rte_spinlock_unlock_tm]
alias rte_pipeline_rte_spinlock_trylock_tm = ExternalFunction['rte_spinlock_trylock_tm', rte_spinlock_trylock_tm]
alias rte_pipeline_rte_spinlock_recursive_init = ExternalFunction['rte_spinlock_recursive_init', rte_spinlock_recursive_init]
alias rte_pipeline_rte_spinlock_recursive_lock = ExternalFunction['rte_spinlock_recursive_lock', rte_spinlock_recursive_lock]
alias rte_pipeline_rte_spinlock_recursive_unlock = ExternalFunction['rte_spinlock_recursive_unlock', rte_spinlock_recursive_unlock]
alias rte_pipeline_rte_spinlock_recursive_trylock = ExternalFunction['rte_spinlock_recursive_trylock', rte_spinlock_recursive_trylock]
alias rte_pipeline_rte_spinlock_recursive_lock_tm = ExternalFunction['rte_spinlock_recursive_lock_tm', rte_spinlock_recursive_lock_tm]
alias rte_pipeline_rte_spinlock_recursive_unlock_tm = ExternalFunction['rte_spinlock_recursive_unlock_tm', rte_spinlock_recursive_unlock_tm]
alias rte_pipeline_rte_spinlock_recursive_trylock_tm = ExternalFunction['rte_spinlock_recursive_trylock_tm', rte_spinlock_recursive_trylock_tm]
alias rte_pipeline_rte_bit_relaxed_get32 = ExternalFunction['rte_bit_relaxed_get32', rte_bit_relaxed_get32]
alias rte_pipeline_rte_bit_relaxed_set32 = ExternalFunction['rte_bit_relaxed_set32', rte_bit_relaxed_set32]
alias rte_pipeline_rte_bit_relaxed_clear32 = ExternalFunction['rte_bit_relaxed_clear32', rte_bit_relaxed_clear32]
alias rte_pipeline_rte_bit_relaxed_test_and_set32 = ExternalFunction['rte_bit_relaxed_test_and_set32', rte_bit_relaxed_test_and_set32]
alias rte_pipeline_rte_bit_relaxed_test_and_clear32 = ExternalFunction['rte_bit_relaxed_test_and_clear32', rte_bit_relaxed_test_and_clear32]
alias rte_pipeline_rte_bit_relaxed_get64 = ExternalFunction['rte_bit_relaxed_get64', rte_bit_relaxed_get64]
alias rte_pipeline_rte_bit_relaxed_set64 = ExternalFunction['rte_bit_relaxed_set64', rte_bit_relaxed_set64]
alias rte_pipeline_rte_bit_relaxed_clear64 = ExternalFunction['rte_bit_relaxed_clear64', rte_bit_relaxed_clear64]
alias rte_pipeline_rte_bit_relaxed_test_and_set64 = ExternalFunction['rte_bit_relaxed_test_and_set64', rte_bit_relaxed_test_and_set64]
alias rte_pipeline_rte_bit_relaxed_test_and_clear64 = ExternalFunction['rte_bit_relaxed_test_and_clear64', rte_bit_relaxed_test_and_clear64]
alias rte_pipeline_rte_clz32 = ExternalFunction['rte_clz32', rte_clz32]
alias rte_pipeline_rte_clz64 = ExternalFunction['rte_clz64', rte_clz64]
alias rte_pipeline_rte_ctz32 = ExternalFunction['rte_ctz32', rte_ctz32]
alias rte_pipeline_rte_ctz64 = ExternalFunction['rte_ctz64', rte_ctz64]
alias rte_pipeline_rte_popcount32 = ExternalFunction['rte_popcount32', rte_popcount32]
alias rte_pipeline_rte_popcount64 = ExternalFunction['rte_popcount64', rte_popcount64]
alias rte_pipeline_rte_ffs32 = ExternalFunction['rte_ffs32', rte_ffs32]
alias rte_pipeline_rte_ffs64 = ExternalFunction['rte_ffs64', rte_ffs64]
alias rte_pipeline_rte_combine32ms1b = ExternalFunction['rte_combine32ms1b', rte_combine32ms1b]
alias rte_pipeline_rte_combine64ms1b = ExternalFunction['rte_combine64ms1b', rte_combine64ms1b]
alias rte_pipeline_rte_bsf32 = ExternalFunction['rte_bsf32', rte_bsf32]
alias rte_pipeline_rte_bsf32_safe = ExternalFunction['rte_bsf32_safe', rte_bsf32_safe]
alias rte_pipeline_rte_bsf64 = ExternalFunction['rte_bsf64', rte_bsf64]
alias rte_pipeline_rte_bsf64_safe = ExternalFunction['rte_bsf64_safe', rte_bsf64_safe]
alias rte_pipeline_rte_fls_u32 = ExternalFunction['rte_fls_u32', rte_fls_u32]
alias rte_pipeline_rte_fls_u64 = ExternalFunction['rte_fls_u64', rte_fls_u64]
alias rte_pipeline_rte_is_power_of_2 = ExternalFunction['rte_is_power_of_2', rte_is_power_of_2]
alias rte_pipeline_rte_align32pow2 = ExternalFunction['rte_align32pow2', rte_align32pow2]
alias rte_pipeline_rte_align32prevpow2 = ExternalFunction['rte_align32prevpow2', rte_align32prevpow2]
alias rte_pipeline_rte_align64pow2 = ExternalFunction['rte_align64pow2', rte_align64pow2]
alias rte_pipeline_rte_align64prevpow2 = ExternalFunction['rte_align64prevpow2', rte_align64prevpow2]
alias rte_pipeline_rte_log2_u32 = ExternalFunction['rte_log2_u32', rte_log2_u32]
alias rte_pipeline_rte_log2_u64 = ExternalFunction['rte_log2_u64', rte_log2_u64]
alias rte_pipeline_rte_rwlock_init = ExternalFunction['rte_rwlock_init', rte_rwlock_init]
alias rte_pipeline_rte_rwlock_read_lock = ExternalFunction['rte_rwlock_read_lock', rte_rwlock_read_lock]
alias rte_pipeline_rte_rwlock_read_trylock = ExternalFunction['rte_rwlock_read_trylock', rte_rwlock_read_trylock]
alias rte_pipeline_rte_rwlock_read_unlock = ExternalFunction['rte_rwlock_read_unlock', rte_rwlock_read_unlock]
alias rte_pipeline_rte_rwlock_write_trylock = ExternalFunction['rte_rwlock_write_trylock', rte_rwlock_write_trylock]
alias rte_pipeline_rte_rwlock_write_lock = ExternalFunction['rte_rwlock_write_lock', rte_rwlock_write_lock]
alias rte_pipeline_rte_rwlock_write_unlock = ExternalFunction['rte_rwlock_write_unlock', rte_rwlock_write_unlock]
alias rte_pipeline_rte_rwlock_write_is_locked = ExternalFunction['rte_rwlock_write_is_locked', rte_rwlock_write_is_locked]
alias rte_pipeline_rte_rwlock_read_lock_tm = ExternalFunction['rte_rwlock_read_lock_tm', rte_rwlock_read_lock_tm]
alias rte_pipeline_rte_rwlock_read_unlock_tm = ExternalFunction['rte_rwlock_read_unlock_tm', rte_rwlock_read_unlock_tm]
alias rte_pipeline_rte_rwlock_write_lock_tm = ExternalFunction['rte_rwlock_write_lock_tm', rte_rwlock_write_lock_tm]
alias rte_pipeline_rte_rwlock_write_unlock_tm = ExternalFunction['rte_rwlock_write_unlock_tm', rte_rwlock_write_unlock_tm]
alias rte_pipeline_rte_mcfg_mem_get_lock = ExternalFunction['rte_mcfg_mem_get_lock', rte_mcfg_mem_get_lock]
alias rte_pipeline_rte_mcfg_tailq_get_lock = ExternalFunction['rte_mcfg_tailq_get_lock', rte_mcfg_tailq_get_lock]
alias rte_pipeline_rte_mcfg_mempool_get_lock = ExternalFunction['rte_mcfg_mempool_get_lock', rte_mcfg_mempool_get_lock]
alias rte_pipeline_rte_mcfg_timer_get_lock = ExternalFunction['rte_mcfg_timer_get_lock', rte_mcfg_timer_get_lock]
alias rte_pipeline_rte_mcfg_ethdev_get_lock = ExternalFunction['rte_mcfg_ethdev_get_lock', rte_mcfg_ethdev_get_lock]
alias rte_pipeline_rte_mcfg_mem_read_lock = ExternalFunction['rte_mcfg_mem_read_lock', rte_mcfg_mem_read_lock]
alias rte_pipeline_rte_mcfg_mem_read_unlock = ExternalFunction['rte_mcfg_mem_read_unlock', rte_mcfg_mem_read_unlock]
alias rte_pipeline_rte_mcfg_mem_write_lock = ExternalFunction['rte_mcfg_mem_write_lock', rte_mcfg_mem_write_lock]
alias rte_pipeline_rte_mcfg_mem_write_unlock = ExternalFunction['rte_mcfg_mem_write_unlock', rte_mcfg_mem_write_unlock]
alias rte_pipeline_rte_mcfg_tailq_read_lock = ExternalFunction['rte_mcfg_tailq_read_lock', rte_mcfg_tailq_read_lock]
alias rte_pipeline_rte_mcfg_tailq_read_unlock = ExternalFunction['rte_mcfg_tailq_read_unlock', rte_mcfg_tailq_read_unlock]
alias rte_pipeline_rte_mcfg_tailq_write_lock = ExternalFunction['rte_mcfg_tailq_write_lock', rte_mcfg_tailq_write_lock]
alias rte_pipeline_rte_mcfg_tailq_write_unlock = ExternalFunction['rte_mcfg_tailq_write_unlock', rte_mcfg_tailq_write_unlock]
alias rte_pipeline_rte_mcfg_mempool_read_lock = ExternalFunction['rte_mcfg_mempool_read_lock', rte_mcfg_mempool_read_lock]
alias rte_pipeline_rte_mcfg_mempool_read_unlock = ExternalFunction['rte_mcfg_mempool_read_unlock', rte_mcfg_mempool_read_unlock]
alias rte_pipeline_rte_mcfg_mempool_write_lock = ExternalFunction['rte_mcfg_mempool_write_lock', rte_mcfg_mempool_write_lock]
alias rte_pipeline_rte_mcfg_mempool_write_unlock = ExternalFunction['rte_mcfg_mempool_write_unlock', rte_mcfg_mempool_write_unlock]
alias rte_pipeline_rte_mcfg_timer_lock = ExternalFunction['rte_mcfg_timer_lock', rte_mcfg_timer_lock]
alias rte_pipeline_rte_mcfg_timer_unlock = ExternalFunction['rte_mcfg_timer_unlock', rte_mcfg_timer_unlock]
alias rte_pipeline_rte_mcfg_get_single_file_segments = ExternalFunction['rte_mcfg_get_single_file_segments', rte_mcfg_get_single_file_segments]
alias rte_pipeline_rte_fbarray_init = ExternalFunction['rte_fbarray_init', rte_fbarray_init]
alias rte_pipeline_rte_fbarray_attach = ExternalFunction['rte_fbarray_attach', rte_fbarray_attach]
alias rte_pipeline_rte_fbarray_destroy = ExternalFunction['rte_fbarray_destroy', rte_fbarray_destroy]
alias rte_pipeline_rte_fbarray_detach = ExternalFunction['rte_fbarray_detach', rte_fbarray_detach]
alias rte_pipeline_rte_fbarray_get = ExternalFunction['rte_fbarray_get', rte_fbarray_get]
alias rte_pipeline_rte_fbarray_find_idx = ExternalFunction['rte_fbarray_find_idx', rte_fbarray_find_idx]
alias rte_pipeline_rte_fbarray_set_used = ExternalFunction['rte_fbarray_set_used', rte_fbarray_set_used]
alias rte_pipeline_rte_fbarray_set_free = ExternalFunction['rte_fbarray_set_free', rte_fbarray_set_free]
alias rte_pipeline_rte_fbarray_is_used = ExternalFunction['rte_fbarray_is_used', rte_fbarray_is_used]
alias rte_pipeline_rte_fbarray_find_next_free = ExternalFunction['rte_fbarray_find_next_free', rte_fbarray_find_next_free]
alias rte_pipeline_rte_fbarray_find_next_used = ExternalFunction['rte_fbarray_find_next_used', rte_fbarray_find_next_used]
alias rte_pipeline_rte_fbarray_find_next_n_free = ExternalFunction['rte_fbarray_find_next_n_free', rte_fbarray_find_next_n_free]
alias rte_pipeline_rte_fbarray_find_next_n_used = ExternalFunction['rte_fbarray_find_next_n_used', rte_fbarray_find_next_n_used]
alias rte_pipeline_rte_fbarray_find_contig_free = ExternalFunction['rte_fbarray_find_contig_free', rte_fbarray_find_contig_free]
alias rte_pipeline_rte_fbarray_find_contig_used = ExternalFunction['rte_fbarray_find_contig_used', rte_fbarray_find_contig_used]
alias rte_pipeline_rte_fbarray_find_prev_free = ExternalFunction['rte_fbarray_find_prev_free', rte_fbarray_find_prev_free]
alias rte_pipeline_rte_fbarray_find_prev_used = ExternalFunction['rte_fbarray_find_prev_used', rte_fbarray_find_prev_used]
alias rte_pipeline_rte_fbarray_find_prev_n_free = ExternalFunction['rte_fbarray_find_prev_n_free', rte_fbarray_find_prev_n_free]
alias rte_pipeline_rte_fbarray_find_prev_n_used = ExternalFunction['rte_fbarray_find_prev_n_used', rte_fbarray_find_prev_n_used]
alias rte_pipeline_rte_fbarray_find_rev_contig_free = ExternalFunction['rte_fbarray_find_rev_contig_free', rte_fbarray_find_rev_contig_free]
alias rte_pipeline_rte_fbarray_find_rev_contig_used = ExternalFunction['rte_fbarray_find_rev_contig_used', rte_fbarray_find_rev_contig_used]
alias rte_pipeline_rte_fbarray_find_biggest_free = ExternalFunction['rte_fbarray_find_biggest_free', rte_fbarray_find_biggest_free]
alias rte_pipeline_rte_fbarray_find_biggest_used = ExternalFunction['rte_fbarray_find_biggest_used', rte_fbarray_find_biggest_used]
alias rte_pipeline_rte_fbarray_find_rev_biggest_free = ExternalFunction['rte_fbarray_find_rev_biggest_free', rte_fbarray_find_rev_biggest_free]
alias rte_pipeline_rte_fbarray_find_rev_biggest_used = ExternalFunction['rte_fbarray_find_rev_biggest_used', rte_fbarray_find_rev_biggest_used]
alias rte_pipeline_rte_fbarray_dump_metadata = ExternalFunction['rte_fbarray_dump_metadata', rte_fbarray_dump_metadata]
alias rte_pipeline_rte_mem_lock_page = ExternalFunction['rte_mem_lock_page', rte_mem_lock_page]
alias rte_pipeline_rte_mem_virt2phy = ExternalFunction['rte_mem_virt2phy', rte_mem_virt2phy]
alias rte_pipeline_rte_mem_virt2iova = ExternalFunction['rte_mem_virt2iova', rte_mem_virt2iova]
alias rte_pipeline_rte_mem_iova2virt = ExternalFunction['rte_mem_iova2virt', rte_mem_iova2virt]
alias rte_pipeline_rte_mem_virt2memseg = ExternalFunction['rte_mem_virt2memseg', rte_mem_virt2memseg]
alias rte_pipeline_rte_mem_virt2memseg_list = ExternalFunction['rte_mem_virt2memseg_list', rte_mem_virt2memseg_list]
alias rte_pipeline_rte_memseg_walk = ExternalFunction['rte_memseg_walk', rte_memseg_walk]
alias rte_pipeline_rte_memseg_contig_walk = ExternalFunction['rte_memseg_contig_walk', rte_memseg_contig_walk]
alias rte_pipeline_rte_memseg_list_walk = ExternalFunction['rte_memseg_list_walk', rte_memseg_list_walk]
alias rte_pipeline_rte_memseg_walk_thread_unsafe = ExternalFunction['rte_memseg_walk_thread_unsafe', rte_memseg_walk_thread_unsafe]
alias rte_pipeline_rte_memseg_contig_walk_thread_unsafe = ExternalFunction['rte_memseg_contig_walk_thread_unsafe', rte_memseg_contig_walk_thread_unsafe]
alias rte_pipeline_rte_memseg_list_walk_thread_unsafe = ExternalFunction['rte_memseg_list_walk_thread_unsafe', rte_memseg_list_walk_thread_unsafe]
alias rte_pipeline_rte_memseg_get_fd = ExternalFunction['rte_memseg_get_fd', rte_memseg_get_fd]
alias rte_pipeline_rte_memseg_get_fd_thread_unsafe = ExternalFunction['rte_memseg_get_fd_thread_unsafe', rte_memseg_get_fd_thread_unsafe]
alias rte_pipeline_rte_memseg_get_fd_offset = ExternalFunction['rte_memseg_get_fd_offset', rte_memseg_get_fd_offset]
alias rte_pipeline_rte_memseg_get_fd_offset_thread_unsafe = ExternalFunction['rte_memseg_get_fd_offset_thread_unsafe', rte_memseg_get_fd_offset_thread_unsafe]
alias rte_pipeline_rte_extmem_register = ExternalFunction['rte_extmem_register', rte_extmem_register]
alias rte_pipeline_rte_extmem_unregister = ExternalFunction['rte_extmem_unregister', rte_extmem_unregister]
alias rte_pipeline_rte_extmem_attach = ExternalFunction['rte_extmem_attach', rte_extmem_attach]
alias rte_pipeline_rte_extmem_detach = ExternalFunction['rte_extmem_detach', rte_extmem_detach]
alias rte_pipeline_rte_dump_physmem_layout = ExternalFunction['rte_dump_physmem_layout', rte_dump_physmem_layout]
alias rte_pipeline_rte_eal_get_physmem_size = ExternalFunction['rte_eal_get_physmem_size', rte_eal_get_physmem_size]
alias rte_pipeline_rte_memory_get_nchannel = ExternalFunction['rte_memory_get_nchannel', rte_memory_get_nchannel]
alias rte_pipeline_rte_memory_get_nrank = ExternalFunction['rte_memory_get_nrank', rte_memory_get_nrank]
alias rte_pipeline_rte_mem_check_dma_mask = ExternalFunction['rte_mem_check_dma_mask', rte_mem_check_dma_mask]
alias rte_pipeline_rte_mem_check_dma_mask_thread_unsafe = ExternalFunction['rte_mem_check_dma_mask_thread_unsafe', rte_mem_check_dma_mask_thread_unsafe]
alias rte_pipeline_rte_mem_set_dma_mask = ExternalFunction['rte_mem_set_dma_mask', rte_mem_set_dma_mask]
alias rte_pipeline_rte_eal_using_phys_addrs = ExternalFunction['rte_eal_using_phys_addrs', rte_eal_using_phys_addrs]
alias rte_pipeline_rte_mem_event_callback_register = ExternalFunction['rte_mem_event_callback_register', rte_mem_event_callback_register]
alias rte_pipeline_rte_mem_event_callback_unregister = ExternalFunction['rte_mem_event_callback_unregister', rte_mem_event_callback_unregister]
alias rte_pipeline_rte_mem_alloc_validator_register = ExternalFunction['rte_mem_alloc_validator_register', rte_mem_alloc_validator_register]
alias rte_pipeline_rte_mem_alloc_validator_unregister = ExternalFunction['rte_mem_alloc_validator_unregister', rte_mem_alloc_validator_unregister]
alias rte_pipeline_rte_memzero_explicit = ExternalFunction['rte_memzero_explicit', rte_memzero_explicit]
alias rte_pipeline_rte_memzone_max_set = ExternalFunction['rte_memzone_max_set', rte_memzone_max_set]
alias rte_pipeline_rte_memzone_max_get = ExternalFunction['rte_memzone_max_get', rte_memzone_max_get]
alias rte_pipeline_rte_memzone_reserve = ExternalFunction['rte_memzone_reserve', rte_memzone_reserve]
alias rte_pipeline_rte_memzone_reserve_aligned = ExternalFunction['rte_memzone_reserve_aligned', rte_memzone_reserve_aligned]
alias rte_pipeline_rte_memzone_reserve_bounded = ExternalFunction['rte_memzone_reserve_bounded', rte_memzone_reserve_bounded]
alias rte_pipeline_rte_memzone_free = ExternalFunction['rte_memzone_free', rte_memzone_free]
alias rte_pipeline_rte_memzone_lookup = ExternalFunction['rte_memzone_lookup', rte_memzone_lookup]
alias rte_pipeline_rte_memzone_dump = ExternalFunction['rte_memzone_dump', rte_memzone_dump]
alias rte_pipeline_rte_memzone_walk = ExternalFunction['rte_memzone_walk', rte_memzone_walk]
alias rte_pipeline_rte_ring_get_memsize_elem = ExternalFunction['rte_ring_get_memsize_elem', rte_ring_get_memsize_elem]
alias rte_pipeline_rte_ring_create_elem = ExternalFunction['rte_ring_create_elem', rte_ring_create_elem]
alias rte_pipeline_rte_ring_mp_enqueue_bulk_elem = ExternalFunction['rte_ring_mp_enqueue_bulk_elem', rte_ring_mp_enqueue_bulk_elem]
alias rte_pipeline_rte_ring_sp_enqueue_bulk_elem = ExternalFunction['rte_ring_sp_enqueue_bulk_elem', rte_ring_sp_enqueue_bulk_elem]
alias rte_pipeline_rte_ring_mp_hts_enqueue_bulk_elem = ExternalFunction['rte_ring_mp_hts_enqueue_bulk_elem', rte_ring_mp_hts_enqueue_bulk_elem]
alias rte_pipeline_rte_ring_mc_hts_dequeue_bulk_elem = ExternalFunction['rte_ring_mc_hts_dequeue_bulk_elem', rte_ring_mc_hts_dequeue_bulk_elem]
alias rte_pipeline_rte_ring_mp_hts_enqueue_burst_elem = ExternalFunction['rte_ring_mp_hts_enqueue_burst_elem', rte_ring_mp_hts_enqueue_burst_elem]
alias rte_pipeline_rte_ring_mc_hts_dequeue_burst_elem = ExternalFunction['rte_ring_mc_hts_dequeue_burst_elem', rte_ring_mc_hts_dequeue_burst_elem]
alias rte_pipeline_rte_ring_mp_hts_enqueue_bulk = ExternalFunction['rte_ring_mp_hts_enqueue_bulk', rte_ring_mp_hts_enqueue_bulk]
alias rte_pipeline_rte_ring_mc_hts_dequeue_bulk = ExternalFunction['rte_ring_mc_hts_dequeue_bulk', rte_ring_mc_hts_dequeue_bulk]
alias rte_pipeline_rte_ring_mp_hts_enqueue_burst = ExternalFunction['rte_ring_mp_hts_enqueue_burst', rte_ring_mp_hts_enqueue_burst]
alias rte_pipeline_rte_ring_mc_hts_dequeue_burst = ExternalFunction['rte_ring_mc_hts_dequeue_burst', rte_ring_mc_hts_dequeue_burst]
alias rte_pipeline_rte_ring_mp_rts_enqueue_bulk_elem = ExternalFunction['rte_ring_mp_rts_enqueue_bulk_elem', rte_ring_mp_rts_enqueue_bulk_elem]
alias rte_pipeline_rte_ring_mc_rts_dequeue_bulk_elem = ExternalFunction['rte_ring_mc_rts_dequeue_bulk_elem', rte_ring_mc_rts_dequeue_bulk_elem]
alias rte_pipeline_rte_ring_mp_rts_enqueue_burst_elem = ExternalFunction['rte_ring_mp_rts_enqueue_burst_elem', rte_ring_mp_rts_enqueue_burst_elem]
alias rte_pipeline_rte_ring_mc_rts_dequeue_burst_elem = ExternalFunction['rte_ring_mc_rts_dequeue_burst_elem', rte_ring_mc_rts_dequeue_burst_elem]
alias rte_pipeline_rte_ring_mp_rts_enqueue_bulk = ExternalFunction['rte_ring_mp_rts_enqueue_bulk', rte_ring_mp_rts_enqueue_bulk]
alias rte_pipeline_rte_ring_mc_rts_dequeue_bulk = ExternalFunction['rte_ring_mc_rts_dequeue_bulk', rte_ring_mc_rts_dequeue_bulk]
alias rte_pipeline_rte_ring_mp_rts_enqueue_burst = ExternalFunction['rte_ring_mp_rts_enqueue_burst', rte_ring_mp_rts_enqueue_burst]
alias rte_pipeline_rte_ring_mc_rts_dequeue_burst = ExternalFunction['rte_ring_mc_rts_dequeue_burst', rte_ring_mc_rts_dequeue_burst]
alias rte_pipeline_rte_ring_get_prod_htd_max = ExternalFunction['rte_ring_get_prod_htd_max', rte_ring_get_prod_htd_max]
alias rte_pipeline_rte_ring_set_prod_htd_max = ExternalFunction['rte_ring_set_prod_htd_max', rte_ring_set_prod_htd_max]
alias rte_pipeline_rte_ring_get_cons_htd_max = ExternalFunction['rte_ring_get_cons_htd_max', rte_ring_get_cons_htd_max]
alias rte_pipeline_rte_ring_set_cons_htd_max = ExternalFunction['rte_ring_set_cons_htd_max', rte_ring_set_cons_htd_max]
alias rte_pipeline_rte_ring_enqueue_bulk_elem = ExternalFunction['rte_ring_enqueue_bulk_elem', rte_ring_enqueue_bulk_elem]
alias rte_pipeline_rte_ring_mp_enqueue_elem = ExternalFunction['rte_ring_mp_enqueue_elem', rte_ring_mp_enqueue_elem]
alias rte_pipeline_rte_ring_sp_enqueue_elem = ExternalFunction['rte_ring_sp_enqueue_elem', rte_ring_sp_enqueue_elem]
alias rte_pipeline_rte_ring_enqueue_elem = ExternalFunction['rte_ring_enqueue_elem', rte_ring_enqueue_elem]
alias rte_pipeline_rte_ring_mc_dequeue_bulk_elem = ExternalFunction['rte_ring_mc_dequeue_bulk_elem', rte_ring_mc_dequeue_bulk_elem]
alias rte_pipeline_rte_ring_sc_dequeue_bulk_elem = ExternalFunction['rte_ring_sc_dequeue_bulk_elem', rte_ring_sc_dequeue_bulk_elem]
alias rte_pipeline_rte_ring_dequeue_bulk_elem = ExternalFunction['rte_ring_dequeue_bulk_elem', rte_ring_dequeue_bulk_elem]
alias rte_pipeline_rte_ring_mc_dequeue_elem = ExternalFunction['rte_ring_mc_dequeue_elem', rte_ring_mc_dequeue_elem]
alias rte_pipeline_rte_ring_sc_dequeue_elem = ExternalFunction['rte_ring_sc_dequeue_elem', rte_ring_sc_dequeue_elem]
alias rte_pipeline_rte_ring_dequeue_elem = ExternalFunction['rte_ring_dequeue_elem', rte_ring_dequeue_elem]
alias rte_pipeline_rte_ring_mp_enqueue_burst_elem = ExternalFunction['rte_ring_mp_enqueue_burst_elem', rte_ring_mp_enqueue_burst_elem]
alias rte_pipeline_rte_ring_sp_enqueue_burst_elem = ExternalFunction['rte_ring_sp_enqueue_burst_elem', rte_ring_sp_enqueue_burst_elem]
alias rte_pipeline_rte_ring_enqueue_burst_elem = ExternalFunction['rte_ring_enqueue_burst_elem', rte_ring_enqueue_burst_elem]
alias rte_pipeline_rte_ring_mc_dequeue_burst_elem = ExternalFunction['rte_ring_mc_dequeue_burst_elem', rte_ring_mc_dequeue_burst_elem]
alias rte_pipeline_rte_ring_sc_dequeue_burst_elem = ExternalFunction['rte_ring_sc_dequeue_burst_elem', rte_ring_sc_dequeue_burst_elem]
alias rte_pipeline_rte_ring_dequeue_burst_elem = ExternalFunction['rte_ring_dequeue_burst_elem', rte_ring_dequeue_burst_elem]
alias rte_pipeline_rte_ring_enqueue_bulk_elem_start = ExternalFunction['rte_ring_enqueue_bulk_elem_start', rte_ring_enqueue_bulk_elem_start]
alias rte_pipeline_rte_ring_enqueue_bulk_start = ExternalFunction['rte_ring_enqueue_bulk_start', rte_ring_enqueue_bulk_start]
alias rte_pipeline_rte_ring_enqueue_burst_elem_start = ExternalFunction['rte_ring_enqueue_burst_elem_start', rte_ring_enqueue_burst_elem_start]
alias rte_pipeline_rte_ring_enqueue_burst_start = ExternalFunction['rte_ring_enqueue_burst_start', rte_ring_enqueue_burst_start]
alias rte_pipeline_rte_ring_enqueue_elem_finish = ExternalFunction['rte_ring_enqueue_elem_finish', rte_ring_enqueue_elem_finish]
alias rte_pipeline_rte_ring_enqueue_finish = ExternalFunction['rte_ring_enqueue_finish', rte_ring_enqueue_finish]
alias rte_pipeline_rte_ring_dequeue_bulk_elem_start = ExternalFunction['rte_ring_dequeue_bulk_elem_start', rte_ring_dequeue_bulk_elem_start]
alias rte_pipeline_rte_ring_dequeue_bulk_start = ExternalFunction['rte_ring_dequeue_bulk_start', rte_ring_dequeue_bulk_start]
alias rte_pipeline_rte_ring_dequeue_burst_elem_start = ExternalFunction['rte_ring_dequeue_burst_elem_start', rte_ring_dequeue_burst_elem_start]
alias rte_pipeline_rte_ring_dequeue_burst_start = ExternalFunction['rte_ring_dequeue_burst_start', rte_ring_dequeue_burst_start]
alias rte_pipeline_rte_ring_dequeue_elem_finish = ExternalFunction['rte_ring_dequeue_elem_finish', rte_ring_dequeue_elem_finish]
alias rte_pipeline_rte_ring_dequeue_finish = ExternalFunction['rte_ring_dequeue_finish', rte_ring_dequeue_finish]
alias rte_pipeline_rte_ring_enqueue_zc_bulk_elem_start = ExternalFunction['rte_ring_enqueue_zc_bulk_elem_start', rte_ring_enqueue_zc_bulk_elem_start]
alias rte_pipeline_rte_ring_enqueue_zc_bulk_start = ExternalFunction['rte_ring_enqueue_zc_bulk_start', rte_ring_enqueue_zc_bulk_start]
alias rte_pipeline_rte_ring_enqueue_zc_burst_elem_start = ExternalFunction['rte_ring_enqueue_zc_burst_elem_start', rte_ring_enqueue_zc_burst_elem_start]
alias rte_pipeline_rte_ring_enqueue_zc_burst_start = ExternalFunction['rte_ring_enqueue_zc_burst_start', rte_ring_enqueue_zc_burst_start]
alias rte_pipeline_rte_ring_enqueue_zc_elem_finish = ExternalFunction['rte_ring_enqueue_zc_elem_finish', rte_ring_enqueue_zc_elem_finish]
alias rte_pipeline_rte_ring_enqueue_zc_finish = ExternalFunction['rte_ring_enqueue_zc_finish', rte_ring_enqueue_zc_finish]
alias rte_pipeline_rte_ring_dequeue_zc_bulk_elem_start = ExternalFunction['rte_ring_dequeue_zc_bulk_elem_start', rte_ring_dequeue_zc_bulk_elem_start]
alias rte_pipeline_rte_ring_dequeue_zc_bulk_start = ExternalFunction['rte_ring_dequeue_zc_bulk_start', rte_ring_dequeue_zc_bulk_start]
alias rte_pipeline_rte_ring_dequeue_zc_burst_elem_start = ExternalFunction['rte_ring_dequeue_zc_burst_elem_start', rte_ring_dequeue_zc_burst_elem_start]
alias rte_pipeline_rte_ring_dequeue_zc_burst_start = ExternalFunction['rte_ring_dequeue_zc_burst_start', rte_ring_dequeue_zc_burst_start]
alias rte_pipeline_rte_ring_dequeue_zc_elem_finish = ExternalFunction['rte_ring_dequeue_zc_elem_finish', rte_ring_dequeue_zc_elem_finish]
alias rte_pipeline_rte_ring_dequeue_zc_finish = ExternalFunction['rte_ring_dequeue_zc_finish', rte_ring_dequeue_zc_finish]
alias rte_pipeline_rte_ring_get_memsize = ExternalFunction['rte_ring_get_memsize', rte_ring_get_memsize]
alias rte_pipeline_rte_ring_init = ExternalFunction['rte_ring_init', rte_ring_init]
alias rte_pipeline_rte_ring_free = ExternalFunction['rte_ring_free', rte_ring_free]
alias rte_pipeline_rte_ring_create = ExternalFunction['rte_ring_create', rte_ring_create]
alias rte_pipeline_rte_ring_dump = ExternalFunction['rte_ring_dump', rte_ring_dump]
alias rte_pipeline_rte_ring_headtail_dump = ExternalFunction['rte_ring_headtail_dump', rte_ring_headtail_dump]
alias rte_pipeline_rte_ring_mp_enqueue_bulk = ExternalFunction['rte_ring_mp_enqueue_bulk', rte_ring_mp_enqueue_bulk]
alias rte_pipeline_rte_ring_sp_enqueue_bulk = ExternalFunction['rte_ring_sp_enqueue_bulk', rte_ring_sp_enqueue_bulk]
alias rte_pipeline_rte_ring_enqueue_bulk = ExternalFunction['rte_ring_enqueue_bulk', rte_ring_enqueue_bulk]
alias rte_pipeline_rte_ring_mp_enqueue = ExternalFunction['rte_ring_mp_enqueue', rte_ring_mp_enqueue]
alias rte_pipeline_rte_ring_sp_enqueue = ExternalFunction['rte_ring_sp_enqueue', rte_ring_sp_enqueue]
alias rte_pipeline_rte_ring_enqueue = ExternalFunction['rte_ring_enqueue', rte_ring_enqueue]
alias rte_pipeline_rte_ring_mc_dequeue_bulk = ExternalFunction['rte_ring_mc_dequeue_bulk', rte_ring_mc_dequeue_bulk]
alias rte_pipeline_rte_ring_sc_dequeue_bulk = ExternalFunction['rte_ring_sc_dequeue_bulk', rte_ring_sc_dequeue_bulk]
alias rte_pipeline_rte_ring_dequeue_bulk = ExternalFunction['rte_ring_dequeue_bulk', rte_ring_dequeue_bulk]
alias rte_pipeline_rte_ring_mc_dequeue = ExternalFunction['rte_ring_mc_dequeue', rte_ring_mc_dequeue]
alias rte_pipeline_rte_ring_sc_dequeue = ExternalFunction['rte_ring_sc_dequeue', rte_ring_sc_dequeue]
alias rte_pipeline_rte_ring_dequeue = ExternalFunction['rte_ring_dequeue', rte_ring_dequeue]
alias rte_pipeline_rte_ring_reset = ExternalFunction['rte_ring_reset', rte_ring_reset]
alias rte_pipeline_rte_ring_count = ExternalFunction['rte_ring_count', rte_ring_count]
alias rte_pipeline_rte_ring_free_count = ExternalFunction['rte_ring_free_count', rte_ring_free_count]
alias rte_pipeline_rte_ring_full = ExternalFunction['rte_ring_full', rte_ring_full]
alias rte_pipeline_rte_ring_empty = ExternalFunction['rte_ring_empty', rte_ring_empty]
alias rte_pipeline_rte_ring_get_size = ExternalFunction['rte_ring_get_size', rte_ring_get_size]
alias rte_pipeline_rte_ring_get_capacity = ExternalFunction['rte_ring_get_capacity', rte_ring_get_capacity]
alias rte_pipeline_rte_ring_get_prod_sync_type = ExternalFunction['rte_ring_get_prod_sync_type', rte_ring_get_prod_sync_type]
alias rte_pipeline_rte_ring_is_prod_single = ExternalFunction['rte_ring_is_prod_single', rte_ring_is_prod_single]
alias rte_pipeline_rte_ring_get_cons_sync_type = ExternalFunction['rte_ring_get_cons_sync_type', rte_ring_get_cons_sync_type]
alias rte_pipeline_rte_ring_is_cons_single = ExternalFunction['rte_ring_is_cons_single', rte_ring_is_cons_single]
alias rte_pipeline_rte_ring_list_dump = ExternalFunction['rte_ring_list_dump', rte_ring_list_dump]
alias rte_pipeline_rte_ring_lookup = ExternalFunction['rte_ring_lookup', rte_ring_lookup]
alias rte_pipeline_rte_ring_mp_enqueue_burst = ExternalFunction['rte_ring_mp_enqueue_burst', rte_ring_mp_enqueue_burst]
alias rte_pipeline_rte_ring_sp_enqueue_burst = ExternalFunction['rte_ring_sp_enqueue_burst', rte_ring_sp_enqueue_burst]
alias rte_pipeline_rte_ring_enqueue_burst = ExternalFunction['rte_ring_enqueue_burst', rte_ring_enqueue_burst]
alias rte_pipeline_rte_ring_mc_dequeue_burst = ExternalFunction['rte_ring_mc_dequeue_burst', rte_ring_mc_dequeue_burst]
alias rte_pipeline_rte_ring_sc_dequeue_burst = ExternalFunction['rte_ring_sc_dequeue_burst', rte_ring_sc_dequeue_burst]
alias rte_pipeline_rte_ring_dequeue_burst = ExternalFunction['rte_ring_dequeue_burst', rte_ring_dequeue_burst]
alias rte_pipeline_rte_mov16 = ExternalFunction['rte_mov16', rte_mov16]
alias rte_pipeline_rte_mov32 = ExternalFunction['rte_mov32', rte_mov32]
alias rte_pipeline_rte_mov64 = ExternalFunction['rte_mov64', rte_mov64]
alias rte_pipeline_rte_mov128 = ExternalFunction['rte_mov128', rte_mov128]
alias rte_pipeline_rte_mov256 = ExternalFunction['rte_mov256', rte_mov256]
alias rte_pipeline_rte_mov48 = ExternalFunction['rte_mov48', rte_mov48]
alias rte_pipeline_rte_get_tsc_hz = ExternalFunction['rte_get_tsc_hz', rte_get_tsc_hz]
alias rte_pipeline_rte_get_tsc_cycles = ExternalFunction['rte_get_tsc_cycles', rte_get_tsc_cycles]
alias rte_pipeline_rte_get_timer_cycles = ExternalFunction['rte_get_timer_cycles', rte_get_timer_cycles]
alias rte_pipeline_rte_get_timer_hz = ExternalFunction['rte_get_timer_hz', rte_get_timer_hz]
alias rte_pipeline_rte_delay_ms = ExternalFunction['rte_delay_ms', rte_delay_ms]
alias rte_pipeline_rte_delay_us_block = ExternalFunction['rte_delay_us_block', rte_delay_us_block]
alias rte_pipeline_rte_delay_us_sleep = ExternalFunction['rte_delay_us_sleep', rte_delay_us_sleep]
alias rte_pipeline_rte_delay_us_callback_register = ExternalFunction['rte_delay_us_callback_register', rte_delay_us_callback_register]
alias rte_pipeline_rte_rdtsc = ExternalFunction['rte_rdtsc', rte_rdtsc]
alias rte_pipeline_rte_rdtsc_precise = ExternalFunction['rte_rdtsc_precise', rte_rdtsc_precise]
alias rte_pipeline_isalnum = ExternalFunction['isalnum', isalnum]
alias rte_pipeline_isalpha = ExternalFunction['isalpha', isalpha]
alias rte_pipeline_iscntrl = ExternalFunction['iscntrl', iscntrl]
alias rte_pipeline_isdigit = ExternalFunction['isdigit', isdigit]
alias rte_pipeline_islower = ExternalFunction['islower', islower]
alias rte_pipeline_isgraph = ExternalFunction['isgraph', isgraph]
alias rte_pipeline_isprint = ExternalFunction['isprint', isprint]
alias rte_pipeline_ispunct = ExternalFunction['ispunct', ispunct]
alias rte_pipeline_isspace = ExternalFunction['isspace', isspace]
alias rte_pipeline_isupper = ExternalFunction['isupper', isupper]
alias rte_pipeline_isxdigit = ExternalFunction['isxdigit', isxdigit]
alias rte_pipeline_tolower = ExternalFunction['tolower', tolower]
alias rte_pipeline_toupper = ExternalFunction['toupper', toupper]
alias rte_pipeline_isblank = ExternalFunction['isblank', isblank]
alias rte_pipeline_isascii = ExternalFunction['isascii', isascii]
alias rte_pipeline_toascii = ExternalFunction['toascii', toascii]
alias rte_pipeline_isalnum_l = ExternalFunction['isalnum_l', isalnum_l]
alias rte_pipeline_isalpha_l = ExternalFunction['isalpha_l', isalpha_l]
alias rte_pipeline_iscntrl_l = ExternalFunction['iscntrl_l', iscntrl_l]
alias rte_pipeline_isdigit_l = ExternalFunction['isdigit_l', isdigit_l]
alias rte_pipeline_islower_l = ExternalFunction['islower_l', islower_l]
alias rte_pipeline_isgraph_l = ExternalFunction['isgraph_l', isgraph_l]
alias rte_pipeline_isprint_l = ExternalFunction['isprint_l', isprint_l]
alias rte_pipeline_ispunct_l = ExternalFunction['ispunct_l', ispunct_l]
alias rte_pipeline_isspace_l = ExternalFunction['isspace_l', isspace_l]
alias rte_pipeline_isupper_l = ExternalFunction['isupper_l', isupper_l]
alias rte_pipeline_isxdigit_l = ExternalFunction['isxdigit_l', isxdigit_l]
alias rte_pipeline_isblank_l = ExternalFunction['isblank_l', isblank_l]
alias rte_pipeline_tolower_l = ExternalFunction['tolower_l', tolower_l]
alias rte_pipeline_toupper_l = ExternalFunction['toupper_l', toupper_l]
alias rte_pipeline_rte_strsplit = ExternalFunction['rte_strsplit', rte_strsplit]
alias rte_pipeline_rte_strlcpy = ExternalFunction['rte_strlcpy', rte_strlcpy]
alias rte_pipeline_rte_strlcat = ExternalFunction['rte_strlcat', rte_strlcat]
alias rte_pipeline_rte_strscpy = ExternalFunction['rte_strscpy', rte_strscpy]
alias rte_pipeline_rte_str_skip_leading_spaces = ExternalFunction['rte_str_skip_leading_spaces', rte_str_skip_leading_spaces]
alias rte_pipeline_rte_trace_is_enabled = ExternalFunction['rte_trace_is_enabled', rte_trace_is_enabled]
alias rte_pipeline_rte_trace_feature_is_enabled = ExternalFunction['rte_trace_feature_is_enabled', rte_trace_feature_is_enabled]
alias rte_pipeline_rte_trace_mode_set = ExternalFunction['rte_trace_mode_set', rte_trace_mode_set]
alias rte_pipeline_rte_trace_mode_get = ExternalFunction['rte_trace_mode_get', rte_trace_mode_get]
alias rte_pipeline_rte_trace_pattern = ExternalFunction['rte_trace_pattern', rte_trace_pattern]
alias rte_pipeline_rte_trace_regexp = ExternalFunction['rte_trace_regexp', rte_trace_regexp]
alias rte_pipeline_rte_trace_save = ExternalFunction['rte_trace_save', rte_trace_save]
alias rte_pipeline_rte_trace_metadata_dump = ExternalFunction['rte_trace_metadata_dump', rte_trace_metadata_dump]
alias rte_pipeline_rte_trace_dump = ExternalFunction['rte_trace_dump', rte_trace_dump]
alias rte_pipeline_rte_trace_point_enable = ExternalFunction['rte_trace_point_enable', rte_trace_point_enable]
alias rte_pipeline_rte_trace_point_disable = ExternalFunction['rte_trace_point_disable', rte_trace_point_disable]
alias rte_pipeline_rte_trace_point_is_enabled = ExternalFunction['rte_trace_point_is_enabled', rte_trace_point_is_enabled]
alias rte_pipeline_rte_trace_point_lookup = ExternalFunction['rte_trace_point_lookup', rte_trace_point_lookup]
alias rte_pipeline_rte_mempool_trace_ops_dequeue_bulk = ExternalFunction['rte_mempool_trace_ops_dequeue_bulk', rte_mempool_trace_ops_dequeue_bulk]
alias rte_pipeline_rte_mempool_trace_ops_dequeue_contig_blocks = ExternalFunction['rte_mempool_trace_ops_dequeue_contig_blocks', rte_mempool_trace_ops_dequeue_contig_blocks]
alias rte_pipeline_rte_mempool_trace_ops_enqueue_bulk = ExternalFunction['rte_mempool_trace_ops_enqueue_bulk', rte_mempool_trace_ops_enqueue_bulk]
alias rte_pipeline_rte_mempool_trace_generic_put = ExternalFunction['rte_mempool_trace_generic_put', rte_mempool_trace_generic_put]
alias rte_pipeline_rte_mempool_trace_put_bulk = ExternalFunction['rte_mempool_trace_put_bulk', rte_mempool_trace_put_bulk]
alias rte_pipeline_rte_mempool_trace_generic_get = ExternalFunction['rte_mempool_trace_generic_get', rte_mempool_trace_generic_get]
alias rte_pipeline_rte_mempool_trace_get_bulk = ExternalFunction['rte_mempool_trace_get_bulk', rte_mempool_trace_get_bulk]
alias rte_pipeline_rte_mempool_trace_get_contig_blocks = ExternalFunction['rte_mempool_trace_get_contig_blocks', rte_mempool_trace_get_contig_blocks]
alias rte_pipeline_rte_mempool_trace_default_cache = ExternalFunction['rte_mempool_trace_default_cache', rte_mempool_trace_default_cache]
alias rte_pipeline_rte_mempool_trace_cache_flush = ExternalFunction['rte_mempool_trace_cache_flush', rte_mempool_trace_cache_flush]
alias rte_pipeline_rte_mempool_get_header = ExternalFunction['rte_mempool_get_header', rte_mempool_get_header]
alias rte_pipeline_rte_mempool_from_obj = ExternalFunction['rte_mempool_from_obj', rte_mempool_from_obj]
alias rte_pipeline_rte_mempool_get_trailer = ExternalFunction['rte_mempool_get_trailer', rte_mempool_get_trailer]
alias rte_pipeline_rte_mempool_check_cookies = ExternalFunction['rte_mempool_check_cookies', rte_mempool_check_cookies]
alias rte_pipeline_rte_mempool_contig_blocks_check_cookies = ExternalFunction['rte_mempool_contig_blocks_check_cookies', rte_mempool_contig_blocks_check_cookies]
alias rte_pipeline_rte_mempool_op_calc_mem_size_helper = ExternalFunction['rte_mempool_op_calc_mem_size_helper', rte_mempool_op_calc_mem_size_helper]
alias rte_pipeline_rte_mempool_op_calc_mem_size_default = ExternalFunction['rte_mempool_op_calc_mem_size_default', rte_mempool_op_calc_mem_size_default]
alias rte_pipeline_rte_mempool_op_populate_helper = ExternalFunction['rte_mempool_op_populate_helper', rte_mempool_op_populate_helper]
alias rte_pipeline_rte_mempool_op_populate_default = ExternalFunction['rte_mempool_op_populate_default', rte_mempool_op_populate_default]
alias rte_pipeline_rte_mempool_get_ops = ExternalFunction['rte_mempool_get_ops', rte_mempool_get_ops]
alias rte_pipeline_rte_mempool_ops_alloc = ExternalFunction['rte_mempool_ops_alloc', rte_mempool_ops_alloc]
alias rte_pipeline_rte_mempool_ops_dequeue_bulk = ExternalFunction['rte_mempool_ops_dequeue_bulk', rte_mempool_ops_dequeue_bulk]
alias rte_pipeline_rte_mempool_ops_dequeue_contig_blocks = ExternalFunction['rte_mempool_ops_dequeue_contig_blocks', rte_mempool_ops_dequeue_contig_blocks]
alias rte_pipeline_rte_mempool_ops_enqueue_bulk = ExternalFunction['rte_mempool_ops_enqueue_bulk', rte_mempool_ops_enqueue_bulk]
alias rte_pipeline_rte_mempool_ops_get_count = ExternalFunction['rte_mempool_ops_get_count', rte_mempool_ops_get_count]
alias rte_pipeline_rte_mempool_ops_calc_mem_size = ExternalFunction['rte_mempool_ops_calc_mem_size', rte_mempool_ops_calc_mem_size]
alias rte_pipeline_rte_mempool_ops_populate = ExternalFunction['rte_mempool_ops_populate', rte_mempool_ops_populate]
alias rte_pipeline_rte_mempool_ops_get_info = ExternalFunction['rte_mempool_ops_get_info', rte_mempool_ops_get_info]
alias rte_pipeline_rte_mempool_ops_free = ExternalFunction['rte_mempool_ops_free', rte_mempool_ops_free]
alias rte_pipeline_rte_mempool_set_ops_byname = ExternalFunction['rte_mempool_set_ops_byname', rte_mempool_set_ops_byname]
alias rte_pipeline_rte_mempool_register_ops = ExternalFunction['rte_mempool_register_ops', rte_mempool_register_ops]
alias rte_pipeline_rte_mempool_free = ExternalFunction['rte_mempool_free', rte_mempool_free]
alias rte_pipeline_rte_mempool_create = ExternalFunction['rte_mempool_create', rte_mempool_create]
alias rte_pipeline_rte_mempool_create_empty = ExternalFunction['rte_mempool_create_empty', rte_mempool_create_empty]
alias rte_pipeline_rte_mempool_populate_iova = ExternalFunction['rte_mempool_populate_iova', rte_mempool_populate_iova]
alias rte_pipeline_rte_mempool_populate_virt = ExternalFunction['rte_mempool_populate_virt', rte_mempool_populate_virt]
alias rte_pipeline_rte_mempool_populate_default = ExternalFunction['rte_mempool_populate_default', rte_mempool_populate_default]
alias rte_pipeline_rte_mempool_populate_anon = ExternalFunction['rte_mempool_populate_anon', rte_mempool_populate_anon]
alias rte_pipeline_rte_mempool_obj_iter = ExternalFunction['rte_mempool_obj_iter', rte_mempool_obj_iter]
alias rte_pipeline_rte_mempool_mem_iter = ExternalFunction['rte_mempool_mem_iter', rte_mempool_mem_iter]
alias rte_pipeline_rte_mempool_dump = ExternalFunction['rte_mempool_dump', rte_mempool_dump]
alias rte_pipeline_rte_mempool_cache_create = ExternalFunction['rte_mempool_cache_create', rte_mempool_cache_create]
alias rte_pipeline_rte_mempool_cache_free = ExternalFunction['rte_mempool_cache_free', rte_mempool_cache_free]
alias rte_pipeline_rte_mempool_default_cache = ExternalFunction['rte_mempool_default_cache', rte_mempool_default_cache]
alias rte_pipeline_rte_mempool_cache_flush = ExternalFunction['rte_mempool_cache_flush', rte_mempool_cache_flush]
alias rte_pipeline_rte_mempool_do_generic_put = ExternalFunction['rte_mempool_do_generic_put', rte_mempool_do_generic_put]
alias rte_pipeline_rte_mempool_generic_put = ExternalFunction['rte_mempool_generic_put', rte_mempool_generic_put]
alias rte_pipeline_rte_mempool_put_bulk = ExternalFunction['rte_mempool_put_bulk', rte_mempool_put_bulk]
alias rte_pipeline_rte_mempool_put = ExternalFunction['rte_mempool_put', rte_mempool_put]
alias rte_pipeline_rte_mempool_do_generic_get = ExternalFunction['rte_mempool_do_generic_get', rte_mempool_do_generic_get]
alias rte_pipeline_rte_mempool_generic_get = ExternalFunction['rte_mempool_generic_get', rte_mempool_generic_get]
alias rte_pipeline_rte_mempool_get_bulk = ExternalFunction['rte_mempool_get_bulk', rte_mempool_get_bulk]
alias rte_pipeline_rte_mempool_get = ExternalFunction['rte_mempool_get', rte_mempool_get]
alias rte_pipeline_rte_mempool_get_contig_blocks = ExternalFunction['rte_mempool_get_contig_blocks', rte_mempool_get_contig_blocks]
alias rte_pipeline_rte_mempool_avail_count = ExternalFunction['rte_mempool_avail_count', rte_mempool_avail_count]
alias rte_pipeline_rte_mempool_in_use_count = ExternalFunction['rte_mempool_in_use_count', rte_mempool_in_use_count]
alias rte_pipeline_rte_mempool_full = ExternalFunction['rte_mempool_full', rte_mempool_full]
alias rte_pipeline_rte_mempool_empty = ExternalFunction['rte_mempool_empty', rte_mempool_empty]
alias rte_pipeline_rte_mempool_virt2iova = ExternalFunction['rte_mempool_virt2iova', rte_mempool_virt2iova]
alias rte_pipeline_rte_mempool_audit = ExternalFunction['rte_mempool_audit', rte_mempool_audit]
alias rte_pipeline_rte_mempool_get_priv = ExternalFunction['rte_mempool_get_priv', rte_mempool_get_priv]
alias rte_pipeline_rte_mempool_list_dump = ExternalFunction['rte_mempool_list_dump', rte_mempool_list_dump]
alias rte_pipeline_rte_mempool_lookup = ExternalFunction['rte_mempool_lookup', rte_mempool_lookup]
alias rte_pipeline_rte_mempool_calc_obj_size = ExternalFunction['rte_mempool_calc_obj_size', rte_mempool_calc_obj_size]
alias rte_pipeline_rte_mempool_walk = ExternalFunction['rte_mempool_walk', rte_mempool_walk]
alias rte_pipeline_rte_mempool_get_mem_range = ExternalFunction['rte_mempool_get_mem_range', rte_mempool_get_mem_range]
alias rte_pipeline_rte_mempool_get_obj_alignment = ExternalFunction['rte_mempool_get_obj_alignment', rte_mempool_get_obj_alignment]
alias rte_pipeline_rte_mempool_get_page_size = ExternalFunction['rte_mempool_get_page_size', rte_mempool_get_page_size]
alias rte_pipeline_rte_mempool_event_callback_register = ExternalFunction['rte_mempool_event_callback_register', rte_mempool_event_callback_register]
alias rte_pipeline_rte_mempool_event_callback_unregister = ExternalFunction['rte_mempool_event_callback_unregister', rte_mempool_event_callback_unregister]
alias rte_pipeline_rte_prefetch0 = ExternalFunction['rte_prefetch0', rte_prefetch0]
alias rte_pipeline_rte_prefetch1 = ExternalFunction['rte_prefetch1', rte_prefetch1]
alias rte_pipeline_rte_prefetch2 = ExternalFunction['rte_prefetch2', rte_prefetch2]
alias rte_pipeline_rte_prefetch_non_temporal = ExternalFunction['rte_prefetch_non_temporal', rte_prefetch_non_temporal]
alias rte_pipeline_rte_prefetch0_write = ExternalFunction['rte_prefetch0_write', rte_prefetch0_write]
alias rte_pipeline_rte_prefetch1_write = ExternalFunction['rte_prefetch1_write', rte_prefetch1_write]
alias rte_pipeline_rte_prefetch2_write = ExternalFunction['rte_prefetch2_write', rte_prefetch2_write]
alias rte_pipeline_rte_cldemote = ExternalFunction['rte_cldemote', rte_cldemote]
alias rte_pipeline_rte_get_ptype_l2_name = ExternalFunction['rte_get_ptype_l2_name', rte_get_ptype_l2_name]
alias rte_pipeline_rte_get_ptype_l3_name = ExternalFunction['rte_get_ptype_l3_name', rte_get_ptype_l3_name]
alias rte_pipeline_rte_get_ptype_l4_name = ExternalFunction['rte_get_ptype_l4_name', rte_get_ptype_l4_name]
alias rte_pipeline_rte_get_ptype_tunnel_name = ExternalFunction['rte_get_ptype_tunnel_name', rte_get_ptype_tunnel_name]
alias rte_pipeline_rte_get_ptype_inner_l2_name = ExternalFunction['rte_get_ptype_inner_l2_name', rte_get_ptype_inner_l2_name]
alias rte_pipeline_rte_get_ptype_inner_l3_name = ExternalFunction['rte_get_ptype_inner_l3_name', rte_get_ptype_inner_l3_name]
alias rte_pipeline_rte_get_ptype_inner_l4_name = ExternalFunction['rte_get_ptype_inner_l4_name', rte_get_ptype_inner_l4_name]
alias rte_pipeline_rte_get_ptype_name = ExternalFunction['rte_get_ptype_name', rte_get_ptype_name]
alias rte_pipeline_rte_constant_bswap16 = ExternalFunction['rte_constant_bswap16', rte_constant_bswap16]
alias rte_pipeline_rte_constant_bswap32 = ExternalFunction['rte_constant_bswap32', rte_constant_bswap32]
alias rte_pipeline_rte_constant_bswap64 = ExternalFunction['rte_constant_bswap64', rte_constant_bswap64]
alias rte_pipeline_rte_get_rx_ol_flag_name = ExternalFunction['rte_get_rx_ol_flag_name', rte_get_rx_ol_flag_name]
alias rte_pipeline_rte_get_rx_ol_flag_list = ExternalFunction['rte_get_rx_ol_flag_list', rte_get_rx_ol_flag_list]
alias rte_pipeline_rte_get_tx_ol_flag_name = ExternalFunction['rte_get_tx_ol_flag_name', rte_get_tx_ol_flag_name]
alias rte_pipeline_rte_get_tx_ol_flag_list = ExternalFunction['rte_get_tx_ol_flag_list', rte_get_tx_ol_flag_list]
alias rte_pipeline_rte_mbuf_prefetch_part1 = ExternalFunction['rte_mbuf_prefetch_part1', rte_mbuf_prefetch_part1]
alias rte_pipeline_rte_mbuf_prefetch_part2 = ExternalFunction['rte_mbuf_prefetch_part2', rte_mbuf_prefetch_part2]
alias rte_pipeline_rte_pktmbuf_priv_size = ExternalFunction['rte_pktmbuf_priv_size', rte_pktmbuf_priv_size]
alias rte_pipeline_rte_mbuf_iova_get = ExternalFunction['rte_mbuf_iova_get', rte_mbuf_iova_get]
alias rte_pipeline_rte_mbuf_iova_set = ExternalFunction['rte_mbuf_iova_set', rte_mbuf_iova_set]
alias rte_pipeline_rte_mbuf_data_iova = ExternalFunction['rte_mbuf_data_iova', rte_mbuf_data_iova]
alias rte_pipeline_rte_mbuf_data_iova_default = ExternalFunction['rte_mbuf_data_iova_default', rte_mbuf_data_iova_default]
alias rte_pipeline_rte_mbuf_from_indirect = ExternalFunction['rte_mbuf_from_indirect', rte_mbuf_from_indirect]
alias rte_pipeline_rte_mbuf_buf_addr = ExternalFunction['rte_mbuf_buf_addr', rte_mbuf_buf_addr]
alias rte_pipeline_rte_mbuf_data_addr_default = ExternalFunction['rte_mbuf_data_addr_default', rte_mbuf_data_addr_default]
alias rte_pipeline_rte_mbuf_to_baddr = ExternalFunction['rte_mbuf_to_baddr', rte_mbuf_to_baddr]
alias rte_pipeline_rte_mbuf_to_priv = ExternalFunction['rte_mbuf_to_priv', rte_mbuf_to_priv]
alias rte_pipeline_rte_pktmbuf_priv_flags = ExternalFunction['rte_pktmbuf_priv_flags', rte_pktmbuf_priv_flags]
alias rte_pipeline_rte_mbuf_refcnt_read = ExternalFunction['rte_mbuf_refcnt_read', rte_mbuf_refcnt_read]
alias rte_pipeline_rte_mbuf_refcnt_set = ExternalFunction['rte_mbuf_refcnt_set', rte_mbuf_refcnt_set]
alias rte_pipeline_rte_mbuf_refcnt_update = ExternalFunction['rte_mbuf_refcnt_update', rte_mbuf_refcnt_update]
alias rte_pipeline_rte_mbuf_ext_refcnt_read = ExternalFunction['rte_mbuf_ext_refcnt_read', rte_mbuf_ext_refcnt_read]
alias rte_pipeline_rte_mbuf_ext_refcnt_set = ExternalFunction['rte_mbuf_ext_refcnt_set', rte_mbuf_ext_refcnt_set]
alias rte_pipeline_rte_mbuf_ext_refcnt_update = ExternalFunction['rte_mbuf_ext_refcnt_update', rte_mbuf_ext_refcnt_update]
alias rte_pipeline_rte_mbuf_sanity_check = ExternalFunction['rte_mbuf_sanity_check', rte_mbuf_sanity_check]
alias rte_pipeline_rte_mbuf_check = ExternalFunction['rte_mbuf_check', rte_mbuf_check]
alias rte_pipeline_rte_mbuf_raw_alloc = ExternalFunction['rte_mbuf_raw_alloc', rte_mbuf_raw_alloc]
alias rte_pipeline_rte_mbuf_raw_alloc_bulk = ExternalFunction['rte_mbuf_raw_alloc_bulk', rte_mbuf_raw_alloc_bulk]
alias rte_pipeline_rte_mbuf_raw_free = ExternalFunction['rte_mbuf_raw_free', rte_mbuf_raw_free]
alias rte_pipeline_rte_mbuf_raw_free_bulk = ExternalFunction['rte_mbuf_raw_free_bulk', rte_mbuf_raw_free_bulk]
alias rte_pipeline_rte_pktmbuf_init = ExternalFunction['rte_pktmbuf_init', rte_pktmbuf_init]
alias rte_pipeline_rte_pktmbuf_pool_init = ExternalFunction['rte_pktmbuf_pool_init', rte_pktmbuf_pool_init]
alias rte_pipeline_rte_pktmbuf_pool_create = ExternalFunction['rte_pktmbuf_pool_create', rte_pktmbuf_pool_create]
alias rte_pipeline_rte_pktmbuf_pool_create_by_ops = ExternalFunction['rte_pktmbuf_pool_create_by_ops', rte_pktmbuf_pool_create_by_ops]
alias rte_pipeline_rte_pktmbuf_pool_create_extbuf = ExternalFunction['rte_pktmbuf_pool_create_extbuf', rte_pktmbuf_pool_create_extbuf]
alias rte_pipeline_rte_pktmbuf_data_room_size = ExternalFunction['rte_pktmbuf_data_room_size', rte_pktmbuf_data_room_size]
alias rte_pipeline_rte_pktmbuf_reset_headroom = ExternalFunction['rte_pktmbuf_reset_headroom', rte_pktmbuf_reset_headroom]
alias rte_pipeline_rte_pktmbuf_reset = ExternalFunction['rte_pktmbuf_reset', rte_pktmbuf_reset]
alias rte_pipeline_rte_pktmbuf_alloc = ExternalFunction['rte_pktmbuf_alloc', rte_pktmbuf_alloc]
alias rte_pipeline_rte_pktmbuf_alloc_bulk = ExternalFunction['rte_pktmbuf_alloc_bulk', rte_pktmbuf_alloc_bulk]
alias rte_pipeline_rte_pktmbuf_ext_shinfo_init_helper = ExternalFunction['rte_pktmbuf_ext_shinfo_init_helper', rte_pktmbuf_ext_shinfo_init_helper]
alias rte_pipeline_rte_pktmbuf_attach_extbuf = ExternalFunction['rte_pktmbuf_attach_extbuf', rte_pktmbuf_attach_extbuf]
alias rte_pipeline_rte_mbuf_dynfield_copy = ExternalFunction['rte_mbuf_dynfield_copy', rte_mbuf_dynfield_copy]
alias rte_pipeline_rte_pktmbuf_attach = ExternalFunction['rte_pktmbuf_attach', rte_pktmbuf_attach]
alias rte_pipeline_rte_pktmbuf_detach = ExternalFunction['rte_pktmbuf_detach', rte_pktmbuf_detach]
alias rte_pipeline_rte_pktmbuf_prefree_seg = ExternalFunction['rte_pktmbuf_prefree_seg', rte_pktmbuf_prefree_seg]
alias rte_pipeline_rte_pktmbuf_free_seg = ExternalFunction['rte_pktmbuf_free_seg', rte_pktmbuf_free_seg]
alias rte_pipeline_rte_pktmbuf_free = ExternalFunction['rte_pktmbuf_free', rte_pktmbuf_free]
alias rte_pipeline_rte_pktmbuf_free_bulk = ExternalFunction['rte_pktmbuf_free_bulk', rte_pktmbuf_free_bulk]
alias rte_pipeline_rte_pktmbuf_clone = ExternalFunction['rte_pktmbuf_clone', rte_pktmbuf_clone]
alias rte_pipeline_rte_pktmbuf_copy = ExternalFunction['rte_pktmbuf_copy', rte_pktmbuf_copy]
alias rte_pipeline_rte_pktmbuf_refcnt_update = ExternalFunction['rte_pktmbuf_refcnt_update', rte_pktmbuf_refcnt_update]
alias rte_pipeline_rte_pktmbuf_headroom = ExternalFunction['rte_pktmbuf_headroom', rte_pktmbuf_headroom]
alias rte_pipeline_rte_pktmbuf_tailroom = ExternalFunction['rte_pktmbuf_tailroom', rte_pktmbuf_tailroom]
alias rte_pipeline_rte_pktmbuf_lastseg = ExternalFunction['rte_pktmbuf_lastseg', rte_pktmbuf_lastseg]
alias rte_pipeline_rte_pktmbuf_prepend = ExternalFunction['rte_pktmbuf_prepend', rte_pktmbuf_prepend]
alias rte_pipeline_rte_pktmbuf_append = ExternalFunction['rte_pktmbuf_append', rte_pktmbuf_append]
alias rte_pipeline_rte_pktmbuf_adj = ExternalFunction['rte_pktmbuf_adj', rte_pktmbuf_adj]
alias rte_pipeline_rte_pktmbuf_trim = ExternalFunction['rte_pktmbuf_trim', rte_pktmbuf_trim]
alias rte_pipeline_rte_pktmbuf_is_contiguous = ExternalFunction['rte_pktmbuf_is_contiguous', rte_pktmbuf_is_contiguous]
alias rte_pipeline_rte_pktmbuf_read = ExternalFunction['rte_pktmbuf_read', rte_pktmbuf_read]
alias rte_pipeline_rte_pktmbuf_chain = ExternalFunction['rte_pktmbuf_chain', rte_pktmbuf_chain]
alias rte_pipeline_rte_mbuf_tx_offload = ExternalFunction['rte_mbuf_tx_offload', rte_mbuf_tx_offload]
alias rte_pipeline_rte_validate_tx_offload = ExternalFunction['rte_validate_tx_offload', rte_validate_tx_offload]
alias rte_pipeline_rte_pktmbuf_linearize = ExternalFunction['rte_pktmbuf_linearize', rte_pktmbuf_linearize]
alias rte_pipeline_rte_pktmbuf_dump = ExternalFunction['rte_pktmbuf_dump', rte_pktmbuf_dump]
alias rte_pipeline_rte_mbuf_sched_queue_get = ExternalFunction['rte_mbuf_sched_queue_get', rte_mbuf_sched_queue_get]
alias rte_pipeline_rte_mbuf_sched_traffic_class_get = ExternalFunction['rte_mbuf_sched_traffic_class_get', rte_mbuf_sched_traffic_class_get]
alias rte_pipeline_rte_mbuf_sched_color_get = ExternalFunction['rte_mbuf_sched_color_get', rte_mbuf_sched_color_get]
alias rte_pipeline_rte_mbuf_sched_get = ExternalFunction['rte_mbuf_sched_get', rte_mbuf_sched_get]
alias rte_pipeline_rte_mbuf_sched_queue_set = ExternalFunction['rte_mbuf_sched_queue_set', rte_mbuf_sched_queue_set]
alias rte_pipeline_rte_mbuf_sched_traffic_class_set = ExternalFunction['rte_mbuf_sched_traffic_class_set', rte_mbuf_sched_traffic_class_set]
alias rte_pipeline_rte_mbuf_sched_color_set = ExternalFunction['rte_mbuf_sched_color_set', rte_mbuf_sched_color_set]
alias rte_pipeline_rte_mbuf_sched_set = ExternalFunction['rte_mbuf_sched_set', rte_mbuf_sched_set]
alias rte_pipeline_rte_pipeline_create = ExternalFunction['rte_pipeline_create', rte_pipeline_create]
alias rte_pipeline_rte_pipeline_free = ExternalFunction['rte_pipeline_free', rte_pipeline_free]
alias rte_pipeline_rte_pipeline_check = ExternalFunction['rte_pipeline_check', rte_pipeline_check]
alias rte_pipeline_rte_pipeline_run = ExternalFunction['rte_pipeline_run', rte_pipeline_run]
alias rte_pipeline_rte_pipeline_flush = ExternalFunction['rte_pipeline_flush', rte_pipeline_flush]
alias rte_pipeline_rte_pipeline_table_create = ExternalFunction['rte_pipeline_table_create', rte_pipeline_table_create]
alias rte_pipeline_rte_pipeline_table_default_entry_add = ExternalFunction['rte_pipeline_table_default_entry_add', rte_pipeline_table_default_entry_add]
alias rte_pipeline_rte_pipeline_table_default_entry_delete = ExternalFunction['rte_pipeline_table_default_entry_delete', rte_pipeline_table_default_entry_delete]
alias rte_pipeline_rte_pipeline_table_entry_add = ExternalFunction['rte_pipeline_table_entry_add', rte_pipeline_table_entry_add]
alias rte_pipeline_rte_pipeline_table_entry_delete = ExternalFunction['rte_pipeline_table_entry_delete', rte_pipeline_table_entry_delete]
alias rte_pipeline_rte_pipeline_table_entry_add_bulk = ExternalFunction['rte_pipeline_table_entry_add_bulk', rte_pipeline_table_entry_add_bulk]
alias rte_pipeline_rte_pipeline_table_entry_delete_bulk = ExternalFunction['rte_pipeline_table_entry_delete_bulk', rte_pipeline_table_entry_delete_bulk]
alias rte_pipeline_rte_pipeline_table_stats_read = ExternalFunction['rte_pipeline_table_stats_read', rte_pipeline_table_stats_read]
alias rte_pipeline_rte_pipeline_port_in_create = ExternalFunction['rte_pipeline_port_in_create', rte_pipeline_port_in_create]
alias rte_pipeline_rte_pipeline_port_in_connect_to_table = ExternalFunction['rte_pipeline_port_in_connect_to_table', rte_pipeline_port_in_connect_to_table]
alias rte_pipeline_rte_pipeline_port_in_enable = ExternalFunction['rte_pipeline_port_in_enable', rte_pipeline_port_in_enable]
alias rte_pipeline_rte_pipeline_port_in_disable = ExternalFunction['rte_pipeline_port_in_disable', rte_pipeline_port_in_disable]
alias rte_pipeline_rte_pipeline_port_in_stats_read = ExternalFunction['rte_pipeline_port_in_stats_read', rte_pipeline_port_in_stats_read]
alias rte_pipeline_rte_pipeline_port_out_create = ExternalFunction['rte_pipeline_port_out_create', rte_pipeline_port_out_create]
alias rte_pipeline_rte_pipeline_port_out_stats_read = ExternalFunction['rte_pipeline_port_out_stats_read', rte_pipeline_port_out_stats_read]
alias rte_pipeline_rte_pipeline_port_out_packet_insert = ExternalFunction['rte_pipeline_port_out_packet_insert', rte_pipeline_port_out_packet_insert]
alias rte_pipeline_rte_pipeline_ah_packet_hijack = ExternalFunction['rte_pipeline_ah_packet_hijack', rte_pipeline_ah_packet_hijack]
alias rte_pipeline_rte_pipeline_ah_packet_drop = ExternalFunction['rte_pipeline_ah_packet_drop', rte_pipeline_ah_packet_drop]

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
struct rte_pipeline(Copyable, Movable):
    var lib: DLHandle
    
    var alloca: rte_pipeline_alloca.type
    var sched_setparam: rte_pipeline_sched_setparam.type
    var sched_getparam: rte_pipeline_sched_getparam.type
    var sched_setscheduler: rte_pipeline_sched_setscheduler.type
    var sched_getscheduler: rte_pipeline_sched_getscheduler.type
    var sched_yield: rte_pipeline_sched_yield.type
    var sched_get_priority_max: rte_pipeline_sched_get_priority_max.type
    var sched_get_priority_min: rte_pipeline_sched_get_priority_min.type
    var sched_rr_get_interval: rte_pipeline_sched_rr_get_interval.type
    var rte_is_aligned: rte_pipeline_rte_is_aligned.type
    var rte_str_to_size: rte_pipeline_rte_str_to_size.type
    var rte_size_to_str: rte_pipeline_rte_size_to_str.type
    var rte_exit: rte_pipeline_rte_exit.type
    var remove: rte_pipeline_remove.type
    var rename: rte_pipeline_rename.type
    var renameat: rte_pipeline_renameat.type
    var fclose: rte_pipeline_fclose.type
    var tmpfile: rte_pipeline_tmpfile.type
    var tmpnam: rte_pipeline_tmpnam.type
    var tmpnam_r: rte_pipeline_tmpnam_r.type
    var tempnam: rte_pipeline_tempnam.type
    var fflush: rte_pipeline_fflush.type
    var fflush_unlocked: rte_pipeline_fflush_unlocked.type
    var fopen: rte_pipeline_fopen.type
    var freopen: rte_pipeline_freopen.type
    var fdopen: rte_pipeline_fdopen.type
    var fmemopen: rte_pipeline_fmemopen.type
    var open_memstream: rte_pipeline_open_memstream.type
    var setbuf: rte_pipeline_setbuf.type
    var setvbuf: rte_pipeline_setvbuf.type
    var setbuffer: rte_pipeline_setbuffer.type
    var setlinebuf: rte_pipeline_setlinebuf.type
    var fprintf: rte_pipeline_fprintf.type
    var printf: rte_pipeline_printf.type
    var sprintf: rte_pipeline_sprintf.type
    var vfprintf: rte_pipeline_vfprintf.type
    var vprintf: rte_pipeline_vprintf.type
    var vsprintf: rte_pipeline_vsprintf.type
    var snprintf: rte_pipeline_snprintf.type
    var vsnprintf: rte_pipeline_vsnprintf.type
    var vdprintf: rte_pipeline_vdprintf.type
    var dprintf: rte_pipeline_dprintf.type
    var fscanf: rte_pipeline_fscanf.type
    var scanf: rte_pipeline_scanf.type
    var sscanf: rte_pipeline_sscanf.type
    var vfscanf: rte_pipeline_vfscanf.type
    var vscanf: rte_pipeline_vscanf.type
    var vsscanf: rte_pipeline_vsscanf.type
    var fgetc: rte_pipeline_fgetc.type
    var getc: rte_pipeline_getc.type
    var getchar: rte_pipeline_getchar.type
    var getc_unlocked: rte_pipeline_getc_unlocked.type
    var getchar_unlocked: rte_pipeline_getchar_unlocked.type
    var fgetc_unlocked: rte_pipeline_fgetc_unlocked.type
    var fputc: rte_pipeline_fputc.type
    var putc: rte_pipeline_putc.type
    var putchar: rte_pipeline_putchar.type
    var fputc_unlocked: rte_pipeline_fputc_unlocked.type
    var putc_unlocked: rte_pipeline_putc_unlocked.type
    var putchar_unlocked: rte_pipeline_putchar_unlocked.type
    var getw: rte_pipeline_getw.type
    var putw: rte_pipeline_putw.type
    var fgets: rte_pipeline_fgets.type
    var getdelim: rte_pipeline_getdelim.type
    var getline: rte_pipeline_getline.type
    var fputs: rte_pipeline_fputs.type
    var puts: rte_pipeline_puts.type
    var ungetc: rte_pipeline_ungetc.type
    var fread: rte_pipeline_fread.type
    var fwrite: rte_pipeline_fwrite.type
    var fread_unlocked: rte_pipeline_fread_unlocked.type
    var fwrite_unlocked: rte_pipeline_fwrite_unlocked.type
    var fseek: rte_pipeline_fseek.type
    var ftell: rte_pipeline_ftell.type
    var rewind: rte_pipeline_rewind.type
    var fseeko: rte_pipeline_fseeko.type
    var ftello: rte_pipeline_ftello.type
    var fgetpos: rte_pipeline_fgetpos.type
    var fsetpos: rte_pipeline_fsetpos.type
    var clearerr: rte_pipeline_clearerr.type
    var feof: rte_pipeline_feof.type
    var ferror: rte_pipeline_ferror.type
    var clearerr_unlocked: rte_pipeline_clearerr_unlocked.type
    var feof_unlocked: rte_pipeline_feof_unlocked.type
    var ferror_unlocked: rte_pipeline_ferror_unlocked.type
    var perror: rte_pipeline_perror.type
    var fileno: rte_pipeline_fileno.type
    var fileno_unlocked: rte_pipeline_fileno_unlocked.type
    var pclose: rte_pipeline_pclose.type
    var popen: rte_pipeline_popen.type
    var ctermid: rte_pipeline_ctermid.type
    var flockfile: rte_pipeline_flockfile.type
    var ftrylockfile: rte_pipeline_ftrylockfile.type
    var funlockfile: rte_pipeline_funlockfile.type
    var imaxabs: rte_pipeline_imaxabs.type
    var imaxdiv: rte_pipeline_imaxdiv.type
    var strtoimax: rte_pipeline_strtoimax.type
    var strtoumax: rte_pipeline_strtoumax.type
    var wcstoimax: rte_pipeline_wcstoimax.type
    var wcstoumax: rte_pipeline_wcstoumax.type
    var clock: rte_pipeline_clock.type
    var time: rte_pipeline_time.type
    var difftime: rte_pipeline_difftime.type
    var mktime: rte_pipeline_mktime.type
    var strftime: rte_pipeline_strftime.type
    var strftime_l: rte_pipeline_strftime_l.type
    var gmtime: rte_pipeline_gmtime.type
    var localtime: rte_pipeline_localtime.type
    var gmtime_r: rte_pipeline_gmtime_r.type
    var localtime_r: rte_pipeline_localtime_r.type
    var asctime: rte_pipeline_asctime.type
    var ctime: rte_pipeline_ctime.type
    var asctime_r: rte_pipeline_asctime_r.type
    var ctime_r: rte_pipeline_ctime_r.type
    var tzset: rte_pipeline_tzset.type
    var timegm: rte_pipeline_timegm.type
    var timelocal: rte_pipeline_timelocal.type
    var dysize: rte_pipeline_dysize.type
    var nanosleep: rte_pipeline_nanosleep.type
    var clock_getres: rte_pipeline_clock_getres.type
    var clock_gettime: rte_pipeline_clock_gettime.type
    var clock_settime: rte_pipeline_clock_settime.type
    var clock_nanosleep: rte_pipeline_clock_nanosleep.type
    var clock_getcpuclockid: rte_pipeline_clock_getcpuclockid.type
    var timer_create: rte_pipeline_timer_create.type
    var timer_delete: rte_pipeline_timer_delete.type
    var timer_settime: rte_pipeline_timer_settime.type
    var timer_gettime: rte_pipeline_timer_gettime.type
    var timer_getoverrun: rte_pipeline_timer_getoverrun.type
    var timespec_get: rte_pipeline_timespec_get.type
    var memcpy: rte_pipeline_memcpy.type
    var memmove: rte_pipeline_memmove.type
    var memccpy: rte_pipeline_memccpy.type
    var memset: rte_pipeline_memset.type
    var memcmp: rte_pipeline_memcmp.type
    var memchr: rte_pipeline_memchr.type
    var strcpy: rte_pipeline_strcpy.type
    var strncpy: rte_pipeline_strncpy.type
    var strcat: rte_pipeline_strcat.type
    var strncat: rte_pipeline_strncat.type
    var strcmp: rte_pipeline_strcmp.type
    var strncmp: rte_pipeline_strncmp.type
    var strcoll: rte_pipeline_strcoll.type
    var strxfrm: rte_pipeline_strxfrm.type
    var strcoll_l: rte_pipeline_strcoll_l.type
    var strxfrm_l: rte_pipeline_strxfrm_l.type
    var strdup: rte_pipeline_strdup.type
    var strndup: rte_pipeline_strndup.type
    var strchr: rte_pipeline_strchr.type
    var strrchr: rte_pipeline_strrchr.type
    var strcspn: rte_pipeline_strcspn.type
    var strspn: rte_pipeline_strspn.type
    var strpbrk: rte_pipeline_strpbrk.type
    var strstr: rte_pipeline_strstr.type
    var strtok: rte_pipeline_strtok.type
    var strtok_r: rte_pipeline_strtok_r.type
    var strlen: rte_pipeline_strlen.type
    var strnlen: rte_pipeline_strnlen.type
    var strerror: rte_pipeline_strerror.type
    var strerror_r: rte_pipeline_strerror_r.type
    var strerror_l: rte_pipeline_strerror_l.type
    var bcmp: rte_pipeline_bcmp.type
    var bcopy: rte_pipeline_bcopy.type
    var bzero: rte_pipeline_bzero.type
    var index: rte_pipeline_index.type
    var rindex: rte_pipeline_rindex.type
    var ffs: rte_pipeline_ffs.type
    var ffsl: rte_pipeline_ffsl.type
    var ffsll: rte_pipeline_ffsll.type
    var strcasecmp: rte_pipeline_strcasecmp.type
    var strncasecmp: rte_pipeline_strncasecmp.type
    var strcasecmp_l: rte_pipeline_strcasecmp_l.type
    var strncasecmp_l: rte_pipeline_strncasecmp_l.type
    var explicit_bzero: rte_pipeline_explicit_bzero.type
    var strsep: rte_pipeline_strsep.type
    var strsignal: rte_pipeline_strsignal.type
    var stpcpy: rte_pipeline_stpcpy.type
    var stpncpy: rte_pipeline_stpncpy.type
    var rte_uuid_is_null: rte_pipeline_rte_uuid_is_null.type
    var rte_uuid_copy: rte_pipeline_rte_uuid_copy.type
    var rte_uuid_compare: rte_pipeline_rte_uuid_compare.type
    var rte_uuid_parse: rte_pipeline_rte_uuid_parse.type
    var rte_uuid_unparse: rte_pipeline_rte_uuid_unparse.type
    var rte_eal_process_type: rte_pipeline_rte_eal_process_type.type
    var rte_eal_iopl_init: rte_pipeline_rte_eal_iopl_init.type
    var rte_eal_init: rte_pipeline_rte_eal_init.type
    var rte_eal_cleanup: rte_pipeline_rte_eal_cleanup.type
    var rte_eal_primary_proc_alive: rte_pipeline_rte_eal_primary_proc_alive.type
    var rte_mp_disable: rte_pipeline_rte_mp_disable.type
    var rte_mp_action_register: rte_pipeline_rte_mp_action_register.type
    var rte_mp_action_unregister: rte_pipeline_rte_mp_action_unregister.type
    var rte_mp_sendmsg: rte_pipeline_rte_mp_sendmsg.type
    var rte_mp_request_sync: rte_pipeline_rte_mp_request_sync.type
    var rte_mp_request_async: rte_pipeline_rte_mp_request_async.type
    var rte_set_application_usage_hook: rte_pipeline_rte_set_application_usage_hook.type
    var rte_eal_has_hugepages: rte_pipeline_rte_eal_has_hugepages.type
    var rte_eal_has_pci: rte_pipeline_rte_eal_has_pci.type
    var rte_eal_create_uio_dev: rte_pipeline_rte_eal_create_uio_dev.type
    var rte_eal_vfio_intr_mode: rte_pipeline_rte_eal_vfio_intr_mode.type
    var rte_eal_vfio_get_vf_token: rte_pipeline_rte_eal_vfio_get_vf_token.type
    var rte_sys_gettid: rte_pipeline_rte_sys_gettid.type
    var rte_gettid: rte_pipeline_rte_gettid.type
    var rte_eal_get_baseaddr: rte_pipeline_rte_eal_get_baseaddr.type
    var rte_eal_iova_mode: rte_pipeline_rte_eal_iova_mode.type
    var rte_eal_mbuf_user_pool_ops: rte_pipeline_rte_eal_mbuf_user_pool_ops.type
    var rte_eal_get_runtime_dir: rte_pipeline_rte_eal_get_runtime_dir.type
    var rte_eal_parse_coremask: rte_pipeline_rte_eal_parse_coremask.type
    var rte_eal_remote_launch: rte_pipeline_rte_eal_remote_launch.type
    var rte_eal_mp_remote_launch: rte_pipeline_rte_eal_mp_remote_launch.type
    var rte_eal_get_lcore_state: rte_pipeline_rte_eal_get_lcore_state.type
    var rte_eal_wait_lcore: rte_pipeline_rte_eal_wait_lcore.type
    var rte_eal_mp_wait_lcore: rte_pipeline_rte_eal_mp_wait_lcore.type
    var rte_thread_create: rte_pipeline_rte_thread_create.type
    var rte_thread_create_control: rte_pipeline_rte_thread_create_control.type
    var rte_thread_create_internal_control: rte_pipeline_rte_thread_create_internal_control.type
    var rte_thread_join: rte_pipeline_rte_thread_join.type
    var rte_thread_detach: rte_pipeline_rte_thread_detach.type
    var rte_thread_self: rte_pipeline_rte_thread_self.type
    var rte_thread_set_name: rte_pipeline_rte_thread_set_name.type
    var rte_thread_set_prefixed_name: rte_pipeline_rte_thread_set_prefixed_name.type
    var rte_thread_equal: rte_pipeline_rte_thread_equal.type
    var rte_thread_attr_init: rte_pipeline_rte_thread_attr_init.type
    var rte_thread_attr_set_priority: rte_pipeline_rte_thread_attr_set_priority.type
    var rte_thread_get_priority: rte_pipeline_rte_thread_get_priority.type
    var rte_thread_set_priority: rte_pipeline_rte_thread_set_priority.type
    var rte_thread_key_create: rte_pipeline_rte_thread_key_create.type
    var rte_thread_key_delete: rte_pipeline_rte_thread_key_delete.type
    var rte_thread_value_set: rte_pipeline_rte_thread_value_set.type
    var rte_thread_value_get: rte_pipeline_rte_thread_value_get.type
    var rte_eal_lcore_role: rte_pipeline_rte_eal_lcore_role.type
    var rte_lcore_has_role: rte_pipeline_rte_lcore_has_role.type
    var rte_lcore_id: rte_pipeline_rte_lcore_id.type
    var rte_get_main_lcore: rte_pipeline_rte_get_main_lcore.type
    var rte_lcore_count: rte_pipeline_rte_lcore_count.type
    var rte_lcore_index: rte_pipeline_rte_lcore_index.type
    var rte_socket_id: rte_pipeline_rte_socket_id.type
    var rte_socket_count: rte_pipeline_rte_socket_count.type
    var rte_socket_id_by_idx: rte_pipeline_rte_socket_id_by_idx.type
    var rte_lcore_to_socket_id: rte_pipeline_rte_lcore_to_socket_id.type
    var rte_lcore_to_cpu_id: rte_pipeline_rte_lcore_to_cpu_id.type
    var rte_lcore_is_enabled: rte_pipeline_rte_lcore_is_enabled.type
    var rte_get_next_lcore: rte_pipeline_rte_get_next_lcore.type
    var rte_lcore_callback_register: rte_pipeline_rte_lcore_callback_register.type
    var rte_lcore_callback_unregister: rte_pipeline_rte_lcore_callback_unregister.type
    var rte_lcore_iterate: rte_pipeline_rte_lcore_iterate.type
    var rte_lcore_register_usage_cb: rte_pipeline_rte_lcore_register_usage_cb.type
    var rte_lcore_dump: rte_pipeline_rte_lcore_dump.type
    var rte_thread_register: rte_pipeline_rte_thread_register.type
    var rte_thread_unregister: rte_pipeline_rte_thread_unregister.type
    var rte_atomic_thread_fence: rte_pipeline_rte_atomic_thread_fence.type
    var rte_atomic16_cmpset: rte_pipeline_rte_atomic16_cmpset.type
    var rte_atomic16_exchange: rte_pipeline_rte_atomic16_exchange.type
    var rte_atomic16_init: rte_pipeline_rte_atomic16_init.type
    var rte_atomic16_read: rte_pipeline_rte_atomic16_read.type
    var rte_atomic16_set: rte_pipeline_rte_atomic16_set.type
    var rte_atomic16_add: rte_pipeline_rte_atomic16_add.type
    var rte_atomic16_sub: rte_pipeline_rte_atomic16_sub.type
    var rte_atomic16_inc: rte_pipeline_rte_atomic16_inc.type
    var rte_atomic16_dec: rte_pipeline_rte_atomic16_dec.type
    var rte_atomic16_add_return: rte_pipeline_rte_atomic16_add_return.type
    var rte_atomic16_sub_return: rte_pipeline_rte_atomic16_sub_return.type
    var rte_atomic16_inc_and_test: rte_pipeline_rte_atomic16_inc_and_test.type
    var rte_atomic16_dec_and_test: rte_pipeline_rte_atomic16_dec_and_test.type
    var rte_atomic16_test_and_set: rte_pipeline_rte_atomic16_test_and_set.type
    var rte_atomic16_clear: rte_pipeline_rte_atomic16_clear.type
    var rte_atomic32_cmpset: rte_pipeline_rte_atomic32_cmpset.type
    var rte_atomic32_exchange: rte_pipeline_rte_atomic32_exchange.type
    var rte_atomic32_init: rte_pipeline_rte_atomic32_init.type
    var rte_atomic32_read: rte_pipeline_rte_atomic32_read.type
    var rte_atomic32_set: rte_pipeline_rte_atomic32_set.type
    var rte_atomic32_add: rte_pipeline_rte_atomic32_add.type
    var rte_atomic32_sub: rte_pipeline_rte_atomic32_sub.type
    var rte_atomic32_inc: rte_pipeline_rte_atomic32_inc.type
    var rte_atomic32_dec: rte_pipeline_rte_atomic32_dec.type
    var rte_atomic32_add_return: rte_pipeline_rte_atomic32_add_return.type
    var rte_atomic32_sub_return: rte_pipeline_rte_atomic32_sub_return.type
    var rte_atomic32_inc_and_test: rte_pipeline_rte_atomic32_inc_and_test.type
    var rte_atomic32_dec_and_test: rte_pipeline_rte_atomic32_dec_and_test.type
    var rte_atomic32_test_and_set: rte_pipeline_rte_atomic32_test_and_set.type
    var rte_atomic32_clear: rte_pipeline_rte_atomic32_clear.type
    var rte_atomic64_cmpset: rte_pipeline_rte_atomic64_cmpset.type
    var rte_atomic64_exchange: rte_pipeline_rte_atomic64_exchange.type
    var rte_atomic64_init: rte_pipeline_rte_atomic64_init.type
    var rte_atomic64_read: rte_pipeline_rte_atomic64_read.type
    var rte_atomic64_set: rte_pipeline_rte_atomic64_set.type
    var rte_atomic64_add: rte_pipeline_rte_atomic64_add.type
    var rte_atomic64_sub: rte_pipeline_rte_atomic64_sub.type
    var rte_atomic64_inc: rte_pipeline_rte_atomic64_inc.type
    var rte_atomic64_dec: rte_pipeline_rte_atomic64_dec.type
    var rte_atomic64_add_return: rte_pipeline_rte_atomic64_add_return.type
    var rte_atomic64_sub_return: rte_pipeline_rte_atomic64_sub_return.type
    var rte_atomic64_inc_and_test: rte_pipeline_rte_atomic64_inc_and_test.type
    var rte_atomic64_dec_and_test: rte_pipeline_rte_atomic64_dec_and_test.type
    var rte_atomic64_test_and_set: rte_pipeline_rte_atomic64_test_and_set.type
    var rte_atomic64_clear: rte_pipeline_rte_atomic64_clear.type
    var rte_openlog_stream: rte_pipeline_rte_openlog_stream.type
    var rte_log_get_stream: rte_pipeline_rte_log_get_stream.type
    var rte_log_set_global_level: rte_pipeline_rte_log_set_global_level.type
    var rte_log_get_global_level: rte_pipeline_rte_log_get_global_level.type
    var rte_log_get_level: rte_pipeline_rte_log_get_level.type
    var rte_log_can_log: rte_pipeline_rte_log_can_log.type
    var rte_log_set_level_pattern: rte_pipeline_rte_log_set_level_pattern.type
    var rte_log_set_level_regexp: rte_pipeline_rte_log_set_level_regexp.type
    var rte_log_set_level: rte_pipeline_rte_log_set_level.type
    var rte_log_cur_msg_loglevel: rte_pipeline_rte_log_cur_msg_loglevel.type
    var rte_log_cur_msg_logtype: rte_pipeline_rte_log_cur_msg_logtype.type
    var rte_log_register: rte_pipeline_rte_log_register.type
    var rte_log_register_type_and_pick_level: rte_pipeline_rte_log_register_type_and_pick_level.type
    var rte_log_list_types: rte_pipeline_rte_log_list_types.type
    var rte_log_dump: rte_pipeline_rte_log_dump.type
    var rte_log: rte_pipeline_rte_log.type
    var rte_vlog: rte_pipeline_rte_vlog.type
    var rte_dump_stack: rte_pipeline_rte_dump_stack.type
    var rte_atomic128_cmp_exchange: rte_pipeline_rte_atomic128_cmp_exchange.type
    var rte_pause: rte_pipeline_rte_pause.type
    var rte_wait_until_equal_16: rte_pipeline_rte_wait_until_equal_16.type
    var rte_wait_until_equal_32: rte_pipeline_rte_wait_until_equal_32.type
    var rte_wait_until_equal_64: rte_pipeline_rte_wait_until_equal_64.type
    var rte_spinlock_init: rte_pipeline_rte_spinlock_init.type
    var rte_spinlock_lock: rte_pipeline_rte_spinlock_lock.type
    var rte_spinlock_unlock: rte_pipeline_rte_spinlock_unlock.type
    var rte_spinlock_trylock: rte_pipeline_rte_spinlock_trylock.type
    var rte_spinlock_is_locked: rte_pipeline_rte_spinlock_is_locked.type
    var rte_tm_supported: rte_pipeline_rte_tm_supported.type
    var rte_spinlock_lock_tm: rte_pipeline_rte_spinlock_lock_tm.type
    var rte_spinlock_unlock_tm: rte_pipeline_rte_spinlock_unlock_tm.type
    var rte_spinlock_trylock_tm: rte_pipeline_rte_spinlock_trylock_tm.type
    var rte_spinlock_recursive_init: rte_pipeline_rte_spinlock_recursive_init.type
    var rte_spinlock_recursive_lock: rte_pipeline_rte_spinlock_recursive_lock.type
    var rte_spinlock_recursive_unlock: rte_pipeline_rte_spinlock_recursive_unlock.type
    var rte_spinlock_recursive_trylock: rte_pipeline_rte_spinlock_recursive_trylock.type
    var rte_spinlock_recursive_lock_tm: rte_pipeline_rte_spinlock_recursive_lock_tm.type
    var rte_spinlock_recursive_unlock_tm: rte_pipeline_rte_spinlock_recursive_unlock_tm.type
    var rte_spinlock_recursive_trylock_tm: rte_pipeline_rte_spinlock_recursive_trylock_tm.type
    var rte_bit_relaxed_get32: rte_pipeline_rte_bit_relaxed_get32.type
    var rte_bit_relaxed_set32: rte_pipeline_rte_bit_relaxed_set32.type
    var rte_bit_relaxed_clear32: rte_pipeline_rte_bit_relaxed_clear32.type
    var rte_bit_relaxed_test_and_set32: rte_pipeline_rte_bit_relaxed_test_and_set32.type
    var rte_bit_relaxed_test_and_clear32: rte_pipeline_rte_bit_relaxed_test_and_clear32.type
    var rte_bit_relaxed_get64: rte_pipeline_rte_bit_relaxed_get64.type
    var rte_bit_relaxed_set64: rte_pipeline_rte_bit_relaxed_set64.type
    var rte_bit_relaxed_clear64: rte_pipeline_rte_bit_relaxed_clear64.type
    var rte_bit_relaxed_test_and_set64: rte_pipeline_rte_bit_relaxed_test_and_set64.type
    var rte_bit_relaxed_test_and_clear64: rte_pipeline_rte_bit_relaxed_test_and_clear64.type
    var rte_clz32: rte_pipeline_rte_clz32.type
    var rte_clz64: rte_pipeline_rte_clz64.type
    var rte_ctz32: rte_pipeline_rte_ctz32.type
    var rte_ctz64: rte_pipeline_rte_ctz64.type
    var rte_popcount32: rte_pipeline_rte_popcount32.type
    var rte_popcount64: rte_pipeline_rte_popcount64.type
    var rte_ffs32: rte_pipeline_rte_ffs32.type
    var rte_ffs64: rte_pipeline_rte_ffs64.type
    var rte_combine32ms1b: rte_pipeline_rte_combine32ms1b.type
    var rte_combine64ms1b: rte_pipeline_rte_combine64ms1b.type
    var rte_bsf32: rte_pipeline_rte_bsf32.type
    var rte_bsf32_safe: rte_pipeline_rte_bsf32_safe.type
    var rte_bsf64: rte_pipeline_rte_bsf64.type
    var rte_bsf64_safe: rte_pipeline_rte_bsf64_safe.type
    var rte_fls_u32: rte_pipeline_rte_fls_u32.type
    var rte_fls_u64: rte_pipeline_rte_fls_u64.type
    var rte_is_power_of_2: rte_pipeline_rte_is_power_of_2.type
    var rte_align32pow2: rte_pipeline_rte_align32pow2.type
    var rte_align32prevpow2: rte_pipeline_rte_align32prevpow2.type
    var rte_align64pow2: rte_pipeline_rte_align64pow2.type
    var rte_align64prevpow2: rte_pipeline_rte_align64prevpow2.type
    var rte_log2_u32: rte_pipeline_rte_log2_u32.type
    var rte_log2_u64: rte_pipeline_rte_log2_u64.type
    var rte_rwlock_init: rte_pipeline_rte_rwlock_init.type
    var rte_rwlock_read_lock: rte_pipeline_rte_rwlock_read_lock.type
    var rte_rwlock_read_trylock: rte_pipeline_rte_rwlock_read_trylock.type
    var rte_rwlock_read_unlock: rte_pipeline_rte_rwlock_read_unlock.type
    var rte_rwlock_write_trylock: rte_pipeline_rte_rwlock_write_trylock.type
    var rte_rwlock_write_lock: rte_pipeline_rte_rwlock_write_lock.type
    var rte_rwlock_write_unlock: rte_pipeline_rte_rwlock_write_unlock.type
    var rte_rwlock_write_is_locked: rte_pipeline_rte_rwlock_write_is_locked.type
    var rte_rwlock_read_lock_tm: rte_pipeline_rte_rwlock_read_lock_tm.type
    var rte_rwlock_read_unlock_tm: rte_pipeline_rte_rwlock_read_unlock_tm.type
    var rte_rwlock_write_lock_tm: rte_pipeline_rte_rwlock_write_lock_tm.type
    var rte_rwlock_write_unlock_tm: rte_pipeline_rte_rwlock_write_unlock_tm.type
    var rte_mcfg_mem_get_lock: rte_pipeline_rte_mcfg_mem_get_lock.type
    var rte_mcfg_tailq_get_lock: rte_pipeline_rte_mcfg_tailq_get_lock.type
    var rte_mcfg_mempool_get_lock: rte_pipeline_rte_mcfg_mempool_get_lock.type
    var rte_mcfg_timer_get_lock: rte_pipeline_rte_mcfg_timer_get_lock.type
    var rte_mcfg_ethdev_get_lock: rte_pipeline_rte_mcfg_ethdev_get_lock.type
    var rte_mcfg_mem_read_lock: rte_pipeline_rte_mcfg_mem_read_lock.type
    var rte_mcfg_mem_read_unlock: rte_pipeline_rte_mcfg_mem_read_unlock.type
    var rte_mcfg_mem_write_lock: rte_pipeline_rte_mcfg_mem_write_lock.type
    var rte_mcfg_mem_write_unlock: rte_pipeline_rte_mcfg_mem_write_unlock.type
    var rte_mcfg_tailq_read_lock: rte_pipeline_rte_mcfg_tailq_read_lock.type
    var rte_mcfg_tailq_read_unlock: rte_pipeline_rte_mcfg_tailq_read_unlock.type
    var rte_mcfg_tailq_write_lock: rte_pipeline_rte_mcfg_tailq_write_lock.type
    var rte_mcfg_tailq_write_unlock: rte_pipeline_rte_mcfg_tailq_write_unlock.type
    var rte_mcfg_mempool_read_lock: rte_pipeline_rte_mcfg_mempool_read_lock.type
    var rte_mcfg_mempool_read_unlock: rte_pipeline_rte_mcfg_mempool_read_unlock.type
    var rte_mcfg_mempool_write_lock: rte_pipeline_rte_mcfg_mempool_write_lock.type
    var rte_mcfg_mempool_write_unlock: rte_pipeline_rte_mcfg_mempool_write_unlock.type
    var rte_mcfg_timer_lock: rte_pipeline_rte_mcfg_timer_lock.type
    var rte_mcfg_timer_unlock: rte_pipeline_rte_mcfg_timer_unlock.type
    var rte_mcfg_get_single_file_segments: rte_pipeline_rte_mcfg_get_single_file_segments.type
    var rte_fbarray_init: rte_pipeline_rte_fbarray_init.type
    var rte_fbarray_attach: rte_pipeline_rte_fbarray_attach.type
    var rte_fbarray_destroy: rte_pipeline_rte_fbarray_destroy.type
    var rte_fbarray_detach: rte_pipeline_rte_fbarray_detach.type
    var rte_fbarray_get: rte_pipeline_rte_fbarray_get.type
    var rte_fbarray_find_idx: rte_pipeline_rte_fbarray_find_idx.type
    var rte_fbarray_set_used: rte_pipeline_rte_fbarray_set_used.type
    var rte_fbarray_set_free: rte_pipeline_rte_fbarray_set_free.type
    var rte_fbarray_is_used: rte_pipeline_rte_fbarray_is_used.type
    var rte_fbarray_find_next_free: rte_pipeline_rte_fbarray_find_next_free.type
    var rte_fbarray_find_next_used: rte_pipeline_rte_fbarray_find_next_used.type
    var rte_fbarray_find_next_n_free: rte_pipeline_rte_fbarray_find_next_n_free.type
    var rte_fbarray_find_next_n_used: rte_pipeline_rte_fbarray_find_next_n_used.type
    var rte_fbarray_find_contig_free: rte_pipeline_rte_fbarray_find_contig_free.type
    var rte_fbarray_find_contig_used: rte_pipeline_rte_fbarray_find_contig_used.type
    var rte_fbarray_find_prev_free: rte_pipeline_rte_fbarray_find_prev_free.type
    var rte_fbarray_find_prev_used: rte_pipeline_rte_fbarray_find_prev_used.type
    var rte_fbarray_find_prev_n_free: rte_pipeline_rte_fbarray_find_prev_n_free.type
    var rte_fbarray_find_prev_n_used: rte_pipeline_rte_fbarray_find_prev_n_used.type
    var rte_fbarray_find_rev_contig_free: rte_pipeline_rte_fbarray_find_rev_contig_free.type
    var rte_fbarray_find_rev_contig_used: rte_pipeline_rte_fbarray_find_rev_contig_used.type
    var rte_fbarray_find_biggest_free: rte_pipeline_rte_fbarray_find_biggest_free.type
    var rte_fbarray_find_biggest_used: rte_pipeline_rte_fbarray_find_biggest_used.type
    var rte_fbarray_find_rev_biggest_free: rte_pipeline_rte_fbarray_find_rev_biggest_free.type
    var rte_fbarray_find_rev_biggest_used: rte_pipeline_rte_fbarray_find_rev_biggest_used.type
    var rte_fbarray_dump_metadata: rte_pipeline_rte_fbarray_dump_metadata.type
    var rte_mem_lock_page: rte_pipeline_rte_mem_lock_page.type
    var rte_mem_virt2phy: rte_pipeline_rte_mem_virt2phy.type
    var rte_mem_virt2iova: rte_pipeline_rte_mem_virt2iova.type
    var rte_mem_iova2virt: rte_pipeline_rte_mem_iova2virt.type
    var rte_mem_virt2memseg: rte_pipeline_rte_mem_virt2memseg.type
    var rte_mem_virt2memseg_list: rte_pipeline_rte_mem_virt2memseg_list.type
    var rte_memseg_walk: rte_pipeline_rte_memseg_walk.type
    var rte_memseg_contig_walk: rte_pipeline_rte_memseg_contig_walk.type
    var rte_memseg_list_walk: rte_pipeline_rte_memseg_list_walk.type
    var rte_memseg_walk_thread_unsafe: rte_pipeline_rte_memseg_walk_thread_unsafe.type
    var rte_memseg_contig_walk_thread_unsafe: rte_pipeline_rte_memseg_contig_walk_thread_unsafe.type
    var rte_memseg_list_walk_thread_unsafe: rte_pipeline_rte_memseg_list_walk_thread_unsafe.type
    var rte_memseg_get_fd: rte_pipeline_rte_memseg_get_fd.type
    var rte_memseg_get_fd_thread_unsafe: rte_pipeline_rte_memseg_get_fd_thread_unsafe.type
    var rte_memseg_get_fd_offset: rte_pipeline_rte_memseg_get_fd_offset.type
    var rte_memseg_get_fd_offset_thread_unsafe: rte_pipeline_rte_memseg_get_fd_offset_thread_unsafe.type
    var rte_extmem_register: rte_pipeline_rte_extmem_register.type
    var rte_extmem_unregister: rte_pipeline_rte_extmem_unregister.type
    var rte_extmem_attach: rte_pipeline_rte_extmem_attach.type
    var rte_extmem_detach: rte_pipeline_rte_extmem_detach.type
    var rte_dump_physmem_layout: rte_pipeline_rte_dump_physmem_layout.type
    var rte_eal_get_physmem_size: rte_pipeline_rte_eal_get_physmem_size.type
    var rte_memory_get_nchannel: rte_pipeline_rte_memory_get_nchannel.type
    var rte_memory_get_nrank: rte_pipeline_rte_memory_get_nrank.type
    var rte_mem_check_dma_mask: rte_pipeline_rte_mem_check_dma_mask.type
    var rte_mem_check_dma_mask_thread_unsafe: rte_pipeline_rte_mem_check_dma_mask_thread_unsafe.type
    var rte_mem_set_dma_mask: rte_pipeline_rte_mem_set_dma_mask.type
    var rte_eal_using_phys_addrs: rte_pipeline_rte_eal_using_phys_addrs.type
    var rte_mem_event_callback_register: rte_pipeline_rte_mem_event_callback_register.type
    var rte_mem_event_callback_unregister: rte_pipeline_rte_mem_event_callback_unregister.type
    var rte_mem_alloc_validator_register: rte_pipeline_rte_mem_alloc_validator_register.type
    var rte_mem_alloc_validator_unregister: rte_pipeline_rte_mem_alloc_validator_unregister.type
    var rte_memzero_explicit: rte_pipeline_rte_memzero_explicit.type
    var rte_memzone_max_set: rte_pipeline_rte_memzone_max_set.type
    var rte_memzone_max_get: rte_pipeline_rte_memzone_max_get.type
    var rte_memzone_reserve: rte_pipeline_rte_memzone_reserve.type
    var rte_memzone_reserve_aligned: rte_pipeline_rte_memzone_reserve_aligned.type
    var rte_memzone_reserve_bounded: rte_pipeline_rte_memzone_reserve_bounded.type
    var rte_memzone_free: rte_pipeline_rte_memzone_free.type
    var rte_memzone_lookup: rte_pipeline_rte_memzone_lookup.type
    var rte_memzone_dump: rte_pipeline_rte_memzone_dump.type
    var rte_memzone_walk: rte_pipeline_rte_memzone_walk.type
    var rte_ring_get_memsize_elem: rte_pipeline_rte_ring_get_memsize_elem.type
    var rte_ring_create_elem: rte_pipeline_rte_ring_create_elem.type
    var rte_ring_mp_enqueue_bulk_elem: rte_pipeline_rte_ring_mp_enqueue_bulk_elem.type
    var rte_ring_sp_enqueue_bulk_elem: rte_pipeline_rte_ring_sp_enqueue_bulk_elem.type
    var rte_ring_mp_hts_enqueue_bulk_elem: rte_pipeline_rte_ring_mp_hts_enqueue_bulk_elem.type
    var rte_ring_mc_hts_dequeue_bulk_elem: rte_pipeline_rte_ring_mc_hts_dequeue_bulk_elem.type
    var rte_ring_mp_hts_enqueue_burst_elem: rte_pipeline_rte_ring_mp_hts_enqueue_burst_elem.type
    var rte_ring_mc_hts_dequeue_burst_elem: rte_pipeline_rte_ring_mc_hts_dequeue_burst_elem.type
    var rte_ring_mp_hts_enqueue_bulk: rte_pipeline_rte_ring_mp_hts_enqueue_bulk.type
    var rte_ring_mc_hts_dequeue_bulk: rte_pipeline_rte_ring_mc_hts_dequeue_bulk.type
    var rte_ring_mp_hts_enqueue_burst: rte_pipeline_rte_ring_mp_hts_enqueue_burst.type
    var rte_ring_mc_hts_dequeue_burst: rte_pipeline_rte_ring_mc_hts_dequeue_burst.type
    var rte_ring_mp_rts_enqueue_bulk_elem: rte_pipeline_rte_ring_mp_rts_enqueue_bulk_elem.type
    var rte_ring_mc_rts_dequeue_bulk_elem: rte_pipeline_rte_ring_mc_rts_dequeue_bulk_elem.type
    var rte_ring_mp_rts_enqueue_burst_elem: rte_pipeline_rte_ring_mp_rts_enqueue_burst_elem.type
    var rte_ring_mc_rts_dequeue_burst_elem: rte_pipeline_rte_ring_mc_rts_dequeue_burst_elem.type
    var rte_ring_mp_rts_enqueue_bulk: rte_pipeline_rte_ring_mp_rts_enqueue_bulk.type
    var rte_ring_mc_rts_dequeue_bulk: rte_pipeline_rte_ring_mc_rts_dequeue_bulk.type
    var rte_ring_mp_rts_enqueue_burst: rte_pipeline_rte_ring_mp_rts_enqueue_burst.type
    var rte_ring_mc_rts_dequeue_burst: rte_pipeline_rte_ring_mc_rts_dequeue_burst.type
    var rte_ring_get_prod_htd_max: rte_pipeline_rte_ring_get_prod_htd_max.type
    var rte_ring_set_prod_htd_max: rte_pipeline_rte_ring_set_prod_htd_max.type
    var rte_ring_get_cons_htd_max: rte_pipeline_rte_ring_get_cons_htd_max.type
    var rte_ring_set_cons_htd_max: rte_pipeline_rte_ring_set_cons_htd_max.type
    var rte_ring_enqueue_bulk_elem: rte_pipeline_rte_ring_enqueue_bulk_elem.type
    var rte_ring_mp_enqueue_elem: rte_pipeline_rte_ring_mp_enqueue_elem.type
    var rte_ring_sp_enqueue_elem: rte_pipeline_rte_ring_sp_enqueue_elem.type
    var rte_ring_enqueue_elem: rte_pipeline_rte_ring_enqueue_elem.type
    var rte_ring_mc_dequeue_bulk_elem: rte_pipeline_rte_ring_mc_dequeue_bulk_elem.type
    var rte_ring_sc_dequeue_bulk_elem: rte_pipeline_rte_ring_sc_dequeue_bulk_elem.type
    var rte_ring_dequeue_bulk_elem: rte_pipeline_rte_ring_dequeue_bulk_elem.type
    var rte_ring_mc_dequeue_elem: rte_pipeline_rte_ring_mc_dequeue_elem.type
    var rte_ring_sc_dequeue_elem: rte_pipeline_rte_ring_sc_dequeue_elem.type
    var rte_ring_dequeue_elem: rte_pipeline_rte_ring_dequeue_elem.type
    var rte_ring_mp_enqueue_burst_elem: rte_pipeline_rte_ring_mp_enqueue_burst_elem.type
    var rte_ring_sp_enqueue_burst_elem: rte_pipeline_rte_ring_sp_enqueue_burst_elem.type
    var rte_ring_enqueue_burst_elem: rte_pipeline_rte_ring_enqueue_burst_elem.type
    var rte_ring_mc_dequeue_burst_elem: rte_pipeline_rte_ring_mc_dequeue_burst_elem.type
    var rte_ring_sc_dequeue_burst_elem: rte_pipeline_rte_ring_sc_dequeue_burst_elem.type
    var rte_ring_dequeue_burst_elem: rte_pipeline_rte_ring_dequeue_burst_elem.type
    var rte_ring_enqueue_bulk_elem_start: rte_pipeline_rte_ring_enqueue_bulk_elem_start.type
    var rte_ring_enqueue_bulk_start: rte_pipeline_rte_ring_enqueue_bulk_start.type
    var rte_ring_enqueue_burst_elem_start: rte_pipeline_rte_ring_enqueue_burst_elem_start.type
    var rte_ring_enqueue_burst_start: rte_pipeline_rte_ring_enqueue_burst_start.type
    var rte_ring_enqueue_elem_finish: rte_pipeline_rte_ring_enqueue_elem_finish.type
    var rte_ring_enqueue_finish: rte_pipeline_rte_ring_enqueue_finish.type
    var rte_ring_dequeue_bulk_elem_start: rte_pipeline_rte_ring_dequeue_bulk_elem_start.type
    var rte_ring_dequeue_bulk_start: rte_pipeline_rte_ring_dequeue_bulk_start.type
    var rte_ring_dequeue_burst_elem_start: rte_pipeline_rte_ring_dequeue_burst_elem_start.type
    var rte_ring_dequeue_burst_start: rte_pipeline_rte_ring_dequeue_burst_start.type
    var rte_ring_dequeue_elem_finish: rte_pipeline_rte_ring_dequeue_elem_finish.type
    var rte_ring_dequeue_finish: rte_pipeline_rte_ring_dequeue_finish.type
    var rte_ring_enqueue_zc_bulk_elem_start: rte_pipeline_rte_ring_enqueue_zc_bulk_elem_start.type
    var rte_ring_enqueue_zc_bulk_start: rte_pipeline_rte_ring_enqueue_zc_bulk_start.type
    var rte_ring_enqueue_zc_burst_elem_start: rte_pipeline_rte_ring_enqueue_zc_burst_elem_start.type
    var rte_ring_enqueue_zc_burst_start: rte_pipeline_rte_ring_enqueue_zc_burst_start.type
    var rte_ring_enqueue_zc_elem_finish: rte_pipeline_rte_ring_enqueue_zc_elem_finish.type
    var rte_ring_enqueue_zc_finish: rte_pipeline_rte_ring_enqueue_zc_finish.type
    var rte_ring_dequeue_zc_bulk_elem_start: rte_pipeline_rte_ring_dequeue_zc_bulk_elem_start.type
    var rte_ring_dequeue_zc_bulk_start: rte_pipeline_rte_ring_dequeue_zc_bulk_start.type
    var rte_ring_dequeue_zc_burst_elem_start: rte_pipeline_rte_ring_dequeue_zc_burst_elem_start.type
    var rte_ring_dequeue_zc_burst_start: rte_pipeline_rte_ring_dequeue_zc_burst_start.type
    var rte_ring_dequeue_zc_elem_finish: rte_pipeline_rte_ring_dequeue_zc_elem_finish.type
    var rte_ring_dequeue_zc_finish: rte_pipeline_rte_ring_dequeue_zc_finish.type
    var rte_ring_get_memsize: rte_pipeline_rte_ring_get_memsize.type
    var rte_ring_init: rte_pipeline_rte_ring_init.type
    var rte_ring_free: rte_pipeline_rte_ring_free.type
    var rte_ring_create: rte_pipeline_rte_ring_create.type
    var rte_ring_dump: rte_pipeline_rte_ring_dump.type
    var rte_ring_headtail_dump: rte_pipeline_rte_ring_headtail_dump.type
    var rte_ring_mp_enqueue_bulk: rte_pipeline_rte_ring_mp_enqueue_bulk.type
    var rte_ring_sp_enqueue_bulk: rte_pipeline_rte_ring_sp_enqueue_bulk.type
    var rte_ring_enqueue_bulk: rte_pipeline_rte_ring_enqueue_bulk.type
    var rte_ring_mp_enqueue: rte_pipeline_rte_ring_mp_enqueue.type
    var rte_ring_sp_enqueue: rte_pipeline_rte_ring_sp_enqueue.type
    var rte_ring_enqueue: rte_pipeline_rte_ring_enqueue.type
    var rte_ring_mc_dequeue_bulk: rte_pipeline_rte_ring_mc_dequeue_bulk.type
    var rte_ring_sc_dequeue_bulk: rte_pipeline_rte_ring_sc_dequeue_bulk.type
    var rte_ring_dequeue_bulk: rte_pipeline_rte_ring_dequeue_bulk.type
    var rte_ring_mc_dequeue: rte_pipeline_rte_ring_mc_dequeue.type
    var rte_ring_sc_dequeue: rte_pipeline_rte_ring_sc_dequeue.type
    var rte_ring_dequeue: rte_pipeline_rte_ring_dequeue.type
    var rte_ring_reset: rte_pipeline_rte_ring_reset.type
    var rte_ring_count: rte_pipeline_rte_ring_count.type
    var rte_ring_free_count: rte_pipeline_rte_ring_free_count.type
    var rte_ring_full: rte_pipeline_rte_ring_full.type
    var rte_ring_empty: rte_pipeline_rte_ring_empty.type
    var rte_ring_get_size: rte_pipeline_rte_ring_get_size.type
    var rte_ring_get_capacity: rte_pipeline_rte_ring_get_capacity.type
    var rte_ring_get_prod_sync_type: rte_pipeline_rte_ring_get_prod_sync_type.type
    var rte_ring_is_prod_single: rte_pipeline_rte_ring_is_prod_single.type
    var rte_ring_get_cons_sync_type: rte_pipeline_rte_ring_get_cons_sync_type.type
    var rte_ring_is_cons_single: rte_pipeline_rte_ring_is_cons_single.type
    var rte_ring_list_dump: rte_pipeline_rte_ring_list_dump.type
    var rte_ring_lookup: rte_pipeline_rte_ring_lookup.type
    var rte_ring_mp_enqueue_burst: rte_pipeline_rte_ring_mp_enqueue_burst.type
    var rte_ring_sp_enqueue_burst: rte_pipeline_rte_ring_sp_enqueue_burst.type
    var rte_ring_enqueue_burst: rte_pipeline_rte_ring_enqueue_burst.type
    var rte_ring_mc_dequeue_burst: rte_pipeline_rte_ring_mc_dequeue_burst.type
    var rte_ring_sc_dequeue_burst: rte_pipeline_rte_ring_sc_dequeue_burst.type
    var rte_ring_dequeue_burst: rte_pipeline_rte_ring_dequeue_burst.type
    var rte_mov16: rte_pipeline_rte_mov16.type
    var rte_mov32: rte_pipeline_rte_mov32.type
    var rte_mov64: rte_pipeline_rte_mov64.type
    var rte_mov128: rte_pipeline_rte_mov128.type
    var rte_mov256: rte_pipeline_rte_mov256.type
    var rte_mov48: rte_pipeline_rte_mov48.type
    var rte_get_tsc_hz: rte_pipeline_rte_get_tsc_hz.type
    var rte_get_tsc_cycles: rte_pipeline_rte_get_tsc_cycles.type
    var rte_get_timer_cycles: rte_pipeline_rte_get_timer_cycles.type
    var rte_get_timer_hz: rte_pipeline_rte_get_timer_hz.type
    var rte_delay_ms: rte_pipeline_rte_delay_ms.type
    var rte_delay_us_block: rte_pipeline_rte_delay_us_block.type
    var rte_delay_us_sleep: rte_pipeline_rte_delay_us_sleep.type
    var rte_delay_us_callback_register: rte_pipeline_rte_delay_us_callback_register.type
    var rte_rdtsc: rte_pipeline_rte_rdtsc.type
    var rte_rdtsc_precise: rte_pipeline_rte_rdtsc_precise.type
    var isalnum: rte_pipeline_isalnum.type
    var isalpha: rte_pipeline_isalpha.type
    var iscntrl: rte_pipeline_iscntrl.type
    var isdigit: rte_pipeline_isdigit.type
    var islower: rte_pipeline_islower.type
    var isgraph: rte_pipeline_isgraph.type
    var isprint: rte_pipeline_isprint.type
    var ispunct: rte_pipeline_ispunct.type
    var isspace: rte_pipeline_isspace.type
    var isupper: rte_pipeline_isupper.type
    var isxdigit: rte_pipeline_isxdigit.type
    var tolower: rte_pipeline_tolower.type
    var toupper: rte_pipeline_toupper.type
    var isblank: rte_pipeline_isblank.type
    var isascii: rte_pipeline_isascii.type
    var toascii: rte_pipeline_toascii.type
    var isalnum_l: rte_pipeline_isalnum_l.type
    var isalpha_l: rte_pipeline_isalpha_l.type
    var iscntrl_l: rte_pipeline_iscntrl_l.type
    var isdigit_l: rte_pipeline_isdigit_l.type
    var islower_l: rte_pipeline_islower_l.type
    var isgraph_l: rte_pipeline_isgraph_l.type
    var isprint_l: rte_pipeline_isprint_l.type
    var ispunct_l: rte_pipeline_ispunct_l.type
    var isspace_l: rte_pipeline_isspace_l.type
    var isupper_l: rte_pipeline_isupper_l.type
    var isxdigit_l: rte_pipeline_isxdigit_l.type
    var isblank_l: rte_pipeline_isblank_l.type
    var tolower_l: rte_pipeline_tolower_l.type
    var toupper_l: rte_pipeline_toupper_l.type
    var rte_strsplit: rte_pipeline_rte_strsplit.type
    var rte_strlcpy: rte_pipeline_rte_strlcpy.type
    var rte_strlcat: rte_pipeline_rte_strlcat.type
    var rte_strscpy: rte_pipeline_rte_strscpy.type
    var rte_str_skip_leading_spaces: rte_pipeline_rte_str_skip_leading_spaces.type
    var rte_trace_is_enabled: rte_pipeline_rte_trace_is_enabled.type
    var rte_trace_feature_is_enabled: rte_pipeline_rte_trace_feature_is_enabled.type
    var rte_trace_mode_set: rte_pipeline_rte_trace_mode_set.type
    var rte_trace_mode_get: rte_pipeline_rte_trace_mode_get.type
    var rte_trace_pattern: rte_pipeline_rte_trace_pattern.type
    var rte_trace_regexp: rte_pipeline_rte_trace_regexp.type
    var rte_trace_save: rte_pipeline_rte_trace_save.type
    var rte_trace_metadata_dump: rte_pipeline_rte_trace_metadata_dump.type
    var rte_trace_dump: rte_pipeline_rte_trace_dump.type
    var rte_trace_point_enable: rte_pipeline_rte_trace_point_enable.type
    var rte_trace_point_disable: rte_pipeline_rte_trace_point_disable.type
    var rte_trace_point_is_enabled: rte_pipeline_rte_trace_point_is_enabled.type
    var rte_trace_point_lookup: rte_pipeline_rte_trace_point_lookup.type
    var rte_mempool_trace_ops_dequeue_bulk: rte_pipeline_rte_mempool_trace_ops_dequeue_bulk.type
    var rte_mempool_trace_ops_dequeue_contig_blocks: rte_pipeline_rte_mempool_trace_ops_dequeue_contig_blocks.type
    var rte_mempool_trace_ops_enqueue_bulk: rte_pipeline_rte_mempool_trace_ops_enqueue_bulk.type
    var rte_mempool_trace_generic_put: rte_pipeline_rte_mempool_trace_generic_put.type
    var rte_mempool_trace_put_bulk: rte_pipeline_rte_mempool_trace_put_bulk.type
    var rte_mempool_trace_generic_get: rte_pipeline_rte_mempool_trace_generic_get.type
    var rte_mempool_trace_get_bulk: rte_pipeline_rte_mempool_trace_get_bulk.type
    var rte_mempool_trace_get_contig_blocks: rte_pipeline_rte_mempool_trace_get_contig_blocks.type
    var rte_mempool_trace_default_cache: rte_pipeline_rte_mempool_trace_default_cache.type
    var rte_mempool_trace_cache_flush: rte_pipeline_rte_mempool_trace_cache_flush.type
    var rte_mempool_get_header: rte_pipeline_rte_mempool_get_header.type
    var rte_mempool_from_obj: rte_pipeline_rte_mempool_from_obj.type
    var rte_mempool_get_trailer: rte_pipeline_rte_mempool_get_trailer.type
    var rte_mempool_check_cookies: rte_pipeline_rte_mempool_check_cookies.type
    var rte_mempool_contig_blocks_check_cookies: rte_pipeline_rte_mempool_contig_blocks_check_cookies.type
    var rte_mempool_op_calc_mem_size_helper: rte_pipeline_rte_mempool_op_calc_mem_size_helper.type
    var rte_mempool_op_calc_mem_size_default: rte_pipeline_rte_mempool_op_calc_mem_size_default.type
    var rte_mempool_op_populate_helper: rte_pipeline_rte_mempool_op_populate_helper.type
    var rte_mempool_op_populate_default: rte_pipeline_rte_mempool_op_populate_default.type
    var rte_mempool_get_ops: rte_pipeline_rte_mempool_get_ops.type
    var rte_mempool_ops_alloc: rte_pipeline_rte_mempool_ops_alloc.type
    var rte_mempool_ops_dequeue_bulk: rte_pipeline_rte_mempool_ops_dequeue_bulk.type
    var rte_mempool_ops_dequeue_contig_blocks: rte_pipeline_rte_mempool_ops_dequeue_contig_blocks.type
    var rte_mempool_ops_enqueue_bulk: rte_pipeline_rte_mempool_ops_enqueue_bulk.type
    var rte_mempool_ops_get_count: rte_pipeline_rte_mempool_ops_get_count.type
    var rte_mempool_ops_calc_mem_size: rte_pipeline_rte_mempool_ops_calc_mem_size.type
    var rte_mempool_ops_populate: rte_pipeline_rte_mempool_ops_populate.type
    var rte_mempool_ops_get_info: rte_pipeline_rte_mempool_ops_get_info.type
    var rte_mempool_ops_free: rte_pipeline_rte_mempool_ops_free.type
    var rte_mempool_set_ops_byname: rte_pipeline_rte_mempool_set_ops_byname.type
    var rte_mempool_register_ops: rte_pipeline_rte_mempool_register_ops.type
    var rte_mempool_free: rte_pipeline_rte_mempool_free.type
    var rte_mempool_create: rte_pipeline_rte_mempool_create.type
    var rte_mempool_create_empty: rte_pipeline_rte_mempool_create_empty.type
    var rte_mempool_populate_iova: rte_pipeline_rte_mempool_populate_iova.type
    var rte_mempool_populate_virt: rte_pipeline_rte_mempool_populate_virt.type
    var rte_mempool_populate_default: rte_pipeline_rte_mempool_populate_default.type
    var rte_mempool_populate_anon: rte_pipeline_rte_mempool_populate_anon.type
    var rte_mempool_obj_iter: rte_pipeline_rte_mempool_obj_iter.type
    var rte_mempool_mem_iter: rte_pipeline_rte_mempool_mem_iter.type
    var rte_mempool_dump: rte_pipeline_rte_mempool_dump.type
    var rte_mempool_cache_create: rte_pipeline_rte_mempool_cache_create.type
    var rte_mempool_cache_free: rte_pipeline_rte_mempool_cache_free.type
    var rte_mempool_default_cache: rte_pipeline_rte_mempool_default_cache.type
    var rte_mempool_cache_flush: rte_pipeline_rte_mempool_cache_flush.type
    var rte_mempool_do_generic_put: rte_pipeline_rte_mempool_do_generic_put.type
    var rte_mempool_generic_put: rte_pipeline_rte_mempool_generic_put.type
    var rte_mempool_put_bulk: rte_pipeline_rte_mempool_put_bulk.type
    var rte_mempool_put: rte_pipeline_rte_mempool_put.type
    var rte_mempool_do_generic_get: rte_pipeline_rte_mempool_do_generic_get.type
    var rte_mempool_generic_get: rte_pipeline_rte_mempool_generic_get.type
    var rte_mempool_get_bulk: rte_pipeline_rte_mempool_get_bulk.type
    var rte_mempool_get: rte_pipeline_rte_mempool_get.type
    var rte_mempool_get_contig_blocks: rte_pipeline_rte_mempool_get_contig_blocks.type
    var rte_mempool_avail_count: rte_pipeline_rte_mempool_avail_count.type
    var rte_mempool_in_use_count: rte_pipeline_rte_mempool_in_use_count.type
    var rte_mempool_full: rte_pipeline_rte_mempool_full.type
    var rte_mempool_empty: rte_pipeline_rte_mempool_empty.type
    var rte_mempool_virt2iova: rte_pipeline_rte_mempool_virt2iova.type
    var rte_mempool_audit: rte_pipeline_rte_mempool_audit.type
    var rte_mempool_get_priv: rte_pipeline_rte_mempool_get_priv.type
    var rte_mempool_list_dump: rte_pipeline_rte_mempool_list_dump.type
    var rte_mempool_lookup: rte_pipeline_rte_mempool_lookup.type
    var rte_mempool_calc_obj_size: rte_pipeline_rte_mempool_calc_obj_size.type
    var rte_mempool_walk: rte_pipeline_rte_mempool_walk.type
    var rte_mempool_get_mem_range: rte_pipeline_rte_mempool_get_mem_range.type
    var rte_mempool_get_obj_alignment: rte_pipeline_rte_mempool_get_obj_alignment.type
    var rte_mempool_get_page_size: rte_pipeline_rte_mempool_get_page_size.type
    var rte_mempool_event_callback_register: rte_pipeline_rte_mempool_event_callback_register.type
    var rte_mempool_event_callback_unregister: rte_pipeline_rte_mempool_event_callback_unregister.type
    var rte_prefetch0: rte_pipeline_rte_prefetch0.type
    var rte_prefetch1: rte_pipeline_rte_prefetch1.type
    var rte_prefetch2: rte_pipeline_rte_prefetch2.type
    var rte_prefetch_non_temporal: rte_pipeline_rte_prefetch_non_temporal.type
    var rte_prefetch0_write: rte_pipeline_rte_prefetch0_write.type
    var rte_prefetch1_write: rte_pipeline_rte_prefetch1_write.type
    var rte_prefetch2_write: rte_pipeline_rte_prefetch2_write.type
    var rte_cldemote: rte_pipeline_rte_cldemote.type
    var rte_get_ptype_l2_name: rte_pipeline_rte_get_ptype_l2_name.type
    var rte_get_ptype_l3_name: rte_pipeline_rte_get_ptype_l3_name.type
    var rte_get_ptype_l4_name: rte_pipeline_rte_get_ptype_l4_name.type
    var rte_get_ptype_tunnel_name: rte_pipeline_rte_get_ptype_tunnel_name.type
    var rte_get_ptype_inner_l2_name: rte_pipeline_rte_get_ptype_inner_l2_name.type
    var rte_get_ptype_inner_l3_name: rte_pipeline_rte_get_ptype_inner_l3_name.type
    var rte_get_ptype_inner_l4_name: rte_pipeline_rte_get_ptype_inner_l4_name.type
    var rte_get_ptype_name: rte_pipeline_rte_get_ptype_name.type
    var rte_constant_bswap16: rte_pipeline_rte_constant_bswap16.type
    var rte_constant_bswap32: rte_pipeline_rte_constant_bswap32.type
    var rte_constant_bswap64: rte_pipeline_rte_constant_bswap64.type
    var rte_get_rx_ol_flag_name: rte_pipeline_rte_get_rx_ol_flag_name.type
    var rte_get_rx_ol_flag_list: rte_pipeline_rte_get_rx_ol_flag_list.type
    var rte_get_tx_ol_flag_name: rte_pipeline_rte_get_tx_ol_flag_name.type
    var rte_get_tx_ol_flag_list: rte_pipeline_rte_get_tx_ol_flag_list.type
    var rte_mbuf_prefetch_part1: rte_pipeline_rte_mbuf_prefetch_part1.type
    var rte_mbuf_prefetch_part2: rte_pipeline_rte_mbuf_prefetch_part2.type
    var rte_pktmbuf_priv_size: rte_pipeline_rte_pktmbuf_priv_size.type
    var rte_mbuf_iova_get: rte_pipeline_rte_mbuf_iova_get.type
    var rte_mbuf_iova_set: rte_pipeline_rte_mbuf_iova_set.type
    var rte_mbuf_data_iova: rte_pipeline_rte_mbuf_data_iova.type
    var rte_mbuf_data_iova_default: rte_pipeline_rte_mbuf_data_iova_default.type
    var rte_mbuf_from_indirect: rte_pipeline_rte_mbuf_from_indirect.type
    var rte_mbuf_buf_addr: rte_pipeline_rte_mbuf_buf_addr.type
    var rte_mbuf_data_addr_default: rte_pipeline_rte_mbuf_data_addr_default.type
    var rte_mbuf_to_baddr: rte_pipeline_rte_mbuf_to_baddr.type
    var rte_mbuf_to_priv: rte_pipeline_rte_mbuf_to_priv.type
    var rte_pktmbuf_priv_flags: rte_pipeline_rte_pktmbuf_priv_flags.type
    var rte_mbuf_refcnt_read: rte_pipeline_rte_mbuf_refcnt_read.type
    var rte_mbuf_refcnt_set: rte_pipeline_rte_mbuf_refcnt_set.type
    var rte_mbuf_refcnt_update: rte_pipeline_rte_mbuf_refcnt_update.type
    var rte_mbuf_ext_refcnt_read: rte_pipeline_rte_mbuf_ext_refcnt_read.type
    var rte_mbuf_ext_refcnt_set: rte_pipeline_rte_mbuf_ext_refcnt_set.type
    var rte_mbuf_ext_refcnt_update: rte_pipeline_rte_mbuf_ext_refcnt_update.type
    var rte_mbuf_sanity_check: rte_pipeline_rte_mbuf_sanity_check.type
    var rte_mbuf_check: rte_pipeline_rte_mbuf_check.type
    var rte_mbuf_raw_alloc: rte_pipeline_rte_mbuf_raw_alloc.type
    var rte_mbuf_raw_alloc_bulk: rte_pipeline_rte_mbuf_raw_alloc_bulk.type
    var rte_mbuf_raw_free: rte_pipeline_rte_mbuf_raw_free.type
    var rte_mbuf_raw_free_bulk: rte_pipeline_rte_mbuf_raw_free_bulk.type
    var rte_pktmbuf_init: rte_pipeline_rte_pktmbuf_init.type
    var rte_pktmbuf_pool_init: rte_pipeline_rte_pktmbuf_pool_init.type
    var rte_pktmbuf_pool_create: rte_pipeline_rte_pktmbuf_pool_create.type
    var rte_pktmbuf_pool_create_by_ops: rte_pipeline_rte_pktmbuf_pool_create_by_ops.type
    var rte_pktmbuf_pool_create_extbuf: rte_pipeline_rte_pktmbuf_pool_create_extbuf.type
    var rte_pktmbuf_data_room_size: rte_pipeline_rte_pktmbuf_data_room_size.type
    var rte_pktmbuf_reset_headroom: rte_pipeline_rte_pktmbuf_reset_headroom.type
    var rte_pktmbuf_reset: rte_pipeline_rte_pktmbuf_reset.type
    var rte_pktmbuf_alloc: rte_pipeline_rte_pktmbuf_alloc.type
    var rte_pktmbuf_alloc_bulk: rte_pipeline_rte_pktmbuf_alloc_bulk.type
    var rte_pktmbuf_ext_shinfo_init_helper: rte_pipeline_rte_pktmbuf_ext_shinfo_init_helper.type
    var rte_pktmbuf_attach_extbuf: rte_pipeline_rte_pktmbuf_attach_extbuf.type
    var rte_mbuf_dynfield_copy: rte_pipeline_rte_mbuf_dynfield_copy.type
    var rte_pktmbuf_attach: rte_pipeline_rte_pktmbuf_attach.type
    var rte_pktmbuf_detach: rte_pipeline_rte_pktmbuf_detach.type
    var rte_pktmbuf_prefree_seg: rte_pipeline_rte_pktmbuf_prefree_seg.type
    var rte_pktmbuf_free_seg: rte_pipeline_rte_pktmbuf_free_seg.type
    var rte_pktmbuf_free: rte_pipeline_rte_pktmbuf_free.type
    var rte_pktmbuf_free_bulk: rte_pipeline_rte_pktmbuf_free_bulk.type
    var rte_pktmbuf_clone: rte_pipeline_rte_pktmbuf_clone.type
    var rte_pktmbuf_copy: rte_pipeline_rte_pktmbuf_copy.type
    var rte_pktmbuf_refcnt_update: rte_pipeline_rte_pktmbuf_refcnt_update.type
    var rte_pktmbuf_headroom: rte_pipeline_rte_pktmbuf_headroom.type
    var rte_pktmbuf_tailroom: rte_pipeline_rte_pktmbuf_tailroom.type
    var rte_pktmbuf_lastseg: rte_pipeline_rte_pktmbuf_lastseg.type
    var rte_pktmbuf_prepend: rte_pipeline_rte_pktmbuf_prepend.type
    var rte_pktmbuf_append: rte_pipeline_rte_pktmbuf_append.type
    var rte_pktmbuf_adj: rte_pipeline_rte_pktmbuf_adj.type
    var rte_pktmbuf_trim: rte_pipeline_rte_pktmbuf_trim.type
    var rte_pktmbuf_is_contiguous: rte_pipeline_rte_pktmbuf_is_contiguous.type
    var rte_pktmbuf_read: rte_pipeline_rte_pktmbuf_read.type
    var rte_pktmbuf_chain: rte_pipeline_rte_pktmbuf_chain.type
    var rte_mbuf_tx_offload: rte_pipeline_rte_mbuf_tx_offload.type
    var rte_validate_tx_offload: rte_pipeline_rte_validate_tx_offload.type
    var rte_pktmbuf_linearize: rte_pipeline_rte_pktmbuf_linearize.type
    var rte_pktmbuf_dump: rte_pipeline_rte_pktmbuf_dump.type
    var rte_mbuf_sched_queue_get: rte_pipeline_rte_mbuf_sched_queue_get.type
    var rte_mbuf_sched_traffic_class_get: rte_pipeline_rte_mbuf_sched_traffic_class_get.type
    var rte_mbuf_sched_color_get: rte_pipeline_rte_mbuf_sched_color_get.type
    var rte_mbuf_sched_get: rte_pipeline_rte_mbuf_sched_get.type
    var rte_mbuf_sched_queue_set: rte_pipeline_rte_mbuf_sched_queue_set.type
    var rte_mbuf_sched_traffic_class_set: rte_pipeline_rte_mbuf_sched_traffic_class_set.type
    var rte_mbuf_sched_color_set: rte_pipeline_rte_mbuf_sched_color_set.type
    var rte_mbuf_sched_set: rte_pipeline_rte_mbuf_sched_set.type
    var rte_pipeline_create: rte_pipeline_rte_pipeline_create.type
    var rte_pipeline_free: rte_pipeline_rte_pipeline_free.type
    var rte_pipeline_check: rte_pipeline_rte_pipeline_check.type
    var rte_pipeline_run: rte_pipeline_rte_pipeline_run.type
    var rte_pipeline_flush: rte_pipeline_rte_pipeline_flush.type
    var rte_pipeline_table_create: rte_pipeline_rte_pipeline_table_create.type
    var rte_pipeline_table_default_entry_add: rte_pipeline_rte_pipeline_table_default_entry_add.type
    var rte_pipeline_table_default_entry_delete: rte_pipeline_rte_pipeline_table_default_entry_delete.type
    var rte_pipeline_table_entry_add: rte_pipeline_rte_pipeline_table_entry_add.type
    var rte_pipeline_table_entry_delete: rte_pipeline_rte_pipeline_table_entry_delete.type
    var rte_pipeline_table_entry_add_bulk: rte_pipeline_rte_pipeline_table_entry_add_bulk.type
    var rte_pipeline_table_entry_delete_bulk: rte_pipeline_rte_pipeline_table_entry_delete_bulk.type
    var rte_pipeline_table_stats_read: rte_pipeline_rte_pipeline_table_stats_read.type
    var rte_pipeline_port_in_create: rte_pipeline_rte_pipeline_port_in_create.type
    var rte_pipeline_port_in_connect_to_table: rte_pipeline_rte_pipeline_port_in_connect_to_table.type
    var rte_pipeline_port_in_enable: rte_pipeline_rte_pipeline_port_in_enable.type
    var rte_pipeline_port_in_disable: rte_pipeline_rte_pipeline_port_in_disable.type
    var rte_pipeline_port_in_stats_read: rte_pipeline_rte_pipeline_port_in_stats_read.type
    var rte_pipeline_port_out_create: rte_pipeline_rte_pipeline_port_out_create.type
    var rte_pipeline_port_out_stats_read: rte_pipeline_rte_pipeline_port_out_stats_read.type
    var rte_pipeline_port_out_packet_insert: rte_pipeline_rte_pipeline_port_out_packet_insert.type
    var rte_pipeline_ah_packet_hijack: rte_pipeline_rte_pipeline_ah_packet_hijack.type
    var rte_pipeline_ah_packet_drop: rte_pipeline_rte_pipeline_ah_packet_drop.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_pipeline.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_pipeline from", 'librte_pipeline.so', ":\n", e)
            )

    
        self.alloca = rte_pipeline_alloca.load(self.lib)
        self.sched_setparam = rte_pipeline_sched_setparam.load(self.lib)
        self.sched_getparam = rte_pipeline_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_pipeline_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_pipeline_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_pipeline_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_pipeline_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_pipeline_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_pipeline_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_pipeline_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_pipeline_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_pipeline_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_pipeline_rte_exit.load(self.lib)
        self.remove = rte_pipeline_remove.load(self.lib)
        self.rename = rte_pipeline_rename.load(self.lib)
        self.renameat = rte_pipeline_renameat.load(self.lib)
        self.fclose = rte_pipeline_fclose.load(self.lib)
        self.tmpfile = rte_pipeline_tmpfile.load(self.lib)
        self.tmpnam = rte_pipeline_tmpnam.load(self.lib)
        self.tmpnam_r = rte_pipeline_tmpnam_r.load(self.lib)
        self.tempnam = rte_pipeline_tempnam.load(self.lib)
        self.fflush = rte_pipeline_fflush.load(self.lib)
        self.fflush_unlocked = rte_pipeline_fflush_unlocked.load(self.lib)
        self.fopen = rte_pipeline_fopen.load(self.lib)
        self.freopen = rte_pipeline_freopen.load(self.lib)
        self.fdopen = rte_pipeline_fdopen.load(self.lib)
        self.fmemopen = rte_pipeline_fmemopen.load(self.lib)
        self.open_memstream = rte_pipeline_open_memstream.load(self.lib)
        self.setbuf = rte_pipeline_setbuf.load(self.lib)
        self.setvbuf = rte_pipeline_setvbuf.load(self.lib)
        self.setbuffer = rte_pipeline_setbuffer.load(self.lib)
        self.setlinebuf = rte_pipeline_setlinebuf.load(self.lib)
        self.fprintf = rte_pipeline_fprintf.load(self.lib)
        self.printf = rte_pipeline_printf.load(self.lib)
        self.sprintf = rte_pipeline_sprintf.load(self.lib)
        self.vfprintf = rte_pipeline_vfprintf.load(self.lib)
        self.vprintf = rte_pipeline_vprintf.load(self.lib)
        self.vsprintf = rte_pipeline_vsprintf.load(self.lib)
        self.snprintf = rte_pipeline_snprintf.load(self.lib)
        self.vsnprintf = rte_pipeline_vsnprintf.load(self.lib)
        self.vdprintf = rte_pipeline_vdprintf.load(self.lib)
        self.dprintf = rte_pipeline_dprintf.load(self.lib)
        self.fscanf = rte_pipeline_fscanf.load(self.lib)
        self.scanf = rte_pipeline_scanf.load(self.lib)
        self.sscanf = rte_pipeline_sscanf.load(self.lib)
        self.vfscanf = rte_pipeline_vfscanf.load(self.lib)
        self.vscanf = rte_pipeline_vscanf.load(self.lib)
        self.vsscanf = rte_pipeline_vsscanf.load(self.lib)
        self.fgetc = rte_pipeline_fgetc.load(self.lib)
        self.getc = rte_pipeline_getc.load(self.lib)
        self.getchar = rte_pipeline_getchar.load(self.lib)
        self.getc_unlocked = rte_pipeline_getc_unlocked.load(self.lib)
        self.getchar_unlocked = rte_pipeline_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = rte_pipeline_fgetc_unlocked.load(self.lib)
        self.fputc = rte_pipeline_fputc.load(self.lib)
        self.putc = rte_pipeline_putc.load(self.lib)
        self.putchar = rte_pipeline_putchar.load(self.lib)
        self.fputc_unlocked = rte_pipeline_fputc_unlocked.load(self.lib)
        self.putc_unlocked = rte_pipeline_putc_unlocked.load(self.lib)
        self.putchar_unlocked = rte_pipeline_putchar_unlocked.load(self.lib)
        self.getw = rte_pipeline_getw.load(self.lib)
        self.putw = rte_pipeline_putw.load(self.lib)
        self.fgets = rte_pipeline_fgets.load(self.lib)
        self.getdelim = rte_pipeline_getdelim.load(self.lib)
        self.getline = rte_pipeline_getline.load(self.lib)
        self.fputs = rte_pipeline_fputs.load(self.lib)
        self.puts = rte_pipeline_puts.load(self.lib)
        self.ungetc = rte_pipeline_ungetc.load(self.lib)
        self.fread = rte_pipeline_fread.load(self.lib)
        self.fwrite = rte_pipeline_fwrite.load(self.lib)
        self.fread_unlocked = rte_pipeline_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = rte_pipeline_fwrite_unlocked.load(self.lib)
        self.fseek = rte_pipeline_fseek.load(self.lib)
        self.ftell = rte_pipeline_ftell.load(self.lib)
        self.rewind = rte_pipeline_rewind.load(self.lib)
        self.fseeko = rte_pipeline_fseeko.load(self.lib)
        self.ftello = rte_pipeline_ftello.load(self.lib)
        self.fgetpos = rte_pipeline_fgetpos.load(self.lib)
        self.fsetpos = rte_pipeline_fsetpos.load(self.lib)
        self.clearerr = rte_pipeline_clearerr.load(self.lib)
        self.feof = rte_pipeline_feof.load(self.lib)
        self.ferror = rte_pipeline_ferror.load(self.lib)
        self.clearerr_unlocked = rte_pipeline_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = rte_pipeline_feof_unlocked.load(self.lib)
        self.ferror_unlocked = rte_pipeline_ferror_unlocked.load(self.lib)
        self.perror = rte_pipeline_perror.load(self.lib)
        self.fileno = rte_pipeline_fileno.load(self.lib)
        self.fileno_unlocked = rte_pipeline_fileno_unlocked.load(self.lib)
        self.pclose = rte_pipeline_pclose.load(self.lib)
        self.popen = rte_pipeline_popen.load(self.lib)
        self.ctermid = rte_pipeline_ctermid.load(self.lib)
        self.flockfile = rte_pipeline_flockfile.load(self.lib)
        self.ftrylockfile = rte_pipeline_ftrylockfile.load(self.lib)
        self.funlockfile = rte_pipeline_funlockfile.load(self.lib)
        self.imaxabs = rte_pipeline_imaxabs.load(self.lib)
        self.imaxdiv = rte_pipeline_imaxdiv.load(self.lib)
        self.strtoimax = rte_pipeline_strtoimax.load(self.lib)
        self.strtoumax = rte_pipeline_strtoumax.load(self.lib)
        self.wcstoimax = rte_pipeline_wcstoimax.load(self.lib)
        self.wcstoumax = rte_pipeline_wcstoumax.load(self.lib)
        self.clock = rte_pipeline_clock.load(self.lib)
        self.time = rte_pipeline_time.load(self.lib)
        self.difftime = rte_pipeline_difftime.load(self.lib)
        self.mktime = rte_pipeline_mktime.load(self.lib)
        self.strftime = rte_pipeline_strftime.load(self.lib)
        self.strftime_l = rte_pipeline_strftime_l.load(self.lib)
        self.gmtime = rte_pipeline_gmtime.load(self.lib)
        self.localtime = rte_pipeline_localtime.load(self.lib)
        self.gmtime_r = rte_pipeline_gmtime_r.load(self.lib)
        self.localtime_r = rte_pipeline_localtime_r.load(self.lib)
        self.asctime = rte_pipeline_asctime.load(self.lib)
        self.ctime = rte_pipeline_ctime.load(self.lib)
        self.asctime_r = rte_pipeline_asctime_r.load(self.lib)
        self.ctime_r = rte_pipeline_ctime_r.load(self.lib)
        self.tzset = rte_pipeline_tzset.load(self.lib)
        self.timegm = rte_pipeline_timegm.load(self.lib)
        self.timelocal = rte_pipeline_timelocal.load(self.lib)
        self.dysize = rte_pipeline_dysize.load(self.lib)
        self.nanosleep = rte_pipeline_nanosleep.load(self.lib)
        self.clock_getres = rte_pipeline_clock_getres.load(self.lib)
        self.clock_gettime = rte_pipeline_clock_gettime.load(self.lib)
        self.clock_settime = rte_pipeline_clock_settime.load(self.lib)
        self.clock_nanosleep = rte_pipeline_clock_nanosleep.load(self.lib)
        self.clock_getcpuclockid = rte_pipeline_clock_getcpuclockid.load(self.lib)
        self.timer_create = rte_pipeline_timer_create.load(self.lib)
        self.timer_delete = rte_pipeline_timer_delete.load(self.lib)
        self.timer_settime = rte_pipeline_timer_settime.load(self.lib)
        self.timer_gettime = rte_pipeline_timer_gettime.load(self.lib)
        self.timer_getoverrun = rte_pipeline_timer_getoverrun.load(self.lib)
        self.timespec_get = rte_pipeline_timespec_get.load(self.lib)
        self.memcpy = rte_pipeline_memcpy.load(self.lib)
        self.memmove = rte_pipeline_memmove.load(self.lib)
        self.memccpy = rte_pipeline_memccpy.load(self.lib)
        self.memset = rte_pipeline_memset.load(self.lib)
        self.memcmp = rte_pipeline_memcmp.load(self.lib)
        self.memchr = rte_pipeline_memchr.load(self.lib)
        self.strcpy = rte_pipeline_strcpy.load(self.lib)
        self.strncpy = rte_pipeline_strncpy.load(self.lib)
        self.strcat = rte_pipeline_strcat.load(self.lib)
        self.strncat = rte_pipeline_strncat.load(self.lib)
        self.strcmp = rte_pipeline_strcmp.load(self.lib)
        self.strncmp = rte_pipeline_strncmp.load(self.lib)
        self.strcoll = rte_pipeline_strcoll.load(self.lib)
        self.strxfrm = rte_pipeline_strxfrm.load(self.lib)
        self.strcoll_l = rte_pipeline_strcoll_l.load(self.lib)
        self.strxfrm_l = rte_pipeline_strxfrm_l.load(self.lib)
        self.strdup = rte_pipeline_strdup.load(self.lib)
        self.strndup = rte_pipeline_strndup.load(self.lib)
        self.strchr = rte_pipeline_strchr.load(self.lib)
        self.strrchr = rte_pipeline_strrchr.load(self.lib)
        self.strcspn = rte_pipeline_strcspn.load(self.lib)
        self.strspn = rte_pipeline_strspn.load(self.lib)
        self.strpbrk = rte_pipeline_strpbrk.load(self.lib)
        self.strstr = rte_pipeline_strstr.load(self.lib)
        self.strtok = rte_pipeline_strtok.load(self.lib)
        self.strtok_r = rte_pipeline_strtok_r.load(self.lib)
        self.strlen = rte_pipeline_strlen.load(self.lib)
        self.strnlen = rte_pipeline_strnlen.load(self.lib)
        self.strerror = rte_pipeline_strerror.load(self.lib)
        self.strerror_r = rte_pipeline_strerror_r.load(self.lib)
        self.strerror_l = rte_pipeline_strerror_l.load(self.lib)
        self.bcmp = rte_pipeline_bcmp.load(self.lib)
        self.bcopy = rte_pipeline_bcopy.load(self.lib)
        self.bzero = rte_pipeline_bzero.load(self.lib)
        self.index = rte_pipeline_index.load(self.lib)
        self.rindex = rte_pipeline_rindex.load(self.lib)
        self.ffs = rte_pipeline_ffs.load(self.lib)
        self.ffsl = rte_pipeline_ffsl.load(self.lib)
        self.ffsll = rte_pipeline_ffsll.load(self.lib)
        self.strcasecmp = rte_pipeline_strcasecmp.load(self.lib)
        self.strncasecmp = rte_pipeline_strncasecmp.load(self.lib)
        self.strcasecmp_l = rte_pipeline_strcasecmp_l.load(self.lib)
        self.strncasecmp_l = rte_pipeline_strncasecmp_l.load(self.lib)
        self.explicit_bzero = rte_pipeline_explicit_bzero.load(self.lib)
        self.strsep = rte_pipeline_strsep.load(self.lib)
        self.strsignal = rte_pipeline_strsignal.load(self.lib)
        self.stpcpy = rte_pipeline_stpcpy.load(self.lib)
        self.stpncpy = rte_pipeline_stpncpy.load(self.lib)
        self.rte_uuid_is_null = rte_pipeline_rte_uuid_is_null.load(self.lib)
        self.rte_uuid_copy = rte_pipeline_rte_uuid_copy.load(self.lib)
        self.rte_uuid_compare = rte_pipeline_rte_uuid_compare.load(self.lib)
        self.rte_uuid_parse = rte_pipeline_rte_uuid_parse.load(self.lib)
        self.rte_uuid_unparse = rte_pipeline_rte_uuid_unparse.load(self.lib)
        self.rte_eal_process_type = rte_pipeline_rte_eal_process_type.load(self.lib)
        self.rte_eal_iopl_init = rte_pipeline_rte_eal_iopl_init.load(self.lib)
        self.rte_eal_init = rte_pipeline_rte_eal_init.load(self.lib)
        self.rte_eal_cleanup = rte_pipeline_rte_eal_cleanup.load(self.lib)
        self.rte_eal_primary_proc_alive = rte_pipeline_rte_eal_primary_proc_alive.load(self.lib)
        self.rte_mp_disable = rte_pipeline_rte_mp_disable.load(self.lib)
        self.rte_mp_action_register = rte_pipeline_rte_mp_action_register.load(self.lib)
        self.rte_mp_action_unregister = rte_pipeline_rte_mp_action_unregister.load(self.lib)
        self.rte_mp_sendmsg = rte_pipeline_rte_mp_sendmsg.load(self.lib)
        self.rte_mp_request_sync = rte_pipeline_rte_mp_request_sync.load(self.lib)
        self.rte_mp_request_async = rte_pipeline_rte_mp_request_async.load(self.lib)
        self.rte_set_application_usage_hook = rte_pipeline_rte_set_application_usage_hook.load(self.lib)
        self.rte_eal_has_hugepages = rte_pipeline_rte_eal_has_hugepages.load(self.lib)
        self.rte_eal_has_pci = rte_pipeline_rte_eal_has_pci.load(self.lib)
        self.rte_eal_create_uio_dev = rte_pipeline_rte_eal_create_uio_dev.load(self.lib)
        self.rte_eal_vfio_intr_mode = rte_pipeline_rte_eal_vfio_intr_mode.load(self.lib)
        self.rte_eal_vfio_get_vf_token = rte_pipeline_rte_eal_vfio_get_vf_token.load(self.lib)
        self.rte_sys_gettid = rte_pipeline_rte_sys_gettid.load(self.lib)
        self.rte_gettid = rte_pipeline_rte_gettid.load(self.lib)
        self.rte_eal_get_baseaddr = rte_pipeline_rte_eal_get_baseaddr.load(self.lib)
        self.rte_eal_iova_mode = rte_pipeline_rte_eal_iova_mode.load(self.lib)
        self.rte_eal_mbuf_user_pool_ops = rte_pipeline_rte_eal_mbuf_user_pool_ops.load(self.lib)
        self.rte_eal_get_runtime_dir = rte_pipeline_rte_eal_get_runtime_dir.load(self.lib)
        self.rte_eal_parse_coremask = rte_pipeline_rte_eal_parse_coremask.load(self.lib)
        self.rte_eal_remote_launch = rte_pipeline_rte_eal_remote_launch.load(self.lib)
        self.rte_eal_mp_remote_launch = rte_pipeline_rte_eal_mp_remote_launch.load(self.lib)
        self.rte_eal_get_lcore_state = rte_pipeline_rte_eal_get_lcore_state.load(self.lib)
        self.rte_eal_wait_lcore = rte_pipeline_rte_eal_wait_lcore.load(self.lib)
        self.rte_eal_mp_wait_lcore = rte_pipeline_rte_eal_mp_wait_lcore.load(self.lib)
        self.rte_thread_create = rte_pipeline_rte_thread_create.load(self.lib)
        self.rte_thread_create_control = rte_pipeline_rte_thread_create_control.load(self.lib)
        self.rte_thread_create_internal_control = rte_pipeline_rte_thread_create_internal_control.load(self.lib)
        self.rte_thread_join = rte_pipeline_rte_thread_join.load(self.lib)
        self.rte_thread_detach = rte_pipeline_rte_thread_detach.load(self.lib)
        self.rte_thread_self = rte_pipeline_rte_thread_self.load(self.lib)
        self.rte_thread_set_name = rte_pipeline_rte_thread_set_name.load(self.lib)
        self.rte_thread_set_prefixed_name = rte_pipeline_rte_thread_set_prefixed_name.load(self.lib)
        self.rte_thread_equal = rte_pipeline_rte_thread_equal.load(self.lib)
        self.rte_thread_attr_init = rte_pipeline_rte_thread_attr_init.load(self.lib)
        self.rte_thread_attr_set_priority = rte_pipeline_rte_thread_attr_set_priority.load(self.lib)
        self.rte_thread_get_priority = rte_pipeline_rte_thread_get_priority.load(self.lib)
        self.rte_thread_set_priority = rte_pipeline_rte_thread_set_priority.load(self.lib)
        self.rte_thread_key_create = rte_pipeline_rte_thread_key_create.load(self.lib)
        self.rte_thread_key_delete = rte_pipeline_rte_thread_key_delete.load(self.lib)
        self.rte_thread_value_set = rte_pipeline_rte_thread_value_set.load(self.lib)
        self.rte_thread_value_get = rte_pipeline_rte_thread_value_get.load(self.lib)
        self.rte_eal_lcore_role = rte_pipeline_rte_eal_lcore_role.load(self.lib)
        self.rte_lcore_has_role = rte_pipeline_rte_lcore_has_role.load(self.lib)
        self.rte_lcore_id = rte_pipeline_rte_lcore_id.load(self.lib)
        self.rte_get_main_lcore = rte_pipeline_rte_get_main_lcore.load(self.lib)
        self.rte_lcore_count = rte_pipeline_rte_lcore_count.load(self.lib)
        self.rte_lcore_index = rte_pipeline_rte_lcore_index.load(self.lib)
        self.rte_socket_id = rte_pipeline_rte_socket_id.load(self.lib)
        self.rte_socket_count = rte_pipeline_rte_socket_count.load(self.lib)
        self.rte_socket_id_by_idx = rte_pipeline_rte_socket_id_by_idx.load(self.lib)
        self.rte_lcore_to_socket_id = rte_pipeline_rte_lcore_to_socket_id.load(self.lib)
        self.rte_lcore_to_cpu_id = rte_pipeline_rte_lcore_to_cpu_id.load(self.lib)
        self.rte_lcore_is_enabled = rte_pipeline_rte_lcore_is_enabled.load(self.lib)
        self.rte_get_next_lcore = rte_pipeline_rte_get_next_lcore.load(self.lib)
        self.rte_lcore_callback_register = rte_pipeline_rte_lcore_callback_register.load(self.lib)
        self.rte_lcore_callback_unregister = rte_pipeline_rte_lcore_callback_unregister.load(self.lib)
        self.rte_lcore_iterate = rte_pipeline_rte_lcore_iterate.load(self.lib)
        self.rte_lcore_register_usage_cb = rte_pipeline_rte_lcore_register_usage_cb.load(self.lib)
        self.rte_lcore_dump = rte_pipeline_rte_lcore_dump.load(self.lib)
        self.rte_thread_register = rte_pipeline_rte_thread_register.load(self.lib)
        self.rte_thread_unregister = rte_pipeline_rte_thread_unregister.load(self.lib)
        self.rte_atomic_thread_fence = rte_pipeline_rte_atomic_thread_fence.load(self.lib)
        self.rte_atomic16_cmpset = rte_pipeline_rte_atomic16_cmpset.load(self.lib)
        self.rte_atomic16_exchange = rte_pipeline_rte_atomic16_exchange.load(self.lib)
        self.rte_atomic16_init = rte_pipeline_rte_atomic16_init.load(self.lib)
        self.rte_atomic16_read = rte_pipeline_rte_atomic16_read.load(self.lib)
        self.rte_atomic16_set = rte_pipeline_rte_atomic16_set.load(self.lib)
        self.rte_atomic16_add = rte_pipeline_rte_atomic16_add.load(self.lib)
        self.rte_atomic16_sub = rte_pipeline_rte_atomic16_sub.load(self.lib)
        self.rte_atomic16_inc = rte_pipeline_rte_atomic16_inc.load(self.lib)
        self.rte_atomic16_dec = rte_pipeline_rte_atomic16_dec.load(self.lib)
        self.rte_atomic16_add_return = rte_pipeline_rte_atomic16_add_return.load(self.lib)
        self.rte_atomic16_sub_return = rte_pipeline_rte_atomic16_sub_return.load(self.lib)
        self.rte_atomic16_inc_and_test = rte_pipeline_rte_atomic16_inc_and_test.load(self.lib)
        self.rte_atomic16_dec_and_test = rte_pipeline_rte_atomic16_dec_and_test.load(self.lib)
        self.rte_atomic16_test_and_set = rte_pipeline_rte_atomic16_test_and_set.load(self.lib)
        self.rte_atomic16_clear = rte_pipeline_rte_atomic16_clear.load(self.lib)
        self.rte_atomic32_cmpset = rte_pipeline_rte_atomic32_cmpset.load(self.lib)
        self.rte_atomic32_exchange = rte_pipeline_rte_atomic32_exchange.load(self.lib)
        self.rte_atomic32_init = rte_pipeline_rte_atomic32_init.load(self.lib)
        self.rte_atomic32_read = rte_pipeline_rte_atomic32_read.load(self.lib)
        self.rte_atomic32_set = rte_pipeline_rte_atomic32_set.load(self.lib)
        self.rte_atomic32_add = rte_pipeline_rte_atomic32_add.load(self.lib)
        self.rte_atomic32_sub = rte_pipeline_rte_atomic32_sub.load(self.lib)
        self.rte_atomic32_inc = rte_pipeline_rte_atomic32_inc.load(self.lib)
        self.rte_atomic32_dec = rte_pipeline_rte_atomic32_dec.load(self.lib)
        self.rte_atomic32_add_return = rte_pipeline_rte_atomic32_add_return.load(self.lib)
        self.rte_atomic32_sub_return = rte_pipeline_rte_atomic32_sub_return.load(self.lib)
        self.rte_atomic32_inc_and_test = rte_pipeline_rte_atomic32_inc_and_test.load(self.lib)
        self.rte_atomic32_dec_and_test = rte_pipeline_rte_atomic32_dec_and_test.load(self.lib)
        self.rte_atomic32_test_and_set = rte_pipeline_rte_atomic32_test_and_set.load(self.lib)
        self.rte_atomic32_clear = rte_pipeline_rte_atomic32_clear.load(self.lib)
        self.rte_atomic64_cmpset = rte_pipeline_rte_atomic64_cmpset.load(self.lib)
        self.rte_atomic64_exchange = rte_pipeline_rte_atomic64_exchange.load(self.lib)
        self.rte_atomic64_init = rte_pipeline_rte_atomic64_init.load(self.lib)
        self.rte_atomic64_read = rte_pipeline_rte_atomic64_read.load(self.lib)
        self.rte_atomic64_set = rte_pipeline_rte_atomic64_set.load(self.lib)
        self.rte_atomic64_add = rte_pipeline_rte_atomic64_add.load(self.lib)
        self.rte_atomic64_sub = rte_pipeline_rte_atomic64_sub.load(self.lib)
        self.rte_atomic64_inc = rte_pipeline_rte_atomic64_inc.load(self.lib)
        self.rte_atomic64_dec = rte_pipeline_rte_atomic64_dec.load(self.lib)
        self.rte_atomic64_add_return = rte_pipeline_rte_atomic64_add_return.load(self.lib)
        self.rte_atomic64_sub_return = rte_pipeline_rte_atomic64_sub_return.load(self.lib)
        self.rte_atomic64_inc_and_test = rte_pipeline_rte_atomic64_inc_and_test.load(self.lib)
        self.rte_atomic64_dec_and_test = rte_pipeline_rte_atomic64_dec_and_test.load(self.lib)
        self.rte_atomic64_test_and_set = rte_pipeline_rte_atomic64_test_and_set.load(self.lib)
        self.rte_atomic64_clear = rte_pipeline_rte_atomic64_clear.load(self.lib)
        self.rte_openlog_stream = rte_pipeline_rte_openlog_stream.load(self.lib)
        self.rte_log_get_stream = rte_pipeline_rte_log_get_stream.load(self.lib)
        self.rte_log_set_global_level = rte_pipeline_rte_log_set_global_level.load(self.lib)
        self.rte_log_get_global_level = rte_pipeline_rte_log_get_global_level.load(self.lib)
        self.rte_log_get_level = rte_pipeline_rte_log_get_level.load(self.lib)
        self.rte_log_can_log = rte_pipeline_rte_log_can_log.load(self.lib)
        self.rte_log_set_level_pattern = rte_pipeline_rte_log_set_level_pattern.load(self.lib)
        self.rte_log_set_level_regexp = rte_pipeline_rte_log_set_level_regexp.load(self.lib)
        self.rte_log_set_level = rte_pipeline_rte_log_set_level.load(self.lib)
        self.rte_log_cur_msg_loglevel = rte_pipeline_rte_log_cur_msg_loglevel.load(self.lib)
        self.rte_log_cur_msg_logtype = rte_pipeline_rte_log_cur_msg_logtype.load(self.lib)
        self.rte_log_register = rte_pipeline_rte_log_register.load(self.lib)
        self.rte_log_register_type_and_pick_level = rte_pipeline_rte_log_register_type_and_pick_level.load(self.lib)
        self.rte_log_list_types = rte_pipeline_rte_log_list_types.load(self.lib)
        self.rte_log_dump = rte_pipeline_rte_log_dump.load(self.lib)
        self.rte_log = rte_pipeline_rte_log.load(self.lib)
        self.rte_vlog = rte_pipeline_rte_vlog.load(self.lib)
        self.rte_dump_stack = rte_pipeline_rte_dump_stack.load(self.lib)
        self.rte_atomic128_cmp_exchange = rte_pipeline_rte_atomic128_cmp_exchange.load(self.lib)
        self.rte_pause = rte_pipeline_rte_pause.load(self.lib)
        self.rte_wait_until_equal_16 = rte_pipeline_rte_wait_until_equal_16.load(self.lib)
        self.rte_wait_until_equal_32 = rte_pipeline_rte_wait_until_equal_32.load(self.lib)
        self.rte_wait_until_equal_64 = rte_pipeline_rte_wait_until_equal_64.load(self.lib)
        self.rte_spinlock_init = rte_pipeline_rte_spinlock_init.load(self.lib)
        self.rte_spinlock_lock = rte_pipeline_rte_spinlock_lock.load(self.lib)
        self.rte_spinlock_unlock = rte_pipeline_rte_spinlock_unlock.load(self.lib)
        self.rte_spinlock_trylock = rte_pipeline_rte_spinlock_trylock.load(self.lib)
        self.rte_spinlock_is_locked = rte_pipeline_rte_spinlock_is_locked.load(self.lib)
        self.rte_tm_supported = rte_pipeline_rte_tm_supported.load(self.lib)
        self.rte_spinlock_lock_tm = rte_pipeline_rte_spinlock_lock_tm.load(self.lib)
        self.rte_spinlock_unlock_tm = rte_pipeline_rte_spinlock_unlock_tm.load(self.lib)
        self.rte_spinlock_trylock_tm = rte_pipeline_rte_spinlock_trylock_tm.load(self.lib)
        self.rte_spinlock_recursive_init = rte_pipeline_rte_spinlock_recursive_init.load(self.lib)
        self.rte_spinlock_recursive_lock = rte_pipeline_rte_spinlock_recursive_lock.load(self.lib)
        self.rte_spinlock_recursive_unlock = rte_pipeline_rte_spinlock_recursive_unlock.load(self.lib)
        self.rte_spinlock_recursive_trylock = rte_pipeline_rte_spinlock_recursive_trylock.load(self.lib)
        self.rte_spinlock_recursive_lock_tm = rte_pipeline_rte_spinlock_recursive_lock_tm.load(self.lib)
        self.rte_spinlock_recursive_unlock_tm = rte_pipeline_rte_spinlock_recursive_unlock_tm.load(self.lib)
        self.rte_spinlock_recursive_trylock_tm = rte_pipeline_rte_spinlock_recursive_trylock_tm.load(self.lib)
        self.rte_bit_relaxed_get32 = rte_pipeline_rte_bit_relaxed_get32.load(self.lib)
        self.rte_bit_relaxed_set32 = rte_pipeline_rte_bit_relaxed_set32.load(self.lib)
        self.rte_bit_relaxed_clear32 = rte_pipeline_rte_bit_relaxed_clear32.load(self.lib)
        self.rte_bit_relaxed_test_and_set32 = rte_pipeline_rte_bit_relaxed_test_and_set32.load(self.lib)
        self.rte_bit_relaxed_test_and_clear32 = rte_pipeline_rte_bit_relaxed_test_and_clear32.load(self.lib)
        self.rte_bit_relaxed_get64 = rte_pipeline_rte_bit_relaxed_get64.load(self.lib)
        self.rte_bit_relaxed_set64 = rte_pipeline_rte_bit_relaxed_set64.load(self.lib)
        self.rte_bit_relaxed_clear64 = rte_pipeline_rte_bit_relaxed_clear64.load(self.lib)
        self.rte_bit_relaxed_test_and_set64 = rte_pipeline_rte_bit_relaxed_test_and_set64.load(self.lib)
        self.rte_bit_relaxed_test_and_clear64 = rte_pipeline_rte_bit_relaxed_test_and_clear64.load(self.lib)
        self.rte_clz32 = rte_pipeline_rte_clz32.load(self.lib)
        self.rte_clz64 = rte_pipeline_rte_clz64.load(self.lib)
        self.rte_ctz32 = rte_pipeline_rte_ctz32.load(self.lib)
        self.rte_ctz64 = rte_pipeline_rte_ctz64.load(self.lib)
        self.rte_popcount32 = rte_pipeline_rte_popcount32.load(self.lib)
        self.rte_popcount64 = rte_pipeline_rte_popcount64.load(self.lib)
        self.rte_ffs32 = rte_pipeline_rte_ffs32.load(self.lib)
        self.rte_ffs64 = rte_pipeline_rte_ffs64.load(self.lib)
        self.rte_combine32ms1b = rte_pipeline_rte_combine32ms1b.load(self.lib)
        self.rte_combine64ms1b = rte_pipeline_rte_combine64ms1b.load(self.lib)
        self.rte_bsf32 = rte_pipeline_rte_bsf32.load(self.lib)
        self.rte_bsf32_safe = rte_pipeline_rte_bsf32_safe.load(self.lib)
        self.rte_bsf64 = rte_pipeline_rte_bsf64.load(self.lib)
        self.rte_bsf64_safe = rte_pipeline_rte_bsf64_safe.load(self.lib)
        self.rte_fls_u32 = rte_pipeline_rte_fls_u32.load(self.lib)
        self.rte_fls_u64 = rte_pipeline_rte_fls_u64.load(self.lib)
        self.rte_is_power_of_2 = rte_pipeline_rte_is_power_of_2.load(self.lib)
        self.rte_align32pow2 = rte_pipeline_rte_align32pow2.load(self.lib)
        self.rte_align32prevpow2 = rte_pipeline_rte_align32prevpow2.load(self.lib)
        self.rte_align64pow2 = rte_pipeline_rte_align64pow2.load(self.lib)
        self.rte_align64prevpow2 = rte_pipeline_rte_align64prevpow2.load(self.lib)
        self.rte_log2_u32 = rte_pipeline_rte_log2_u32.load(self.lib)
        self.rte_log2_u64 = rte_pipeline_rte_log2_u64.load(self.lib)
        self.rte_rwlock_init = rte_pipeline_rte_rwlock_init.load(self.lib)
        self.rte_rwlock_read_lock = rte_pipeline_rte_rwlock_read_lock.load(self.lib)
        self.rte_rwlock_read_trylock = rte_pipeline_rte_rwlock_read_trylock.load(self.lib)
        self.rte_rwlock_read_unlock = rte_pipeline_rte_rwlock_read_unlock.load(self.lib)
        self.rte_rwlock_write_trylock = rte_pipeline_rte_rwlock_write_trylock.load(self.lib)
        self.rte_rwlock_write_lock = rte_pipeline_rte_rwlock_write_lock.load(self.lib)
        self.rte_rwlock_write_unlock = rte_pipeline_rte_rwlock_write_unlock.load(self.lib)
        self.rte_rwlock_write_is_locked = rte_pipeline_rte_rwlock_write_is_locked.load(self.lib)
        self.rte_rwlock_read_lock_tm = rte_pipeline_rte_rwlock_read_lock_tm.load(self.lib)
        self.rte_rwlock_read_unlock_tm = rte_pipeline_rte_rwlock_read_unlock_tm.load(self.lib)
        self.rte_rwlock_write_lock_tm = rte_pipeline_rte_rwlock_write_lock_tm.load(self.lib)
        self.rte_rwlock_write_unlock_tm = rte_pipeline_rte_rwlock_write_unlock_tm.load(self.lib)
        self.rte_mcfg_mem_get_lock = rte_pipeline_rte_mcfg_mem_get_lock.load(self.lib)
        self.rte_mcfg_tailq_get_lock = rte_pipeline_rte_mcfg_tailq_get_lock.load(self.lib)
        self.rte_mcfg_mempool_get_lock = rte_pipeline_rte_mcfg_mempool_get_lock.load(self.lib)
        self.rte_mcfg_timer_get_lock = rte_pipeline_rte_mcfg_timer_get_lock.load(self.lib)
        self.rte_mcfg_ethdev_get_lock = rte_pipeline_rte_mcfg_ethdev_get_lock.load(self.lib)
        self.rte_mcfg_mem_read_lock = rte_pipeline_rte_mcfg_mem_read_lock.load(self.lib)
        self.rte_mcfg_mem_read_unlock = rte_pipeline_rte_mcfg_mem_read_unlock.load(self.lib)
        self.rte_mcfg_mem_write_lock = rte_pipeline_rte_mcfg_mem_write_lock.load(self.lib)
        self.rte_mcfg_mem_write_unlock = rte_pipeline_rte_mcfg_mem_write_unlock.load(self.lib)
        self.rte_mcfg_tailq_read_lock = rte_pipeline_rte_mcfg_tailq_read_lock.load(self.lib)
        self.rte_mcfg_tailq_read_unlock = rte_pipeline_rte_mcfg_tailq_read_unlock.load(self.lib)
        self.rte_mcfg_tailq_write_lock = rte_pipeline_rte_mcfg_tailq_write_lock.load(self.lib)
        self.rte_mcfg_tailq_write_unlock = rte_pipeline_rte_mcfg_tailq_write_unlock.load(self.lib)
        self.rte_mcfg_mempool_read_lock = rte_pipeline_rte_mcfg_mempool_read_lock.load(self.lib)
        self.rte_mcfg_mempool_read_unlock = rte_pipeline_rte_mcfg_mempool_read_unlock.load(self.lib)
        self.rte_mcfg_mempool_write_lock = rte_pipeline_rte_mcfg_mempool_write_lock.load(self.lib)
        self.rte_mcfg_mempool_write_unlock = rte_pipeline_rte_mcfg_mempool_write_unlock.load(self.lib)
        self.rte_mcfg_timer_lock = rte_pipeline_rte_mcfg_timer_lock.load(self.lib)
        self.rte_mcfg_timer_unlock = rte_pipeline_rte_mcfg_timer_unlock.load(self.lib)
        self.rte_mcfg_get_single_file_segments = rte_pipeline_rte_mcfg_get_single_file_segments.load(self.lib)
        self.rte_fbarray_init = rte_pipeline_rte_fbarray_init.load(self.lib)
        self.rte_fbarray_attach = rte_pipeline_rte_fbarray_attach.load(self.lib)
        self.rte_fbarray_destroy = rte_pipeline_rte_fbarray_destroy.load(self.lib)
        self.rte_fbarray_detach = rte_pipeline_rte_fbarray_detach.load(self.lib)
        self.rte_fbarray_get = rte_pipeline_rte_fbarray_get.load(self.lib)
        self.rte_fbarray_find_idx = rte_pipeline_rte_fbarray_find_idx.load(self.lib)
        self.rte_fbarray_set_used = rte_pipeline_rte_fbarray_set_used.load(self.lib)
        self.rte_fbarray_set_free = rte_pipeline_rte_fbarray_set_free.load(self.lib)
        self.rte_fbarray_is_used = rte_pipeline_rte_fbarray_is_used.load(self.lib)
        self.rte_fbarray_find_next_free = rte_pipeline_rte_fbarray_find_next_free.load(self.lib)
        self.rte_fbarray_find_next_used = rte_pipeline_rte_fbarray_find_next_used.load(self.lib)
        self.rte_fbarray_find_next_n_free = rte_pipeline_rte_fbarray_find_next_n_free.load(self.lib)
        self.rte_fbarray_find_next_n_used = rte_pipeline_rte_fbarray_find_next_n_used.load(self.lib)
        self.rte_fbarray_find_contig_free = rte_pipeline_rte_fbarray_find_contig_free.load(self.lib)
        self.rte_fbarray_find_contig_used = rte_pipeline_rte_fbarray_find_contig_used.load(self.lib)
        self.rte_fbarray_find_prev_free = rte_pipeline_rte_fbarray_find_prev_free.load(self.lib)
        self.rte_fbarray_find_prev_used = rte_pipeline_rte_fbarray_find_prev_used.load(self.lib)
        self.rte_fbarray_find_prev_n_free = rte_pipeline_rte_fbarray_find_prev_n_free.load(self.lib)
        self.rte_fbarray_find_prev_n_used = rte_pipeline_rte_fbarray_find_prev_n_used.load(self.lib)
        self.rte_fbarray_find_rev_contig_free = rte_pipeline_rte_fbarray_find_rev_contig_free.load(self.lib)
        self.rte_fbarray_find_rev_contig_used = rte_pipeline_rte_fbarray_find_rev_contig_used.load(self.lib)
        self.rte_fbarray_find_biggest_free = rte_pipeline_rte_fbarray_find_biggest_free.load(self.lib)
        self.rte_fbarray_find_biggest_used = rte_pipeline_rte_fbarray_find_biggest_used.load(self.lib)
        self.rte_fbarray_find_rev_biggest_free = rte_pipeline_rte_fbarray_find_rev_biggest_free.load(self.lib)
        self.rte_fbarray_find_rev_biggest_used = rte_pipeline_rte_fbarray_find_rev_biggest_used.load(self.lib)
        self.rte_fbarray_dump_metadata = rte_pipeline_rte_fbarray_dump_metadata.load(self.lib)
        self.rte_mem_lock_page = rte_pipeline_rte_mem_lock_page.load(self.lib)
        self.rte_mem_virt2phy = rte_pipeline_rte_mem_virt2phy.load(self.lib)
        self.rte_mem_virt2iova = rte_pipeline_rte_mem_virt2iova.load(self.lib)
        self.rte_mem_iova2virt = rte_pipeline_rte_mem_iova2virt.load(self.lib)
        self.rte_mem_virt2memseg = rte_pipeline_rte_mem_virt2memseg.load(self.lib)
        self.rte_mem_virt2memseg_list = rte_pipeline_rte_mem_virt2memseg_list.load(self.lib)
        self.rte_memseg_walk = rte_pipeline_rte_memseg_walk.load(self.lib)
        self.rte_memseg_contig_walk = rte_pipeline_rte_memseg_contig_walk.load(self.lib)
        self.rte_memseg_list_walk = rte_pipeline_rte_memseg_list_walk.load(self.lib)
        self.rte_memseg_walk_thread_unsafe = rte_pipeline_rte_memseg_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_contig_walk_thread_unsafe = rte_pipeline_rte_memseg_contig_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_list_walk_thread_unsafe = rte_pipeline_rte_memseg_list_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_get_fd = rte_pipeline_rte_memseg_get_fd.load(self.lib)
        self.rte_memseg_get_fd_thread_unsafe = rte_pipeline_rte_memseg_get_fd_thread_unsafe.load(self.lib)
        self.rte_memseg_get_fd_offset = rte_pipeline_rte_memseg_get_fd_offset.load(self.lib)
        self.rte_memseg_get_fd_offset_thread_unsafe = rte_pipeline_rte_memseg_get_fd_offset_thread_unsafe.load(self.lib)
        self.rte_extmem_register = rte_pipeline_rte_extmem_register.load(self.lib)
        self.rte_extmem_unregister = rte_pipeline_rte_extmem_unregister.load(self.lib)
        self.rte_extmem_attach = rte_pipeline_rte_extmem_attach.load(self.lib)
        self.rte_extmem_detach = rte_pipeline_rte_extmem_detach.load(self.lib)
        self.rte_dump_physmem_layout = rte_pipeline_rte_dump_physmem_layout.load(self.lib)
        self.rte_eal_get_physmem_size = rte_pipeline_rte_eal_get_physmem_size.load(self.lib)
        self.rte_memory_get_nchannel = rte_pipeline_rte_memory_get_nchannel.load(self.lib)
        self.rte_memory_get_nrank = rte_pipeline_rte_memory_get_nrank.load(self.lib)
        self.rte_mem_check_dma_mask = rte_pipeline_rte_mem_check_dma_mask.load(self.lib)
        self.rte_mem_check_dma_mask_thread_unsafe = rte_pipeline_rte_mem_check_dma_mask_thread_unsafe.load(self.lib)
        self.rte_mem_set_dma_mask = rte_pipeline_rte_mem_set_dma_mask.load(self.lib)
        self.rte_eal_using_phys_addrs = rte_pipeline_rte_eal_using_phys_addrs.load(self.lib)
        self.rte_mem_event_callback_register = rte_pipeline_rte_mem_event_callback_register.load(self.lib)
        self.rte_mem_event_callback_unregister = rte_pipeline_rte_mem_event_callback_unregister.load(self.lib)
        self.rte_mem_alloc_validator_register = rte_pipeline_rte_mem_alloc_validator_register.load(self.lib)
        self.rte_mem_alloc_validator_unregister = rte_pipeline_rte_mem_alloc_validator_unregister.load(self.lib)
        self.rte_memzero_explicit = rte_pipeline_rte_memzero_explicit.load(self.lib)
        self.rte_memzone_max_set = rte_pipeline_rte_memzone_max_set.load(self.lib)
        self.rte_memzone_max_get = rte_pipeline_rte_memzone_max_get.load(self.lib)
        self.rte_memzone_reserve = rte_pipeline_rte_memzone_reserve.load(self.lib)
        self.rte_memzone_reserve_aligned = rte_pipeline_rte_memzone_reserve_aligned.load(self.lib)
        self.rte_memzone_reserve_bounded = rte_pipeline_rte_memzone_reserve_bounded.load(self.lib)
        self.rte_memzone_free = rte_pipeline_rte_memzone_free.load(self.lib)
        self.rte_memzone_lookup = rte_pipeline_rte_memzone_lookup.load(self.lib)
        self.rte_memzone_dump = rte_pipeline_rte_memzone_dump.load(self.lib)
        self.rte_memzone_walk = rte_pipeline_rte_memzone_walk.load(self.lib)
        self.rte_ring_get_memsize_elem = rte_pipeline_rte_ring_get_memsize_elem.load(self.lib)
        self.rte_ring_create_elem = rte_pipeline_rte_ring_create_elem.load(self.lib)
        self.rte_ring_mp_enqueue_bulk_elem = rte_pipeline_rte_ring_mp_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_sp_enqueue_bulk_elem = rte_pipeline_rte_ring_sp_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mp_hts_enqueue_bulk_elem = rte_pipeline_rte_ring_mp_hts_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mc_hts_dequeue_bulk_elem = rte_pipeline_rte_ring_mc_hts_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_mp_hts_enqueue_burst_elem = rte_pipeline_rte_ring_mp_hts_enqueue_burst_elem.load(self.lib)
        self.rte_ring_mc_hts_dequeue_burst_elem = rte_pipeline_rte_ring_mc_hts_dequeue_burst_elem.load(self.lib)
        self.rte_ring_mp_hts_enqueue_bulk = rte_pipeline_rte_ring_mp_hts_enqueue_bulk.load(self.lib)
        self.rte_ring_mc_hts_dequeue_bulk = rte_pipeline_rte_ring_mc_hts_dequeue_bulk.load(self.lib)
        self.rte_ring_mp_hts_enqueue_burst = rte_pipeline_rte_ring_mp_hts_enqueue_burst.load(self.lib)
        self.rte_ring_mc_hts_dequeue_burst = rte_pipeline_rte_ring_mc_hts_dequeue_burst.load(self.lib)
        self.rte_ring_mp_rts_enqueue_bulk_elem = rte_pipeline_rte_ring_mp_rts_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mc_rts_dequeue_bulk_elem = rte_pipeline_rte_ring_mc_rts_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_mp_rts_enqueue_burst_elem = rte_pipeline_rte_ring_mp_rts_enqueue_burst_elem.load(self.lib)
        self.rte_ring_mc_rts_dequeue_burst_elem = rte_pipeline_rte_ring_mc_rts_dequeue_burst_elem.load(self.lib)
        self.rte_ring_mp_rts_enqueue_bulk = rte_pipeline_rte_ring_mp_rts_enqueue_bulk.load(self.lib)
        self.rte_ring_mc_rts_dequeue_bulk = rte_pipeline_rte_ring_mc_rts_dequeue_bulk.load(self.lib)
        self.rte_ring_mp_rts_enqueue_burst = rte_pipeline_rte_ring_mp_rts_enqueue_burst.load(self.lib)
        self.rte_ring_mc_rts_dequeue_burst = rte_pipeline_rte_ring_mc_rts_dequeue_burst.load(self.lib)
        self.rte_ring_get_prod_htd_max = rte_pipeline_rte_ring_get_prod_htd_max.load(self.lib)
        self.rte_ring_set_prod_htd_max = rte_pipeline_rte_ring_set_prod_htd_max.load(self.lib)
        self.rte_ring_get_cons_htd_max = rte_pipeline_rte_ring_get_cons_htd_max.load(self.lib)
        self.rte_ring_set_cons_htd_max = rte_pipeline_rte_ring_set_cons_htd_max.load(self.lib)
        self.rte_ring_enqueue_bulk_elem = rte_pipeline_rte_ring_enqueue_bulk_elem.load(self.lib)
        self.rte_ring_mp_enqueue_elem = rte_pipeline_rte_ring_mp_enqueue_elem.load(self.lib)
        self.rte_ring_sp_enqueue_elem = rte_pipeline_rte_ring_sp_enqueue_elem.load(self.lib)
        self.rte_ring_enqueue_elem = rte_pipeline_rte_ring_enqueue_elem.load(self.lib)
        self.rte_ring_mc_dequeue_bulk_elem = rte_pipeline_rte_ring_mc_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_sc_dequeue_bulk_elem = rte_pipeline_rte_ring_sc_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_dequeue_bulk_elem = rte_pipeline_rte_ring_dequeue_bulk_elem.load(self.lib)
        self.rte_ring_mc_dequeue_elem = rte_pipeline_rte_ring_mc_dequeue_elem.load(self.lib)
        self.rte_ring_sc_dequeue_elem = rte_pipeline_rte_ring_sc_dequeue_elem.load(self.lib)
        self.rte_ring_dequeue_elem = rte_pipeline_rte_ring_dequeue_elem.load(self.lib)
        self.rte_ring_mp_enqueue_burst_elem = rte_pipeline_rte_ring_mp_enqueue_burst_elem.load(self.lib)
        self.rte_ring_sp_enqueue_burst_elem = rte_pipeline_rte_ring_sp_enqueue_burst_elem.load(self.lib)
        self.rte_ring_enqueue_burst_elem = rte_pipeline_rte_ring_enqueue_burst_elem.load(self.lib)
        self.rte_ring_mc_dequeue_burst_elem = rte_pipeline_rte_ring_mc_dequeue_burst_elem.load(self.lib)
        self.rte_ring_sc_dequeue_burst_elem = rte_pipeline_rte_ring_sc_dequeue_burst_elem.load(self.lib)
        self.rte_ring_dequeue_burst_elem = rte_pipeline_rte_ring_dequeue_burst_elem.load(self.lib)
        self.rte_ring_enqueue_bulk_elem_start = rte_pipeline_rte_ring_enqueue_bulk_elem_start.load(self.lib)
        self.rte_ring_enqueue_bulk_start = rte_pipeline_rte_ring_enqueue_bulk_start.load(self.lib)
        self.rte_ring_enqueue_burst_elem_start = rte_pipeline_rte_ring_enqueue_burst_elem_start.load(self.lib)
        self.rte_ring_enqueue_burst_start = rte_pipeline_rte_ring_enqueue_burst_start.load(self.lib)
        self.rte_ring_enqueue_elem_finish = rte_pipeline_rte_ring_enqueue_elem_finish.load(self.lib)
        self.rte_ring_enqueue_finish = rte_pipeline_rte_ring_enqueue_finish.load(self.lib)
        self.rte_ring_dequeue_bulk_elem_start = rte_pipeline_rte_ring_dequeue_bulk_elem_start.load(self.lib)
        self.rte_ring_dequeue_bulk_start = rte_pipeline_rte_ring_dequeue_bulk_start.load(self.lib)
        self.rte_ring_dequeue_burst_elem_start = rte_pipeline_rte_ring_dequeue_burst_elem_start.load(self.lib)
        self.rte_ring_dequeue_burst_start = rte_pipeline_rte_ring_dequeue_burst_start.load(self.lib)
        self.rte_ring_dequeue_elem_finish = rte_pipeline_rte_ring_dequeue_elem_finish.load(self.lib)
        self.rte_ring_dequeue_finish = rte_pipeline_rte_ring_dequeue_finish.load(self.lib)
        self.rte_ring_enqueue_zc_bulk_elem_start = rte_pipeline_rte_ring_enqueue_zc_bulk_elem_start.load(self.lib)
        self.rte_ring_enqueue_zc_bulk_start = rte_pipeline_rte_ring_enqueue_zc_bulk_start.load(self.lib)
        self.rte_ring_enqueue_zc_burst_elem_start = rte_pipeline_rte_ring_enqueue_zc_burst_elem_start.load(self.lib)
        self.rte_ring_enqueue_zc_burst_start = rte_pipeline_rte_ring_enqueue_zc_burst_start.load(self.lib)
        self.rte_ring_enqueue_zc_elem_finish = rte_pipeline_rte_ring_enqueue_zc_elem_finish.load(self.lib)
        self.rte_ring_enqueue_zc_finish = rte_pipeline_rte_ring_enqueue_zc_finish.load(self.lib)
        self.rte_ring_dequeue_zc_bulk_elem_start = rte_pipeline_rte_ring_dequeue_zc_bulk_elem_start.load(self.lib)
        self.rte_ring_dequeue_zc_bulk_start = rte_pipeline_rte_ring_dequeue_zc_bulk_start.load(self.lib)
        self.rte_ring_dequeue_zc_burst_elem_start = rte_pipeline_rte_ring_dequeue_zc_burst_elem_start.load(self.lib)
        self.rte_ring_dequeue_zc_burst_start = rte_pipeline_rte_ring_dequeue_zc_burst_start.load(self.lib)
        self.rte_ring_dequeue_zc_elem_finish = rte_pipeline_rte_ring_dequeue_zc_elem_finish.load(self.lib)
        self.rte_ring_dequeue_zc_finish = rte_pipeline_rte_ring_dequeue_zc_finish.load(self.lib)
        self.rte_ring_get_memsize = rte_pipeline_rte_ring_get_memsize.load(self.lib)
        self.rte_ring_init = rte_pipeline_rte_ring_init.load(self.lib)
        self.rte_ring_free = rte_pipeline_rte_ring_free.load(self.lib)
        self.rte_ring_create = rte_pipeline_rte_ring_create.load(self.lib)
        self.rte_ring_dump = rte_pipeline_rte_ring_dump.load(self.lib)
        self.rte_ring_headtail_dump = rte_pipeline_rte_ring_headtail_dump.load(self.lib)
        self.rte_ring_mp_enqueue_bulk = rte_pipeline_rte_ring_mp_enqueue_bulk.load(self.lib)
        self.rte_ring_sp_enqueue_bulk = rte_pipeline_rte_ring_sp_enqueue_bulk.load(self.lib)
        self.rte_ring_enqueue_bulk = rte_pipeline_rte_ring_enqueue_bulk.load(self.lib)
        self.rte_ring_mp_enqueue = rte_pipeline_rte_ring_mp_enqueue.load(self.lib)
        self.rte_ring_sp_enqueue = rte_pipeline_rte_ring_sp_enqueue.load(self.lib)
        self.rte_ring_enqueue = rte_pipeline_rte_ring_enqueue.load(self.lib)
        self.rte_ring_mc_dequeue_bulk = rte_pipeline_rte_ring_mc_dequeue_bulk.load(self.lib)
        self.rte_ring_sc_dequeue_bulk = rte_pipeline_rte_ring_sc_dequeue_bulk.load(self.lib)
        self.rte_ring_dequeue_bulk = rte_pipeline_rte_ring_dequeue_bulk.load(self.lib)
        self.rte_ring_mc_dequeue = rte_pipeline_rte_ring_mc_dequeue.load(self.lib)
        self.rte_ring_sc_dequeue = rte_pipeline_rte_ring_sc_dequeue.load(self.lib)
        self.rte_ring_dequeue = rte_pipeline_rte_ring_dequeue.load(self.lib)
        self.rte_ring_reset = rte_pipeline_rte_ring_reset.load(self.lib)
        self.rte_ring_count = rte_pipeline_rte_ring_count.load(self.lib)
        self.rte_ring_free_count = rte_pipeline_rte_ring_free_count.load(self.lib)
        self.rte_ring_full = rte_pipeline_rte_ring_full.load(self.lib)
        self.rte_ring_empty = rte_pipeline_rte_ring_empty.load(self.lib)
        self.rte_ring_get_size = rte_pipeline_rte_ring_get_size.load(self.lib)
        self.rte_ring_get_capacity = rte_pipeline_rte_ring_get_capacity.load(self.lib)
        self.rte_ring_get_prod_sync_type = rte_pipeline_rte_ring_get_prod_sync_type.load(self.lib)
        self.rte_ring_is_prod_single = rte_pipeline_rte_ring_is_prod_single.load(self.lib)
        self.rte_ring_get_cons_sync_type = rte_pipeline_rte_ring_get_cons_sync_type.load(self.lib)
        self.rte_ring_is_cons_single = rte_pipeline_rte_ring_is_cons_single.load(self.lib)
        self.rte_ring_list_dump = rte_pipeline_rte_ring_list_dump.load(self.lib)
        self.rte_ring_lookup = rte_pipeline_rte_ring_lookup.load(self.lib)
        self.rte_ring_mp_enqueue_burst = rte_pipeline_rte_ring_mp_enqueue_burst.load(self.lib)
        self.rte_ring_sp_enqueue_burst = rte_pipeline_rte_ring_sp_enqueue_burst.load(self.lib)
        self.rte_ring_enqueue_burst = rte_pipeline_rte_ring_enqueue_burst.load(self.lib)
        self.rte_ring_mc_dequeue_burst = rte_pipeline_rte_ring_mc_dequeue_burst.load(self.lib)
        self.rte_ring_sc_dequeue_burst = rte_pipeline_rte_ring_sc_dequeue_burst.load(self.lib)
        self.rte_ring_dequeue_burst = rte_pipeline_rte_ring_dequeue_burst.load(self.lib)
        self.rte_mov16 = rte_pipeline_rte_mov16.load(self.lib)
        self.rte_mov32 = rte_pipeline_rte_mov32.load(self.lib)
        self.rte_mov64 = rte_pipeline_rte_mov64.load(self.lib)
        self.rte_mov128 = rte_pipeline_rte_mov128.load(self.lib)
        self.rte_mov256 = rte_pipeline_rte_mov256.load(self.lib)
        self.rte_mov48 = rte_pipeline_rte_mov48.load(self.lib)
        self.rte_get_tsc_hz = rte_pipeline_rte_get_tsc_hz.load(self.lib)
        self.rte_get_tsc_cycles = rte_pipeline_rte_get_tsc_cycles.load(self.lib)
        self.rte_get_timer_cycles = rte_pipeline_rte_get_timer_cycles.load(self.lib)
        self.rte_get_timer_hz = rte_pipeline_rte_get_timer_hz.load(self.lib)
        self.rte_delay_ms = rte_pipeline_rte_delay_ms.load(self.lib)
        self.rte_delay_us_block = rte_pipeline_rte_delay_us_block.load(self.lib)
        self.rte_delay_us_sleep = rte_pipeline_rte_delay_us_sleep.load(self.lib)
        self.rte_delay_us_callback_register = rte_pipeline_rte_delay_us_callback_register.load(self.lib)
        self.rte_rdtsc = rte_pipeline_rte_rdtsc.load(self.lib)
        self.rte_rdtsc_precise = rte_pipeline_rte_rdtsc_precise.load(self.lib)
        self.isalnum = rte_pipeline_isalnum.load(self.lib)
        self.isalpha = rte_pipeline_isalpha.load(self.lib)
        self.iscntrl = rte_pipeline_iscntrl.load(self.lib)
        self.isdigit = rte_pipeline_isdigit.load(self.lib)
        self.islower = rte_pipeline_islower.load(self.lib)
        self.isgraph = rte_pipeline_isgraph.load(self.lib)
        self.isprint = rte_pipeline_isprint.load(self.lib)
        self.ispunct = rte_pipeline_ispunct.load(self.lib)
        self.isspace = rte_pipeline_isspace.load(self.lib)
        self.isupper = rte_pipeline_isupper.load(self.lib)
        self.isxdigit = rte_pipeline_isxdigit.load(self.lib)
        self.tolower = rte_pipeline_tolower.load(self.lib)
        self.toupper = rte_pipeline_toupper.load(self.lib)
        self.isblank = rte_pipeline_isblank.load(self.lib)
        self.isascii = rte_pipeline_isascii.load(self.lib)
        self.toascii = rte_pipeline_toascii.load(self.lib)
        self.isalnum_l = rte_pipeline_isalnum_l.load(self.lib)
        self.isalpha_l = rte_pipeline_isalpha_l.load(self.lib)
        self.iscntrl_l = rte_pipeline_iscntrl_l.load(self.lib)
        self.isdigit_l = rte_pipeline_isdigit_l.load(self.lib)
        self.islower_l = rte_pipeline_islower_l.load(self.lib)
        self.isgraph_l = rte_pipeline_isgraph_l.load(self.lib)
        self.isprint_l = rte_pipeline_isprint_l.load(self.lib)
        self.ispunct_l = rte_pipeline_ispunct_l.load(self.lib)
        self.isspace_l = rte_pipeline_isspace_l.load(self.lib)
        self.isupper_l = rte_pipeline_isupper_l.load(self.lib)
        self.isxdigit_l = rte_pipeline_isxdigit_l.load(self.lib)
        self.isblank_l = rte_pipeline_isblank_l.load(self.lib)
        self.tolower_l = rte_pipeline_tolower_l.load(self.lib)
        self.toupper_l = rte_pipeline_toupper_l.load(self.lib)
        self.rte_strsplit = rte_pipeline_rte_strsplit.load(self.lib)
        self.rte_strlcpy = rte_pipeline_rte_strlcpy.load(self.lib)
        self.rte_strlcat = rte_pipeline_rte_strlcat.load(self.lib)
        self.rte_strscpy = rte_pipeline_rte_strscpy.load(self.lib)
        self.rte_str_skip_leading_spaces = rte_pipeline_rte_str_skip_leading_spaces.load(self.lib)
        self.rte_trace_is_enabled = rte_pipeline_rte_trace_is_enabled.load(self.lib)
        self.rte_trace_feature_is_enabled = rte_pipeline_rte_trace_feature_is_enabled.load(self.lib)
        self.rte_trace_mode_set = rte_pipeline_rte_trace_mode_set.load(self.lib)
        self.rte_trace_mode_get = rte_pipeline_rte_trace_mode_get.load(self.lib)
        self.rte_trace_pattern = rte_pipeline_rte_trace_pattern.load(self.lib)
        self.rte_trace_regexp = rte_pipeline_rte_trace_regexp.load(self.lib)
        self.rte_trace_save = rte_pipeline_rte_trace_save.load(self.lib)
        self.rte_trace_metadata_dump = rte_pipeline_rte_trace_metadata_dump.load(self.lib)
        self.rte_trace_dump = rte_pipeline_rte_trace_dump.load(self.lib)
        self.rte_trace_point_enable = rte_pipeline_rte_trace_point_enable.load(self.lib)
        self.rte_trace_point_disable = rte_pipeline_rte_trace_point_disable.load(self.lib)
        self.rte_trace_point_is_enabled = rte_pipeline_rte_trace_point_is_enabled.load(self.lib)
        self.rte_trace_point_lookup = rte_pipeline_rte_trace_point_lookup.load(self.lib)
        self.rte_mempool_trace_ops_dequeue_bulk = rte_pipeline_rte_mempool_trace_ops_dequeue_bulk.load(self.lib)
        self.rte_mempool_trace_ops_dequeue_contig_blocks = rte_pipeline_rte_mempool_trace_ops_dequeue_contig_blocks.load(self.lib)
        self.rte_mempool_trace_ops_enqueue_bulk = rte_pipeline_rte_mempool_trace_ops_enqueue_bulk.load(self.lib)
        self.rte_mempool_trace_generic_put = rte_pipeline_rte_mempool_trace_generic_put.load(self.lib)
        self.rte_mempool_trace_put_bulk = rte_pipeline_rte_mempool_trace_put_bulk.load(self.lib)
        self.rte_mempool_trace_generic_get = rte_pipeline_rte_mempool_trace_generic_get.load(self.lib)
        self.rte_mempool_trace_get_bulk = rte_pipeline_rte_mempool_trace_get_bulk.load(self.lib)
        self.rte_mempool_trace_get_contig_blocks = rte_pipeline_rte_mempool_trace_get_contig_blocks.load(self.lib)
        self.rte_mempool_trace_default_cache = rte_pipeline_rte_mempool_trace_default_cache.load(self.lib)
        self.rte_mempool_trace_cache_flush = rte_pipeline_rte_mempool_trace_cache_flush.load(self.lib)
        self.rte_mempool_get_header = rte_pipeline_rte_mempool_get_header.load(self.lib)
        self.rte_mempool_from_obj = rte_pipeline_rte_mempool_from_obj.load(self.lib)
        self.rte_mempool_get_trailer = rte_pipeline_rte_mempool_get_trailer.load(self.lib)
        self.rte_mempool_check_cookies = rte_pipeline_rte_mempool_check_cookies.load(self.lib)
        self.rte_mempool_contig_blocks_check_cookies = rte_pipeline_rte_mempool_contig_blocks_check_cookies.load(self.lib)
        self.rte_mempool_op_calc_mem_size_helper = rte_pipeline_rte_mempool_op_calc_mem_size_helper.load(self.lib)
        self.rte_mempool_op_calc_mem_size_default = rte_pipeline_rte_mempool_op_calc_mem_size_default.load(self.lib)
        self.rte_mempool_op_populate_helper = rte_pipeline_rte_mempool_op_populate_helper.load(self.lib)
        self.rte_mempool_op_populate_default = rte_pipeline_rte_mempool_op_populate_default.load(self.lib)
        self.rte_mempool_get_ops = rte_pipeline_rte_mempool_get_ops.load(self.lib)
        self.rte_mempool_ops_alloc = rte_pipeline_rte_mempool_ops_alloc.load(self.lib)
        self.rte_mempool_ops_dequeue_bulk = rte_pipeline_rte_mempool_ops_dequeue_bulk.load(self.lib)
        self.rte_mempool_ops_dequeue_contig_blocks = rte_pipeline_rte_mempool_ops_dequeue_contig_blocks.load(self.lib)
        self.rte_mempool_ops_enqueue_bulk = rte_pipeline_rte_mempool_ops_enqueue_bulk.load(self.lib)
        self.rte_mempool_ops_get_count = rte_pipeline_rte_mempool_ops_get_count.load(self.lib)
        self.rte_mempool_ops_calc_mem_size = rte_pipeline_rte_mempool_ops_calc_mem_size.load(self.lib)
        self.rte_mempool_ops_populate = rte_pipeline_rte_mempool_ops_populate.load(self.lib)
        self.rte_mempool_ops_get_info = rte_pipeline_rte_mempool_ops_get_info.load(self.lib)
        self.rte_mempool_ops_free = rte_pipeline_rte_mempool_ops_free.load(self.lib)
        self.rte_mempool_set_ops_byname = rte_pipeline_rte_mempool_set_ops_byname.load(self.lib)
        self.rte_mempool_register_ops = rte_pipeline_rte_mempool_register_ops.load(self.lib)
        self.rte_mempool_free = rte_pipeline_rte_mempool_free.load(self.lib)
        self.rte_mempool_create = rte_pipeline_rte_mempool_create.load(self.lib)
        self.rte_mempool_create_empty = rte_pipeline_rte_mempool_create_empty.load(self.lib)
        self.rte_mempool_populate_iova = rte_pipeline_rte_mempool_populate_iova.load(self.lib)
        self.rte_mempool_populate_virt = rte_pipeline_rte_mempool_populate_virt.load(self.lib)
        self.rte_mempool_populate_default = rte_pipeline_rte_mempool_populate_default.load(self.lib)
        self.rte_mempool_populate_anon = rte_pipeline_rte_mempool_populate_anon.load(self.lib)
        self.rte_mempool_obj_iter = rte_pipeline_rte_mempool_obj_iter.load(self.lib)
        self.rte_mempool_mem_iter = rte_pipeline_rte_mempool_mem_iter.load(self.lib)
        self.rte_mempool_dump = rte_pipeline_rte_mempool_dump.load(self.lib)
        self.rte_mempool_cache_create = rte_pipeline_rte_mempool_cache_create.load(self.lib)
        self.rte_mempool_cache_free = rte_pipeline_rte_mempool_cache_free.load(self.lib)
        self.rte_mempool_default_cache = rte_pipeline_rte_mempool_default_cache.load(self.lib)
        self.rte_mempool_cache_flush = rte_pipeline_rte_mempool_cache_flush.load(self.lib)
        self.rte_mempool_do_generic_put = rte_pipeline_rte_mempool_do_generic_put.load(self.lib)
        self.rte_mempool_generic_put = rte_pipeline_rte_mempool_generic_put.load(self.lib)
        self.rte_mempool_put_bulk = rte_pipeline_rte_mempool_put_bulk.load(self.lib)
        self.rte_mempool_put = rte_pipeline_rte_mempool_put.load(self.lib)
        self.rte_mempool_do_generic_get = rte_pipeline_rte_mempool_do_generic_get.load(self.lib)
        self.rte_mempool_generic_get = rte_pipeline_rte_mempool_generic_get.load(self.lib)
        self.rte_mempool_get_bulk = rte_pipeline_rte_mempool_get_bulk.load(self.lib)
        self.rte_mempool_get = rte_pipeline_rte_mempool_get.load(self.lib)
        self.rte_mempool_get_contig_blocks = rte_pipeline_rte_mempool_get_contig_blocks.load(self.lib)
        self.rte_mempool_avail_count = rte_pipeline_rte_mempool_avail_count.load(self.lib)
        self.rte_mempool_in_use_count = rte_pipeline_rte_mempool_in_use_count.load(self.lib)
        self.rte_mempool_full = rte_pipeline_rte_mempool_full.load(self.lib)
        self.rte_mempool_empty = rte_pipeline_rte_mempool_empty.load(self.lib)
        self.rte_mempool_virt2iova = rte_pipeline_rte_mempool_virt2iova.load(self.lib)
        self.rte_mempool_audit = rte_pipeline_rte_mempool_audit.load(self.lib)
        self.rte_mempool_get_priv = rte_pipeline_rte_mempool_get_priv.load(self.lib)
        self.rte_mempool_list_dump = rte_pipeline_rte_mempool_list_dump.load(self.lib)
        self.rte_mempool_lookup = rte_pipeline_rte_mempool_lookup.load(self.lib)
        self.rte_mempool_calc_obj_size = rte_pipeline_rte_mempool_calc_obj_size.load(self.lib)
        self.rte_mempool_walk = rte_pipeline_rte_mempool_walk.load(self.lib)
        self.rte_mempool_get_mem_range = rte_pipeline_rte_mempool_get_mem_range.load(self.lib)
        self.rte_mempool_get_obj_alignment = rte_pipeline_rte_mempool_get_obj_alignment.load(self.lib)
        self.rte_mempool_get_page_size = rte_pipeline_rte_mempool_get_page_size.load(self.lib)
        self.rte_mempool_event_callback_register = rte_pipeline_rte_mempool_event_callback_register.load(self.lib)
        self.rte_mempool_event_callback_unregister = rte_pipeline_rte_mempool_event_callback_unregister.load(self.lib)
        self.rte_prefetch0 = rte_pipeline_rte_prefetch0.load(self.lib)
        self.rte_prefetch1 = rte_pipeline_rte_prefetch1.load(self.lib)
        self.rte_prefetch2 = rte_pipeline_rte_prefetch2.load(self.lib)
        self.rte_prefetch_non_temporal = rte_pipeline_rte_prefetch_non_temporal.load(self.lib)
        self.rte_prefetch0_write = rte_pipeline_rte_prefetch0_write.load(self.lib)
        self.rte_prefetch1_write = rte_pipeline_rte_prefetch1_write.load(self.lib)
        self.rte_prefetch2_write = rte_pipeline_rte_prefetch2_write.load(self.lib)
        self.rte_cldemote = rte_pipeline_rte_cldemote.load(self.lib)
        self.rte_get_ptype_l2_name = rte_pipeline_rte_get_ptype_l2_name.load(self.lib)
        self.rte_get_ptype_l3_name = rte_pipeline_rte_get_ptype_l3_name.load(self.lib)
        self.rte_get_ptype_l4_name = rte_pipeline_rte_get_ptype_l4_name.load(self.lib)
        self.rte_get_ptype_tunnel_name = rte_pipeline_rte_get_ptype_tunnel_name.load(self.lib)
        self.rte_get_ptype_inner_l2_name = rte_pipeline_rte_get_ptype_inner_l2_name.load(self.lib)
        self.rte_get_ptype_inner_l3_name = rte_pipeline_rte_get_ptype_inner_l3_name.load(self.lib)
        self.rte_get_ptype_inner_l4_name = rte_pipeline_rte_get_ptype_inner_l4_name.load(self.lib)
        self.rte_get_ptype_name = rte_pipeline_rte_get_ptype_name.load(self.lib)
        self.rte_constant_bswap16 = rte_pipeline_rte_constant_bswap16.load(self.lib)
        self.rte_constant_bswap32 = rte_pipeline_rte_constant_bswap32.load(self.lib)
        self.rte_constant_bswap64 = rte_pipeline_rte_constant_bswap64.load(self.lib)
        self.rte_get_rx_ol_flag_name = rte_pipeline_rte_get_rx_ol_flag_name.load(self.lib)
        self.rte_get_rx_ol_flag_list = rte_pipeline_rte_get_rx_ol_flag_list.load(self.lib)
        self.rte_get_tx_ol_flag_name = rte_pipeline_rte_get_tx_ol_flag_name.load(self.lib)
        self.rte_get_tx_ol_flag_list = rte_pipeline_rte_get_tx_ol_flag_list.load(self.lib)
        self.rte_mbuf_prefetch_part1 = rte_pipeline_rte_mbuf_prefetch_part1.load(self.lib)
        self.rte_mbuf_prefetch_part2 = rte_pipeline_rte_mbuf_prefetch_part2.load(self.lib)
        self.rte_pktmbuf_priv_size = rte_pipeline_rte_pktmbuf_priv_size.load(self.lib)
        self.rte_mbuf_iova_get = rte_pipeline_rte_mbuf_iova_get.load(self.lib)
        self.rte_mbuf_iova_set = rte_pipeline_rte_mbuf_iova_set.load(self.lib)
        self.rte_mbuf_data_iova = rte_pipeline_rte_mbuf_data_iova.load(self.lib)
        self.rte_mbuf_data_iova_default = rte_pipeline_rte_mbuf_data_iova_default.load(self.lib)
        self.rte_mbuf_from_indirect = rte_pipeline_rte_mbuf_from_indirect.load(self.lib)
        self.rte_mbuf_buf_addr = rte_pipeline_rte_mbuf_buf_addr.load(self.lib)
        self.rte_mbuf_data_addr_default = rte_pipeline_rte_mbuf_data_addr_default.load(self.lib)
        self.rte_mbuf_to_baddr = rte_pipeline_rte_mbuf_to_baddr.load(self.lib)
        self.rte_mbuf_to_priv = rte_pipeline_rte_mbuf_to_priv.load(self.lib)
        self.rte_pktmbuf_priv_flags = rte_pipeline_rte_pktmbuf_priv_flags.load(self.lib)
        self.rte_mbuf_refcnt_read = rte_pipeline_rte_mbuf_refcnt_read.load(self.lib)
        self.rte_mbuf_refcnt_set = rte_pipeline_rte_mbuf_refcnt_set.load(self.lib)
        self.rte_mbuf_refcnt_update = rte_pipeline_rte_mbuf_refcnt_update.load(self.lib)
        self.rte_mbuf_ext_refcnt_read = rte_pipeline_rte_mbuf_ext_refcnt_read.load(self.lib)
        self.rte_mbuf_ext_refcnt_set = rte_pipeline_rte_mbuf_ext_refcnt_set.load(self.lib)
        self.rte_mbuf_ext_refcnt_update = rte_pipeline_rte_mbuf_ext_refcnt_update.load(self.lib)
        self.rte_mbuf_sanity_check = rte_pipeline_rte_mbuf_sanity_check.load(self.lib)
        self.rte_mbuf_check = rte_pipeline_rte_mbuf_check.load(self.lib)
        self.rte_mbuf_raw_alloc = rte_pipeline_rte_mbuf_raw_alloc.load(self.lib)
        self.rte_mbuf_raw_alloc_bulk = rte_pipeline_rte_mbuf_raw_alloc_bulk.load(self.lib)
        self.rte_mbuf_raw_free = rte_pipeline_rte_mbuf_raw_free.load(self.lib)
        self.rte_mbuf_raw_free_bulk = rte_pipeline_rte_mbuf_raw_free_bulk.load(self.lib)
        self.rte_pktmbuf_init = rte_pipeline_rte_pktmbuf_init.load(self.lib)
        self.rte_pktmbuf_pool_init = rte_pipeline_rte_pktmbuf_pool_init.load(self.lib)
        self.rte_pktmbuf_pool_create = rte_pipeline_rte_pktmbuf_pool_create.load(self.lib)
        self.rte_pktmbuf_pool_create_by_ops = rte_pipeline_rte_pktmbuf_pool_create_by_ops.load(self.lib)
        self.rte_pktmbuf_pool_create_extbuf = rte_pipeline_rte_pktmbuf_pool_create_extbuf.load(self.lib)
        self.rte_pktmbuf_data_room_size = rte_pipeline_rte_pktmbuf_data_room_size.load(self.lib)
        self.rte_pktmbuf_reset_headroom = rte_pipeline_rte_pktmbuf_reset_headroom.load(self.lib)
        self.rte_pktmbuf_reset = rte_pipeline_rte_pktmbuf_reset.load(self.lib)
        self.rte_pktmbuf_alloc = rte_pipeline_rte_pktmbuf_alloc.load(self.lib)
        self.rte_pktmbuf_alloc_bulk = rte_pipeline_rte_pktmbuf_alloc_bulk.load(self.lib)
        self.rte_pktmbuf_ext_shinfo_init_helper = rte_pipeline_rte_pktmbuf_ext_shinfo_init_helper.load(self.lib)
        self.rte_pktmbuf_attach_extbuf = rte_pipeline_rte_pktmbuf_attach_extbuf.load(self.lib)
        self.rte_mbuf_dynfield_copy = rte_pipeline_rte_mbuf_dynfield_copy.load(self.lib)
        self.rte_pktmbuf_attach = rte_pipeline_rte_pktmbuf_attach.load(self.lib)
        self.rte_pktmbuf_detach = rte_pipeline_rte_pktmbuf_detach.load(self.lib)
        self.rte_pktmbuf_prefree_seg = rte_pipeline_rte_pktmbuf_prefree_seg.load(self.lib)
        self.rte_pktmbuf_free_seg = rte_pipeline_rte_pktmbuf_free_seg.load(self.lib)
        self.rte_pktmbuf_free = rte_pipeline_rte_pktmbuf_free.load(self.lib)
        self.rte_pktmbuf_free_bulk = rte_pipeline_rte_pktmbuf_free_bulk.load(self.lib)
        self.rte_pktmbuf_clone = rte_pipeline_rte_pktmbuf_clone.load(self.lib)
        self.rte_pktmbuf_copy = rte_pipeline_rte_pktmbuf_copy.load(self.lib)
        self.rte_pktmbuf_refcnt_update = rte_pipeline_rte_pktmbuf_refcnt_update.load(self.lib)
        self.rte_pktmbuf_headroom = rte_pipeline_rte_pktmbuf_headroom.load(self.lib)
        self.rte_pktmbuf_tailroom = rte_pipeline_rte_pktmbuf_tailroom.load(self.lib)
        self.rte_pktmbuf_lastseg = rte_pipeline_rte_pktmbuf_lastseg.load(self.lib)
        self.rte_pktmbuf_prepend = rte_pipeline_rte_pktmbuf_prepend.load(self.lib)
        self.rte_pktmbuf_append = rte_pipeline_rte_pktmbuf_append.load(self.lib)
        self.rte_pktmbuf_adj = rte_pipeline_rte_pktmbuf_adj.load(self.lib)
        self.rte_pktmbuf_trim = rte_pipeline_rte_pktmbuf_trim.load(self.lib)
        self.rte_pktmbuf_is_contiguous = rte_pipeline_rte_pktmbuf_is_contiguous.load(self.lib)
        self.rte_pktmbuf_read = rte_pipeline_rte_pktmbuf_read.load(self.lib)
        self.rte_pktmbuf_chain = rte_pipeline_rte_pktmbuf_chain.load(self.lib)
        self.rte_mbuf_tx_offload = rte_pipeline_rte_mbuf_tx_offload.load(self.lib)
        self.rte_validate_tx_offload = rte_pipeline_rte_validate_tx_offload.load(self.lib)
        self.rte_pktmbuf_linearize = rte_pipeline_rte_pktmbuf_linearize.load(self.lib)
        self.rte_pktmbuf_dump = rte_pipeline_rte_pktmbuf_dump.load(self.lib)
        self.rte_mbuf_sched_queue_get = rte_pipeline_rte_mbuf_sched_queue_get.load(self.lib)
        self.rte_mbuf_sched_traffic_class_get = rte_pipeline_rte_mbuf_sched_traffic_class_get.load(self.lib)
        self.rte_mbuf_sched_color_get = rte_pipeline_rte_mbuf_sched_color_get.load(self.lib)
        self.rte_mbuf_sched_get = rte_pipeline_rte_mbuf_sched_get.load(self.lib)
        self.rte_mbuf_sched_queue_set = rte_pipeline_rte_mbuf_sched_queue_set.load(self.lib)
        self.rte_mbuf_sched_traffic_class_set = rte_pipeline_rte_mbuf_sched_traffic_class_set.load(self.lib)
        self.rte_mbuf_sched_color_set = rte_pipeline_rte_mbuf_sched_color_set.load(self.lib)
        self.rte_mbuf_sched_set = rte_pipeline_rte_mbuf_sched_set.load(self.lib)
        self.rte_pipeline_create = rte_pipeline_rte_pipeline_create.load(self.lib)
        self.rte_pipeline_free = rte_pipeline_rte_pipeline_free.load(self.lib)
        self.rte_pipeline_check = rte_pipeline_rte_pipeline_check.load(self.lib)
        self.rte_pipeline_run = rte_pipeline_rte_pipeline_run.load(self.lib)
        self.rte_pipeline_flush = rte_pipeline_rte_pipeline_flush.load(self.lib)
        self.rte_pipeline_table_create = rte_pipeline_rte_pipeline_table_create.load(self.lib)
        self.rte_pipeline_table_default_entry_add = rte_pipeline_rte_pipeline_table_default_entry_add.load(self.lib)
        self.rte_pipeline_table_default_entry_delete = rte_pipeline_rte_pipeline_table_default_entry_delete.load(self.lib)
        self.rte_pipeline_table_entry_add = rte_pipeline_rte_pipeline_table_entry_add.load(self.lib)
        self.rte_pipeline_table_entry_delete = rte_pipeline_rte_pipeline_table_entry_delete.load(self.lib)
        self.rte_pipeline_table_entry_add_bulk = rte_pipeline_rte_pipeline_table_entry_add_bulk.load(self.lib)
        self.rte_pipeline_table_entry_delete_bulk = rte_pipeline_rte_pipeline_table_entry_delete_bulk.load(self.lib)
        self.rte_pipeline_table_stats_read = rte_pipeline_rte_pipeline_table_stats_read.load(self.lib)
        self.rte_pipeline_port_in_create = rte_pipeline_rte_pipeline_port_in_create.load(self.lib)
        self.rte_pipeline_port_in_connect_to_table = rte_pipeline_rte_pipeline_port_in_connect_to_table.load(self.lib)
        self.rte_pipeline_port_in_enable = rte_pipeline_rte_pipeline_port_in_enable.load(self.lib)
        self.rte_pipeline_port_in_disable = rte_pipeline_rte_pipeline_port_in_disable.load(self.lib)
        self.rte_pipeline_port_in_stats_read = rte_pipeline_rte_pipeline_port_in_stats_read.load(self.lib)
        self.rte_pipeline_port_out_create = rte_pipeline_rte_pipeline_port_out_create.load(self.lib)
        self.rte_pipeline_port_out_stats_read = rte_pipeline_rte_pipeline_port_out_stats_read.load(self.lib)
        self.rte_pipeline_port_out_packet_insert = rte_pipeline_rte_pipeline_port_out_packet_insert.load(self.lib)
        self.rte_pipeline_ah_packet_hijack = rte_pipeline_rte_pipeline_ah_packet_hijack.load(self.lib)
        self.rte_pipeline_ah_packet_drop = rte_pipeline_rte_pipeline_ah_packet_drop.load(self.lib)

