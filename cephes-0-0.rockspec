package = 'cephes'
version = '0-0'

source = {
   url = 'git://github.com/deepmind/torch-cephes.git',
   branch = 'master'
}

description = {
  summary = "Cephes mathematical functions library, wrapped for Torch",
  homepage = "https://github.com/deepmind/torch-cephes",
  detailed = "Provides and wraps the 180+ special mathematical functions from the Cephes mathematical library, developed by Stephen L. Moshier. It is used, among many other places, at the heart of SciPy.",
  license = "BSD",
  maintainer = "Julien Cornebise <julien@cornebise.com>"
}

dependencies = {'torch >= 7.0'}
build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}
