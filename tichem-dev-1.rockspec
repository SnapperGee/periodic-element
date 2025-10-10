rockspec_format = "3.0"
package = "tichem"
version = "dev-1"
source = {
   url = "git+https://github.com/SnapperGee/tichem"
}
description = {
   summary = "Chemistry application(s) and utilities for the TI Nspire CX II.",
   detailed = "Chemistry application(s) and utilities for the TI Nspire CX II.",
   homepage = "https://github.com/SnapperGee/tichem",
   issues_url = "https://github.com/SnapperGee/tichem/issues",
   maintainer = "Snapper Gee <XxSnapperGeexX@gmail.com>",
   license = "Proprietary",
   labels = {"ti", "nspire", "cx", "texas instruments", "calculator", "chemistry", "stoichiometry"},
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
