package = "twrl"
version = "scm-1"
source = {
   url = "gitrec://github.com/twitter/torch-twrl.git"
}
description = {
   summary = "Reinforcement Learning for Torch and Lua",
   detailed = [[
      torch-twrl is a Reinforcement Learning framework
      built for Torch. It interfaces with OpenAI Gym.
   ]],
   homepage = "https://github.com/twitter/torch-twrl",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luarocks-fetch-gitrec",
   "torch >= 7.0",
   "nn >= 1.0.4",
   "penlight >= 1.4.1",
   "httpclient >= 0.1.0",
   "dkjson >= 2.5",
   "moses >= 1.4.0"
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}