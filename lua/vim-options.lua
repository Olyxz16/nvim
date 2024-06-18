vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set mouse=")
vim.g.mapleader = " "
vim.g.background = "light"

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.swapfile = false
vim.opt.encoding = 'utf8'

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 1
vim.cmd("set nofoldenable")
