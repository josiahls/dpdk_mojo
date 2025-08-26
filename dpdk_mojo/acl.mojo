
from sys.ffi import DLHandle
from sys import ffi
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from pathlib import Path
from c_binder_mojo.stdlib_ext import C_Union
from utils import StaticTuple

# Node: TranslationUnitDecl()
alias __int128_t = Int128
alias __uint128_t = UInt128
@register_passable("trivial")
struct __NSConstantString_tag:
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
@register_passable("trivial")
struct __va_list:
	pass
alias __builtin_va_list = __va_list

alias bits_t = Int32
@register_passable("trivial")
struct rte_acl_bitset:
	var bits : Int32

@register_passable("trivial")
struct rte_acl_node:
	pass
@register_passable("trivial")
struct rte_acl_ptr_set:

	var values : rte_acl_bitset

	var ptr : rte_acl_node

@register_passable("trivial")
struct rte_acl_classifier_results:
	var results : Int32

@register_passable("trivial")
struct rte_acl_match_results:
	var results : Int32

	var priority : Int32

alias anonomous_record_1 = C_Union[StaticTuple[Int8, 4], Int32]


alias RTE_ACL_FULL_TRIE = 0

alias RTE_ACL_NOSRC_TRIE = 1

alias RTE_ACL_NODST_TRIE = 2

alias RTE_ACL_NOPORTS_TRIE = 4

alias RTE_ACL_NOVLAN_TRIE = 8

alias RTE_ACL_UNUSED_TRIE = 2147483648

@register_passable("trivial")
struct rte_acl_trie:
	var type : Int32

	var count : Int32

	var root_index : Int32

	var data_index : UnsafePointer[Int32]

	var num_data_indexes : Int32

@register_passable("trivial")
struct rte_acl_bld_trie:
	var trie : UnsafePointer[rte_acl_node]

@register_passable("trivial")
struct rte_acl_config:
	pass
@register_passable("trivial")
struct rte_acl_classify_alg:
@register_passable("trivial")
struct rte_acl_ctx:
	var name : StaticTuple[Int8, 32]

	var socket_id : Int32

	var alg : rte_acl_classify_alg

	var first_load_sz : Int32

	var rules : OpaquePointer

	var max_rules : Int32

	var rule_sz : Int32

	var num_rules : Int32

	var num_categories : Int32

	var num_tries : Int32

	var match_index : Int32

	var no_match : Int32

	var idle : Int32

	var trans_table : UnsafePointer[Int32]

	var data_indexes : UnsafePointer[Int32]

	var trie : StaticTuple[rte_acl_trie, 8]

	var mem : OpaquePointer

	var mem_sz : Int32

	var config : rte_acl_config

alias rte_acl_gen = fn (UnsafePointer[rte_acl_ctx], UnsafePointer[rte_acl_trie], UnsafePointer[rte_acl_bld_trie], Int32, Int32, Int32, Int32) -> Int32
alias rte_acl_classify_t = fn(read UnsafePointer[rte_acl_ctx], read UnsafePointer[UnsafePointer[Int32]], UnsafePointer[Int32], Int32, Int32) -> Int32
alias rte_acl_classify_scalar = fn (read UnsafePointer[rte_acl_ctx], read UnsafePointer[UnsafePointer[Int32]], UnsafePointer[Int32], Int32, Int32) -> Int32
alias rte_acl_classify_sse = fn (read UnsafePointer[rte_acl_ctx], read UnsafePointer[UnsafePointer[Int32]], UnsafePointer[Int32], Int32, Int32) -> Int32
alias rte_acl_classify_avx2 = fn (read UnsafePointer[rte_acl_ctx], read UnsafePointer[UnsafePointer[Int32]], UnsafePointer[Int32], Int32, Int32) -> Int32
alias rte_acl_classify_avx512x16 = fn (read UnsafePointer[rte_acl_ctx], read UnsafePointer[UnsafePointer[Int32]], UnsafePointer[Int32], Int32, Int32) -> Int32
alias rte_acl_classify_avx512x32 = fn (read UnsafePointer[rte_acl_ctx], read UnsafePointer[UnsafePointer[Int32]], UnsafePointer[Int32], Int32, Int32) -> Int32
alias rte_acl_classify_neon = fn (read UnsafePointer[rte_acl_ctx], read UnsafePointer[UnsafePointer[Int32]], UnsafePointer[Int32], Int32, Int32) -> Int32
alias rte_acl_classify_altivec = fn (read UnsafePointer[rte_acl_ctx], read UnsafePointer[UnsafePointer[Int32]], UnsafePointer[Int32], Int32, Int32) -> Int32
