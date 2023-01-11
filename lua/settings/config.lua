local o = vim.o
local cmd = vim.cmd

o.number = true
o.relativenumber = true
o.termguicolors = true
o.cursorline = true
cmd('set nowrap')

cmd('set path+=**')
o.hidden = true
o.encoding = 'UTF-8'

o.laststatus = 2
o.clipboard = 'unnamedplus'
o.showcmd = false
o.showmatch = false
o.showmode = false

o.smartindent = true
o.smarttab = true
o.tabstop = 4
o.softtabstop = 0
o.shiftwidth = 2
o.expandtab = true
o.smartcase = true
o.incsearch = true
o.hlsearch = false
cmd('set completeopt=menuone,noinsert,noselect')

o.swapfile = false
o.backup = false
o.undofile = true
