package = "svm"
version = "0.1-0"

source = {
   url = "git://github.com/koraykv/torch-svm.git",
   tag = "master"
}

description = {
   summary = "Torch-SVM library",
   detailed = [[
Torch-SVM library
   ]],
   homepage = "https://github.com/koraykv/torch-svm",
   license = "BSD"
   }

dependencies = {
   "torch >= 7.0",
   "xlua >= 1.0"
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