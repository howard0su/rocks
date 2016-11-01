package = "inn"
version = "1.0-0"

source = {
   url = "git://github.com/szagoruyko/imagine-nn",
   tag = "master"
}

description = {
   summary = "IMAGINE/LIGM torch nn repository",
   detailed = [[
Universite Paris-Est MLV Imagine laboratory nn routines
   ]],
   homepage = "https://github.com/szagoruyko/imagine-nn",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "nn",
   "cunn"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}
