
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

alias __s8 = Int8
alias __u8 = UInt8
alias __s16 = Int16
alias __u16 = UInt16
alias __s32 = Int32
alias __u32 = UInt32
alias __s64 = ffi.c_long_long
alias __u64 = ffi.c_ulong_long
struct anonomous_record_1297(Copyable & Movable):
	var fds_bits : InlineArray[ffi.c_ulong, 16]

alias __kernel_fd_set = anonomous_record_1297

alias __kernel_sighandler_t = fn(Int32) -> NoneType
alias __kernel_key_t = Int32
alias __kernel_mqd_t = Int32
alias __kernel_old_uid_t = UInt16
alias __kernel_old_gid_t = UInt16
alias __kernel_long_t = ffi.c_long
alias __kernel_ulong_t = ffi.c_ulong
alias __kernel_ino_t = __kernel_ulong_t
alias __kernel_mode_t = UInt32
alias __kernel_pid_t = Int32
alias __kernel_ipc_pid_t = Int32
alias __kernel_uid_t = UInt32
alias __kernel_gid_t = UInt32
alias __kernel_suseconds_t = __kernel_long_t
alias __kernel_daddr_t = Int32
alias __kernel_uid32_t = UInt32
alias __kernel_gid32_t = UInt32
alias __kernel_old_dev_t = UInt32
alias __kernel_size_t = __kernel_ulong_t
alias __kernel_ssize_t = __kernel_long_t
alias __kernel_ptrdiff_t = __kernel_long_t
struct anonomous_record_1298(Copyable & Movable):
	var val : InlineArray[Int32, 2]

alias __kernel_fsid_t = anonomous_record_1298

alias __kernel_off_t = __kernel_long_t
alias __kernel_loff_t = ffi.c_long_long
alias __kernel_old_time_t = __kernel_long_t
alias __kernel_time_t = __kernel_long_t
alias __kernel_time64_t = ffi.c_long_long
alias __kernel_clock_t = __kernel_long_t
alias __kernel_timer_t = Int32
alias __kernel_clockid_t = Int32
alias __kernel_caddr_t = UnsafePointer[Int8]
alias __kernel_uid16_t = UInt16
alias __kernel_gid16_t = UInt16
alias __le16 = __u16
alias __be16 = __u16
alias __le32 = __u32
alias __be32 = __u32
alias __le64 = __u64
alias __be64 = __u64
alias __sum16 = __u16
alias __wsum = __u32
alias __poll_t = UInt32
alias __fswab16 = fn (__u16) -> __u16
alias __fswab32 = fn (__u32) -> __u32
alias __fswab64 = fn (__u64) -> __u64
alias __fswahw32 = fn (__u32) -> __u32
alias __fswahb32 = fn (__u32) -> __u32
alias __swab = fn (read ffi.c_ulong) -> ffi.c_ulong
alias __builtin_constant_p = fn () -> Int32
alias __swab16p = fn (read UnsafePointer[__u16]) -> __u16
alias __swab32p = fn (read UnsafePointer[__u32]) -> __u32
alias __swab64p = fn (read UnsafePointer[__u64]) -> __u64
alias __swahw32p = fn (read UnsafePointer[__u32]) -> __u32
alias __swahb32p = fn (read UnsafePointer[__u32]) -> __u32
alias __swab16s = fn (UnsafePointer[__u16]) -> NoneType
alias __swab32s = fn (UnsafePointer[__u32]) -> NoneType
alias __swab64s = fn (UnsafePointer[__u64]) -> NoneType
alias __swahw32s = fn (UnsafePointer[__u32]) -> NoneType
alias __swahb32s = fn (UnsafePointer[__u32]) -> NoneType
alias __cpu_to_le64p = fn (read UnsafePointer[__u64]) -> __le64
alias __le64_to_cpup = fn (read UnsafePointer[__le64]) -> __u64
alias __cpu_to_le32p = fn (read UnsafePointer[__u32]) -> __le32
alias __le32_to_cpup = fn (read UnsafePointer[__le32]) -> __u32
alias __cpu_to_le16p = fn (read UnsafePointer[__u16]) -> __le16
alias __le16_to_cpup = fn (read UnsafePointer[__le16]) -> __u16
alias __cpu_to_be64p = fn (read UnsafePointer[__u64]) -> __be64
alias __be64_to_cpup = fn (read UnsafePointer[__be64]) -> __u64
alias __cpu_to_be32p = fn (read UnsafePointer[__u32]) -> __be32
alias __be32_to_cpup = fn (read UnsafePointer[__be32]) -> __u32
alias __cpu_to_be16p = fn (read UnsafePointer[__u16]) -> __be16
alias __be16_to_cpup = fn (read UnsafePointer[__be16]) -> __u16
struct perf_type_id(Copyable & Movable):
	alias PERF_TYPE_HARDWARE = 0

	alias PERF_TYPE_SOFTWARE = 1

	alias PERF_TYPE_TRACEPOINT = 2

	alias PERF_TYPE_HW_CACHE = 3

	alias PERF_TYPE_RAW = 4

	alias PERF_TYPE_BREAKPOINT = 5

	alias PERF_TYPE_MAX = 6

struct perf_hw_id(Copyable & Movable):
	alias PERF_COUNT_HW_CPU_CYCLES = 0

	alias PERF_COUNT_HW_INSTRUCTIONS = 1

	alias PERF_COUNT_HW_CACHE_REFERENCES = 2

	alias PERF_COUNT_HW_CACHE_MISSES = 3

	alias PERF_COUNT_HW_BRANCH_INSTRUCTIONS = 4

	alias PERF_COUNT_HW_BRANCH_MISSES = 5

	alias PERF_COUNT_HW_BUS_CYCLES = 6

	alias PERF_COUNT_HW_STALLED_CYCLES_FRONTEND = 7

	alias PERF_COUNT_HW_STALLED_CYCLES_BACKEND = 8

	alias PERF_COUNT_HW_REF_CPU_CYCLES = 9

	alias PERF_COUNT_HW_MAX = 10

struct perf_hw_cache_id(Copyable & Movable):
	alias PERF_COUNT_HW_CACHE_L1D = 0

	alias PERF_COUNT_HW_CACHE_L1I = 1

	alias PERF_COUNT_HW_CACHE_LL = 2

	alias PERF_COUNT_HW_CACHE_DTLB = 3

	alias PERF_COUNT_HW_CACHE_ITLB = 4

	alias PERF_COUNT_HW_CACHE_BPU = 5

	alias PERF_COUNT_HW_CACHE_NODE = 6

	alias PERF_COUNT_HW_CACHE_MAX = 7

struct perf_hw_cache_op_id(Copyable & Movable):
	alias PERF_COUNT_HW_CACHE_OP_READ = 0

	alias PERF_COUNT_HW_CACHE_OP_WRITE = 1

	alias PERF_COUNT_HW_CACHE_OP_PREFETCH = 2

	alias PERF_COUNT_HW_CACHE_OP_MAX = 3

struct perf_hw_cache_op_result_id(Copyable & Movable):
	alias PERF_COUNT_HW_CACHE_RESULT_ACCESS = 0

	alias PERF_COUNT_HW_CACHE_RESULT_MISS = 1

	alias PERF_COUNT_HW_CACHE_RESULT_MAX = 2

struct perf_sw_ids(Copyable & Movable):
	alias PERF_COUNT_SW_CPU_CLOCK = 0

	alias PERF_COUNT_SW_TASK_CLOCK = 1

	alias PERF_COUNT_SW_PAGE_FAULTS = 2

	alias PERF_COUNT_SW_CONTEXT_SWITCHES = 3

	alias PERF_COUNT_SW_CPU_MIGRATIONS = 4

	alias PERF_COUNT_SW_PAGE_FAULTS_MIN = 5

	alias PERF_COUNT_SW_PAGE_FAULTS_MAJ = 6

	alias PERF_COUNT_SW_ALIGNMENT_FAULTS = 7

	alias PERF_COUNT_SW_EMULATION_FAULTS = 8

	alias PERF_COUNT_SW_DUMMY = 9

	alias PERF_COUNT_SW_BPF_OUTPUT = 10

	alias PERF_COUNT_SW_CGROUP_SWITCHES = 11

	alias PERF_COUNT_SW_MAX = 12

struct perf_event_sample_format(Copyable & Movable):
	alias PERF_SAMPLE_IP = 0

	alias PERF_SAMPLE_TID = 1

	alias PERF_SAMPLE_TIME = 2

	alias PERF_SAMPLE_ADDR = 3

	alias PERF_SAMPLE_READ = 4

	alias PERF_SAMPLE_CALLCHAIN = 5

	alias PERF_SAMPLE_ID = 6

	alias PERF_SAMPLE_CPU = 7

	alias PERF_SAMPLE_PERIOD = 8

	alias PERF_SAMPLE_STREAM_ID = 9

	alias PERF_SAMPLE_RAW = 10

	alias PERF_SAMPLE_BRANCH_STACK = 11

	alias PERF_SAMPLE_REGS_USER = 12

	alias PERF_SAMPLE_STACK_USER = 13

	alias PERF_SAMPLE_WEIGHT = 14

	alias PERF_SAMPLE_DATA_SRC = 15

	alias PERF_SAMPLE_IDENTIFIER = 16

	alias PERF_SAMPLE_TRANSACTION = 17

	alias PERF_SAMPLE_REGS_INTR = 18

	alias PERF_SAMPLE_PHYS_ADDR = 19

	alias PERF_SAMPLE_AUX = 20

	alias PERF_SAMPLE_CGROUP = 21

	alias PERF_SAMPLE_DATA_PAGE_SIZE = 22

	alias PERF_SAMPLE_CODE_PAGE_SIZE = 23

	alias PERF_SAMPLE_WEIGHT_STRUCT = 24

	alias PERF_SAMPLE_MAX = 25

	alias __PERF_SAMPLE_CALLCHAIN_EARLY = 26

struct perf_branch_sample_type_shift(Copyable & Movable):
	alias PERF_SAMPLE_BRANCH_USER_SHIFT = 0

	alias PERF_SAMPLE_BRANCH_KERNEL_SHIFT = 1

	alias PERF_SAMPLE_BRANCH_HV_SHIFT = 2

	alias PERF_SAMPLE_BRANCH_ANY_SHIFT = 3

	alias PERF_SAMPLE_BRANCH_ANY_CALL_SHIFT = 4

	alias PERF_SAMPLE_BRANCH_ANY_RETURN_SHIFT = 5

	alias PERF_SAMPLE_BRANCH_IND_CALL_SHIFT = 6

	alias PERF_SAMPLE_BRANCH_ABORT_TX_SHIFT = 7

	alias PERF_SAMPLE_BRANCH_IN_TX_SHIFT = 8

	alias PERF_SAMPLE_BRANCH_NO_TX_SHIFT = 9

	alias PERF_SAMPLE_BRANCH_COND_SHIFT = 10

	alias PERF_SAMPLE_BRANCH_CALL_STACK_SHIFT = 11

	alias PERF_SAMPLE_BRANCH_IND_JUMP_SHIFT = 12

	alias PERF_SAMPLE_BRANCH_CALL_SHIFT = 13

	alias PERF_SAMPLE_BRANCH_NO_FLAGS_SHIFT = 14

	alias PERF_SAMPLE_BRANCH_NO_CYCLES_SHIFT = 15

	alias PERF_SAMPLE_BRANCH_TYPE_SAVE_SHIFT = 16

	alias PERF_SAMPLE_BRANCH_HW_INDEX_SHIFT = 17

	alias PERF_SAMPLE_BRANCH_MAX_SHIFT = 18

struct perf_branch_sample_type(Copyable & Movable):
	alias PERF_SAMPLE_BRANCH_USER = 0

	alias PERF_SAMPLE_BRANCH_KERNEL = 1

	alias PERF_SAMPLE_BRANCH_HV = 2

	alias PERF_SAMPLE_BRANCH_ANY = 3

	alias PERF_SAMPLE_BRANCH_ANY_CALL = 4

	alias PERF_SAMPLE_BRANCH_ANY_RETURN = 5

	alias PERF_SAMPLE_BRANCH_IND_CALL = 6

	alias PERF_SAMPLE_BRANCH_ABORT_TX = 7

	alias PERF_SAMPLE_BRANCH_IN_TX = 8

	alias PERF_SAMPLE_BRANCH_NO_TX = 9

	alias PERF_SAMPLE_BRANCH_COND = 10

	alias PERF_SAMPLE_BRANCH_CALL_STACK = 11

	alias PERF_SAMPLE_BRANCH_IND_JUMP = 12

	alias PERF_SAMPLE_BRANCH_CALL = 13

	alias PERF_SAMPLE_BRANCH_NO_FLAGS = 14

	alias PERF_SAMPLE_BRANCH_NO_CYCLES = 15

	alias PERF_SAMPLE_BRANCH_TYPE_SAVE = 16

	alias PERF_SAMPLE_BRANCH_HW_INDEX = 17

	alias PERF_SAMPLE_BRANCH_MAX = 18

alias PERF_BR_UNKNOWN = 0

alias PERF_BR_COND = 1

alias PERF_BR_UNCOND = 2

alias PERF_BR_IND = 3

alias PERF_BR_CALL = 4

alias PERF_BR_IND_CALL = 5

alias PERF_BR_RET = 6

alias PERF_BR_SYSCALL = 7

alias PERF_BR_SYSRET = 8

alias PERF_BR_COND_CALL = 9

alias PERF_BR_COND_RET = 10

alias PERF_BR_ERET = 11

alias PERF_BR_IRQ = 12

alias PERF_BR_MAX = 13

struct perf_sample_regs_abi(Copyable & Movable):
	alias PERF_SAMPLE_REGS_ABI_NONE = 0

	alias PERF_SAMPLE_REGS_ABI_32 = 1

	alias PERF_SAMPLE_REGS_ABI_64 = 2

alias PERF_TXN_ELISION = 1

alias PERF_TXN_TRANSACTION = 2

alias PERF_TXN_SYNC = 4

alias PERF_TXN_ASYNC = 8

alias PERF_TXN_RETRY = 16

alias PERF_TXN_CONFLICT = 32

alias PERF_TXN_CAPACITY_WRITE = 64

alias PERF_TXN_CAPACITY_READ = 128

alias PERF_TXN_MAX = 256

alias PERF_TXN_ABORT_MASK = 257

alias PERF_TXN_ABORT_SHIFT = 32

struct perf_event_read_format(Copyable & Movable):
	alias PERF_FORMAT_TOTAL_TIME_ENABLED = 0

	alias PERF_FORMAT_TOTAL_TIME_RUNNING = 1

	alias PERF_FORMAT_ID = 2

	alias PERF_FORMAT_GROUP = 3

	alias PERF_FORMAT_LOST = 4

	alias PERF_FORMAT_MAX = 5

alias anonomous_record_1302 = C_Union[ffi.c_ulong_long, ffi.c_ulong_long, ffi.c_ulong_long, ffi.c_ulong_long]

alias anonomous_record_1301 = C_Union[ffi.c_ulong_long, ffi.c_ulong_long, ffi.c_ulong_long, ffi.c_ulong_long]

alias anonomous_record_1300 = C_Union[UInt32, UInt32]

alias anonomous_record_1299 = C_Union[ffi.c_ulong_long, ffi.c_ulong_long]

struct perf_event_attr(Copyable & Movable):
	var type : UInt32

	var size : UInt32

	var config : ffi.c_ulong_long

	var union_placeholder_1 : anonomous_record_1299



	var sample_type : ffi.c_ulong_long

	var read_format : ffi.c_ulong_long

	var disabled : ffi.c_ulong_long

	var inherit : ffi.c_ulong_long

	var pinned : ffi.c_ulong_long

	var exclusive : ffi.c_ulong_long

	var exclude_user : ffi.c_ulong_long

	var exclude_kernel : ffi.c_ulong_long

	var exclude_hv : ffi.c_ulong_long

	var exclude_idle : ffi.c_ulong_long

	var mmap : ffi.c_ulong_long

	var comm : ffi.c_ulong_long

	var freq : ffi.c_ulong_long

	var inherit_stat : ffi.c_ulong_long

	var enable_on_exec : ffi.c_ulong_long

	var task : ffi.c_ulong_long

	var watermark : ffi.c_ulong_long

	var precise_ip : ffi.c_ulong_long

	var mmap_data : ffi.c_ulong_long

	var sample_id_all : ffi.c_ulong_long

	var exclude_host : ffi.c_ulong_long

	var exclude_guest : ffi.c_ulong_long

	var exclude_callchain_kernel : ffi.c_ulong_long

	var exclude_callchain_user : ffi.c_ulong_long

	var mmap2 : ffi.c_ulong_long

	var comm_exec : ffi.c_ulong_long

	var use_clockid : ffi.c_ulong_long

	var context_switch : ffi.c_ulong_long

	var write_backward : ffi.c_ulong_long

	var namespaces : ffi.c_ulong_long

	var ksymbol : ffi.c_ulong_long

	var bpf_event : ffi.c_ulong_long

	var aux_output : ffi.c_ulong_long

	var cgroup : ffi.c_ulong_long

	var text_poke : ffi.c_ulong_long

	var build_id : ffi.c_ulong_long

	var inherit_thread : ffi.c_ulong_long

	var remove_on_exec : ffi.c_ulong_long

	var sigtrap : ffi.c_ulong_long

	var __reserved_1 : ffi.c_ulong_long

	var union_placeholder_2 : anonomous_record_1300



	var bp_type : UInt32

	var union_placeholder_3 : anonomous_record_1301





	var union_placeholder_4 : anonomous_record_1302





	var branch_sample_type : ffi.c_ulong_long

	var sample_regs_user : ffi.c_ulong_long

	var sample_stack_user : UInt32

	var clockid : Int32

	var sample_regs_intr : ffi.c_ulong_long

	var aux_watermark : UInt32

	var sample_max_stack : UInt16

	var __reserved_2 : UInt16

	var aux_sample_size : UInt32

	var __reserved_3 : UInt32

	var sig_data : ffi.c_ulong_long

struct perf_event_query_bpf(Copyable & Movable):
	var ids_len : UInt32

	var prog_cnt : UInt32

	var ids : InlineArray[__u32, 0]

struct perf_event_ioc_flags(Copyable & Movable):
	alias PERF_IOC_FLAG_GROUP = 0

struct anonomous_record_1303(Copyable & Movable):
	var cap_bit0 : ffi.c_ulong_long

	var cap_bit0_is_deprecated : ffi.c_ulong_long

	var cap_user_rdpmc : ffi.c_ulong_long

	var cap_user_time : ffi.c_ulong_long

	var cap_user_time_zero : ffi.c_ulong_long

	var cap_user_time_short : ffi.c_ulong_long

	var cap_____res : ffi.c_ulong_long

alias anonomous_record_1304 = C_Union[ffi.c_ulong_long, anonomous_record_1303, , , , , , , ]

struct perf_event_mmap_page(Copyable & Movable):
	var version : UInt32

	var compat_version : UInt32

	var lock : UInt32

	var index : UInt32

	var offset : ffi.c_long_long

	var time_enabled : ffi.c_ulong_long

	var time_running : ffi.c_ulong_long

	var union_placeholder_1 : anonomous_record_1304









	var pmc_width : UInt16

	var time_shift : UInt16

	var time_mult : UInt32

	var time_offset : ffi.c_ulong_long

	var time_zero : ffi.c_ulong_long

	var size : UInt32

	var __reserved_1 : UInt32

	var time_cycles : ffi.c_ulong_long

	var time_mask : ffi.c_ulong_long

	var __reserved : InlineArray[__u8, 928]

	var data_head : ffi.c_ulong_long

	var data_tail : ffi.c_ulong_long

	var data_offset : ffi.c_ulong_long

	var data_size : ffi.c_ulong_long

	var aux_head : ffi.c_ulong_long

	var aux_tail : ffi.c_ulong_long

	var aux_offset : ffi.c_ulong_long

	var aux_size : ffi.c_ulong_long

struct perf_event_header(Copyable & Movable):
	var type : UInt32

	var misc : UInt16

	var size : UInt16

struct perf_ns_link_info(Copyable & Movable):
	var dev : ffi.c_ulong_long

	var ino : ffi.c_ulong_long

alias NET_NS_INDEX = 0

alias UTS_NS_INDEX = 1

alias IPC_NS_INDEX = 2

alias PID_NS_INDEX = 3

alias USER_NS_INDEX = 4

alias MNT_NS_INDEX = 5

alias CGROUP_NS_INDEX = 6

alias NR_NAMESPACES = 7

struct perf_event_type(Copyable & Movable):
	alias PERF_RECORD_MMAP = 1

	alias PERF_RECORD_LOST = 2

	alias PERF_RECORD_COMM = 3

	alias PERF_RECORD_EXIT = 4

	alias PERF_RECORD_THROTTLE = 5

	alias PERF_RECORD_UNTHROTTLE = 6

	alias PERF_RECORD_FORK = 7

	alias PERF_RECORD_READ = 8

	alias PERF_RECORD_SAMPLE = 9

	alias PERF_RECORD_MMAP2 = 10

	alias PERF_RECORD_AUX = 11

	alias PERF_RECORD_ITRACE_START = 12

	alias PERF_RECORD_LOST_SAMPLES = 13

	alias PERF_RECORD_SWITCH = 14

	alias PERF_RECORD_SWITCH_CPU_WIDE = 15

	alias PERF_RECORD_NAMESPACES = 16

	alias PERF_RECORD_KSYMBOL = 17

	alias PERF_RECORD_BPF_EVENT = 18

	alias PERF_RECORD_CGROUP = 19

	alias PERF_RECORD_TEXT_POKE = 20

	alias PERF_RECORD_MAX = 21

struct perf_record_ksymbol_type(Copyable & Movable):
	alias PERF_RECORD_KSYMBOL_TYPE_UNKNOWN = 0

	alias PERF_RECORD_KSYMBOL_TYPE_BPF = 1

	alias PERF_RECORD_KSYMBOL_TYPE_OOL = 2

	alias PERF_RECORD_KSYMBOL_TYPE_MAX = 3

struct perf_bpf_event_type(Copyable & Movable):
	alias PERF_BPF_EVENT_UNKNOWN = 0

	alias PERF_BPF_EVENT_PROG_LOAD = 1

	alias PERF_BPF_EVENT_PROG_UNLOAD = 2

	alias PERF_BPF_EVENT_MAX = 3

struct perf_callchain_context(Copyable & Movable):
	alias PERF_CONTEXT_HV = 0

	alias PERF_CONTEXT_KERNEL = 1

	alias PERF_CONTEXT_USER = 2

	alias PERF_CONTEXT_GUEST = 3

	alias PERF_CONTEXT_GUEST_KERNEL = 4

	alias PERF_CONTEXT_GUEST_USER = 5

	alias PERF_CONTEXT_MAX = 6

struct anonomous_record_1305(Copyable & Movable):
	var mem_op : ffi.c_ulong_long

	var mem_lvl : ffi.c_ulong_long

	var mem_snoop : ffi.c_ulong_long

	var mem_lock : ffi.c_ulong_long

	var mem_dtlb : ffi.c_ulong_long

	var mem_lvl_num : ffi.c_ulong_long

	var mem_remote : ffi.c_ulong_long

	var mem_snoopx : ffi.c_ulong_long

	var mem_blk : ffi.c_ulong_long

	var mem_rsvd : ffi.c_ulong_long

alias perf_mem_data_src = C_Union[ffi.c_ulong_long, anonomous_record_1305, , , , , , , , , , ]

struct perf_branch_entry(Copyable & Movable):
	var from : ffi.c_ulong_long

	var to : ffi.c_ulong_long

	var mispred : ffi.c_ulong_long

	var predicted : ffi.c_ulong_long

	var in_tx : ffi.c_ulong_long

	var abort : ffi.c_ulong_long

	var cycles : ffi.c_ulong_long

	var type : ffi.c_ulong_long

	var reserved : ffi.c_ulong_long

struct anonomous_record_1306(Copyable & Movable):
	var var1_dw : UInt32

	var var2_w : UInt16

	var var3_w : UInt16

alias perf_sample_weight = C_Union[ffi.c_ulong_long, anonomous_record_1306, , , ]

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
struct anonomous_record_1307(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_1307

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
struct anonomous_record_1308(Copyable & Movable):
	var __bits : InlineArray[__cpu_mask, 16]

alias cpu_set_t = anonomous_record_1308

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
	# {"id":"0x36703780","inner":[{"id":"0x36512340","inner":[{"id":"0x36511600","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"void *[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Generic marker for any place in a structure. 

alias RTE_MARKER8 = 	# # Node: PlaceHolder()
	# {"id":"0x36703910","inner":[{"decl":{"id":"0x36620c48","kind":"TypedefDecl","name":"uint8_t"},"id":"0x36703870","inner":[{"decl":{"id":"0x3663cbf0","kind":"TypedefDecl","name":"__uint8_t"},"id":"0x3663cf80","inner":[{"id":"0x36511700","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"TypedefType","type":{"qualType":"__uint8_t"}}],"kind":"TypedefType","type":{"qualType":"uint8_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint8_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 1B alignment in a structure. 

alias RTE_MARKER16 = 	# # Node: PlaceHolder()
	# {"id":"0x36703a70","inner":[{"decl":{"id":"0x36620cb0","kind":"TypedefDecl","name":"uint16_t"},"id":"0x366d4ac0","inner":[{"decl":{"id":"0x3663ccd0","kind":"TypedefDecl","name":"__uint16_t"},"id":"0x3663d0a0","inner":[{"id":"0x36511720","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"TypedefType","type":{"qualType":"__uint16_t"}}],"kind":"TypedefType","type":{"qualType":"uint16_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint16_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 2B alignment in a structure. 

alias RTE_MARKER32 = 	# # Node: PlaceHolder()
	# {"id":"0x36703b90","inner":[{"decl":{"id":"0x36620d18","kind":"TypedefDecl","name":"uint32_t"},"id":"0x366d4a30","inner":[{"decl":{"id":"0x3663cdb0","kind":"TypedefDecl","name":"__uint32_t"},"id":"0x3663d1c0","inner":[{"id":"0x36511740","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"__uint32_t"}}],"kind":"TypedefType","type":{"qualType":"uint32_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint32_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 4B alignment in a structure. 

alias RTE_MARKER64 = 	# # Node: PlaceHolder()
	# {"id":"0x36703cf0","inner":[{"decl":{"id":"0x36620d80","kind":"TypedefDecl","name":"uint64_t"},"id":"0x366d49a0","inner":[{"decl":{"id":"0x3663ce90","kind":"TypedefDecl","name":"__uint64_t"},"id":"0x3663d2e0","inner":[{"id":"0x36511760","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uint64_t"}}],"kind":"TypedefType","type":{"qualType":"uint64_t"}}],"kind":"ConstantArrayType","size":0,"type":{"qualType":"uint64_t[0]"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Marker for 8B alignment in a structure. 

alias rte_str_to_size = fn (read UnsafePointer[Int8]) -> ffi.c_ulong_long
alias rte_size_to_str = fn (UnsafePointer[Int8], Int32, ffi.c_ulong_long, Bool, read UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias rte_exit = fn (Int32, read *UnsafePointer[Int8]) -> NoneType
alias rte_memory_order = Int32
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The memory order is an integer type in GCC built-ins,
# Node: TextComment()
#  not an enumerated type like in C11.

alias rte_atomic_thread_fence = fn (rte_memory_order) -> NoneType
alias rte_atomic16_cmpset = fn (UnsafePointer[UInt16], UInt16, UInt16) -> Int32
alias __sync_bool_compare_and_swap = fn () -> NoneType
alias __sync_bool_compare_and_swap_2 = fn (UnsafePointer[Int16], Int16, *Int16) -> Bool
alias rte_atomic16_exchange = fn (UnsafePointer[UInt16], UInt16) -> UInt16
alias __atomic_exchange_n = fn () -> NoneType
struct anonomous_record_1309(Copyable & Movable):

	var cnt : Int16

alias rte_atomic16_t = anonomous_record_1309

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The atomic counter structure.

alias rte_atomic16_init = fn (UnsafePointer[rte_atomic16_t]) -> NoneType
alias rte_atomic16_read = fn (read UnsafePointer[rte_atomic16_t]) -> Int16
alias rte_atomic16_set = fn (UnsafePointer[rte_atomic16_t], Int16) -> NoneType
alias rte_atomic16_add = fn (UnsafePointer[rte_atomic16_t], Int16) -> NoneType
alias __atomic_fetch_add = fn () -> NoneType
alias rte_atomic16_sub = fn (UnsafePointer[rte_atomic16_t], Int16) -> NoneType
alias __atomic_fetch_sub = fn () -> NoneType
alias rte_atomic16_inc = fn (UnsafePointer[rte_atomic16_t]) -> NoneType
alias rte_atomic16_dec = fn (UnsafePointer[rte_atomic16_t]) -> NoneType
alias rte_atomic16_add_return = fn (UnsafePointer[rte_atomic16_t], Int16) -> Int16
alias rte_atomic16_sub_return = fn (UnsafePointer[rte_atomic16_t], Int16) -> Int16
alias rte_atomic16_inc_and_test = fn (UnsafePointer[rte_atomic16_t]) -> Int32
alias rte_atomic16_dec_and_test = fn (UnsafePointer[rte_atomic16_t]) -> Int32
alias rte_atomic16_test_and_set = fn (UnsafePointer[rte_atomic16_t]) -> Int32
alias rte_atomic16_clear = fn (UnsafePointer[rte_atomic16_t]) -> NoneType
alias rte_atomic32_cmpset = fn (UnsafePointer[ffi.c_ulong], ffi.c_ulong, ffi.c_ulong) -> Int32
alias __sync_bool_compare_and_swap_4 = fn (UnsafePointer[Int32], Int32, *Int32) -> Bool
alias rte_atomic32_exchange = fn (UnsafePointer[ffi.c_ulong], ffi.c_ulong) -> ffi.c_ulong
struct anonomous_record_1310(Copyable & Movable):

	var cnt : Int32

alias rte_atomic32_t = anonomous_record_1310

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The atomic counter structure.

alias rte_atomic32_init = fn (UnsafePointer[rte_atomic32_t]) -> NoneType
alias rte_atomic32_read = fn (read UnsafePointer[rte_atomic32_t]) -> ffi.c_long
alias rte_atomic32_set = fn (UnsafePointer[rte_atomic32_t], ffi.c_long) -> NoneType
alias rte_atomic32_add = fn (UnsafePointer[rte_atomic32_t], ffi.c_long) -> NoneType
alias rte_atomic32_sub = fn (UnsafePointer[rte_atomic32_t], ffi.c_long) -> NoneType
alias rte_atomic32_inc = fn (UnsafePointer[rte_atomic32_t]) -> NoneType
alias rte_atomic32_dec = fn (UnsafePointer[rte_atomic32_t]) -> NoneType
alias rte_atomic32_add_return = fn (UnsafePointer[rte_atomic32_t], ffi.c_long) -> ffi.c_long
alias rte_atomic32_sub_return = fn (UnsafePointer[rte_atomic32_t], ffi.c_long) -> ffi.c_long
alias rte_atomic32_inc_and_test = fn (UnsafePointer[rte_atomic32_t]) -> Int32
alias rte_atomic32_dec_and_test = fn (UnsafePointer[rte_atomic32_t]) -> Int32
alias rte_atomic32_test_and_set = fn (UnsafePointer[rte_atomic32_t]) -> Int32
alias rte_atomic32_clear = fn (UnsafePointer[rte_atomic32_t]) -> NoneType
alias rte_atomic64_cmpset = fn (UnsafePointer[ffi.c_ulong_long], ffi.c_ulong_long, ffi.c_ulong_long) -> Int32
alias __sync_bool_compare_and_swap_8 = fn (UnsafePointer[ffi.c_long_long], ffi.c_long_long, *ffi.c_long_long) -> Bool
alias rte_atomic64_exchange = fn (UnsafePointer[ffi.c_ulong_long], ffi.c_ulong_long) -> ffi.c_ulong_long
struct anonomous_record_1311(Copyable & Movable):

	var cnt : ffi.c_long

alias rte_atomic64_t = anonomous_record_1311

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  The atomic counter structure.

alias rte_atomic64_init = fn (UnsafePointer[rte_atomic64_t]) -> NoneType
alias rte_atomic64_read = fn (UnsafePointer[rte_atomic64_t]) -> ffi.c_long_long
alias rte_atomic64_set = fn (UnsafePointer[rte_atomic64_t], ffi.c_long_long) -> NoneType
alias rte_atomic64_add = fn (UnsafePointer[rte_atomic64_t], ffi.c_long_long) -> NoneType
alias rte_atomic64_sub = fn (UnsafePointer[rte_atomic64_t], ffi.c_long_long) -> NoneType
alias rte_atomic64_inc = fn (UnsafePointer[rte_atomic64_t]) -> NoneType
alias rte_atomic64_dec = fn (UnsafePointer[rte_atomic64_t]) -> NoneType
alias rte_atomic64_add_return = fn (UnsafePointer[rte_atomic64_t], ffi.c_long_long) -> ffi.c_long_long
alias rte_atomic64_sub_return = fn (UnsafePointer[rte_atomic64_t], ffi.c_long_long) -> ffi.c_long_long
alias rte_atomic64_inc_and_test = fn (UnsafePointer[rte_atomic64_t]) -> Int32
alias rte_atomic64_dec_and_test = fn (UnsafePointer[rte_atomic64_t]) -> Int32
alias rte_atomic64_test_and_set = fn (UnsafePointer[rte_atomic64_t]) -> Int32
alias rte_atomic64_clear = fn (UnsafePointer[rte_atomic64_t]) -> NoneType
alias anonomous_record_1312 = C_Union[InlineArray[ffi.c_ulong_long, 2], Int128]

struct anonomous_record_1313(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x3672b460","inner":[{"id":"0x3672b440","inner":[{"id":"0x3672b380","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_32.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_32.h"},"offset":25573,"tokLen":2}},"end":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_32.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_32.h"},"offset":25573,"tokLen":2}}},"type":{"qualType":"int"},"value":"16","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_32.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_32.h"},"offset":25573,"tokLen":2}},"end":{"expansionLoc":{"col":16,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_32.h"},"isMacroArgExpansion":true,"offset":25559,"tokLen":13},"spellingLoc":{"col":30,"includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_32.h"},"offset":25573,"tokLen":2}}},"type":{"qualType":"int"},"value":"16","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":16,"file":"dpdk/lib/eal/include/generic/rte_atomic.h","includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_32.h"},"line":1101,"offset":25559,"tokLen":13},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/eal/include/generic/rte_atomic.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":16,"file":"dpdk/lib/eal/include/generic/rte_atomic.h","includedFrom":{"file":"dpdk/lib/eal/arm/include/rte_atomic_32.h"},"line":1101,"offset":25559,"tokLen":13},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/eal/include/generic/rte_atomic.h"},"line":121,"offset":3797,"tokLen":1}}}}


	var union_placeholder_1 : anonomous_record_1312



alias rte_int128_t = anonomous_record_1313

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  128-bit integer structure.

alias __atomic_thread_fence = fn (Int32) -> NoneType
alias va_list = __builtin_va_list
alias __gnuc_va_list = __builtin_va_list
alias anonomous_record_1314 = C_Union[UInt32, InlineArray[Int8, 4]]

struct anonomous_record_1315(Copyable & Movable):
	var __count : Int32

	var __value : anonomous_record_1314

alias __mbstate_t = anonomous_record_1315

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
alias clock_t = __clock_t
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

alias clockid_t = __clockid_t
alias timer_t = __timer_t
struct itimerspec(Copyable & Movable):
	var it_interval : timespec

	var it_value : timespec

struct sigevent(Copyable & Movable):
	pass
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
alias ptrdiff_t = ffi.c_long
alias wchar_t = UInt32
struct anonomous_record_1316(Copyable & Movable):
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_1316

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
alias rte_uuid_t = 	# # Node: PlaceHolder()
	# {"id":"0x36793880","inner":[{"id":"0x36511700","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"ConstantArrayType","size":16,"type":{"qualType":"unsigned char[16]"}}

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
struct rte_lcore_state_t(Copyable & Movable):

	alias WAIT = 0

	alias RUNNING = 1

alias lcore_function_t = 	# # Node: PlaceHolder()
	# {"id":"0x367a4010","inner":[{"cc":"cdecl","id":"0x36779db0","inner":[{"id":"0x365116a0","kind":"BuiltinType","type":{"qualType":"int"}},{"id":"0x36512340","inner":[{"id":"0x36511600","kind":"BuiltinType","type":{"qualType":"void"}}],"kind":"PointerType","type":{"qualType":"void *"}}],"kind":"FunctionProtoType","type":{"qualType":"int (void *)"}}],"kind":"ParenType","type":{"qualType":"int (void *)"}}

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Definition of a remote launch function.

alias rte_eal_remote_launch = fn (UnsafePointer[lcore_function_t], OpaquePointer, UInt32) -> Int32
struct rte_rmt_call_main_t(Copyable & Movable):

	alias SKIP_MAIN = 0

	alias CALL_MAIN = 1

alias rte_eal_mp_remote_launch = fn (UnsafePointer[lcore_function_t], OpaquePointer, rte_rmt_call_main_t) -> Int32
alias rte_eal_get_lcore_state = fn (UInt32) -> rte_lcore_state_t
alias rte_eal_wait_lcore = fn (UInt32) -> Int32
alias rte_eal_mp_wait_lcore = fn (NoneType) -> NoneType
struct anonomous_record_1317(Copyable & Movable):

	var opaque_id : ffi.c_ulong

alias rte_thread_t = anonomous_record_1317

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Thread id descriptor.

alias rte_thread_func = fn(OpaquePointer) -> ffi.c_ulong
struct rte_thread_priority(Copyable & Movable):

	alias RTE_THREAD_PRIORITY_NORMAL = 0

	alias RTE_THREAD_PRIORITY_REALTIME_CRITICAL = 1

struct anonomous_record_1318(Copyable & Movable):

	var priority : rte_thread_priority

alias rte_thread_attr_t = anonomous_record_1318

# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Representation for thread attributes.

struct eal_tls_key(Copyable & Movable):
	pass
alias rte_thread_key = UnsafePointer[eal_tls_key]
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  TLS key type, an opaque pointer.

alias rte_thread_create = fn (UnsafePointer[rte_thread_t], read UnsafePointer[rte_thread_attr_t], rte_thread_func, OpaquePointer) -> Int32
alias rte_thread_create_control = fn (UnsafePointer[rte_thread_t], read UnsafePointer[Int8], rte_thread_func, OpaquePointer) -> Int32
alias rte_thread_create_internal_control = fn (UnsafePointer[rte_thread_t], read UnsafePointer[Int8], rte_thread_func, OpaquePointer) -> Int32
alias rte_thread_join = fn (rte_thread_t, UnsafePointer[ffi.c_ulong]) -> Int32
alias rte_thread_detach = fn (rte_thread_t) -> Int32
alias rte_thread_self = fn (NoneType) -> rte_thread_t
alias rte_thread_set_name = fn (rte_thread_t, read UnsafePointer[Int8]) -> NoneType
alias rte_thread_set_prefixed_name = fn (rte_thread_t, read UnsafePointer[Int8]) -> NoneType
alias rte_thread_equal = fn (rte_thread_t, rte_thread_t) -> Int32
alias rte_thread_attr_init = fn (UnsafePointer[rte_thread_attr_t]) -> Int32
alias rte_thread_attr_set_priority = fn (UnsafePointer[rte_thread_attr_t], rte_thread_priority) -> Int32
alias rte_thread_get_priority = fn (rte_thread_t, UnsafePointer[rte_thread_priority]) -> Int32
alias rte_thread_set_priority = fn (rte_thread_t, rte_thread_priority) -> Int32
alias rte_thread_key_create = fn (fn(OpaquePointer) -> UnsafePointer[rte_thread_key], NoneType) -> Int32
alias rte_thread_key_delete = fn (rte_thread_key) -> Int32
alias rte_thread_value_set = fn (rte_thread_key, read OpaquePointer) -> Int32
alias rte_thread_value_get = fn (rte_thread_key) -> OpaquePointer
alias per_lcore__lcore_id = UInt32
struct rte_lcore_role_t(Copyable & Movable):

	alias ROLE_RTE = 0

	alias ROLE_OFF = 1

	alias ROLE_SERVICE = 2

	alias ROLE_NON_EAL = 3

alias rte_eal_lcore_role = fn (UInt32) -> rte_lcore_role_t
alias rte_lcore_has_role = fn (UInt32, rte_lcore_role_t) -> Int32
alias rte_lcore_id = fn (NoneType) -> UInt32
alias rte_get_main_lcore = fn (NoneType) -> UInt32
alias rte_lcore_count = fn (NoneType) -> UInt32
alias rte_lcore_index = fn (Int32) -> Int32
alias rte_socket_id = fn (NoneType) -> UInt32
alias rte_socket_count = fn (NoneType) -> UInt32
alias rte_socket_id_by_idx = fn (UInt32) -> Int32
alias rte_lcore_to_socket_id = fn (UInt32) -> UInt32
alias rte_lcore_to_cpu_id = fn (Int32) -> Int32
alias rte_lcore_is_enabled = fn (UInt32) -> Int32
alias rte_get_next_lcore = fn (UInt32, Int32, Int32) -> UInt32
alias rte_lcore_init_cb = fn(UInt32, OpaquePointer) -> Int32
alias rte_lcore_uninit_cb = fn(UInt32, OpaquePointer) -> NoneType
alias rte_lcore_callback_register = fn (read UnsafePointer[Int8], rte_lcore_init_cb, rte_lcore_uninit_cb, OpaquePointer) -> OpaquePointer
alias rte_lcore_callback_unregister = fn (OpaquePointer) -> NoneType
alias rte_lcore_iterate_cb = fn(UInt32, OpaquePointer) -> Int32
alias rte_lcore_iterate = fn (rte_lcore_iterate_cb, OpaquePointer) -> Int32
struct rte_lcore_usage(Copyable & Movable):

	var total_cycles : ffi.c_ulong

	var busy_cycles : ffi.c_ulong

alias rte_lcore_usage_cb = fn(UInt32, UnsafePointer[rte_lcore_usage]) -> Int32
alias rte_lcore_register_usage_cb = fn (rte_lcore_usage_cb) -> NoneType
alias rte_lcore_dump = fn (UnsafePointer[FILE]) -> NoneType
alias rte_thread_register = fn (NoneType) -> Int32
alias rte_thread_unregister = fn (NoneType) -> NoneType
alias rte_pmu_pmc_read = fn (Int32) -> ffi.c_ulong_long
struct anonomous_record_1319(Copyable & Movable):
	var tqe_next : UnsafePointer[rte_pmu_event_group]

	var tqe_prev : UnsafePointer[UnsafePointer[rte_pmu_event_group]]

struct rte_pmu_event_group(Copyable & Movable):
	# # Node: PlaceHolder()
	# {"id":"0x367b2430","inner":[{"id":"0x367b2410","inner":[{"id":"0x367b2350","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/pmu/rte_pmu.h","isMacroArgExpansion":true,"line":55,"offset":1222,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/pmu/rte_pmu.h","isMacroArgExpansion":true,"line":55,"offset":1222,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/pmu/rte_pmu.h","isMacroArgExpansion":true,"line":55,"offset":1222,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/pmu/rte_pmu.h","isMacroArgExpansion":true,"line":55,"offset":1222,"tokLen":19},"spellingLoc":{"col":29,"file":"dpdk/build/rte_build_config.h","includedFrom":{"file":"dpdk/config/rte_config.h"},"line":54,"offset":750,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":8,"file":"dpdk/lib/pmu/rte_pmu.h","line":55,"offset":1222,"tokLen":19},"spellingLoc":{"col":41,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/eal/include/generic/rte_atomic.h"},"line":121,"offset":3784,"tokLen":11}},"end":{"expansionLoc":{"col":8,"file":"dpdk/lib/pmu/rte_pmu.h","line":55,"offset":1222,"tokLen":19},"spellingLoc":{"col":54,"file":"dpdk/lib/eal/include/rte_common.h","includedFrom":{"file":"dpdk/lib/eal/include/generic/rte_atomic.h"},"line":121,"offset":3797,"tokLen":1}}}}


	var mmap_pages : InlineArray[UnsafePointer[perf_event_mmap_page], 8]

	var fds : InlineArray[Int32, 8]

	var next : anonomous_record_1319

	var enabled : Bool

struct rte_pmu_event(Copyable & Movable):
	pass
struct anonomous_record_1320(Copyable & Movable):
	var tqh_first : rte_pmu_event

	var tqh_last : UnsafePointer[UnsafePointer[rte_pmu_event]]

struct rte_pmu(Copyable & Movable):

	var event_groups : InlineArray[rte_pmu_event_group, 256]

	var num_group_events : UInt32

	var initialized : UInt32

	var name : UnsafePointer[Int8]

	var event_list : anonomous_record_1320

alias __rte_pmu_read_userpage = fn (UnsafePointer[perf_event_mmap_page]) -> ffi.c_ulong_long
alias __builtin_expect = fn (ffi.c_long, ffi.c_long) -> ffi.c_long
alias __rte_pmu_enable_group = fn (UnsafePointer[rte_pmu_event_group]) -> Int32
alias rte_pmu_init = fn (NoneType) -> Int32
alias rte_pmu_fini = fn (NoneType) -> NoneType
alias rte_pmu_add_event = fn (read UnsafePointer[Int8]) -> Int32
alias rte_pmu_read = fn (UInt32) -> ffi.c_ulong_long


alias rte_pmu_alloca = ExternalFunction['alloca', alloca]
alias rte_pmu_sched_setparam = ExternalFunction['sched_setparam', sched_setparam]
alias rte_pmu_sched_getparam = ExternalFunction['sched_getparam', sched_getparam]
alias rte_pmu_sched_setscheduler = ExternalFunction['sched_setscheduler', sched_setscheduler]
alias rte_pmu_sched_getscheduler = ExternalFunction['sched_getscheduler', sched_getscheduler]
alias rte_pmu_sched_yield = ExternalFunction['sched_yield', sched_yield]
alias rte_pmu_sched_get_priority_max = ExternalFunction['sched_get_priority_max', sched_get_priority_max]
alias rte_pmu_sched_get_priority_min = ExternalFunction['sched_get_priority_min', sched_get_priority_min]
alias rte_pmu_sched_rr_get_interval = ExternalFunction['sched_rr_get_interval', sched_rr_get_interval]
alias rte_pmu_rte_is_aligned = ExternalFunction['rte_is_aligned', rte_is_aligned]
alias rte_pmu_rte_str_to_size = ExternalFunction['rte_str_to_size', rte_str_to_size]
alias rte_pmu_rte_size_to_str = ExternalFunction['rte_size_to_str', rte_size_to_str]
alias rte_pmu_rte_exit = ExternalFunction['rte_exit', rte_exit]
alias rte_pmu_rte_atomic_thread_fence = ExternalFunction['rte_atomic_thread_fence', rte_atomic_thread_fence]
alias rte_pmu_rte_atomic16_cmpset = ExternalFunction['rte_atomic16_cmpset', rte_atomic16_cmpset]
alias rte_pmu_rte_atomic16_exchange = ExternalFunction['rte_atomic16_exchange', rte_atomic16_exchange]
alias rte_pmu_rte_atomic16_init = ExternalFunction['rte_atomic16_init', rte_atomic16_init]
alias rte_pmu_rte_atomic16_read = ExternalFunction['rte_atomic16_read', rte_atomic16_read]
alias rte_pmu_rte_atomic16_set = ExternalFunction['rte_atomic16_set', rte_atomic16_set]
alias rte_pmu_rte_atomic16_add = ExternalFunction['rte_atomic16_add', rte_atomic16_add]
alias rte_pmu_rte_atomic16_sub = ExternalFunction['rte_atomic16_sub', rte_atomic16_sub]
alias rte_pmu_rte_atomic16_inc = ExternalFunction['rte_atomic16_inc', rte_atomic16_inc]
alias rte_pmu_rte_atomic16_dec = ExternalFunction['rte_atomic16_dec', rte_atomic16_dec]
alias rte_pmu_rte_atomic16_add_return = ExternalFunction['rte_atomic16_add_return', rte_atomic16_add_return]
alias rte_pmu_rte_atomic16_sub_return = ExternalFunction['rte_atomic16_sub_return', rte_atomic16_sub_return]
alias rte_pmu_rte_atomic16_inc_and_test = ExternalFunction['rte_atomic16_inc_and_test', rte_atomic16_inc_and_test]
alias rte_pmu_rte_atomic16_dec_and_test = ExternalFunction['rte_atomic16_dec_and_test', rte_atomic16_dec_and_test]
alias rte_pmu_rte_atomic16_test_and_set = ExternalFunction['rte_atomic16_test_and_set', rte_atomic16_test_and_set]
alias rte_pmu_rte_atomic16_clear = ExternalFunction['rte_atomic16_clear', rte_atomic16_clear]
alias rte_pmu_rte_atomic32_cmpset = ExternalFunction['rte_atomic32_cmpset', rte_atomic32_cmpset]
alias rte_pmu_rte_atomic32_exchange = ExternalFunction['rte_atomic32_exchange', rte_atomic32_exchange]
alias rte_pmu_rte_atomic32_init = ExternalFunction['rte_atomic32_init', rte_atomic32_init]
alias rte_pmu_rte_atomic32_read = ExternalFunction['rte_atomic32_read', rte_atomic32_read]
alias rte_pmu_rte_atomic32_set = ExternalFunction['rte_atomic32_set', rte_atomic32_set]
alias rte_pmu_rte_atomic32_add = ExternalFunction['rte_atomic32_add', rte_atomic32_add]
alias rte_pmu_rte_atomic32_sub = ExternalFunction['rte_atomic32_sub', rte_atomic32_sub]
alias rte_pmu_rte_atomic32_inc = ExternalFunction['rte_atomic32_inc', rte_atomic32_inc]
alias rte_pmu_rte_atomic32_dec = ExternalFunction['rte_atomic32_dec', rte_atomic32_dec]
alias rte_pmu_rte_atomic32_add_return = ExternalFunction['rte_atomic32_add_return', rte_atomic32_add_return]
alias rte_pmu_rte_atomic32_sub_return = ExternalFunction['rte_atomic32_sub_return', rte_atomic32_sub_return]
alias rte_pmu_rte_atomic32_inc_and_test = ExternalFunction['rte_atomic32_inc_and_test', rte_atomic32_inc_and_test]
alias rte_pmu_rte_atomic32_dec_and_test = ExternalFunction['rte_atomic32_dec_and_test', rte_atomic32_dec_and_test]
alias rte_pmu_rte_atomic32_test_and_set = ExternalFunction['rte_atomic32_test_and_set', rte_atomic32_test_and_set]
alias rte_pmu_rte_atomic32_clear = ExternalFunction['rte_atomic32_clear', rte_atomic32_clear]
alias rte_pmu_rte_atomic64_cmpset = ExternalFunction['rte_atomic64_cmpset', rte_atomic64_cmpset]
alias rte_pmu_rte_atomic64_exchange = ExternalFunction['rte_atomic64_exchange', rte_atomic64_exchange]
alias rte_pmu_rte_atomic64_init = ExternalFunction['rte_atomic64_init', rte_atomic64_init]
alias rte_pmu_rte_atomic64_read = ExternalFunction['rte_atomic64_read', rte_atomic64_read]
alias rte_pmu_rte_atomic64_set = ExternalFunction['rte_atomic64_set', rte_atomic64_set]
alias rte_pmu_rte_atomic64_add = ExternalFunction['rte_atomic64_add', rte_atomic64_add]
alias rte_pmu_rte_atomic64_sub = ExternalFunction['rte_atomic64_sub', rte_atomic64_sub]
alias rte_pmu_rte_atomic64_inc = ExternalFunction['rte_atomic64_inc', rte_atomic64_inc]
alias rte_pmu_rte_atomic64_dec = ExternalFunction['rte_atomic64_dec', rte_atomic64_dec]
alias rte_pmu_rte_atomic64_add_return = ExternalFunction['rte_atomic64_add_return', rte_atomic64_add_return]
alias rte_pmu_rte_atomic64_sub_return = ExternalFunction['rte_atomic64_sub_return', rte_atomic64_sub_return]
alias rte_pmu_rte_atomic64_inc_and_test = ExternalFunction['rte_atomic64_inc_and_test', rte_atomic64_inc_and_test]
alias rte_pmu_rte_atomic64_dec_and_test = ExternalFunction['rte_atomic64_dec_and_test', rte_atomic64_dec_and_test]
alias rte_pmu_rte_atomic64_test_and_set = ExternalFunction['rte_atomic64_test_and_set', rte_atomic64_test_and_set]
alias rte_pmu_rte_atomic64_clear = ExternalFunction['rte_atomic64_clear', rte_atomic64_clear]
alias rte_pmu_remove = ExternalFunction['remove', remove]
alias rte_pmu_rename = ExternalFunction['rename', rename]
alias rte_pmu_renameat = ExternalFunction['renameat', renameat]
alias rte_pmu_fclose = ExternalFunction['fclose', fclose]
alias rte_pmu_tmpfile = ExternalFunction['tmpfile', tmpfile]
alias rte_pmu_tmpnam = ExternalFunction['tmpnam', tmpnam]
alias rte_pmu_tmpnam_r = ExternalFunction['tmpnam_r', tmpnam_r]
alias rte_pmu_tempnam = ExternalFunction['tempnam', tempnam]
alias rte_pmu_fflush = ExternalFunction['fflush', fflush]
alias rte_pmu_fflush_unlocked = ExternalFunction['fflush_unlocked', fflush_unlocked]
alias rte_pmu_fopen = ExternalFunction['fopen', fopen]
alias rte_pmu_freopen = ExternalFunction['freopen', freopen]
alias rte_pmu_fdopen = ExternalFunction['fdopen', fdopen]
alias rte_pmu_fmemopen = ExternalFunction['fmemopen', fmemopen]
alias rte_pmu_open_memstream = ExternalFunction['open_memstream', open_memstream]
alias rte_pmu_setbuf = ExternalFunction['setbuf', setbuf]
alias rte_pmu_setvbuf = ExternalFunction['setvbuf', setvbuf]
alias rte_pmu_setbuffer = ExternalFunction['setbuffer', setbuffer]
alias rte_pmu_setlinebuf = ExternalFunction['setlinebuf', setlinebuf]
alias rte_pmu_fprintf = ExternalFunction['fprintf', fprintf]
alias rte_pmu_printf = ExternalFunction['printf', printf]
alias rte_pmu_sprintf = ExternalFunction['sprintf', sprintf]
alias rte_pmu_vfprintf = ExternalFunction['vfprintf', vfprintf]
alias rte_pmu_vprintf = ExternalFunction['vprintf', vprintf]
alias rte_pmu_vsprintf = ExternalFunction['vsprintf', vsprintf]
alias rte_pmu_snprintf = ExternalFunction['snprintf', snprintf]
alias rte_pmu_vsnprintf = ExternalFunction['vsnprintf', vsnprintf]
alias rte_pmu_vdprintf = ExternalFunction['vdprintf', vdprintf]
alias rte_pmu_dprintf = ExternalFunction['dprintf', dprintf]
alias rte_pmu_fscanf = ExternalFunction['fscanf', fscanf]
alias rte_pmu_scanf = ExternalFunction['scanf', scanf]
alias rte_pmu_sscanf = ExternalFunction['sscanf', sscanf]
alias rte_pmu_vfscanf = ExternalFunction['vfscanf', vfscanf]
alias rte_pmu_vscanf = ExternalFunction['vscanf', vscanf]
alias rte_pmu_vsscanf = ExternalFunction['vsscanf', vsscanf]
alias rte_pmu_fgetc = ExternalFunction['fgetc', fgetc]
alias rte_pmu_getc = ExternalFunction['getc', getc]
alias rte_pmu_getchar = ExternalFunction['getchar', getchar]
alias rte_pmu_getc_unlocked = ExternalFunction['getc_unlocked', getc_unlocked]
alias rte_pmu_getchar_unlocked = ExternalFunction['getchar_unlocked', getchar_unlocked]
alias rte_pmu_fgetc_unlocked = ExternalFunction['fgetc_unlocked', fgetc_unlocked]
alias rte_pmu_fputc = ExternalFunction['fputc', fputc]
alias rte_pmu_putc = ExternalFunction['putc', putc]
alias rte_pmu_putchar = ExternalFunction['putchar', putchar]
alias rte_pmu_fputc_unlocked = ExternalFunction['fputc_unlocked', fputc_unlocked]
alias rte_pmu_putc_unlocked = ExternalFunction['putc_unlocked', putc_unlocked]
alias rte_pmu_putchar_unlocked = ExternalFunction['putchar_unlocked', putchar_unlocked]
alias rte_pmu_getw = ExternalFunction['getw', getw]
alias rte_pmu_putw = ExternalFunction['putw', putw]
alias rte_pmu_fgets = ExternalFunction['fgets', fgets]
alias rte_pmu_getdelim = ExternalFunction['getdelim', getdelim]
alias rte_pmu_getline = ExternalFunction['getline', getline]
alias rte_pmu_fputs = ExternalFunction['fputs', fputs]
alias rte_pmu_puts = ExternalFunction['puts', puts]
alias rte_pmu_ungetc = ExternalFunction['ungetc', ungetc]
alias rte_pmu_fread = ExternalFunction['fread', fread]
alias rte_pmu_fwrite = ExternalFunction['fwrite', fwrite]
alias rte_pmu_fread_unlocked = ExternalFunction['fread_unlocked', fread_unlocked]
alias rte_pmu_fwrite_unlocked = ExternalFunction['fwrite_unlocked', fwrite_unlocked]
alias rte_pmu_fseek = ExternalFunction['fseek', fseek]
alias rte_pmu_ftell = ExternalFunction['ftell', ftell]
alias rte_pmu_rewind = ExternalFunction['rewind', rewind]
alias rte_pmu_fseeko = ExternalFunction['fseeko', fseeko]
alias rte_pmu_ftello = ExternalFunction['ftello', ftello]
alias rte_pmu_fgetpos = ExternalFunction['fgetpos', fgetpos]
alias rte_pmu_fsetpos = ExternalFunction['fsetpos', fsetpos]
alias rte_pmu_clearerr = ExternalFunction['clearerr', clearerr]
alias rte_pmu_feof = ExternalFunction['feof', feof]
alias rte_pmu_ferror = ExternalFunction['ferror', ferror]
alias rte_pmu_clearerr_unlocked = ExternalFunction['clearerr_unlocked', clearerr_unlocked]
alias rte_pmu_feof_unlocked = ExternalFunction['feof_unlocked', feof_unlocked]
alias rte_pmu_ferror_unlocked = ExternalFunction['ferror_unlocked', ferror_unlocked]
alias rte_pmu_perror = ExternalFunction['perror', perror]
alias rte_pmu_fileno = ExternalFunction['fileno', fileno]
alias rte_pmu_fileno_unlocked = ExternalFunction['fileno_unlocked', fileno_unlocked]
alias rte_pmu_pclose = ExternalFunction['pclose', pclose]
alias rte_pmu_popen = ExternalFunction['popen', popen]
alias rte_pmu_ctermid = ExternalFunction['ctermid', ctermid]
alias rte_pmu_flockfile = ExternalFunction['flockfile', flockfile]
alias rte_pmu_ftrylockfile = ExternalFunction['ftrylockfile', ftrylockfile]
alias rte_pmu_funlockfile = ExternalFunction['funlockfile', funlockfile]
alias rte_pmu_clock = ExternalFunction['clock', clock]
alias rte_pmu_time = ExternalFunction['time', time]
alias rte_pmu_difftime = ExternalFunction['difftime', difftime]
alias rte_pmu_mktime = ExternalFunction['mktime', mktime]
alias rte_pmu_strftime = ExternalFunction['strftime', strftime]
alias rte_pmu_strftime_l = ExternalFunction['strftime_l', strftime_l]
alias rte_pmu_gmtime = ExternalFunction['gmtime', gmtime]
alias rte_pmu_localtime = ExternalFunction['localtime', localtime]
alias rte_pmu_gmtime_r = ExternalFunction['gmtime_r', gmtime_r]
alias rte_pmu_localtime_r = ExternalFunction['localtime_r', localtime_r]
alias rte_pmu_asctime = ExternalFunction['asctime', asctime]
alias rte_pmu_ctime = ExternalFunction['ctime', ctime]
alias rte_pmu_asctime_r = ExternalFunction['asctime_r', asctime_r]
alias rte_pmu_ctime_r = ExternalFunction['ctime_r', ctime_r]
alias rte_pmu_tzset = ExternalFunction['tzset', tzset]
alias rte_pmu_timegm = ExternalFunction['timegm', timegm]
alias rte_pmu_timelocal = ExternalFunction['timelocal', timelocal]
alias rte_pmu_dysize = ExternalFunction['dysize', dysize]
alias rte_pmu_nanosleep = ExternalFunction['nanosleep', nanosleep]
alias rte_pmu_clock_getres = ExternalFunction['clock_getres', clock_getres]
alias rte_pmu_clock_gettime = ExternalFunction['clock_gettime', clock_gettime]
alias rte_pmu_clock_settime = ExternalFunction['clock_settime', clock_settime]
alias rte_pmu_clock_nanosleep = ExternalFunction['clock_nanosleep', clock_nanosleep]
alias rte_pmu_clock_getcpuclockid = ExternalFunction['clock_getcpuclockid', clock_getcpuclockid]
alias rte_pmu_timer_create = ExternalFunction['timer_create', timer_create]
alias rte_pmu_timer_delete = ExternalFunction['timer_delete', timer_delete]
alias rte_pmu_timer_settime = ExternalFunction['timer_settime', timer_settime]
alias rte_pmu_timer_gettime = ExternalFunction['timer_gettime', timer_gettime]
alias rte_pmu_timer_getoverrun = ExternalFunction['timer_getoverrun', timer_getoverrun]
alias rte_pmu_timespec_get = ExternalFunction['timespec_get', timespec_get]
alias rte_pmu_memcpy = ExternalFunction['memcpy', memcpy]
alias rte_pmu_memmove = ExternalFunction['memmove', memmove]
alias rte_pmu_memccpy = ExternalFunction['memccpy', memccpy]
alias rte_pmu_memset = ExternalFunction['memset', memset]
alias rte_pmu_memcmp = ExternalFunction['memcmp', memcmp]
alias rte_pmu_memchr = ExternalFunction['memchr', memchr]
alias rte_pmu_strcpy = ExternalFunction['strcpy', strcpy]
alias rte_pmu_strncpy = ExternalFunction['strncpy', strncpy]
alias rte_pmu_strcat = ExternalFunction['strcat', strcat]
alias rte_pmu_strncat = ExternalFunction['strncat', strncat]
alias rte_pmu_strcmp = ExternalFunction['strcmp', strcmp]
alias rte_pmu_strncmp = ExternalFunction['strncmp', strncmp]
alias rte_pmu_strcoll = ExternalFunction['strcoll', strcoll]
alias rte_pmu_strxfrm = ExternalFunction['strxfrm', strxfrm]
alias rte_pmu_strcoll_l = ExternalFunction['strcoll_l', strcoll_l]
alias rte_pmu_strxfrm_l = ExternalFunction['strxfrm_l', strxfrm_l]
alias rte_pmu_strdup = ExternalFunction['strdup', strdup]
alias rte_pmu_strndup = ExternalFunction['strndup', strndup]
alias rte_pmu_strchr = ExternalFunction['strchr', strchr]
alias rte_pmu_strrchr = ExternalFunction['strrchr', strrchr]
alias rte_pmu_strcspn = ExternalFunction['strcspn', strcspn]
alias rte_pmu_strspn = ExternalFunction['strspn', strspn]
alias rte_pmu_strpbrk = ExternalFunction['strpbrk', strpbrk]
alias rte_pmu_strstr = ExternalFunction['strstr', strstr]
alias rte_pmu_strtok = ExternalFunction['strtok', strtok]
alias rte_pmu_strtok_r = ExternalFunction['strtok_r', strtok_r]
alias rte_pmu_strlen = ExternalFunction['strlen', strlen]
alias rte_pmu_strnlen = ExternalFunction['strnlen', strnlen]
alias rte_pmu_strerror = ExternalFunction['strerror', strerror]
alias rte_pmu_strerror_r = ExternalFunction['strerror_r', strerror_r]
alias rte_pmu_strerror_l = ExternalFunction['strerror_l', strerror_l]
alias rte_pmu_bcmp = ExternalFunction['bcmp', bcmp]
alias rte_pmu_bcopy = ExternalFunction['bcopy', bcopy]
alias rte_pmu_bzero = ExternalFunction['bzero', bzero]
alias rte_pmu_index = ExternalFunction['index', index]
alias rte_pmu_rindex = ExternalFunction['rindex', rindex]
alias rte_pmu_ffs = ExternalFunction['ffs', ffs]
alias rte_pmu_ffsl = ExternalFunction['ffsl', ffsl]
alias rte_pmu_ffsll = ExternalFunction['ffsll', ffsll]
alias rte_pmu_strcasecmp = ExternalFunction['strcasecmp', strcasecmp]
alias rte_pmu_strncasecmp = ExternalFunction['strncasecmp', strncasecmp]
alias rte_pmu_strcasecmp_l = ExternalFunction['strcasecmp_l', strcasecmp_l]
alias rte_pmu_strncasecmp_l = ExternalFunction['strncasecmp_l', strncasecmp_l]
alias rte_pmu_explicit_bzero = ExternalFunction['explicit_bzero', explicit_bzero]
alias rte_pmu_strsep = ExternalFunction['strsep', strsep]
alias rte_pmu_strsignal = ExternalFunction['strsignal', strsignal]
alias rte_pmu_stpcpy = ExternalFunction['stpcpy', stpcpy]
alias rte_pmu_stpncpy = ExternalFunction['stpncpy', stpncpy]
alias rte_pmu_rte_uuid_is_null = ExternalFunction['rte_uuid_is_null', rte_uuid_is_null]
alias rte_pmu_rte_uuid_copy = ExternalFunction['rte_uuid_copy', rte_uuid_copy]
alias rte_pmu_rte_uuid_compare = ExternalFunction['rte_uuid_compare', rte_uuid_compare]
alias rte_pmu_rte_uuid_parse = ExternalFunction['rte_uuid_parse', rte_uuid_parse]
alias rte_pmu_rte_uuid_unparse = ExternalFunction['rte_uuid_unparse', rte_uuid_unparse]
alias rte_pmu_rte_eal_process_type = ExternalFunction['rte_eal_process_type', rte_eal_process_type]
alias rte_pmu_rte_eal_iopl_init = ExternalFunction['rte_eal_iopl_init', rte_eal_iopl_init]
alias rte_pmu_rte_eal_init = ExternalFunction['rte_eal_init', rte_eal_init]
alias rte_pmu_rte_eal_cleanup = ExternalFunction['rte_eal_cleanup', rte_eal_cleanup]
alias rte_pmu_rte_eal_primary_proc_alive = ExternalFunction['rte_eal_primary_proc_alive', rte_eal_primary_proc_alive]
alias rte_pmu_rte_mp_disable = ExternalFunction['rte_mp_disable', rte_mp_disable]
alias rte_pmu_rte_mp_action_register = ExternalFunction['rte_mp_action_register', rte_mp_action_register]
alias rte_pmu_rte_mp_action_unregister = ExternalFunction['rte_mp_action_unregister', rte_mp_action_unregister]
alias rte_pmu_rte_mp_sendmsg = ExternalFunction['rte_mp_sendmsg', rte_mp_sendmsg]
alias rte_pmu_rte_mp_request_sync = ExternalFunction['rte_mp_request_sync', rte_mp_request_sync]
alias rte_pmu_rte_mp_request_async = ExternalFunction['rte_mp_request_async', rte_mp_request_async]
alias rte_pmu_rte_set_application_usage_hook = ExternalFunction['rte_set_application_usage_hook', rte_set_application_usage_hook]
alias rte_pmu_rte_eal_has_hugepages = ExternalFunction['rte_eal_has_hugepages', rte_eal_has_hugepages]
alias rte_pmu_rte_eal_has_pci = ExternalFunction['rte_eal_has_pci', rte_eal_has_pci]
alias rte_pmu_rte_eal_create_uio_dev = ExternalFunction['rte_eal_create_uio_dev', rte_eal_create_uio_dev]
alias rte_pmu_rte_eal_vfio_intr_mode = ExternalFunction['rte_eal_vfio_intr_mode', rte_eal_vfio_intr_mode]
alias rte_pmu_rte_eal_vfio_get_vf_token = ExternalFunction['rte_eal_vfio_get_vf_token', rte_eal_vfio_get_vf_token]
alias rte_pmu_rte_sys_gettid = ExternalFunction['rte_sys_gettid', rte_sys_gettid]
alias rte_pmu_rte_gettid = ExternalFunction['rte_gettid', rte_gettid]
alias rte_pmu_rte_eal_get_baseaddr = ExternalFunction['rte_eal_get_baseaddr', rte_eal_get_baseaddr]
alias rte_pmu_rte_eal_iova_mode = ExternalFunction['rte_eal_iova_mode', rte_eal_iova_mode]
alias rte_pmu_rte_eal_mbuf_user_pool_ops = ExternalFunction['rte_eal_mbuf_user_pool_ops', rte_eal_mbuf_user_pool_ops]
alias rte_pmu_rte_eal_get_runtime_dir = ExternalFunction['rte_eal_get_runtime_dir', rte_eal_get_runtime_dir]
alias rte_pmu_rte_eal_parse_coremask = ExternalFunction['rte_eal_parse_coremask', rte_eal_parse_coremask]
alias rte_pmu_rte_eal_remote_launch = ExternalFunction['rte_eal_remote_launch', rte_eal_remote_launch]
alias rte_pmu_rte_eal_mp_remote_launch = ExternalFunction['rte_eal_mp_remote_launch', rte_eal_mp_remote_launch]
alias rte_pmu_rte_eal_get_lcore_state = ExternalFunction['rte_eal_get_lcore_state', rte_eal_get_lcore_state]
alias rte_pmu_rte_eal_wait_lcore = ExternalFunction['rte_eal_wait_lcore', rte_eal_wait_lcore]
alias rte_pmu_rte_eal_mp_wait_lcore = ExternalFunction['rte_eal_mp_wait_lcore', rte_eal_mp_wait_lcore]
alias rte_pmu_rte_thread_create = ExternalFunction['rte_thread_create', rte_thread_create]
alias rte_pmu_rte_thread_create_control = ExternalFunction['rte_thread_create_control', rte_thread_create_control]
alias rte_pmu_rte_thread_create_internal_control = ExternalFunction['rte_thread_create_internal_control', rte_thread_create_internal_control]
alias rte_pmu_rte_thread_join = ExternalFunction['rte_thread_join', rte_thread_join]
alias rte_pmu_rte_thread_detach = ExternalFunction['rte_thread_detach', rte_thread_detach]
alias rte_pmu_rte_thread_self = ExternalFunction['rte_thread_self', rte_thread_self]
alias rte_pmu_rte_thread_set_name = ExternalFunction['rte_thread_set_name', rte_thread_set_name]
alias rte_pmu_rte_thread_set_prefixed_name = ExternalFunction['rte_thread_set_prefixed_name', rte_thread_set_prefixed_name]
alias rte_pmu_rte_thread_equal = ExternalFunction['rte_thread_equal', rte_thread_equal]
alias rte_pmu_rte_thread_attr_init = ExternalFunction['rte_thread_attr_init', rte_thread_attr_init]
alias rte_pmu_rte_thread_attr_set_priority = ExternalFunction['rte_thread_attr_set_priority', rte_thread_attr_set_priority]
alias rte_pmu_rte_thread_get_priority = ExternalFunction['rte_thread_get_priority', rte_thread_get_priority]
alias rte_pmu_rte_thread_set_priority = ExternalFunction['rte_thread_set_priority', rte_thread_set_priority]
alias rte_pmu_rte_thread_key_create = ExternalFunction['rte_thread_key_create', rte_thread_key_create]
alias rte_pmu_rte_thread_key_delete = ExternalFunction['rte_thread_key_delete', rte_thread_key_delete]
alias rte_pmu_rte_thread_value_set = ExternalFunction['rte_thread_value_set', rte_thread_value_set]
alias rte_pmu_rte_thread_value_get = ExternalFunction['rte_thread_value_get', rte_thread_value_get]
alias rte_pmu_rte_eal_lcore_role = ExternalFunction['rte_eal_lcore_role', rte_eal_lcore_role]
alias rte_pmu_rte_lcore_has_role = ExternalFunction['rte_lcore_has_role', rte_lcore_has_role]
alias rte_pmu_rte_lcore_id = ExternalFunction['rte_lcore_id', rte_lcore_id]
alias rte_pmu_rte_get_main_lcore = ExternalFunction['rte_get_main_lcore', rte_get_main_lcore]
alias rte_pmu_rte_lcore_count = ExternalFunction['rte_lcore_count', rte_lcore_count]
alias rte_pmu_rte_lcore_index = ExternalFunction['rte_lcore_index', rte_lcore_index]
alias rte_pmu_rte_socket_id = ExternalFunction['rte_socket_id', rte_socket_id]
alias rte_pmu_rte_socket_count = ExternalFunction['rte_socket_count', rte_socket_count]
alias rte_pmu_rte_socket_id_by_idx = ExternalFunction['rte_socket_id_by_idx', rte_socket_id_by_idx]
alias rte_pmu_rte_lcore_to_socket_id = ExternalFunction['rte_lcore_to_socket_id', rte_lcore_to_socket_id]
alias rte_pmu_rte_lcore_to_cpu_id = ExternalFunction['rte_lcore_to_cpu_id', rte_lcore_to_cpu_id]
alias rte_pmu_rte_lcore_is_enabled = ExternalFunction['rte_lcore_is_enabled', rte_lcore_is_enabled]
alias rte_pmu_rte_get_next_lcore = ExternalFunction['rte_get_next_lcore', rte_get_next_lcore]
alias rte_pmu_rte_lcore_callback_register = ExternalFunction['rte_lcore_callback_register', rte_lcore_callback_register]
alias rte_pmu_rte_lcore_callback_unregister = ExternalFunction['rte_lcore_callback_unregister', rte_lcore_callback_unregister]
alias rte_pmu_rte_lcore_iterate = ExternalFunction['rte_lcore_iterate', rte_lcore_iterate]
alias rte_pmu_rte_lcore_register_usage_cb = ExternalFunction['rte_lcore_register_usage_cb', rte_lcore_register_usage_cb]
alias rte_pmu_rte_lcore_dump = ExternalFunction['rte_lcore_dump', rte_lcore_dump]
alias rte_pmu_rte_thread_register = ExternalFunction['rte_thread_register', rte_thread_register]
alias rte_pmu_rte_thread_unregister = ExternalFunction['rte_thread_unregister', rte_thread_unregister]
alias rte_pmu_rte_pmu_pmc_read = ExternalFunction['rte_pmu_pmc_read', rte_pmu_pmc_read]
alias rte_pmu_rte_pmu_init = ExternalFunction['rte_pmu_init', rte_pmu_init]
alias rte_pmu_rte_pmu_fini = ExternalFunction['rte_pmu_fini', rte_pmu_fini]
alias rte_pmu_rte_pmu_add_event = ExternalFunction['rte_pmu_add_event', rte_pmu_add_event]
alias rte_pmu_rte_pmu_read = ExternalFunction['rte_pmu_read', rte_pmu_read]

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
struct rte_pmu(Copyable, Movable):
    var lib: DLHandle
    
    var alloca: rte_pmu_alloca.type
    var sched_setparam: rte_pmu_sched_setparam.type
    var sched_getparam: rte_pmu_sched_getparam.type
    var sched_setscheduler: rte_pmu_sched_setscheduler.type
    var sched_getscheduler: rte_pmu_sched_getscheduler.type
    var sched_yield: rte_pmu_sched_yield.type
    var sched_get_priority_max: rte_pmu_sched_get_priority_max.type
    var sched_get_priority_min: rte_pmu_sched_get_priority_min.type
    var sched_rr_get_interval: rte_pmu_sched_rr_get_interval.type
    var rte_is_aligned: rte_pmu_rte_is_aligned.type
    var rte_str_to_size: rte_pmu_rte_str_to_size.type
    var rte_size_to_str: rte_pmu_rte_size_to_str.type
    var rte_exit: rte_pmu_rte_exit.type
    var rte_atomic_thread_fence: rte_pmu_rte_atomic_thread_fence.type
    var rte_atomic16_cmpset: rte_pmu_rte_atomic16_cmpset.type
    var rte_atomic16_exchange: rte_pmu_rte_atomic16_exchange.type
    var rte_atomic16_init: rte_pmu_rte_atomic16_init.type
    var rte_atomic16_read: rte_pmu_rte_atomic16_read.type
    var rte_atomic16_set: rte_pmu_rte_atomic16_set.type
    var rte_atomic16_add: rte_pmu_rte_atomic16_add.type
    var rte_atomic16_sub: rte_pmu_rte_atomic16_sub.type
    var rte_atomic16_inc: rte_pmu_rte_atomic16_inc.type
    var rte_atomic16_dec: rte_pmu_rte_atomic16_dec.type
    var rte_atomic16_add_return: rte_pmu_rte_atomic16_add_return.type
    var rte_atomic16_sub_return: rte_pmu_rte_atomic16_sub_return.type
    var rte_atomic16_inc_and_test: rte_pmu_rte_atomic16_inc_and_test.type
    var rte_atomic16_dec_and_test: rte_pmu_rte_atomic16_dec_and_test.type
    var rte_atomic16_test_and_set: rte_pmu_rte_atomic16_test_and_set.type
    var rte_atomic16_clear: rte_pmu_rte_atomic16_clear.type
    var rte_atomic32_cmpset: rte_pmu_rte_atomic32_cmpset.type
    var rte_atomic32_exchange: rte_pmu_rte_atomic32_exchange.type
    var rte_atomic32_init: rte_pmu_rte_atomic32_init.type
    var rte_atomic32_read: rte_pmu_rte_atomic32_read.type
    var rte_atomic32_set: rte_pmu_rte_atomic32_set.type
    var rte_atomic32_add: rte_pmu_rte_atomic32_add.type
    var rte_atomic32_sub: rte_pmu_rte_atomic32_sub.type
    var rte_atomic32_inc: rte_pmu_rte_atomic32_inc.type
    var rte_atomic32_dec: rte_pmu_rte_atomic32_dec.type
    var rte_atomic32_add_return: rte_pmu_rte_atomic32_add_return.type
    var rte_atomic32_sub_return: rte_pmu_rte_atomic32_sub_return.type
    var rte_atomic32_inc_and_test: rte_pmu_rte_atomic32_inc_and_test.type
    var rte_atomic32_dec_and_test: rte_pmu_rte_atomic32_dec_and_test.type
    var rte_atomic32_test_and_set: rte_pmu_rte_atomic32_test_and_set.type
    var rte_atomic32_clear: rte_pmu_rte_atomic32_clear.type
    var rte_atomic64_cmpset: rte_pmu_rte_atomic64_cmpset.type
    var rte_atomic64_exchange: rte_pmu_rte_atomic64_exchange.type
    var rte_atomic64_init: rte_pmu_rte_atomic64_init.type
    var rte_atomic64_read: rte_pmu_rte_atomic64_read.type
    var rte_atomic64_set: rte_pmu_rte_atomic64_set.type
    var rte_atomic64_add: rte_pmu_rte_atomic64_add.type
    var rte_atomic64_sub: rte_pmu_rte_atomic64_sub.type
    var rte_atomic64_inc: rte_pmu_rte_atomic64_inc.type
    var rte_atomic64_dec: rte_pmu_rte_atomic64_dec.type
    var rte_atomic64_add_return: rte_pmu_rte_atomic64_add_return.type
    var rte_atomic64_sub_return: rte_pmu_rte_atomic64_sub_return.type
    var rte_atomic64_inc_and_test: rte_pmu_rte_atomic64_inc_and_test.type
    var rte_atomic64_dec_and_test: rte_pmu_rte_atomic64_dec_and_test.type
    var rte_atomic64_test_and_set: rte_pmu_rte_atomic64_test_and_set.type
    var rte_atomic64_clear: rte_pmu_rte_atomic64_clear.type
    var remove: rte_pmu_remove.type
    var rename: rte_pmu_rename.type
    var renameat: rte_pmu_renameat.type
    var fclose: rte_pmu_fclose.type
    var tmpfile: rte_pmu_tmpfile.type
    var tmpnam: rte_pmu_tmpnam.type
    var tmpnam_r: rte_pmu_tmpnam_r.type
    var tempnam: rte_pmu_tempnam.type
    var fflush: rte_pmu_fflush.type
    var fflush_unlocked: rte_pmu_fflush_unlocked.type
    var fopen: rte_pmu_fopen.type
    var freopen: rte_pmu_freopen.type
    var fdopen: rte_pmu_fdopen.type
    var fmemopen: rte_pmu_fmemopen.type
    var open_memstream: rte_pmu_open_memstream.type
    var setbuf: rte_pmu_setbuf.type
    var setvbuf: rte_pmu_setvbuf.type
    var setbuffer: rte_pmu_setbuffer.type
    var setlinebuf: rte_pmu_setlinebuf.type
    var fprintf: rte_pmu_fprintf.type
    var printf: rte_pmu_printf.type
    var sprintf: rte_pmu_sprintf.type
    var vfprintf: rte_pmu_vfprintf.type
    var vprintf: rte_pmu_vprintf.type
    var vsprintf: rte_pmu_vsprintf.type
    var snprintf: rte_pmu_snprintf.type
    var vsnprintf: rte_pmu_vsnprintf.type
    var vdprintf: rte_pmu_vdprintf.type
    var dprintf: rte_pmu_dprintf.type
    var fscanf: rte_pmu_fscanf.type
    var scanf: rte_pmu_scanf.type
    var sscanf: rte_pmu_sscanf.type
    var vfscanf: rte_pmu_vfscanf.type
    var vscanf: rte_pmu_vscanf.type
    var vsscanf: rte_pmu_vsscanf.type
    var fgetc: rte_pmu_fgetc.type
    var getc: rte_pmu_getc.type
    var getchar: rte_pmu_getchar.type
    var getc_unlocked: rte_pmu_getc_unlocked.type
    var getchar_unlocked: rte_pmu_getchar_unlocked.type
    var fgetc_unlocked: rte_pmu_fgetc_unlocked.type
    var fputc: rte_pmu_fputc.type
    var putc: rte_pmu_putc.type
    var putchar: rte_pmu_putchar.type
    var fputc_unlocked: rte_pmu_fputc_unlocked.type
    var putc_unlocked: rte_pmu_putc_unlocked.type
    var putchar_unlocked: rte_pmu_putchar_unlocked.type
    var getw: rte_pmu_getw.type
    var putw: rte_pmu_putw.type
    var fgets: rte_pmu_fgets.type
    var getdelim: rte_pmu_getdelim.type
    var getline: rte_pmu_getline.type
    var fputs: rte_pmu_fputs.type
    var puts: rte_pmu_puts.type
    var ungetc: rte_pmu_ungetc.type
    var fread: rte_pmu_fread.type
    var fwrite: rte_pmu_fwrite.type
    var fread_unlocked: rte_pmu_fread_unlocked.type
    var fwrite_unlocked: rte_pmu_fwrite_unlocked.type
    var fseek: rte_pmu_fseek.type
    var ftell: rte_pmu_ftell.type
    var rewind: rte_pmu_rewind.type
    var fseeko: rte_pmu_fseeko.type
    var ftello: rte_pmu_ftello.type
    var fgetpos: rte_pmu_fgetpos.type
    var fsetpos: rte_pmu_fsetpos.type
    var clearerr: rte_pmu_clearerr.type
    var feof: rte_pmu_feof.type
    var ferror: rte_pmu_ferror.type
    var clearerr_unlocked: rte_pmu_clearerr_unlocked.type
    var feof_unlocked: rte_pmu_feof_unlocked.type
    var ferror_unlocked: rte_pmu_ferror_unlocked.type
    var perror: rte_pmu_perror.type
    var fileno: rte_pmu_fileno.type
    var fileno_unlocked: rte_pmu_fileno_unlocked.type
    var pclose: rte_pmu_pclose.type
    var popen: rte_pmu_popen.type
    var ctermid: rte_pmu_ctermid.type
    var flockfile: rte_pmu_flockfile.type
    var ftrylockfile: rte_pmu_ftrylockfile.type
    var funlockfile: rte_pmu_funlockfile.type
    var clock: rte_pmu_clock.type
    var time: rte_pmu_time.type
    var difftime: rte_pmu_difftime.type
    var mktime: rte_pmu_mktime.type
    var strftime: rte_pmu_strftime.type
    var strftime_l: rte_pmu_strftime_l.type
    var gmtime: rte_pmu_gmtime.type
    var localtime: rte_pmu_localtime.type
    var gmtime_r: rte_pmu_gmtime_r.type
    var localtime_r: rte_pmu_localtime_r.type
    var asctime: rte_pmu_asctime.type
    var ctime: rte_pmu_ctime.type
    var asctime_r: rte_pmu_asctime_r.type
    var ctime_r: rte_pmu_ctime_r.type
    var tzset: rte_pmu_tzset.type
    var timegm: rte_pmu_timegm.type
    var timelocal: rte_pmu_timelocal.type
    var dysize: rte_pmu_dysize.type
    var nanosleep: rte_pmu_nanosleep.type
    var clock_getres: rte_pmu_clock_getres.type
    var clock_gettime: rte_pmu_clock_gettime.type
    var clock_settime: rte_pmu_clock_settime.type
    var clock_nanosleep: rte_pmu_clock_nanosleep.type
    var clock_getcpuclockid: rte_pmu_clock_getcpuclockid.type
    var timer_create: rte_pmu_timer_create.type
    var timer_delete: rte_pmu_timer_delete.type
    var timer_settime: rte_pmu_timer_settime.type
    var timer_gettime: rte_pmu_timer_gettime.type
    var timer_getoverrun: rte_pmu_timer_getoverrun.type
    var timespec_get: rte_pmu_timespec_get.type
    var memcpy: rte_pmu_memcpy.type
    var memmove: rte_pmu_memmove.type
    var memccpy: rte_pmu_memccpy.type
    var memset: rte_pmu_memset.type
    var memcmp: rte_pmu_memcmp.type
    var memchr: rte_pmu_memchr.type
    var strcpy: rte_pmu_strcpy.type
    var strncpy: rte_pmu_strncpy.type
    var strcat: rte_pmu_strcat.type
    var strncat: rte_pmu_strncat.type
    var strcmp: rte_pmu_strcmp.type
    var strncmp: rte_pmu_strncmp.type
    var strcoll: rte_pmu_strcoll.type
    var strxfrm: rte_pmu_strxfrm.type
    var strcoll_l: rte_pmu_strcoll_l.type
    var strxfrm_l: rte_pmu_strxfrm_l.type
    var strdup: rte_pmu_strdup.type
    var strndup: rte_pmu_strndup.type
    var strchr: rte_pmu_strchr.type
    var strrchr: rte_pmu_strrchr.type
    var strcspn: rte_pmu_strcspn.type
    var strspn: rte_pmu_strspn.type
    var strpbrk: rte_pmu_strpbrk.type
    var strstr: rte_pmu_strstr.type
    var strtok: rte_pmu_strtok.type
    var strtok_r: rte_pmu_strtok_r.type
    var strlen: rte_pmu_strlen.type
    var strnlen: rte_pmu_strnlen.type
    var strerror: rte_pmu_strerror.type
    var strerror_r: rte_pmu_strerror_r.type
    var strerror_l: rte_pmu_strerror_l.type
    var bcmp: rte_pmu_bcmp.type
    var bcopy: rte_pmu_bcopy.type
    var bzero: rte_pmu_bzero.type
    var index: rte_pmu_index.type
    var rindex: rte_pmu_rindex.type
    var ffs: rte_pmu_ffs.type
    var ffsl: rte_pmu_ffsl.type
    var ffsll: rte_pmu_ffsll.type
    var strcasecmp: rte_pmu_strcasecmp.type
    var strncasecmp: rte_pmu_strncasecmp.type
    var strcasecmp_l: rte_pmu_strcasecmp_l.type
    var strncasecmp_l: rte_pmu_strncasecmp_l.type
    var explicit_bzero: rte_pmu_explicit_bzero.type
    var strsep: rte_pmu_strsep.type
    var strsignal: rte_pmu_strsignal.type
    var stpcpy: rte_pmu_stpcpy.type
    var stpncpy: rte_pmu_stpncpy.type
    var rte_uuid_is_null: rte_pmu_rte_uuid_is_null.type
    var rte_uuid_copy: rte_pmu_rte_uuid_copy.type
    var rte_uuid_compare: rte_pmu_rte_uuid_compare.type
    var rte_uuid_parse: rte_pmu_rte_uuid_parse.type
    var rte_uuid_unparse: rte_pmu_rte_uuid_unparse.type
    var rte_eal_process_type: rte_pmu_rte_eal_process_type.type
    var rte_eal_iopl_init: rte_pmu_rte_eal_iopl_init.type
    var rte_eal_init: rte_pmu_rte_eal_init.type
    var rte_eal_cleanup: rte_pmu_rte_eal_cleanup.type
    var rte_eal_primary_proc_alive: rte_pmu_rte_eal_primary_proc_alive.type
    var rte_mp_disable: rte_pmu_rte_mp_disable.type
    var rte_mp_action_register: rte_pmu_rte_mp_action_register.type
    var rte_mp_action_unregister: rte_pmu_rte_mp_action_unregister.type
    var rte_mp_sendmsg: rte_pmu_rte_mp_sendmsg.type
    var rte_mp_request_sync: rte_pmu_rte_mp_request_sync.type
    var rte_mp_request_async: rte_pmu_rte_mp_request_async.type
    var rte_set_application_usage_hook: rte_pmu_rte_set_application_usage_hook.type
    var rte_eal_has_hugepages: rte_pmu_rte_eal_has_hugepages.type
    var rte_eal_has_pci: rte_pmu_rte_eal_has_pci.type
    var rte_eal_create_uio_dev: rte_pmu_rte_eal_create_uio_dev.type
    var rte_eal_vfio_intr_mode: rte_pmu_rte_eal_vfio_intr_mode.type
    var rte_eal_vfio_get_vf_token: rte_pmu_rte_eal_vfio_get_vf_token.type
    var rte_sys_gettid: rte_pmu_rte_sys_gettid.type
    var rte_gettid: rte_pmu_rte_gettid.type
    var rte_eal_get_baseaddr: rte_pmu_rte_eal_get_baseaddr.type
    var rte_eal_iova_mode: rte_pmu_rte_eal_iova_mode.type
    var rte_eal_mbuf_user_pool_ops: rte_pmu_rte_eal_mbuf_user_pool_ops.type
    var rte_eal_get_runtime_dir: rte_pmu_rte_eal_get_runtime_dir.type
    var rte_eal_parse_coremask: rte_pmu_rte_eal_parse_coremask.type
    var rte_eal_remote_launch: rte_pmu_rte_eal_remote_launch.type
    var rte_eal_mp_remote_launch: rte_pmu_rte_eal_mp_remote_launch.type
    var rte_eal_get_lcore_state: rte_pmu_rte_eal_get_lcore_state.type
    var rte_eal_wait_lcore: rte_pmu_rte_eal_wait_lcore.type
    var rte_eal_mp_wait_lcore: rte_pmu_rte_eal_mp_wait_lcore.type
    var rte_thread_create: rte_pmu_rte_thread_create.type
    var rte_thread_create_control: rte_pmu_rte_thread_create_control.type
    var rte_thread_create_internal_control: rte_pmu_rte_thread_create_internal_control.type
    var rte_thread_join: rte_pmu_rte_thread_join.type
    var rte_thread_detach: rte_pmu_rte_thread_detach.type
    var rte_thread_self: rte_pmu_rte_thread_self.type
    var rte_thread_set_name: rte_pmu_rte_thread_set_name.type
    var rte_thread_set_prefixed_name: rte_pmu_rte_thread_set_prefixed_name.type
    var rte_thread_equal: rte_pmu_rte_thread_equal.type
    var rte_thread_attr_init: rte_pmu_rte_thread_attr_init.type
    var rte_thread_attr_set_priority: rte_pmu_rte_thread_attr_set_priority.type
    var rte_thread_get_priority: rte_pmu_rte_thread_get_priority.type
    var rte_thread_set_priority: rte_pmu_rte_thread_set_priority.type
    var rte_thread_key_create: rte_pmu_rte_thread_key_create.type
    var rte_thread_key_delete: rte_pmu_rte_thread_key_delete.type
    var rte_thread_value_set: rte_pmu_rte_thread_value_set.type
    var rte_thread_value_get: rte_pmu_rte_thread_value_get.type
    var rte_eal_lcore_role: rte_pmu_rte_eal_lcore_role.type
    var rte_lcore_has_role: rte_pmu_rte_lcore_has_role.type
    var rte_lcore_id: rte_pmu_rte_lcore_id.type
    var rte_get_main_lcore: rte_pmu_rte_get_main_lcore.type
    var rte_lcore_count: rte_pmu_rte_lcore_count.type
    var rte_lcore_index: rte_pmu_rte_lcore_index.type
    var rte_socket_id: rte_pmu_rte_socket_id.type
    var rte_socket_count: rte_pmu_rte_socket_count.type
    var rte_socket_id_by_idx: rte_pmu_rte_socket_id_by_idx.type
    var rte_lcore_to_socket_id: rte_pmu_rte_lcore_to_socket_id.type
    var rte_lcore_to_cpu_id: rte_pmu_rte_lcore_to_cpu_id.type
    var rte_lcore_is_enabled: rte_pmu_rte_lcore_is_enabled.type
    var rte_get_next_lcore: rte_pmu_rte_get_next_lcore.type
    var rte_lcore_callback_register: rte_pmu_rte_lcore_callback_register.type
    var rte_lcore_callback_unregister: rte_pmu_rte_lcore_callback_unregister.type
    var rte_lcore_iterate: rte_pmu_rte_lcore_iterate.type
    var rte_lcore_register_usage_cb: rte_pmu_rte_lcore_register_usage_cb.type
    var rte_lcore_dump: rte_pmu_rte_lcore_dump.type
    var rte_thread_register: rte_pmu_rte_thread_register.type
    var rte_thread_unregister: rte_pmu_rte_thread_unregister.type
    var rte_pmu_pmc_read: rte_pmu_rte_pmu_pmc_read.type
    var rte_pmu_init: rte_pmu_rte_pmu_init.type
    var rte_pmu_fini: rte_pmu_rte_pmu_fini.type
    var rte_pmu_add_event: rte_pmu_rte_pmu_add_event.type
    var rte_pmu_read: rte_pmu_rte_pmu_read.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_pmu.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_pmu from", 'librte_pmu.so', ":\n", e)
            )

    
        self.alloca = rte_pmu_alloca.load(self.lib)
        self.sched_setparam = rte_pmu_sched_setparam.load(self.lib)
        self.sched_getparam = rte_pmu_sched_getparam.load(self.lib)
        self.sched_setscheduler = rte_pmu_sched_setscheduler.load(self.lib)
        self.sched_getscheduler = rte_pmu_sched_getscheduler.load(self.lib)
        self.sched_yield = rte_pmu_sched_yield.load(self.lib)
        self.sched_get_priority_max = rte_pmu_sched_get_priority_max.load(self.lib)
        self.sched_get_priority_min = rte_pmu_sched_get_priority_min.load(self.lib)
        self.sched_rr_get_interval = rte_pmu_sched_rr_get_interval.load(self.lib)
        self.rte_is_aligned = rte_pmu_rte_is_aligned.load(self.lib)
        self.rte_str_to_size = rte_pmu_rte_str_to_size.load(self.lib)
        self.rte_size_to_str = rte_pmu_rte_size_to_str.load(self.lib)
        self.rte_exit = rte_pmu_rte_exit.load(self.lib)
        self.rte_atomic_thread_fence = rte_pmu_rte_atomic_thread_fence.load(self.lib)
        self.rte_atomic16_cmpset = rte_pmu_rte_atomic16_cmpset.load(self.lib)
        self.rte_atomic16_exchange = rte_pmu_rte_atomic16_exchange.load(self.lib)
        self.rte_atomic16_init = rte_pmu_rte_atomic16_init.load(self.lib)
        self.rte_atomic16_read = rte_pmu_rte_atomic16_read.load(self.lib)
        self.rte_atomic16_set = rte_pmu_rte_atomic16_set.load(self.lib)
        self.rte_atomic16_add = rte_pmu_rte_atomic16_add.load(self.lib)
        self.rte_atomic16_sub = rte_pmu_rte_atomic16_sub.load(self.lib)
        self.rte_atomic16_inc = rte_pmu_rte_atomic16_inc.load(self.lib)
        self.rte_atomic16_dec = rte_pmu_rte_atomic16_dec.load(self.lib)
        self.rte_atomic16_add_return = rte_pmu_rte_atomic16_add_return.load(self.lib)
        self.rte_atomic16_sub_return = rte_pmu_rte_atomic16_sub_return.load(self.lib)
        self.rte_atomic16_inc_and_test = rte_pmu_rte_atomic16_inc_and_test.load(self.lib)
        self.rte_atomic16_dec_and_test = rte_pmu_rte_atomic16_dec_and_test.load(self.lib)
        self.rte_atomic16_test_and_set = rte_pmu_rte_atomic16_test_and_set.load(self.lib)
        self.rte_atomic16_clear = rte_pmu_rte_atomic16_clear.load(self.lib)
        self.rte_atomic32_cmpset = rte_pmu_rte_atomic32_cmpset.load(self.lib)
        self.rte_atomic32_exchange = rte_pmu_rte_atomic32_exchange.load(self.lib)
        self.rte_atomic32_init = rte_pmu_rte_atomic32_init.load(self.lib)
        self.rte_atomic32_read = rte_pmu_rte_atomic32_read.load(self.lib)
        self.rte_atomic32_set = rte_pmu_rte_atomic32_set.load(self.lib)
        self.rte_atomic32_add = rte_pmu_rte_atomic32_add.load(self.lib)
        self.rte_atomic32_sub = rte_pmu_rte_atomic32_sub.load(self.lib)
        self.rte_atomic32_inc = rte_pmu_rte_atomic32_inc.load(self.lib)
        self.rte_atomic32_dec = rte_pmu_rte_atomic32_dec.load(self.lib)
        self.rte_atomic32_add_return = rte_pmu_rte_atomic32_add_return.load(self.lib)
        self.rte_atomic32_sub_return = rte_pmu_rte_atomic32_sub_return.load(self.lib)
        self.rte_atomic32_inc_and_test = rte_pmu_rte_atomic32_inc_and_test.load(self.lib)
        self.rte_atomic32_dec_and_test = rte_pmu_rte_atomic32_dec_and_test.load(self.lib)
        self.rte_atomic32_test_and_set = rte_pmu_rte_atomic32_test_and_set.load(self.lib)
        self.rte_atomic32_clear = rte_pmu_rte_atomic32_clear.load(self.lib)
        self.rte_atomic64_cmpset = rte_pmu_rte_atomic64_cmpset.load(self.lib)
        self.rte_atomic64_exchange = rte_pmu_rte_atomic64_exchange.load(self.lib)
        self.rte_atomic64_init = rte_pmu_rte_atomic64_init.load(self.lib)
        self.rte_atomic64_read = rte_pmu_rte_atomic64_read.load(self.lib)
        self.rte_atomic64_set = rte_pmu_rte_atomic64_set.load(self.lib)
        self.rte_atomic64_add = rte_pmu_rte_atomic64_add.load(self.lib)
        self.rte_atomic64_sub = rte_pmu_rte_atomic64_sub.load(self.lib)
        self.rte_atomic64_inc = rte_pmu_rte_atomic64_inc.load(self.lib)
        self.rte_atomic64_dec = rte_pmu_rte_atomic64_dec.load(self.lib)
        self.rte_atomic64_add_return = rte_pmu_rte_atomic64_add_return.load(self.lib)
        self.rte_atomic64_sub_return = rte_pmu_rte_atomic64_sub_return.load(self.lib)
        self.rte_atomic64_inc_and_test = rte_pmu_rte_atomic64_inc_and_test.load(self.lib)
        self.rte_atomic64_dec_and_test = rte_pmu_rte_atomic64_dec_and_test.load(self.lib)
        self.rte_atomic64_test_and_set = rte_pmu_rte_atomic64_test_and_set.load(self.lib)
        self.rte_atomic64_clear = rte_pmu_rte_atomic64_clear.load(self.lib)
        self.remove = rte_pmu_remove.load(self.lib)
        self.rename = rte_pmu_rename.load(self.lib)
        self.renameat = rte_pmu_renameat.load(self.lib)
        self.fclose = rte_pmu_fclose.load(self.lib)
        self.tmpfile = rte_pmu_tmpfile.load(self.lib)
        self.tmpnam = rte_pmu_tmpnam.load(self.lib)
        self.tmpnam_r = rte_pmu_tmpnam_r.load(self.lib)
        self.tempnam = rte_pmu_tempnam.load(self.lib)
        self.fflush = rte_pmu_fflush.load(self.lib)
        self.fflush_unlocked = rte_pmu_fflush_unlocked.load(self.lib)
        self.fopen = rte_pmu_fopen.load(self.lib)
        self.freopen = rte_pmu_freopen.load(self.lib)
        self.fdopen = rte_pmu_fdopen.load(self.lib)
        self.fmemopen = rte_pmu_fmemopen.load(self.lib)
        self.open_memstream = rte_pmu_open_memstream.load(self.lib)
        self.setbuf = rte_pmu_setbuf.load(self.lib)
        self.setvbuf = rte_pmu_setvbuf.load(self.lib)
        self.setbuffer = rte_pmu_setbuffer.load(self.lib)
        self.setlinebuf = rte_pmu_setlinebuf.load(self.lib)
        self.fprintf = rte_pmu_fprintf.load(self.lib)
        self.printf = rte_pmu_printf.load(self.lib)
        self.sprintf = rte_pmu_sprintf.load(self.lib)
        self.vfprintf = rte_pmu_vfprintf.load(self.lib)
        self.vprintf = rte_pmu_vprintf.load(self.lib)
        self.vsprintf = rte_pmu_vsprintf.load(self.lib)
        self.snprintf = rte_pmu_snprintf.load(self.lib)
        self.vsnprintf = rte_pmu_vsnprintf.load(self.lib)
        self.vdprintf = rte_pmu_vdprintf.load(self.lib)
        self.dprintf = rte_pmu_dprintf.load(self.lib)
        self.fscanf = rte_pmu_fscanf.load(self.lib)
        self.scanf = rte_pmu_scanf.load(self.lib)
        self.sscanf = rte_pmu_sscanf.load(self.lib)
        self.vfscanf = rte_pmu_vfscanf.load(self.lib)
        self.vscanf = rte_pmu_vscanf.load(self.lib)
        self.vsscanf = rte_pmu_vsscanf.load(self.lib)
        self.fgetc = rte_pmu_fgetc.load(self.lib)
        self.getc = rte_pmu_getc.load(self.lib)
        self.getchar = rte_pmu_getchar.load(self.lib)
        self.getc_unlocked = rte_pmu_getc_unlocked.load(self.lib)
        self.getchar_unlocked = rte_pmu_getchar_unlocked.load(self.lib)
        self.fgetc_unlocked = rte_pmu_fgetc_unlocked.load(self.lib)
        self.fputc = rte_pmu_fputc.load(self.lib)
        self.putc = rte_pmu_putc.load(self.lib)
        self.putchar = rte_pmu_putchar.load(self.lib)
        self.fputc_unlocked = rte_pmu_fputc_unlocked.load(self.lib)
        self.putc_unlocked = rte_pmu_putc_unlocked.load(self.lib)
        self.putchar_unlocked = rte_pmu_putchar_unlocked.load(self.lib)
        self.getw = rte_pmu_getw.load(self.lib)
        self.putw = rte_pmu_putw.load(self.lib)
        self.fgets = rte_pmu_fgets.load(self.lib)
        self.getdelim = rte_pmu_getdelim.load(self.lib)
        self.getline = rte_pmu_getline.load(self.lib)
        self.fputs = rte_pmu_fputs.load(self.lib)
        self.puts = rte_pmu_puts.load(self.lib)
        self.ungetc = rte_pmu_ungetc.load(self.lib)
        self.fread = rte_pmu_fread.load(self.lib)
        self.fwrite = rte_pmu_fwrite.load(self.lib)
        self.fread_unlocked = rte_pmu_fread_unlocked.load(self.lib)
        self.fwrite_unlocked = rte_pmu_fwrite_unlocked.load(self.lib)
        self.fseek = rte_pmu_fseek.load(self.lib)
        self.ftell = rte_pmu_ftell.load(self.lib)
        self.rewind = rte_pmu_rewind.load(self.lib)
        self.fseeko = rte_pmu_fseeko.load(self.lib)
        self.ftello = rte_pmu_ftello.load(self.lib)
        self.fgetpos = rte_pmu_fgetpos.load(self.lib)
        self.fsetpos = rte_pmu_fsetpos.load(self.lib)
        self.clearerr = rte_pmu_clearerr.load(self.lib)
        self.feof = rte_pmu_feof.load(self.lib)
        self.ferror = rte_pmu_ferror.load(self.lib)
        self.clearerr_unlocked = rte_pmu_clearerr_unlocked.load(self.lib)
        self.feof_unlocked = rte_pmu_feof_unlocked.load(self.lib)
        self.ferror_unlocked = rte_pmu_ferror_unlocked.load(self.lib)
        self.perror = rte_pmu_perror.load(self.lib)
        self.fileno = rte_pmu_fileno.load(self.lib)
        self.fileno_unlocked = rte_pmu_fileno_unlocked.load(self.lib)
        self.pclose = rte_pmu_pclose.load(self.lib)
        self.popen = rte_pmu_popen.load(self.lib)
        self.ctermid = rte_pmu_ctermid.load(self.lib)
        self.flockfile = rte_pmu_flockfile.load(self.lib)
        self.ftrylockfile = rte_pmu_ftrylockfile.load(self.lib)
        self.funlockfile = rte_pmu_funlockfile.load(self.lib)
        self.clock = rte_pmu_clock.load(self.lib)
        self.time = rte_pmu_time.load(self.lib)
        self.difftime = rte_pmu_difftime.load(self.lib)
        self.mktime = rte_pmu_mktime.load(self.lib)
        self.strftime = rte_pmu_strftime.load(self.lib)
        self.strftime_l = rte_pmu_strftime_l.load(self.lib)
        self.gmtime = rte_pmu_gmtime.load(self.lib)
        self.localtime = rte_pmu_localtime.load(self.lib)
        self.gmtime_r = rte_pmu_gmtime_r.load(self.lib)
        self.localtime_r = rte_pmu_localtime_r.load(self.lib)
        self.asctime = rte_pmu_asctime.load(self.lib)
        self.ctime = rte_pmu_ctime.load(self.lib)
        self.asctime_r = rte_pmu_asctime_r.load(self.lib)
        self.ctime_r = rte_pmu_ctime_r.load(self.lib)
        self.tzset = rte_pmu_tzset.load(self.lib)
        self.timegm = rte_pmu_timegm.load(self.lib)
        self.timelocal = rte_pmu_timelocal.load(self.lib)
        self.dysize = rte_pmu_dysize.load(self.lib)
        self.nanosleep = rte_pmu_nanosleep.load(self.lib)
        self.clock_getres = rte_pmu_clock_getres.load(self.lib)
        self.clock_gettime = rte_pmu_clock_gettime.load(self.lib)
        self.clock_settime = rte_pmu_clock_settime.load(self.lib)
        self.clock_nanosleep = rte_pmu_clock_nanosleep.load(self.lib)
        self.clock_getcpuclockid = rte_pmu_clock_getcpuclockid.load(self.lib)
        self.timer_create = rte_pmu_timer_create.load(self.lib)
        self.timer_delete = rte_pmu_timer_delete.load(self.lib)
        self.timer_settime = rte_pmu_timer_settime.load(self.lib)
        self.timer_gettime = rte_pmu_timer_gettime.load(self.lib)
        self.timer_getoverrun = rte_pmu_timer_getoverrun.load(self.lib)
        self.timespec_get = rte_pmu_timespec_get.load(self.lib)
        self.memcpy = rte_pmu_memcpy.load(self.lib)
        self.memmove = rte_pmu_memmove.load(self.lib)
        self.memccpy = rte_pmu_memccpy.load(self.lib)
        self.memset = rte_pmu_memset.load(self.lib)
        self.memcmp = rte_pmu_memcmp.load(self.lib)
        self.memchr = rte_pmu_memchr.load(self.lib)
        self.strcpy = rte_pmu_strcpy.load(self.lib)
        self.strncpy = rte_pmu_strncpy.load(self.lib)
        self.strcat = rte_pmu_strcat.load(self.lib)
        self.strncat = rte_pmu_strncat.load(self.lib)
        self.strcmp = rte_pmu_strcmp.load(self.lib)
        self.strncmp = rte_pmu_strncmp.load(self.lib)
        self.strcoll = rte_pmu_strcoll.load(self.lib)
        self.strxfrm = rte_pmu_strxfrm.load(self.lib)
        self.strcoll_l = rte_pmu_strcoll_l.load(self.lib)
        self.strxfrm_l = rte_pmu_strxfrm_l.load(self.lib)
        self.strdup = rte_pmu_strdup.load(self.lib)
        self.strndup = rte_pmu_strndup.load(self.lib)
        self.strchr = rte_pmu_strchr.load(self.lib)
        self.strrchr = rte_pmu_strrchr.load(self.lib)
        self.strcspn = rte_pmu_strcspn.load(self.lib)
        self.strspn = rte_pmu_strspn.load(self.lib)
        self.strpbrk = rte_pmu_strpbrk.load(self.lib)
        self.strstr = rte_pmu_strstr.load(self.lib)
        self.strtok = rte_pmu_strtok.load(self.lib)
        self.strtok_r = rte_pmu_strtok_r.load(self.lib)
        self.strlen = rte_pmu_strlen.load(self.lib)
        self.strnlen = rte_pmu_strnlen.load(self.lib)
        self.strerror = rte_pmu_strerror.load(self.lib)
        self.strerror_r = rte_pmu_strerror_r.load(self.lib)
        self.strerror_l = rte_pmu_strerror_l.load(self.lib)
        self.bcmp = rte_pmu_bcmp.load(self.lib)
        self.bcopy = rte_pmu_bcopy.load(self.lib)
        self.bzero = rte_pmu_bzero.load(self.lib)
        self.index = rte_pmu_index.load(self.lib)
        self.rindex = rte_pmu_rindex.load(self.lib)
        self.ffs = rte_pmu_ffs.load(self.lib)
        self.ffsl = rte_pmu_ffsl.load(self.lib)
        self.ffsll = rte_pmu_ffsll.load(self.lib)
        self.strcasecmp = rte_pmu_strcasecmp.load(self.lib)
        self.strncasecmp = rte_pmu_strncasecmp.load(self.lib)
        self.strcasecmp_l = rte_pmu_strcasecmp_l.load(self.lib)
        self.strncasecmp_l = rte_pmu_strncasecmp_l.load(self.lib)
        self.explicit_bzero = rte_pmu_explicit_bzero.load(self.lib)
        self.strsep = rte_pmu_strsep.load(self.lib)
        self.strsignal = rte_pmu_strsignal.load(self.lib)
        self.stpcpy = rte_pmu_stpcpy.load(self.lib)
        self.stpncpy = rte_pmu_stpncpy.load(self.lib)
        self.rte_uuid_is_null = rte_pmu_rte_uuid_is_null.load(self.lib)
        self.rte_uuid_copy = rte_pmu_rte_uuid_copy.load(self.lib)
        self.rte_uuid_compare = rte_pmu_rte_uuid_compare.load(self.lib)
        self.rte_uuid_parse = rte_pmu_rte_uuid_parse.load(self.lib)
        self.rte_uuid_unparse = rte_pmu_rte_uuid_unparse.load(self.lib)
        self.rte_eal_process_type = rte_pmu_rte_eal_process_type.load(self.lib)
        self.rte_eal_iopl_init = rte_pmu_rte_eal_iopl_init.load(self.lib)
        self.rte_eal_init = rte_pmu_rte_eal_init.load(self.lib)
        self.rte_eal_cleanup = rte_pmu_rte_eal_cleanup.load(self.lib)
        self.rte_eal_primary_proc_alive = rte_pmu_rte_eal_primary_proc_alive.load(self.lib)
        self.rte_mp_disable = rte_pmu_rte_mp_disable.load(self.lib)
        self.rte_mp_action_register = rte_pmu_rte_mp_action_register.load(self.lib)
        self.rte_mp_action_unregister = rte_pmu_rte_mp_action_unregister.load(self.lib)
        self.rte_mp_sendmsg = rte_pmu_rte_mp_sendmsg.load(self.lib)
        self.rte_mp_request_sync = rte_pmu_rte_mp_request_sync.load(self.lib)
        self.rte_mp_request_async = rte_pmu_rte_mp_request_async.load(self.lib)
        self.rte_set_application_usage_hook = rte_pmu_rte_set_application_usage_hook.load(self.lib)
        self.rte_eal_has_hugepages = rte_pmu_rte_eal_has_hugepages.load(self.lib)
        self.rte_eal_has_pci = rte_pmu_rte_eal_has_pci.load(self.lib)
        self.rte_eal_create_uio_dev = rte_pmu_rte_eal_create_uio_dev.load(self.lib)
        self.rte_eal_vfio_intr_mode = rte_pmu_rte_eal_vfio_intr_mode.load(self.lib)
        self.rte_eal_vfio_get_vf_token = rte_pmu_rte_eal_vfio_get_vf_token.load(self.lib)
        self.rte_sys_gettid = rte_pmu_rte_sys_gettid.load(self.lib)
        self.rte_gettid = rte_pmu_rte_gettid.load(self.lib)
        self.rte_eal_get_baseaddr = rte_pmu_rte_eal_get_baseaddr.load(self.lib)
        self.rte_eal_iova_mode = rte_pmu_rte_eal_iova_mode.load(self.lib)
        self.rte_eal_mbuf_user_pool_ops = rte_pmu_rte_eal_mbuf_user_pool_ops.load(self.lib)
        self.rte_eal_get_runtime_dir = rte_pmu_rte_eal_get_runtime_dir.load(self.lib)
        self.rte_eal_parse_coremask = rte_pmu_rte_eal_parse_coremask.load(self.lib)
        self.rte_eal_remote_launch = rte_pmu_rte_eal_remote_launch.load(self.lib)
        self.rte_eal_mp_remote_launch = rte_pmu_rte_eal_mp_remote_launch.load(self.lib)
        self.rte_eal_get_lcore_state = rte_pmu_rte_eal_get_lcore_state.load(self.lib)
        self.rte_eal_wait_lcore = rte_pmu_rte_eal_wait_lcore.load(self.lib)
        self.rte_eal_mp_wait_lcore = rte_pmu_rte_eal_mp_wait_lcore.load(self.lib)
        self.rte_thread_create = rte_pmu_rte_thread_create.load(self.lib)
        self.rte_thread_create_control = rte_pmu_rte_thread_create_control.load(self.lib)
        self.rte_thread_create_internal_control = rte_pmu_rte_thread_create_internal_control.load(self.lib)
        self.rte_thread_join = rte_pmu_rte_thread_join.load(self.lib)
        self.rte_thread_detach = rte_pmu_rte_thread_detach.load(self.lib)
        self.rte_thread_self = rte_pmu_rte_thread_self.load(self.lib)
        self.rte_thread_set_name = rte_pmu_rte_thread_set_name.load(self.lib)
        self.rte_thread_set_prefixed_name = rte_pmu_rte_thread_set_prefixed_name.load(self.lib)
        self.rte_thread_equal = rte_pmu_rte_thread_equal.load(self.lib)
        self.rte_thread_attr_init = rte_pmu_rte_thread_attr_init.load(self.lib)
        self.rte_thread_attr_set_priority = rte_pmu_rte_thread_attr_set_priority.load(self.lib)
        self.rte_thread_get_priority = rte_pmu_rte_thread_get_priority.load(self.lib)
        self.rte_thread_set_priority = rte_pmu_rte_thread_set_priority.load(self.lib)
        self.rte_thread_key_create = rte_pmu_rte_thread_key_create.load(self.lib)
        self.rte_thread_key_delete = rte_pmu_rte_thread_key_delete.load(self.lib)
        self.rte_thread_value_set = rte_pmu_rte_thread_value_set.load(self.lib)
        self.rte_thread_value_get = rte_pmu_rte_thread_value_get.load(self.lib)
        self.rte_eal_lcore_role = rte_pmu_rte_eal_lcore_role.load(self.lib)
        self.rte_lcore_has_role = rte_pmu_rte_lcore_has_role.load(self.lib)
        self.rte_lcore_id = rte_pmu_rte_lcore_id.load(self.lib)
        self.rte_get_main_lcore = rte_pmu_rte_get_main_lcore.load(self.lib)
        self.rte_lcore_count = rte_pmu_rte_lcore_count.load(self.lib)
        self.rte_lcore_index = rte_pmu_rte_lcore_index.load(self.lib)
        self.rte_socket_id = rte_pmu_rte_socket_id.load(self.lib)
        self.rte_socket_count = rte_pmu_rte_socket_count.load(self.lib)
        self.rte_socket_id_by_idx = rte_pmu_rte_socket_id_by_idx.load(self.lib)
        self.rte_lcore_to_socket_id = rte_pmu_rte_lcore_to_socket_id.load(self.lib)
        self.rte_lcore_to_cpu_id = rte_pmu_rte_lcore_to_cpu_id.load(self.lib)
        self.rte_lcore_is_enabled = rte_pmu_rte_lcore_is_enabled.load(self.lib)
        self.rte_get_next_lcore = rte_pmu_rte_get_next_lcore.load(self.lib)
        self.rte_lcore_callback_register = rte_pmu_rte_lcore_callback_register.load(self.lib)
        self.rte_lcore_callback_unregister = rte_pmu_rte_lcore_callback_unregister.load(self.lib)
        self.rte_lcore_iterate = rte_pmu_rte_lcore_iterate.load(self.lib)
        self.rte_lcore_register_usage_cb = rte_pmu_rte_lcore_register_usage_cb.load(self.lib)
        self.rte_lcore_dump = rte_pmu_rte_lcore_dump.load(self.lib)
        self.rte_thread_register = rte_pmu_rte_thread_register.load(self.lib)
        self.rte_thread_unregister = rte_pmu_rte_thread_unregister.load(self.lib)
        self.rte_pmu_pmc_read = rte_pmu_rte_pmu_pmc_read.load(self.lib)
        self.rte_pmu_init = rte_pmu_rte_pmu_init.load(self.lib)
        self.rte_pmu_fini = rte_pmu_rte_pmu_fini.load(self.lib)
        self.rte_pmu_add_event = rte_pmu_rte_pmu_add_event.load(self.lib)
        self.rte_pmu_read = rte_pmu_rte_pmu_read.load(self.lib)

