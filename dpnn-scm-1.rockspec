package = "dpnn"
version = "scm-1"

source = {
   url = "git://github.com/Element-Research/dpnn",
   tag = "master"
}

description = {
   summary = "deep extensions to nn Modules and Criterions",
   detailed = [[sharedClone, type, outside, updateGradParameters, Serial, Inception, etc.]],
   homepage = "https://github.com/Element-Research/dpnn",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "nn >= 1.0",
   "nnx >= 0.1",
   "moses >= 1.3.1"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}