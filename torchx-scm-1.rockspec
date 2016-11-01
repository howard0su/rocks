package = "torchx"
version = "scm-1"

source = {
   url = "git://github.com/nicholas-leonard/torchx",
   tag = "master"
}

description = {
   summary = "torch extensions",
   detailed = [[
   	    Experimental torch extensions
   ]],
   homepage = "https://github.com/nicholas-leonard/torchx/blob/master/README.md"
}

dependencies = {
   "torch >= 7.0",
   "paths >= 1",
   "sys >= 1.1"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}
