package = "nnbhwd"
version = "scm-1"

source = {
   url = "git://github.com/qassemoquab/nnbhwd",
   tag = "master"
}

description = {
   summary = "CUDA SpatialConvolution and SpatialMaxPooling kernels for input layout of the form Batch-Height-Width-Depth",
   detailed = [[
   	    CUDA SpatialConvolution and SpatialMaxPooling kernels for input layout of the form Batch-Height-Width-Depth
   ]],
   homepage = "https://github.com/qassemoquab/nnbhwd"
}

dependencies = {
   "torch >= 7.0"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}