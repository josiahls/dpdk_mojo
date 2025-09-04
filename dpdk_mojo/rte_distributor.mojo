
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

struct rte_distributor_alg_type(ExplicitlyCopyable & Copyable & Movable):

	alias RTE_DIST_ALG_BURST = 0

	alias RTE_DIST_ALG_SINGLE = 1

	alias RTE_DIST_NUM_ALG_TYPES = 2

struct rte_distributor(ExplicitlyCopyable & Copyable & Movable):
	pass
struct rte_mbuf(ExplicitlyCopyable & Copyable & Movable):
	pass
alias rte_distributor_create = fn (read UnsafePointer[Int8], UInt32, UInt32, UInt32) -> UnsafePointer[rte_distributor]
alias rte_distributor_process = fn (UnsafePointer[rte_distributor], UnsafePointer[UnsafePointer[rte_mbuf]], UInt32) -> Int32
alias rte_distributor_returned_pkts = fn (UnsafePointer[rte_distributor], UnsafePointer[UnsafePointer[rte_mbuf]], UInt32) -> Int32
alias rte_distributor_flush = fn (UnsafePointer[rte_distributor]) -> Int32
alias rte_distributor_clear_returns = fn (UnsafePointer[rte_distributor]) -> NoneType
alias rte_distributor_get_pkt = fn (UnsafePointer[rte_distributor], UInt32, UnsafePointer[UnsafePointer[rte_mbuf]], UnsafePointer[UnsafePointer[rte_mbuf]], UInt32) -> Int32
alias rte_distributor_return_pkt = fn (UnsafePointer[rte_distributor], UInt32, UnsafePointer[UnsafePointer[rte_mbuf]], Int32) -> Int32
alias rte_distributor_request_pkt = fn (UnsafePointer[rte_distributor], UInt32, UnsafePointer[UnsafePointer[rte_mbuf]], UInt32) -> NoneType
alias rte_distributor_poll_pkt = fn (UnsafePointer[rte_distributor], UInt32, UnsafePointer[UnsafePointer[rte_mbuf]]) -> Int32


alias rte_distributor_rte_distributor_create = ExternalFunction['rte_distributor_create', rte_distributor_create]
alias rte_distributor_rte_distributor_process = ExternalFunction['rte_distributor_process', rte_distributor_process]
alias rte_distributor_rte_distributor_returned_pkts = ExternalFunction['rte_distributor_returned_pkts', rte_distributor_returned_pkts]
alias rte_distributor_rte_distributor_flush = ExternalFunction['rte_distributor_flush', rte_distributor_flush]
alias rte_distributor_rte_distributor_clear_returns = ExternalFunction['rte_distributor_clear_returns', rte_distributor_clear_returns]
alias rte_distributor_rte_distributor_get_pkt = ExternalFunction['rte_distributor_get_pkt', rte_distributor_get_pkt]
alias rte_distributor_rte_distributor_return_pkt = ExternalFunction['rte_distributor_return_pkt', rte_distributor_return_pkt]
alias rte_distributor_rte_distributor_request_pkt = ExternalFunction['rte_distributor_request_pkt', rte_distributor_request_pkt]
alias rte_distributor_rte_distributor_poll_pkt = ExternalFunction['rte_distributor_poll_pkt', rte_distributor_poll_pkt]

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
struct rte_distributor(Copyable, Movable):
    var lib: DLHandle
    
    var rte_distributor_create: rte_distributor_rte_distributor_create.type
    var rte_distributor_process: rte_distributor_rte_distributor_process.type
    var rte_distributor_returned_pkts: rte_distributor_rte_distributor_returned_pkts.type
    var rte_distributor_flush: rte_distributor_rte_distributor_flush.type
    var rte_distributor_clear_returns: rte_distributor_rte_distributor_clear_returns.type
    var rte_distributor_get_pkt: rte_distributor_rte_distributor_get_pkt.type
    var rte_distributor_return_pkt: rte_distributor_rte_distributor_return_pkt.type
    var rte_distributor_request_pkt: rte_distributor_rte_distributor_request_pkt.type
    var rte_distributor_poll_pkt: rte_distributor_rte_distributor_poll_pkt.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_distributor.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_distributor from", 'librte_distributor.so', ":\n", e)
            )

    
        self.rte_distributor_create = rte_distributor_rte_distributor_create.load(self.lib)
        self.rte_distributor_process = rte_distributor_rte_distributor_process.load(self.lib)
        self.rte_distributor_returned_pkts = rte_distributor_rte_distributor_returned_pkts.load(self.lib)
        self.rte_distributor_flush = rte_distributor_rte_distributor_flush.load(self.lib)
        self.rte_distributor_clear_returns = rte_distributor_rte_distributor_clear_returns.load(self.lib)
        self.rte_distributor_get_pkt = rte_distributor_rte_distributor_get_pkt.load(self.lib)
        self.rte_distributor_return_pkt = rte_distributor_rte_distributor_return_pkt.load(self.lib)
        self.rte_distributor_request_pkt = rte_distributor_rte_distributor_request_pkt.load(self.lib)
        self.rte_distributor_poll_pkt = rte_distributor_rte_distributor_poll_pkt.load(self.lib)

