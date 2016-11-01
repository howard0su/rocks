package = "thrift"
version = "scm-1"

source = {
   url = "git://github.com/twitter/torch-thrift.git",
}

description = {
   summary = "Thrift serialization for Torch",
   homepage = "-",
   license = "MIT"
}

dependencies = {
   "torch >= 7.0",
   "regress",
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}