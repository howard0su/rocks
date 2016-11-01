package = "torchffi"
version = "1.1.alpha-0"

source = {
   url = "git://github.com/torch/ffi",
   tag = "master"
}

description = {
   summary = "Enables FFI bindings for Torch",
   detailed = [[
Enables FFI bindings for Torch (Tensor). It requires Torch to be built
with LuaJIT.
   ]],
   homepage = "https://github.com/torch/ffi",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}