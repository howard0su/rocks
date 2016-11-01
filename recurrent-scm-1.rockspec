package = "recurrent"
version = "scm-1"

source = {
   url = "git://github.com/eladhoffer/recurrent.torch.git"
}

description = {
   summary = "Recurrent container for Torch",
   detailed = [[
   	    Recurrent container for torch
   ]],
   homepage = "https://github.com/ehoffer/recurrent.torch"
}

dependencies = {

}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}