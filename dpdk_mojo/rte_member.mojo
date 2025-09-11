
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
struct anonomous_record_859(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_859

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
alias __gwchar_t = UInt32
struct anonomous_record_860(Copyable & Movable):
	var quot : ffi.c_long

	var rem : ffi.c_long

alias imaxdiv_t = anonomous_record_860

alias imaxabs = fn (intmax_t) -> intmax_t
alias imaxdiv = fn (intmax_t, intmax_t) -> imaxdiv_t
alias strtoimax = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> intmax_t
alias strtoumax = fn (read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> uintmax_t
alias wcstoimax = fn (read UnsafePointer[__gwchar_t], UnsafePointer[UnsafePointer[__gwchar_t]], Int32) -> intmax_t
alias wcstoumax = fn (read UnsafePointer[__gwchar_t], UnsafePointer[UnsafePointer[__gwchar_t]], Int32) -> uintmax_t
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
struct anonomous_record_861(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_861

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
	# {"id":"0x382a44f0","inner":[{"id":"0x380f6020","inner":[{"id":"0x380f52e0","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"void *[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Generic marker for any place in a structure. 

alias RTE_MARKER8 = 	# # Node: PlaceHolder()
	# {"id":"0x382a4680","inner":[{"decl":{"id":"0x381f5988","kind":"TypedefDecl","name":"uint8_t"},"id":"0x382a45e0","inner":[{"decl":{"id":"0x381994b0","kind":"TypedefDecl","name":"__uint8_t"},"id":"0x381eaea0","inner":[{"id":"0x380f53e0","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"TypedefType","type":{"qualType":"__uint8_t"}}],"kind":"TypedefType","type":{"qualType":"uint8_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint8_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 1B alignment in a structure. 

alias RTE_MARKER16 = 	# # Node: PlaceHolder()
	# {"id":"0x382a47e0","inner":[{"decl":{"id":"0x381f59f0","kind":"TypedefDecl","name":"uint16_t"},"id":"0x38271fc0","inner":[{"decl":{"id":"0x38199590","kind":"TypedefDecl","name":"__uint16_t"},"id":"0x381eafc0","inner":[{"id":"0x380f5400","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"TypedefType","type":{"qualType":"__uint16_t"}}],"kind":"TypedefType","type":{"qualType":"uint16_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint16_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 2B alignment in a structure. 

alias RTE_MARKER32 = 	# # Node: PlaceHolder()
	# {"id":"0x382a4940","inner":[{"decl":{"id":"0x381f5a58","kind":"TypedefDecl","name":"uint32_t"},"id":"0x38271f30","inner":[{"decl":{"id":"0x38199670","kind":"TypedefDecl","name":"__uint32_t"},"id":"0x381eb0e0","inner":[{"id":"0x380f5420","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"__uint32_t"}}],"kind":"TypedefType","type":{"qualType":"uint32_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint32_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 4B alignment in a structure. 

alias RTE_MARKER64 = 	# # Node: PlaceHolder()
	# {"id":"0x382a4aa0","inner":[{"decl":{"id":"0x381f5ac0","kind":"TypedefDecl","name":"uint64_t"},"id":"0x38271ea0","inner":[{"decl":{"id":"0x38199750","kind":"TypedefDecl","name":"__uint64_t"},"id":"0x381eb200","inner":[{"id":"0x380f5440","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uint64_t"}}],"kind":"TypedefType","type":{"qualType":"uint64_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint64_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 8B alignment in a structure. 

alias rte_str_to_size = fn (read UnsafePointer[Int8]) -> ffi.c_ulong_long
alias rte_size_to_str = fn (UnsafePointer[Int8], Int32, ffi.c_ulong_long, Bool, read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_exit = fn (Int32, read *UnsafePointer[Int8]) -> NoneType
alias member_set_t = uint16_t
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The set ID type that stored internally in hash table based set summary. 

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
alias va_list = __builtin_va_list
alias __gnuc_va_list = __builtin_va_list
alias anonomous_record_862 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_863(Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_862

alias __mbstate_t = anonomous_record_863

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
alias __rte_jhash_2hashes = fn (read OpaquePointer, ffi.c_ulong, UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong], UInt32) -> NoneType
alias rte_jhash_2hashes = fn (read OpaquePointer, ffi.c_ulong, UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong]) -> NoneType
alias rte_jhash_32b_2hashes = fn (read UnsafePointer[ffi.c_ulong], ffi.c_ulong, UnsafePointer[ffi.c_ulong], UnsafePointer[ffi.c_ulong]) -> NoneType
alias rte_jhash = fn (read OpaquePointer, ffi.c_ulong, ffi.c_ulong) -> ffi.c_ulong
alias rte_jhash_32b = fn (read UnsafePointer[ffi.c_ulong], ffi.c_ulong, ffi.c_ulong) -> ffi.c_ulong
alias __rte_jhash_3words = fn (ffi.c_ulong, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> ffi.c_ulong
alias rte_jhash_3words = fn (ffi.c_ulong, ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> ffi.c_ulong
alias rte_jhash_2words = fn (ffi.c_ulong, ffi.c_ulong, ffi.c_ulong) -> ffi.c_ulong
alias rte_jhash_1word = fn (ffi.c_ulong, ffi.c_ulong) -> ffi.c_ulong
struct rte_member_setsum(Copyable & Movable):
# # Node: PlaceHolder()
# {"closeName":"","id":"0x38358c10","inner":[{"id":"0x38358c60","kind":"VerbatimBlockLineComment","loc":{"col":14,"offset":4310,"tokLen":0},"range":{"begin":{"col":14,"offset":4310,"tokLen":0},"end":{"col":37,"offset":4333,"tokLen":1}},"text":" setsummary structure. "},{"id":"0x38358c80","kind":"VerbatimBlockLineComment","loc":{"col":39,"offset":4335,"tokLen":0},"range":{"begin":{"col":39,"offset":4335,"tokLen":0},"end":{"col":39,"offset":4335,"tokLen":0}},"text":""}],"kind":"VerbatimBlockComment","loc":{"col":6,"offset":4302,"tokLen":8},"name":"internal","range":{"begin":{"col":5,"offset":4301,"tokLen":1},"end":{"col":14,"offset":4310,"tokLen":0}}}

	pass
struct rte_member_parameters(Copyable & Movable):

	pass
struct rte_member_setsum_type(Copyable & Movable):

	alias RTE_MEMBER_TYPE_HT = 0

	alias RTE_MEMBER_TYPE_VBF = 1

	alias RTE_MEMBER_TYPE_SKETCH = 2

	alias RTE_MEMBER_NUM_TYPE = 3

struct rte_member_sig_compare_function(Copyable & Movable):
# # Node: PlaceHolder()
# {"closeName":"","id":"0x383590c0","inner":[{"id":"0x38359110","kind":"VerbatimBlockLineComment","loc":{"col":14,"offset":4711,"tokLen":0},"range":{"begin":{"col":14,"offset":4711,"tokLen":0},"end":{"col":52,"offset":4749,"tokLen":1}},"text":" compare function for different arch. "},{"id":"0x38359130","kind":"VerbatimBlockLineComment","loc":{"col":54,"offset":4751,"tokLen":0},"range":{"begin":{"col":54,"offset":4751,"tokLen":0},"end":{"col":54,"offset":4751,"tokLen":0}},"text":""}],"kind":"VerbatimBlockComment","loc":{"col":6,"offset":4703,"tokLen":8},"name":"internal","range":{"begin":{"col":5,"offset":4702,"tokLen":1},"end":{"col":14,"offset":4711,"tokLen":0}}}

	alias RTE_MEMBER_COMPARE_SCALAR = 0

	alias RTE_MEMBER_COMPARE_AVX2 = 1

	alias RTE_MEMBER_COMPARE_NUM = 2

alias sketch_update_fn_t = fn(read UnsafePointer[rte_member_setsum], read OpaquePointer, ffi.c_ulong) -> NoneType
alias sketch_lookup_fn_t = fn(read UnsafePointer[rte_member_setsum], read OpaquePointer) -> ffi.c_ulong_long
alias sketch_delete_fn_t = fn(read UnsafePointer[rte_member_setsum], read OpaquePointer) -> NoneType
alias rte_member_find_existing = fn (read UnsafePointer[Int8]) -> UnsafePointer[rte_member_setsum]
alias rte_member_free = fn (UnsafePointer[rte_member_setsum]) -> NoneType
alias rte_member_create = fn (read UnsafePointer[rte_member_parameters]) -> UnsafePointer[rte_member_setsum]
alias rte_member_lookup = fn (read UnsafePointer[rte_member_setsum], read OpaquePointer, UnsafePointer[member_set_t]) -> Int32
alias rte_member_lookup_bulk = fn (read UnsafePointer[rte_member_setsum], read UnsafePointer[OpaquePointer], ffi.c_ulong, UnsafePointer[member_set_t]) -> Int32
alias rte_member_lookup_multi = fn (read UnsafePointer[rte_member_setsum], read OpaquePointer, ffi.c_ulong, UnsafePointer[member_set_t]) -> Int32
alias rte_member_lookup_multi_bulk = fn (read UnsafePointer[rte_member_setsum], read UnsafePointer[OpaquePointer], ffi.c_ulong, ffi.c_ulong, UnsafePointer[ffi.c_ulong], UnsafePointer[member_set_t]) -> Int32
alias rte_member_add = fn (read UnsafePointer[rte_member_setsum], read OpaquePointer, member_set_t) -> Int32
alias rte_member_add_byte_count = fn (read UnsafePointer[rte_member_setsum], read OpaquePointer, ffi.c_ulong) -> Int32
alias rte_member_query_count = fn (read UnsafePointer[rte_member_setsum], read OpaquePointer, UnsafePointer[ffi.c_ulong_long]) -> Int32
alias rte_member_report_heavyhitter = fn (read UnsafePointer[rte_member_setsum], UnsafePointer[OpaquePointer], UnsafePointer[ffi.c_ulong_long]) -> Int32
alias rte_member_reset = fn (read UnsafePointer[rte_member_setsum]) -> NoneType
alias rte_member_delete = fn (read UnsafePointer[rte_member_setsum], read OpaquePointer, member_set_t) -> Int32


alias rte_member_imaxabs = ExternalFunction['imaxabs', imaxabs]
alias rte_member_imaxdiv = ExternalFunction['imaxdiv', imaxdiv]
alias rte_member_strtoimax = ExternalFunction['strtoimax', strtoimax]
alias rte_member_strtoumax = ExternalFunction['strtoumax', strtoumax]
alias rte_member_wcstoimax = ExternalFunction['wcstoimax', wcstoimax]
alias rte_member_wcstoumax = ExternalFunction['wcstoumax', wcstoumax]
alias rte_member_alloca = ExternalFunction['alloca', alloca]
alias rte_member_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_member_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_member_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_member_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_member_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_member_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_member_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_member_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_member_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_member_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_member_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_member_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_member_memcpy = ExternalFunction['memcpy', memcpy]
alias rte_member_memmove = ExternalFunction['memmove', memmove]
alias rte_member_memccpy = ExternalFunction['memccpy', memccpy]
alias rte_member_memset = ExternalFunction['memset', memset]
alias rte_member_memcmp = ExternalFunction['memcmp', memcmp]
alias rte_member_memchr = ExternalFunction['memchr', memchr]
alias rte_member_strcpy = ExternalFunction['strcpy', strcpy]
alias rte_member_strncpy = ExternalFunction['strncpy', strncpy]
alias rte_member_strcat = ExternalFunction['strcat', strcat]
alias rte_member_strncat = ExternalFunction['strncat', strncat]
alias rte_member_strcmp = ExternalFunction['strcmp', strcmp]
alias rte_member_strncmp = ExternalFunction['strncmp', strncmp]
alias rte_member_strcoll = ExternalFunction['strcoll', strcoll]
alias rte_member_strxfrm = ExternalFunction['strxfrm', strxfrm]
alias rte_member_strcoll_l = ExternalFunction['strcoll_l', strcoll_l]
alias rte_member_strxfrm_l = ExternalFunction['strxfrm_l', strxfrm_l]
alias rte_member_strdup = ExternalFunction['strdup', strdup]
alias rte_member_strndup = ExternalFunction['strndup', strndup]
alias rte_member_strchr = ExternalFunction['strchr', strchr]
alias rte_member_strrchr = ExternalFunction['strrchr', strrchr]
alias rte_member_strcspn = ExternalFunction['strcspn', strcspn]
alias rte_member_strspn = ExternalFunction['strspn', strspn]
alias rte_member_strpbrk = ExternalFunction['strpbrk', strpbrk]
alias rte_member_strstr = ExternalFunction['strstr', strstr]
alias rte_member_strtok = ExternalFunction['strtok', strtok]
alias rte_member_strtok_r = ExternalFunction['strtok_r', strtok_r]
alias rte_member_strlen = ExternalFunction['strlen', strlen]
alias rte_member_strnlen = ExternalFunction['strnlen', strnlen]
alias rte_member_strerror = ExternalFunction['strerror', strerror]
alias rte_member_strerror_r = ExternalFunction['strerror_r', strerror_r]
alias rte_member_strerror_l = ExternalFunction['strerror_l', strerror_l]
alias rte_member_bcmp = ExternalFunction['bcmp', bcmp]
alias rte_member_bcopy = ExternalFunction['bcopy', bcopy]
alias rte_member_bzero = ExternalFunction['bzero', bzero]
alias rte_member_index = ExternalFunction['index', index]
alias rte_member_rindex = ExternalFunction['rindex', rindex]
alias rte_member_ffs = ExternalFunction['ffs', ffs]
alias rte_member_ffsl = ExternalFunction['ffsl', ffsl]
alias rte_member_ffsll = ExternalFunction['ffsll', ffsll]
alias rte_member_strcasecmp = ExternalFunction['strcasecmp', strcasecmp]
alias rte_member_strncasecmp = ExternalFunction['strncasecmp', strncasecmp]
alias rte_member_strcasecmp_l = ExternalFunction['strcasecmp_l', strcasecmp_l]
alias rte_member_strncasecmp_l = ExternalFunction['strncasecmp_l', strncasecmp_l]
alias rte_member_explicit_bzero = ExternalFunction['explicit_bzero', explicit_bzero]
alias rte_member_strsep = ExternalFunction['strsep', strsep]
alias rte_member_strsignal = ExternalFunction['strsignal', strsignal]
alias rte_member_stpcpy = ExternalFunction['stpcpy', stpcpy]
alias rte_member_stpncpy = ExternalFunction['stpncpy', stpncpy]
alias rte_member_remove = ExternalFunction['remove', remove]
alias rte_member_rename = ExternalFunction['rename', rename]
alias rte_member_renameat = ExternalFunction['renameat', renameat]
alias rte_member_fclose = ExternalFunction['fclose', fclose]
alias rte_member_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias rte_member_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias rte_member_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias rte_member_tempnam = ExternalFunction['tempnam', tempnam]
alias rte_member_fflush = ExternalFunction['fflush', fflush]
alias rte_member_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias rte_member_fopen = ExternalFunction['fopen', fopen]
alias rte_member_freopen = ExternalFunction['freopen', freopen]
alias rte_member_fdopen = ExternalFunction['fdopen', fdopen]
alias rte_member_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias rte_member_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias rte_member_setbuf = ExternalFunction['setbuf', setbuf]
alias rte_member_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias rte_member_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias rte_member_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias rte_member_fprintf = ExternalFunction['fprintf', fprintf]
alias rte_member_printf = ExternalFunction['printf', printf]
alias rte_member_sprintf = ExternalFunction['sprintf', sprintf]
alias rte_member_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias rte_member_vprintf = ExternalFunction['vprintf', vprintf]
alias rte_member_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias rte_member_snprintf = ExternalFunction['snprintf', snprintf]
alias rte_member_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias rte_member_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias rte_member_dprintf = ExternalFunction['dprintf', dprintf]
alias rte_member_fscanf = ExternalFunction['fscanf', fscanf]
alias rte_member_scanf = ExternalFunction['scanf', scanf]
alias rte_member_sscanf = ExternalFunction['sscanf', sscanf]
alias rte_member_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias rte_member_vscanf = ExternalFunction['vscanf', vscanf]
alias rte_member_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias rte_member_fgetc = ExternalFunction['fgetc', fgetc]
alias rte_member_getc = ExternalFunction['getc', getc]
alias rte_member_getchar = ExternalFunction['getchar', getchar]
alias rte_member_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias rte_member_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias rte_member_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias rte_member_fputc = ExternalFunction['fputc', fputc]
alias rte_member_putc = ExternalFunction['putc', putc]
alias rte_member_putchar = ExternalFunction['putchar', putchar]
alias rte_member_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias rte_member_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias rte_member_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias rte_member_getw = ExternalFunction['getw', getw]
alias rte_member_putw = ExternalFunction['putw', putw]
alias rte_member_fgets = ExternalFunction['fgets', fgets]
alias rte_member_getdelim = ExternalFunction['getdelim', getdelim]
alias rte_member_getline = ExternalFunction['getline', getline]
alias rte_member_fputs = ExternalFunction['fputs', fputs]
alias rte_member_puts = ExternalFunction['puts', puts]
alias rte_member_ungetc = ExternalFunction['ungetc', ungetc]
alias rte_member_fread = ExternalFunction['fread', fread]
alias rte_member_fwrite = ExternalFunction['fwrite', fwrite]
alias rte_member_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias rte_member_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias rte_member_fseek = ExternalFunction['fseek', fseek]
alias rte_member_ftell = ExternalFunction['ftell', ftell]
alias rte_member_rewind = ExternalFunction['rewind', rewind]
alias rte_member_fseeko = ExternalFunction['fseeko', fseeko]
alias rte_member_ftello = ExternalFunction['ftello', ftello]
alias rte_member_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias rte_member_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias rte_member_clearerr = ExternalFunction['clearerr', clearerr]
alias rte_member_feof = ExternalFunction['feof', feof]
alias rte_member_ferror = ExternalFunction['ferror', ferror]
alias rte_member_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias rte_member_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias rte_member_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias rte_member_perror = ExternalFunction['perror', perror]
alias rte_member_fileno = ExternalFunction['fileno', fileno]
alias rte_member_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias rte_member_pclose = ExternalFunction['pclose', pclose]
alias rte_member_popen = ExternalFunction['popen', popen]
alias rte_member_ctermid = ExternalFunction['ctermid', ctermid]
alias rte_member_flockfile = ExternalFunction['flockfile', flockfile]
alias rte_member_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias rte_member_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias rte_member_rte_openlog_stream = ExternalFunction['rte_openlog_stream', rte_openlog_stream]
alias rte_member_rte_log_get_stream = ExternalFunction['rte_log_get_stream', rte_log_get_stream]
alias rte_member_rte_log_set_global_level = ExternalFunction['rte_log_set_global_level', rte_log_set_global_level]
alias rte_member_rte_log_get_global_level = ExternalFunction['rte_log_get_global_level', rte_log_get_global_level]
alias rte_member_rte_log_get_level = ExternalFunction['rte_log_get_level', rte_log_get_level]
alias rte_member_rte_log_can_log = ExternalFunction['rte_log_can_log', rte_log_can_log]
alias rte_member_rte_log_set_level_pattern = ExternalFunction['rte_log_set_level_pattern', rte_log_set_level_pattern]
alias rte_member_rte_log_set_level_regexp = ExternalFunction['rte_log_set_level_regexp', rte_log_set_level_regexp]
alias rte_member_rte_log_set_level = ExternalFunction['rte_log_set_level', rte_log_set_level]
alias rte_member_rte_log_cur_msg_loglevel = ExternalFunction['rte_log_cur_msg_loglevel', rte_log_cur_msg_loglevel]
alias rte_member_rte_log_cur_msg_logtype = ExternalFunction['rte_log_cur_msg_logtype', rte_log_cur_msg_logtype]
alias rte_member_rte_log_register = ExternalFunction['rte_log_register', rte_log_register]
alias rte_member_rte_log_register_type_and_pick_level = ExternalFunction['rte_log_register_type_and_pick_level', rte_log_register_type_and_pick_level]
alias rte_member_rte_log_list_types = ExternalFunction['rte_log_list_types', rte_log_list_types]
alias rte_member_rte_log_dump = ExternalFunction['rte_log_dump', rte_log_dump]
alias rte_member_rte_log = ExternalFunction['rte_log', rte_log]
alias rte_member_rte_vlog = ExternalFunction['rte_vlog', rte_vlog]
alias rte_member_rte_constant_bswap16 = ExternalFunction['rte_constant_bswap16', rte_constant_bswap16]
alias rte_member_rte_constant_bswap32 = ExternalFunction['rte_constant_bswap32', rte_constant_bswap32]
alias rte_member_rte_constant_bswap64 = ExternalFunction['rte_constant_bswap64', rte_constant_bswap64]
alias rte_member_rte_jhash_2hashes = ExternalFunction['rte_jhash_2hashes', rte_jhash_2hashes]
alias rte_member_rte_jhash_32b_2hashes = ExternalFunction['rte_jhash_32b_2hashes', rte_jhash_32b_2hashes]
alias rte_member_rte_jhash = ExternalFunction['rte_jhash', rte_jhash]
alias rte_member_rte_jhash_32b = ExternalFunction['rte_jhash_32b', rte_jhash_32b]
alias rte_member_rte_jhash_3words = ExternalFunction['rte_jhash_3words', rte_jhash_3words]
alias rte_member_rte_jhash_2words = ExternalFunction['rte_jhash_2words', rte_jhash_2words]
alias rte_member_rte_jhash_1word = ExternalFunction['rte_jhash_1word', rte_jhash_1word]
alias rte_member_rte_member_find_existing = ExternalFunction['rte_member_find_existing', rte_member_find_existing]
alias rte_member_rte_member_free = ExternalFunction['rte_member_free', rte_member_free]
alias rte_member_rte_member_create = ExternalFunction['rte_member_create', rte_member_create]
alias rte_member_rte_member_lookup = ExternalFunction['rte_member_lookup', rte_member_lookup]
alias rte_member_rte_member_lookup_bulk = ExternalFunction['rte_member_lookup_bulk', rte_member_lookup_bulk]
alias rte_member_rte_member_lookup_multi = ExternalFunction['rte_member_lookup_multi', rte_member_lookup_multi]
alias rte_member_rte_member_lookup_multi_bulk = ExternalFunction['rte_member_lookup_multi_bulk', rte_member_lookup_multi_bulk]
alias rte_member_rte_member_add = ExternalFunction['rte_member_add', rte_member_add]
alias rte_member_rte_member_add_byte_count = ExternalFunction['rte_member_add_byte_count', rte_member_add_byte_count]
alias rte_member_rte_member_query_count = ExternalFunction['rte_member_query_count', rte_member_query_count]
alias rte_member_rte_member_report_heavyhitter = ExternalFunction['rte_member_report_heavyhitter', rte_member_report_heavyhitter]
alias rte_member_rte_member_reset = ExternalFunction['rte_member_reset', rte_member_reset]
alias rte_member_rte_member_delete = ExternalFunction['rte_member_delete', rte_member_delete]

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
struct rte_member(Copyable, Movable):
    var lib: DLHandle
    
    var imaxabs: rte_member_imaxabs.type
    var imaxdiv: rte_member_imaxdiv.type
    var strtoimax: rte_member_strtoimax.type
    var strtoumax: rte_member_strtoumax.type
    var wcstoimax: rte_member_wcstoimax.type
    var wcstoumax: rte_member_wcstoumax.type
    var alloca: rte_member_alloca.type
    var sched_setparam: rte_member_sched_setparam.type
    var sched_getparam: rte_member_sched_getparam.type
    var sched_setscheduler: rte_member_sched_setscheduler.type
    var sched_getscheduler: rte_member_sched_getscheduler.type
    var sched_yield: rte_member_sched_yield.type
    var sched_get_priority_max: rte_member_sched_get_priority_max.type
    var sched_get_priority_min: rte_member_sched_get_priority_min.type
    var sched_rr_get_interval: rte_member_sched_rr_get_interval.type
    var rte_is_aligned: rte_member_rte_is_aligned.type
    var rte_str_to_size: rte_member_rte_str_to_size.type
    var rte_size_to_str: rte_member_rte_size_to_str.type
    var rte_exit: rte_member_rte_exit.type
    var memcpy: rte_member_memcpy.type
    var memmove: rte_member_memmove.type
    var memccpy: rte_member_memccpy.type
    var memset: rte_member_memset.type
    var memcmp: rte_member_memcmp.type
    var memchr: rte_member_memchr.type
    var strcpy: rte_member_strcpy.type
    var strncpy: rte_member_strncpy.type
    var strcat: rte_member_strcat.type
    var strncat: rte_member_strncat.type
    var strcmp: rte_member_strcmp.type
    var strncmp: rte_member_strncmp.type
    var strcoll: rte_member_strcoll.type
    var strxfrm: rte_member_strxfrm.type
    var strcoll_l: rte_member_strcoll_l.type
    var strxfrm_l: rte_member_strxfrm_l.type
    var strdup: rte_member_strdup.type
    var strndup: rte_member_strndup.type
    var strchr: rte_member_strchr.type
    var strrchr: rte_member_strrchr.type
    var strcspn: rte_member_strcspn.type
    var strspn: rte_member_strspn.type
    var strpbrk: rte_member_strpbrk.type
    var strstr: rte_member_strstr.type
    var strtok: rte_member_strtok.type
    var strtok_r: rte_member_strtok_r.type
    var strlen: rte_member_strlen.type
    var strnlen: rte_member_strnlen.type
    var strerror: rte_member_strerror.type
    var strerror_r: rte_member_strerror_r.type
    var strerror_l: rte_member_strerror_l.type
    var bcmp: rte_member_bcmp.type
    var bcopy: rte_member_bcopy.type
    var bzero: rte_member_bzero.type
    var index: rte_member_index.type
    var rindex: rte_member_rindex.type
    var ffs: rte_member_ffs.type
    var ffsl: rte_member_ffsl.type
    var ffsll: rte_member_ffsll.type
    var strcasecmp: rte_member_strcasecmp.type
    var strncasecmp: rte_member_strncasecmp.type
    var strcasecmp_l: rte_member_strcasecmp_l.type
    var strncasecmp_l: rte_member_strncasecmp_l.type
    var explicit_bzero: rte_member_explicit_bzero.type
    var strsep: rte_member_strsep.type
    var strsignal: rte_member_strsignal.type
    var stpcpy: rte_member_stpcpy.type
    var stpncpy: rte_member_stpncpy.type
    var remove: rte_member_remove.type
    var rename: rte_member_rename.type
    var renameat: rte_member_renameat.type
    var fclose: rte_member_fclose.type
    var tmpfile: rte_member_tmpfile.type
    var tmpnam: rte_member_tmpnam.type
    var tmpnam_r: rte_member_tmpnam_r.type
    var tempnam: rte_member_tempnam.type
    var fflush: rte_member_fflush.type
    var fflush_unlocked: rte_member_fflush_unlocked.type
    var fopen: rte_member_fopen.type
    var freopen: rte_member_freopen.type
    var fdopen: rte_member_fdopen.type
    var fmemopen: rte_member_fmemopen.type
    var open_memstream: rte_member_open_memstream.type
    var setbuf: rte_member_setbuf.type
    var setvbuf: rte_member_setvbuf.type
    var setbuffer: rte_member_setbuffer.type
    var setlinebuf: rte_member_setlinebuf.type
    var fprintf: rte_member_fprintf.type
    var printf: rte_member_printf.type
    var sprintf: rte_member_sprintf.type
    var vfprintf: rte_member_vfprintf.type
    var vprintf: rte_member_vprintf.type
    var vsprintf: rte_member_vsprintf.type
    var snprintf: rte_member_snprintf.type
    var vsnprintf: rte_member_vsnprintf.type
    var vdprintf: rte_member_vdprintf.type
    var dprintf: rte_member_dprintf.type
    var fscanf: rte_member_fscanf.type
    var scanf: rte_member_scanf.type
    var sscanf: rte_member_sscanf.type
    var vfscanf: rte_member_vfscanf.type
    var vscanf: rte_member_vscanf.type
    var vsscanf: rte_member_vsscanf.type
    var fgetc: rte_member_fgetc.type
    var getc: rte_member_getc.type
    var getchar: rte_member_getchar.type
    var getc_unlocked: rte_member_getc_unlocked.type
    var getchar_unlocked: rte_member_getchar_unlocked.type
    var fgetc_unlocked: rte_member_fgetc_unlocked.type
    var fputc: rte_member_fputc.type
    var putc: rte_member_putc.type
    var putchar: rte_member_putchar.type
    var fputc_unlocked: rte_member_fputc_unlocked.type
    var putc_unlocked: rte_member_putc_unlocked.type
    var putchar_unlocked: rte_member_putchar_unlocked.type
    var getw: rte_member_getw.type
    var putw: rte_member_putw.type
    var fgets: rte_member_fgets.type
    var getdelim: rte_member_getdelim.type
    var getline: rte_member_getline.type
    var fputs: rte_member_fputs.type
    var puts: rte_member_puts.type
    var ungetc: rte_member_ungetc.type
    var fread: rte_member_fread.type
    var fwrite: rte_member_fwrite.type
    var fread_unlocked: rte_member_fread_unlocked.type
    var fwrite_unlocked: rte_member_fwrite_unlocked.type
    var fseek: rte_member_fseek.type
    var ftell: rte_member_ftell.type
    var rewind: rte_member_rewind.type
    var fseeko: rte_member_fseeko.type
    var ftello: rte_member_ftello.type
    var fgetpos: rte_member_fgetpos.type
    var fsetpos: rte_member_fsetpos.type
    var clearerr: rte_member_clearerr.type
    var feof: rte_member_feof.type
    var ferror: rte_member_ferror.type
    var clearerr_unlocked: rte_member_clearerr_unlocked.type
    var feof_unlocked: rte_member_feof_unlocked.type
    var ferror_unlocked: rte_member_ferror_unlocked.type
    var perror: rte_member_perror.type
    var fileno: rte_member_fileno.type
    var fileno_unlocked: rte_member_fileno_unlocked.type
    var pclose: rte_member_pclose.type
    var popen: rte_member_popen.type
    var ctermid: rte_member_ctermid.type
    var flockfile: rte_member_flockfile.type
    var ftrylockfile: rte_member_ftrylockfile.type
    var funlockfile: rte_member_funlockfile.type
    var rte_openlog_stream: rte_member_rte_openlog_stream.type
    var rte_log_get_stream: rte_member_rte_log_get_stream.type
    var rte_log_set_global_level: rte_member_rte_log_set_global_level.type
    var rte_log_get_global_level: rte_member_rte_log_get_global_level.type
    var rte_log_get_level: rte_member_rte_log_get_level.type
    var rte_log_can_log: rte_member_rte_log_can_log.type
    var rte_log_set_level_pattern: rte_member_rte_log_set_level_pattern.type
    var rte_log_set_level_regexp: rte_member_rte_log_set_level_regexp.type
    var rte_log_set_level: rte_member_rte_log_set_level.type
    var rte_log_cur_msg_loglevel: rte_member_rte_log_cur_msg_loglevel.type
    var rte_log_cur_msg_logtype: rte_member_rte_log_cur_msg_logtype.type
    var rte_log_register: rte_member_rte_log_register.type
    var rte_log_register_type_and_pick_level: rte_member_rte_log_register_type_and_pick_level.type
    var rte_log_list_types: rte_member_rte_log_list_types.type
    var rte_log_dump: rte_member_rte_log_dump.type
    var rte_log: rte_member_rte_log.type
    var rte_vlog: rte_member_rte_vlog.type
    var rte_constant_bswap16: rte_member_rte_constant_bswap16.type
    var rte_constant_bswap32: rte_member_rte_constant_bswap32.type
    var rte_constant_bswap64: rte_member_rte_constant_bswap64.type
    var rte_jhash_2hashes: rte_member_rte_jhash_2hashes.type
    var rte_jhash_32b_2hashes: rte_member_rte_jhash_32b_2hashes.type
    var rte_jhash: rte_member_rte_jhash.type
    var rte_jhash_32b: rte_member_rte_jhash_32b.type
    var rte_jhash_3words: rte_member_rte_jhash_3words.type
    var rte_jhash_2words: rte_member_rte_jhash_2words.type
    var rte_jhash_1word: rte_member_rte_jhash_1word.type
    var rte_member_find_existing: rte_member_rte_member_find_existing.type
    var rte_member_free: rte_member_rte_member_free.type
    var rte_member_create: rte_member_rte_member_create.type
    var rte_member_lookup: rte_member_rte_member_lookup.type
    var rte_member_lookup_bulk: rte_member_rte_member_lookup_bulk.type
    var rte_member_lookup_multi: rte_member_rte_member_lookup_multi.type
    var rte_member_lookup_multi_bulk: rte_member_rte_member_lookup_multi_bulk.type
    var rte_member_add: rte_member_rte_member_add.type
    var rte_member_add_byte_count: rte_member_rte_member_add_byte_count.type
    var rte_member_query_count: rte_member_rte_member_query_count.type
    var rte_member_report_heavyhitter: rte_member_rte_member_report_heavyhitter.type
    var rte_member_reset: rte_member_rte_member_reset.type
    var rte_member_delete: rte_member_rte_member_delete.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_member.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_member from", 'librte_member.so', ":\n", e)
            )

    
        self.imaxabs = rte_member_imaxabs.load(self.lib)
        self.imaxdiv = rte_member_imaxdiv.load(self.lib)
        self.strtoimax = rte_member_strtoimax.load(self.lib)
        self.strtoumax = rte_member_strtoumax.load(self.lib)
        self.wcstoimax = rte_member_wcstoimax.load(self.lib)
        self.wcstoumax = rte_member_wcstoumax.load(self.lib)
        self.alloca = rte_member_alloca.load(self.lib)
        self.sched_setparam = rte_member_sched_setparam.load(self.lib)
        self.sched_getparam = rte_member_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_member_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_member_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_member_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_member_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_member_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_member_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_member_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_member_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_member_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_member_rte_exit.load(self.lib)
        self.memcpy = rte_member_memcpy.load(self.lib)
        self.memmove = rte_member_memmove.load(self.lib)
        self.memccpy = rte_member_memccpy.load(self.lib)
        self.memset = rte_member_memset.load(self.lib)
        self.memcmp = rte_member_memcmp.load(self.lib)
        self.memchr = rte_member_memchr.load(self.lib)
        self.strcpy = rte_member_strcpy.load(self.lib)
        self.strncpy = rte_member_strncpy.load(self.lib)
        self.strcat = rte_member_strcat.load(self.lib)
        self.strncat = rte_member_strncat.load(self.lib)
        self.strcmp = rte_member_strcmp.load(self.lib)
        self.strncmp = rte_member_strncmp.load(self.lib)
        self.strcoll = rte_member_strcoll.load(self.lib)
        self.strxfrm = rte_member_strxfrm.load(self.lib)
        self.strcoll_l = rte_member_strcoll_l.load(self.lib)
        self.strxfrm_l = rte_member_strxfrm_l.load(self.lib)
        self.strdup = rte_member_strdup.load(self.lib)
        self.strndup = rte_member_strndup.load(self.lib)
        self.strchr = rte_member_strchr.load(self.lib)
        self.strrchr = rte_member_strrchr.load(self.lib)
        self.strcspn = rte_member_strcspn.load(self.lib)
        self.strspn = rte_member_strspn.load(self.lib)
        self.strpbrk = rte_member_strpbrk.load(self.lib)
        self.strstr = rte_member_strstr.load(self.lib)
        self.strtok = rte_member_strtok.load(self.lib)
        self.strtok_r = rte_member_strtok_r.load(self.lib)
        self.strlen = rte_member_strlen.load(self.lib)
        self.strnlen = rte_member_strnlen.load(self.lib)
        self.strerror = rte_member_strerror.load(self.lib)
        self.strerror_r = rte_member_strerror_r.load(self.lib)
        self.strerror_l = rte_member_strerror_l.load(self.lib)
        self.bcmp = rte_member_bcmp.load(self.lib)
        self.bcopy = rte_member_bcopy.load(self.lib)
        self.bzero = rte_member_bzero.load(self.lib)
        self.index = rte_member_index.load(self.lib)
        self.rindex = rte_member_rindex.load(self.lib)
        self.ffs = rte_member_ffs.load(self.lib)
        self.ffsl = rte_member_ffsl.load(self.lib)
        self.ffsll = rte_member_ffsll.load(self.lib)
        self.strcasecmp = rte_member_strcasecmp.load(self.lib)
        self.strncasecmp = rte_member_strncasecmp.load(self.lib)
        self.strcasecmp_l = rte_member_strcasecmp_l.load(self.lib)
        self.strncasecmp_l = rte_member_strncasecmp_l.load(self.lib)
        self.explicit_bzero = rte_member_explicit_bzero.load(self.lib)
        self.strsep = rte_member_strsep.load(self.lib)
        self.strsignal = rte_member_strsignal.load(self.lib)
        self.stpcpy = rte_member_stpcpy.load(self.lib)
        self.stpncpy = rte_member_stpncpy.load(self.lib)
        self.remove = rte_member_remove.load(self.lib)
        self.rename = rte_member_rename.load(self.lib)
        self.renameat = rte_member_renameat.load(self.lib)
        self.fclose = rte_member_fclose.load(self.lib)
        self.tmpfile = rte_member_tmpfile.load(self.lib)
        self.tmpnam = rte_member_tmpnam.load(self.lib)
        self.tmpnam_r = rte_member_tmpnam_r.load(self.lib)
        self.tempnam = rte_member_tempnam.load(self.lib)
        self.fflush = rte_member_fflush.load(self.lib)
        self.fflush_unlocked = rte_member_fflush_unlocked.load(self.lib)
        self.fopen = rte_member_fopen.load(self.lib)
        self.freopen = rte_member_freopen.load(self.lib)
        self.fdopen = rte_member_fdopen.load(self.lib)
        self.fmemopen = rte_member_fmemopen.load(self.lib)
        self.open_memstream = rte_member_open_memstream.load(self.lib)
        self.setbuf = rte_member_setbuf.load(self.lib)
        self.setvbuf = rte_member_setvbuf.load(self.lib)
        self.setbuffer = rte_member_setbuffer.load(self.lib)
        self.setlinebuf = rte_member_setlinebuf.load(self.lib)
        self.fprintf = rte_member_fprintf.load(self.lib)
        self.printf = rte_member_printf.load(self.lib)
        self.sprintf = rte_member_sprintf.load(self.lib)
        self.vfprintf = rte_member_vfprintf.load(self.lib)
        self.vprintf = rte_member_vprintf.load(self.lib)
        self.vsprintf = rte_member_vsprintf.load(self.lib)
        self.snprintf = rte_member_snprintf.load(self.lib)
        self.vsnprintf = rte_member_vsnprintf.load(self.lib)
        self.vdprintf = rte_member_vdprintf.load(self.lib)
        self.dprintf = rte_member_dprintf.load(self.lib)
        self.fscanf = rte_member_fscanf.load(self.lib)
        self.scanf = rte_member_scanf.load(self.lib)
        self.sscanf = rte_member_sscanf.load(self.lib)
        self.vfscanf = rte_member_vfscanf.load(self.lib)
        self.vscanf = rte_member_vscanf.load(self.lib)
        self.vsscanf = rte_member_vsscanf.load(self.lib)
        self.fgetc = rte_member_fgetc.load(self.lib)
        self.getc = rte_member_getc.load(self.lib)
        self.getchar = rte_member_getchar.load(self.lib)
        self.getc_unlocked = rte_member_getc_unlocked.load(self.lib)
        self.getchar_unlocked = rte_member_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = rte_member_fgetc_unlocked.load(self.lib)
        self.fputc = rte_member_fputc.load(self.lib)
        self.putc = rte_member_putc.load(self.lib)
        self.putchar = rte_member_putchar.load(self.lib)
        self.fputc_unlocked = rte_member_fputc_unlocked.load(self.lib)
        self.putc_unlocked = rte_member_putc_unlocked.load(self.lib)
        self.putchar_unlocked = rte_member_putchar_unlocked.load(self.lib)
        self.getw = rte_member_getw.load(self.lib)
        self.putw = rte_member_putw.load(self.lib)
        self.fgets = rte_member_fgets.load(self.lib)
        self.getdelim = rte_member_getdelim.load(self.lib)
        self.getline = rte_member_getline.load(self.lib)
        self.fputs = rte_member_fputs.load(self.lib)
        self.puts = rte_member_puts.load(self.lib)
        self.ungetc = rte_member_ungetc.load(self.lib)
        self.fread = rte_member_fread.load(self.lib)
        self.fwrite = rte_member_fwrite.load(self.lib)
        self.fread_unlocked = rte_member_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = rte_member_fwrite_unlocked.load(self.lib)
        self.fseek = rte_member_fseek.load(self.lib)
        self.ftell = rte_member_ftell.load(self.lib)
        self.rewind = rte_member_rewind.load(self.lib)
        self.fseeko = rte_member_fseeko.load(self.lib)
        self.ftello = rte_member_ftello.load(self.lib)
        self.fgetpos = rte_member_fgetpos.load(self.lib)
        self.fsetpos = rte_member_fsetpos.load(self.lib)
        self.clearerr = rte_member_clearerr.load(self.lib)
        self.feof = rte_member_feof.load(self.lib)
        self.ferror = rte_member_ferror.load(self.lib)
        self.clearerr_unlocked = rte_member_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = rte_member_feof_unlocked.load(self.lib)
        self.ferror_unlocked = rte_member_ferror_unlocked.load(self.lib)
        self.perror = rte_member_perror.load(self.lib)
        self.fileno = rte_member_fileno.load(self.lib)
        self.fileno_unlocked = rte_member_fileno_unlocked.load(self.lib)
        self.pclose = rte_member_pclose.load(self.lib)
        self.popen = rte_member_popen.load(self.lib)
        self.ctermid = rte_member_ctermid.load(self.lib)
        self.flockfile = rte_member_flockfile.load(self.lib)
        self.ftrylockfile = rte_member_ftrylockfile.load(self.lib)
        self.funlockfile = rte_member_funlockfile.load(self.lib)
        self.rte_openlog_stream = rte_member_rte_openlog_stream.load(self.lib)
        self.rte_log_get_stream = rte_member_rte_log_get_stream.load(self.lib)
        self.rte_log_set_global_level = rte_member_rte_log_set_global_level.load(self.lib)
        self.rte_log_get_global_level = rte_member_rte_log_get_global_level.load(self.lib)
        self.rte_log_get_level = rte_member_rte_log_get_level.load(self.lib)
        self.rte_log_can_log = rte_member_rte_log_can_log.load(self.lib)
        self.rte_log_set_level_pattern = rte_member_rte_log_set_level_pattern.load(self.lib)
        self.rte_log_set_level_regexp = rte_member_rte_log_set_level_regexp.load(self.lib)
        self.rte_log_set_level = rte_member_rte_log_set_level.load(self.lib)
        self.rte_log_cur_msg_loglevel = rte_member_rte_log_cur_msg_loglevel.load(self.lib)
        self.rte_log_cur_msg_logtype = rte_member_rte_log_cur_msg_logtype.load(self.lib)
        self.rte_log_register = rte_member_rte_log_register.load(self.lib)
        self.rte_log_register_type_and_pick_level = rte_member_rte_log_register_type_and_pick_level.load(self.lib)
        self.rte_log_list_types = rte_member_rte_log_list_types.load(self.lib)
        self.rte_log_dump = rte_member_rte_log_dump.load(self.lib)
        self.rte_log = rte_member_rte_log.load(self.lib)
        self.rte_vlog = rte_member_rte_vlog.load(self.lib)
        self.rte_constant_bswap16 = rte_member_rte_constant_bswap16.load(self.lib)
        self.rte_constant_bswap32 = rte_member_rte_constant_bswap32.load(self.lib)
        self.rte_constant_bswap64 = rte_member_rte_constant_bswap64.load(self.lib)
        self.rte_jhash_2hashes = rte_member_rte_jhash_2hashes.load(self.lib)
        self.rte_jhash_32b_2hashes = rte_member_rte_jhash_32b_2hashes.load(self.lib)
        self.rte_jhash = rte_member_rte_jhash.load(self.lib)
        self.rte_jhash_32b = rte_member_rte_jhash_32b.load(self.lib)
        self.rte_jhash_3words = rte_member_rte_jhash_3words.load(self.lib)
        self.rte_jhash_2words = rte_member_rte_jhash_2words.load(self.lib)
        self.rte_jhash_1word = rte_member_rte_jhash_1word.load(self.lib)
        self.rte_member_find_existing = rte_member_rte_member_find_existing.load(self.lib)
        self.rte_member_free = rte_member_rte_member_free.load(self.lib)
        self.rte_member_create = rte_member_rte_member_create.load(self.lib)
        self.rte_member_lookup = rte_member_rte_member_lookup.load(self.lib)
        self.rte_member_lookup_bulk = rte_member_rte_member_lookup_bulk.load(self.lib)
        self.rte_member_lookup_multi = rte_member_rte_member_lookup_multi.load(self.lib)
        self.rte_member_lookup_multi_bulk = rte_member_rte_member_lookup_multi_bulk.load(self.lib)
        self.rte_member_add = rte_member_rte_member_add.load(self.lib)
        self.rte_member_add_byte_count = rte_member_rte_member_add_byte_count.load(self.lib)
        self.rte_member_query_count = rte_member_rte_member_query_count.load(self.lib)
        self.rte_member_report_heavyhitter = rte_member_rte_member_report_heavyhitter.load(self.lib)
        self.rte_member_reset = rte_member_rte_member_reset.load(self.lib)
        self.rte_member_delete = rte_member_rte_member_delete.load(self.lib)

