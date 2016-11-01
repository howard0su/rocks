package = "lmdb.torch"
version = "scm-1"

source = {
   url = "git://github.com/eladhoffer/lmdb.torch.git"
}

description = {
   summary = 'LMDB wrappers for Torch',
   detailed = [[
   ]],
   homepage = "https://github.com/eladhoffer/lmdb.torch"
}

dependencies = {

}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}
