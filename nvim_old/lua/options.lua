-- General
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.copyindent = true
vim.opt.wrap = false
vim.opt.mouse = "a"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.ambiwidth = "single"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.clipboard:append({ "unnamedplus" })
vim.opt.autoread = true
vim.opt.hidden = true
vim.opt.swapfile = false
vim.opt.shell = "zsh"
vim.opt.helplang = "ja,en"
vim.opt.splitright = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Appearance
vim.g.termguicolors = true
vim.opt.syntax = "on"
vim.opt.guicursor = "a:blinkwait700-blinkon400-blinkoff250"
vim.opt.background = "dark"
vim.opt.relativenumber = true
vim.opt.cmdheight = 0
vim.opt.title = true
vim.opt.laststatus = 3
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.winblend = 20

-- Search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
