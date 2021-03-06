package = "cunn"
version = "1.0-0"

source = {
   url = "git://github.com/torch/cunn.git",
   tag = "1.0-0"
}

description = {
   summary = "Torch CUDA Neural Network Implementation",
   detailed = [[
   ]],
   homepage = "https://github.com/torch/cunn",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "nn >= 1.0",
   "cutorch == 1.0-0"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}