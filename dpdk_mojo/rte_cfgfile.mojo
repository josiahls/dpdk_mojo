
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

alias ptrdiff_t = ffi.c_long
alias size_t = ffi.c_ulong
alias wchar_t = UInt32
struct anonomous_record_389(Copyable & Movable):
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_389

struct rte_cfgfile(Copyable & Movable):

	pass
struct rte_cfgfile_entry(Copyable & Movable):

	var name : InlineArray[Int8, 64]

	var value : InlineArray[Int8, 256]

struct rte_cfgfile_parameters(Copyable & Movable):

	var comment_character : Int8


alias CFG_FLAG_GLOBAL_SECTION = 1

alias CFG_FLAG_EMPTY_VALUES = 2

alias rte_cfgfile_load = fn (UnsafePointer[Int8], Int32) -> UnsafePointer[rte_cfgfile]
alias rte_cfgfile_load_with_params = fn (UnsafePointer[Int8], Int32, UnsafePointer[rte_cfgfile_parameters]) -> UnsafePointer[rte_cfgfile]
alias rte_cfgfile_create = fn (Int32) -> UnsafePointer[rte_cfgfile]
alias rte_cfgfile_add_section = fn (UnsafePointer[rte_cfgfile], UnsafePointer[Int8]) -> Int32
alias rte_cfgfile_add_entry = fn (UnsafePointer[rte_cfgfile], UnsafePointer[Int8], UnsafePointer[Int8], UnsafePointer[Int8]) -> Int32
alias rte_cfgfile_set_entry = fn (UnsafePointer[rte_cfgfile], UnsafePointer[Int8], UnsafePointer[Int8], UnsafePointer[Int8]) -> Int32
alias rte_cfgfile_save = fn (UnsafePointer[rte_cfgfile], UnsafePointer[Int8]) -> Int32
alias rte_cfgfile_num_sections = fn (UnsafePointer[rte_cfgfile], UnsafePointer[Int8], size_t) -> Int32
alias rte_cfgfile_sections = fn (UnsafePointer[rte_cfgfile], UnsafePointer[UnsafePointer[Int8]], Int32) -> Int32
alias rte_cfgfile_has_section = fn (UnsafePointer[rte_cfgfile], UnsafePointer[Int8]) -> Int32
alias rte_cfgfile_section_num_entries = fn (UnsafePointer[rte_cfgfile], UnsafePointer[Int8]) -> Int32
alias rte_cfgfile_section_num_entries_by_index = fn (UnsafePointer[rte_cfgfile], UnsafePointer[Int8], Int32) -> Int32
alias rte_cfgfile_section_entries = fn (UnsafePointer[rte_cfgfile], UnsafePointer[Int8], UnsafePointer[rte_cfgfile_entry], Int32) -> Int32
alias rte_cfgfile_section_entries_by_index = fn (UnsafePointer[rte_cfgfile], Int32, UnsafePointer[Int8], UnsafePointer[rte_cfgfile_entry], Int32) -> Int32
alias rte_cfgfile_get_entry = fn (UnsafePointer[rte_cfgfile], UnsafePointer[Int8], UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_cfgfile_has_entry = fn (UnsafePointer[rte_cfgfile], UnsafePointer[Int8], UnsafePointer[Int8]) -> Int32
alias rte_cfgfile_close = fn (UnsafePointer[rte_cfgfile]) -> Int32


alias rte_cfgfile_rte_cfgfile_load = ExternalFunction['rte_cfgfile_load', rte_cfgfile_load]
alias rte_cfgfile_rte_cfgfile_load_with_params = ExternalFunction['rte_cfgfile_load_with_params', rte_cfgfile_load_with_params]
alias rte_cfgfile_rte_cfgfile_create = ExternalFunction['rte_cfgfile_create', rte_cfgfile_create]
alias rte_cfgfile_rte_cfgfile_add_section = ExternalFunction['rte_cfgfile_add_section', rte_cfgfile_add_section]
alias rte_cfgfile_rte_cfgfile_add_entry = ExternalFunction['rte_cfgfile_add_entry', rte_cfgfile_add_entry]
alias rte_cfgfile_rte_cfgfile_set_entry = ExternalFunction['rte_cfgfile_set_entry', rte_cfgfile_set_entry]
alias rte_cfgfile_rte_cfgfile_save = ExternalFunction['rte_cfgfile_save', rte_cfgfile_save]
alias rte_cfgfile_rte_cfgfile_num_sections = ExternalFunction['rte_cfgfile_num_sections', rte_cfgfile_num_sections]
alias rte_cfgfile_rte_cfgfile_sections = ExternalFunction['rte_cfgfile_sections', rte_cfgfile_sections]
alias rte_cfgfile_rte_cfgfile_has_section = ExternalFunction['rte_cfgfile_has_section', rte_cfgfile_has_section]
alias rte_cfgfile_rte_cfgfile_section_num_entries = ExternalFunction['rte_cfgfile_section_num_entries', rte_cfgfile_section_num_entries]
alias rte_cfgfile_rte_cfgfile_section_num_entries_by_index = ExternalFunction['rte_cfgfile_section_num_entries_by_index', rte_cfgfile_section_num_entries_by_index]
alias rte_cfgfile_rte_cfgfile_section_entries = ExternalFunction['rte_cfgfile_section_entries', rte_cfgfile_section_entries]
alias rte_cfgfile_rte_cfgfile_section_entries_by_index = ExternalFunction['rte_cfgfile_section_entries_by_index', rte_cfgfile_section_entries_by_index]
alias rte_cfgfile_rte_cfgfile_get_entry = ExternalFunction['rte_cfgfile_get_entry', rte_cfgfile_get_entry]
alias rte_cfgfile_rte_cfgfile_has_entry = ExternalFunction['rte_cfgfile_has_entry', rte_cfgfile_has_entry]
alias rte_cfgfile_rte_cfgfile_close = ExternalFunction['rte_cfgfile_close', rte_cfgfile_close]

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
struct rte_cfgfile(Copyable, Movable):
    var lib: DLHandle
    
    var rte_cfgfile_load: rte_cfgfile_rte_cfgfile_load.type
    var rte_cfgfile_load_with_params: rte_cfgfile_rte_cfgfile_load_with_params.type
    var rte_cfgfile_create: rte_cfgfile_rte_cfgfile_create.type
    var rte_cfgfile_add_section: rte_cfgfile_rte_cfgfile_add_section.type
    var rte_cfgfile_add_entry: rte_cfgfile_rte_cfgfile_add_entry.type
    var rte_cfgfile_set_entry: rte_cfgfile_rte_cfgfile_set_entry.type
    var rte_cfgfile_save: rte_cfgfile_rte_cfgfile_save.type
    var rte_cfgfile_num_sections: rte_cfgfile_rte_cfgfile_num_sections.type
    var rte_cfgfile_sections: rte_cfgfile_rte_cfgfile_sections.type
    var rte_cfgfile_has_section: rte_cfgfile_rte_cfgfile_has_section.type
    var rte_cfgfile_section_num_entries: rte_cfgfile_rte_cfgfile_section_num_entries.type
    var rte_cfgfile_section_num_entries_by_index: rte_cfgfile_rte_cfgfile_section_num_entries_by_index.type
    var rte_cfgfile_section_entries: rte_cfgfile_rte_cfgfile_section_entries.type
    var rte_cfgfile_section_entries_by_index: rte_cfgfile_rte_cfgfile_section_entries_by_index.type
    var rte_cfgfile_get_entry: rte_cfgfile_rte_cfgfile_get_entry.type
    var rte_cfgfile_has_entry: rte_cfgfile_rte_cfgfile_has_entry.type
    var rte_cfgfile_close: rte_cfgfile_rte_cfgfile_close.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_cfgfile.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_cfgfile from", 'librte_cfgfile.so', ":\n", e)
            )

    
        self.rte_cfgfile_load = rte_cfgfile_rte_cfgfile_load.load(self.lib)
        self.rte_cfgfile_load_with_params = rte_cfgfile_rte_cfgfile_load_with_params.load(self.lib)
        self.rte_cfgfile_create = rte_cfgfile_rte_cfgfile_create.load(self.lib)
        self.rte_cfgfile_add_section = rte_cfgfile_rte_cfgfile_add_section.load(self.lib)
        self.rte_cfgfile_add_entry = rte_cfgfile_rte_cfgfile_add_entry.load(self.lib)
        self.rte_cfgfile_set_entry = rte_cfgfile_rte_cfgfile_set_entry.load(self.lib)
        self.rte_cfgfile_save = rte_cfgfile_rte_cfgfile_save.load(self.lib)
        self.rte_cfgfile_num_sections = rte_cfgfile_rte_cfgfile_num_sections.load(self.lib)
        self.rte_cfgfile_sections = rte_cfgfile_rte_cfgfile_sections.load(self.lib)
        self.rte_cfgfile_has_section = rte_cfgfile_rte_cfgfile_has_section.load(self.lib)
        self.rte_cfgfile_section_num_entries = rte_cfgfile_rte_cfgfile_section_num_entries.load(self.lib)
        self.rte_cfgfile_section_num_entries_by_index = rte_cfgfile_rte_cfgfile_section_num_entries_by_index.load(self.lib)
        self.rte_cfgfile_section_entries = rte_cfgfile_rte_cfgfile_section_entries.load(self.lib)
        self.rte_cfgfile_section_entries_by_index = rte_cfgfile_rte_cfgfile_section_entries_by_index.load(self.lib)
        self.rte_cfgfile_get_entry = rte_cfgfile_rte_cfgfile_get_entry.load(self.lib)
        self.rte_cfgfile_has_entry = rte_cfgfile_rte_cfgfile_has_entry.load(self.lib)
        self.rte_cfgfile_close = rte_cfgfile_rte_cfgfile_close.load(self.lib)

