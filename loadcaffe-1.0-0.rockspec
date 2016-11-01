package = "loadcaffe"
version = "1.0-0"

source = {
   url = "git://github.com/szagoruyko/loadcaffe",
   tag = "master"
}

description = {
   summary = "Load Caffe networks in Torch7",
   detailed = [[
Loading Caffe networks without caffe dependency
   ]],
   homepage = "https://github.com/szagoruyko/loadcaffe",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "nn",
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}
