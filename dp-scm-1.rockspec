package = "dp"
version = "scm-1"

source = {
   url = "git://github.com/nicholas-leonard/dp",
   tag = "master"
}

description = {
   summary = "A deep learning library for the Torch7 distribution",
   detailed = [[
With an emphasis on flexibility through the elegant use of object-oriented design patterns,
dp is a deep learning library inspired by pylearn2
designed for streamlining research and development using the Torch7 distribution.
]],
   homepage = "https://github.com/nicholas-leonard/dp/blob/master/README.md"
}

dependencies = {
   "torch >= 7.0",
   "optim >= 1.0.5",
   "moses >= 1.3.1",
   "nnx >= 0.1",
   "dpnn >= 1.0",
   "xlua >= 1.0",
   "image >= 1.0",
   "luafilesystem >= 1.6.2",
   "sys >= 1.1",
   "torchx >= 1.0"
}


build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}