package = "image"
version = "1.1.alpha-0"

source = {
   url = "git://github.com/torch/image",
   tag = "master"
}

description = {
   summary = "An image library for Torch",
   detailed = [[
This package provides routines to load/save and manipulate images
using Torch's Tensor data structure.
   ]],
   homepage = "https://github.com/torch/image",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "sys >= 1.0",
   "xlua >= 1.0",
   "dok"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}