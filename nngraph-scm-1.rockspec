package = "nngraph"
version = "scm-1"

source = {
   url = "git://github.com/torch/nngraph",
   tag = "master"
}

description = {
   summary = "This package provides graphical computation for nn library in Torch7.",
   homepage = "https://github.com/torch/nngraph",
   license = "UNKNOWN"
}

dependencies = {
   "torch >= 7.0",
   "graph",
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