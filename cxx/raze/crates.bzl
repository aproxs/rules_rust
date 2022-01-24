"""
@generated
cargo-raze generated Bazel file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")  # buildifier: disable=load

def rules_rust_cxx_fetch_remote_crates():
    """This function defines a collection of repos and should be called in a WORKSPACE file"""
    maybe(
        http_archive,
        name = "rules_rust_cxx__autocfg__1_0_1",
        url = "https://crates.io/api/v1/crates/autocfg/1.0.1/download",
        type = "tar.gz",
        sha256 = "cdb031dd78e28731d87d56cc8ffef4a8f36ca26c38fe2de700543e627f8a464a",
        strip_prefix = "autocfg-1.0.1",
        build_file = Label("//cxx/raze/remote:BUILD.autocfg-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__bitflags__1_3_2",
        url = "https://crates.io/api/v1/crates/bitflags/1.3.2/download",
        type = "tar.gz",
        sha256 = "bef38d45163c2f1dde094a7dfd33ccf595c92905c8f8f4fdc18d06fb1037718a",
        strip_prefix = "bitflags-1.3.2",
        build_file = Label("//cxx/raze/remote:BUILD.bitflags-1.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__cc__1_0_72",
        url = "https://crates.io/api/v1/crates/cc/1.0.72/download",
        type = "tar.gz",
        sha256 = "22a9137b95ea06864e018375b72adfb7db6e6f68cfc8df5a04d00288050485ee",
        strip_prefix = "cc-1.0.72",
        build_file = Label("//cxx/raze/remote:BUILD.cc-1.0.72.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__clap__3_0_10",
        url = "https://crates.io/api/v1/crates/clap/3.0.10/download",
        type = "tar.gz",
        sha256 = "7a30c3bf9ff12dfe5dae53f0a96e0febcd18420d1c0e7fad77796d9d5c4b5375",
        strip_prefix = "clap-3.0.10",
        build_file = Label("//cxx/raze/remote:BUILD.clap-3.0.10.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__codespan_reporting__0_11_1",
        url = "https://crates.io/api/v1/crates/codespan-reporting/0.11.1/download",
        type = "tar.gz",
        sha256 = "3538270d33cc669650c4b093848450d380def10c331d38c768e34cac80576e6e",
        strip_prefix = "codespan-reporting-0.11.1",
        build_file = Label("//cxx/raze/remote:BUILD.codespan-reporting-0.11.1.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__cxx__1_0_63",
        url = "https://crates.io/api/v1/crates/cxx/1.0.63/download",
        type = "tar.gz",
        sha256 = "c949f4e2576a655698463c56dbc5c5ea4c00964becc9adb0458baa943e862a5b",
        strip_prefix = "cxx-1.0.63",
        build_file = Label("//cxx/raze/remote:BUILD.cxx-1.0.63.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__cxxbridge_cmd__1_0_63",
        url = "https://crates.io/api/v1/crates/cxxbridge-cmd/1.0.63/download",
        type = "tar.gz",
        sha256 = "46b11e02a372a5a40b2858739c02631830768bd0038bdfb3dff7a1db3e3b65e2",
        strip_prefix = "cxxbridge-cmd-1.0.63",
        build_file = Label("//cxx/raze/remote:BUILD.cxxbridge-cmd-1.0.63.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__cxxbridge_flags__1_0_63",
        url = "https://crates.io/api/v1/crates/cxxbridge-flags/1.0.63/download",
        type = "tar.gz",
        sha256 = "1b44dad556b0c83d86676135d6c684bdc2b1b9a1188052dd1cb5998246163536",
        strip_prefix = "cxxbridge-flags-1.0.63",
        build_file = Label("//cxx/raze/remote:BUILD.cxxbridge-flags-1.0.63.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__cxxbridge_macro__1_0_63",
        url = "https://crates.io/api/v1/crates/cxxbridge-macro/1.0.63/download",
        type = "tar.gz",
        sha256 = "2acc9305a8b69bc2308c2e17dbb98debeac984cdc89ac550c01507cc129433c3",
        strip_prefix = "cxxbridge-macro-1.0.63",
        build_file = Label("//cxx/raze/remote:BUILD.cxxbridge-macro-1.0.63.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__hashbrown__0_11_2",
        url = "https://crates.io/api/v1/crates/hashbrown/0.11.2/download",
        type = "tar.gz",
        sha256 = "ab5ef0d4909ef3724cc8cce6ccc8572c5c817592e9285f5464f8e86f8bd3726e",
        strip_prefix = "hashbrown-0.11.2",
        build_file = Label("//cxx/raze/remote:BUILD.hashbrown-0.11.2.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__indexmap__1_8_0",
        url = "https://crates.io/api/v1/crates/indexmap/1.8.0/download",
        type = "tar.gz",
        sha256 = "282a6247722caba404c065016bbfa522806e51714c34f5dfc3e4a3a46fcb4223",
        strip_prefix = "indexmap-1.8.0",
        build_file = Label("//cxx/raze/remote:BUILD.indexmap-1.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__link_cplusplus__1_0_6",
        url = "https://crates.io/api/v1/crates/link-cplusplus/1.0.6/download",
        type = "tar.gz",
        sha256 = "f8cae2cd7ba2f3f63938b9c724475dfb7b9861b545a90324476324ed21dbc8c8",
        strip_prefix = "link-cplusplus-1.0.6",
        build_file = Label("//cxx/raze/remote:BUILD.link-cplusplus-1.0.6.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__memchr__2_4_1",
        url = "https://crates.io/api/v1/crates/memchr/2.4.1/download",
        type = "tar.gz",
        sha256 = "308cc39be01b73d0d18f82a0e7b2a3df85245f84af96fdddc5d202d27e47b86a",
        strip_prefix = "memchr-2.4.1",
        build_file = Label("//cxx/raze/remote:BUILD.memchr-2.4.1.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__os_str_bytes__6_0_0",
        url = "https://crates.io/api/v1/crates/os_str_bytes/6.0.0/download",
        type = "tar.gz",
        sha256 = "8e22443d1643a904602595ba1cd8f7d896afe56d26712531c5ff73a15b2fbf64",
        strip_prefix = "os_str_bytes-6.0.0",
        build_file = Label("//cxx/raze/remote:BUILD.os_str_bytes-6.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__proc_macro2__1_0_36",
        url = "https://crates.io/api/v1/crates/proc-macro2/1.0.36/download",
        type = "tar.gz",
        sha256 = "c7342d5883fbccae1cc37a2353b09c87c9b0f3afd73f5fb9bba687a1f733b029",
        strip_prefix = "proc-macro2-1.0.36",
        build_file = Label("//cxx/raze/remote:BUILD.proc-macro2-1.0.36.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__quote__1_0_15",
        url = "https://crates.io/api/v1/crates/quote/1.0.15/download",
        type = "tar.gz",
        sha256 = "864d3e96a899863136fc6e99f3d7cae289dafe43bf2c5ac19b70df7210c0a145",
        strip_prefix = "quote-1.0.15",
        build_file = Label("//cxx/raze/remote:BUILD.quote-1.0.15.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__strsim__0_10_0",
        url = "https://crates.io/api/v1/crates/strsim/0.10.0/download",
        type = "tar.gz",
        sha256 = "73473c0e59e6d5812c5dfe2a064a6444949f089e20eec9a2e5506596494e4623",
        strip_prefix = "strsim-0.10.0",
        build_file = Label("//cxx/raze/remote:BUILD.strsim-0.10.0.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__syn__1_0_86",
        url = "https://crates.io/api/v1/crates/syn/1.0.86/download",
        type = "tar.gz",
        sha256 = "8a65b3f4ffa0092e9887669db0eae07941f023991ab58ea44da8fe8e2d511c6b",
        strip_prefix = "syn-1.0.86",
        build_file = Label("//cxx/raze/remote:BUILD.syn-1.0.86.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__termcolor__1_1_2",
        url = "https://crates.io/api/v1/crates/termcolor/1.1.2/download",
        type = "tar.gz",
        sha256 = "2dfed899f0eb03f32ee8c6a0aabdb8a7949659e3466561fc0adf54e26d88c5f4",
        strip_prefix = "termcolor-1.1.2",
        build_file = Label("//cxx/raze/remote:BUILD.termcolor-1.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__textwrap__0_14_2",
        url = "https://crates.io/api/v1/crates/textwrap/0.14.2/download",
        type = "tar.gz",
        sha256 = "0066c8d12af8b5acd21e00547c3797fde4e8677254a7ee429176ccebbe93dd80",
        strip_prefix = "textwrap-0.14.2",
        build_file = Label("//cxx/raze/remote:BUILD.textwrap-0.14.2.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__unicode_width__0_1_9",
        url = "https://crates.io/api/v1/crates/unicode-width/0.1.9/download",
        type = "tar.gz",
        sha256 = "3ed742d4ea2bd1176e236172c8429aaf54486e7ac098db29ffe6529e0ce50973",
        strip_prefix = "unicode-width-0.1.9",
        build_file = Label("//cxx/raze/remote:BUILD.unicode-width-0.1.9.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__unicode_xid__0_2_2",
        url = "https://crates.io/api/v1/crates/unicode-xid/0.2.2/download",
        type = "tar.gz",
        sha256 = "8ccb82d61f80a663efe1f787a51b16b5a51e3314d6ac365b08639f52387b33f3",
        strip_prefix = "unicode-xid-0.2.2",
        build_file = Label("//cxx/raze/remote:BUILD.unicode-xid-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__winapi__0_3_9",
        url = "https://crates.io/api/v1/crates/winapi/0.3.9/download",
        type = "tar.gz",
        sha256 = "5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419",
        strip_prefix = "winapi-0.3.9",
        build_file = Label("//cxx/raze/remote:BUILD.winapi-0.3.9.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-i686-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//cxx/raze/remote:BUILD.winapi-i686-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__winapi_util__0_1_5",
        url = "https://crates.io/api/v1/crates/winapi-util/0.1.5/download",
        type = "tar.gz",
        sha256 = "70ec6ce85bb158151cae5e5c87f95a8e97d2c0c4b001223f33a334e3ce5de178",
        strip_prefix = "winapi-util-0.1.5",
        build_file = Label("//cxx/raze/remote:BUILD.winapi-util-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "rules_rust_cxx__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-x86_64-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//cxx/raze/remote:BUILD.winapi-x86_64-pc-windows-gnu-0.4.0.bazel"),
    )
