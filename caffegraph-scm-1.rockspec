package = "caffegraph"
version = "scm-1"

source = {
  url = "git://github.com/nhynes/caffegraph",
  tag = "master"
}

description = {
  summary = "Load Caffe networks in Torch7",
  detailed = [[
  ]],
  homepage = "https://github.com/nhynes/caffegraph",
  license = "MIT"
}

dependencies = {
  "torch >= 7.0",
  "nn",
  "nngraph"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}