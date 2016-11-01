package = "gm"
version = "scm-1"

source = {
   url = "git://github.com/clementfarabet/gm",
   branch = "master"
}

description = {
   summary = "A graphical model library for Torch",
   detailed = [[
This package provides routines to create graphical models,
and perform common operations on them: decoding, inference, and parameter estimation.
   ]],
   homepage = "https://github.com/clementfarabet/gm",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "sys >= 1.0",
   "xlua >= 1.0"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}
