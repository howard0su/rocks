package = "python"
version = "scm-0"

source = {
   url = "git://github.com/clementfarabet/lua---python",
}

description = {
   summary = "A wrapper to Python",
   detailed = [[
Load a Python env into Lua.
   ]],
   homepage = "https://github.com/clementfarabet/lua---python",
   license = "GPL"
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
