package = "signal"
version = "scm-1"

source = {
   url = "git://github.com/soumith/torch-signal.git"
}

description = {
   summary = "A signal processing toolbox for Torch-7",
   detailed = [[
   A signal processing toolbox for Torch-7
   ]],
   homepage = "https://github.com/soumith/torch-signal",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
   "torch >= 7.0",
   "fftw3 >= 1.0"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}