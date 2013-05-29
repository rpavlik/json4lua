package = "json4lua"
version = "0.95-1"
description = {
  summary = "JSON encoding/decoding module for Lua, with some RPC support";
  detailed = "JSON (Javascript Object Notation - http://www.json.org) encoding / decoding module for Lua, and very basic JSON RPC module (requiring socket 2.0)";
  homepage = "https://github.com/rpavlik/json4lua";
}
source = {
  url = "git://github.com/rpavlik/json4lua.git"
}
dependencies = {
   "lua ~> 5.1";
   "luasocket";
}
build = {
  type = "builtin";
  modules = {
    json = "json/json.lua";
    rpc = "json/rpc.lua";
    rpcserver = "json/rpcserver.lua";
  }
}
