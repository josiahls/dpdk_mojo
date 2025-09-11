
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
struct anonomous_record_524(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_524

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
alias anonomous_record_525 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_526(Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_525

alias __mbstate_t = anonomous_record_526

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
alias __assert_fail = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], UInt32, read UnsafePointer[Int8]) -> NoneType
alias __assert_perror_fail = fn (Int32, read UnsafePointer[Int8], UInt32, read UnsafePointer[Int8]) -> NoneType
alias __assert = fn (read UnsafePointer[Int8], read UnsafePointer[Int8], Int32) -> NoneType
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
alias alloca = fn (ffi.c_ulong) -> OpaquePointer
alias time_t = __time_t
struct timespec(Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_nsec : ffi.c_long

alias pid_t = __pid_t
struct sched_param(Copyable & Movable):
	var sched_priority : Int32

alias __cpu_mask = ffi.c_ulong
struct anonomous_record_527(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_527

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
	# {"id":"0xd603220","inner":[{"id":"0xd44ac40","inner":[{"id":"0xd449f00","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"void *[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Generic marker for any place in a structure. 

alias RTE_MARKER8 = 	# # Node: PlaceHolder()
	# {"id":"0xd6033b0","inner":[{"decl":{"id":"0xd57b448","kind":"TypedefDecl","name":"uint8_t"},"id":"0xd603310","inner":[{"decl":{"id":"0xd4ee398","kind":"TypedefDecl","name":"__uint8_t"},"id":"0xd53c450","inner":[{"id":"0xd44a000","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"TypedefType","type":{"qualType":"__uint8_t"}}],"kind":"TypedefType","type":{"qualType":"uint8_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint8_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 1B alignment in a structure. 

alias RTE_MARKER16 = 	# # Node: PlaceHolder()
	# {"id":"0xd603510","inner":[{"decl":{"id":"0xd57b4b0","kind":"TypedefDecl","name":"uint16_t"},"id":"0xd5f6dd0","inner":[{"decl":{"id":"0xd4ee478","kind":"TypedefDecl","name":"__uint16_t"},"id":"0xd53c570","inner":[{"id":"0xd44a020","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"TypedefType","type":{"qualType":"__uint16_t"}}],"kind":"TypedefType","type":{"qualType":"uint16_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint16_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 2B alignment in a structure. 

alias RTE_MARKER32 = 	# # Node: PlaceHolder()
	# {"id":"0xd603670","inner":[{"decl":{"id":"0xd57b518","kind":"TypedefDecl","name":"uint32_t"},"id":"0xd5f6d40","inner":[{"decl":{"id":"0xd53c280","kind":"TypedefDecl","name":"__uint32_t"},"id":"0xd53c690","inner":[{"id":"0xd44a040","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"__uint32_t"}}],"kind":"TypedefType","type":{"qualType":"uint32_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint32_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 4B alignment in a structure. 

alias RTE_MARKER64 = 	# # Node: PlaceHolder()
	# {"id":"0xd6037d0","inner":[{"decl":{"id":"0xd57b580","kind":"TypedefDecl","name":"uint64_t"},"id":"0xd5f6cb0","inner":[{"decl":{"id":"0xd53c360","kind":"TypedefDecl","name":"__uint64_t"},"id":"0xd53c7b0","inner":[{"id":"0xd44a060","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uint64_t"}}],"kind":"TypedefType","type":{"qualType":"uint64_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint64_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 8B alignment in a structure. 

alias rte_str_to_size = fn (read UnsafePointer[Int8]) -> ffi.c_ulong_long
alias rte_size_to_str = fn (UnsafePointer[Int8], Int32, ffi.c_ulong_long, Bool, read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_exit = fn (Int32, read *UnsafePointer[Int8]) -> NoneType
alias rte_graph_off_t = uint32_t
alias rte_node_t = uint32_t
alias rte_edge_t = uint16_t
alias rte_graph_t = uint16_t
struct rte_node(Copyable & Movable):

	pass
struct rte_graph(Copyable & Movable):
	pass
struct rte_graph_cluster_stats(Copyable & Movable):
	pass
struct rte_graph_cluster_node_stats(Copyable & Movable):
	pass
alias rte_node_process_t = fn(UnsafePointer[rte_graph], UnsafePointer[rte_node], UnsafePointer[OpaquePointer], UInt16) -> UInt16
alias rte_node_init_t = fn(read UnsafePointer[rte_graph], UnsafePointer[rte_node]) -> Int32
alias rte_node_fini_t = fn(read UnsafePointer[rte_graph], UnsafePointer[rte_node]) -> NoneType
alias rte_graph_cluster_stats_cb_t = fn(Bool, Bool, OpaquePointer, read UnsafePointer[rte_graph_cluster_node_stats]) -> Int32
struct anonomous_record_529(Copyable & Movable):
	var wq_size_max : UInt32

	var mp_capacity : UInt32

struct anonomous_record_528(Copyable & Movable):
	var rsvd : ffi.c_ulong

alias anonomous_record_530 = C_Union[anonomous_record_528, anonomous_record_529]

struct rte_graph_param(Copyable & Movable):
# # Node: PlaceHolder()
# {"id":"0xd6258a0","inner":[{"id":"0xd625900","inner":[{"id":"0xd6258d0","kind":"TextComment","loc":{"col":8,"offset":4777,"tokLen":0},"range":{"begin":{"col":8,"offset":4777,"tokLen":0},"end":{"col":26,"offset":4795,"tokLen":1}},"text":" rte_graph_create()"}],"kind":"ParagraphComment","loc":{"col":8,"offset":4777,"tokLen":0},"range":{"begin":{"col":8,"offset":4777,"tokLen":0},"end":{"col":26,"offset":4795,"tokLen":1}}}],"kind":"BlockCommandComment","loc":{"col":5,"offset":4774,"tokLen":3},"name":"see","range":{"begin":{"col":4,"offset":4773,"tokLen":1},"end":{"col":26,"offset":4795,"tokLen":1}}}

	var socket_id : Int32

	var nb_node_patterns : UInt16

	var node_patterns : UnsafePointer[UnsafePointer[Int8]]

	var pcap_enable : Bool

	var num_pkt_to_capture : ffi.c_ulong

	var pcap_filename : UnsafePointer[Int8]

	var union_placeholder_1 : anonomous_record_530



alias anonomous_record_531 = C_Union[OpaquePointer, UnsafePointer[FILE]]

struct rte_graph_cluster_stats_param(Copyable & Movable):
# # Node: PlaceHolder()
# {"id":"0xd6260d0","inner":[{"id":"0xd626130","inner":[{"id":"0xd626100","kind":"TextComment","loc":{"col":8,"offset":5575,"tokLen":0},"range":{"begin":{"col":8,"offset":5575,"tokLen":0},"end":{"col":40,"offset":5607,"tokLen":1}},"text":" rte_graph_cluster_stats_create()"}],"kind":"ParagraphComment","loc":{"col":8,"offset":5575,"tokLen":0},"range":{"begin":{"col":8,"offset":5575,"tokLen":0},"end":{"col":40,"offset":5607,"tokLen":1}}}],"kind":"BlockCommandComment","loc":{"col":5,"offset":5572,"tokLen":3},"name":"see","range":{"begin":{"col":4,"offset":5571,"tokLen":1},"end":{"col":40,"offset":5607,"tokLen":1}}}

	var socket_id : Int32

	var fn_ : fn(Bool, Bool, OpaquePointer, read UnsafePointer[rte_graph_cluster_node_stats]) -> Int32

	var union_placeholder_1 : anonomous_record_531



	var nb_graph_patterns : UInt16

	var graph_patterns : UnsafePointer[UnsafePointer[Int8]]

struct anonomous_record_532(Copyable & Movable):
	var sched_objs : ffi.c_ulong

	var sched_fail : ffi.c_ulong

alias anonomous_record_533 = C_Union[anonomous_record_532]

alias rte_graph_create = fn (read UnsafePointer[Int8], UnsafePointer[rte_graph_param]) -> rte_graph_t
alias rte_graph_destroy = fn (rte_graph_t) -> Int32
alias rte_graph_clone = fn (rte_graph_t, read UnsafePointer[Int8], UnsafePointer[rte_graph_param]) -> rte_graph_t
alias rte_graph_from_name = fn (read UnsafePointer[Int8]) -> rte_graph_t
alias rte_graph_id_to_name = fn (rte_graph_t) -> UnsafePointer[Int8]
alias rte_graph_export = fn (read UnsafePointer[Int8], UnsafePointer[FILE]) -> Int32
alias rte_graph_model_mcore_dispatch_core_bind = fn (rte_graph_t, Int32) -> Int32
alias rte_graph_model_mcore_dispatch_core_unbind = fn (rte_graph_t) -> NoneType
alias rte_graph_lookup = fn (read UnsafePointer[Int8]) -> UnsafePointer[rte_graph]
alias rte_graph_max_count = fn (NoneType) -> rte_graph_t
alias rte_graph_dump = fn (UnsafePointer[FILE], rte_graph_t) -> NoneType
alias rte_graph_list_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_graph_obj_dump = fn (UnsafePointer[FILE], UnsafePointer[rte_graph], Bool) -> NoneType
alias rte_graph_node_get = fn (rte_graph_t, rte_node_t) -> UnsafePointer[rte_node]
alias rte_graph_node_get_by_name = fn (read UnsafePointer[Int8], read UnsafePointer[Int8]) -> UnsafePointer[rte_node]
alias rte_graph_cluster_stats_create = fn (read UnsafePointer[rte_graph_cluster_stats_param]) -> UnsafePointer[rte_graph_cluster_stats]
alias rte_graph_cluster_stats_destroy = fn (UnsafePointer[rte_graph_cluster_stats]) -> NoneType
alias rte_graph_cluster_stats_get = fn (UnsafePointer[rte_graph_cluster_stats], Bool) -> NoneType
alias rte_graph_cluster_stats_reset = fn (UnsafePointer[rte_graph_cluster_stats]) -> NoneType
struct rte_node_xstats(Copyable & Movable):

	var nb_xstats : UInt16

	var xstat_desc : UnsafePointer[Int8] # Failed to parse array size

struct rte_node_register(Copyable & Movable):
# # Node: PlaceHolder()
# {"id":"0xd62ae30","inner":[{"id":"0xd62ae90","inner":[{"id":"0xd62ae60","kind":"TextComment","loc":{"col":8,"offset":13326,"tokLen":0},"range":{"begin":{"col":8,"offset":13326,"tokLen":0},"end":{"col":50,"offset":13368,"tokLen":1}},"text":" __rte_node_register(), RTE_NODE_REGISTER()"}],"kind":"ParagraphComment","loc":{"col":8,"offset":13326,"tokLen":0},"range":{"begin":{"col":8,"offset":13326,"tokLen":0},"end":{"col":50,"offset":13368,"tokLen":1}}}],"kind":"BlockCommandComment","loc":{"col":5,"offset":13323,"tokLen":3},"name":"see","range":{"begin":{"col":4,"offset":13322,"tokLen":1},"end":{"col":50,"offset":13368,"tokLen":1}}}

	var name : InlineArray[Int8, 64]

	var flags : ffi.c_ulong

	var process : fn(UnsafePointer[rte_graph], UnsafePointer[rte_node], UnsafePointer[OpaquePointer], UInt16) -> UInt16

	var init : fn(read UnsafePointer[rte_graph], UnsafePointer[rte_node]) -> Int32

	var fini : fn(read UnsafePointer[rte_graph], UnsafePointer[rte_node]) -> NoneType

	var xstats : UnsafePointer[rte_node_xstats]

	var id : UInt32

	var parent_id : UInt32

	var nb_edges : UInt16

	var next_nodes : UnsafePointer[UnsafePointer[Int8]] # Failed to parse array size

alias __rte_node_register = fn (read UnsafePointer[rte_node_register]) -> rte_node_t
alias rte_node_clone = fn (rte_node_t, read UnsafePointer[Int8]) -> rte_node_t
alias rte_node_from_name = fn (read UnsafePointer[Int8]) -> rte_node_t
alias rte_node_id_to_name = fn (rte_node_t) -> UnsafePointer[Int8]
alias rte_node_edge_count = fn (rte_node_t) -> rte_edge_t
alias rte_node_edge_update = fn (rte_node_t, rte_edge_t, read UnsafePointer[UnsafePointer[Int8]], UInt16) -> rte_edge_t
alias rte_node_edge_shrink = fn (rte_node_t, rte_edge_t) -> rte_edge_t
alias rte_node_edge_get = fn (rte_node_t, UnsafePointer[UnsafePointer[Int8]]) -> rte_node_t
alias rte_node_max_count = fn (NoneType) -> rte_node_t
alias rte_node_dump = fn (UnsafePointer[FILE], rte_node_t) -> NoneType
alias rte_node_list_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_node_is_invalid = fn (rte_node_t) -> Int32
alias rte_node_free = fn (rte_node_t) -> Int32
alias rte_edge_is_invalid = fn (rte_edge_t) -> Int32
alias rte_graph_is_invalid = fn (rte_graph_t) -> Int32
alias rte_graph_has_stats_feature = fn (NoneType) -> Int32


alias rte_graph_remove = ExternalFunction['remove', remove]
alias rte_graph_rename = ExternalFunction['rename', rename]
alias rte_graph_renameat = ExternalFunction['renameat', renameat]
alias rte_graph_fclose = ExternalFunction['fclose', fclose]
alias rte_graph_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias rte_graph_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias rte_graph_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias rte_graph_tempnam = ExternalFunction['tempnam', tempnam]
alias rte_graph_fflush = ExternalFunction['fflush', fflush]
alias rte_graph_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias rte_graph_fopen = ExternalFunction['fopen', fopen]
alias rte_graph_freopen = ExternalFunction['freopen', freopen]
alias rte_graph_fdopen = ExternalFunction['fdopen', fdopen]
alias rte_graph_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias rte_graph_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias rte_graph_setbuf = ExternalFunction['setbuf', setbuf]
alias rte_graph_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias rte_graph_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias rte_graph_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias rte_graph_fprintf = ExternalFunction['fprintf', fprintf]
alias rte_graph_printf = ExternalFunction['printf', printf]
alias rte_graph_sprintf = ExternalFunction['sprintf', sprintf]
alias rte_graph_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias rte_graph_vprintf = ExternalFunction['vprintf', vprintf]
alias rte_graph_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias rte_graph_snprintf = ExternalFunction['snprintf', snprintf]
alias rte_graph_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias rte_graph_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias rte_graph_dprintf = ExternalFunction['dprintf', dprintf]
alias rte_graph_fscanf = ExternalFunction['fscanf', fscanf]
alias rte_graph_scanf = ExternalFunction['scanf', scanf]
alias rte_graph_sscanf = ExternalFunction['sscanf', sscanf]
alias rte_graph_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias rte_graph_vscanf = ExternalFunction['vscanf', vscanf]
alias rte_graph_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias rte_graph_fgetc = ExternalFunction['fgetc', fgetc]
alias rte_graph_getc = ExternalFunction['getc', getc]
alias rte_graph_getchar = ExternalFunction['getchar', getchar]
alias rte_graph_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias rte_graph_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias rte_graph_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias rte_graph_fputc = ExternalFunction['fputc', fputc]
alias rte_graph_putc = ExternalFunction['putc', putc]
alias rte_graph_putchar = ExternalFunction['putchar', putchar]
alias rte_graph_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias rte_graph_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias rte_graph_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias rte_graph_getw = ExternalFunction['getw', getw]
alias rte_graph_putw = ExternalFunction['putw', putw]
alias rte_graph_fgets = ExternalFunction['fgets', fgets]
alias rte_graph_getdelim = ExternalFunction['getdelim', getdelim]
alias rte_graph_getline = ExternalFunction['getline', getline]
alias rte_graph_fputs = ExternalFunction['fputs', fputs]
alias rte_graph_puts = ExternalFunction['puts', puts]
alias rte_graph_ungetc = ExternalFunction['ungetc', ungetc]
alias rte_graph_fread = ExternalFunction['fread', fread]
alias rte_graph_fwrite = ExternalFunction['fwrite', fwrite]
alias rte_graph_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias rte_graph_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias rte_graph_fseek = ExternalFunction['fseek', fseek]
alias rte_graph_ftell = ExternalFunction['ftell', ftell]
alias rte_graph_rewind = ExternalFunction['rewind', rewind]
alias rte_graph_fseeko = ExternalFunction['fseeko', fseeko]
alias rte_graph_ftello = ExternalFunction['ftello', ftello]
alias rte_graph_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias rte_graph_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias rte_graph_clearerr = ExternalFunction['clearerr', clearerr]
alias rte_graph_feof = ExternalFunction['feof', feof]
alias rte_graph_ferror = ExternalFunction['ferror', ferror]
alias rte_graph_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias rte_graph_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias rte_graph_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias rte_graph_perror = ExternalFunction['perror', perror]
alias rte_graph_fileno = ExternalFunction['fileno', fileno]
alias rte_graph_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias rte_graph_pclose = ExternalFunction['pclose', pclose]
alias rte_graph_popen = ExternalFunction['popen', popen]
alias rte_graph_ctermid = ExternalFunction['ctermid', ctermid]
alias rte_graph_flockfile = ExternalFunction['flockfile', flockfile]
alias rte_graph_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias rte_graph_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias rte_graph_alloca = ExternalFunction['alloca', alloca]
alias rte_graph_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_graph_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_graph_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_graph_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_graph_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_graph_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_graph_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_graph_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_graph_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_graph_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_graph_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_graph_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_graph_rte_graph_create = ExternalFunction['rte_graph_create', rte_graph_create]
alias rte_graph_rte_graph_destroy = ExternalFunction['rte_graph_destroy', rte_graph_destroy]
alias rte_graph_rte_graph_clone = ExternalFunction['rte_graph_clone', rte_graph_clone]
alias rte_graph_rte_graph_from_name = ExternalFunction['rte_graph_from_name', rte_graph_from_name]
alias rte_graph_rte_graph_id_to_name = ExternalFunction['rte_graph_id_to_name', rte_graph_id_to_name]
alias rte_graph_rte_graph_export = ExternalFunction['rte_graph_export', rte_graph_export]
alias rte_graph_rte_graph_model_mcore_dispatch_core_bind = ExternalFunction['rte_graph_model_mcore_dispatch_core_bind', rte_graph_model_mcore_dispatch_core_bind]
alias rte_graph_rte_graph_model_mcore_dispatch_core_unbind = ExternalFunction['rte_graph_model_mcore_dispatch_core_unbind', rte_graph_model_mcore_dispatch_core_unbind]
alias rte_graph_rte_graph_lookup = ExternalFunction['rte_graph_lookup', rte_graph_lookup]
alias rte_graph_rte_graph_max_count = ExternalFunction['rte_graph_max_count', rte_graph_max_count]
alias rte_graph_rte_graph_dump = ExternalFunction['rte_graph_dump', rte_graph_dump]
alias rte_graph_rte_graph_list_dump = ExternalFunction['rte_graph_list_dump', rte_graph_list_dump]
alias rte_graph_rte_graph_obj_dump = ExternalFunction['rte_graph_obj_dump', rte_graph_obj_dump]
alias rte_graph_rte_graph_node_get = ExternalFunction['rte_graph_node_get', rte_graph_node_get]
alias rte_graph_rte_graph_node_get_by_name = ExternalFunction['rte_graph_node_get_by_name', rte_graph_node_get_by_name]
alias rte_graph_rte_graph_cluster_stats_create = ExternalFunction['rte_graph_cluster_stats_create', rte_graph_cluster_stats_create]
alias rte_graph_rte_graph_cluster_stats_destroy = ExternalFunction['rte_graph_cluster_stats_destroy', rte_graph_cluster_stats_destroy]
alias rte_graph_rte_graph_cluster_stats_get = ExternalFunction['rte_graph_cluster_stats_get', rte_graph_cluster_stats_get]
alias rte_graph_rte_graph_cluster_stats_reset = ExternalFunction['rte_graph_cluster_stats_reset', rte_graph_cluster_stats_reset]
alias rte_graph_rte_node_clone = ExternalFunction['rte_node_clone', rte_node_clone]
alias rte_graph_rte_node_from_name = ExternalFunction['rte_node_from_name', rte_node_from_name]
alias rte_graph_rte_node_id_to_name = ExternalFunction['rte_node_id_to_name', rte_node_id_to_name]
alias rte_graph_rte_node_edge_count = ExternalFunction['rte_node_edge_count', rte_node_edge_count]
alias rte_graph_rte_node_edge_update = ExternalFunction['rte_node_edge_update', rte_node_edge_update]
alias rte_graph_rte_node_edge_shrink = ExternalFunction['rte_node_edge_shrink', rte_node_edge_shrink]
alias rte_graph_rte_node_edge_get = ExternalFunction['rte_node_edge_get', rte_node_edge_get]
alias rte_graph_rte_node_max_count = ExternalFunction['rte_node_max_count', rte_node_max_count]
alias rte_graph_rte_node_dump = ExternalFunction['rte_node_dump', rte_node_dump]
alias rte_graph_rte_node_list_dump = ExternalFunction['rte_node_list_dump', rte_node_list_dump]
alias rte_graph_rte_node_is_invalid = ExternalFunction['rte_node_is_invalid', rte_node_is_invalid]
alias rte_graph_rte_node_free = ExternalFunction['rte_node_free', rte_node_free]
alias rte_graph_rte_edge_is_invalid = ExternalFunction['rte_edge_is_invalid', rte_edge_is_invalid]
alias rte_graph_rte_graph_is_invalid = ExternalFunction['rte_graph_is_invalid', rte_graph_is_invalid]
alias rte_graph_rte_graph_has_stats_feature = ExternalFunction['rte_graph_has_stats_feature', rte_graph_has_stats_feature]

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
struct rte_graph(Copyable, Movable):
    var lib: DLHandle
    
    var remove: rte_graph_remove.type
    var rename: rte_graph_rename.type
    var renameat: rte_graph_renameat.type
    var fclose: rte_graph_fclose.type
    var tmpfile: rte_graph_tmpfile.type
    var tmpnam: rte_graph_tmpnam.type
    var tmpnam_r: rte_graph_tmpnam_r.type
    var tempnam: rte_graph_tempnam.type
    var fflush: rte_graph_fflush.type
    var fflush_unlocked: rte_graph_fflush_unlocked.type
    var fopen: rte_graph_fopen.type
    var freopen: rte_graph_freopen.type
    var fdopen: rte_graph_fdopen.type
    var fmemopen: rte_graph_fmemopen.type
    var open_memstream: rte_graph_open_memstream.type
    var setbuf: rte_graph_setbuf.type
    var setvbuf: rte_graph_setvbuf.type
    var setbuffer: rte_graph_setbuffer.type
    var setlinebuf: rte_graph_setlinebuf.type
    var fprintf: rte_graph_fprintf.type
    var printf: rte_graph_printf.type
    var sprintf: rte_graph_sprintf.type
    var vfprintf: rte_graph_vfprintf.type
    var vprintf: rte_graph_vprintf.type
    var vsprintf: rte_graph_vsprintf.type
    var snprintf: rte_graph_snprintf.type
    var vsnprintf: rte_graph_vsnprintf.type
    var vdprintf: rte_graph_vdprintf.type
    var dprintf: rte_graph_dprintf.type
    var fscanf: rte_graph_fscanf.type
    var scanf: rte_graph_scanf.type
    var sscanf: rte_graph_sscanf.type
    var vfscanf: rte_graph_vfscanf.type
    var vscanf: rte_graph_vscanf.type
    var vsscanf: rte_graph_vsscanf.type
    var fgetc: rte_graph_fgetc.type
    var getc: rte_graph_getc.type
    var getchar: rte_graph_getchar.type
    var getc_unlocked: rte_graph_getc_unlocked.type
    var getchar_unlocked: rte_graph_getchar_unlocked.type
    var fgetc_unlocked: rte_graph_fgetc_unlocked.type
    var fputc: rte_graph_fputc.type
    var putc: rte_graph_putc.type
    var putchar: rte_graph_putchar.type
    var fputc_unlocked: rte_graph_fputc_unlocked.type
    var putc_unlocked: rte_graph_putc_unlocked.type
    var putchar_unlocked: rte_graph_putchar_unlocked.type
    var getw: rte_graph_getw.type
    var putw: rte_graph_putw.type
    var fgets: rte_graph_fgets.type
    var getdelim: rte_graph_getdelim.type
    var getline: rte_graph_getline.type
    var fputs: rte_graph_fputs.type
    var puts: rte_graph_puts.type
    var ungetc: rte_graph_ungetc.type
    var fread: rte_graph_fread.type
    var fwrite: rte_graph_fwrite.type
    var fread_unlocked: rte_graph_fread_unlocked.type
    var fwrite_unlocked: rte_graph_fwrite_unlocked.type
    var fseek: rte_graph_fseek.type
    var ftell: rte_graph_ftell.type
    var rewind: rte_graph_rewind.type
    var fseeko: rte_graph_fseeko.type
    var ftello: rte_graph_ftello.type
    var fgetpos: rte_graph_fgetpos.type
    var fsetpos: rte_graph_fsetpos.type
    var clearerr: rte_graph_clearerr.type
    var feof: rte_graph_feof.type
    var ferror: rte_graph_ferror.type
    var clearerr_unlocked: rte_graph_clearerr_unlocked.type
    var feof_unlocked: rte_graph_feof_unlocked.type
    var ferror_unlocked: rte_graph_ferror_unlocked.type
    var perror: rte_graph_perror.type
    var fileno: rte_graph_fileno.type
    var fileno_unlocked: rte_graph_fileno_unlocked.type
    var pclose: rte_graph_pclose.type
    var popen: rte_graph_popen.type
    var ctermid: rte_graph_ctermid.type
    var flockfile: rte_graph_flockfile.type
    var ftrylockfile: rte_graph_ftrylockfile.type
    var funlockfile: rte_graph_funlockfile.type
    var alloca: rte_graph_alloca.type
    var sched_setparam: rte_graph_sched_setparam.type
    var sched_getparam: rte_graph_sched_getparam.type
    var sched_setscheduler: rte_graph_sched_setscheduler.type
    var sched_getscheduler: rte_graph_sched_getscheduler.type
    var sched_yield: rte_graph_sched_yield.type
    var sched_get_priority_max: rte_graph_sched_get_priority_max.type
    var sched_get_priority_min: rte_graph_sched_get_priority_min.type
    var sched_rr_get_interval: rte_graph_sched_rr_get_interval.type
    var rte_is_aligned: rte_graph_rte_is_aligned.type
    var rte_str_to_size: rte_graph_rte_str_to_size.type
    var rte_size_to_str: rte_graph_rte_size_to_str.type
    var rte_exit: rte_graph_rte_exit.type
    var rte_graph_create: rte_graph_rte_graph_create.type
    var rte_graph_destroy: rte_graph_rte_graph_destroy.type
    var rte_graph_clone: rte_graph_rte_graph_clone.type
    var rte_graph_from_name: rte_graph_rte_graph_from_name.type
    var rte_graph_id_to_name: rte_graph_rte_graph_id_to_name.type
    var rte_graph_export: rte_graph_rte_graph_export.type
    var rte_graph_model_mcore_dispatch_core_bind: rte_graph_rte_graph_model_mcore_dispatch_core_bind.type
    var rte_graph_model_mcore_dispatch_core_unbind: rte_graph_rte_graph_model_mcore_dispatch_core_unbind.type
    var rte_graph_lookup: rte_graph_rte_graph_lookup.type
    var rte_graph_max_count: rte_graph_rte_graph_max_count.type
    var rte_graph_dump: rte_graph_rte_graph_dump.type
    var rte_graph_list_dump: rte_graph_rte_graph_list_dump.type
    var rte_graph_obj_dump: rte_graph_rte_graph_obj_dump.type
    var rte_graph_node_get: rte_graph_rte_graph_node_get.type
    var rte_graph_node_get_by_name: rte_graph_rte_graph_node_get_by_name.type
    var rte_graph_cluster_stats_create: rte_graph_rte_graph_cluster_stats_create.type
    var rte_graph_cluster_stats_destroy: rte_graph_rte_graph_cluster_stats_destroy.type
    var rte_graph_cluster_stats_get: rte_graph_rte_graph_cluster_stats_get.type
    var rte_graph_cluster_stats_reset: rte_graph_rte_graph_cluster_stats_reset.type
    var rte_node_clone: rte_graph_rte_node_clone.type
    var rte_node_from_name: rte_graph_rte_node_from_name.type
    var rte_node_id_to_name: rte_graph_rte_node_id_to_name.type
    var rte_node_edge_count: rte_graph_rte_node_edge_count.type
    var rte_node_edge_update: rte_graph_rte_node_edge_update.type
    var rte_node_edge_shrink: rte_graph_rte_node_edge_shrink.type
    var rte_node_edge_get: rte_graph_rte_node_edge_get.type
    var rte_node_max_count: rte_graph_rte_node_max_count.type
    var rte_node_dump: rte_graph_rte_node_dump.type
    var rte_node_list_dump: rte_graph_rte_node_list_dump.type
    var rte_node_is_invalid: rte_graph_rte_node_is_invalid.type
    var rte_node_free: rte_graph_rte_node_free.type
    var rte_edge_is_invalid: rte_graph_rte_edge_is_invalid.type
    var rte_graph_is_invalid: rte_graph_rte_graph_is_invalid.type
    var rte_graph_has_stats_feature: rte_graph_rte_graph_has_stats_feature.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_graph.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_graph from", 'librte_graph.so', ":\n", e)
            )

    
        self.remove = rte_graph_remove.load(self.lib)
        self.rename = rte_graph_rename.load(self.lib)
        self.renameat = rte_graph_renameat.load(self.lib)
        self.fclose = rte_graph_fclose.load(self.lib)
        self.tmpfile = rte_graph_tmpfile.load(self.lib)
        self.tmpnam = rte_graph_tmpnam.load(self.lib)
        self.tmpnam_r = rte_graph_tmpnam_r.load(self.lib)
        self.tempnam = rte_graph_tempnam.load(self.lib)
        self.fflush = rte_graph_fflush.load(self.lib)
        self.fflush_unlocked = rte_graph_fflush_unlocked.load(self.lib)
        self.fopen = rte_graph_fopen.load(self.lib)
        self.freopen = rte_graph_freopen.load(self.lib)
        self.fdopen = rte_graph_fdopen.load(self.lib)
        self.fmemopen = rte_graph_fmemopen.load(self.lib)
        self.open_memstream = rte_graph_open_memstream.load(self.lib)
        self.setbuf = rte_graph_setbuf.load(self.lib)
        self.setvbuf = rte_graph_setvbuf.load(self.lib)
        self.setbuffer = rte_graph_setbuffer.load(self.lib)
        self.setlinebuf = rte_graph_setlinebuf.load(self.lib)
        self.fprintf = rte_graph_fprintf.load(self.lib)
        self.printf = rte_graph_printf.load(self.lib)
        self.sprintf = rte_graph_sprintf.load(self.lib)
        self.vfprintf = rte_graph_vfprintf.load(self.lib)
        self.vprintf = rte_graph_vprintf.load(self.lib)
        self.vsprintf = rte_graph_vsprintf.load(self.lib)
        self.snprintf = rte_graph_snprintf.load(self.lib)
        self.vsnprintf = rte_graph_vsnprintf.load(self.lib)
        self.vdprintf = rte_graph_vdprintf.load(self.lib)
        self.dprintf = rte_graph_dprintf.load(self.lib)
        self.fscanf = rte_graph_fscanf.load(self.lib)
        self.scanf = rte_graph_scanf.load(self.lib)
        self.sscanf = rte_graph_sscanf.load(self.lib)
        self.vfscanf = rte_graph_vfscanf.load(self.lib)
        self.vscanf = rte_graph_vscanf.load(self.lib)
        self.vsscanf = rte_graph_vsscanf.load(self.lib)
        self.fgetc = rte_graph_fgetc.load(self.lib)
        self.getc = rte_graph_getc.load(self.lib)
        self.getchar = rte_graph_getchar.load(self.lib)
        self.getc_unlocked = rte_graph_getc_unlocked.load(self.lib)
        self.getchar_unlocked = rte_graph_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = rte_graph_fgetc_unlocked.load(self.lib)
        self.fputc = rte_graph_fputc.load(self.lib)
        self.putc = rte_graph_putc.load(self.lib)
        self.putchar = rte_graph_putchar.load(self.lib)
        self.fputc_unlocked = rte_graph_fputc_unlocked.load(self.lib)
        self.putc_unlocked = rte_graph_putc_unlocked.load(self.lib)
        self.putchar_unlocked = rte_graph_putchar_unlocked.load(self.lib)
        self.getw = rte_graph_getw.load(self.lib)
        self.putw = rte_graph_putw.load(self.lib)
        self.fgets = rte_graph_fgets.load(self.lib)
        self.getdelim = rte_graph_getdelim.load(self.lib)
        self.getline = rte_graph_getline.load(self.lib)
        self.fputs = rte_graph_fputs.load(self.lib)
        self.puts = rte_graph_puts.load(self.lib)
        self.ungetc = rte_graph_ungetc.load(self.lib)
        self.fread = rte_graph_fread.load(self.lib)
        self.fwrite = rte_graph_fwrite.load(self.lib)
        self.fread_unlocked = rte_graph_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = rte_graph_fwrite_unlocked.load(self.lib)
        self.fseek = rte_graph_fseek.load(self.lib)
        self.ftell = rte_graph_ftell.load(self.lib)
        self.rewind = rte_graph_rewind.load(self.lib)
        self.fseeko = rte_graph_fseeko.load(self.lib)
        self.ftello = rte_graph_ftello.load(self.lib)
        self.fgetpos = rte_graph_fgetpos.load(self.lib)
        self.fsetpos = rte_graph_fsetpos.load(self.lib)
        self.clearerr = rte_graph_clearerr.load(self.lib)
        self.feof = rte_graph_feof.load(self.lib)
        self.ferror = rte_graph_ferror.load(self.lib)
        self.clearerr_unlocked = rte_graph_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = rte_graph_feof_unlocked.load(self.lib)
        self.ferror_unlocked = rte_graph_ferror_unlocked.load(self.lib)
        self.perror = rte_graph_perror.load(self.lib)
        self.fileno = rte_graph_fileno.load(self.lib)
        self.fileno_unlocked = rte_graph_fileno_unlocked.load(self.lib)
        self.pclose = rte_graph_pclose.load(self.lib)
        self.popen = rte_graph_popen.load(self.lib)
        self.ctermid = rte_graph_ctermid.load(self.lib)
        self.flockfile = rte_graph_flockfile.load(self.lib)
        self.ftrylockfile = rte_graph_ftrylockfile.load(self.lib)
        self.funlockfile = rte_graph_funlockfile.load(self.lib)
        self.alloca = rte_graph_alloca.load(self.lib)
        self.sched_setparam = rte_graph_sched_setparam.load(self.lib)
        self.sched_getparam = rte_graph_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_graph_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_graph_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_graph_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_graph_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_graph_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_graph_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_graph_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_graph_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_graph_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_graph_rte_exit.load(self.lib)
        self.rte_graph_create = rte_graph_rte_graph_create.load(self.lib)
        self.rte_graph_destroy = rte_graph_rte_graph_destroy.load(self.lib)
        self.rte_graph_clone = rte_graph_rte_graph_clone.load(self.lib)
        self.rte_graph_from_name = rte_graph_rte_graph_from_name.load(self.lib)
        self.rte_graph_id_to_name = rte_graph_rte_graph_id_to_name.load(self.lib)
        self.rte_graph_export = rte_graph_rte_graph_export.load(self.lib)
        self.rte_graph_model_mcore_dispatch_core_bind = rte_graph_rte_graph_model_mcore_dispatch_core_bind.load(self.lib)
        self.rte_graph_model_mcore_dispatch_core_unbind = rte_graph_rte_graph_model_mcore_dispatch_core_unbind.load(self.lib)
        self.rte_graph_lookup = rte_graph_rte_graph_lookup.load(self.lib)
        self.rte_graph_max_count = rte_graph_rte_graph_max_count.load(self.lib)
        self.rte_graph_dump = rte_graph_rte_graph_dump.load(self.lib)
        self.rte_graph_list_dump = rte_graph_rte_graph_list_dump.load(self.lib)
        self.rte_graph_obj_dump = rte_graph_rte_graph_obj_dump.load(self.lib)
        self.rte_graph_node_get = rte_graph_rte_graph_node_get.load(self.lib)
        self.rte_graph_node_get_by_name = rte_graph_rte_graph_node_get_by_name.load(self.lib)
        self.rte_graph_cluster_stats_create = rte_graph_rte_graph_cluster_stats_create.load(self.lib)
        self.rte_graph_cluster_stats_destroy = rte_graph_rte_graph_cluster_stats_destroy.load(self.lib)
        self.rte_graph_cluster_stats_get = rte_graph_rte_graph_cluster_stats_get.load(self.lib)
        self.rte_graph_cluster_stats_reset = rte_graph_rte_graph_cluster_stats_reset.load(self.lib)
        self.rte_node_clone = rte_graph_rte_node_clone.load(self.lib)
        self.rte_node_from_name = rte_graph_rte_node_from_name.load(self.lib)
        self.rte_node_id_to_name = rte_graph_rte_node_id_to_name.load(self.lib)
        self.rte_node_edge_count = rte_graph_rte_node_edge_count.load(self.lib)
        self.rte_node_edge_update = rte_graph_rte_node_edge_update.load(self.lib)
        self.rte_node_edge_shrink = rte_graph_rte_node_edge_shrink.load(self.lib)
        self.rte_node_edge_get = rte_graph_rte_node_edge_get.load(self.lib)
        self.rte_node_max_count = rte_graph_rte_node_max_count.load(self.lib)
        self.rte_node_dump = rte_graph_rte_node_dump.load(self.lib)
        self.rte_node_list_dump = rte_graph_rte_node_list_dump.load(self.lib)
        self.rte_node_is_invalid = rte_graph_rte_node_is_invalid.load(self.lib)
        self.rte_node_free = rte_graph_rte_node_free.load(self.lib)
        self.rte_edge_is_invalid = rte_graph_rte_edge_is_invalid.load(self.lib)
        self.rte_graph_is_invalid = rte_graph_rte_graph_is_invalid.load(self.lib)
        self.rte_graph_has_stats_feature = rte_graph_rte_graph_has_stats_feature.load(self.lib)

