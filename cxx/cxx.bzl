# Copyright 2019 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# buildifier: disable=module-docstring
load("//rust:defs.bzl", "rust_library")

# buildifier: disable=bzl-visibility
load("//rust/private:rustc.bzl", "get_linker_and_args")

# buildifier: disable=bzl-visibility
load("//rust/private:utils.bzl", "find_cc_toolchain", "find_toolchain", "get_preferred_artifact")

load("@bazel_skylib//rules:run_binary.bzl", "run_binary")
load("@rules_cc//cc:defs.bzl", "cc_library")

# TODO(hlopko): use the more robust logic from rustc.bzl also here, through a reasonable API.
def _get_libs_for_static_executable(dep):
    """find the libraries used for linking a static executable.

    Args:
        dep (Target): A cc_library target.

    Returns:
        depset: A depset[File]
    """
    linker_inputs = dep[CcInfo].linking_context.linker_inputs.to_list()
    return depset([get_preferred_artifact(lib) for li in linker_inputs for lib in li.libraries])

def rust_cxx_library(
        name,
        header = None,
        cc_lib = None,
        cxx_flags = None,
        clang_flags = None,
        rustfmt = True,
        **kwargs):
    """Generates a rust source file for `header`, and builds a rust_library.

    Arguments are the same as `rust_cxx`, and `kwargs` are passed directly to rust_library.

    Args:
        name (str): A unique name for this target.
        header (str): The label of the .h file to generate bindings for.
        cc_lib (str): The label of the cc_library that contains the .h file. This is used to find the transitive includes.
        cxx_flags (list, optional): Flags to pass directly to the cxx executable. See https://rust-lang.github.io/rust-cxx/ for details.
        clang_flags (list, optional): Flags to pass directly to the clang executable.
        rustfmt (bool, optional): Enable or disable running rustfmt on the generated file.
        **kwargs: Arguments to forward to the underlying `rust_library` rule.
    """

    tags = kwargs.get("tags") or []
    if "tags" in kwargs:
        kwargs.pop("tags")

    deps = kwargs.get("deps") or []
    if "deps" in kwargs:
        kwargs.pop("deps")

    src = (kwargs.get("srcs") or [])[0]
    if "srcs" in kwargs:
        kwargs.pop("srcs")
    print("before generator")

    rust_cxx_interface(
        name = "%s_generator" % name,
        src = src,
    )

    print("after generator")

    cc_library(
        name = name,
        srcs = ["%s_generator" % name],
        deps = deps + [":%s_header" % name],
    )

#    cc_library(
#        name = "%s_header" % name,
#        hdrs = [src + ".h"],
#    )

#    rust_library(
#        name = name,
#        srcs = [name + "__cxx.rs"],
#        tags = tags + ["__cxx"],
#        deps = deps + [cc_lib],
#        **kwargs
#    )

def _rust_cxx_interface_impl(ctx):
    print("I'm doing something inside the generator")
    rust_toolchain = find_toolchain(ctx)


    toolchain = ctx.toolchains[Label("//cxx:cxx_toolchain")]
    cxxbridge_bin = toolchain.cxxbridge

    source_name = ctx.attr.srcs[0]
    source_file = ctx.files.srcs[0]

    generated_header = ctx.actions.declare_file(source_name + ".h")
    generated_source = ctx.actions.declare_file(source_name + ".cc")

    args = ctx.actions.args()
    args.add(source_name)
    args.add("-o")
    args.add(source_name + ".h")
    args.add("-o")
    args.add(source_name + ".cc")

    ctx.actions.run(
        executable = cxxbridge_bin,
        inputs = depset([source_file]),
        outputs = [generated_header, generated_source],
        mnemonic = "Rustcxx",
        progress_message = "Generating interface for {}..".format(source_name),
        arguments = [args],
    )

rust_cxx_interface = rule(
    doc = "Generates a rust source file from a cc_library and a header.",
    implementation = _rust_cxx_interface_impl,
    attrs = {
        "src": attr.label(
            doc = "File with the FFI definition",
            allow_single_file = True,
        ),
    },
    toolchains = [
        str(Label("//cxx:cxx_toolchain")),
        #str(Label("//rust:toolchain")),
    ],
)

def _rust_cxx_toolchain_impl(ctx):
    return platform_common.ToolchainInfo(
        cxxbridge = ctx.executable.cxxbridge,
    )

rust_cxx_toolchain = rule(
    _rust_cxx_toolchain_impl,
    doc = "The tools required for the `rust_cxx` rule.",
    attrs = {
        "cxxbridge": attr.label(
            doc = "The label of a `cxxbridge_cmd` executable.",
            executable = True,
            cfg = "exec",
        ),
     },
)
