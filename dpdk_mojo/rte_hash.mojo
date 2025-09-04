
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
struct anonomous_record_5(ExplicitlyCopyable & Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_5

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
struct anonomous_record_6(ExplicitlyCopyable & Copyable & Movable):
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_6

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
struct anonomous_record_7(ExplicitlyCopyable & Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_7

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
	# {"id":"0xed12510","inner":[{"id":"0xeb89e60","inner":[{"id":"0xeb89120","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"void *[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Generic marker for any place in a structure. 

alias RTE_MARKER8 = 	# # Node: PlaceHolder()
	# {"id":"0xed126a0","inner":[{"decl":{"id":"0xec851f8","kind":"TypedefDecl","name":"uint8_t"},"id":"0xed12600","inner":[{"decl":{"id":"0xec2d500","kind":"TypedefDecl","name":"__uint8_t"},"id":"0xec7abb0","inner":[{"id":"0xeb89220","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"TypedefType","type":{"qualType":"__uint8_t"}}],"kind":"TypedefType","type":{"qualType":"uint8_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint8_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 1B alignment in a structure. 

alias RTE_MARKER16 = 	# # Node: PlaceHolder()
	# {"id":"0xed1b1a0","inner":[{"decl":{"id":"0xec85260","kind":"TypedefDecl","name":"uint16_t"},"id":"0xece9af0","inner":[{"decl":{"id":"0xec2d5e0","kind":"TypedefDecl","name":"__uint16_t"},"id":"0xec7acd0","inner":[{"id":"0xeb89240","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"TypedefType","type":{"qualType":"__uint16_t"}}],"kind":"TypedefType","type":{"qualType":"uint16_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint16_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 2B alignment in a structure. 

alias RTE_MARKER32 = 	# # Node: PlaceHolder()
	# {"id":"0xed1b300","inner":[{"decl":{"id":"0xec852c8","kind":"TypedefDecl","name":"uint32_t"},"id":"0xece9a60","inner":[{"decl":{"id":"0xec2d6c0","kind":"TypedefDecl","name":"__uint32_t"},"id":"0xec7adf0","inner":[{"id":"0xeb89260","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"__uint32_t"}}],"kind":"TypedefType","type":{"qualType":"uint32_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint32_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 4B alignment in a structure. 

alias RTE_MARKER64 = 	# # Node: PlaceHolder()
	# {"id":"0xed1b460","inner":[{"decl":{"id":"0xec85330","kind":"TypedefDecl","name":"uint64_t"},"id":"0xece99d0","inner":[{"decl":{"id":"0xec2d7a0","kind":"TypedefDecl","name":"__uint64_t"},"id":"0xec7af10","inner":[{"id":"0xeb89280","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uint64_t"}}],"kind":"TypedefType","type":{"qualType":"uint64_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint64_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 8B alignment in a structure. 

alias rte_str_to_size = fn (read UnsafePointer[Int8]) -> ffi.c_ulong_long
alias rte_size_to_str = fn (UnsafePointer[Int8], Int32, ffi.c_ulong_long, Bool, read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_exit = fn (Int32, read *UnsafePointer[Int8]) -> NoneType
alias hash_sig_t = uint32_t
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The type of hash value of a key.
# Node: TextComment()
#  It should be a value of at least 32bit with fully random pattern.

alias rte_hash_function = fn(read OpaquePointer, ffi.c_ulong, ffi.c_ulong) -> ffi.c_ulong
alias rte_hash_cmp_eq_t = fn(read OpaquePointer, read OpaquePointer, size_t) -> Int32
alias rte_hash_free_key_data = fn(OpaquePointer, OpaquePointer) -> NoneType
struct rte_hash_parameters(ExplicitlyCopyable & Copyable & Movable):

	var name : UnsafePointer[Int8]

	var entries : UInt32

	var reserved : UInt32

	var key_len : UInt32

	var hash_func : fn(read OpaquePointer, ffi.c_ulong, ffi.c_ulong) -> ffi.c_ulong

	var hash_func_init_val : UInt32

	var socket_id : Int32

	var extra_flag : UInt8

struct rte_hash_qsbr_mode(ExplicitlyCopyable & Copyable & Movable):

	alias RTE_HASH_QSBR_MODE_DQ = 0

	alias RTE_HASH_QSBR_MODE_SYNC = 1

struct rte_rcu_qsbr(ExplicitlyCopyable & Copyable & Movable):
	pass
struct rte_hash_rcu_config(ExplicitlyCopyable & Copyable & Movable):

	var v : rte_rcu_qsbr

	var mode : rte_hash_qsbr_mode

	var dq_size : UInt32

	var trigger_reclaim_limit : UInt32

	var max_reclaim_size : UInt32

	var key_data_ptr : OpaquePointer

	var free_key_data_func : fn(OpaquePointer, OpaquePointer) -> NoneType

struct rte_hash(ExplicitlyCopyable & Copyable & Movable):
# # Node: PlaceHolder()
# {"closeName":"","id":"0xed369f0","inner":[{"id":"0xed36a40","kind":"VerbatimBlockLineComment","loc":{"col":14,"offset":4008,"tokLen":0},"range":{"begin":{"col":14,"offset":4008,"tokLen":0},"end":{"col":39,"offset":4033,"tokLen":1}},"text":" A hash table structure. "},{"id":"0xed36a60","kind":"VerbatimBlockLineComment","loc":{"col":41,"offset":4035,"tokLen":0},"range":{"begin":{"col":41,"offset":4035,"tokLen":0},"end":{"col":41,"offset":4035,"tokLen":0}},"text":""}],"kind":"VerbatimBlockComment","loc":{"col":6,"offset":4000,"tokLen":8},"name":"internal","range":{"begin":{"col":5,"offset":3999,"tokLen":1},"end":{"col":14,"offset":4008,"tokLen":0}}}

	pass
alias rte_hash_free = fn (UnsafePointer[rte_hash]) -> NoneType
alias rte_hash_create = fn (read UnsafePointer[rte_hash_parameters]) -> UnsafePointer[rte_hash]
alias rte_hash_set_cmp_func = fn (UnsafePointer[rte_hash], rte_hash_cmp_eq_t) -> NoneType
alias rte_hash_find_existing = fn (read UnsafePointer[Int8]) -> UnsafePointer[rte_hash]
alias rte_hash_reset = fn (UnsafePointer[rte_hash]) -> NoneType
alias rte_hash_count = fn (read UnsafePointer[rte_hash]) -> ffi.c_long
alias rte_hash_max_key_id = fn (read UnsafePointer[rte_hash]) -> ffi.c_long
alias rte_hash_add_key_data = fn (read UnsafePointer[rte_hash], read OpaquePointer, OpaquePointer) -> Int32
alias rte_hash_add_key_with_hash_data = fn (read UnsafePointer[rte_hash], read OpaquePointer, hash_sig_t, OpaquePointer) -> ffi.c_long
alias rte_hash_add_key = fn (read UnsafePointer[rte_hash], read OpaquePointer) -> ffi.c_long
alias rte_hash_add_key_with_hash = fn (read UnsafePointer[rte_hash], read OpaquePointer, hash_sig_t) -> ffi.c_long
alias rte_hash_del_key = fn (read UnsafePointer[rte_hash], read OpaquePointer) -> ffi.c_long
alias rte_hash_del_key_with_hash = fn (read UnsafePointer[rte_hash], read OpaquePointer, hash_sig_t) -> ffi.c_long
alias rte_hash_get_key_with_position = fn (read UnsafePointer[rte_hash], read ffi.c_long, UnsafePointer[OpaquePointer]) -> Int32
alias rte_hash_free_key_with_position = fn (read UnsafePointer[rte_hash], read ffi.c_long) -> Int32
alias rte_hash_lookup_data = fn (read UnsafePointer[rte_hash], read OpaquePointer, UnsafePointer[OpaquePointer]) -> Int32
alias rte_hash_lookup_with_hash_data = fn (read UnsafePointer[rte_hash], read OpaquePointer, hash_sig_t, UnsafePointer[OpaquePointer]) -> Int32
alias rte_hash_lookup = fn (read UnsafePointer[rte_hash], read OpaquePointer) -> ffi.c_long
alias rte_hash_lookup_with_hash = fn (read UnsafePointer[rte_hash], read OpaquePointer, hash_sig_t) -> ffi.c_long
alias rte_hash_hash = fn (read UnsafePointer[rte_hash], read OpaquePointer) -> hash_sig_t
alias rte_hash_lookup_bulk_data = fn (read UnsafePointer[rte_hash], read UnsafePointer[OpaquePointer], ffi.c_ulong, UnsafePointer[ffi.c_ulong_long], UnsafePointer[OpaquePointer]) -> Int32
alias rte_hash_lookup_with_hash_bulk = fn (read UnsafePointer[rte_hash], read UnsafePointer[OpaquePointer], UnsafePointer[hash_sig_t], ffi.c_ulong, UnsafePointer[ffi.c_long]) -> Int32
alias rte_hash_lookup_with_hash_bulk_data = fn (read UnsafePointer[rte_hash], read UnsafePointer[OpaquePointer], UnsafePointer[hash_sig_t], ffi.c_ulong, UnsafePointer[ffi.c_ulong_long], UnsafePointer[OpaquePointer]) -> Int32
alias rte_hash_lookup_bulk = fn (read UnsafePointer[rte_hash], read UnsafePointer[OpaquePointer], ffi.c_ulong, UnsafePointer[ffi.c_long]) -> Int32
alias rte_hash_iterate = fn (read UnsafePointer[rte_hash], read UnsafePointer[OpaquePointer], UnsafePointer[OpaquePointer], UnsafePointer[ffi.c_ulong]) -> ffi.c_long
alias rte_hash_rcu_qsbr_add = fn (UnsafePointer[rte_hash], UnsafePointer[rte_hash_rcu_config]) -> Int32
alias rte_hash_rcu_qsbr_dq_reclaim = fn (UnsafePointer[rte_hash], UnsafePointer[UInt32], UnsafePointer[UInt32], UnsafePointer[UInt32]) -> Int32


alias rte_hash_alloca = ExternalFunction['alloca', alloca]
alias rte_hash_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_hash_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_hash_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_hash_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_hash_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_hash_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_hash_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_hash_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_hash_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_hash_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_hash_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_hash_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_hash_rte_hash_free = ExternalFunction['rte_hash_free', rte_hash_free]
alias rte_hash_rte_hash_create = ExternalFunction['rte_hash_create', rte_hash_create]
alias rte_hash_rte_hash_set_cmp_func = ExternalFunction['rte_hash_set_cmp_func', rte_hash_set_cmp_func]
alias rte_hash_rte_hash_find_existing = ExternalFunction['rte_hash_find_existing', rte_hash_find_existing]
alias rte_hash_rte_hash_reset = ExternalFunction['rte_hash_reset', rte_hash_reset]
alias rte_hash_rte_hash_count = ExternalFunction['rte_hash_count', rte_hash_count]
alias rte_hash_rte_hash_max_key_id = ExternalFunction['rte_hash_max_key_id', rte_hash_max_key_id]
alias rte_hash_rte_hash_add_key_data = ExternalFunction['rte_hash_add_key_data', rte_hash_add_key_data]
alias rte_hash_rte_hash_add_key_with_hash_data = ExternalFunction['rte_hash_add_key_with_hash_data', rte_hash_add_key_with_hash_data]
alias rte_hash_rte_hash_add_key = ExternalFunction['rte_hash_add_key', rte_hash_add_key]
alias rte_hash_rte_hash_add_key_with_hash = ExternalFunction['rte_hash_add_key_with_hash', rte_hash_add_key_with_hash]
alias rte_hash_rte_hash_del_key = ExternalFunction['rte_hash_del_key', rte_hash_del_key]
alias rte_hash_rte_hash_del_key_with_hash = ExternalFunction['rte_hash_del_key_with_hash', rte_hash_del_key_with_hash]
alias rte_hash_rte_hash_get_key_with_position = ExternalFunction['rte_hash_get_key_with_position', rte_hash_get_key_with_position]
alias rte_hash_rte_hash_free_key_with_position = ExternalFunction['rte_hash_free_key_with_position', rte_hash_free_key_with_position]
alias rte_hash_rte_hash_lookup_data = ExternalFunction['rte_hash_lookup_data', rte_hash_lookup_data]
alias rte_hash_rte_hash_lookup_with_hash_data = ExternalFunction['rte_hash_lookup_with_hash_data', rte_hash_lookup_with_hash_data]
alias rte_hash_rte_hash_lookup = ExternalFunction['rte_hash_lookup', rte_hash_lookup]
alias rte_hash_rte_hash_lookup_with_hash = ExternalFunction['rte_hash_lookup_with_hash', rte_hash_lookup_with_hash]
alias rte_hash_rte_hash_hash = ExternalFunction['rte_hash_hash', rte_hash_hash]
alias rte_hash_rte_hash_lookup_bulk_data = ExternalFunction['rte_hash_lookup_bulk_data', rte_hash_lookup_bulk_data]
alias rte_hash_rte_hash_lookup_with_hash_bulk = ExternalFunction['rte_hash_lookup_with_hash_bulk', rte_hash_lookup_with_hash_bulk]
alias rte_hash_rte_hash_lookup_with_hash_bulk_data = ExternalFunction['rte_hash_lookup_with_hash_bulk_data', rte_hash_lookup_with_hash_bulk_data]
alias rte_hash_rte_hash_lookup_bulk = ExternalFunction['rte_hash_lookup_bulk', rte_hash_lookup_bulk]
alias rte_hash_rte_hash_iterate = ExternalFunction['rte_hash_iterate', rte_hash_iterate]
alias rte_hash_rte_hash_rcu_qsbr_add = ExternalFunction['rte_hash_rcu_qsbr_add', rte_hash_rcu_qsbr_add]
alias rte_hash_rte_hash_rcu_qsbr_dq_reclaim = ExternalFunction['rte_hash_rcu_qsbr_dq_reclaim', rte_hash_rcu_qsbr_dq_reclaim]

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
struct rte_hash(Copyable, Movable):
    var lib: DLHandle
    
    var alloca: rte_hash_alloca.type
    var sched_setparam: rte_hash_sched_setparam.type
    var sched_getparam: rte_hash_sched_getparam.type
    var sched_setscheduler: rte_hash_sched_setscheduler.type
    var sched_getscheduler: rte_hash_sched_getscheduler.type
    var sched_yield: rte_hash_sched_yield.type
    var sched_get_priority_max: rte_hash_sched_get_priority_max.type
    var sched_get_priority_min: rte_hash_sched_get_priority_min.type
    var sched_rr_get_interval: rte_hash_sched_rr_get_interval.type
    var rte_is_aligned: rte_hash_rte_is_aligned.type
    var rte_str_to_size: rte_hash_rte_str_to_size.type
    var rte_size_to_str: rte_hash_rte_size_to_str.type
    var rte_exit: rte_hash_rte_exit.type
    var rte_hash_free: rte_hash_rte_hash_free.type
    var rte_hash_create: rte_hash_rte_hash_create.type
    var rte_hash_set_cmp_func: rte_hash_rte_hash_set_cmp_func.type
    var rte_hash_find_existing: rte_hash_rte_hash_find_existing.type
    var rte_hash_reset: rte_hash_rte_hash_reset.type
    var rte_hash_count: rte_hash_rte_hash_count.type
    var rte_hash_max_key_id: rte_hash_rte_hash_max_key_id.type
    var rte_hash_add_key_data: rte_hash_rte_hash_add_key_data.type
    var rte_hash_add_key_with_hash_data: rte_hash_rte_hash_add_key_with_hash_data.type
    var rte_hash_add_key: rte_hash_rte_hash_add_key.type
    var rte_hash_add_key_with_hash: rte_hash_rte_hash_add_key_with_hash.type
    var rte_hash_del_key: rte_hash_rte_hash_del_key.type
    var rte_hash_del_key_with_hash: rte_hash_rte_hash_del_key_with_hash.type
    var rte_hash_get_key_with_position: rte_hash_rte_hash_get_key_with_position.type
    var rte_hash_free_key_with_position: rte_hash_rte_hash_free_key_with_position.type
    var rte_hash_lookup_data: rte_hash_rte_hash_lookup_data.type
    var rte_hash_lookup_with_hash_data: rte_hash_rte_hash_lookup_with_hash_data.type
    var rte_hash_lookup: rte_hash_rte_hash_lookup.type
    var rte_hash_lookup_with_hash: rte_hash_rte_hash_lookup_with_hash.type
    var rte_hash_hash: rte_hash_rte_hash_hash.type
    var rte_hash_lookup_bulk_data: rte_hash_rte_hash_lookup_bulk_data.type
    var rte_hash_lookup_with_hash_bulk: rte_hash_rte_hash_lookup_with_hash_bulk.type
    var rte_hash_lookup_with_hash_bulk_data: rte_hash_rte_hash_lookup_with_hash_bulk_data.type
    var rte_hash_lookup_bulk: rte_hash_rte_hash_lookup_bulk.type
    var rte_hash_iterate: rte_hash_rte_hash_iterate.type
    var rte_hash_rcu_qsbr_add: rte_hash_rte_hash_rcu_qsbr_add.type
    var rte_hash_rcu_qsbr_dq_reclaim: rte_hash_rte_hash_rcu_qsbr_dq_reclaim.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_hash.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_hash from", 'librte_hash.so', ":\n", e)
            )

    
        self.alloca = rte_hash_alloca.load(self.lib)
        self.sched_setparam = rte_hash_sched_setparam.load(self.lib)
        self.sched_getparam = rte_hash_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_hash_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_hash_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_hash_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_hash_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_hash_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_hash_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_hash_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_hash_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_hash_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_hash_rte_exit.load(self.lib)
        self.rte_hash_free = rte_hash_rte_hash_free.load(self.lib)
        self.rte_hash_create = rte_hash_rte_hash_create.load(self.lib)
        self.rte_hash_set_cmp_func = rte_hash_rte_hash_set_cmp_func.load(self.lib)
        self.rte_hash_find_existing = rte_hash_rte_hash_find_existing.load(self.lib)
        self.rte_hash_reset = rte_hash_rte_hash_reset.load(self.lib)
        self.rte_hash_count = rte_hash_rte_hash_count.load(self.lib)
        self.rte_hash_max_key_id = rte_hash_rte_hash_max_key_id.load(self.lib)
        self.rte_hash_add_key_data = rte_hash_rte_hash_add_key_data.load(self.lib)
        self.rte_hash_add_key_with_hash_data = rte_hash_rte_hash_add_key_with_hash_data.load(self.lib)
        self.rte_hash_add_key = rte_hash_rte_hash_add_key.load(self.lib)
        self.rte_hash_add_key_with_hash = rte_hash_rte_hash_add_key_with_hash.load(self.lib)
        self.rte_hash_del_key = rte_hash_rte_hash_del_key.load(self.lib)
        self.rte_hash_del_key_with_hash = rte_hash_rte_hash_del_key_with_hash.load(self.lib)
        self.rte_hash_get_key_with_position = rte_hash_rte_hash_get_key_with_position.load(self.lib)
        self.rte_hash_free_key_with_position = rte_hash_rte_hash_free_key_with_position.load(self.lib)
        self.rte_hash_lookup_data = rte_hash_rte_hash_lookup_data.load(self.lib)
        self.rte_hash_lookup_with_hash_data = rte_hash_rte_hash_lookup_with_hash_data.load(self.lib)
        self.rte_hash_lookup = rte_hash_rte_hash_lookup.load(self.lib)
        self.rte_hash_lookup_with_hash = rte_hash_rte_hash_lookup_with_hash.load(self.lib)
        self.rte_hash_hash = rte_hash_rte_hash_hash.load(self.lib)
        self.rte_hash_lookup_bulk_data = rte_hash_rte_hash_lookup_bulk_data.load(self.lib)
        self.rte_hash_lookup_with_hash_bulk = rte_hash_rte_hash_lookup_with_hash_bulk.load(self.lib)
        self.rte_hash_lookup_with_hash_bulk_data = rte_hash_rte_hash_lookup_with_hash_bulk_data.load(self.lib)
        self.rte_hash_lookup_bulk = rte_hash_rte_hash_lookup_bulk.load(self.lib)
        self.rte_hash_iterate = rte_hash_rte_hash_iterate.load(self.lib)
        self.rte_hash_rcu_qsbr_add = rte_hash_rte_hash_rcu_qsbr_add.load(self.lib)
        self.rte_hash_rcu_qsbr_dq_reclaim = rte_hash_rte_hash_rcu_qsbr_dq_reclaim.load(self.lib)

