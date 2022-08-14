vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.visualbell = true
vim.opt.scrolloff = 8 
vim.opt.showmode = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.showmatch = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = true


vim.cmd("set noerrorbells")
vim.cmd("set nofixendofline")
vim.cmd("set signcolumn=yes")
vim.cmd("set colorcolumn=120")
vim.cmd("set clipboard+=unnamed")
vim.cmd("let g:lightline = {'colorscheme': 'tokyonight'}")

vim.g.mapleader = " "
vim.g.netrw_bufsettings = "noma nomod nu nobl nowrap ro"
