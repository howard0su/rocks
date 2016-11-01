package = "cudnn"
version = "scm-1"

source = {
   url = "git://github.com/soumith/cudnn.torch.git",
}

description = {
   summary = "Torch7 FFI bindings for NVIDIA CuDNN kernels!",
   detailed = [[
   All CuDNN modules exposed as nn.Module derivatives so
   that they can be used with torch's neural network package
   ]],
   homepage = "https://github.com/soumith/cudnn.torch",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "cutorch",
   "nn"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}