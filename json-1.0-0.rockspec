package = "json"
version = "1.0-0"

source = {
   url = "git://github.com/clementfarabet/lua---json",
   tag = "1.0-0"
}

description = {
   summary = "A JSON library, modified from JSON4Lua, for Torch",
   detailed = [[
A JSON read/write library for Torch.
   ]],
   homepage = "https://github.com/clementfarabet/lua---json",
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