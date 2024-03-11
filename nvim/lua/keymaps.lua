-- Keymaps
local cmd = vim.cmd

local g = vim.g

local utils = require("utils")

local nmap = utils.nmap

local imap = utils.imap

-- Buffer
nmap("[b", "<Cmd>bprevious<CR>")

nmap("]b", "<Cmd>bnext<CR>")

-- Miscellaneous
g.mapleader = ";"

nmap("<Space>w", "<Cmd>update<CR>")

nmap("<Space>q", "<Cmd>quit<CR>")

-- Quickfix
nmap("[q", "<Cmd>cprevious<CR>")

nmap("]q", "<Cmd>cnext<CR>")

-- Terminal
nmap("<Space>tt", "<Cmd>terminal<CR>")

nmap("<Space>ts", "<Cmd>belowright new<CR><Cmd>terminal<CR>")

nmap("<Space>tv", "<Cmd>vsplit<CR><Cmd>terminal<CR>")

nmap("<Space>tf", function()
	vim.api.nvim_open_win(vim.api.nvim_create_buf(false, true), true, {
		relative = "editor",
		width = vim.api.nvim_win_get_width(0) - 8,
		height = vim.api.nvim_win_get_height(0) - 2,
		col = 4,
		row = 1,
	})

	cmd.terminal()
end)

-- Vimgrep
nmap("<Space>g", ":silent vimgrep ")

-- Window
nmap("<Space>ss", "<Cmd>split<CR>")

nmap("<Space>sv", "<Cmd>vsplit<CR>")

nmap("<Space>sc", "<Cmd>wincmd c<CR>")

nmap("<Space>sh", "<Cmd>wincmd h<CR>")

nmap("<Space>sj", "<Cmd>wincmd j<CR>")

nmap("<Space>sk", "<Cmd>wincmd k<CR>")

nmap("<Space>sl", "<Cmd>wincmd l<CR>")

nmap("<Space>sH", "<Cmd>wincmd H<CR>")

nmap("<Space>sJ", "<Cmd>wincmd J<CR>")

nmap("<Space>sK", "<Cmd>wincmd K<CR>")

nmap("<Space>sL", "<Cmd>wincmd L<CR>")
