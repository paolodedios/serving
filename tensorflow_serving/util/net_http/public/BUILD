# Description: shared files

package(default_visibility = [
    ":http_server_clients",
    "//tensorflow_serving:internal",
    "//tensorflow_serving/util/net_http:__subpackages__",
])

package_group(
    name = "http_server_clients",
    packages = [
        "//...",
        "//net/floo/flooefi/...",
        "//platforms/accel_ssw/common/lib/...",
        "//platforms/gsys/...",
        "//platforms/redfish/...",
        "//platforms/syshealth/shdc/...",
        "//security/crypta/commands/ecclesia/...",
        "//security/loas/l2/internal/service/notar/...",
        "//third_party/ebpf_transport_monitoring/...",
    ],
)

licenses(["notice"])

# C++ lib based on zlib for gzip support
cc_library(
    name = "shared_files",
    srcs = [
        "header_names.cc",
    ],
    hdrs = [
        "header_names.h",
        "response_code_enum.h",
    ],
)
