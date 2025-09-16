
from sys.ffi import DLHandle
from sys import ffi
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from pathlib import Path
from c_binder_mojo.stdlib_ext import C_Union
from utils import StaticTuple

# # Node: TranslationUnitDecl()
alias __int128_t = ffi.c_long_long
alias __uint128_t = ffi.c_ulong_long
struct __NSConstantString_tag(Copyable & Movable):
	pass
alias __NSConstantString = __NSConstantString_tag

alias __SVInt8_t = Int8
alias __SVInt16_t = Int16
alias __SVInt32_t = Int32
alias __SVInt64_t = ffi.c_long
alias __SVUint8_t = UInt8
alias __SVUint16_t = UInt16
alias __SVUint32_t = UInt32
alias __SVUint64_t = ffi.c_ulong
alias __SVFloat16_t = Float16
alias __SVFloat32_t = Float32
alias __SVFloat64_t = Float64
alias __SVBFloat16_t = BFloat16
alias __clang_svint8x2_t = SIMD[Int8.dtype, 2]
alias __clang_svint16x2_t = SIMD[Int16.dtype, 2]
alias __clang_svint32x2_t = SIMD[Int32.dtype, 2]
alias __clang_svint64x2_t = SIMD[ffi.c_long.dtype, 2]
alias __clang_svuint8x2_t = SIMD[UInt8.dtype, 2]
alias __clang_svuint16x2_t = SIMD[UInt16.dtype, 2]
alias __clang_svuint32x2_t = SIMD[UInt32.dtype, 2]
alias __clang_svuint64x2_t = SIMD[ffi.c_ulong.dtype, 2]
alias __clang_svfloat16x2_t = SIMD[Float16.dtype, 2]
alias __clang_svfloat32x2_t = SIMD[Float32.dtype, 2]
alias __clang_svfloat64x2_t = SIMD[Float64.dtype, 2]
alias __clang_svbfloat16x2_t = SIMD[BFloat16.dtype, 2]
alias __clang_svint8x3_t = SIMD[Int8.dtype, 3]
alias __clang_svint16x3_t = SIMD[Int16.dtype, 3]
alias __clang_svint32x3_t = SIMD[Int32.dtype, 3]
alias __clang_svint64x3_t = SIMD[ffi.c_long.dtype, 3]
alias __clang_svuint8x3_t = SIMD[UInt8.dtype, 3]
alias __clang_svuint16x3_t = SIMD[UInt16.dtype, 3]
alias __clang_svuint32x3_t = SIMD[UInt32.dtype, 3]
alias __clang_svuint64x3_t = SIMD[ffi.c_ulong.dtype, 3]
alias __clang_svfloat16x3_t = SIMD[Float16.dtype, 3]
alias __clang_svfloat32x3_t = SIMD[Float32.dtype, 3]
alias __clang_svfloat64x3_t = SIMD[Float64.dtype, 3]
alias __clang_svbfloat16x3_t = SIMD[BFloat16.dtype, 3]
alias __clang_svint8x4_t = SIMD[Int8.dtype, 4]
alias __clang_svint16x4_t = SIMD[Int16.dtype, 4]
alias __clang_svint32x4_t = SIMD[Int32.dtype, 4]
alias __clang_svint64x4_t = SIMD[ffi.c_long.dtype, 4]
alias __clang_svuint8x4_t = SIMD[UInt8.dtype, 4]
alias __clang_svuint16x4_t = SIMD[UInt16.dtype, 4]
alias __clang_svuint32x4_t = SIMD[UInt32.dtype, 4]
alias __clang_svuint64x4_t = SIMD[ffi.c_ulong.dtype, 4]
alias __clang_svfloat16x4_t = SIMD[Float16.dtype, 4]
alias __clang_svfloat32x4_t = SIMD[Float32.dtype, 4]
alias __clang_svfloat64x4_t = SIMD[Float64.dtype, 4]
alias __clang_svbfloat16x4_t = SIMD[BFloat16.dtype, 4]
alias __SVBool_t = Bool
alias __builtin_ms_va_list = UnsafePointer[Int8]
struct __va_list(Copyable & Movable):
	pass
alias __builtin_va_list = __va_list

alias arg_handler_t = fn(read UnsafePointer[Int8], read UnsafePointer[Int8], OpaquePointer) -> Int32
struct rte_kvargs_pair(Copyable & Movable):

	var key : UnsafePointer[Int8]

	var value : UnsafePointer[Int8]

struct rte_kvargs(Copyable & Movable):

	var str : UnsafePointer[Int8]

	var count : UInt32

	var pairs : InlineArray[rte_kvargs_pair, 32]

alias rte_kvargs_parse = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8], mut=False]) -> UnsafePointer[rte_kvargs
rte_kvargs
]
alias rte_kvargs_parse_delim = fn (UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8], mut=False], UnsafePointer[Int8]) -> UnsafePointer[rte_kvargs
rte_kvargs
]
alias rte_kvargs_free = fn (UnsafePointer[rte_kvargs
rte_kvargs
]) -> NoneType
alias rte_kvargs_get = fn (UnsafePointer[rte_kvargs
rte_kvargs
], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_kvargs_get_with_value = fn (UnsafePointer[rte_kvargs
rte_kvargs
], UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_kvargs_process = fn (UnsafePointer[rte_kvargs
rte_kvargs
], UnsafePointer[Int8], arg_handler_t, OpaquePointer) -> Int32
alias rte_kvargs_process_opt = fn (UnsafePointer[rte_kvargs
rte_kvargs
], UnsafePointer[Int8], arg_handler_t, OpaquePointer) -> Int32
alias rte_kvargs_count = fn (UnsafePointer[rte_kvargs
rte_kvargs
], UnsafePointer[Int8]) -> UInt32


alias rte_kvargs_rte_kvargs_parse = ExternalFunction['rte_kvargs_parse', rte_kvargs_parse]
alias rte_kvargs_rte_kvargs_parse_delim = ExternalFunction['rte_kvargs_parse_delim', rte_kvargs_parse_delim]
alias rte_kvargs_rte_kvargs_free = ExternalFunction['rte_kvargs_free', rte_kvargs_free]
alias rte_kvargs_rte_kvargs_get = ExternalFunction['rte_kvargs_get', rte_kvargs_get]
alias rte_kvargs_rte_kvargs_get_with_value = ExternalFunction['rte_kvargs_get_with_value', rte_kvargs_get_with_value]
alias rte_kvargs_rte_kvargs_process = ExternalFunction['rte_kvargs_process', rte_kvargs_process]
alias rte_kvargs_rte_kvargs_process_opt = ExternalFunction['rte_kvargs_process_opt', rte_kvargs_process_opt]
alias rte_kvargs_rte_kvargs_count = ExternalFunction['rte_kvargs_count', rte_kvargs_count]

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
struct rte_kvargs(Copyable, Movable):
    var lib: DLHandle
    
    var rte_kvargs_parse: rte_kvargs_rte_kvargs_parse.type
    var rte_kvargs_parse_delim: rte_kvargs_rte_kvargs_parse_delim.type
    var rte_kvargs_free: rte_kvargs_rte_kvargs_free.type
    var rte_kvargs_get: rte_kvargs_rte_kvargs_get.type
    var rte_kvargs_get_with_value: rte_kvargs_rte_kvargs_get_with_value.type
    var rte_kvargs_process: rte_kvargs_rte_kvargs_process.type
    var rte_kvargs_process_opt: rte_kvargs_rte_kvargs_process_opt.type
    var rte_kvargs_count: rte_kvargs_rte_kvargs_count.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_kvargs.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_kvargs from", 'librte_kvargs.so', ":\n", e)
            )

    
        self.rte_kvargs_parse = rte_kvargs_rte_kvargs_parse.load(self.lib)
        self.rte_kvargs_parse_delim = rte_kvargs_rte_kvargs_parse_delim.load(self.lib)
        self.rte_kvargs_free = rte_kvargs_rte_kvargs_free.load(self.lib)
        self.rte_kvargs_get = rte_kvargs_rte_kvargs_get.load(self.lib)
        self.rte_kvargs_get_with_value = rte_kvargs_rte_kvargs_get_with_value.load(self.lib)
        self.rte_kvargs_process = rte_kvargs_rte_kvargs_process.load(self.lib)
        self.rte_kvargs_process_opt = rte_kvargs_rte_kvargs_process_opt.load(self.lib)
        self.rte_kvargs_count = rte_kvargs_rte_kvargs_count.load(self.lib)

