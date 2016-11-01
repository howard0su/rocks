package = "parallel"
version = "1.1-0"

source = {
   url = "git://github.com/clementfarabet/lua---parallel"
}

description = {
   summary = "A package to easily fork processes, for Torch",
   detailed = [[
A package to fork and serialize data between multiple processes.
   ]],
   homepage = "https://github.com/clementfarabet/lua---parallel",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "sys >= 1.0",
   "env >= 1.0"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}
