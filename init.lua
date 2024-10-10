local global = vim.g
local o = vim.opt

global.loaded_netrw = 1
global.loaded_netrwPlugin = 1

o.number = true
o.relativenumber = true
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.encoding = "UTF-8"
o.ruler = true
o.title = true
o.termguicolors = true
o.hidden = true

require("config.lazy")
require("maps")
