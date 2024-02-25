-- Keymaps
local map = vim.keymap.set

-- Buffer
map("n", "[b", "<Cmd>bprevious<CR>")

map("n", "]b", "<Cmd>bnext<CR>")

-- Fern
map("n", "<Space>f", "<Cmd>Fern . -drawer -toggle -reveal=%<CR>")

-- Miscellaneous
vim.g.mapleader = ";"

map("i", "jj", "<Cmd>stopinsert<CR>")

-- Quickfix
map("n", "[q", "<Cmd>cprevious<CR>")

map("n", "]q", "<Cmd>cnext<CR>")

-- Telescope
local telescope = require("telescope.builtin")

map("n", "<leader>ff", telescope.find_files, {})

map("n", "<leader>fg", telescope.live_grep, {})

map("n", "<leader>fb", telescope.buffers, {})

map("n", "<leader>fh", telescope.help_tags, {})

-- Terminal
map("n", "tt", "<Cmd>terminal<CR>")

map("n", "ts", "<Cmd>belowright new<CR><Cmd>terminal<CR>")

map("n", "tv", "<Cmd>vsplit<CR><Cmd>terminal<CR>")

map("n", "tf", function()
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
map("n", "<Space>g", ":silent vimgrep ")

-- Window
map("n", "ss", "<Cmd>split<CR>")

map("n", "sv", "<Cmd>vsplit<CR>")

map("n", "sc", "<Cmd>wincmd c<CR>")

map("n", "sh", "<Cmd>wincmd h<CR>")

map("n", "sj", "<Cmd>wincmd j<CR>")

map("n", "sk", "<Cmd>wincmd k<CR>")

map("n", "sl", "<Cmd>wincmd l<CR>")

map("n", "sH", "<Cmd>wincmd H<CR>")

map("n", "sJ", "<Cmd>wincmd J<CR>")

map("n", "sK", "<Cmd>wincmd K<CR>")

map("n", "sL", "<Cmd>wincmd L<CR>")
