
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
struct anonomous_record_25(ExplicitlyCopyable & Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_25

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
struct anonomous_record_26(ExplicitlyCopyable & Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_26

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
	# {"id":"0x33949600","inner":[{"id":"0x337b9c90","inner":[{"id":"0x337b8f50","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"void *[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Generic marker for any place in a structure. 

alias RTE_MARKER8 = 	# # Node: PlaceHolder()
	# {"id":"0x33949790","inner":[{"decl":{"id":"0x338d59a8","kind":"TypedefDecl","name":"uint8_t"},"id":"0x339496f0","inner":[{"decl":{"id":"0x338ab8d0","kind":"TypedefDecl","name":"__uint8_t"},"id":"0x338abc60","inner":[{"id":"0x337b9050","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"TypedefType","type":{"qualType":"__uint8_t"}}],"kind":"TypedefType","type":{"qualType":"uint8_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint8_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 1B alignment in a structure. 

alias RTE_MARKER16 = 	# # Node: PlaceHolder()
	# {"id":"0x339498f0","inner":[{"decl":{"id":"0x338d5a10","kind":"TypedefDecl","name":"uint16_t"},"id":"0x3391c6e0","inner":[{"decl":{"id":"0x338ab9b0","kind":"TypedefDecl","name":"__uint16_t"},"id":"0x338abd80","inner":[{"id":"0x337b9070","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"TypedefType","type":{"qualType":"__uint16_t"}}],"kind":"TypedefType","type":{"qualType":"uint16_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint16_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 2B alignment in a structure. 

alias RTE_MARKER32 = 	# # Node: PlaceHolder()
	# {"id":"0x33949a50","inner":[{"decl":{"id":"0x338d5a78","kind":"TypedefDecl","name":"uint32_t"},"id":"0x3391c650","inner":[{"decl":{"id":"0x338aba90","kind":"TypedefDecl","name":"__uint32_t"},"id":"0x338abea0","inner":[{"id":"0x337b9090","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"__uint32_t"}}],"kind":"TypedefType","type":{"qualType":"uint32_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint32_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 4B alignment in a structure. 

alias RTE_MARKER64 = 	# # Node: PlaceHolder()
	# {"id":"0x33949bb0","inner":[{"decl":{"id":"0x338d5ae0","kind":"TypedefDecl","name":"uint64_t"},"id":"0x3391c5c0","inner":[{"decl":{"id":"0x338abb70","kind":"TypedefDecl","name":"__uint64_t"},"id":"0x338cb880","inner":[{"id":"0x337b90b0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uint64_t"}}],"kind":"TypedefType","type":{"qualType":"uint64_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint64_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 8B alignment in a structure. 

alias rte_str_to_size = fn (read UnsafePointer[Int8]) -> ffi.c_ulong_long
alias rte_size_to_str = fn (UnsafePointer[Int8], Int32, ffi.c_ulong_long, Bool, read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_exit = fn (Int32, read *UnsafePointer[Int8]) -> NoneType
struct rte_ipsec_sa(ExplicitlyCopyable & Copyable & Movable):

	pass
struct anonomous_record_28(ExplicitlyCopyable & Copyable & Movable):
	var proto : UInt8

struct anonomous_record_27(ExplicitlyCopyable & Copyable & Movable):
	var hdr_len : UInt8

	var hdr_l3_off : UInt8

	var next_proto : UInt8

	var hdr : OpaquePointer

alias anonomous_record_29 = C_Union[anonomous_record_27, anonomous_record_28]

struct rte_crypto_sym_xform(ExplicitlyCopyable & Copyable & Movable):
	pass
struct rte_security_ipsec_xform(ExplicitlyCopyable & Copyable & Movable):
	pass
struct rte_ipsec_sa_prm(ExplicitlyCopyable & Copyable & Movable):

	var userdata : ffi.c_ulong

	var flags : ffi.c_ulong

	var ipsec_xform : rte_security_ipsec_xform

	var crypto_xform : rte_crypto_sym_xform

	var union_placeholder_1 : anonomous_record_29




alias RTE_SATP_LOG2_IPV = 0

alias RTE_SATP_LOG2_PROTO = 1

alias RTE_SATP_LOG2_DIR = 2

alias RTE_SATP_LOG2_MODE = 3

alias RTE_SATP_LOG2_SQN = 5

alias RTE_SATP_LOG2_ESN = 6

alias RTE_SATP_LOG2_ECN = 7

alias RTE_SATP_LOG2_DSCP = 8

alias RTE_SATP_LOG2_NATT = 9

alias rte_ipsec_sa_type = fn (read UnsafePointer[rte_ipsec_sa]) -> ffi.c_ulong_long
alias rte_ipsec_sa_size = fn (read UnsafePointer[rte_ipsec_sa_prm]) -> Int32
alias rte_ipsec_sa_init = fn (UnsafePointer[rte_ipsec_sa], read UnsafePointer[rte_ipsec_sa_prm], ffi.c_ulong) -> Int32
alias rte_ipsec_sa_fini = fn (UnsafePointer[rte_ipsec_sa]) -> NoneType
struct rte_ipsec_session(ExplicitlyCopyable & Copyable & Movable):
	pass
struct rte_ipsec_state(ExplicitlyCopyable & Copyable & Movable):

	var sqn : ffi.c_ulong

struct rte_mbuf(ExplicitlyCopyable & Copyable & Movable):
	pass
struct rte_crypto_op(ExplicitlyCopyable & Copyable & Movable):
	pass
alias anonomous_record_31 = C_Union[rte_crypto_op, rte_mbuf]

alias anonomous_record_30 = C_Union[rte_crypto_op, rte_mbuf]

struct rte_ipsec_sa_pkt_func(ExplicitlyCopyable & Copyable & Movable):

	var prepare : anonomous_record_30

	var prepare_stateless : anonomous_record_31

	var process : rte_mbuf

struct rte_cryptodev_sym_session(ExplicitlyCopyable & Copyable & Movable):
	pass
struct rte_security_ctx(ExplicitlyCopyable & Copyable & Movable):
	pass
struct rte_security_session(ExplicitlyCopyable & Copyable & Movable):
	pass
struct anonomous_record_33(ExplicitlyCopyable & Copyable & Movable):
	var ses : rte_security_session

	var ctx : rte_security_ctx

	var ol_flags : UInt32

struct anonomous_record_32(ExplicitlyCopyable & Copyable & Movable):
	var ses : rte_cryptodev_sym_session

	var dev_id : UInt8

alias anonomous_record_34 = C_Union[anonomous_record_32, anonomous_record_33]

struct rte_security_session_action_type(ExplicitlyCopyable & Copyable & Movable):
alias rte_ipsec_session_prepare = fn (UnsafePointer[rte_ipsec_session]) -> Int32
alias rte_ipsec_pkt_crypto_prepare = fn (read UnsafePointer[rte_ipsec_session], UnsafePointer[UnsafePointer[rte_mbuf]], UnsafePointer[UnsafePointer[rte_crypto_op]], UInt16) -> UInt16
alias rte_ipsec_pkt_cpu_prepare = fn (read UnsafePointer[rte_ipsec_session], UnsafePointer[UnsafePointer[rte_mbuf]], UInt16) -> UInt16
alias rte_ipsec_pkt_crypto_prepare_stateless = fn (read UnsafePointer[rte_ipsec_session], UnsafePointer[UnsafePointer[rte_mbuf]], UnsafePointer[UnsafePointer[rte_crypto_op]], UInt16, UnsafePointer[rte_ipsec_state]) -> UInt16
alias rte_ipsec_pkt_cpu_prepare_stateless = fn (read UnsafePointer[rte_ipsec_session], UnsafePointer[UnsafePointer[rte_mbuf]], UInt16, UnsafePointer[rte_ipsec_state]) -> UInt16
alias rte_ipsec_pkt_process = fn (read UnsafePointer[rte_ipsec_session], UnsafePointer[UnsafePointer[rte_mbuf]], UInt16) -> UInt16
alias rte_ipsec_telemetry_sa_add = fn (read UnsafePointer[rte_ipsec_sa]) -> Int32
alias rte_ipsec_telemetry_sa_del = fn (read UnsafePointer[rte_ipsec_sa]) -> NoneType
alias anonomous_record_35 = C_Union[ffi.c_ulong, OpaquePointer]

struct rte_ipsec_group(ExplicitlyCopyable & Copyable & Movable):

	var id : anonomous_record_35

	var m : rte_mbuf

	var cnt : UInt32

	var rc : Int32

alias rte_ipsec_ses_from_crypto = fn (read UnsafePointer[rte_crypto_op]) -> UnsafePointer[rte_ipsec_session]
alias rte_ipsec_pkt_crypto_group = fn (read UnsafePointer[UnsafePointer[rte_crypto_op]], UnsafePointer[UnsafePointer[rte_mbuf]], UnsafePointer[rte_ipsec_group], UInt16) -> UInt16


alias rte_ipsec_alloca = ExternalFunction['alloca', alloca]
alias rte_ipsec_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_ipsec_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_ipsec_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_ipsec_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_ipsec_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_ipsec_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_ipsec_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_ipsec_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_ipsec_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_ipsec_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_ipsec_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_ipsec_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_ipsec_rte_ipsec_sa_type = ExternalFunction['rte_ipsec_sa_type', rte_ipsec_sa_type]
alias rte_ipsec_rte_ipsec_sa_size = ExternalFunction['rte_ipsec_sa_size', rte_ipsec_sa_size]
alias rte_ipsec_rte_ipsec_sa_init = ExternalFunction['rte_ipsec_sa_init', rte_ipsec_sa_init]
alias rte_ipsec_rte_ipsec_sa_fini = ExternalFunction['rte_ipsec_sa_fini', rte_ipsec_sa_fini]
alias rte_ipsec_rte_ipsec_session_prepare = ExternalFunction['rte_ipsec_session_prepare', rte_ipsec_session_prepare]
alias rte_ipsec_rte_ipsec_pkt_crypto_prepare = ExternalFunction['rte_ipsec_pkt_crypto_prepare', rte_ipsec_pkt_crypto_prepare]
alias rte_ipsec_rte_ipsec_pkt_cpu_prepare = ExternalFunction['rte_ipsec_pkt_cpu_prepare', rte_ipsec_pkt_cpu_prepare]
alias rte_ipsec_rte_ipsec_pkt_crypto_prepare_stateless = ExternalFunction['rte_ipsec_pkt_crypto_prepare_stateless', rte_ipsec_pkt_crypto_prepare_stateless]
alias rte_ipsec_rte_ipsec_pkt_cpu_prepare_stateless = ExternalFunction['rte_ipsec_pkt_cpu_prepare_stateless', rte_ipsec_pkt_cpu_prepare_stateless]
alias rte_ipsec_rte_ipsec_pkt_process = ExternalFunction['rte_ipsec_pkt_process', rte_ipsec_pkt_process]
alias rte_ipsec_rte_ipsec_telemetry_sa_add = ExternalFunction['rte_ipsec_telemetry_sa_add', rte_ipsec_telemetry_sa_add]
alias rte_ipsec_rte_ipsec_telemetry_sa_del = ExternalFunction['rte_ipsec_telemetry_sa_del', rte_ipsec_telemetry_sa_del]
alias rte_ipsec_rte_ipsec_ses_from_crypto = ExternalFunction['rte_ipsec_ses_from_crypto', rte_ipsec_ses_from_crypto]
alias rte_ipsec_rte_ipsec_pkt_crypto_group = ExternalFunction['rte_ipsec_pkt_crypto_group', rte_ipsec_pkt_crypto_group]

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
struct rte_ipsec(Copyable, Movable):
    var lib: DLHandle
    
    var alloca: rte_ipsec_alloca.type
    var sched_setparam: rte_ipsec_sched_setparam.type
    var sched_getparam: rte_ipsec_sched_getparam.type
    var sched_setscheduler: rte_ipsec_sched_setscheduler.type
    var sched_getscheduler: rte_ipsec_sched_getscheduler.type
    var sched_yield: rte_ipsec_sched_yield.type
    var sched_get_priority_max: rte_ipsec_sched_get_priority_max.type
    var sched_get_priority_min: rte_ipsec_sched_get_priority_min.type
    var sched_rr_get_interval: rte_ipsec_sched_rr_get_interval.type
    var rte_is_aligned: rte_ipsec_rte_is_aligned.type
    var rte_str_to_size: rte_ipsec_rte_str_to_size.type
    var rte_size_to_str: rte_ipsec_rte_size_to_str.type
    var rte_exit: rte_ipsec_rte_exit.type
    var rte_ipsec_sa_type: rte_ipsec_rte_ipsec_sa_type.type
    var rte_ipsec_sa_size: rte_ipsec_rte_ipsec_sa_size.type
    var rte_ipsec_sa_init: rte_ipsec_rte_ipsec_sa_init.type
    var rte_ipsec_sa_fini: rte_ipsec_rte_ipsec_sa_fini.type
    var rte_ipsec_session_prepare: rte_ipsec_rte_ipsec_session_prepare.type
    var rte_ipsec_pkt_crypto_prepare: rte_ipsec_rte_ipsec_pkt_crypto_prepare.type
    var rte_ipsec_pkt_cpu_prepare: rte_ipsec_rte_ipsec_pkt_cpu_prepare.type
    var rte_ipsec_pkt_crypto_prepare_stateless: rte_ipsec_rte_ipsec_pkt_crypto_prepare_stateless.type
    var rte_ipsec_pkt_cpu_prepare_stateless: rte_ipsec_rte_ipsec_pkt_cpu_prepare_stateless.type
    var rte_ipsec_pkt_process: rte_ipsec_rte_ipsec_pkt_process.type
    var rte_ipsec_telemetry_sa_add: rte_ipsec_rte_ipsec_telemetry_sa_add.type
    var rte_ipsec_telemetry_sa_del: rte_ipsec_rte_ipsec_telemetry_sa_del.type
    var rte_ipsec_ses_from_crypto: rte_ipsec_rte_ipsec_ses_from_crypto.type
    var rte_ipsec_pkt_crypto_group: rte_ipsec_rte_ipsec_pkt_crypto_group.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_ipsec.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_ipsec from", 'librte_ipsec.so', ":\n", e)
            )

    
        self.alloca = rte_ipsec_alloca.load(self.lib)
        self.sched_setparam = rte_ipsec_sched_setparam.load(self.lib)
        self.sched_getparam = rte_ipsec_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_ipsec_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_ipsec_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_ipsec_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_ipsec_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_ipsec_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_ipsec_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_ipsec_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_ipsec_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_ipsec_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_ipsec_rte_exit.load(self.lib)
        self.rte_ipsec_sa_type = rte_ipsec_rte_ipsec_sa_type.load(self.lib)
        self.rte_ipsec_sa_size = rte_ipsec_rte_ipsec_sa_size.load(self.lib)
        self.rte_ipsec_sa_init = rte_ipsec_rte_ipsec_sa_init.load(self.lib)
        self.rte_ipsec_sa_fini = rte_ipsec_rte_ipsec_sa_fini.load(self.lib)
        self.rte_ipsec_session_prepare = rte_ipsec_rte_ipsec_session_prepare.load(self.lib)
        self.rte_ipsec_pkt_crypto_prepare = rte_ipsec_rte_ipsec_pkt_crypto_prepare.load(self.lib)
        self.rte_ipsec_pkt_cpu_prepare = rte_ipsec_rte_ipsec_pkt_cpu_prepare.load(self.lib)
        self.rte_ipsec_pkt_crypto_prepare_stateless = rte_ipsec_rte_ipsec_pkt_crypto_prepare_stateless.load(self.lib)
        self.rte_ipsec_pkt_cpu_prepare_stateless = rte_ipsec_rte_ipsec_pkt_cpu_prepare_stateless.load(self.lib)
        self.rte_ipsec_pkt_process = rte_ipsec_rte_ipsec_pkt_process.load(self.lib)
        self.rte_ipsec_telemetry_sa_add = rte_ipsec_rte_ipsec_telemetry_sa_add.load(self.lib)
        self.rte_ipsec_telemetry_sa_del = rte_ipsec_rte_ipsec_telemetry_sa_del.load(self.lib)
        self.rte_ipsec_ses_from_crypto = rte_ipsec_rte_ipsec_ses_from_crypto.load(self.lib)
        self.rte_ipsec_pkt_crypto_group = rte_ipsec_rte_ipsec_pkt_crypto_group.load(self.lib)

