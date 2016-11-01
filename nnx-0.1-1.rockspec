package = "nnx"
version = "0.1-1"

source = {
   url = "git://github.com/clementfarabet/lua---nnx",
   tag = "master"
}

description = {
   summary = "A completely unstable and experimental package that extends Torch's builtin nn library",
   detailed = [[
This is an experimental package that extends nn. You've be warned!
   ]],
   homepage = "https://github.com/clementfarabet/lua---nnx",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
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