# Description: Tensorflow Serving hashmap servable.

load("//tensorflow_serving:serving.bzl", "serving_proto_library")

package(
    default_visibility = ["//tensorflow_serving:internal"],
    features = ["-layering_check"],
)

licenses(["notice"])

filegroup(
    name = "all_files",
    srcs = glob(
        ["**/*"],
        exclude = [
            "**/METADATA",
            "**/OWNERS",
            "g3doc/sitemap.md",
        ],
    ),
)

cc_library(
    name = "hashmap_source_adapter",
    srcs = ["hashmap_source_adapter.cc"],
    hdrs = ["hashmap_source_adapter.h"],
    visibility = ["//visibility:private"],
    deps = [
        ":hashmap_source_adapter_cc_proto",
        "//tensorflow_serving/core:simple_loader",
        "//tensorflow_serving/core:source_adapter",
        "//tensorflow_serving/core:storage_path",
        "@org_tensorflow//tensorflow/core:lib",
        "@org_tensorflow//tensorflow/core:tensorflow",
    ],
)

cc_test(
    name = "hashmap_source_adapter_test",
    size = "medium",
    srcs = ["hashmap_source_adapter_test.cc"],
    deps = [
        ":hashmap_source_adapter",
        ":hashmap_source_adapter_cc_proto",
        "//tensorflow_serving/core:loader",
        "//tensorflow_serving/core:servable_data",
        "//tensorflow_serving/core/test_util:test_main",
        "//tensorflow_serving/util:any_ptr",
        "@org_tensorflow//tensorflow/core:lib",
        "@org_tensorflow//tensorflow/core:test",
    ],
)

serving_proto_library(
    name = "hashmap_source_adapter_proto",
    srcs = ["hashmap_source_adapter.proto"],
)
