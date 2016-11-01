package = 'fs'
version = '0.3-0'

source = {
   url = 'git://github.com/clementfarabet/lua-fs-0.3.git',
   branch = 'master'
}

description = {
  summary = "File system toolbox",
  homepage = "https://github.com/clementfarabet/lua-fs-0.3"
}

dependencies = {
    'torch >= 7.0'
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}