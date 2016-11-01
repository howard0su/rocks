package = "csvigo"
version = "scm-1"

source = {
   url = "git://github.com/clementfarabet/lua---csv",
   tag = "master"
}

description = {
   summary = "A CSV library, for Torch",
   detailed = [[
A CSV read/write library for Torch.
   ]],
   homepage = "https://github.com/clementfarabet/lua---csv",
   license = "BSD"
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