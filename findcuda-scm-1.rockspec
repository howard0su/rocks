package = "findcuda"
version = "scm-1"

source = {
   url = "git://github.com/hughperkins/FindCUDA.git",
}

description = {
   summary = "cmake FindCUDA module",
   detailed = [[
   ]],
   homepage = "https://github.com/hughperkins/FindCUDA.git",
   license = "MIT"
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