package = "cv"
version = "scm-1"

source = {
   url = "git://github.com/VisionLabs/torch-opencv",
   tag = "master"
}

description = {
   summary = "OpenCV bindings for LuaJIT+Torch",
   detailed = [[
   	    OpenCV bindings for LuaJIT+Torch
   ]],
   homepage = "https://github.com/VisionLabs/torch-opencv"
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
