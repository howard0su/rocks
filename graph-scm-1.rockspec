package = "graph"
version = "scm-1"

source = {
   url = "git://github.com/torch/graph",
   tag = "master"
}

description = {
   summary = "Graph package for Torch",
   homepage = "https://github.com/torch/graph",
   license = "UNKNOWN"
}

dependencies = {
   "torch >= 7.0"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}