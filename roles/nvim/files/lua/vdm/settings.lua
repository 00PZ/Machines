local global = vim.g
local o = vim.o

vim.scriptencoding = "utf-8"

-- Map <leader>
global.mapleader = " "
global.maplocalleader = " "


o.wildmenu = true


-- Editor options
o.number = true
o.relativenumber = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.clipboard = "unnamedplus"
o.smartindent = true
o.syntax = true
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.encoding = "utf-8"
o.title = true
o.wrap = false
o.showmatch = true
o.showcmd = true
