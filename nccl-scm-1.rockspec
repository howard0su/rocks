package = "nccl"
version = "scm-1"

source = {
   url = "git://github.com/ngimel/nccl.torch.git",
}

description = {
   summary = "Torch7 FFI bindings for NVIDIA nccl kernels!",
   homepage = "https://github.com/ngimel/nccl.torch",
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