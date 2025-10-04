package = "tichem"
version = "dev-1"
source = {
   url = "https://github.com/SnapperGee/ti-chem"
}
description = {
   homepage = "https://github.com/SnapperGee/ti-chem",
   license = "Proprietary",
   summary = "Chemistry application(s) and utilities for the TI Nspire CX II.",
   maintainer = "Snapper Gee <XxSnapperGeexX@gmail.com>",
}
build = {
   type = "builtin",
   modules = {
      main = "src/main.lua"
   }
}
dependencies = {
   "lua ~> 5.1"
}
