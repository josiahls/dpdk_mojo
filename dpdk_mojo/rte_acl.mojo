
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
struct anonomous_record_3(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_3

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
struct anonomous_record_4(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_4

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
	# {"id":"0x217be100","inner":[{"id":"0x2162fed0","inner":[{"id":"0x2162f190","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"void *[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Generic marker for any place in a structure. 

alias RTE_MARKER8 = 	# # Node: PlaceHolder()
	# {"id":"0x217be290","inner":[{"decl":{"id":"0x2174a238","kind":"TypedefDecl","name":"uint8_t"},"id":"0x217be1f0","inner":[{"decl":{"id":"0x217209a0","kind":"TypedefDecl","name":"__uint8_t"},"id":"0x21720d30","inner":[{"id":"0x2162f290","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"TypedefType","type":{"qualType":"__uint8_t"}}],"kind":"TypedefType","type":{"qualType":"uint8_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint8_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 1B alignment in a structure. 

alias RTE_MARKER16 = 	# # Node: PlaceHolder()
	# {"id":"0x217be3f0","inner":[{"decl":{"id":"0x2174a2a0","kind":"TypedefDecl","name":"uint16_t"},"id":"0x21790ed0","inner":[{"decl":{"id":"0x21720a80","kind":"TypedefDecl","name":"__uint16_t"},"id":"0x21720e50","inner":[{"id":"0x2162f2b0","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"TypedefType","type":{"qualType":"__uint16_t"}}],"kind":"TypedefType","type":{"qualType":"uint16_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint16_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 2B alignment in a structure. 

alias RTE_MARKER32 = 	# # Node: PlaceHolder()
	# {"id":"0x217be550","inner":[{"decl":{"id":"0x2174a308","kind":"TypedefDecl","name":"uint32_t"},"id":"0x21790e40","inner":[{"decl":{"id":"0x21720b60","kind":"TypedefDecl","name":"__uint32_t"},"id":"0x21720f70","inner":[{"id":"0x2162f2d0","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"__uint32_t"}}],"kind":"TypedefType","type":{"qualType":"uint32_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint32_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 4B alignment in a structure. 

alias RTE_MARKER64 = 	# # Node: PlaceHolder()
	# {"id":"0x217be6b0","inner":[{"decl":{"id":"0x2174a370","kind":"TypedefDecl","name":"uint64_t"},"id":"0x21790db0","inner":[{"decl":{"id":"0x21720c40","kind":"TypedefDecl","name":"__uint64_t"},"id":"0x21721090","inner":[{"id":"0x2162f2f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uint64_t"}}],"kind":"TypedefType","type":{"qualType":"uint64_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint64_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 8B alignment in a structure. 

alias rte_str_to_size = fn (read UnsafePointer[Int8]) -> ffi.c_ulong_long
alias rte_size_to_str = fn (UnsafePointer[Int8], Int32, ffi.c_ulong_long, Bool, read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_exit = fn (Int32, read *UnsafePointer[Int8]) -> NoneType
alias ptrdiff_t = ffi.c_long
alias wchar_t = UInt32
struct anonomous_record_5(Copyable & Movable):
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_5

alias __gwchar_t = UInt32
struct anonomous_record_6(Copyable & Movable):
	var quot : ffi.c_long

	var rem : ffi.c_long

alias imaxdiv_t = anonomous_record_6

alias imaxabs = fn (intmax_t) -> intmax_t
alias imaxdiv = fn (intmax_t, intmax_t) -> imaxdiv_t
alias strtoimax = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> intmax_t
alias strtoumax = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> uintmax_t
alias wcstoimax = fn (read UnsafePointer[__gwchar_t], UnsafePointer[UnsafePointer[__gwchar_t]], Int32) -> intmax_t
alias wcstoumax = fn (read UnsafePointer[__gwchar_t], UnsafePointer[UnsafePointer[__gwchar_t]], Int32) -> uintmax_t
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
alias __errno_location = fn (NoneType) -> UnsafePointer[Int32]
alias va_list = __builtin_va_list
alias __gnuc_va_list = __builtin_va_list
alias anonomous_record_7 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_8(Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_7

alias __mbstate_t = anonomous_record_8

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
struct anonomous_record_9(Copyable & Movable):
	var quot : Int32

	var rem : Int32

alias div_t = anonomous_record_9

struct anonomous_record_10(Copyable & Movable):
	var quot : ffi.c_long

	var rem : ffi.c_long

alias ldiv_t = anonomous_record_10

struct anonomous_record_11(Copyable & Movable):
	var quot : ffi.c_long_long

	var rem : ffi.c_long_long

alias lldiv_t = anonomous_record_11

alias __ctype_get_mb_cur_max = fn (NoneType) -> size_t
alias atof = fn (read UnsafePointer[Int8]) -> Float64
alias atoi = fn (read UnsafePointer[Int8]) -> Int32
alias atol = fn (read UnsafePointer[Int8]) -> ffi.c_long
alias atoll = fn (read UnsafePointer[Int8]) -> ffi.c_long_long
alias strtod = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> Float64
alias strtof = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> Float32
alias strtold = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> Float64
alias strtol = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_long
alias strtoul = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_ulong
alias strtoq = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_long_long
alias strtouq = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_ulong_long
alias strtoll = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_long_long
alias strtoull = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> ffi.c_ulong_long
alias l64a = fn (ffi.c_long) -> UnsafePointer[Int8]
alias a64l = fn (read UnsafePointer[Int8]) -> ffi.c_long
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
alias clock_t = __clock_t
alias clockid_t = __clockid_t
alias timer_t = __timer_t
alias ulong = ffi.c_ulong
alias ushort = UInt16
alias uint = UInt32
alias u_int8_t = __uint8_t
alias u_int16_t = __uint16_t
alias u_int32_t = __uint32_t
alias u_int64_t = __uint64_t
alias register_t = ffi.c_long

alias __bswap_16 = fn (__uint16_t) -> __uint16_t
alias __bswap_32 = fn (__uint32_t) -> __uint32_t
alias __bswap_64 = fn (__uint64_t) -> __uint64_t
alias __uint16_identity = fn (__uint16_t) -> __uint16_t
alias __uint32_identity = fn (__uint32_t) -> __uint32_t
alias __uint64_identity = fn (__uint64_t) -> __uint64_t
struct anonomous_record_12(Copyable & Movable):
	var __val : InlineArray[ffi.c_ulong, 16]

alias __sigset_t = anonomous_record_12

alias sigset_t = __sigset_t
struct timeval(Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_usec : ffi.c_long

alias suseconds_t = __suseconds_t
alias __fd_mask = ffi.c_long
struct anonomous_record_13(Copyable & Movable):
	var __fds_bits : InlineArray[__fd_mask, 16]

alias fd_set = anonomous_record_13

alias fd_mask = __fd_mask
alias select = fn (Int32, UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[timeval]) -> Int32
alias pselect = fn (Int32, UnsafePointer[fd_set], UnsafePointer[fd_set], UnsafePointer[fd_set], read UnsafePointer[timespec], read UnsafePointer[__sigset_t]) -> Int32
alias blksize_t = __blksize_t
alias blkcnt_t = __blkcnt_t
alias fsblkcnt_t = __fsblkcnt_t
alias fsfilcnt_t = __fsfilcnt_t
struct anonomous_record_14(Copyable & Movable):
	var __low : UInt32

	var __high : UInt32

alias anonomous_record_15 = C_Union[ffi.c_ulong_long, anonomous_record_14]

alias __atomic_wide_counter = anonomous_record_15

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
struct anonomous_record_16(Copyable & Movable):
	var __data : Int32

alias __once_flag = anonomous_record_16

alias pthread_t = ffi.c_ulong
alias anonomous_record_17 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_mutexattr_t = anonomous_record_17

alias anonomous_record_18 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_condattr_t = anonomous_record_18

alias pthread_key_t = UInt32
alias pthread_once_t = Int32
alias pthread_attr_t = C_Union[InlineArray[Int8, 64], ffi.c_long]

alias anonomous_record_19 = C_Union[__pthread_mutex_s, InlineArray[Int8, 48], ffi.c_long]

alias pthread_mutex_t = anonomous_record_19

alias anonomous_record_20 = C_Union[__pthread_cond_s, InlineArray[Int8, 48], ffi.c_long_long]

alias pthread_cond_t = anonomous_record_20

alias anonomous_record_21 = C_Union[__pthread_rwlock_arch_t, InlineArray[Int8, 56], ffi.c_long]

alias pthread_rwlock_t = anonomous_record_21

alias anonomous_record_22 = C_Union[InlineArray[Int8, 8], ffi.c_long]

alias pthread_rwlockattr_t = anonomous_record_22

alias pthread_spinlock_t = Int32 # QualType: volatile
alias anonomous_record_23 = C_Union[InlineArray[Int8, 32], ffi.c_long]

alias pthread_barrier_t = anonomous_record_23

alias anonomous_record_24 = C_Union[InlineArray[Int8, 8], Int32]

alias pthread_barrierattr_t = anonomous_record_24

alias random = fn (NoneType) -> ffi.c_long
alias srandom = fn (UInt32) -> NoneType
alias initstate = fn (UInt32, UnsafePointer[Int8], size_t) -> UnsafePointer[Int8]
alias setstate = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
struct random_data(Copyable & Movable):
	var fptr : UnsafePointer[ffi.c_long]

	var rptr : UnsafePointer[ffi.c_long]

	var state : UnsafePointer[ffi.c_long]

	var rand_type : Int32

	var rand_deg : Int32

	var rand_sep : Int32

	var end_ptr : UnsafePointer[ffi.c_long]

alias random_r = fn (UnsafePointer[random_data], UnsafePointer[ffi.c_long]) -> Int32
alias srandom_r = fn (UInt32, UnsafePointer[random_data]) -> Int32
alias initstate_r = fn (UInt32, UnsafePointer[Int8], size_t, UnsafePointer[random_data]) -> Int32
alias setstate_r = fn (UnsafePointer[Int8], UnsafePointer[random_data]) -> Int32
alias rand = fn (NoneType) -> Int32
alias srand = fn (UInt32) -> NoneType
alias rand_r = fn (UnsafePointer[UInt32]) -> Int32
alias drand48 = fn (NoneType) -> Float64
alias erand48 = fn (UnsafePointer[UInt16]) -> Float64
alias lrand48 = fn (NoneType) -> ffi.c_long
alias nrand48 = fn (UnsafePointer[UInt16]) -> ffi.c_long
alias mrand48 = fn (NoneType) -> ffi.c_long
alias jrand48 = fn (UnsafePointer[UInt16]) -> ffi.c_long
alias srand48 = fn (ffi.c_long) -> NoneType
alias seed48 = fn (UnsafePointer[UInt16]) -> UnsafePointer[UInt16]
alias lcong48 = fn (UnsafePointer[UInt16]) -> NoneType
struct drand48_data(Copyable & Movable):
	var __x : InlineArray[UInt16, 3]

	var __old_x : InlineArray[UInt16, 3]

	var __c : UInt16

	var __init : UInt16

	var __a : ffi.c_ulong_long

alias drand48_r = fn (UnsafePointer[drand48_data], UnsafePointer[Float64]) -> Int32
alias erand48_r = fn (UnsafePointer[UInt16], UnsafePointer[drand48_data], UnsafePointer[Float64]) -> Int32
alias lrand48_r = fn (UnsafePointer[drand48_data], UnsafePointer[ffi.c_long]) -> Int32
alias nrand48_r = fn (UnsafePointer[UInt16], UnsafePointer[drand48_data], UnsafePointer[ffi.c_long]) -> Int32
alias mrand48_r = fn (UnsafePointer[drand48_data], UnsafePointer[ffi.c_long]) -> Int32
alias jrand48_r = fn (UnsafePointer[UInt16], UnsafePointer[drand48_data], UnsafePointer[ffi.c_long]) -> Int32
alias srand48_r = fn (ffi.c_long, UnsafePointer[drand48_data]) -> Int32
alias seed48_r = fn (UnsafePointer[UInt16], UnsafePointer[drand48_data]) -> Int32
alias lcong48_r = fn (UnsafePointer[UInt16], UnsafePointer[drand48_data]) -> Int32
alias malloc = fn (ffi.c_ulong) -> OpaquePointer
alias calloc = fn (ffi.c_ulong, ffi.c_ulong) -> OpaquePointer
alias realloc = fn (OpaquePointer, ffi.c_ulong) -> OpaquePointer
alias free = fn (OpaquePointer) -> NoneType
alias reallocarray = fn (OpaquePointer, size_t, size_t) -> OpaquePointer
alias valloc = fn (size_t) -> OpaquePointer
alias posix_memalign = fn (UnsafePointer[OpaquePointer], size_t, size_t) -> Int32
alias aligned_alloc = fn (ffi.c_ulong, ffi.c_ulong) -> OpaquePointer
alias atexit = fn (fn() -> NoneType) -> Int32
alias at_quick_exit = fn (fn() -> NoneType) -> Int32
alias on_exit = fn (fn(Int32, OpaquePointer), OpaquePointer -> NoneType) -> Int32
alias exit = fn (Int32) -> NoneType
alias quick_exit = fn (Int32) -> NoneType
alias _Exit = fn (Int32) -> NoneType
alias putenv = fn (UnsafePointer[Int8]) -> Int32
alias unsetenv = fn (read UnsafePointer[Int8]) -> Int32
alias clearenv = fn (NoneType) -> Int32
alias mktemp = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias mkstemp = fn (UnsafePointer[Int8]) -> Int32
alias mkstemps = fn (UnsafePointer[Int8], Int32) -> Int32
alias mkdtemp = fn (UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias system = fn (read UnsafePointer[Int8]) -> Int32
alias realpath = fn (read UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias __compar_fn_t = fn(read OpaquePointer, read OpaquePointer) -> Int32
alias bsearch = fn (read OpaquePointer, read OpaquePointer, size_t, size_t, __compar_fn_t) -> OpaquePointer
alias qsort = fn (OpaquePointer, size_t, size_t, __compar_fn_t) -> NoneType
alias abs = fn (Int32) -> Int32
alias labs = fn (ffi.c_long) -> ffi.c_long
alias llabs = fn (ffi.c_long_long) -> ffi.c_long_long
alias div = fn (Int32, Int32) -> div_t
alias ldiv = fn (ffi.c_long, ffi.c_long) -> ldiv_t
alias lldiv = fn (ffi.c_long_long, ffi.c_long_long) -> lldiv_t
alias ecvt = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32]) -> UnsafePointer[Int8]
alias fcvt = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32]) -> UnsafePointer[Int8]
alias gcvt = fn (Float64, Int32, UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias qecvt = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32]) -> UnsafePointer[Int8]
alias qfcvt = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32]) -> UnsafePointer[Int8]
alias qgcvt = fn (Float64, Int32, UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias ecvt_r = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32], UnsafePointer[Int8], size_t) -> Int32
alias fcvt_r = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32], UnsafePointer[Int8], size_t) -> Int32
alias qecvt_r = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32], UnsafePointer[Int8], size_t) -> Int32
alias qfcvt_r = fn (Float64, Int32, UnsafePointer[Int32], UnsafePointer[Int32], UnsafePointer[Int8], size_t) -> Int32
alias mblen = fn (read UnsafePointer[Int8], size_t) -> Int32
alias mbtowc = fn (UnsafePointer[wchar_t], read UnsafePointer[Int8], size_t) -> Int32
alias wctomb = fn (UnsafePointer[Int8], wchar_t) -> Int32
alias mbstowcs = fn (UnsafePointer[wchar_t], read UnsafePointer[Int8], size_t) -> size_t
alias wcstombs = fn (UnsafePointer[Int8], read UnsafePointer[wchar_t], size_t) -> size_t
alias rpmatch = fn (read UnsafePointer[Int8]) -> Int32
alias getsubopt = fn (UnsafePointer[UnsafePointer[Int8]], UnsafePointer[UnsafePointer[Int8]], UnsafePointer[UnsafePointer[Int8]]) -> Int32
alias getloadavg = fn (UnsafePointer[Float64], Int32) -> Int32
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
alias rte_mcfg_mem_get_lock = fn (NoneType) -> UnsafePointer[Int32]
alias rte_mcfg_tailq_get_lock = fn (NoneType) -> UnsafePointer[Int32]
alias rte_mcfg_mempool_get_lock = fn (NoneType) -> UnsafePointer[Int32]
alias rte_mcfg_timer_get_lock = fn (NoneType) -> UnsafePointer[Int32]
alias rte_mcfg_ethdev_get_lock = fn (NoneType) -> UnsafePointer[Int32]
alias rte_mcfg_get_single_file_segments = fn (NoneType) -> Bool
struct rte_fbarray(Copyable & Movable):
	var name : InlineArray[Int8, 64]

	var count : UInt32

	var len : UInt32

	var elt_sz : UInt32

	var data : OpaquePointer

	var rwlock : Int32

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
alias anonomous_record_25 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memseg(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x218ed688","kind":"PackedAttr","range":{"begin":{"expansionLoc":{"col":3,"file":"dpdk/lib/eal/include/rte_memory.h","includedFrom":{"file":"dpdk/lib/acl/rte_acl_osdep.h"},"line":61,"offset":1680,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/acl/rte_acl.h"},"line":159,"offset":4866,"tokLen":10}},"end":{"expansionLoc":{"col":3,"file":"dpdk/lib/eal/include/rte_memory.h","includedFrom":{"file":"dpdk/lib/acl/rte_acl_osdep.h"},"line":61,"offset":1680,"tokLen":16},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/acl/rte_acl.h"},"line":159,"offset":4866,"tokLen":10}}}}


	var iova : ffi.c_ulong

	var union_placeholder_1 : anonomous_record_25



	var len : ffi.c_ulong

	var hugepage_sz : ffi.c_ulong

	var socket_id : Int32

	var nchannel : UInt32

	var nrank : UInt32

	var flags : UInt32

alias anonomous_record_26 = C_Union[OpaquePointer, ffi.c_ulong]

struct rte_memseg_list(Copyable & Movable):

	var union_placeholder_1 : anonomous_record_26



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
struct rte_malloc_socket_stats(Copyable & Movable):

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

struct itimerspec(Copyable & Movable):
	var it_interval : timespec

	var it_value : timespec

struct sigevent(Copyable & Movable):
	pass
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
alias rte_uuid_t = 	# # Node: PlaceHolder()
	# {"id":"0x21911960","inner":[{"id":"0x2162f290","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"ConstantArrayType","size":16,"type":{"qualType":"unsigned char[16]"}}

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
alias per_lcore__rte_errno = Int32
alias rte_strerror = fn (Int32) -> UnsafePointer[Int8]

alias RTE_MIN_ERRNO = 1000

alias E_RTE_SECONDARY = 1001

alias E_RTE_NO_CONFIG = 1002

alias RTE_MAX_ERRNO = 1003

alias rte_strsplit = fn (UnsafePointer[Int8], Int32, UnsafePointer[UnsafePointer[Int8]], Int32, Int8) -> Int32
alias rte_strlcpy = fn (UnsafePointer[Int8], read UnsafePointer[Int8], size_t) -> size_t
alias rte_strlcat = fn (UnsafePointer[Int8], read UnsafePointer[Int8], size_t) -> size_t
alias rte_strscpy = fn (UnsafePointer[Int8], read UnsafePointer[Int8], size_t) -> ssize_t
alias rte_str_skip_leading_spaces = fn (read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_acl_field_types = C_Union[UInt8, UInt16, UInt32, ffi.c_ulong]

alias RTE_ACL_FIELD_TYPE_MASK = 0

alias RTE_ACL_FIELD_TYPE_RANGE = 1

alias RTE_ACL_FIELD_TYPE_BITMASK = 2

struct rte_acl_field_def(Copyable & Movable):

	var type : UInt8

	var size : UInt8

	var field_index : UInt8

	var input_index : UInt8

	var offset : UInt32

struct rte_acl_config(Copyable & Movable):

	var num_categories : UInt32

	var num_fields : UInt32

	var defs : InlineArray[rte_acl_field_def, 64]

	var max_size : ffi.c_ulong

struct rte_acl_field(Copyable & Movable):

	var value : union rte_acl_field_types

	var mask_range : union rte_acl_field_types

alias RTE_ACL_TYPE_SHIFT = 29

alias RTE_ACL_MAX_INDEX = 30

alias RTE_ACL_MAX_PRIORITY = 536870911

alias RTE_ACL_MIN_PRIORITY = 1

struct rte_acl_rule_data(Copyable & Movable):

	var category_mask : UInt32

	var priority : Int32

	var userdata : UInt32

struct rte_acl_rule(Copyable & Movable):
	var data : rte_acl_rule_data

	var field : UnsafePointer[rte_acl_field] # Failed to parse array size

struct rte_acl_param(Copyable & Movable):

	var name : UnsafePointer[Int8]

	var socket_id : Int32

	var rule_size : UInt32

	var max_rule_num : UInt32

struct rte_acl_ctx(Copyable & Movable):
# # Node: PlaceHolder()
# {"closeName":"","id":"0x21968010","inner":[{"id":"0x21968060","kind":"VerbatimBlockLineComment","loc":{"col":14,"offset":3701,"tokLen":0},"range":{"begin":{"col":14,"offset":3701,"tokLen":0},"end":{"col":33,"offset":3720,"tokLen":1}},"text":" opaque ACL handle "},{"id":"0x21968080","kind":"VerbatimBlockLineComment","loc":{"col":35,"offset":3722,"tokLen":0},"range":{"begin":{"col":35,"offset":3722,"tokLen":0},"end":{"col":35,"offset":3722,"tokLen":0}},"text":""}],"kind":"VerbatimBlockComment","loc":{"col":6,"offset":3693,"tokLen":8},"name":"internal","range":{"begin":{"col":5,"offset":3692,"tokLen":1},"end":{"col":14,"offset":3701,"tokLen":0}}}

	pass
alias rte_acl_free = fn (UnsafePointer[rte_acl_ctx]) -> NoneType
alias rte_acl_create = fn (read UnsafePointer[rte_acl_param]) -> UnsafePointer[rte_acl_ctx]
alias rte_acl_find_existing = fn (read UnsafePointer[Int8]) -> UnsafePointer[rte_acl_ctx]
alias rte_acl_add_rules = fn (UnsafePointer[rte_acl_ctx], read UnsafePointer[rte_acl_rule], ffi.c_ulong) -> Int32
alias rte_acl_reset_rules = fn (UnsafePointer[rte_acl_ctx]) -> NoneType
alias rte_acl_build = fn (UnsafePointer[rte_acl_ctx], read UnsafePointer[rte_acl_config]) -> Int32
alias rte_acl_reset = fn (UnsafePointer[rte_acl_ctx]) -> NoneType
struct rte_acl_classify_alg(Copyable & Movable):

	alias RTE_ACL_CLASSIFY_DEFAULT = 0

	alias RTE_ACL_CLASSIFY_SCALAR = 1

	alias RTE_ACL_CLASSIFY_SSE = 2

	alias RTE_ACL_CLASSIFY_AVX2 = 3

	alias RTE_ACL_CLASSIFY_NEON = 4

	alias RTE_ACL_CLASSIFY_ALTIVEC = 5

	alias RTE_ACL_CLASSIFY_AVX512X16 = 6

	alias RTE_ACL_CLASSIFY_AVX512X32 = 7

alias rte_acl_classify = fn (read UnsafePointer[rte_acl_ctx], read UnsafePointer[UnsafePointer[UInt8]], UnsafePointer[ffi.c_ulong], ffi.c_ulong, ffi.c_ulong) -> Int32
alias rte_acl_set_ctx_classify = fn (UnsafePointer[rte_acl_ctx], rte_acl_classify_alg) -> Int32
alias rte_acl_dump = fn (read UnsafePointer[rte_acl_ctx]) -> NoneType
alias rte_acl_list_dump = fn (NoneType) -> NoneType


alias rte_acl_alloca = ExternalFunction['alloca', alloca]
alias rte_acl_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_acl_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_acl_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_acl_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_acl_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_acl_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_acl_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_acl_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_acl_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_acl_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_acl_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_acl_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_acl_imaxabs = ExternalFunction['imaxabs', imaxabs]
alias rte_acl_imaxdiv = ExternalFunction['imaxdiv', imaxdiv]
alias rte_acl_strtoimax = ExternalFunction['strtoimax', strtoimax]
alias rte_acl_strtoumax = ExternalFunction['strtoumax', strtoumax]
alias rte_acl_wcstoimax = ExternalFunction['wcstoimax', wcstoimax]
alias rte_acl_wcstoumax = ExternalFunction['wcstoumax', wcstoumax]
alias rte_acl_isalnum = ExternalFunction['isalnum', isalnum]
alias rte_acl_isalpha = ExternalFunction['isalpha', isalpha]
alias rte_acl_iscntrl = ExternalFunction['iscntrl', iscntrl]
alias rte_acl_isdigit = ExternalFunction['isdigit', isdigit]
alias rte_acl_islower = ExternalFunction['islower', islower]
alias rte_acl_isgraph = ExternalFunction['isgraph', isgraph]
alias rte_acl_isprint = ExternalFunction['isprint', isprint]
alias rte_acl_ispunct = ExternalFunction['ispunct', ispunct]
alias rte_acl_isspace = ExternalFunction['isspace', isspace]
alias rte_acl_isupper = ExternalFunction['isupper', isupper]
alias rte_acl_isxdigit = ExternalFunction['isxdigit', isxdigit]
alias rte_acl_tolower = ExternalFunction['tolower', tolower]
alias rte_acl_toupper = ExternalFunction['toupper', toupper]
alias rte_acl_isblank = ExternalFunction['isblank', isblank]
alias rte_acl_isascii = ExternalFunction['isascii', isascii]
alias rte_acl_toascii = ExternalFunction['toascii', toascii]
alias rte_acl_isalnum_l = ExternalFunction['isalnum_l', isalnum_l]
alias rte_acl_isalpha_l = ExternalFunction['isalpha_l', isalpha_l]
alias rte_acl_iscntrl_l = ExternalFunction['iscntrl_l', iscntrl_l]
alias rte_acl_isdigit_l = ExternalFunction['isdigit_l', isdigit_l]
alias rte_acl_islower_l = ExternalFunction['islower_l', islower_l]
alias rte_acl_isgraph_l = ExternalFunction['isgraph_l', isgraph_l]
alias rte_acl_isprint_l = ExternalFunction['isprint_l', isprint_l]
alias rte_acl_ispunct_l = ExternalFunction['ispunct_l', ispunct_l]
alias rte_acl_isspace_l = ExternalFunction['isspace_l', isspace_l]
alias rte_acl_isupper_l = ExternalFunction['isupper_l', isupper_l]
alias rte_acl_isxdigit_l = ExternalFunction['isxdigit_l', isxdigit_l]
alias rte_acl_isblank_l = ExternalFunction['isblank_l', isblank_l]
alias rte_acl_tolower_l = ExternalFunction['tolower_l', tolower_l]
alias rte_acl_toupper_l = ExternalFunction['toupper_l', toupper_l]
alias rte_acl_memcpy = ExternalFunction['memcpy', memcpy]
alias rte_acl_memmove = ExternalFunction['memmove', memmove]
alias rte_acl_memccpy = ExternalFunction['memccpy', memccpy]
alias rte_acl_memset = ExternalFunction['memset', memset]
alias rte_acl_memcmp = ExternalFunction['memcmp', memcmp]
alias rte_acl_memchr = ExternalFunction['memchr', memchr]
alias rte_acl_strcpy = ExternalFunction['strcpy', strcpy]
alias rte_acl_strncpy = ExternalFunction['strncpy', strncpy]
alias rte_acl_strcat = ExternalFunction['strcat', strcat]
alias rte_acl_strncat = ExternalFunction['strncat', strncat]
alias rte_acl_strcmp = ExternalFunction['strcmp', strcmp]
alias rte_acl_strncmp = ExternalFunction['strncmp', strncmp]
alias rte_acl_strcoll = ExternalFunction['strcoll', strcoll]
alias rte_acl_strxfrm = ExternalFunction['strxfrm', strxfrm]
alias rte_acl_strcoll_l = ExternalFunction['strcoll_l', strcoll_l]
alias rte_acl_strxfrm_l = ExternalFunction['strxfrm_l', strxfrm_l]
alias rte_acl_strdup = ExternalFunction['strdup', strdup]
alias rte_acl_strndup = ExternalFunction['strndup', strndup]
alias rte_acl_strchr = ExternalFunction['strchr', strchr]
alias rte_acl_strrchr = ExternalFunction['strrchr', strrchr]
alias rte_acl_strcspn = ExternalFunction['strcspn', strcspn]
alias rte_acl_strspn = ExternalFunction['strspn', strspn]
alias rte_acl_strpbrk = ExternalFunction['strpbrk', strpbrk]
alias rte_acl_strstr = ExternalFunction['strstr', strstr]
alias rte_acl_strtok = ExternalFunction['strtok', strtok]
alias rte_acl_strtok_r = ExternalFunction['strtok_r', strtok_r]
alias rte_acl_strlen = ExternalFunction['strlen', strlen]
alias rte_acl_strnlen = ExternalFunction['strnlen', strnlen]
alias rte_acl_strerror = ExternalFunction['strerror', strerror]
alias rte_acl_strerror_r = ExternalFunction['strerror_r', strerror_r]
alias rte_acl_strerror_l = ExternalFunction['strerror_l', strerror_l]
alias rte_acl_bcmp = ExternalFunction['bcmp', bcmp]
alias rte_acl_bcopy = ExternalFunction['bcopy', bcopy]
alias rte_acl_bzero = ExternalFunction['bzero', bzero]
alias rte_acl_index = ExternalFunction['index', index]
alias rte_acl_rindex = ExternalFunction['rindex', rindex]
alias rte_acl_ffs = ExternalFunction['ffs', ffs]
alias rte_acl_ffsl = ExternalFunction['ffsl', ffsl]
alias rte_acl_ffsll = ExternalFunction['ffsll', ffsll]
alias rte_acl_strcasecmp = ExternalFunction['strcasecmp', strcasecmp]
alias rte_acl_strncasecmp = ExternalFunction['strncasecmp', strncasecmp]
alias rte_acl_strcasecmp_l = ExternalFunction['strcasecmp_l', strcasecmp_l]
alias rte_acl_strncasecmp_l = ExternalFunction['strncasecmp_l', strncasecmp_l]
alias rte_acl_explicit_bzero = ExternalFunction['explicit_bzero', explicit_bzero]
alias rte_acl_strsep = ExternalFunction['strsep', strsep]
alias rte_acl_strsignal = ExternalFunction['strsignal', strsignal]
alias rte_acl_stpcpy = ExternalFunction['stpcpy', stpcpy]
alias rte_acl_stpncpy = ExternalFunction['stpncpy', stpncpy]
alias rte_acl_remove = ExternalFunction['remove', remove]
alias rte_acl_rename = ExternalFunction['rename', rename]
alias rte_acl_renameat = ExternalFunction['renameat', renameat]
alias rte_acl_fclose = ExternalFunction['fclose', fclose]
alias rte_acl_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias rte_acl_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias rte_acl_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias rte_acl_tempnam = ExternalFunction['tempnam', tempnam]
alias rte_acl_fflush = ExternalFunction['fflush', fflush]
alias rte_acl_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias rte_acl_fopen = ExternalFunction['fopen', fopen]
alias rte_acl_freopen = ExternalFunction['freopen', freopen]
alias rte_acl_fdopen = ExternalFunction['fdopen', fdopen]
alias rte_acl_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias rte_acl_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias rte_acl_setbuf = ExternalFunction['setbuf', setbuf]
alias rte_acl_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias rte_acl_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias rte_acl_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias rte_acl_fprintf = ExternalFunction['fprintf', fprintf]
alias rte_acl_printf = ExternalFunction['printf', printf]
alias rte_acl_sprintf = ExternalFunction['sprintf', sprintf]
alias rte_acl_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias rte_acl_vprintf = ExternalFunction['vprintf', vprintf]
alias rte_acl_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias rte_acl_snprintf = ExternalFunction['snprintf', snprintf]
alias rte_acl_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias rte_acl_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias rte_acl_dprintf = ExternalFunction['dprintf', dprintf]
alias rte_acl_fscanf = ExternalFunction['fscanf', fscanf]
alias rte_acl_scanf = ExternalFunction['scanf', scanf]
alias rte_acl_sscanf = ExternalFunction['sscanf', sscanf]
alias rte_acl_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias rte_acl_vscanf = ExternalFunction['vscanf', vscanf]
alias rte_acl_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias rte_acl_fgetc = ExternalFunction['fgetc', fgetc]
alias rte_acl_getc = ExternalFunction['getc', getc]
alias rte_acl_getchar = ExternalFunction['getchar', getchar]
alias rte_acl_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias rte_acl_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias rte_acl_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias rte_acl_fputc = ExternalFunction['fputc', fputc]
alias rte_acl_putc = ExternalFunction['putc', putc]
alias rte_acl_putchar = ExternalFunction['putchar', putchar]
alias rte_acl_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias rte_acl_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias rte_acl_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias rte_acl_getw = ExternalFunction['getw', getw]
alias rte_acl_putw = ExternalFunction['putw', putw]
alias rte_acl_fgets = ExternalFunction['fgets', fgets]
alias rte_acl_getdelim = ExternalFunction['getdelim', getdelim]
alias rte_acl_getline = ExternalFunction['getline', getline]
alias rte_acl_fputs = ExternalFunction['fputs', fputs]
alias rte_acl_puts = ExternalFunction['puts', puts]
alias rte_acl_ungetc = ExternalFunction['ungetc', ungetc]
alias rte_acl_fread = ExternalFunction['fread', fread]
alias rte_acl_fwrite = ExternalFunction['fwrite', fwrite]
alias rte_acl_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias rte_acl_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias rte_acl_fseek = ExternalFunction['fseek', fseek]
alias rte_acl_ftell = ExternalFunction['ftell', ftell]
alias rte_acl_rewind = ExternalFunction['rewind', rewind]
alias rte_acl_fseeko = ExternalFunction['fseeko', fseeko]
alias rte_acl_ftello = ExternalFunction['ftello', ftello]
alias rte_acl_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias rte_acl_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias rte_acl_clearerr = ExternalFunction['clearerr', clearerr]
alias rte_acl_feof = ExternalFunction['feof', feof]
alias rte_acl_ferror = ExternalFunction['ferror', ferror]
alias rte_acl_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias rte_acl_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias rte_acl_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias rte_acl_perror = ExternalFunction['perror', perror]
alias rte_acl_fileno = ExternalFunction['fileno', fileno]
alias rte_acl_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias rte_acl_pclose = ExternalFunction['pclose', pclose]
alias rte_acl_popen = ExternalFunction['popen', popen]
alias rte_acl_ctermid = ExternalFunction['ctermid', ctermid]
alias rte_acl_flockfile = ExternalFunction['flockfile', flockfile]
alias rte_acl_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias rte_acl_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias rte_acl_atof = ExternalFunction['atof', atof]
alias rte_acl_atoi = ExternalFunction['atoi', atoi]
alias rte_acl_atol = ExternalFunction['atol', atol]
alias rte_acl_atoll = ExternalFunction['atoll', atoll]
alias rte_acl_strtod = ExternalFunction['strtod', strtod]
alias rte_acl_strtof = ExternalFunction['strtof', strtof]
alias rte_acl_strtold = ExternalFunction['strtold', strtold]
alias rte_acl_strtol = ExternalFunction['strtol', strtol]
alias rte_acl_strtoul = ExternalFunction['strtoul', strtoul]
alias rte_acl_strtoq = ExternalFunction['strtoq', strtoq]
alias rte_acl_strtouq = ExternalFunction['strtouq', strtouq]
alias rte_acl_strtoll = ExternalFunction['strtoll', strtoll]
alias rte_acl_strtoull = ExternalFunction['strtoull', strtoull]
alias rte_acl_l64a = ExternalFunction['l64a', l64a]
alias rte_acl_a64l = ExternalFunction['a64l', a64l]
alias rte_acl_select = ExternalFunction['select', select]
alias rte_acl_pselect = ExternalFunction['pselect', pselect]
alias rte_acl_random = ExternalFunction['random', random]
alias rte_acl_srandom = ExternalFunction['srandom', srandom]
alias rte_acl_initstate = ExternalFunction['initstate', initstate]
alias rte_acl_setstate = ExternalFunction['setstate', setstate]
alias rte_acl_random_r = ExternalFunction['random_r', random_r]
alias rte_acl_srandom_r = ExternalFunction['srandom_r', srandom_r]
alias rte_acl_initstate_r = ExternalFunction['initstate_r', initstate_r]
alias rte_acl_setstate_r = ExternalFunction['setstate_r', setstate_r]
alias rte_acl_rand = ExternalFunction['rand', rand]
alias rte_acl_srand = ExternalFunction['srand', srand]
alias rte_acl_rand_r = ExternalFunction['rand_r', rand_r]
alias rte_acl_drand48 = ExternalFunction['drand48', drand48]
alias rte_acl_erand48 = ExternalFunction['erand48', erand48]
alias rte_acl_lrand48 = ExternalFunction['lrand48', lrand48]
alias rte_acl_nrand48 = ExternalFunction['nrand48', nrand48]
alias rte_acl_mrand48 = ExternalFunction['mrand48', mrand48]
alias rte_acl_jrand48 = ExternalFunction['jrand48', jrand48]
alias rte_acl_srand48 = ExternalFunction['srand48', srand48]
alias rte_acl_seed48 = ExternalFunction['seed48', seed48]
alias rte_acl_lcong48 = ExternalFunction['lcong48', lcong48]
alias rte_acl_drand48_r = ExternalFunction['drand48_r', drand48_r]
alias rte_acl_erand48_r = ExternalFunction['erand48_r', erand48_r]
alias rte_acl_lrand48_r = ExternalFunction['lrand48_r', lrand48_r]
alias rte_acl_nrand48_r = ExternalFunction['nrand48_r', nrand48_r]
alias rte_acl_mrand48_r = ExternalFunction['mrand48_r', mrand48_r]
alias rte_acl_jrand48_r = ExternalFunction['jrand48_r', jrand48_r]
alias rte_acl_srand48_r = ExternalFunction['srand48_r', srand48_r]
alias rte_acl_seed48_r = ExternalFunction['seed48_r', seed48_r]
alias rte_acl_lcong48_r = ExternalFunction['lcong48_r', lcong48_r]
alias rte_acl_malloc = ExternalFunction['malloc', malloc]
alias rte_acl_calloc = ExternalFunction['calloc', calloc]
alias rte_acl_realloc = ExternalFunction['realloc', realloc]
alias rte_acl_free = ExternalFunction['free', free]
alias rte_acl_reallocarray = ExternalFunction['reallocarray', reallocarray]
alias rte_acl_valloc = ExternalFunction['valloc', valloc]
alias rte_acl_posix_memalign = ExternalFunction['posix_memalign', posix_memalign]
alias rte_acl_aligned_alloc = ExternalFunction['aligned_alloc', aligned_alloc]
alias rte_acl_atexit = ExternalFunction['atexit', atexit]
alias rte_acl_at_quick_exit = ExternalFunction['at_quick_exit', at_quick_exit]
alias rte_acl_on_exit = ExternalFunction['on_exit', on_exit]
alias rte_acl_exit = ExternalFunction['exit', exit]
alias rte_acl_quick_exit = ExternalFunction['quick_exit', quick_exit]
alias rte_acl_putenv = ExternalFunction['putenv', putenv]
alias rte_acl_unsetenv = ExternalFunction['unsetenv', unsetenv]
alias rte_acl_clearenv = ExternalFunction['clearenv', clearenv]
alias rte_acl_mktemp = ExternalFunction['mktemp', mktemp]
alias rte_acl_mkstemp = ExternalFunction['mkstemp', mkstemp]
alias rte_acl_mkstemps = ExternalFunction['mkstemps', mkstemps]
alias rte_acl_mkdtemp = ExternalFunction['mkdtemp', mkdtemp]
alias rte_acl_system = ExternalFunction['system', system]
alias rte_acl_realpath = ExternalFunction['realpath', realpath]
alias rte_acl_bsearch = ExternalFunction['bsearch', bsearch]
alias rte_acl_qsort = ExternalFunction['qsort', qsort]
alias rte_acl_abs = ExternalFunction['abs', abs]
alias rte_acl_labs = ExternalFunction['labs', labs]
alias rte_acl_llabs = ExternalFunction['llabs', llabs]
alias rte_acl_div = ExternalFunction['div', div]
alias rte_acl_ldiv = ExternalFunction['ldiv', ldiv]
alias rte_acl_lldiv = ExternalFunction['lldiv', lldiv]
alias rte_acl_ecvt = ExternalFunction['ecvt', ecvt]
alias rte_acl_fcvt = ExternalFunction['fcvt', fcvt]
alias rte_acl_gcvt = ExternalFunction['gcvt', gcvt]
alias rte_acl_qecvt = ExternalFunction['qecvt', qecvt]
alias rte_acl_qfcvt = ExternalFunction['qfcvt', qfcvt]
alias rte_acl_qgcvt = ExternalFunction['qgcvt', qgcvt]
alias rte_acl_ecvt_r = ExternalFunction['ecvt_r', ecvt_r]
alias rte_acl_fcvt_r = ExternalFunction['fcvt_r', fcvt_r]
alias rte_acl_qecvt_r = ExternalFunction['qecvt_r', qecvt_r]
alias rte_acl_qfcvt_r = ExternalFunction['qfcvt_r', qfcvt_r]
alias rte_acl_mblen = ExternalFunction['mblen', mblen]
alias rte_acl_mbtowc = ExternalFunction['mbtowc', mbtowc]
alias rte_acl_wctomb = ExternalFunction['wctomb', wctomb]
alias rte_acl_mbstowcs = ExternalFunction['mbstowcs', mbstowcs]
alias rte_acl_wcstombs = ExternalFunction['wcstombs', wcstombs]
alias rte_acl_rpmatch = ExternalFunction['rpmatch', rpmatch]
alias rte_acl_getsubopt = ExternalFunction['getsubopt', getsubopt]
alias rte_acl_getloadavg = ExternalFunction['getloadavg', getloadavg]
alias rte_acl_rte_dump_stack = ExternalFunction['rte_dump_stack', rte_dump_stack]
alias rte_acl_rte_bit_relaxed_get32 = ExternalFunction['rte_bit_relaxed_get32', rte_bit_relaxed_get32]
alias rte_acl_rte_bit_relaxed_set32 = ExternalFunction['rte_bit_relaxed_set32', rte_bit_relaxed_set32]
alias rte_acl_rte_bit_relaxed_clear32 = ExternalFunction['rte_bit_relaxed_clear32', rte_bit_relaxed_clear32]
alias rte_acl_rte_bit_relaxed_test_and_set32 = ExternalFunction['rte_bit_relaxed_test_and_set32', rte_bit_relaxed_test_and_set32]
alias rte_acl_rte_bit_relaxed_test_and_clear32 = ExternalFunction['rte_bit_relaxed_test_and_clear32', rte_bit_relaxed_test_and_clear32]
alias rte_acl_rte_bit_relaxed_get64 = ExternalFunction['rte_bit_relaxed_get64', rte_bit_relaxed_get64]
alias rte_acl_rte_bit_relaxed_set64 = ExternalFunction['rte_bit_relaxed_set64', rte_bit_relaxed_set64]
alias rte_acl_rte_bit_relaxed_clear64 = ExternalFunction['rte_bit_relaxed_clear64', rte_bit_relaxed_clear64]
alias rte_acl_rte_bit_relaxed_test_and_set64 = ExternalFunction['rte_bit_relaxed_test_and_set64', rte_bit_relaxed_test_and_set64]
alias rte_acl_rte_bit_relaxed_test_and_clear64 = ExternalFunction['rte_bit_relaxed_test_and_clear64', rte_bit_relaxed_test_and_clear64]
alias rte_acl_rte_clz32 = ExternalFunction['rte_clz32', rte_clz32]
alias rte_acl_rte_clz64 = ExternalFunction['rte_clz64', rte_clz64]
alias rte_acl_rte_ctz32 = ExternalFunction['rte_ctz32', rte_ctz32]
alias rte_acl_rte_ctz64 = ExternalFunction['rte_ctz64', rte_ctz64]
alias rte_acl_rte_popcount32 = ExternalFunction['rte_popcount32', rte_popcount32]
alias rte_acl_rte_popcount64 = ExternalFunction['rte_popcount64', rte_popcount64]
alias rte_acl_rte_ffs32 = ExternalFunction['rte_ffs32', rte_ffs32]
alias rte_acl_rte_ffs64 = ExternalFunction['rte_ffs64', rte_ffs64]
alias rte_acl_rte_combine32ms1b = ExternalFunction['rte_combine32ms1b', rte_combine32ms1b]
alias rte_acl_rte_combine64ms1b = ExternalFunction['rte_combine64ms1b', rte_combine64ms1b]
alias rte_acl_rte_bsf32 = ExternalFunction['rte_bsf32', rte_bsf32]
alias rte_acl_rte_bsf32_safe = ExternalFunction['rte_bsf32_safe', rte_bsf32_safe]
alias rte_acl_rte_bsf64 = ExternalFunction['rte_bsf64', rte_bsf64]
alias rte_acl_rte_bsf64_safe = ExternalFunction['rte_bsf64_safe', rte_bsf64_safe]
alias rte_acl_rte_fls_u32 = ExternalFunction['rte_fls_u32', rte_fls_u32]
alias rte_acl_rte_fls_u64 = ExternalFunction['rte_fls_u64', rte_fls_u64]
alias rte_acl_rte_is_power_of_2 = ExternalFunction['rte_is_power_of_2', rte_is_power_of_2]
alias rte_acl_rte_align32pow2 = ExternalFunction['rte_align32pow2', rte_align32pow2]
alias rte_acl_rte_align32prevpow2 = ExternalFunction['rte_align32prevpow2', rte_align32prevpow2]
alias rte_acl_rte_align64pow2 = ExternalFunction['rte_align64pow2', rte_align64pow2]
alias rte_acl_rte_align64prevpow2 = ExternalFunction['rte_align64prevpow2', rte_align64prevpow2]
alias rte_acl_rte_log2_u32 = ExternalFunction['rte_log2_u32', rte_log2_u32]
alias rte_acl_rte_log2_u64 = ExternalFunction['rte_log2_u64', rte_log2_u64]
alias rte_acl_rte_mcfg_mem_get_lock = ExternalFunction['rte_mcfg_mem_get_lock', rte_mcfg_mem_get_lock]
alias rte_acl_rte_mcfg_tailq_get_lock = ExternalFunction['rte_mcfg_tailq_get_lock', rte_mcfg_tailq_get_lock]
alias rte_acl_rte_mcfg_mempool_get_lock = ExternalFunction['rte_mcfg_mempool_get_lock', rte_mcfg_mempool_get_lock]
alias rte_acl_rte_mcfg_timer_get_lock = ExternalFunction['rte_mcfg_timer_get_lock', rte_mcfg_timer_get_lock]
alias rte_acl_rte_mcfg_ethdev_get_lock = ExternalFunction['rte_mcfg_ethdev_get_lock', rte_mcfg_ethdev_get_lock]
alias rte_acl_rte_mcfg_get_single_file_segments = ExternalFunction['rte_mcfg_get_single_file_segments', rte_mcfg_get_single_file_segments]
alias rte_acl_rte_fbarray_init = ExternalFunction['rte_fbarray_init', rte_fbarray_init]
alias rte_acl_rte_fbarray_attach = ExternalFunction['rte_fbarray_attach', rte_fbarray_attach]
alias rte_acl_rte_fbarray_destroy = ExternalFunction['rte_fbarray_destroy', rte_fbarray_destroy]
alias rte_acl_rte_fbarray_detach = ExternalFunction['rte_fbarray_detach', rte_fbarray_detach]
alias rte_acl_rte_fbarray_get = ExternalFunction['rte_fbarray_get', rte_fbarray_get]
alias rte_acl_rte_fbarray_find_idx = ExternalFunction['rte_fbarray_find_idx', rte_fbarray_find_idx]
alias rte_acl_rte_fbarray_set_used = ExternalFunction['rte_fbarray_set_used', rte_fbarray_set_used]
alias rte_acl_rte_fbarray_set_free = ExternalFunction['rte_fbarray_set_free', rte_fbarray_set_free]
alias rte_acl_rte_fbarray_is_used = ExternalFunction['rte_fbarray_is_used', rte_fbarray_is_used]
alias rte_acl_rte_fbarray_find_next_free = ExternalFunction['rte_fbarray_find_next_free', rte_fbarray_find_next_free]
alias rte_acl_rte_fbarray_find_next_used = ExternalFunction['rte_fbarray_find_next_used', rte_fbarray_find_next_used]
alias rte_acl_rte_fbarray_find_next_n_free = ExternalFunction['rte_fbarray_find_next_n_free', rte_fbarray_find_next_n_free]
alias rte_acl_rte_fbarray_find_next_n_used = ExternalFunction['rte_fbarray_find_next_n_used', rte_fbarray_find_next_n_used]
alias rte_acl_rte_fbarray_find_contig_free = ExternalFunction['rte_fbarray_find_contig_free', rte_fbarray_find_contig_free]
alias rte_acl_rte_fbarray_find_contig_used = ExternalFunction['rte_fbarray_find_contig_used', rte_fbarray_find_contig_used]
alias rte_acl_rte_fbarray_find_prev_free = ExternalFunction['rte_fbarray_find_prev_free', rte_fbarray_find_prev_free]
alias rte_acl_rte_fbarray_find_prev_used = ExternalFunction['rte_fbarray_find_prev_used', rte_fbarray_find_prev_used]
alias rte_acl_rte_fbarray_find_prev_n_free = ExternalFunction['rte_fbarray_find_prev_n_free', rte_fbarray_find_prev_n_free]
alias rte_acl_rte_fbarray_find_prev_n_used = ExternalFunction['rte_fbarray_find_prev_n_used', rte_fbarray_find_prev_n_used]
alias rte_acl_rte_fbarray_find_rev_contig_free = ExternalFunction['rte_fbarray_find_rev_contig_free', rte_fbarray_find_rev_contig_free]
alias rte_acl_rte_fbarray_find_rev_contig_used = ExternalFunction['rte_fbarray_find_rev_contig_used', rte_fbarray_find_rev_contig_used]
alias rte_acl_rte_fbarray_find_biggest_free = ExternalFunction['rte_fbarray_find_biggest_free', rte_fbarray_find_biggest_free]
alias rte_acl_rte_fbarray_find_biggest_used = ExternalFunction['rte_fbarray_find_biggest_used', rte_fbarray_find_biggest_used]
alias rte_acl_rte_fbarray_find_rev_biggest_free = ExternalFunction['rte_fbarray_find_rev_biggest_free', rte_fbarray_find_rev_biggest_free]
alias rte_acl_rte_fbarray_find_rev_biggest_used = ExternalFunction['rte_fbarray_find_rev_biggest_used', rte_fbarray_find_rev_biggest_used]
alias rte_acl_rte_fbarray_dump_metadata = ExternalFunction['rte_fbarray_dump_metadata', rte_fbarray_dump_metadata]
alias rte_acl_rte_mem_lock_page = ExternalFunction['rte_mem_lock_page', rte_mem_lock_page]
alias rte_acl_rte_mem_virt2phy = ExternalFunction['rte_mem_virt2phy', rte_mem_virt2phy]
alias rte_acl_rte_mem_virt2iova = ExternalFunction['rte_mem_virt2iova', rte_mem_virt2iova]
alias rte_acl_rte_mem_iova2virt = ExternalFunction['rte_mem_iova2virt', rte_mem_iova2virt]
alias rte_acl_rte_mem_virt2memseg = ExternalFunction['rte_mem_virt2memseg', rte_mem_virt2memseg]
alias rte_acl_rte_mem_virt2memseg_list = ExternalFunction['rte_mem_virt2memseg_list', rte_mem_virt2memseg_list]
alias rte_acl_rte_memseg_walk = ExternalFunction['rte_memseg_walk', rte_memseg_walk]
alias rte_acl_rte_memseg_contig_walk = ExternalFunction['rte_memseg_contig_walk', rte_memseg_contig_walk]
alias rte_acl_rte_memseg_walk_thread_unsafe = ExternalFunction['rte_memseg_walk_thread_unsafe', rte_memseg_walk_thread_unsafe]
alias rte_acl_rte_memseg_contig_walk_thread_unsafe = ExternalFunction['rte_memseg_contig_walk_thread_unsafe', rte_memseg_contig_walk_thread_unsafe]
alias rte_acl_rte_memseg_list_walk_thread_unsafe = ExternalFunction['rte_memseg_list_walk_thread_unsafe', rte_memseg_list_walk_thread_unsafe]
alias rte_acl_rte_memseg_get_fd = ExternalFunction['rte_memseg_get_fd', rte_memseg_get_fd]
alias rte_acl_rte_memseg_get_fd_thread_unsafe = ExternalFunction['rte_memseg_get_fd_thread_unsafe', rte_memseg_get_fd_thread_unsafe]
alias rte_acl_rte_memseg_get_fd_offset = ExternalFunction['rte_memseg_get_fd_offset', rte_memseg_get_fd_offset]
alias rte_acl_rte_memseg_get_fd_offset_thread_unsafe = ExternalFunction['rte_memseg_get_fd_offset_thread_unsafe', rte_memseg_get_fd_offset_thread_unsafe]
alias rte_acl_rte_extmem_register = ExternalFunction['rte_extmem_register', rte_extmem_register]
alias rte_acl_rte_extmem_unregister = ExternalFunction['rte_extmem_unregister', rte_extmem_unregister]
alias rte_acl_rte_extmem_attach = ExternalFunction['rte_extmem_attach', rte_extmem_attach]
alias rte_acl_rte_extmem_detach = ExternalFunction['rte_extmem_detach', rte_extmem_detach]
alias rte_acl_rte_dump_physmem_layout = ExternalFunction['rte_dump_physmem_layout', rte_dump_physmem_layout]
alias rte_acl_rte_eal_get_physmem_size = ExternalFunction['rte_eal_get_physmem_size', rte_eal_get_physmem_size]
alias rte_acl_rte_memory_get_nchannel = ExternalFunction['rte_memory_get_nchannel', rte_memory_get_nchannel]
alias rte_acl_rte_memory_get_nrank = ExternalFunction['rte_memory_get_nrank', rte_memory_get_nrank]
alias rte_acl_rte_mem_check_dma_mask = ExternalFunction['rte_mem_check_dma_mask', rte_mem_check_dma_mask]
alias rte_acl_rte_mem_check_dma_mask_thread_unsafe = ExternalFunction['rte_mem_check_dma_mask_thread_unsafe', rte_mem_check_dma_mask_thread_unsafe]
alias rte_acl_rte_mem_set_dma_mask = ExternalFunction['rte_mem_set_dma_mask', rte_mem_set_dma_mask]
alias rte_acl_rte_eal_using_phys_addrs = ExternalFunction['rte_eal_using_phys_addrs', rte_eal_using_phys_addrs]
alias rte_acl_rte_mem_event_callback_register = ExternalFunction['rte_mem_event_callback_register', rte_mem_event_callback_register]
alias rte_acl_rte_mem_event_callback_unregister = ExternalFunction['rte_mem_event_callback_unregister', rte_mem_event_callback_unregister]
alias rte_acl_rte_mem_alloc_validator_register = ExternalFunction['rte_mem_alloc_validator_register', rte_mem_alloc_validator_register]
alias rte_acl_rte_mem_alloc_validator_unregister = ExternalFunction['rte_mem_alloc_validator_unregister', rte_mem_alloc_validator_unregister]
alias rte_acl_rte_memzero_explicit = ExternalFunction['rte_memzero_explicit', rte_memzero_explicit]
alias rte_acl_rte_free = ExternalFunction['rte_free', rte_free]
alias rte_acl_rte_free_sensitive = ExternalFunction['rte_free_sensitive', rte_free_sensitive]
alias rte_acl_rte_malloc = ExternalFunction['rte_malloc', rte_malloc]
alias rte_acl_rte_zmalloc = ExternalFunction['rte_zmalloc', rte_zmalloc]
alias rte_acl_rte_calloc = ExternalFunction['rte_calloc', rte_calloc]
alias rte_acl_rte_realloc = ExternalFunction['rte_realloc', rte_realloc]
alias rte_acl_rte_realloc_socket = ExternalFunction['rte_realloc_socket', rte_realloc_socket]
alias rte_acl_rte_malloc_socket = ExternalFunction['rte_malloc_socket', rte_malloc_socket]
alias rte_acl_rte_zmalloc_socket = ExternalFunction['rte_zmalloc_socket', rte_zmalloc_socket]
alias rte_acl_rte_calloc_socket = ExternalFunction['rte_calloc_socket', rte_calloc_socket]
alias rte_acl_rte_malloc_validate = ExternalFunction['rte_malloc_validate', rte_malloc_validate]
alias rte_acl_rte_malloc_get_socket_stats = ExternalFunction['rte_malloc_get_socket_stats', rte_malloc_get_socket_stats]
alias rte_acl_rte_malloc_heap_memory_add = ExternalFunction['rte_malloc_heap_memory_add', rte_malloc_heap_memory_add]
alias rte_acl_rte_malloc_heap_memory_remove = ExternalFunction['rte_malloc_heap_memory_remove', rte_malloc_heap_memory_remove]
alias rte_acl_rte_malloc_heap_memory_attach = ExternalFunction['rte_malloc_heap_memory_attach', rte_malloc_heap_memory_attach]
alias rte_acl_rte_malloc_heap_memory_detach = ExternalFunction['rte_malloc_heap_memory_detach', rte_malloc_heap_memory_detach]
alias rte_acl_rte_malloc_heap_create = ExternalFunction['rte_malloc_heap_create', rte_malloc_heap_create]
alias rte_acl_rte_malloc_heap_destroy = ExternalFunction['rte_malloc_heap_destroy', rte_malloc_heap_destroy]
alias rte_acl_rte_malloc_heap_get_socket = ExternalFunction['rte_malloc_heap_get_socket', rte_malloc_heap_get_socket]
alias rte_acl_rte_malloc_heap_socket_is_external = ExternalFunction['rte_malloc_heap_socket_is_external', rte_malloc_heap_socket_is_external]
alias rte_acl_rte_malloc_dump_stats = ExternalFunction['rte_malloc_dump_stats', rte_malloc_dump_stats]
alias rte_acl_rte_malloc_dump_heaps = ExternalFunction['rte_malloc_dump_heaps', rte_malloc_dump_heaps]
alias rte_acl_rte_malloc_virt2iova = ExternalFunction['rte_malloc_virt2iova', rte_malloc_virt2iova]
alias rte_acl_clock = ExternalFunction['clock', clock]
alias rte_acl_time = ExternalFunction['time', time]
alias rte_acl_difftime = ExternalFunction['difftime', difftime]
alias rte_acl_mktime = ExternalFunction['mktime', mktime]
alias rte_acl_strftime = ExternalFunction['strftime', strftime]
alias rte_acl_strftime_l = ExternalFunction['strftime_l', strftime_l]
alias rte_acl_gmtime = ExternalFunction['gmtime', gmtime]
alias rte_acl_localtime = ExternalFunction['localtime', localtime]
alias rte_acl_gmtime_r = ExternalFunction['gmtime_r', gmtime_r]
alias rte_acl_localtime_r = ExternalFunction['localtime_r', localtime_r]
alias rte_acl_asctime = ExternalFunction['asctime', asctime]
alias rte_acl_ctime = ExternalFunction['ctime', ctime]
alias rte_acl_asctime_r = ExternalFunction['asctime_r', asctime_r]
alias rte_acl_ctime_r = ExternalFunction['ctime_r', ctime_r]
alias rte_acl_tzset = ExternalFunction['tzset', tzset]
alias rte_acl_timegm = ExternalFunction['timegm', timegm]
alias rte_acl_timelocal = ExternalFunction['timelocal', timelocal]
alias rte_acl_dysize = ExternalFunction['dysize', dysize]
alias rte_acl_nanosleep = ExternalFunction['nanosleep', nanosleep]
alias rte_acl_clock_getres = ExternalFunction['clock_getres', clock_getres]
alias rte_acl_clock_gettime = ExternalFunction['clock_gettime', clock_gettime]
alias rte_acl_clock_settime = ExternalFunction['clock_settime', clock_settime]
alias rte_acl_clock_nanosleep = ExternalFunction['clock_nanosleep', clock_nanosleep]
alias rte_acl_clock_getcpuclockid = ExternalFunction['clock_getcpuclockid', clock_getcpuclockid]
alias rte_acl_timer_create = ExternalFunction['timer_create', timer_create]
alias rte_acl_timer_delete = ExternalFunction['timer_delete', timer_delete]
alias rte_acl_timer_settime = ExternalFunction['timer_settime', timer_settime]
alias rte_acl_timer_gettime = ExternalFunction['timer_gettime', timer_gettime]
alias rte_acl_timer_getoverrun = ExternalFunction['timer_getoverrun', timer_getoverrun]
alias rte_acl_timespec_get = ExternalFunction['timespec_get', timespec_get]
alias rte_acl_rte_uuid_is_null = ExternalFunction['rte_uuid_is_null', rte_uuid_is_null]
alias rte_acl_rte_uuid_copy = ExternalFunction['rte_uuid_copy', rte_uuid_copy]
alias rte_acl_rte_uuid_compare = ExternalFunction['rte_uuid_compare', rte_uuid_compare]
alias rte_acl_rte_uuid_parse = ExternalFunction['rte_uuid_parse', rte_uuid_parse]
alias rte_acl_rte_uuid_unparse = ExternalFunction['rte_uuid_unparse', rte_uuid_unparse]
alias rte_acl_rte_eal_process_type = ExternalFunction['rte_eal_process_type', rte_eal_process_type]
alias rte_acl_rte_eal_iopl_init = ExternalFunction['rte_eal_iopl_init', rte_eal_iopl_init]
alias rte_acl_rte_eal_init = ExternalFunction['rte_eal_init', rte_eal_init]
alias rte_acl_rte_eal_cleanup = ExternalFunction['rte_eal_cleanup', rte_eal_cleanup]
alias rte_acl_rte_eal_primary_proc_alive = ExternalFunction['rte_eal_primary_proc_alive', rte_eal_primary_proc_alive]
alias rte_acl_rte_mp_disable = ExternalFunction['rte_mp_disable', rte_mp_disable]
alias rte_acl_rte_mp_action_register = ExternalFunction['rte_mp_action_register', rte_mp_action_register]
alias rte_acl_rte_mp_action_unregister = ExternalFunction['rte_mp_action_unregister', rte_mp_action_unregister]
alias rte_acl_rte_mp_sendmsg = ExternalFunction['rte_mp_sendmsg', rte_mp_sendmsg]
alias rte_acl_rte_mp_request_sync = ExternalFunction['rte_mp_request_sync', rte_mp_request_sync]
alias rte_acl_rte_mp_request_async = ExternalFunction['rte_mp_request_async', rte_mp_request_async]
alias rte_acl_rte_set_application_usage_hook = ExternalFunction['rte_set_application_usage_hook', rte_set_application_usage_hook]
alias rte_acl_rte_eal_has_hugepages = ExternalFunction['rte_eal_has_hugepages', rte_eal_has_hugepages]
alias rte_acl_rte_eal_has_pci = ExternalFunction['rte_eal_has_pci', rte_eal_has_pci]
alias rte_acl_rte_eal_create_uio_dev = ExternalFunction['rte_eal_create_uio_dev', rte_eal_create_uio_dev]
alias rte_acl_rte_eal_vfio_intr_mode = ExternalFunction['rte_eal_vfio_intr_mode', rte_eal_vfio_intr_mode]
alias rte_acl_rte_eal_vfio_get_vf_token = ExternalFunction['rte_eal_vfio_get_vf_token', rte_eal_vfio_get_vf_token]
alias rte_acl_rte_sys_gettid = ExternalFunction['rte_sys_gettid', rte_sys_gettid]
alias rte_acl_rte_gettid = ExternalFunction['rte_gettid', rte_gettid]
alias rte_acl_rte_eal_get_baseaddr = ExternalFunction['rte_eal_get_baseaddr', rte_eal_get_baseaddr]
alias rte_acl_rte_eal_iova_mode = ExternalFunction['rte_eal_iova_mode', rte_eal_iova_mode]
alias rte_acl_rte_eal_mbuf_user_pool_ops = ExternalFunction['rte_eal_mbuf_user_pool_ops', rte_eal_mbuf_user_pool_ops]
alias rte_acl_rte_eal_get_runtime_dir = ExternalFunction['rte_eal_get_runtime_dir', rte_eal_get_runtime_dir]
alias rte_acl_rte_eal_parse_coremask = ExternalFunction['rte_eal_parse_coremask', rte_eal_parse_coremask]
alias rte_acl_rte_strerror = ExternalFunction['rte_strerror', rte_strerror]
alias rte_acl_rte_strsplit = ExternalFunction['rte_strsplit', rte_strsplit]
alias rte_acl_rte_strlcpy = ExternalFunction['rte_strlcpy', rte_strlcpy]
alias rte_acl_rte_strlcat = ExternalFunction['rte_strlcat', rte_strlcat]
alias rte_acl_rte_strscpy = ExternalFunction['rte_strscpy', rte_strscpy]
alias rte_acl_rte_str_skip_leading_spaces = ExternalFunction['rte_str_skip_leading_spaces', rte_str_skip_leading_spaces]
alias rte_acl_rte_acl_free = ExternalFunction['rte_acl_free', rte_acl_free]
alias rte_acl_rte_acl_create = ExternalFunction['rte_acl_create', rte_acl_create]
alias rte_acl_rte_acl_find_existing = ExternalFunction['rte_acl_find_existing', rte_acl_find_existing]
alias rte_acl_rte_acl_add_rules = ExternalFunction['rte_acl_add_rules', rte_acl_add_rules]
alias rte_acl_rte_acl_reset_rules = ExternalFunction['rte_acl_reset_rules', rte_acl_reset_rules]
alias rte_acl_rte_acl_build = ExternalFunction['rte_acl_build', rte_acl_build]
alias rte_acl_rte_acl_reset = ExternalFunction['rte_acl_reset', rte_acl_reset]
alias rte_acl_rte_acl_classify = ExternalFunction['rte_acl_classify', rte_acl_classify]
alias rte_acl_rte_acl_set_ctx_classify = ExternalFunction['rte_acl_set_ctx_classify', rte_acl_set_ctx_classify]
alias rte_acl_rte_acl_dump = ExternalFunction['rte_acl_dump', rte_acl_dump]
alias rte_acl_rte_acl_list_dump = ExternalFunction['rte_acl_list_dump', rte_acl_list_dump]

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
struct rte_acl(Copyable, Movable):
    var lib: DLHandle
    
    var alloca: rte_acl_alloca.type
    var sched_setparam: rte_acl_sched_setparam.type
    var sched_getparam: rte_acl_sched_getparam.type
    var sched_setscheduler: rte_acl_sched_setscheduler.type
    var sched_getscheduler: rte_acl_sched_getscheduler.type
    var sched_yield: rte_acl_sched_yield.type
    var sched_get_priority_max: rte_acl_sched_get_priority_max.type
    var sched_get_priority_min: rte_acl_sched_get_priority_min.type
    var sched_rr_get_interval: rte_acl_sched_rr_get_interval.type
    var rte_is_aligned: rte_acl_rte_is_aligned.type
    var rte_str_to_size: rte_acl_rte_str_to_size.type
    var rte_size_to_str: rte_acl_rte_size_to_str.type
    var rte_exit: rte_acl_rte_exit.type
    var imaxabs: rte_acl_imaxabs.type
    var imaxdiv: rte_acl_imaxdiv.type
    var strtoimax: rte_acl_strtoimax.type
    var strtoumax: rte_acl_strtoumax.type
    var wcstoimax: rte_acl_wcstoimax.type
    var wcstoumax: rte_acl_wcstoumax.type
    var isalnum: rte_acl_isalnum.type
    var isalpha: rte_acl_isalpha.type
    var iscntrl: rte_acl_iscntrl.type
    var isdigit: rte_acl_isdigit.type
    var islower: rte_acl_islower.type
    var isgraph: rte_acl_isgraph.type
    var isprint: rte_acl_isprint.type
    var ispunct: rte_acl_ispunct.type
    var isspace: rte_acl_isspace.type
    var isupper: rte_acl_isupper.type
    var isxdigit: rte_acl_isxdigit.type
    var tolower: rte_acl_tolower.type
    var toupper: rte_acl_toupper.type
    var isblank: rte_acl_isblank.type
    var isascii: rte_acl_isascii.type
    var toascii: rte_acl_toascii.type
    var isalnum_l: rte_acl_isalnum_l.type
    var isalpha_l: rte_acl_isalpha_l.type
    var iscntrl_l: rte_acl_iscntrl_l.type
    var isdigit_l: rte_acl_isdigit_l.type
    var islower_l: rte_acl_islower_l.type
    var isgraph_l: rte_acl_isgraph_l.type
    var isprint_l: rte_acl_isprint_l.type
    var ispunct_l: rte_acl_ispunct_l.type
    var isspace_l: rte_acl_isspace_l.type
    var isupper_l: rte_acl_isupper_l.type
    var isxdigit_l: rte_acl_isxdigit_l.type
    var isblank_l: rte_acl_isblank_l.type
    var tolower_l: rte_acl_tolower_l.type
    var toupper_l: rte_acl_toupper_l.type
    var memcpy: rte_acl_memcpy.type
    var memmove: rte_acl_memmove.type
    var memccpy: rte_acl_memccpy.type
    var memset: rte_acl_memset.type
    var memcmp: rte_acl_memcmp.type
    var memchr: rte_acl_memchr.type
    var strcpy: rte_acl_strcpy.type
    var strncpy: rte_acl_strncpy.type
    var strcat: rte_acl_strcat.type
    var strncat: rte_acl_strncat.type
    var strcmp: rte_acl_strcmp.type
    var strncmp: rte_acl_strncmp.type
    var strcoll: rte_acl_strcoll.type
    var strxfrm: rte_acl_strxfrm.type
    var strcoll_l: rte_acl_strcoll_l.type
    var strxfrm_l: rte_acl_strxfrm_l.type
    var strdup: rte_acl_strdup.type
    var strndup: rte_acl_strndup.type
    var strchr: rte_acl_strchr.type
    var strrchr: rte_acl_strrchr.type
    var strcspn: rte_acl_strcspn.type
    var strspn: rte_acl_strspn.type
    var strpbrk: rte_acl_strpbrk.type
    var strstr: rte_acl_strstr.type
    var strtok: rte_acl_strtok.type
    var strtok_r: rte_acl_strtok_r.type
    var strlen: rte_acl_strlen.type
    var strnlen: rte_acl_strnlen.type
    var strerror: rte_acl_strerror.type
    var strerror_r: rte_acl_strerror_r.type
    var strerror_l: rte_acl_strerror_l.type
    var bcmp: rte_acl_bcmp.type
    var bcopy: rte_acl_bcopy.type
    var bzero: rte_acl_bzero.type
    var index: rte_acl_index.type
    var rindex: rte_acl_rindex.type
    var ffs: rte_acl_ffs.type
    var ffsl: rte_acl_ffsl.type
    var ffsll: rte_acl_ffsll.type
    var strcasecmp: rte_acl_strcasecmp.type
    var strncasecmp: rte_acl_strncasecmp.type
    var strcasecmp_l: rte_acl_strcasecmp_l.type
    var strncasecmp_l: rte_acl_strncasecmp_l.type
    var explicit_bzero: rte_acl_explicit_bzero.type
    var strsep: rte_acl_strsep.type
    var strsignal: rte_acl_strsignal.type
    var stpcpy: rte_acl_stpcpy.type
    var stpncpy: rte_acl_stpncpy.type
    var remove: rte_acl_remove.type
    var rename: rte_acl_rename.type
    var renameat: rte_acl_renameat.type
    var fclose: rte_acl_fclose.type
    var tmpfile: rte_acl_tmpfile.type
    var tmpnam: rte_acl_tmpnam.type
    var tmpnam_r: rte_acl_tmpnam_r.type
    var tempnam: rte_acl_tempnam.type
    var fflush: rte_acl_fflush.type
    var fflush_unlocked: rte_acl_fflush_unlocked.type
    var fopen: rte_acl_fopen.type
    var freopen: rte_acl_freopen.type
    var fdopen: rte_acl_fdopen.type
    var fmemopen: rte_acl_fmemopen.type
    var open_memstream: rte_acl_open_memstream.type
    var setbuf: rte_acl_setbuf.type
    var setvbuf: rte_acl_setvbuf.type
    var setbuffer: rte_acl_setbuffer.type
    var setlinebuf: rte_acl_setlinebuf.type
    var fprintf: rte_acl_fprintf.type
    var printf: rte_acl_printf.type
    var sprintf: rte_acl_sprintf.type
    var vfprintf: rte_acl_vfprintf.type
    var vprintf: rte_acl_vprintf.type
    var vsprintf: rte_acl_vsprintf.type
    var snprintf: rte_acl_snprintf.type
    var vsnprintf: rte_acl_vsnprintf.type
    var vdprintf: rte_acl_vdprintf.type
    var dprintf: rte_acl_dprintf.type
    var fscanf: rte_acl_fscanf.type
    var scanf: rte_acl_scanf.type
    var sscanf: rte_acl_sscanf.type
    var vfscanf: rte_acl_vfscanf.type
    var vscanf: rte_acl_vscanf.type
    var vsscanf: rte_acl_vsscanf.type
    var fgetc: rte_acl_fgetc.type
    var getc: rte_acl_getc.type
    var getchar: rte_acl_getchar.type
    var getc_unlocked: rte_acl_getc_unlocked.type
    var getchar_unlocked: rte_acl_getchar_unlocked.type
    var fgetc_unlocked: rte_acl_fgetc_unlocked.type
    var fputc: rte_acl_fputc.type
    var putc: rte_acl_putc.type
    var putchar: rte_acl_putchar.type
    var fputc_unlocked: rte_acl_fputc_unlocked.type
    var putc_unlocked: rte_acl_putc_unlocked.type
    var putchar_unlocked: rte_acl_putchar_unlocked.type
    var getw: rte_acl_getw.type
    var putw: rte_acl_putw.type
    var fgets: rte_acl_fgets.type
    var getdelim: rte_acl_getdelim.type
    var getline: rte_acl_getline.type
    var fputs: rte_acl_fputs.type
    var puts: rte_acl_puts.type
    var ungetc: rte_acl_ungetc.type
    var fread: rte_acl_fread.type
    var fwrite: rte_acl_fwrite.type
    var fread_unlocked: rte_acl_fread_unlocked.type
    var fwrite_unlocked: rte_acl_fwrite_unlocked.type
    var fseek: rte_acl_fseek.type
    var ftell: rte_acl_ftell.type
    var rewind: rte_acl_rewind.type
    var fseeko: rte_acl_fseeko.type
    var ftello: rte_acl_ftello.type
    var fgetpos: rte_acl_fgetpos.type
    var fsetpos: rte_acl_fsetpos.type
    var clearerr: rte_acl_clearerr.type
    var feof: rte_acl_feof.type
    var ferror: rte_acl_ferror.type
    var clearerr_unlocked: rte_acl_clearerr_unlocked.type
    var feof_unlocked: rte_acl_feof_unlocked.type
    var ferror_unlocked: rte_acl_ferror_unlocked.type
    var perror: rte_acl_perror.type
    var fileno: rte_acl_fileno.type
    var fileno_unlocked: rte_acl_fileno_unlocked.type
    var pclose: rte_acl_pclose.type
    var popen: rte_acl_popen.type
    var ctermid: rte_acl_ctermid.type
    var flockfile: rte_acl_flockfile.type
    var ftrylockfile: rte_acl_ftrylockfile.type
    var funlockfile: rte_acl_funlockfile.type
    var atof: rte_acl_atof.type
    var atoi: rte_acl_atoi.type
    var atol: rte_acl_atol.type
    var atoll: rte_acl_atoll.type
    var strtod: rte_acl_strtod.type
    var strtof: rte_acl_strtof.type
    var strtold: rte_acl_strtold.type
    var strtol: rte_acl_strtol.type
    var strtoul: rte_acl_strtoul.type
    var strtoq: rte_acl_strtoq.type
    var strtouq: rte_acl_strtouq.type
    var strtoll: rte_acl_strtoll.type
    var strtoull: rte_acl_strtoull.type
    var l64a: rte_acl_l64a.type
    var a64l: rte_acl_a64l.type
    var select: rte_acl_select.type
    var pselect: rte_acl_pselect.type
    var random: rte_acl_random.type
    var srandom: rte_acl_srandom.type
    var initstate: rte_acl_initstate.type
    var setstate: rte_acl_setstate.type
    var random_r: rte_acl_random_r.type
    var srandom_r: rte_acl_srandom_r.type
    var initstate_r: rte_acl_initstate_r.type
    var setstate_r: rte_acl_setstate_r.type
    var rand: rte_acl_rand.type
    var srand: rte_acl_srand.type
    var rand_r: rte_acl_rand_r.type
    var drand48: rte_acl_drand48.type
    var erand48: rte_acl_erand48.type
    var lrand48: rte_acl_lrand48.type
    var nrand48: rte_acl_nrand48.type
    var mrand48: rte_acl_mrand48.type
    var jrand48: rte_acl_jrand48.type
    var srand48: rte_acl_srand48.type
    var seed48: rte_acl_seed48.type
    var lcong48: rte_acl_lcong48.type
    var drand48_r: rte_acl_drand48_r.type
    var erand48_r: rte_acl_erand48_r.type
    var lrand48_r: rte_acl_lrand48_r.type
    var nrand48_r: rte_acl_nrand48_r.type
    var mrand48_r: rte_acl_mrand48_r.type
    var jrand48_r: rte_acl_jrand48_r.type
    var srand48_r: rte_acl_srand48_r.type
    var seed48_r: rte_acl_seed48_r.type
    var lcong48_r: rte_acl_lcong48_r.type
    var malloc: rte_acl_malloc.type
    var calloc: rte_acl_calloc.type
    var realloc: rte_acl_realloc.type
    var free: rte_acl_free.type
    var reallocarray: rte_acl_reallocarray.type
    var valloc: rte_acl_valloc.type
    var posix_memalign: rte_acl_posix_memalign.type
    var aligned_alloc: rte_acl_aligned_alloc.type
    var atexit: rte_acl_atexit.type
    var at_quick_exit: rte_acl_at_quick_exit.type
    var on_exit: rte_acl_on_exit.type
    var exit: rte_acl_exit.type
    var quick_exit: rte_acl_quick_exit.type
    var putenv: rte_acl_putenv.type
    var unsetenv: rte_acl_unsetenv.type
    var clearenv: rte_acl_clearenv.type
    var mktemp: rte_acl_mktemp.type
    var mkstemp: rte_acl_mkstemp.type
    var mkstemps: rte_acl_mkstemps.type
    var mkdtemp: rte_acl_mkdtemp.type
    var system: rte_acl_system.type
    var realpath: rte_acl_realpath.type
    var bsearch: rte_acl_bsearch.type
    var qsort: rte_acl_qsort.type
    var abs: rte_acl_abs.type
    var labs: rte_acl_labs.type
    var llabs: rte_acl_llabs.type
    var div: rte_acl_div.type
    var ldiv: rte_acl_ldiv.type
    var lldiv: rte_acl_lldiv.type
    var ecvt: rte_acl_ecvt.type
    var fcvt: rte_acl_fcvt.type
    var gcvt: rte_acl_gcvt.type
    var qecvt: rte_acl_qecvt.type
    var qfcvt: rte_acl_qfcvt.type
    var qgcvt: rte_acl_qgcvt.type
    var ecvt_r: rte_acl_ecvt_r.type
    var fcvt_r: rte_acl_fcvt_r.type
    var qecvt_r: rte_acl_qecvt_r.type
    var qfcvt_r: rte_acl_qfcvt_r.type
    var mblen: rte_acl_mblen.type
    var mbtowc: rte_acl_mbtowc.type
    var wctomb: rte_acl_wctomb.type
    var mbstowcs: rte_acl_mbstowcs.type
    var wcstombs: rte_acl_wcstombs.type
    var rpmatch: rte_acl_rpmatch.type
    var getsubopt: rte_acl_getsubopt.type
    var getloadavg: rte_acl_getloadavg.type
    var rte_dump_stack: rte_acl_rte_dump_stack.type
    var rte_bit_relaxed_get32: rte_acl_rte_bit_relaxed_get32.type
    var rte_bit_relaxed_set32: rte_acl_rte_bit_relaxed_set32.type
    var rte_bit_relaxed_clear32: rte_acl_rte_bit_relaxed_clear32.type
    var rte_bit_relaxed_test_and_set32: rte_acl_rte_bit_relaxed_test_and_set32.type
    var rte_bit_relaxed_test_and_clear32: rte_acl_rte_bit_relaxed_test_and_clear32.type
    var rte_bit_relaxed_get64: rte_acl_rte_bit_relaxed_get64.type
    var rte_bit_relaxed_set64: rte_acl_rte_bit_relaxed_set64.type
    var rte_bit_relaxed_clear64: rte_acl_rte_bit_relaxed_clear64.type
    var rte_bit_relaxed_test_and_set64: rte_acl_rte_bit_relaxed_test_and_set64.type
    var rte_bit_relaxed_test_and_clear64: rte_acl_rte_bit_relaxed_test_and_clear64.type
    var rte_clz32: rte_acl_rte_clz32.type
    var rte_clz64: rte_acl_rte_clz64.type
    var rte_ctz32: rte_acl_rte_ctz32.type
    var rte_ctz64: rte_acl_rte_ctz64.type
    var rte_popcount32: rte_acl_rte_popcount32.type
    var rte_popcount64: rte_acl_rte_popcount64.type
    var rte_ffs32: rte_acl_rte_ffs32.type
    var rte_ffs64: rte_acl_rte_ffs64.type
    var rte_combine32ms1b: rte_acl_rte_combine32ms1b.type
    var rte_combine64ms1b: rte_acl_rte_combine64ms1b.type
    var rte_bsf32: rte_acl_rte_bsf32.type
    var rte_bsf32_safe: rte_acl_rte_bsf32_safe.type
    var rte_bsf64: rte_acl_rte_bsf64.type
    var rte_bsf64_safe: rte_acl_rte_bsf64_safe.type
    var rte_fls_u32: rte_acl_rte_fls_u32.type
    var rte_fls_u64: rte_acl_rte_fls_u64.type
    var rte_is_power_of_2: rte_acl_rte_is_power_of_2.type
    var rte_align32pow2: rte_acl_rte_align32pow2.type
    var rte_align32prevpow2: rte_acl_rte_align32prevpow2.type
    var rte_align64pow2: rte_acl_rte_align64pow2.type
    var rte_align64prevpow2: rte_acl_rte_align64prevpow2.type
    var rte_log2_u32: rte_acl_rte_log2_u32.type
    var rte_log2_u64: rte_acl_rte_log2_u64.type
    var rte_mcfg_mem_get_lock: rte_acl_rte_mcfg_mem_get_lock.type
    var rte_mcfg_tailq_get_lock: rte_acl_rte_mcfg_tailq_get_lock.type
    var rte_mcfg_mempool_get_lock: rte_acl_rte_mcfg_mempool_get_lock.type
    var rte_mcfg_timer_get_lock: rte_acl_rte_mcfg_timer_get_lock.type
    var rte_mcfg_ethdev_get_lock: rte_acl_rte_mcfg_ethdev_get_lock.type
    var rte_mcfg_get_single_file_segments: rte_acl_rte_mcfg_get_single_file_segments.type
    var rte_fbarray_init: rte_acl_rte_fbarray_init.type
    var rte_fbarray_attach: rte_acl_rte_fbarray_attach.type
    var rte_fbarray_destroy: rte_acl_rte_fbarray_destroy.type
    var rte_fbarray_detach: rte_acl_rte_fbarray_detach.type
    var rte_fbarray_get: rte_acl_rte_fbarray_get.type
    var rte_fbarray_find_idx: rte_acl_rte_fbarray_find_idx.type
    var rte_fbarray_set_used: rte_acl_rte_fbarray_set_used.type
    var rte_fbarray_set_free: rte_acl_rte_fbarray_set_free.type
    var rte_fbarray_is_used: rte_acl_rte_fbarray_is_used.type
    var rte_fbarray_find_next_free: rte_acl_rte_fbarray_find_next_free.type
    var rte_fbarray_find_next_used: rte_acl_rte_fbarray_find_next_used.type
    var rte_fbarray_find_next_n_free: rte_acl_rte_fbarray_find_next_n_free.type
    var rte_fbarray_find_next_n_used: rte_acl_rte_fbarray_find_next_n_used.type
    var rte_fbarray_find_contig_free: rte_acl_rte_fbarray_find_contig_free.type
    var rte_fbarray_find_contig_used: rte_acl_rte_fbarray_find_contig_used.type
    var rte_fbarray_find_prev_free: rte_acl_rte_fbarray_find_prev_free.type
    var rte_fbarray_find_prev_used: rte_acl_rte_fbarray_find_prev_used.type
    var rte_fbarray_find_prev_n_free: rte_acl_rte_fbarray_find_prev_n_free.type
    var rte_fbarray_find_prev_n_used: rte_acl_rte_fbarray_find_prev_n_used.type
    var rte_fbarray_find_rev_contig_free: rte_acl_rte_fbarray_find_rev_contig_free.type
    var rte_fbarray_find_rev_contig_used: rte_acl_rte_fbarray_find_rev_contig_used.type
    var rte_fbarray_find_biggest_free: rte_acl_rte_fbarray_find_biggest_free.type
    var rte_fbarray_find_biggest_used: rte_acl_rte_fbarray_find_biggest_used.type
    var rte_fbarray_find_rev_biggest_free: rte_acl_rte_fbarray_find_rev_biggest_free.type
    var rte_fbarray_find_rev_biggest_used: rte_acl_rte_fbarray_find_rev_biggest_used.type
    var rte_fbarray_dump_metadata: rte_acl_rte_fbarray_dump_metadata.type
    var rte_mem_lock_page: rte_acl_rte_mem_lock_page.type
    var rte_mem_virt2phy: rte_acl_rte_mem_virt2phy.type
    var rte_mem_virt2iova: rte_acl_rte_mem_virt2iova.type
    var rte_mem_iova2virt: rte_acl_rte_mem_iova2virt.type
    var rte_mem_virt2memseg: rte_acl_rte_mem_virt2memseg.type
    var rte_mem_virt2memseg_list: rte_acl_rte_mem_virt2memseg_list.type
    var rte_memseg_walk: rte_acl_rte_memseg_walk.type
    var rte_memseg_contig_walk: rte_acl_rte_memseg_contig_walk.type
    var rte_memseg_walk_thread_unsafe: rte_acl_rte_memseg_walk_thread_unsafe.type
    var rte_memseg_contig_walk_thread_unsafe: rte_acl_rte_memseg_contig_walk_thread_unsafe.type
    var rte_memseg_list_walk_thread_unsafe: rte_acl_rte_memseg_list_walk_thread_unsafe.type
    var rte_memseg_get_fd: rte_acl_rte_memseg_get_fd.type
    var rte_memseg_get_fd_thread_unsafe: rte_acl_rte_memseg_get_fd_thread_unsafe.type
    var rte_memseg_get_fd_offset: rte_acl_rte_memseg_get_fd_offset.type
    var rte_memseg_get_fd_offset_thread_unsafe: rte_acl_rte_memseg_get_fd_offset_thread_unsafe.type
    var rte_extmem_register: rte_acl_rte_extmem_register.type
    var rte_extmem_unregister: rte_acl_rte_extmem_unregister.type
    var rte_extmem_attach: rte_acl_rte_extmem_attach.type
    var rte_extmem_detach: rte_acl_rte_extmem_detach.type
    var rte_dump_physmem_layout: rte_acl_rte_dump_physmem_layout.type
    var rte_eal_get_physmem_size: rte_acl_rte_eal_get_physmem_size.type
    var rte_memory_get_nchannel: rte_acl_rte_memory_get_nchannel.type
    var rte_memory_get_nrank: rte_acl_rte_memory_get_nrank.type
    var rte_mem_check_dma_mask: rte_acl_rte_mem_check_dma_mask.type
    var rte_mem_check_dma_mask_thread_unsafe: rte_acl_rte_mem_check_dma_mask_thread_unsafe.type
    var rte_mem_set_dma_mask: rte_acl_rte_mem_set_dma_mask.type
    var rte_eal_using_phys_addrs: rte_acl_rte_eal_using_phys_addrs.type
    var rte_mem_event_callback_register: rte_acl_rte_mem_event_callback_register.type
    var rte_mem_event_callback_unregister: rte_acl_rte_mem_event_callback_unregister.type
    var rte_mem_alloc_validator_register: rte_acl_rte_mem_alloc_validator_register.type
    var rte_mem_alloc_validator_unregister: rte_acl_rte_mem_alloc_validator_unregister.type
    var rte_memzero_explicit: rte_acl_rte_memzero_explicit.type
    var rte_free: rte_acl_rte_free.type
    var rte_free_sensitive: rte_acl_rte_free_sensitive.type
    var rte_malloc: rte_acl_rte_malloc.type
    var rte_zmalloc: rte_acl_rte_zmalloc.type
    var rte_calloc: rte_acl_rte_calloc.type
    var rte_realloc: rte_acl_rte_realloc.type
    var rte_realloc_socket: rte_acl_rte_realloc_socket.type
    var rte_malloc_socket: rte_acl_rte_malloc_socket.type
    var rte_zmalloc_socket: rte_acl_rte_zmalloc_socket.type
    var rte_calloc_socket: rte_acl_rte_calloc_socket.type
    var rte_malloc_validate: rte_acl_rte_malloc_validate.type
    var rte_malloc_get_socket_stats: rte_acl_rte_malloc_get_socket_stats.type
    var rte_malloc_heap_memory_add: rte_acl_rte_malloc_heap_memory_add.type
    var rte_malloc_heap_memory_remove: rte_acl_rte_malloc_heap_memory_remove.type
    var rte_malloc_heap_memory_attach: rte_acl_rte_malloc_heap_memory_attach.type
    var rte_malloc_heap_memory_detach: rte_acl_rte_malloc_heap_memory_detach.type
    var rte_malloc_heap_create: rte_acl_rte_malloc_heap_create.type
    var rte_malloc_heap_destroy: rte_acl_rte_malloc_heap_destroy.type
    var rte_malloc_heap_get_socket: rte_acl_rte_malloc_heap_get_socket.type
    var rte_malloc_heap_socket_is_external: rte_acl_rte_malloc_heap_socket_is_external.type
    var rte_malloc_dump_stats: rte_acl_rte_malloc_dump_stats.type
    var rte_malloc_dump_heaps: rte_acl_rte_malloc_dump_heaps.type
    var rte_malloc_virt2iova: rte_acl_rte_malloc_virt2iova.type
    var clock: rte_acl_clock.type
    var time: rte_acl_time.type
    var difftime: rte_acl_difftime.type
    var mktime: rte_acl_mktime.type
    var strftime: rte_acl_strftime.type
    var strftime_l: rte_acl_strftime_l.type
    var gmtime: rte_acl_gmtime.type
    var localtime: rte_acl_localtime.type
    var gmtime_r: rte_acl_gmtime_r.type
    var localtime_r: rte_acl_localtime_r.type
    var asctime: rte_acl_asctime.type
    var ctime: rte_acl_ctime.type
    var asctime_r: rte_acl_asctime_r.type
    var ctime_r: rte_acl_ctime_r.type
    var tzset: rte_acl_tzset.type
    var timegm: rte_acl_timegm.type
    var timelocal: rte_acl_timelocal.type
    var dysize: rte_acl_dysize.type
    var nanosleep: rte_acl_nanosleep.type
    var clock_getres: rte_acl_clock_getres.type
    var clock_gettime: rte_acl_clock_gettime.type
    var clock_settime: rte_acl_clock_settime.type
    var clock_nanosleep: rte_acl_clock_nanosleep.type
    var clock_getcpuclockid: rte_acl_clock_getcpuclockid.type
    var timer_create: rte_acl_timer_create.type
    var timer_delete: rte_acl_timer_delete.type
    var timer_settime: rte_acl_timer_settime.type
    var timer_gettime: rte_acl_timer_gettime.type
    var timer_getoverrun: rte_acl_timer_getoverrun.type
    var timespec_get: rte_acl_timespec_get.type
    var rte_uuid_is_null: rte_acl_rte_uuid_is_null.type
    var rte_uuid_copy: rte_acl_rte_uuid_copy.type
    var rte_uuid_compare: rte_acl_rte_uuid_compare.type
    var rte_uuid_parse: rte_acl_rte_uuid_parse.type
    var rte_uuid_unparse: rte_acl_rte_uuid_unparse.type
    var rte_eal_process_type: rte_acl_rte_eal_process_type.type
    var rte_eal_iopl_init: rte_acl_rte_eal_iopl_init.type
    var rte_eal_init: rte_acl_rte_eal_init.type
    var rte_eal_cleanup: rte_acl_rte_eal_cleanup.type
    var rte_eal_primary_proc_alive: rte_acl_rte_eal_primary_proc_alive.type
    var rte_mp_disable: rte_acl_rte_mp_disable.type
    var rte_mp_action_register: rte_acl_rte_mp_action_register.type
    var rte_mp_action_unregister: rte_acl_rte_mp_action_unregister.type
    var rte_mp_sendmsg: rte_acl_rte_mp_sendmsg.type
    var rte_mp_request_sync: rte_acl_rte_mp_request_sync.type
    var rte_mp_request_async: rte_acl_rte_mp_request_async.type
    var rte_set_application_usage_hook: rte_acl_rte_set_application_usage_hook.type
    var rte_eal_has_hugepages: rte_acl_rte_eal_has_hugepages.type
    var rte_eal_has_pci: rte_acl_rte_eal_has_pci.type
    var rte_eal_create_uio_dev: rte_acl_rte_eal_create_uio_dev.type
    var rte_eal_vfio_intr_mode: rte_acl_rte_eal_vfio_intr_mode.type
    var rte_eal_vfio_get_vf_token: rte_acl_rte_eal_vfio_get_vf_token.type
    var rte_sys_gettid: rte_acl_rte_sys_gettid.type
    var rte_gettid: rte_acl_rte_gettid.type
    var rte_eal_get_baseaddr: rte_acl_rte_eal_get_baseaddr.type
    var rte_eal_iova_mode: rte_acl_rte_eal_iova_mode.type
    var rte_eal_mbuf_user_pool_ops: rte_acl_rte_eal_mbuf_user_pool_ops.type
    var rte_eal_get_runtime_dir: rte_acl_rte_eal_get_runtime_dir.type
    var rte_eal_parse_coremask: rte_acl_rte_eal_parse_coremask.type
    var rte_strerror: rte_acl_rte_strerror.type
    var rte_strsplit: rte_acl_rte_strsplit.type
    var rte_strlcpy: rte_acl_rte_strlcpy.type
    var rte_strlcat: rte_acl_rte_strlcat.type
    var rte_strscpy: rte_acl_rte_strscpy.type
    var rte_str_skip_leading_spaces: rte_acl_rte_str_skip_leading_spaces.type
    var rte_acl_free: rte_acl_rte_acl_free.type
    var rte_acl_create: rte_acl_rte_acl_create.type
    var rte_acl_find_existing: rte_acl_rte_acl_find_existing.type
    var rte_acl_add_rules: rte_acl_rte_acl_add_rules.type
    var rte_acl_reset_rules: rte_acl_rte_acl_reset_rules.type
    var rte_acl_build: rte_acl_rte_acl_build.type
    var rte_acl_reset: rte_acl_rte_acl_reset.type
    var rte_acl_classify: rte_acl_rte_acl_classify.type
    var rte_acl_set_ctx_classify: rte_acl_rte_acl_set_ctx_classify.type
    var rte_acl_dump: rte_acl_rte_acl_dump.type
    var rte_acl_list_dump: rte_acl_rte_acl_list_dump.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_acl.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_acl from", 'librte_acl.so', ":\n", e)
            )

    
        self.alloca = rte_acl_alloca.load(self.lib)
        self.sched_setparam = rte_acl_sched_setparam.load(self.lib)
        self.sched_getparam = rte_acl_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_acl_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_acl_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_acl_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_acl_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_acl_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_acl_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_acl_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_acl_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_acl_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_acl_rte_exit.load(self.lib)
        self.imaxabs = rte_acl_imaxabs.load(self.lib)
        self.imaxdiv = rte_acl_imaxdiv.load(self.lib)
        self.strtoimax = rte_acl_strtoimax.load(self.lib)
        self.strtoumax = rte_acl_strtoumax.load(self.lib)
        self.wcstoimax = rte_acl_wcstoimax.load(self.lib)
        self.wcstoumax = rte_acl_wcstoumax.load(self.lib)
        self.isalnum = rte_acl_isalnum.load(self.lib)
        self.isalpha = rte_acl_isalpha.load(self.lib)
        self.iscntrl = rte_acl_iscntrl.load(self.lib)
        self.isdigit = rte_acl_isdigit.load(self.lib)
        self.islower = rte_acl_islower.load(self.lib)
        self.isgraph = rte_acl_isgraph.load(self.lib)
        self.isprint = rte_acl_isprint.load(self.lib)
        self.ispunct = rte_acl_ispunct.load(self.lib)
        self.isspace = rte_acl_isspace.load(self.lib)
        self.isupper = rte_acl_isupper.load(self.lib)
        self.isxdigit = rte_acl_isxdigit.load(self.lib)
        self.tolower = rte_acl_tolower.load(self.lib)
        self.toupper = rte_acl_toupper.load(self.lib)
        self.isblank = rte_acl_isblank.load(self.lib)
        self.isascii = rte_acl_isascii.load(self.lib)
        self.toascii = rte_acl_toascii.load(self.lib)
        self.isalnum_l = rte_acl_isalnum_l.load(self.lib)
        self.isalpha_l = rte_acl_isalpha_l.load(self.lib)
        self.iscntrl_l = rte_acl_iscntrl_l.load(self.lib)
        self.isdigit_l = rte_acl_isdigit_l.load(self.lib)
        self.islower_l = rte_acl_islower_l.load(self.lib)
        self.isgraph_l = rte_acl_isgraph_l.load(self.lib)
        self.isprint_l = rte_acl_isprint_l.load(self.lib)
        self.ispunct_l = rte_acl_ispunct_l.load(self.lib)
        self.isspace_l = rte_acl_isspace_l.load(self.lib)
        self.isupper_l = rte_acl_isupper_l.load(self.lib)
        self.isxdigit_l = rte_acl_isxdigit_l.load(self.lib)
        self.isblank_l = rte_acl_isblank_l.load(self.lib)
        self.tolower_l = rte_acl_tolower_l.load(self.lib)
        self.toupper_l = rte_acl_toupper_l.load(self.lib)
        self.memcpy = rte_acl_memcpy.load(self.lib)
        self.memmove = rte_acl_memmove.load(self.lib)
        self.memccpy = rte_acl_memccpy.load(self.lib)
        self.memset = rte_acl_memset.load(self.lib)
        self.memcmp = rte_acl_memcmp.load(self.lib)
        self.memchr = rte_acl_memchr.load(self.lib)
        self.strcpy = rte_acl_strcpy.load(self.lib)
        self.strncpy = rte_acl_strncpy.load(self.lib)
        self.strcat = rte_acl_strcat.load(self.lib)
        self.strncat = rte_acl_strncat.load(self.lib)
        self.strcmp = rte_acl_strcmp.load(self.lib)
        self.strncmp = rte_acl_strncmp.load(self.lib)
        self.strcoll = rte_acl_strcoll.load(self.lib)
        self.strxfrm = rte_acl_strxfrm.load(self.lib)
        self.strcoll_l = rte_acl_strcoll_l.load(self.lib)
        self.strxfrm_l = rte_acl_strxfrm_l.load(self.lib)
        self.strdup = rte_acl_strdup.load(self.lib)
        self.strndup = rte_acl_strndup.load(self.lib)
        self.strchr = rte_acl_strchr.load(self.lib)
        self.strrchr = rte_acl_strrchr.load(self.lib)
        self.strcspn = rte_acl_strcspn.load(self.lib)
        self.strspn = rte_acl_strspn.load(self.lib)
        self.strpbrk = rte_acl_strpbrk.load(self.lib)
        self.strstr = rte_acl_strstr.load(self.lib)
        self.strtok = rte_acl_strtok.load(self.lib)
        self.strtok_r = rte_acl_strtok_r.load(self.lib)
        self.strlen = rte_acl_strlen.load(self.lib)
        self.strnlen = rte_acl_strnlen.load(self.lib)
        self.strerror = rte_acl_strerror.load(self.lib)
        self.strerror_r = rte_acl_strerror_r.load(self.lib)
        self.strerror_l = rte_acl_strerror_l.load(self.lib)
        self.bcmp = rte_acl_bcmp.load(self.lib)
        self.bcopy = rte_acl_bcopy.load(self.lib)
        self.bzero = rte_acl_bzero.load(self.lib)
        self.index = rte_acl_index.load(self.lib)
        self.rindex = rte_acl_rindex.load(self.lib)
        self.ffs = rte_acl_ffs.load(self.lib)
        self.ffsl = rte_acl_ffsl.load(self.lib)
        self.ffsll = rte_acl_ffsll.load(self.lib)
        self.strcasecmp = rte_acl_strcasecmp.load(self.lib)
        self.strncasecmp = rte_acl_strncasecmp.load(self.lib)
        self.strcasecmp_l = rte_acl_strcasecmp_l.load(self.lib)
        self.strncasecmp_l = rte_acl_strncasecmp_l.load(self.lib)
        self.explicit_bzero = rte_acl_explicit_bzero.load(self.lib)
        self.strsep = rte_acl_strsep.load(self.lib)
        self.strsignal = rte_acl_strsignal.load(self.lib)
        self.stpcpy = rte_acl_stpcpy.load(self.lib)
        self.stpncpy = rte_acl_stpncpy.load(self.lib)
        self.remove = rte_acl_remove.load(self.lib)
        self.rename = rte_acl_rename.load(self.lib)
        self.renameat = rte_acl_renameat.load(self.lib)
        self.fclose = rte_acl_fclose.load(self.lib)
        self.tmpfile = rte_acl_tmpfile.load(self.lib)
        self.tmpnam = rte_acl_tmpnam.load(self.lib)
        self.tmpnam_r = rte_acl_tmpnam_r.load(self.lib)
        self.tempnam = rte_acl_tempnam.load(self.lib)
        self.fflush = rte_acl_fflush.load(self.lib)
        self.fflush_unlocked = rte_acl_fflush_unlocked.load(self.lib)
        self.fopen = rte_acl_fopen.load(self.lib)
        self.freopen = rte_acl_freopen.load(self.lib)
        self.fdopen = rte_acl_fdopen.load(self.lib)
        self.fmemopen = rte_acl_fmemopen.load(self.lib)
        self.open_memstream = rte_acl_open_memstream.load(self.lib)
        self.setbuf = rte_acl_setbuf.load(self.lib)
        self.setvbuf = rte_acl_setvbuf.load(self.lib)
        self.setbuffer = rte_acl_setbuffer.load(self.lib)
        self.setlinebuf = rte_acl_setlinebuf.load(self.lib)
        self.fprintf = rte_acl_fprintf.load(self.lib)
        self.printf = rte_acl_printf.load(self.lib)
        self.sprintf = rte_acl_sprintf.load(self.lib)
        self.vfprintf = rte_acl_vfprintf.load(self.lib)
        self.vprintf = rte_acl_vprintf.load(self.lib)
        self.vsprintf = rte_acl_vsprintf.load(self.lib)
        self.snprintf = rte_acl_snprintf.load(self.lib)
        self.vsnprintf = rte_acl_vsnprintf.load(self.lib)
        self.vdprintf = rte_acl_vdprintf.load(self.lib)
        self.dprintf = rte_acl_dprintf.load(self.lib)
        self.fscanf = rte_acl_fscanf.load(self.lib)
        self.scanf = rte_acl_scanf.load(self.lib)
        self.sscanf = rte_acl_sscanf.load(self.lib)
        self.vfscanf = rte_acl_vfscanf.load(self.lib)
        self.vscanf = rte_acl_vscanf.load(self.lib)
        self.vsscanf = rte_acl_vsscanf.load(self.lib)
        self.fgetc = rte_acl_fgetc.load(self.lib)
        self.getc = rte_acl_getc.load(self.lib)
        self.getchar = rte_acl_getchar.load(self.lib)
        self.getc_unlocked = rte_acl_getc_unlocked.load(self.lib)
        self.getchar_unlocked = rte_acl_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = rte_acl_fgetc_unlocked.load(self.lib)
        self.fputc = rte_acl_fputc.load(self.lib)
        self.putc = rte_acl_putc.load(self.lib)
        self.putchar = rte_acl_putchar.load(self.lib)
        self.fputc_unlocked = rte_acl_fputc_unlocked.load(self.lib)
        self.putc_unlocked = rte_acl_putc_unlocked.load(self.lib)
        self.putchar_unlocked = rte_acl_putchar_unlocked.load(self.lib)
        self.getw = rte_acl_getw.load(self.lib)
        self.putw = rte_acl_putw.load(self.lib)
        self.fgets = rte_acl_fgets.load(self.lib)
        self.getdelim = rte_acl_getdelim.load(self.lib)
        self.getline = rte_acl_getline.load(self.lib)
        self.fputs = rte_acl_fputs.load(self.lib)
        self.puts = rte_acl_puts.load(self.lib)
        self.ungetc = rte_acl_ungetc.load(self.lib)
        self.fread = rte_acl_fread.load(self.lib)
        self.fwrite = rte_acl_fwrite.load(self.lib)
        self.fread_unlocked = rte_acl_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = rte_acl_fwrite_unlocked.load(self.lib)
        self.fseek = rte_acl_fseek.load(self.lib)
        self.ftell = rte_acl_ftell.load(self.lib)
        self.rewind = rte_acl_rewind.load(self.lib)
        self.fseeko = rte_acl_fseeko.load(self.lib)
        self.ftello = rte_acl_ftello.load(self.lib)
        self.fgetpos = rte_acl_fgetpos.load(self.lib)
        self.fsetpos = rte_acl_fsetpos.load(self.lib)
        self.clearerr = rte_acl_clearerr.load(self.lib)
        self.feof = rte_acl_feof.load(self.lib)
        self.ferror = rte_acl_ferror.load(self.lib)
        self.clearerr_unlocked = rte_acl_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = rte_acl_feof_unlocked.load(self.lib)
        self.ferror_unlocked = rte_acl_ferror_unlocked.load(self.lib)
        self.perror = rte_acl_perror.load(self.lib)
        self.fileno = rte_acl_fileno.load(self.lib)
        self.fileno_unlocked = rte_acl_fileno_unlocked.load(self.lib)
        self.pclose = rte_acl_pclose.load(self.lib)
        self.popen = rte_acl_popen.load(self.lib)
        self.ctermid = rte_acl_ctermid.load(self.lib)
        self.flockfile = rte_acl_flockfile.load(self.lib)
        self.ftrylockfile = rte_acl_ftrylockfile.load(self.lib)
        self.funlockfile = rte_acl_funlockfile.load(self.lib)
        self.atof = rte_acl_atof.load(self.lib)
        self.atoi = rte_acl_atoi.load(self.lib)
        self.atol = rte_acl_atol.load(self.lib)
        self.atoll = rte_acl_atoll.load(self.lib)
        self.strtod = rte_acl_strtod.load(self.lib)
        self.strtof = rte_acl_strtof.load(self.lib)
        self.strtold = rte_acl_strtold.load(self.lib)
        self.strtol = rte_acl_strtol.load(self.lib)
        self.strtoul = rte_acl_strtoul.load(self.lib)
        self.strtoq = rte_acl_strtoq.load(self.lib)
        self.strtouq = rte_acl_strtouq.load(self.lib)
        self.strtoll = rte_acl_strtoll.load(self.lib)
        self.strtoull = rte_acl_strtoull.load(self.lib)
        self.l64a = rte_acl_l64a.load(self.lib)
        self.a64l = rte_acl_a64l.load(self.lib)
        self.select = rte_acl_select.load(self.lib)
        self.pselect = rte_acl_pselect.load(self.lib)
        self.random = rte_acl_random.load(self.lib)
        self.srandom = rte_acl_srandom.load(self.lib)
        self.initstate = rte_acl_initstate.load(self.lib)
        self.setstate = rte_acl_setstate.load(self.lib)
        self.random_r = rte_acl_random_r.load(self.lib)
        self.srandom_r = rte_acl_srandom_r.load(self.lib)
        self.initstate_r = rte_acl_initstate_r.load(self.lib)
        self.setstate_r = rte_acl_setstate_r.load(self.lib)
        self.rand = rte_acl_rand.load(self.lib)
        self.srand = rte_acl_srand.load(self.lib)
        self.rand_r = rte_acl_rand_r.load(self.lib)
        self.drand48 = rte_acl_drand48.load(self.lib)
        self.erand48 = rte_acl_erand48.load(self.lib)
        self.lrand48 = rte_acl_lrand48.load(self.lib)
        self.nrand48 = rte_acl_nrand48.load(self.lib)
        self.mrand48 = rte_acl_mrand48.load(self.lib)
        self.jrand48 = rte_acl_jrand48.load(self.lib)
        self.srand48 = rte_acl_srand48.load(self.lib)
        self.seed48 = rte_acl_seed48.load(self.lib)
        self.lcong48 = rte_acl_lcong48.load(self.lib)
        self.drand48_r = rte_acl_drand48_r.load(self.lib)
        self.erand48_r = rte_acl_erand48_r.load(self.lib)
        self.lrand48_r = rte_acl_lrand48_r.load(self.lib)
        self.nrand48_r = rte_acl_nrand48_r.load(self.lib)
        self.mrand48_r = rte_acl_mrand48_r.load(self.lib)
        self.jrand48_r = rte_acl_jrand48_r.load(self.lib)
        self.srand48_r = rte_acl_srand48_r.load(self.lib)
        self.seed48_r = rte_acl_seed48_r.load(self.lib)
        self.lcong48_r = rte_acl_lcong48_r.load(self.lib)
        self.malloc = rte_acl_malloc.load(self.lib)
        self.calloc = rte_acl_calloc.load(self.lib)
        self.realloc = rte_acl_realloc.load(self.lib)
        self.free = rte_acl_free.load(self.lib)
        self.reallocarray = rte_acl_reallocarray.load(self.lib)
        self.valloc = rte_acl_valloc.load(self.lib)
        self.posix_memalign = rte_acl_posix_memalign.load(self.lib)
        self.aligned_alloc = rte_acl_aligned_alloc.load(self.lib)
        self.atexit = rte_acl_atexit.load(self.lib)
        self.at_quick_exit = rte_acl_at_quick_exit.load(self.lib)
        self.on_exit = rte_acl_on_exit.load(self.lib)
        self.exit = rte_acl_exit.load(self.lib)
        self.quick_exit = rte_acl_quick_exit.load(self.lib)
        self.putenv = rte_acl_putenv.load(self.lib)
        self.unsetenv = rte_acl_unsetenv.load(self.lib)
        self.clearenv = rte_acl_clearenv.load(self.lib)
        self.mktemp = rte_acl_mktemp.load(self.lib)
        self.mkstemp = rte_acl_mkstemp.load(self.lib)
        self.mkstemps = rte_acl_mkstemps.load(self.lib)
        self.mkdtemp = rte_acl_mkdtemp.load(self.lib)
        self.system = rte_acl_system.load(self.lib)
        self.realpath = rte_acl_realpath.load(self.lib)
        self.bsearch = rte_acl_bsearch.load(self.lib)
        self.qsort = rte_acl_qsort.load(self.lib)
        self.abs = rte_acl_abs.load(self.lib)
        self.labs = rte_acl_labs.load(self.lib)
        self.llabs = rte_acl_llabs.load(self.lib)
        self.div = rte_acl_div.load(self.lib)
        self.ldiv = rte_acl_ldiv.load(self.lib)
        self.lldiv = rte_acl_lldiv.load(self.lib)
        self.ecvt = rte_acl_ecvt.load(self.lib)
        self.fcvt = rte_acl_fcvt.load(self.lib)
        self.gcvt = rte_acl_gcvt.load(self.lib)
        self.qecvt = rte_acl_qecvt.load(self.lib)
        self.qfcvt = rte_acl_qfcvt.load(self.lib)
        self.qgcvt = rte_acl_qgcvt.load(self.lib)
        self.ecvt_r = rte_acl_ecvt_r.load(self.lib)
        self.fcvt_r = rte_acl_fcvt_r.load(self.lib)
        self.qecvt_r = rte_acl_qecvt_r.load(self.lib)
        self.qfcvt_r = rte_acl_qfcvt_r.load(self.lib)
        self.mblen = rte_acl_mblen.load(self.lib)
        self.mbtowc = rte_acl_mbtowc.load(self.lib)
        self.wctomb = rte_acl_wctomb.load(self.lib)
        self.mbstowcs = rte_acl_mbstowcs.load(self.lib)
        self.wcstombs = rte_acl_wcstombs.load(self.lib)
        self.rpmatch = rte_acl_rpmatch.load(self.lib)
        self.getsubopt = rte_acl_getsubopt.load(self.lib)
        self.getloadavg = rte_acl_getloadavg.load(self.lib)
        self.rte_dump_stack = rte_acl_rte_dump_stack.load(self.lib)
        self.rte_bit_relaxed_get32 = rte_acl_rte_bit_relaxed_get32.load(self.lib)
        self.rte_bit_relaxed_set32 = rte_acl_rte_bit_relaxed_set32.load(self.lib)
        self.rte_bit_relaxed_clear32 = rte_acl_rte_bit_relaxed_clear32.load(self.lib)
        self.rte_bit_relaxed_test_and_set32 = rte_acl_rte_bit_relaxed_test_and_set32.load(self.lib)
        self.rte_bit_relaxed_test_and_clear32 = rte_acl_rte_bit_relaxed_test_and_clear32.load(self.lib)
        self.rte_bit_relaxed_get64 = rte_acl_rte_bit_relaxed_get64.load(self.lib)
        self.rte_bit_relaxed_set64 = rte_acl_rte_bit_relaxed_set64.load(self.lib)
        self.rte_bit_relaxed_clear64 = rte_acl_rte_bit_relaxed_clear64.load(self.lib)
        self.rte_bit_relaxed_test_and_set64 = rte_acl_rte_bit_relaxed_test_and_set64.load(self.lib)
        self.rte_bit_relaxed_test_and_clear64 = rte_acl_rte_bit_relaxed_test_and_clear64.load(self.lib)
        self.rte_clz32 = rte_acl_rte_clz32.load(self.lib)
        self.rte_clz64 = rte_acl_rte_clz64.load(self.lib)
        self.rte_ctz32 = rte_acl_rte_ctz32.load(self.lib)
        self.rte_ctz64 = rte_acl_rte_ctz64.load(self.lib)
        self.rte_popcount32 = rte_acl_rte_popcount32.load(self.lib)
        self.rte_popcount64 = rte_acl_rte_popcount64.load(self.lib)
        self.rte_ffs32 = rte_acl_rte_ffs32.load(self.lib)
        self.rte_ffs64 = rte_acl_rte_ffs64.load(self.lib)
        self.rte_combine32ms1b = rte_acl_rte_combine32ms1b.load(self.lib)
        self.rte_combine64ms1b = rte_acl_rte_combine64ms1b.load(self.lib)
        self.rte_bsf32 = rte_acl_rte_bsf32.load(self.lib)
        self.rte_bsf32_safe = rte_acl_rte_bsf32_safe.load(self.lib)
        self.rte_bsf64 = rte_acl_rte_bsf64.load(self.lib)
        self.rte_bsf64_safe = rte_acl_rte_bsf64_safe.load(self.lib)
        self.rte_fls_u32 = rte_acl_rte_fls_u32.load(self.lib)
        self.rte_fls_u64 = rte_acl_rte_fls_u64.load(self.lib)
        self.rte_is_power_of_2 = rte_acl_rte_is_power_of_2.load(self.lib)
        self.rte_align32pow2 = rte_acl_rte_align32pow2.load(self.lib)
        self.rte_align32prevpow2 = rte_acl_rte_align32prevpow2.load(self.lib)
        self.rte_align64pow2 = rte_acl_rte_align64pow2.load(self.lib)
        self.rte_align64prevpow2 = rte_acl_rte_align64prevpow2.load(self.lib)
        self.rte_log2_u32 = rte_acl_rte_log2_u32.load(self.lib)
        self.rte_log2_u64 = rte_acl_rte_log2_u64.load(self.lib)
        self.rte_mcfg_mem_get_lock = rte_acl_rte_mcfg_mem_get_lock.load(self.lib)
        self.rte_mcfg_tailq_get_lock = rte_acl_rte_mcfg_tailq_get_lock.load(self.lib)
        self.rte_mcfg_mempool_get_lock = rte_acl_rte_mcfg_mempool_get_lock.load(self.lib)
        self.rte_mcfg_timer_get_lock = rte_acl_rte_mcfg_timer_get_lock.load(self.lib)
        self.rte_mcfg_ethdev_get_lock = rte_acl_rte_mcfg_ethdev_get_lock.load(self.lib)
        self.rte_mcfg_get_single_file_segments = rte_acl_rte_mcfg_get_single_file_segments.load(self.lib)
        self.rte_fbarray_init = rte_acl_rte_fbarray_init.load(self.lib)
        self.rte_fbarray_attach = rte_acl_rte_fbarray_attach.load(self.lib)
        self.rte_fbarray_destroy = rte_acl_rte_fbarray_destroy.load(self.lib)
        self.rte_fbarray_detach = rte_acl_rte_fbarray_detach.load(self.lib)
        self.rte_fbarray_get = rte_acl_rte_fbarray_get.load(self.lib)
        self.rte_fbarray_find_idx = rte_acl_rte_fbarray_find_idx.load(self.lib)
        self.rte_fbarray_set_used = rte_acl_rte_fbarray_set_used.load(self.lib)
        self.rte_fbarray_set_free = rte_acl_rte_fbarray_set_free.load(self.lib)
        self.rte_fbarray_is_used = rte_acl_rte_fbarray_is_used.load(self.lib)
        self.rte_fbarray_find_next_free = rte_acl_rte_fbarray_find_next_free.load(self.lib)
        self.rte_fbarray_find_next_used = rte_acl_rte_fbarray_find_next_used.load(self.lib)
        self.rte_fbarray_find_next_n_free = rte_acl_rte_fbarray_find_next_n_free.load(self.lib)
        self.rte_fbarray_find_next_n_used = rte_acl_rte_fbarray_find_next_n_used.load(self.lib)
        self.rte_fbarray_find_contig_free = rte_acl_rte_fbarray_find_contig_free.load(self.lib)
        self.rte_fbarray_find_contig_used = rte_acl_rte_fbarray_find_contig_used.load(self.lib)
        self.rte_fbarray_find_prev_free = rte_acl_rte_fbarray_find_prev_free.load(self.lib)
        self.rte_fbarray_find_prev_used = rte_acl_rte_fbarray_find_prev_used.load(self.lib)
        self.rte_fbarray_find_prev_n_free = rte_acl_rte_fbarray_find_prev_n_free.load(self.lib)
        self.rte_fbarray_find_prev_n_used = rte_acl_rte_fbarray_find_prev_n_used.load(self.lib)
        self.rte_fbarray_find_rev_contig_free = rte_acl_rte_fbarray_find_rev_contig_free.load(self.lib)
        self.rte_fbarray_find_rev_contig_used = rte_acl_rte_fbarray_find_rev_contig_used.load(self.lib)
        self.rte_fbarray_find_biggest_free = rte_acl_rte_fbarray_find_biggest_free.load(self.lib)
        self.rte_fbarray_find_biggest_used = rte_acl_rte_fbarray_find_biggest_used.load(self.lib)
        self.rte_fbarray_find_rev_biggest_free = rte_acl_rte_fbarray_find_rev_biggest_free.load(self.lib)
        self.rte_fbarray_find_rev_biggest_used = rte_acl_rte_fbarray_find_rev_biggest_used.load(self.lib)
        self.rte_fbarray_dump_metadata = rte_acl_rte_fbarray_dump_metadata.load(self.lib)
        self.rte_mem_lock_page = rte_acl_rte_mem_lock_page.load(self.lib)
        self.rte_mem_virt2phy = rte_acl_rte_mem_virt2phy.load(self.lib)
        self.rte_mem_virt2iova = rte_acl_rte_mem_virt2iova.load(self.lib)
        self.rte_mem_iova2virt = rte_acl_rte_mem_iova2virt.load(self.lib)
        self.rte_mem_virt2memseg = rte_acl_rte_mem_virt2memseg.load(self.lib)
        self.rte_mem_virt2memseg_list = rte_acl_rte_mem_virt2memseg_list.load(self.lib)
        self.rte_memseg_walk = rte_acl_rte_memseg_walk.load(self.lib)
        self.rte_memseg_contig_walk = rte_acl_rte_memseg_contig_walk.load(self.lib)
        self.rte_memseg_walk_thread_unsafe = rte_acl_rte_memseg_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_contig_walk_thread_unsafe = rte_acl_rte_memseg_contig_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_list_walk_thread_unsafe = rte_acl_rte_memseg_list_walk_thread_unsafe.load(self.lib)
        self.rte_memseg_get_fd = rte_acl_rte_memseg_get_fd.load(self.lib)
        self.rte_memseg_get_fd_thread_unsafe = rte_acl_rte_memseg_get_fd_thread_unsafe.load(self.lib)
        self.rte_memseg_get_fd_offset = rte_acl_rte_memseg_get_fd_offset.load(self.lib)
        self.rte_memseg_get_fd_offset_thread_unsafe = rte_acl_rte_memseg_get_fd_offset_thread_unsafe.load(self.lib)
        self.rte_extmem_register = rte_acl_rte_extmem_register.load(self.lib)
        self.rte_extmem_unregister = rte_acl_rte_extmem_unregister.load(self.lib)
        self.rte_extmem_attach = rte_acl_rte_extmem_attach.load(self.lib)
        self.rte_extmem_detach = rte_acl_rte_extmem_detach.load(self.lib)
        self.rte_dump_physmem_layout = rte_acl_rte_dump_physmem_layout.load(self.lib)
        self.rte_eal_get_physmem_size = rte_acl_rte_eal_get_physmem_size.load(self.lib)
        self.rte_memory_get_nchannel = rte_acl_rte_memory_get_nchannel.load(self.lib)
        self.rte_memory_get_nrank = rte_acl_rte_memory_get_nrank.load(self.lib)
        self.rte_mem_check_dma_mask = rte_acl_rte_mem_check_dma_mask.load(self.lib)
        self.rte_mem_check_dma_mask_thread_unsafe = rte_acl_rte_mem_check_dma_mask_thread_unsafe.load(self.lib)
        self.rte_mem_set_dma_mask = rte_acl_rte_mem_set_dma_mask.load(self.lib)
        self.rte_eal_using_phys_addrs = rte_acl_rte_eal_using_phys_addrs.load(self.lib)
        self.rte_mem_event_callback_register = rte_acl_rte_mem_event_callback_register.load(self.lib)
        self.rte_mem_event_callback_unregister = rte_acl_rte_mem_event_callback_unregister.load(self.lib)
        self.rte_mem_alloc_validator_register = rte_acl_rte_mem_alloc_validator_register.load(self.lib)
        self.rte_mem_alloc_validator_unregister = rte_acl_rte_mem_alloc_validator_unregister.load(self.lib)
        self.rte_memzero_explicit = rte_acl_rte_memzero_explicit.load(self.lib)
        self.rte_free = rte_acl_rte_free.load(self.lib)
        self.rte_free_sensitive = rte_acl_rte_free_sensitive.load(self.lib)
        self.rte_malloc = rte_acl_rte_malloc.load(self.lib)
        self.rte_zmalloc = rte_acl_rte_zmalloc.load(self.lib)
        self.rte_calloc = rte_acl_rte_calloc.load(self.lib)
        self.rte_realloc = rte_acl_rte_realloc.load(self.lib)
        self.rte_realloc_socket = rte_acl_rte_realloc_socket.load(self.lib)
        self.rte_malloc_socket = rte_acl_rte_malloc_socket.load(self.lib)
        self.rte_zmalloc_socket = rte_acl_rte_zmalloc_socket.load(self.lib)
        self.rte_calloc_socket = rte_acl_rte_calloc_socket.load(self.lib)
        self.rte_malloc_validate = rte_acl_rte_malloc_validate.load(self.lib)
        self.rte_malloc_get_socket_stats = rte_acl_rte_malloc_get_socket_stats.load(self.lib)
        self.rte_malloc_heap_memory_add = rte_acl_rte_malloc_heap_memory_add.load(self.lib)
        self.rte_malloc_heap_memory_remove = rte_acl_rte_malloc_heap_memory_remove.load(self.lib)
        self.rte_malloc_heap_memory_attach = rte_acl_rte_malloc_heap_memory_attach.load(self.lib)
        self.rte_malloc_heap_memory_detach = rte_acl_rte_malloc_heap_memory_detach.load(self.lib)
        self.rte_malloc_heap_create = rte_acl_rte_malloc_heap_create.load(self.lib)
        self.rte_malloc_heap_destroy = rte_acl_rte_malloc_heap_destroy.load(self.lib)
        self.rte_malloc_heap_get_socket = rte_acl_rte_malloc_heap_get_socket.load(self.lib)
        self.rte_malloc_heap_socket_is_external = rte_acl_rte_malloc_heap_socket_is_external.load(self.lib)
        self.rte_malloc_dump_stats = rte_acl_rte_malloc_dump_stats.load(self.lib)
        self.rte_malloc_dump_heaps = rte_acl_rte_malloc_dump_heaps.load(self.lib)
        self.rte_malloc_virt2iova = rte_acl_rte_malloc_virt2iova.load(self.lib)
        self.clock = rte_acl_clock.load(self.lib)
        self.time = rte_acl_time.load(self.lib)
        self.difftime = rte_acl_difftime.load(self.lib)
        self.mktime = rte_acl_mktime.load(self.lib)
        self.strftime = rte_acl_strftime.load(self.lib)
        self.strftime_l = rte_acl_strftime_l.load(self.lib)
        self.gmtime = rte_acl_gmtime.load(self.lib)
        self.localtime = rte_acl_localtime.load(self.lib)
        self.gmtime_r = rte_acl_gmtime_r.load(self.lib)
        self.localtime_r = rte_acl_localtime_r.load(self.lib)
        self.asctime = rte_acl_asctime.load(self.lib)
        self.ctime = rte_acl_ctime.load(self.lib)
        self.asctime_r = rte_acl_asctime_r.load(self.lib)
        self.ctime_r = rte_acl_ctime_r.load(self.lib)
        self.tzset = rte_acl_tzset.load(self.lib)
        self.timegm = rte_acl_timegm.load(self.lib)
        self.timelocal = rte_acl_timelocal.load(self.lib)
        self.dysize = rte_acl_dysize.load(self.lib)
        self.nanosleep = rte_acl_nanosleep.load(self.lib)
        self.clock_getres = rte_acl_clock_getres.load(self.lib)
        self.clock_gettime = rte_acl_clock_gettime.load(self.lib)
        self.clock_settime = rte_acl_clock_settime.load(self.lib)
        self.clock_nanosleep = rte_acl_clock_nanosleep.load(self.lib)
        self.clock_getcpuclockid = rte_acl_clock_getcpuclockid.load(self.lib)
        self.timer_create = rte_acl_timer_create.load(self.lib)
        self.timer_delete = rte_acl_timer_delete.load(self.lib)
        self.timer_settime = rte_acl_timer_settime.load(self.lib)
        self.timer_gettime = rte_acl_timer_gettime.load(self.lib)
        self.timer_getoverrun = rte_acl_timer_getoverrun.load(self.lib)
        self.timespec_get = rte_acl_timespec_get.load(self.lib)
        self.rte_uuid_is_null = rte_acl_rte_uuid_is_null.load(self.lib)
        self.rte_uuid_copy = rte_acl_rte_uuid_copy.load(self.lib)
        self.rte_uuid_compare = rte_acl_rte_uuid_compare.load(self.lib)
        self.rte_uuid_parse = rte_acl_rte_uuid_parse.load(self.lib)
        self.rte_uuid_unparse = rte_acl_rte_uuid_unparse.load(self.lib)
        self.rte_eal_process_type = rte_acl_rte_eal_process_type.load(self.lib)
        self.rte_eal_iopl_init = rte_acl_rte_eal_iopl_init.load(self.lib)
        self.rte_eal_init = rte_acl_rte_eal_init.load(self.lib)
        self.rte_eal_cleanup = rte_acl_rte_eal_cleanup.load(self.lib)
        self.rte_eal_primary_proc_alive = rte_acl_rte_eal_primary_proc_alive.load(self.lib)
        self.rte_mp_disable = rte_acl_rte_mp_disable.load(self.lib)
        self.rte_mp_action_register = rte_acl_rte_mp_action_register.load(self.lib)
        self.rte_mp_action_unregister = rte_acl_rte_mp_action_unregister.load(self.lib)
        self.rte_mp_sendmsg = rte_acl_rte_mp_sendmsg.load(self.lib)
        self.rte_mp_request_sync = rte_acl_rte_mp_request_sync.load(self.lib)
        self.rte_mp_request_async = rte_acl_rte_mp_request_async.load(self.lib)
        self.rte_set_application_usage_hook = rte_acl_rte_set_application_usage_hook.load(self.lib)
        self.rte_eal_has_hugepages = rte_acl_rte_eal_has_hugepages.load(self.lib)
        self.rte_eal_has_pci = rte_acl_rte_eal_has_pci.load(self.lib)
        self.rte_eal_create_uio_dev = rte_acl_rte_eal_create_uio_dev.load(self.lib)
        self.rte_eal_vfio_intr_mode = rte_acl_rte_eal_vfio_intr_mode.load(self.lib)
        self.rte_eal_vfio_get_vf_token = rte_acl_rte_eal_vfio_get_vf_token.load(self.lib)
        self.rte_sys_gettid = rte_acl_rte_sys_gettid.load(self.lib)
        self.rte_gettid = rte_acl_rte_gettid.load(self.lib)
        self.rte_eal_get_baseaddr = rte_acl_rte_eal_get_baseaddr.load(self.lib)
        self.rte_eal_iova_mode = rte_acl_rte_eal_iova_mode.load(self.lib)
        self.rte_eal_mbuf_user_pool_ops = rte_acl_rte_eal_mbuf_user_pool_ops.load(self.lib)
        self.rte_eal_get_runtime_dir = rte_acl_rte_eal_get_runtime_dir.load(self.lib)
        self.rte_eal_parse_coremask = rte_acl_rte_eal_parse_coremask.load(self.lib)
        self.rte_strerror = rte_acl_rte_strerror.load(self.lib)
        self.rte_strsplit = rte_acl_rte_strsplit.load(self.lib)
        self.rte_strlcpy = rte_acl_rte_strlcpy.load(self.lib)
        self.rte_strlcat = rte_acl_rte_strlcat.load(self.lib)
        self.rte_strscpy = rte_acl_rte_strscpy.load(self.lib)
        self.rte_str_skip_leading_spaces = rte_acl_rte_str_skip_leading_spaces.load(self.lib)
        self.rte_acl_free = rte_acl_rte_acl_free.load(self.lib)
        self.rte_acl_create = rte_acl_rte_acl_create.load(self.lib)
        self.rte_acl_find_existing = rte_acl_rte_acl_find_existing.load(self.lib)
        self.rte_acl_add_rules = rte_acl_rte_acl_add_rules.load(self.lib)
        self.rte_acl_reset_rules = rte_acl_rte_acl_reset_rules.load(self.lib)
        self.rte_acl_build = rte_acl_rte_acl_build.load(self.lib)
        self.rte_acl_reset = rte_acl_rte_acl_reset.load(self.lib)
        self.rte_acl_classify = rte_acl_rte_acl_classify.load(self.lib)
        self.rte_acl_set_ctx_classify = rte_acl_rte_acl_set_ctx_classify.load(self.lib)
        self.rte_acl_dump = rte_acl_rte_acl_dump.load(self.lib)
        self.rte_acl_list_dump = rte_acl_rte_acl_list_dump.load(self.lib)

