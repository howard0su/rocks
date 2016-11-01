package = "optim"
version = "1.0.5-0"

source = {
   url = "git://github.com/torch/optim",
}

description = {
   summary = "An optimization library for Torch.",
   detailed = [[
This package contains several optimization routines for Torch.
  ]],
   homepage = "https://github.com/torch/optim",
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