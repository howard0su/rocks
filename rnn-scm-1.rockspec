package = "rnn"
version = "scm-1"

source = {
   url = "git://github.com/Element-Research/rnn",
   tag = "master"
}

description = {
   summary = "A Recurrent Neural Network library that extends Torch's nn",
   detailed = [[
A library to build RNNs, LSTMs, BRNNs, BLSTMs, and so forth and so on.
   ]],
   homepage = "https://github.com/Element-Research/rnn",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "nn >= 1.0",
   "dpnn >= 1.0",
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