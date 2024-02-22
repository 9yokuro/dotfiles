-- Keymaps
local map = vim.keymap.set

-- Buffer
map("n", "[b", "<Cmd>bprevious<CR>")
map("n", "]b", "<Cmd>bnext<CR>")

-- Miscellaneous
vim.g.mapleader = ";"
map("i", "jj", "<Esc>")

-- QuickFix
map("n", "[q", "<Cmd>cprevious<CR>")
map("n", "]q", "<Cmd>cnext<CR>")

-- Terminal
map("n", "tt", "<Cmd>terminal<CR>")
map("n", "ts", "<Cmd>belowright new<CR><Cmd>terminal<CR>")
map("n", "tv", "<Cmd>vsplit<CR><Cmd>terminal<CR>")

-- VimGrep
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
