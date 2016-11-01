package = 'hdf5'
version = '20-0'

source = {
   url = 'git://github.com/deepmind/torch-hdf5.git',
   branch = 'master'
}

description = {
  summary = "Interface to HDF5 library",
  homepage = "https://github.com/deepmind/torch-hdf5",
  detailed = "Read and write Torch tensor data to and from Hierarchical Data Format files.",
  license = "BSD",
  maintainer = "Dan Horgan <danhgn+github@gmail.com>"
}

dependencies = { 'torch >= 7.0', 'logroll', 'penlight' }

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}
