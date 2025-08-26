
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
@register_passable("trivial")
struct anonomous_record_1:
	var __val : StaticTuple[Int32, 2]

alias __fsid_t = anonomous_record_1

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
@register_passable("trivial")
struct rte_bbdev_op_td_flag_bitmasks:

	alias RTE_BBDEV_TURBO_SUBBLOCK_DEINTERLEAVE = 0

	alias RTE_BBDEV_TURBO_CRC_TYPE_24B = 1

	alias RTE_BBDEV_TURBO_EQUALIZER = 2

	alias RTE_BBDEV_TURBO_SOFT_OUT_SATURATE = 3

	alias RTE_BBDEV_TURBO_HALF_ITERATION_EVEN = 4

	alias RTE_BBDEV_TURBO_CONTINUE_CRC_MATCH = 5

	alias RTE_BBDEV_TURBO_SOFT_OUTPUT = 6

	alias RTE_BBDEV_TURBO_EARLY_TERMINATION = 7

	alias RTE_BBDEV_TURBO_DEC_INTERRUPTS = 8

	alias RTE_BBDEV_TURBO_POS_LLR_1_BIT_IN = 9

	alias RTE_BBDEV_TURBO_NEG_LLR_1_BIT_IN = 10

	alias RTE_BBDEV_TURBO_POS_LLR_1_BIT_SOFT_OUT = 11

	alias RTE_BBDEV_TURBO_NEG_LLR_1_BIT_SOFT_OUT = 12

	alias RTE_BBDEV_TURBO_MAP_DEC = 13

	alias RTE_BBDEV_TURBO_DEC_SCATTER_GATHER = 14

	alias RTE_BBDEV_TURBO_DEC_TB_CRC_24B_KEEP = 15

	alias RTE_BBDEV_TURBO_DEC_CRC_24B_DROP = 16

@register_passable("trivial")
struct rte_bbdev_op_te_flag_bitmasks:

	alias RTE_BBDEV_TURBO_RV_INDEX_BYPASS = 0

	alias RTE_BBDEV_TURBO_RATE_MATCH = 1

	alias RTE_BBDEV_TURBO_CRC_24B_ATTACH = 2

	alias RTE_BBDEV_TURBO_CRC_24A_ATTACH = 3

	alias RTE_BBDEV_TURBO_ENC_INTERRUPTS = 4

	alias RTE_BBDEV_TURBO_ENC_SCATTER_GATHER = 5

@register_passable("trivial")
struct rte_bbdev_op_ldpcdec_flag_bitmasks:

	alias RTE_BBDEV_LDPC_CRC_TYPE_24A_CHECK = 0

	alias RTE_BBDEV_LDPC_CRC_TYPE_24B_CHECK = 1

	alias RTE_BBDEV_LDPC_CRC_TYPE_24B_DROP = 2

	alias RTE_BBDEV_LDPC_CRC_TYPE_16_CHECK = 3

	alias RTE_BBDEV_LDPC_DEINTERLEAVER_BYPASS = 4

	alias RTE_BBDEV_LDPC_HQ_COMBINE_IN_ENABLE = 5

	alias RTE_BBDEV_LDPC_HQ_COMBINE_OUT_ENABLE = 6

	alias RTE_BBDEV_LDPC_DECODE_BYPASS = 7

	alias RTE_BBDEV_LDPC_SOFT_OUT_ENABLE = 8

	alias RTE_BBDEV_LDPC_SOFT_OUT_RM_BYPASS = 9

	alias RTE_BBDEV_LDPC_SOFT_OUT_DEINTERLEAVER_BYPASS = 10

	alias RTE_BBDEV_LDPC_ITERATION_STOP_ENABLE = 11

	alias RTE_BBDEV_LDPC_DEC_INTERRUPTS = 12

	alias RTE_BBDEV_LDPC_DEC_SCATTER_GATHER = 13

	alias RTE_BBDEV_LDPC_HARQ_6BIT_COMPRESSION = 14

	alias RTE_BBDEV_LDPC_LLR_COMPRESSION = 15

	alias RTE_BBDEV_LDPC_INTERNAL_HARQ_MEMORY_IN_ENABLE = 16

	alias RTE_BBDEV_LDPC_INTERNAL_HARQ_MEMORY_OUT_ENABLE = 17

	alias RTE_BBDEV_LDPC_INTERNAL_HARQ_MEMORY_LOOPBACK = 18

	alias RTE_BBDEV_LDPC_INTERNAL_HARQ_MEMORY_FILLERS = 19

	alias RTE_BBDEV_LDPC_HARQ_4BIT_COMPRESSION = 20

@register_passable("trivial")
struct rte_bbdev_op_ldpcenc_flag_bitmasks:

	alias RTE_BBDEV_LDPC_INTERLEAVER_BYPASS = 0

	alias RTE_BBDEV_LDPC_RATE_MATCH = 1

	alias RTE_BBDEV_LDPC_CRC_24A_ATTACH = 2

	alias RTE_BBDEV_LDPC_CRC_24B_ATTACH = 3

	alias RTE_BBDEV_LDPC_CRC_16_ATTACH = 4

	alias RTE_BBDEV_LDPC_ENC_INTERRUPTS = 5

	alias RTE_BBDEV_LDPC_ENC_SCATTER_GATHER = 6

	alias RTE_BBDEV_LDPC_ENC_CONCATENATION = 7

@register_passable("trivial")
struct rte_bbdev_op_fft_flag_bitmasks:

	alias RTE_BBDEV_FFT_WINDOWING = 0

	alias RTE_BBDEV_FFT_CS_ADJUSTMENT = 1

	alias RTE_BBDEV_FFT_DFT_BYPASS = 2

	alias RTE_BBDEV_FFT_IDFT_BYPASS = 3

	alias RTE_BBDEV_FFT_WINDOWING_BYPASS = 4

	alias RTE_BBDEV_FFT_POWER_MEAS = 5

	alias RTE_BBDEV_FFT_FP16_INPUT = 6

	alias RTE_BBDEV_FFT_FP16_OUTPUT = 7

	alias RTE_BBDEV_FFT_TIMING_OFFSET_PER_CS = 8

	alias RTE_BBDEV_FFT_TIMING_ERROR = 9

	alias RTE_BBDEV_FFT_DEWINDOWING = 10

	alias RTE_BBDEV_FFT_FREQ_RESAMPLING = 11

@register_passable("trivial")
struct rte_bbdev_op_mldts_flag_bitmasks:

	alias RTE_BBDEV_MLDTS_REP = 0

@register_passable("trivial")
struct rte_bbdev_op_cb_mode:

	alias RTE_BBDEV_TRANSPORT_BLOCK = 0

	alias RTE_BBDEV_CODE_BLOCK = 1

@register_passable("trivial")
struct rte_mbuf:
	pass
@register_passable("trivial")
struct rte_bbdev_op_data:

	var data : rte_mbuf

	var offset : UInt32

	var length : UInt32

@register_passable("trivial")
struct rte_bbdev_op_dec_turbo_cb_params:

	var k : UInt16

	var e : UInt32

@register_passable("trivial")
struct rte_bbdev_op_dec_ldpc_cb_params:

	var e : UInt32

@register_passable("trivial")
struct rte_bbdev_op_dec_turbo_tb_params:

	var k_neg : UInt16

	var k_pos : UInt16

	var c_neg : UInt8

	var c : UInt8

	var cab : UInt8

	var ea : UInt32

	var eb : UInt32

	var r : UInt8

@register_passable("trivial")
struct rte_bbdev_op_dec_ldpc_tb_params:

	var ea : UInt32

	var eb : UInt32

	var c : UInt8

	var r : UInt8

	var cab : UInt8

alias anonomous_record_2 = C_Union[rte_bbdev_op_dec_turbo_cb_params, rte_bbdev_op_dec_turbo_tb_params]

@register_passable("trivial")
struct rte_bbdev_op_turbo_dec:

	var input : rte_bbdev_op_data

	var hard_output : rte_bbdev_op_data

	var soft_output : rte_bbdev_op_data

	var op_flags : UInt32

	var rv_index : UInt8

	var iter_min : UInt8

	var iter_max : UInt8

	var iter_count : UInt8

	var ext_scale : UInt8

	var num_maps : UInt8

	var code_block_mode : UInt8

	var union_placeholder_1 : anonomous_record_2



alias anonomous_record_3 = C_Union[rte_bbdev_op_dec_ldpc_cb_params, rte_bbdev_op_dec_ldpc_tb_params]

@register_passable("trivial")
struct rte_bbdev_op_ldpc_dec:

	var input : rte_bbdev_op_data

	var hard_output : rte_bbdev_op_data

	var soft_output : rte_bbdev_op_data

	var harq_combined_input : rte_bbdev_op_data

	var harq_combined_output : rte_bbdev_op_data

	var op_flags : UInt32

	var rv_index : UInt8

	var iter_max : UInt8

	var iter_count : UInt8

	var basegraph : UInt8

	var z_c : UInt16

	var n_cb : UInt16

	var q_m : UInt8

	var n_filler : UInt16

	var code_block_mode : UInt8

	var union_placeholder_1 : anonomous_record_3



	var k0 : UInt16

@register_passable("trivial")
struct rte_bbdev_op_enc_turbo_cb_params:

	var k : UInt16

	var e : UInt32

	var ncb : UInt16

@register_passable("trivial")
struct rte_bbdev_op_enc_turbo_tb_params:

	var k_neg : UInt16

	var k_pos : UInt16

	var c_neg : UInt8

	var c : UInt8

	var cab : UInt8

	var ea : UInt32

	var eb : UInt32

	var ncb_neg : UInt16

	var ncb_pos : UInt16

	var r : UInt8

@register_passable("trivial")
struct rte_bbdev_op_enc_ldpc_cb_params:

	var e : UInt32

@register_passable("trivial")
struct rte_bbdev_op_enc_ldpc_tb_params:

	var ea : UInt32

	var eb : UInt32

	var c : UInt8

	var r : UInt8

	var cab : UInt8

alias anonomous_record_4 = C_Union[rte_bbdev_op_enc_turbo_cb_params, rte_bbdev_op_enc_turbo_tb_params]

@register_passable("trivial")
struct rte_bbdev_op_turbo_enc:

	var input : rte_bbdev_op_data

	var output : rte_bbdev_op_data

	var op_flags : UInt32

	var rv_index : UInt8

	var code_block_mode : UInt8

	var union_placeholder_1 : anonomous_record_4



alias anonomous_record_5 = C_Union[rte_bbdev_op_enc_ldpc_cb_params, rte_bbdev_op_enc_ldpc_tb_params]

@register_passable("trivial")
struct rte_bbdev_op_ldpc_enc:

	var input : rte_bbdev_op_data

	var output : rte_bbdev_op_data

	var op_flags : UInt32

	var rv_index : UInt8

	var basegraph : UInt8

	var z_c : UInt16

	var n_cb : UInt16

	var q_m : UInt8

	var n_filler : UInt16

	var code_block_mode : UInt8

	var union_placeholder_1 : anonomous_record_5



@register_passable("trivial")
struct rte_bbdev_op_fft:

	var base_input : rte_bbdev_op_data

	var base_output : rte_bbdev_op_data

	var dewindowing_input : rte_bbdev_op_data

	var power_meas_output : rte_bbdev_op_data

	var op_flags : UInt32

	var input_sequence_size : UInt16

	var input_leading_padding : UInt16

	var output_sequence_size : UInt16

	var output_leading_depadding : UInt16

	var window_index : StaticTuple[UInt8, 6]

	var cs_bitmap : UInt16

	var num_antennas_log2 : UInt8

	var idft_log2 : UInt8

	var dft_log2 : UInt8

	var cs_time_adjustment : Int8

	var idft_shift : Int8

	var dft_shift : Int8

	var ncs_reciprocal : UInt16

	var power_shift : UInt16

	var fp16_exp_adjust : UInt16

	var freq_resample_mode : Int8

	var output_depadded_size : UInt16

	var cs_theta_0 : StaticTuple[UInt16, 12]

	var cs_theta_d : StaticTuple[ffi.c_ulong, 12]

	var time_offset : StaticTuple[Int8, 12]

@register_passable("trivial")
struct rte_bbdev_op_mldts:

	var qhy_input : rte_bbdev_op_data

	var r_input : rte_bbdev_op_data

	var output : rte_bbdev_op_data

	var op_flags : UInt32

	var num_rbs : UInt16

	var num_layers : UInt16

	var q_m : StaticTuple[UInt8, 4]

	var r_rep : UInt8

	var c_rep : UInt8

@register_passable("trivial")
struct rte_bbdev_op_cap_turbo_dec:

	var capability_flags : UInt32

	var max_llr_modulus : Int8

	var num_buffers_src : UInt8

	var num_buffers_hard_out : UInt8

	var num_buffers_soft_out : UInt8

@register_passable("trivial")
struct rte_bbdev_op_cap_turbo_enc:

	var capability_flags : UInt32

	var num_buffers_src : UInt8

	var num_buffers_dst : UInt8

@register_passable("trivial")
struct rte_bbdev_op_cap_ldpc_dec:

	var capability_flags : UInt32

	var llr_size : Int8

	var llr_decimals : Int8

	var num_buffers_src : UInt16

	var num_buffers_hard_out : UInt16

	var num_buffers_soft_out : UInt16

@register_passable("trivial")
struct rte_bbdev_op_cap_ldpc_enc:

	var capability_flags : UInt32

	var num_buffers_src : UInt16

	var num_buffers_dst : UInt16

@register_passable("trivial")
struct rte_bbdev_op_cap_fft:

	var capability_flags : UInt32

	var num_buffers_src : UInt16

	var num_buffers_dst : UInt16

	var fft_windows_num : UInt16

@register_passable("trivial")
struct rte_bbdev_op_cap_mld:

	var capability_flags : UInt32

	var num_buffers_src : UInt16

	var num_buffers_dst : UInt16

@register_passable("trivial")
struct rte_bbdev_op_type:

	alias RTE_BBDEV_OP_NONE = 0

	alias RTE_BBDEV_OP_TURBO_DEC = 1

	alias RTE_BBDEV_OP_TURBO_ENC = 2

	alias RTE_BBDEV_OP_LDPC_DEC = 3

	alias RTE_BBDEV_OP_LDPC_ENC = 4

	alias RTE_BBDEV_OP_FFT = 5

	alias RTE_BBDEV_OP_MLDTS = 6


alias RTE_BBDEV_DRV_ERROR = 0

alias RTE_BBDEV_DATA_ERROR = 1

alias RTE_BBDEV_CRC_ERROR = 2

alias RTE_BBDEV_SYNDROME_ERROR = 3

alias RTE_BBDEV_ENGINE_ERROR = 4

alias anonomous_record_6 = C_Union[rte_bbdev_op_turbo_enc, rte_bbdev_op_ldpc_enc]

@register_passable("trivial")
struct rte_mempool:
	pass
@register_passable("trivial")
struct rte_bbdev_enc_op:

	var status : Int32

	var mempool : rte_mempool

	var opaque_data : OpaquePointer

	var union_placeholder_1 : anonomous_record_6



alias anonomous_record_7 = C_Union[rte_bbdev_op_turbo_dec, rte_bbdev_op_ldpc_dec]

@register_passable("trivial")
struct rte_bbdev_dec_op:

	var status : Int32

	var mempool : UnsafePointer[rte_mempool]

	var opaque_data : OpaquePointer

	var union_placeholder_1 : anonomous_record_7



@register_passable("trivial")
struct rte_bbdev_fft_op:

	var status : Int32

	var mempool : UnsafePointer[rte_mempool]

	var opaque_data : OpaquePointer

	var fft : rte_bbdev_op_fft

@register_passable("trivial")
struct rte_bbdev_mldts_op:

	var status : Int32

	var mempool : UnsafePointer[rte_mempool]

	var opaque_data : OpaquePointer

	var mldts : rte_bbdev_op_mldts

alias anonomous_record_8 = C_Union[rte_bbdev_op_cap_turbo_dec, rte_bbdev_op_cap_turbo_enc, rte_bbdev_op_cap_ldpc_dec, rte_bbdev_op_cap_ldpc_enc, rte_bbdev_op_cap_fft, rte_bbdev_op_cap_mld]

@register_passable("trivial")
struct rte_bbdev_op_cap:

	var type : rte_bbdev_op_type

	var union_placeholder_1 : anonomous_record_8

@register_passable("trivial")
struct rte_bbdev_op_pool_private:
# Node: PlaceHolder()
# {"closeName":"","id":"0x15524230","inner":[{"id":"0x15524280","kind":"VerbatimBlockLineComment","loc":{"col":14,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/lib/bbdev/rte_bbdev.h"},"offset":36789,"tokLen":0},"range":{"begin":{"col":14,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/lib/bbdev/rte_bbdev.h"},"offset":36789,"tokLen":0},"end":{"col":66,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/lib/bbdev/rte_bbdev.h"},"offset":36841,"tokLen":1}},"text":" Private data structure stored with operation pool. "},{"id":"0x155242a0","kind":"VerbatimBlockLineComment","loc":{"col":68,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/lib/bbdev/rte_bbdev.h"},"offset":36843,"tokLen":0},"range":{"begin":{"col":68,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/lib/bbdev/rte_bbdev.h"},"offset":36843,"tokLen":0},"end":{"col":68,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/lib/bbdev/rte_bbdev.h"},"offset":36843,"tokLen":0}},"text":""}],"kind":"VerbatimBlockComment","loc":{"col":6,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/lib/bbdev/rte_bbdev.h"},"offset":36781,"tokLen":8},"name":"internal","range":{"begin":{"col":5,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/lib/bbdev/rte_bbdev.h"},"offset":36780,"tokLen":1},"end":{"col":14,"includedFrom":{"file":"/home/mojo_user/dpdk_mojo/dpdk/lib/bbdev/rte_bbdev.h"},"offset":36789,"tokLen":0}}}

	var type : rte_bbdev_op_type

alias rte_bbdev_op_type_str = fn (rte_bbdev_op_type) -> UnsafePointer[Int8]
alias rte_bbdev_op_pool_create = fn (read UnsafePointer[Int8], rte_bbdev_op_type, UInt32, UInt32, Int32) -> UnsafePointer[rte_mempool]
alias rte_bbdev_enc_op_alloc_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[UnsafePointer[rte_bbdev_enc_op]], UInt32) -> Int32
alias rte_bbdev_dec_op_alloc_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[UnsafePointer[rte_bbdev_dec_op]], UInt32) -> Int32
alias rte_bbdev_fft_op_alloc_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[UnsafePointer[rte_bbdev_fft_op]], UInt32) -> Int32
alias rte_bbdev_mldts_op_alloc_bulk = fn (UnsafePointer[rte_mempool], UnsafePointer[UnsafePointer[rte_bbdev_mldts_op]], UInt16) -> Int32
alias rte_bbdev_dec_op_free_bulk = fn (UnsafePointer[UnsafePointer[rte_bbdev_dec_op]], UInt32) -> NoneType
alias rte_bbdev_enc_op_free_bulk = fn (UnsafePointer[UnsafePointer[rte_bbdev_enc_op]], UInt32) -> NoneType
alias rte_bbdev_fft_op_free_bulk = fn (UnsafePointer[UnsafePointer[rte_bbdev_fft_op]], UInt32) -> NoneType
alias rte_bbdev_mldts_op_free_bulk = fn (UnsafePointer[UnsafePointer[rte_bbdev_mldts_op]], UInt32) -> NoneType
alias RTE_TRACE_POINT_FP = fn () -> Int32
alias rte_trace_point_emit_u16 = fn () -> Int32
alias rte_trace_point_emit_ptr = fn () -> Int32
alias rte_trace_point_emit_string = fn () -> Int32
alias rte_bbdev_count = fn (NoneType) -> UInt16
alias rte_bbdev_is_valid = fn (UInt16) -> Bool
alias rte_bbdev_find_next = fn (UInt16) -> UInt16
alias rte_bbdev_setup_queues = fn (UInt16, UInt16, Int32) -> Int32
alias rte_bbdev_intr_enable = fn (UInt16) -> Int32
@register_passable("trivial")
struct rte_bbdev_queue_conf:

	var socket : Int32

	var queue_size : UInt32

	var priority : UInt8

	var deferred_start : Bool

	var op_type : rte_bbdev_op_type

alias rte_bbdev_queue_configure = fn (UInt16, UInt16, read UnsafePointer[rte_bbdev_queue_conf]) -> Int32
alias rte_bbdev_start = fn (UInt16) -> Int32
alias rte_bbdev_stop = fn (UInt16) -> Int32
alias rte_bbdev_close = fn (UInt16) -> Int32
alias rte_bbdev_queue_start = fn (UInt16, UInt16) -> Int32
alias rte_bbdev_queue_stop = fn (UInt16, UInt16) -> Int32
@register_passable("trivial")
struct rte_bbdev_enqueue_status:

	alias RTE_BBDEV_ENQ_STATUS_NONE = 0

	alias RTE_BBDEV_ENQ_STATUS_QUEUE_FULL = 1

	alias RTE_BBDEV_ENQ_STATUS_RING_FULL = 2

	alias RTE_BBDEV_ENQ_STATUS_INVALID_OP = 3

@register_passable("trivial")
struct rte_bbdev_device_status:

	alias RTE_BBDEV_DEV_NOSTATUS = 0

	alias RTE_BBDEV_DEV_NOT_SUPPORTED = 1

	alias RTE_BBDEV_DEV_RESET = 2

	alias RTE_BBDEV_DEV_CONFIGURED = 3

	alias RTE_BBDEV_DEV_ACTIVE = 4

	alias RTE_BBDEV_DEV_FATAL_ERR = 5

	alias RTE_BBDEV_DEV_RESTART_REQ = 6

	alias RTE_BBDEV_DEV_RECONFIG_REQ = 7

	alias RTE_BBDEV_DEV_CORRECT_ERR = 8

@register_passable("trivial")
struct rte_bbdev_stats:

	var enqueued_count : ffi.c_ulong

	var dequeued_count : ffi.c_ulong

	var enqueue_err_count : ffi.c_ulong

	var dequeue_err_count : ffi.c_ulong

	var enqueue_warn_count : ffi.c_ulong

	var dequeue_warn_count : ffi.c_ulong

	var enqueue_status_count : StaticTuple[ffi.c_ulong_long, 6]

	var acc_offload_cycles : ffi.c_ulong

	var enqueue_depth_avail : UInt16

alias rte_bbdev_stats_get = fn (UInt16, UnsafePointer[rte_bbdev_stats]) -> Int32
alias rte_bbdev_stats_reset = fn (UInt16) -> Int32
@register_passable("trivial")
struct rte_cpu_flag_t:
@register_passable("trivial")
struct rte_bbdev_driver_info:

	var driver_name : UnsafePointer[Int8]

	var max_num_queues : UInt32

	var num_queues : StaticTuple[UInt32, 8]

	var queue_priority : StaticTuple[UInt32, 8]

	var queue_size_lim : UInt32

	var hardware_accelerated : Bool

	var max_dl_queue_priority : UInt8

	var max_ul_queue_priority : UInt8

	var queue_intr_supported : Bool

	var device_status : rte_bbdev_device_status

	var harq_buffer_size : UInt32

	var min_alignment : UInt16

	var data_endianness : UInt8

	var default_queue_conf : rte_bbdev_queue_conf

	var capabilities : UnsafePointer[rte_bbdev_op_cap]

	var cpu_flag_reqs : rte_cpu_flag_t

	var fft_window_width : UnsafePointer[UInt16]

@register_passable("trivial")
struct rte_device:
	pass
@register_passable("trivial")
struct rte_bbdev_info:

	var socket_id : Int32

	var dev_name : UnsafePointer[Int8]

	var device : rte_device

	var num_queues : UInt16

	var started : Bool

	var drv : rte_bbdev_driver_info

alias rte_bbdev_info_get = fn (UInt16, UnsafePointer[rte_bbdev_info]) -> Int32
@register_passable("trivial")
struct rte_bbdev_queue_info:

	var conf : rte_bbdev_queue_conf

	var started : Bool

alias rte_bbdev_queue_info_get = fn (UInt16, UInt16, UnsafePointer[rte_bbdev_queue_info]) -> Int32
@register_passable("trivial")
struct rte_bbdev_queue_data:
# Node: PlaceHolder()
# {"closeName":"","id":"0x1552d3f0","inner":[{"id":"0x1552d440","kind":"VerbatimBlockLineComment","loc":{"col":14,"offset":12693,"tokLen":0},"range":{"begin":{"col":14,"offset":12693,"tokLen":0},"end":{"col":74,"offset":12753,"tokLen":1}},"text":" The data structure associated with each queue of a device. "},{"id":"0x1552d460","kind":"VerbatimBlockLineComment","loc":{"col":76,"offset":12755,"tokLen":0},"range":{"begin":{"col":76,"offset":12755,"tokLen":0},"end":{"col":76,"offset":12755,"tokLen":0}},"text":""}],"kind":"VerbatimBlockComment","loc":{"col":6,"offset":12685,"tokLen":8},"name":"internal","range":{"begin":{"col":5,"offset":12684,"tokLen":1},"end":{"col":14,"offset":12693,"tokLen":0}}}

	var queue_private : OpaquePointer

	var conf : rte_bbdev_queue_conf

	var queue_stats : rte_bbdev_stats

	var enqueue_status : rte_bbdev_enqueue_status

	var started : Bool

alias rte_bbdev_enqueue_enc_ops_t = fn(UnsafePointer[rte_bbdev_queue_data], UnsafePointer[UnsafePointer[rte_bbdev_enc_op]], UInt16) -> UInt16
alias rte_bbdev_enqueue_dec_ops_t = fn(UnsafePointer[rte_bbdev_queue_data], UnsafePointer[UnsafePointer[rte_bbdev_dec_op]], UInt16) -> UInt16
alias rte_bbdev_enqueue_fft_ops_t = fn(UnsafePointer[rte_bbdev_queue_data], UnsafePointer[UnsafePointer[rte_bbdev_fft_op]], UInt16) -> UInt16
alias rte_bbdev_enqueue_mldts_ops_t = fn(UnsafePointer[rte_bbdev_queue_data], UnsafePointer[UnsafePointer[rte_bbdev_mldts_op]], UInt16) -> UInt16
alias rte_bbdev_dequeue_enc_ops_t = fn(UnsafePointer[rte_bbdev_queue_data], UnsafePointer[UnsafePointer[rte_bbdev_enc_op]], UInt16) -> UInt16
alias rte_bbdev_dequeue_dec_ops_t = fn(UnsafePointer[rte_bbdev_queue_data], UnsafePointer[UnsafePointer[rte_bbdev_dec_op]], UInt16) -> UInt16
alias rte_bbdev_dequeue_fft_ops_t = fn(UnsafePointer[rte_bbdev_queue_data], UnsafePointer[UnsafePointer[rte_bbdev_fft_op]], UInt16) -> UInt16
alias rte_bbdev_dequeue_mldts_ops_t = fn(UnsafePointer[rte_bbdev_queue_data], UnsafePointer[UnsafePointer[rte_bbdev_mldts_op]], UInt16) -> UInt16
@register_passable("trivial")
struct rte_bbdev_data:
# Node: PlaceHolder()
# {"closeName":"","id":"0x1552e500","inner":[{"id":"0x1552e550","kind":"VerbatimBlockLineComment","loc":{"col":13,"offset":14895,"tokLen":0},"range":{"begin":{"col":13,"offset":14895,"tokLen":0},"end":{"col":75,"offset":14957,"tokLen":0}},"text":" The data associated with a device, with no function pointers."},{"id":"0x1552e570","kind":"VerbatimBlockLineComment","loc":{"col":3,"line":483,"offset":14960,"tokLen":0},"range":{"begin":{"col":3,"offset":14960,"tokLen":0},"end":{"col":71,"offset":15028,"tokLen":0}},"text":" This structure is safe to place in shared memory to be common among"},{"id":"0x1552e590","kind":"VerbatimBlockLineComment","loc":{"col":3,"line":484,"offset":15031,"tokLen":0},"range":{"begin":{"col":3,"offset":15031,"tokLen":0},"end":{"col":76,"offset":15104,"tokLen":0}},"text":" different processes in a multi-process configuration. Drivers can access"},{"id":"0x1552e5b0","kind":"VerbatimBlockLineComment","loc":{"col":3,"line":485,"offset":15107,"tokLen":0},"range":{"begin":{"col":3,"offset":15107,"tokLen":0},"end":{"col":49,"offset":15153,"tokLen":0}},"text":" these fields, but should never write to them!"},{"id":"0x1552e5d0","kind":"VerbatimBlockLineComment","loc":{"col":1,"line":486,"offset":15154,"tokLen":0},"range":{"begin":{"col":1,"offset":15154,"tokLen":0},"end":{"col":2,"offset":15155,"tokLen":1}},"text":" "},{"id":"0x1552e5f0","kind":"VerbatimBlockLineComment","loc":{"col":4,"offset":15157,"tokLen":0},"range":{"begin":{"col":4,"offset":15157,"tokLen":0},"end":{"col":4,"offset":15157,"tokLen":0}},"text":""}],"kind":"VerbatimBlockComment","loc":{"col":5,"offset":14887,"tokLen":8},"name":"internal","range":{"begin":{"col":4,"offset":14886,"tokLen":1},"end":{"col":13,"offset":14895,"tokLen":0}}}

	var name : StaticTuple[Int8, 64]

	var dev_private : OpaquePointer

	var num_queues : UInt16

	var queues : UnsafePointer[rte_bbdev_queue_data]

	var dev_id : UInt16

	var socket_id : Int32

	var started : Bool

	var RTE_ATOMIC : Int32(UInt16)

@register_passable("trivial")
struct rte_bbdev_ops:

@register_passable("trivial")
struct rte_bbdev_callback:
	pass
@register_passable("trivial")
struct rte_intr_handle:
	pass
alias RTE_TAILQ_HEAD = fn () -> Int32
@register_passable("trivial")
struct __rte_cache_aligned:
	pass
alias rte_bbdev = __rte_cache_aligned
alias rte_bbdev_devices = Int32
alias rte_bbdev_enqueue_enc_ops = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_bbdev_enc_op]], UInt16) -> UInt16
alias rte_bbdev_enqueue_dec_ops = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_bbdev_dec_op]], UInt16) -> UInt16
alias rte_bbdev_enqueue_ldpc_enc_ops = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_bbdev_enc_op]], UInt16) -> UInt16
alias rte_bbdev_enqueue_ldpc_dec_ops = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_bbdev_dec_op]], UInt16) -> UInt16
alias rte_bbdev_enqueue_fft_ops = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_bbdev_fft_op]], UInt16) -> UInt16
alias rte_bbdev_enqueue_mldts_ops = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_bbdev_mldts_op]], UInt16) -> UInt16
alias rte_bbdev_dequeue_enc_ops = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_bbdev_enc_op]], UInt16) -> UInt16
alias rte_bbdev_dequeue_dec_ops = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_bbdev_dec_op]], UInt16) -> UInt16
alias rte_bbdev_dequeue_ldpc_enc_ops = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_bbdev_enc_op]], UInt16) -> UInt16
alias rte_bbdev_dequeue_ldpc_dec_ops = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_bbdev_dec_op]], UInt16) -> UInt16
alias rte_bbdev_dequeue_fft_ops = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_bbdev_fft_op]], UInt16) -> UInt16
alias rte_bbdev_dequeue_mldts_ops = fn (UInt16, UInt16, UnsafePointer[UnsafePointer[rte_bbdev_mldts_op]], UInt16) -> UInt16
@register_passable("trivial")
struct rte_bbdev_event_type:

	alias RTE_BBDEV_EVENT_UNKNOWN = 0

	alias RTE_BBDEV_EVENT_ERROR = 1

	alias RTE_BBDEV_EVENT_DEQUEUE = 2

	alias RTE_BBDEV_EVENT_MAX = 3

alias rte_bbdev_cb_fn = fn(UInt16, rte_bbdev_event_type, OpaquePointer, OpaquePointer) -> NoneType
alias rte_bbdev_callback_register = fn (UInt16, rte_bbdev_event_type, rte_bbdev_cb_fn, OpaquePointer) -> Int32
alias rte_bbdev_callback_unregister = fn (UInt16, rte_bbdev_event_type, rte_bbdev_cb_fn, OpaquePointer) -> Int32
alias rte_bbdev_queue_intr_enable = fn (UInt16, UInt16) -> Int32
alias rte_bbdev_queue_intr_disable = fn (UInt16, UInt16) -> Int32
alias rte_bbdev_queue_intr_ctl = fn (UInt16, UInt16, Int32, Int32, OpaquePointer) -> Int32
alias rte_bbdev_device_status_str = fn (rte_bbdev_device_status) -> UnsafePointer[Int8]
alias rte_bbdev_enqueue_status_str = fn (rte_bbdev_enqueue_status) -> UnsafePointer[Int8]
alias rte_bbdev_queue_ops_dump = fn (UInt16, UInt16, UnsafePointer[Int32]) -> Int32
alias rte_bbdev_ops_param_string = fn (OpaquePointer, rte_bbdev_op_type, UnsafePointer[Int8], ffi.c_ulong) -> UnsafePointer[Int32]


alias rte_bbdev_rte_bbdev_op_type_str = ExternalFunction['rte_bbdev_op_type_str', rte_bbdev_op_type_str]
alias rte_bbdev_rte_bbdev_op_pool_create = ExternalFunction['rte_bbdev_op_pool_create', rte_bbdev_op_pool_create]
alias rte_bbdev_rte_bbdev_enc_op_alloc_bulk = ExternalFunction['rte_bbdev_enc_op_alloc_bulk', rte_bbdev_enc_op_alloc_bulk]
alias rte_bbdev_rte_bbdev_dec_op_alloc_bulk = ExternalFunction['rte_bbdev_dec_op_alloc_bulk', rte_bbdev_dec_op_alloc_bulk]
alias rte_bbdev_rte_bbdev_fft_op_alloc_bulk = ExternalFunction['rte_bbdev_fft_op_alloc_bulk', rte_bbdev_fft_op_alloc_bulk]
alias rte_bbdev_rte_bbdev_mldts_op_alloc_bulk = ExternalFunction['rte_bbdev_mldts_op_alloc_bulk', rte_bbdev_mldts_op_alloc_bulk]
alias rte_bbdev_rte_bbdev_dec_op_free_bulk = ExternalFunction['rte_bbdev_dec_op_free_bulk', rte_bbdev_dec_op_free_bulk]
alias rte_bbdev_rte_bbdev_enc_op_free_bulk = ExternalFunction['rte_bbdev_enc_op_free_bulk', rte_bbdev_enc_op_free_bulk]
alias rte_bbdev_rte_bbdev_fft_op_free_bulk = ExternalFunction['rte_bbdev_fft_op_free_bulk', rte_bbdev_fft_op_free_bulk]
alias rte_bbdev_rte_bbdev_mldts_op_free_bulk = ExternalFunction['rte_bbdev_mldts_op_free_bulk', rte_bbdev_mldts_op_free_bulk]
alias rte_bbdev_rte_trace_point_emit_u16 = ExternalFunction['rte_trace_point_emit_u16', rte_trace_point_emit_u16]
alias rte_bbdev_rte_trace_point_emit_ptr = ExternalFunction['rte_trace_point_emit_ptr', rte_trace_point_emit_ptr]
alias rte_bbdev_rte_trace_point_emit_string = ExternalFunction['rte_trace_point_emit_string', rte_trace_point_emit_string]
alias rte_bbdev_rte_bbdev_count = ExternalFunction['rte_bbdev_count', rte_bbdev_count]
alias rte_bbdev_rte_bbdev_is_valid = ExternalFunction['rte_bbdev_is_valid', rte_bbdev_is_valid]
alias rte_bbdev_rte_bbdev_find_next = ExternalFunction['rte_bbdev_find_next', rte_bbdev_find_next]
alias rte_bbdev_rte_bbdev_setup_queues = ExternalFunction['rte_bbdev_setup_queues', rte_bbdev_setup_queues]
alias rte_bbdev_rte_bbdev_intr_enable = ExternalFunction['rte_bbdev_intr_enable', rte_bbdev_intr_enable]
alias rte_bbdev_rte_bbdev_queue_configure = ExternalFunction['rte_bbdev_queue_configure', rte_bbdev_queue_configure]
alias rte_bbdev_rte_bbdev_start = ExternalFunction['rte_bbdev_start', rte_bbdev_start]
alias rte_bbdev_rte_bbdev_stop = ExternalFunction['rte_bbdev_stop', rte_bbdev_stop]
alias rte_bbdev_rte_bbdev_close = ExternalFunction['rte_bbdev_close', rte_bbdev_close]
alias rte_bbdev_rte_bbdev_queue_start = ExternalFunction['rte_bbdev_queue_start', rte_bbdev_queue_start]
alias rte_bbdev_rte_bbdev_queue_stop = ExternalFunction['rte_bbdev_queue_stop', rte_bbdev_queue_stop]
alias rte_bbdev_rte_bbdev_stats_get = ExternalFunction['rte_bbdev_stats_get', rte_bbdev_stats_get]
alias rte_bbdev_rte_bbdev_stats_reset = ExternalFunction['rte_bbdev_stats_reset', rte_bbdev_stats_reset]
alias rte_bbdev_rte_bbdev_info_get = ExternalFunction['rte_bbdev_info_get', rte_bbdev_info_get]
alias rte_bbdev_rte_bbdev_queue_info_get = ExternalFunction['rte_bbdev_queue_info_get', rte_bbdev_queue_info_get]
alias rte_bbdev_rte_bbdev_enqueue_enc_ops = ExternalFunction['rte_bbdev_enqueue_enc_ops', rte_bbdev_enqueue_enc_ops]
alias rte_bbdev_rte_bbdev_enqueue_dec_ops = ExternalFunction['rte_bbdev_enqueue_dec_ops', rte_bbdev_enqueue_dec_ops]
alias rte_bbdev_rte_bbdev_enqueue_ldpc_enc_ops = ExternalFunction['rte_bbdev_enqueue_ldpc_enc_ops', rte_bbdev_enqueue_ldpc_enc_ops]
alias rte_bbdev_rte_bbdev_enqueue_ldpc_dec_ops = ExternalFunction['rte_bbdev_enqueue_ldpc_dec_ops', rte_bbdev_enqueue_ldpc_dec_ops]
alias rte_bbdev_rte_bbdev_enqueue_fft_ops = ExternalFunction['rte_bbdev_enqueue_fft_ops', rte_bbdev_enqueue_fft_ops]
alias rte_bbdev_rte_bbdev_enqueue_mldts_ops = ExternalFunction['rte_bbdev_enqueue_mldts_ops', rte_bbdev_enqueue_mldts_ops]
alias rte_bbdev_rte_bbdev_dequeue_enc_ops = ExternalFunction['rte_bbdev_dequeue_enc_ops', rte_bbdev_dequeue_enc_ops]
alias rte_bbdev_rte_bbdev_dequeue_dec_ops = ExternalFunction['rte_bbdev_dequeue_dec_ops', rte_bbdev_dequeue_dec_ops]
alias rte_bbdev_rte_bbdev_dequeue_ldpc_enc_ops = ExternalFunction['rte_bbdev_dequeue_ldpc_enc_ops', rte_bbdev_dequeue_ldpc_enc_ops]
alias rte_bbdev_rte_bbdev_dequeue_ldpc_dec_ops = ExternalFunction['rte_bbdev_dequeue_ldpc_dec_ops', rte_bbdev_dequeue_ldpc_dec_ops]
alias rte_bbdev_rte_bbdev_dequeue_fft_ops = ExternalFunction['rte_bbdev_dequeue_fft_ops', rte_bbdev_dequeue_fft_ops]
alias rte_bbdev_rte_bbdev_dequeue_mldts_ops = ExternalFunction['rte_bbdev_dequeue_mldts_ops', rte_bbdev_dequeue_mldts_ops]
alias rte_bbdev_rte_bbdev_callback_register = ExternalFunction['rte_bbdev_callback_register', rte_bbdev_callback_register]
alias rte_bbdev_rte_bbdev_callback_unregister = ExternalFunction['rte_bbdev_callback_unregister', rte_bbdev_callback_unregister]
alias rte_bbdev_rte_bbdev_queue_intr_enable = ExternalFunction['rte_bbdev_queue_intr_enable', rte_bbdev_queue_intr_enable]
alias rte_bbdev_rte_bbdev_queue_intr_disable = ExternalFunction['rte_bbdev_queue_intr_disable', rte_bbdev_queue_intr_disable]
alias rte_bbdev_rte_bbdev_queue_intr_ctl = ExternalFunction['rte_bbdev_queue_intr_ctl', rte_bbdev_queue_intr_ctl]
alias rte_bbdev_rte_bbdev_device_status_str = ExternalFunction['rte_bbdev_device_status_str', rte_bbdev_device_status_str]
alias rte_bbdev_rte_bbdev_enqueue_status_str = ExternalFunction['rte_bbdev_enqueue_status_str', rte_bbdev_enqueue_status_str]
alias rte_bbdev_rte_bbdev_queue_ops_dump = ExternalFunction['rte_bbdev_queue_ops_dump', rte_bbdev_queue_ops_dump]
alias rte_bbdev_rte_bbdev_ops_param_string = ExternalFunction['rte_bbdev_ops_param_string', rte_bbdev_ops_param_string]

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
struct rte_bbdev(Copyable, Movable):
    var lib: DLHandle
    
    var rte_bbdev_op_type_str: rte_bbdev_rte_bbdev_op_type_str.type
    var rte_bbdev_op_pool_create: rte_bbdev_rte_bbdev_op_pool_create.type
    var rte_bbdev_enc_op_alloc_bulk: rte_bbdev_rte_bbdev_enc_op_alloc_bulk.type
    var rte_bbdev_dec_op_alloc_bulk: rte_bbdev_rte_bbdev_dec_op_alloc_bulk.type
    var rte_bbdev_fft_op_alloc_bulk: rte_bbdev_rte_bbdev_fft_op_alloc_bulk.type
    var rte_bbdev_mldts_op_alloc_bulk: rte_bbdev_rte_bbdev_mldts_op_alloc_bulk.type
    var rte_bbdev_dec_op_free_bulk: rte_bbdev_rte_bbdev_dec_op_free_bulk.type
    var rte_bbdev_enc_op_free_bulk: rte_bbdev_rte_bbdev_enc_op_free_bulk.type
    var rte_bbdev_fft_op_free_bulk: rte_bbdev_rte_bbdev_fft_op_free_bulk.type
    var rte_bbdev_mldts_op_free_bulk: rte_bbdev_rte_bbdev_mldts_op_free_bulk.type
    var rte_trace_point_emit_u16: rte_bbdev_rte_trace_point_emit_u16.type
    var rte_trace_point_emit_ptr: rte_bbdev_rte_trace_point_emit_ptr.type
    var rte_trace_point_emit_string: rte_bbdev_rte_trace_point_emit_string.type
    var rte_bbdev_count: rte_bbdev_rte_bbdev_count.type
    var rte_bbdev_is_valid: rte_bbdev_rte_bbdev_is_valid.type
    var rte_bbdev_find_next: rte_bbdev_rte_bbdev_find_next.type
    var rte_bbdev_setup_queues: rte_bbdev_rte_bbdev_setup_queues.type
    var rte_bbdev_intr_enable: rte_bbdev_rte_bbdev_intr_enable.type
    var rte_bbdev_queue_configure: rte_bbdev_rte_bbdev_queue_configure.type
    var rte_bbdev_start: rte_bbdev_rte_bbdev_start.type
    var rte_bbdev_stop: rte_bbdev_rte_bbdev_stop.type
    var rte_bbdev_close: rte_bbdev_rte_bbdev_close.type
    var rte_bbdev_queue_start: rte_bbdev_rte_bbdev_queue_start.type
    var rte_bbdev_queue_stop: rte_bbdev_rte_bbdev_queue_stop.type
    var rte_bbdev_stats_get: rte_bbdev_rte_bbdev_stats_get.type
    var rte_bbdev_stats_reset: rte_bbdev_rte_bbdev_stats_reset.type
    var rte_bbdev_info_get: rte_bbdev_rte_bbdev_info_get.type
    var rte_bbdev_queue_info_get: rte_bbdev_rte_bbdev_queue_info_get.type
    var rte_bbdev_enqueue_enc_ops: rte_bbdev_rte_bbdev_enqueue_enc_ops.type
    var rte_bbdev_enqueue_dec_ops: rte_bbdev_rte_bbdev_enqueue_dec_ops.type
    var rte_bbdev_enqueue_ldpc_enc_ops: rte_bbdev_rte_bbdev_enqueue_ldpc_enc_ops.type
    var rte_bbdev_enqueue_ldpc_dec_ops: rte_bbdev_rte_bbdev_enqueue_ldpc_dec_ops.type
    var rte_bbdev_enqueue_fft_ops: rte_bbdev_rte_bbdev_enqueue_fft_ops.type
    var rte_bbdev_enqueue_mldts_ops: rte_bbdev_rte_bbdev_enqueue_mldts_ops.type
    var rte_bbdev_dequeue_enc_ops: rte_bbdev_rte_bbdev_dequeue_enc_ops.type
    var rte_bbdev_dequeue_dec_ops: rte_bbdev_rte_bbdev_dequeue_dec_ops.type
    var rte_bbdev_dequeue_ldpc_enc_ops: rte_bbdev_rte_bbdev_dequeue_ldpc_enc_ops.type
    var rte_bbdev_dequeue_ldpc_dec_ops: rte_bbdev_rte_bbdev_dequeue_ldpc_dec_ops.type
    var rte_bbdev_dequeue_fft_ops: rte_bbdev_rte_bbdev_dequeue_fft_ops.type
    var rte_bbdev_dequeue_mldts_ops: rte_bbdev_rte_bbdev_dequeue_mldts_ops.type
    var rte_bbdev_callback_register: rte_bbdev_rte_bbdev_callback_register.type
    var rte_bbdev_callback_unregister: rte_bbdev_rte_bbdev_callback_unregister.type
    var rte_bbdev_queue_intr_enable: rte_bbdev_rte_bbdev_queue_intr_enable.type
    var rte_bbdev_queue_intr_disable: rte_bbdev_rte_bbdev_queue_intr_disable.type
    var rte_bbdev_queue_intr_ctl: rte_bbdev_rte_bbdev_queue_intr_ctl.type
    var rte_bbdev_device_status_str: rte_bbdev_rte_bbdev_device_status_str.type
    var rte_bbdev_enqueue_status_str: rte_bbdev_rte_bbdev_enqueue_status_str.type
    var rte_bbdev_queue_ops_dump: rte_bbdev_rte_bbdev_queue_ops_dump.type
    var rte_bbdev_ops_param_string: rte_bbdev_rte_bbdev_ops_param_string.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_bbdev.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_bbdev from", 'librte_bbdev.so', ":\n", e)
            )

    
        self.rte_bbdev_op_type_str = rte_bbdev_rte_bbdev_op_type_str.load(self.lib)
        self.rte_bbdev_op_pool_create = rte_bbdev_rte_bbdev_op_pool_create.load(self.lib)
        self.rte_bbdev_enc_op_alloc_bulk = rte_bbdev_rte_bbdev_enc_op_alloc_bulk.load(self.lib)
        self.rte_bbdev_dec_op_alloc_bulk = rte_bbdev_rte_bbdev_dec_op_alloc_bulk.load(self.lib)
        self.rte_bbdev_fft_op_alloc_bulk = rte_bbdev_rte_bbdev_fft_op_alloc_bulk.load(self.lib)
        self.rte_bbdev_mldts_op_alloc_bulk = rte_bbdev_rte_bbdev_mldts_op_alloc_bulk.load(self.lib)
        self.rte_bbdev_dec_op_free_bulk = rte_bbdev_rte_bbdev_dec_op_free_bulk.load(self.lib)
        self.rte_bbdev_enc_op_free_bulk = rte_bbdev_rte_bbdev_enc_op_free_bulk.load(self.lib)
        self.rte_bbdev_fft_op_free_bulk = rte_bbdev_rte_bbdev_fft_op_free_bulk.load(self.lib)
        self.rte_bbdev_mldts_op_free_bulk = rte_bbdev_rte_bbdev_mldts_op_free_bulk.load(self.lib)
        self.rte_trace_point_emit_u16 = rte_bbdev_rte_trace_point_emit_u16.load(self.lib)
        self.rte_trace_point_emit_ptr = rte_bbdev_rte_trace_point_emit_ptr.load(self.lib)
        self.rte_trace_point_emit_string = rte_bbdev_rte_trace_point_emit_string.load(self.lib)
        self.rte_bbdev_count = rte_bbdev_rte_bbdev_count.load(self.lib)
        self.rte_bbdev_is_valid = rte_bbdev_rte_bbdev_is_valid.load(self.lib)
        self.rte_bbdev_find_next = rte_bbdev_rte_bbdev_find_next.load(self.lib)
        self.rte_bbdev_setup_queues = rte_bbdev_rte_bbdev_setup_queues.load(self.lib)
        self.rte_bbdev_intr_enable = rte_bbdev_rte_bbdev_intr_enable.load(self.lib)
        self.rte_bbdev_queue_configure = rte_bbdev_rte_bbdev_queue_configure.load(self.lib)
        self.rte_bbdev_start = rte_bbdev_rte_bbdev_start.load(self.lib)
        self.rte_bbdev_stop = rte_bbdev_rte_bbdev_stop.load(self.lib)
        self.rte_bbdev_close = rte_bbdev_rte_bbdev_close.load(self.lib)
        self.rte_bbdev_queue_start = rte_bbdev_rte_bbdev_queue_start.load(self.lib)
        self.rte_bbdev_queue_stop = rte_bbdev_rte_bbdev_queue_stop.load(self.lib)
        self.rte_bbdev_stats_get = rte_bbdev_rte_bbdev_stats_get.load(self.lib)
        self.rte_bbdev_stats_reset = rte_bbdev_rte_bbdev_stats_reset.load(self.lib)
        self.rte_bbdev_info_get = rte_bbdev_rte_bbdev_info_get.load(self.lib)
        self.rte_bbdev_queue_info_get = rte_bbdev_rte_bbdev_queue_info_get.load(self.lib)
        self.rte_bbdev_enqueue_enc_ops = rte_bbdev_rte_bbdev_enqueue_enc_ops.load(self.lib)
        self.rte_bbdev_enqueue_dec_ops = rte_bbdev_rte_bbdev_enqueue_dec_ops.load(self.lib)
        self.rte_bbdev_enqueue_ldpc_enc_ops = rte_bbdev_rte_bbdev_enqueue_ldpc_enc_ops.load(self.lib)
        self.rte_bbdev_enqueue_ldpc_dec_ops = rte_bbdev_rte_bbdev_enqueue_ldpc_dec_ops.load(self.lib)
        self.rte_bbdev_enqueue_fft_ops = rte_bbdev_rte_bbdev_enqueue_fft_ops.load(self.lib)
        self.rte_bbdev_enqueue_mldts_ops = rte_bbdev_rte_bbdev_enqueue_mldts_ops.load(self.lib)
        self.rte_bbdev_dequeue_enc_ops = rte_bbdev_rte_bbdev_dequeue_enc_ops.load(self.lib)
        self.rte_bbdev_dequeue_dec_ops = rte_bbdev_rte_bbdev_dequeue_dec_ops.load(self.lib)
        self.rte_bbdev_dequeue_ldpc_enc_ops = rte_bbdev_rte_bbdev_dequeue_ldpc_enc_ops.load(self.lib)
        self.rte_bbdev_dequeue_ldpc_dec_ops = rte_bbdev_rte_bbdev_dequeue_ldpc_dec_ops.load(self.lib)
        self.rte_bbdev_dequeue_fft_ops = rte_bbdev_rte_bbdev_dequeue_fft_ops.load(self.lib)
        self.rte_bbdev_dequeue_mldts_ops = rte_bbdev_rte_bbdev_dequeue_mldts_ops.load(self.lib)
        self.rte_bbdev_callback_register = rte_bbdev_rte_bbdev_callback_register.load(self.lib)
        self.rte_bbdev_callback_unregister = rte_bbdev_rte_bbdev_callback_unregister.load(self.lib)
        self.rte_bbdev_queue_intr_enable = rte_bbdev_rte_bbdev_queue_intr_enable.load(self.lib)
        self.rte_bbdev_queue_intr_disable = rte_bbdev_rte_bbdev_queue_intr_disable.load(self.lib)
        self.rte_bbdev_queue_intr_ctl = rte_bbdev_rte_bbdev_queue_intr_ctl.load(self.lib)
        self.rte_bbdev_device_status_str = rte_bbdev_rte_bbdev_device_status_str.load(self.lib)
        self.rte_bbdev_enqueue_status_str = rte_bbdev_rte_bbdev_enqueue_status_str.load(self.lib)
        self.rte_bbdev_queue_ops_dump = rte_bbdev_rte_bbdev_queue_ops_dump.load(self.lib)
        self.rte_bbdev_ops_param_string = rte_bbdev_rte_bbdev_ops_param_string.load(self.lib)

