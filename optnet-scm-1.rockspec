package = "optnet"
version = "scm-1"

source = {
   url = "git://github.com/fmassa/optimize-net",
   tag = "master"
}

description = {
   summary = "This package provides memory optimizations for nn library in Torch7.",
   homepage = "git://github.com/fmassa/optimize-net",
   license = "BSD"
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