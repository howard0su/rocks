package = "camera"
version = "1.1-0"

source = {
   url = "git://github.com/clementfarabet/lua---camera",
}

description = {
   summary = "A simple wrapper package to give torch access to a webcam",
   detailed = [[
Uses OpenCV on MacOS and video4linux2 on Linux to proved the low level access to the camera hardware.
   ]],
   homepage = "https://github.com/clementfarabet/lua---camera",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "xlua >= 1.0",
   "sys >= 1.0",
   "image >= 1.0.1"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}
