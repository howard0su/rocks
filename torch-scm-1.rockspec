package = "torch"
version = "scm-1"

source = {
   url = "git://github.com/torch/torch7.git",
}

description = {
   summary = "Torch7",
   detailed = [[
   ]],
   homepage = "https://github.com/torch/torch7",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
   "paths >= 1.0",
   "cwrap >= 1.0"
}

build = {
   type = "cmake",
   variables = {
      LUA="$(LUA)",
      LUALIB="$(LUALIB)",
      LUA_BINDIR="$(LUA_BINDIR)",
      LUA_INCDIR="$(LUA_INCDIR)",
      LUA_LIBDIR="$(LUA_LIBDIR)",
      LUADIR="$(LUADIR)",
      LIBDIR="$(LIBDIR)",
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}