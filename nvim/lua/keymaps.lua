-- Keymaps
local function imap(lhs, rhs)
	vim.keymap.set("i", lhs, rhs)
end

local function nmap(lhs, rhs)
	vim.keymap.set("n", lhs, rhs)
end

-- Buffer
nmap("[b", "<Cmd>bprevious<CR>")

nmap("]b", "<Cmd>bnext<CR>")

-- Miscellaneous
vim.g.mapleader = ";"

imap("jj", "<Cmd>stopinsert<CR>")

-- Quickfix
nmap("[q", "<Cmd>cprevious<CR>")

nmap("]q", "<Cmd>cnext<CR>")

-- Terminal
nmap("tt", "<Cmd>terminal<CR>")

nmap("ts", "<Cmd>belowright new<CR><Cmd>terminal<CR>")

nmap("tv", "<Cmd>vsplit<CR><Cmd>terminal<CR>")

nmap("tf", function()
	vim.api.nvim_open_win(vim.api.nvim_create_buf(false, true), true, {
		relative = "editor",
		width = vim.api.nvim_win_get_width(0) - 8,
		height = vim.api.nvim_win_get_height(0) - 2,
		col = 4,
		row = 1,
	})

	vim.cmd.terminal()
end)

-- Vimgrep
nmap("<Space>g", ":silent vimgrep ")

-- Window
nmap("ss", "<Cmd>split<CR>")

nmap("sv", "<Cmd>vsplit<CR>")

nmap("sc", "<Cmd>wincmd c<CR>")

nmap("sh", "<Cmd>wincmd h<CR>")

nmap("sj", "<Cmd>wincmd j<CR>")

nmap("sk", "<Cmd>wincmd k<CR>")

nmap("sl", "<Cmd>wincmd l<CR>")

nmap("sH", "<Cmd>wincmd H<CR>")

nmap("sJ", "<Cmd>wincmd J<CR>")

nmap("sK", "<Cmd>wincmd K<CR>")

nmap("sL", "<Cmd>wincmd L<CR>")
