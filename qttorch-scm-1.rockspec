package = "qttorch"
version = "scm-1"

source = {
   url = "git://github.com/torch/qttorch.git",
}

description = {
   summary = "QT interface to Torch",
   detailed = [[
   ]],
   homepage = "https://github.com/torch/qttorch",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "qtlua >= 1.0"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}