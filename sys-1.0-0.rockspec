package = "sys"
version = "1.0-0"

source = {
   url = "git://github.com/torch/sys",
   tag = "1.0-0"
}

description = {
   summary = "A system library for Torch",
   detailed = [[
Provides system functionalities for Torch.
   ]],
   homepage = "https://github.com/torch/sys",
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