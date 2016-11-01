package = "audio"
version = "0.1-0"

source = {
   url = "git://github.com/soumith/lua---audio",
   tag = "master"
}

description = {
   summary  = "Audio library for Torch-7",
   detailed = [[
   	    Support audio I/O (Load files)
	    Common audio operations (Short-time Fourier transforms, Spectrograms)
   ]],
   homepage = "https://github.com/soumith/lua---audio",
   license  = "RWTFPL"
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
