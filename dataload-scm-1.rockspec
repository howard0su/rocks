package = "dataload"
version = "scm-1"

source = {
   url = "git://github.com/Element-Research/dataload",
   tag = "master"
}

description = {
   summary = "A collection of Torch dataset loaders",
   detailed = [[
   Simplified data loading and sampling package
   ]],
   homepage = "https://github.com/Element-Research/dataload",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "torchx >= 1.0",
   "moses >= 1.3.1",
   "xlua >= 1.0",
   "image >= 1.0",
   "luafilesystem >= 1.6.2",
   "sys >= 1.1",
   "paths >= 1.0"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}
