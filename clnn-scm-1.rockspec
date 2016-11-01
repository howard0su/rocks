package = "clnn"
version = "scm-1"

source = {
   url = "git://github.com/hughperkins/clnn.git",
}

description = {
   summary = "Torch OpenCL Neural Network Implementation",
   detailed = [[
   ]],
   homepage = "https://github.com/hughperkins/clnn",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "nn >= 1.0",
   "cltorch >= 1.0"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="RelWithDebInfo",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}