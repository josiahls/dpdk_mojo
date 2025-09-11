
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
struct anonomous_record_1(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

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
alias size_t = ffi.c_ulong
alias clock_t = __clock_t
alias time_t = __time_t
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

struct timespec(Copyable & Movable):
	var tv_sec : ffi.c_long

	var tv_nsec : ffi.c_long

alias clockid_t = __clockid_t
alias timer_t = __timer_t
struct itimerspec(Copyable & Movable):
	var it_interval : timespec

	var it_value : timespec

struct sigevent(Copyable & Movable):
	pass
alias pid_t = __pid_t
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
struct anonomous_record_2(Copyable & Movable):
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_2

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
	# {"id":"0x2836ece0","inner":[{"id":"0x2820a160","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"ConstantArrayType","size":16,"type":{"qualType":"unsigned char[16]"}}

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


alias rte_eal_clock = ExternalFunction['clock', clock]
alias rte_eal_time = ExternalFunction['time', time]
alias rte_eal_difftime = ExternalFunction['difftime', difftime]
alias rte_eal_mktime = ExternalFunction['mktime', mktime]
alias rte_eal_strftime = ExternalFunction['strftime', strftime]
alias rte_eal_strftime_l = ExternalFunction['strftime_l', strftime_l]
alias rte_eal_gmtime = ExternalFunction['gmtime', gmtime]
alias rte_eal_localtime = ExternalFunction['localtime', localtime]
alias rte_eal_gmtime_r = ExternalFunction['gmtime_r', gmtime_r]
alias rte_eal_localtime_r = ExternalFunction['localtime_r', localtime_r]
alias rte_eal_asctime = ExternalFunction['asctime', asctime]
alias rte_eal_ctime = ExternalFunction['ctime', ctime]
alias rte_eal_asctime_r = ExternalFunction['asctime_r', asctime_r]
alias rte_eal_ctime_r = ExternalFunction['ctime_r', ctime_r]
alias rte_eal_tzset = ExternalFunction['tzset', tzset]
alias rte_eal_timegm = ExternalFunction['timegm', timegm]
alias rte_eal_timelocal = ExternalFunction['timelocal', timelocal]
alias rte_eal_dysize = ExternalFunction['dysize', dysize]
alias rte_eal_nanosleep = ExternalFunction['nanosleep', nanosleep]
alias rte_eal_clock_getres = ExternalFunction['clock_getres', clock_getres]
alias rte_eal_clock_gettime = ExternalFunction['clock_gettime', clock_gettime]
alias rte_eal_clock_settime = ExternalFunction['clock_settime', clock_settime]
alias rte_eal_clock_nanosleep = ExternalFunction['clock_nanosleep', clock_nanosleep]
alias rte_eal_clock_getcpuclockid = ExternalFunction['clock_getcpuclockid', clock_getcpuclockid]
alias rte_eal_timer_create = ExternalFunction['timer_create', timer_create]
alias rte_eal_timer_delete = ExternalFunction['timer_delete', timer_delete]
alias rte_eal_timer_settime = ExternalFunction['timer_settime', timer_settime]
alias rte_eal_timer_gettime = ExternalFunction['timer_gettime', timer_gettime]
alias rte_eal_timer_getoverrun = ExternalFunction['timer_getoverrun', timer_getoverrun]
alias rte_eal_timespec_get = ExternalFunction['timespec_get', timespec_get]
alias rte_eal_memcpy = ExternalFunction['memcpy', memcpy]
alias rte_eal_memmove = ExternalFunction['memmove', memmove]
alias rte_eal_memccpy = ExternalFunction['memccpy', memccpy]
alias rte_eal_memset = ExternalFunction['memset', memset]
alias rte_eal_memcmp = ExternalFunction['memcmp', memcmp]
alias rte_eal_memchr = ExternalFunction['memchr', memchr]
alias rte_eal_strcpy = ExternalFunction['strcpy', strcpy]
alias rte_eal_strncpy = ExternalFunction['strncpy', strncpy]
alias rte_eal_strcat = ExternalFunction['strcat', strcat]
alias rte_eal_strncat = ExternalFunction['strncat', strncat]
alias rte_eal_strcmp = ExternalFunction['strcmp', strcmp]
alias rte_eal_strncmp = ExternalFunction['strncmp', strncmp]
alias rte_eal_strcoll = ExternalFunction['strcoll', strcoll]
alias rte_eal_strxfrm = ExternalFunction['strxfrm', strxfrm]
alias rte_eal_strcoll_l = ExternalFunction['strcoll_l', strcoll_l]
alias rte_eal_strxfrm_l = ExternalFunction['strxfrm_l', strxfrm_l]
alias rte_eal_strdup = ExternalFunction['strdup', strdup]
alias rte_eal_strndup = ExternalFunction['strndup', strndup]
alias rte_eal_strchr = ExternalFunction['strchr', strchr]
alias rte_eal_strrchr = ExternalFunction['strrchr', strrchr]
alias rte_eal_strcspn = ExternalFunction['strcspn', strcspn]
alias rte_eal_strspn = ExternalFunction['strspn', strspn]
alias rte_eal_strpbrk = ExternalFunction['strpbrk', strpbrk]
alias rte_eal_strstr = ExternalFunction['strstr', strstr]
alias rte_eal_strtok = ExternalFunction['strtok', strtok]
alias rte_eal_strtok_r = ExternalFunction['strtok_r', strtok_r]
alias rte_eal_strlen = ExternalFunction['strlen', strlen]
alias rte_eal_strnlen = ExternalFunction['strnlen', strnlen]
alias rte_eal_strerror = ExternalFunction['strerror', strerror]
alias rte_eal_strerror_r = ExternalFunction['strerror_r', strerror_r]
alias rte_eal_strerror_l = ExternalFunction['strerror_l', strerror_l]
alias rte_eal_bcmp = ExternalFunction['bcmp', bcmp]
alias rte_eal_bcopy = ExternalFunction['bcopy', bcopy]
alias rte_eal_bzero = ExternalFunction['bzero', bzero]
alias rte_eal_index = ExternalFunction['index', index]
alias rte_eal_rindex = ExternalFunction['rindex', rindex]
alias rte_eal_ffs = ExternalFunction['ffs', ffs]
alias rte_eal_ffsl = ExternalFunction['ffsl', ffsl]
alias rte_eal_ffsll = ExternalFunction['ffsll', ffsll]
alias rte_eal_strcasecmp = ExternalFunction['strcasecmp', strcasecmp]
alias rte_eal_strncasecmp = ExternalFunction['strncasecmp', strncasecmp]
alias rte_eal_strcasecmp_l = ExternalFunction['strcasecmp_l', strcasecmp_l]
alias rte_eal_strncasecmp_l = ExternalFunction['strncasecmp_l', strncasecmp_l]
alias rte_eal_explicit_bzero = ExternalFunction['explicit_bzero', explicit_bzero]
alias rte_eal_strsep = ExternalFunction['strsep', strsep]
alias rte_eal_strsignal = ExternalFunction['strsignal', strsignal]
alias rte_eal_stpcpy = ExternalFunction['stpcpy', stpcpy]
alias rte_eal_stpncpy = ExternalFunction['stpncpy', stpncpy]
alias rte_eal_rte_uuid_is_null = ExternalFunction['rte_uuid_is_null', rte_uuid_is_null]
alias rte_eal_rte_uuid_copy = ExternalFunction['rte_uuid_copy', rte_uuid_copy]
alias rte_eal_rte_uuid_compare = ExternalFunction['rte_uuid_compare', rte_uuid_compare]
alias rte_eal_rte_uuid_parse = ExternalFunction['rte_uuid_parse', rte_uuid_parse]
alias rte_eal_rte_uuid_unparse = ExternalFunction['rte_uuid_unparse', rte_uuid_unparse]
alias rte_eal_rte_eal_process_type = ExternalFunction['rte_eal_process_type', rte_eal_process_type]
alias rte_eal_rte_eal_iopl_init = ExternalFunction['rte_eal_iopl_init', rte_eal_iopl_init]
alias rte_eal_rte_eal_init = ExternalFunction['rte_eal_init', rte_eal_init]
alias rte_eal_rte_eal_cleanup = ExternalFunction['rte_eal_cleanup', rte_eal_cleanup]
alias rte_eal_rte_eal_primary_proc_alive = ExternalFunction['rte_eal_primary_proc_alive', rte_eal_primary_proc_alive]
alias rte_eal_rte_mp_disable = ExternalFunction['rte_mp_disable', rte_mp_disable]
alias rte_eal_rte_mp_action_register = ExternalFunction['rte_mp_action_register', rte_mp_action_register]
alias rte_eal_rte_mp_action_unregister = ExternalFunction['rte_mp_action_unregister', rte_mp_action_unregister]
alias rte_eal_rte_mp_sendmsg = ExternalFunction['rte_mp_sendmsg', rte_mp_sendmsg]
alias rte_eal_rte_mp_request_sync = ExternalFunction['rte_mp_request_sync', rte_mp_request_sync]
alias rte_eal_rte_mp_request_async = ExternalFunction['rte_mp_request_async', rte_mp_request_async]
alias rte_eal_rte_set_application_usage_hook = ExternalFunction['rte_set_application_usage_hook', rte_set_application_usage_hook]
alias rte_eal_rte_eal_has_hugepages = ExternalFunction['rte_eal_has_hugepages', rte_eal_has_hugepages]
alias rte_eal_rte_eal_has_pci = ExternalFunction['rte_eal_has_pci', rte_eal_has_pci]
alias rte_eal_rte_eal_create_uio_dev = ExternalFunction['rte_eal_create_uio_dev', rte_eal_create_uio_dev]
alias rte_eal_rte_eal_vfio_intr_mode = ExternalFunction['rte_eal_vfio_intr_mode', rte_eal_vfio_intr_mode]
alias rte_eal_rte_eal_vfio_get_vf_token = ExternalFunction['rte_eal_vfio_get_vf_token', rte_eal_vfio_get_vf_token]
alias rte_eal_rte_sys_gettid = ExternalFunction['rte_sys_gettid', rte_sys_gettid]
alias rte_eal_rte_gettid = ExternalFunction['rte_gettid', rte_gettid]
alias rte_eal_rte_eal_get_baseaddr = ExternalFunction['rte_eal_get_baseaddr', rte_eal_get_baseaddr]
alias rte_eal_rte_eal_iova_mode = ExternalFunction['rte_eal_iova_mode', rte_eal_iova_mode]
alias rte_eal_rte_eal_mbuf_user_pool_ops = ExternalFunction['rte_eal_mbuf_user_pool_ops', rte_eal_mbuf_user_pool_ops]
alias rte_eal_rte_eal_get_runtime_dir = ExternalFunction['rte_eal_get_runtime_dir', rte_eal_get_runtime_dir]
alias rte_eal_rte_eal_parse_coremask = ExternalFunction['rte_eal_parse_coremask', rte_eal_parse_coremask]

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
struct rte_eal(Copyable, Movable):
    var lib: DLHandle
    
    var clock: rte_eal_clock.type
    var time: rte_eal_time.type
    var difftime: rte_eal_difftime.type
    var mktime: rte_eal_mktime.type
    var strftime: rte_eal_strftime.type
    var strftime_l: rte_eal_strftime_l.type
    var gmtime: rte_eal_gmtime.type
    var localtime: rte_eal_localtime.type
    var gmtime_r: rte_eal_gmtime_r.type
    var localtime_r: rte_eal_localtime_r.type
    var asctime: rte_eal_asctime.type
    var ctime: rte_eal_ctime.type
    var asctime_r: rte_eal_asctime_r.type
    var ctime_r: rte_eal_ctime_r.type
    var tzset: rte_eal_tzset.type
    var timegm: rte_eal_timegm.type
    var timelocal: rte_eal_timelocal.type
    var dysize: rte_eal_dysize.type
    var nanosleep: rte_eal_nanosleep.type
    var clock_getres: rte_eal_clock_getres.type
    var clock_gettime: rte_eal_clock_gettime.type
    var clock_settime: rte_eal_clock_settime.type
    var clock_nanosleep: rte_eal_clock_nanosleep.type
    var clock_getcpuclockid: rte_eal_clock_getcpuclockid.type
    var timer_create: rte_eal_timer_create.type
    var timer_delete: rte_eal_timer_delete.type
    var timer_settime: rte_eal_timer_settime.type
    var timer_gettime: rte_eal_timer_gettime.type
    var timer_getoverrun: rte_eal_timer_getoverrun.type
    var timespec_get: rte_eal_timespec_get.type
    var memcpy: rte_eal_memcpy.type
    var memmove: rte_eal_memmove.type
    var memccpy: rte_eal_memccpy.type
    var memset: rte_eal_memset.type
    var memcmp: rte_eal_memcmp.type
    var memchr: rte_eal_memchr.type
    var strcpy: rte_eal_strcpy.type
    var strncpy: rte_eal_strncpy.type
    var strcat: rte_eal_strcat.type
    var strncat: rte_eal_strncat.type
    var strcmp: rte_eal_strcmp.type
    var strncmp: rte_eal_strncmp.type
    var strcoll: rte_eal_strcoll.type
    var strxfrm: rte_eal_strxfrm.type
    var strcoll_l: rte_eal_strcoll_l.type
    var strxfrm_l: rte_eal_strxfrm_l.type
    var strdup: rte_eal_strdup.type
    var strndup: rte_eal_strndup.type
    var strchr: rte_eal_strchr.type
    var strrchr: rte_eal_strrchr.type
    var strcspn: rte_eal_strcspn.type
    var strspn: rte_eal_strspn.type
    var strpbrk: rte_eal_strpbrk.type
    var strstr: rte_eal_strstr.type
    var strtok: rte_eal_strtok.type
    var strtok_r: rte_eal_strtok_r.type
    var strlen: rte_eal_strlen.type
    var strnlen: rte_eal_strnlen.type
    var strerror: rte_eal_strerror.type
    var strerror_r: rte_eal_strerror_r.type
    var strerror_l: rte_eal_strerror_l.type
    var bcmp: rte_eal_bcmp.type
    var bcopy: rte_eal_bcopy.type
    var bzero: rte_eal_bzero.type
    var index: rte_eal_index.type
    var rindex: rte_eal_rindex.type
    var ffs: rte_eal_ffs.type
    var ffsl: rte_eal_ffsl.type
    var ffsll: rte_eal_ffsll.type
    var strcasecmp: rte_eal_strcasecmp.type
    var strncasecmp: rte_eal_strncasecmp.type
    var strcasecmp_l: rte_eal_strcasecmp_l.type
    var strncasecmp_l: rte_eal_strncasecmp_l.type
    var explicit_bzero: rte_eal_explicit_bzero.type
    var strsep: rte_eal_strsep.type
    var strsignal: rte_eal_strsignal.type
    var stpcpy: rte_eal_stpcpy.type
    var stpncpy: rte_eal_stpncpy.type
    var rte_uuid_is_null: rte_eal_rte_uuid_is_null.type
    var rte_uuid_copy: rte_eal_rte_uuid_copy.type
    var rte_uuid_compare: rte_eal_rte_uuid_compare.type
    var rte_uuid_parse: rte_eal_rte_uuid_parse.type
    var rte_uuid_unparse: rte_eal_rte_uuid_unparse.type
    var rte_eal_process_type: rte_eal_rte_eal_process_type.type
    var rte_eal_iopl_init: rte_eal_rte_eal_iopl_init.type
    var rte_eal_init: rte_eal_rte_eal_init.type
    var rte_eal_cleanup: rte_eal_rte_eal_cleanup.type
    var rte_eal_primary_proc_alive: rte_eal_rte_eal_primary_proc_alive.type
    var rte_mp_disable: rte_eal_rte_mp_disable.type
    var rte_mp_action_register: rte_eal_rte_mp_action_register.type
    var rte_mp_action_unregister: rte_eal_rte_mp_action_unregister.type
    var rte_mp_sendmsg: rte_eal_rte_mp_sendmsg.type
    var rte_mp_request_sync: rte_eal_rte_mp_request_sync.type
    var rte_mp_request_async: rte_eal_rte_mp_request_async.type
    var rte_set_application_usage_hook: rte_eal_rte_set_application_usage_hook.type
    var rte_eal_has_hugepages: rte_eal_rte_eal_has_hugepages.type
    var rte_eal_has_pci: rte_eal_rte_eal_has_pci.type
    var rte_eal_create_uio_dev: rte_eal_rte_eal_create_uio_dev.type
    var rte_eal_vfio_intr_mode: rte_eal_rte_eal_vfio_intr_mode.type
    var rte_eal_vfio_get_vf_token: rte_eal_rte_eal_vfio_get_vf_token.type
    var rte_sys_gettid: rte_eal_rte_sys_gettid.type
    var rte_gettid: rte_eal_rte_gettid.type
    var rte_eal_get_baseaddr: rte_eal_rte_eal_get_baseaddr.type
    var rte_eal_iova_mode: rte_eal_rte_eal_iova_mode.type
    var rte_eal_mbuf_user_pool_ops: rte_eal_rte_eal_mbuf_user_pool_ops.type
    var rte_eal_get_runtime_dir: rte_eal_rte_eal_get_runtime_dir.type
    var rte_eal_parse_coremask: rte_eal_rte_eal_parse_coremask.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('librte_eal.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load rte_eal from", 'librte_eal.so', ":\n", e)
            )

    
        self.clock = rte_eal_clock.load(self.lib)
        self.time = rte_eal_time.load(self.lib)
        self.difftime = rte_eal_difftime.load(self.lib)
        self.mktime = rte_eal_mktime.load(self.lib)
        self.strftime = rte_eal_strftime.load(self.lib)
        self.strftime_l = rte_eal_strftime_l.load(self.lib)
        self.gmtime = rte_eal_gmtime.load(self.lib)
        self.localtime = rte_eal_localtime.load(self.lib)
        self.gmtime_r = rte_eal_gmtime_r.load(self.lib)
        self.localtime_r = rte_eal_localtime_r.load(self.lib)
        self.asctime = rte_eal_asctime.load(self.lib)
        self.ctime = rte_eal_ctime.load(self.lib)
        self.asctime_r = rte_eal_asctime_r.load(self.lib)
        self.ctime_r = rte_eal_ctime_r.load(self.lib)
        self.tzset = rte_eal_tzset.load(self.lib)
        self.timegm = rte_eal_timegm.load(self.lib)
        self.timelocal = rte_eal_timelocal.load(self.lib)
        self.dysize = rte_eal_dysize.load(self.lib)
        self.nanosleep = rte_eal_nanosleep.load(self.lib)
        self.clock_getres = rte_eal_clock_getres.load(self.lib)
        self.clock_gettime = rte_eal_clock_gettime.load(self.lib)
        self.clock_settime = rte_eal_clock_settime.load(self.lib)
        self.clock_nanosleep = rte_eal_clock_nanosleep.load(self.lib)
        self.clock_getcpuclockid = rte_eal_clock_getcpuclockid.load(self.lib)
        self.timer_create = rte_eal_timer_create.load(self.lib)
        self.timer_delete = rte_eal_timer_delete.load(self.lib)
        self.timer_settime = rte_eal_timer_settime.load(self.lib)
        self.timer_gettime = rte_eal_timer_gettime.load(self.lib)
        self.timer_getoverrun = rte_eal_timer_getoverrun.load(self.lib)
        self.timespec_get = rte_eal_timespec_get.load(self.lib)
        self.memcpy = rte_eal_memcpy.load(self.lib)
        self.memmove = rte_eal_memmove.load(self.lib)
        self.memccpy = rte_eal_memccpy.load(self.lib)
        self.memset = rte_eal_memset.load(self.lib)
        self.memcmp = rte_eal_memcmp.load(self.lib)
        self.memchr = rte_eal_memchr.load(self.lib)
        self.strcpy = rte_eal_strcpy.load(self.lib)
        self.strncpy = rte_eal_strncpy.load(self.lib)
        self.strcat = rte_eal_strcat.load(self.lib)
        self.strncat = rte_eal_strncat.load(self.lib)
        self.strcmp = rte_eal_strcmp.load(self.lib)
        self.strncmp = rte_eal_strncmp.load(self.lib)
        self.strcoll = rte_eal_strcoll.load(self.lib)
        self.strxfrm = rte_eal_strxfrm.load(self.lib)
        self.strcoll_l = rte_eal_strcoll_l.load(self.lib)
        self.strxfrm_l = rte_eal_strxfrm_l.load(self.lib)
        self.strdup = rte_eal_strdup.load(self.lib)
        self.strndup = rte_eal_strndup.load(self.lib)
        self.strchr = rte_eal_strchr.load(self.lib)
        self.strrchr = rte_eal_strrchr.load(self.lib)
        self.strcspn = rte_eal_strcspn.load(self.lib)
        self.strspn = rte_eal_strspn.load(self.lib)
        self.strpbrk = rte_eal_strpbrk.load(self.lib)
        self.strstr = rte_eal_strstr.load(self.lib)
        self.strtok = rte_eal_strtok.load(self.lib)
        self.strtok_r = rte_eal_strtok_r.load(self.lib)
        self.strlen = rte_eal_strlen.load(self.lib)
        self.strnlen = rte_eal_strnlen.load(self.lib)
        self.strerror = rte_eal_strerror.load(self.lib)
        self.strerror_r = rte_eal_strerror_r.load(self.lib)
        self.strerror_l = rte_eal_strerror_l.load(self.lib)
        self.bcmp = rte_eal_bcmp.load(self.lib)
        self.bcopy = rte_eal_bcopy.load(self.lib)
        self.bzero = rte_eal_bzero.load(self.lib)
        self.index = rte_eal_index.load(self.lib)
        self.rindex = rte_eal_rindex.load(self.lib)
        self.ffs = rte_eal_ffs.load(self.lib)
        self.ffsl = rte_eal_ffsl.load(self.lib)
        self.ffsll = rte_eal_ffsll.load(self.lib)
        self.strcasecmp = rte_eal_strcasecmp.load(self.lib)
        self.strncasecmp = rte_eal_strncasecmp.load(self.lib)
        self.strcasecmp_l = rte_eal_strcasecmp_l.load(self.lib)
        self.strncasecmp_l = rte_eal_strncasecmp_l.load(self.lib)
        self.explicit_bzero = rte_eal_explicit_bzero.load(self.lib)
        self.strsep = rte_eal_strsep.load(self.lib)
        self.strsignal = rte_eal_strsignal.load(self.lib)
        self.stpcpy = rte_eal_stpcpy.load(self.lib)
        self.stpncpy = rte_eal_stpncpy.load(self.lib)
        self.rte_uuid_is_null = rte_eal_rte_uuid_is_null.load(self.lib)
        self.rte_uuid_copy = rte_eal_rte_uuid_copy.load(self.lib)
        self.rte_uuid_compare = rte_eal_rte_uuid_compare.load(self.lib)
        self.rte_uuid_parse = rte_eal_rte_uuid_parse.load(self.lib)
        self.rte_uuid_unparse = rte_eal_rte_uuid_unparse.load(self.lib)
        self.rte_eal_process_type = rte_eal_rte_eal_process_type.load(self.lib)
        self.rte_eal_iopl_init = rte_eal_rte_eal_iopl_init.load(self.lib)
        self.rte_eal_init = rte_eal_rte_eal_init.load(self.lib)
        self.rte_eal_cleanup = rte_eal_rte_eal_cleanup.load(self.lib)
        self.rte_eal_primary_proc_alive = rte_eal_rte_eal_primary_proc_alive.load(self.lib)
        self.rte_mp_disable = rte_eal_rte_mp_disable.load(self.lib)
        self.rte_mp_action_register = rte_eal_rte_mp_action_register.load(self.lib)
        self.rte_mp_action_unregister = rte_eal_rte_mp_action_unregister.load(self.lib)
        self.rte_mp_sendmsg = rte_eal_rte_mp_sendmsg.load(self.lib)
        self.rte_mp_request_sync = rte_eal_rte_mp_request_sync.load(self.lib)
        self.rte_mp_request_async = rte_eal_rte_mp_request_async.load(self.lib)
        self.rte_set_application_usage_hook = rte_eal_rte_set_application_usage_hook.load(self.lib)
        self.rte_eal_has_hugepages = rte_eal_rte_eal_has_hugepages.load(self.lib)
        self.rte_eal_has_pci = rte_eal_rte_eal_has_pci.load(self.lib)
        self.rte_eal_create_uio_dev = rte_eal_rte_eal_create_uio_dev.load(self.lib)
        self.rte_eal_vfio_intr_mode = rte_eal_rte_eal_vfio_intr_mode.load(self.lib)
        self.rte_eal_vfio_get_vf_token = rte_eal_rte_eal_vfio_get_vf_token.load(self.lib)
        self.rte_sys_gettid = rte_eal_rte_sys_gettid.load(self.lib)
        self.rte_gettid = rte_eal_rte_gettid.load(self.lib)
        self.rte_eal_get_baseaddr = rte_eal_rte_eal_get_baseaddr.load(self.lib)
        self.rte_eal_iova_mode = rte_eal_rte_eal_iova_mode.load(self.lib)
        self.rte_eal_mbuf_user_pool_ops = rte_eal_rte_eal_mbuf_user_pool_ops.load(self.lib)
        self.rte_eal_get_runtime_dir = rte_eal_rte_eal_get_runtime_dir.load(self.lib)
        self.rte_eal_parse_coremask = rte_eal_rte_eal_parse_coremask.load(self.lib)

