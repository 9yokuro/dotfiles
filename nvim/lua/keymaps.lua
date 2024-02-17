-- Keymaps

-- General
vim.keymap.set("i", "jj", "<Esc>")

-- Window
vim.keymap.set("n", "ss", "<cmd>split<CR>")
vim.keymap.set("n", "sv", "<cmd>vsplit<CR>")
vim.keymap.set("n", "sc", "<cmd>wincmd c<CR>")
vim.keymap.set("n", "sh", "<cmd>wincmd h<CR>")
vim.keymap.set("n", "sj", "<cmd>wincmd j<CR>")
vim.keymap.set("n", "sk", "<cmd>wincmd k<CR>")
vim.keymap.set("n", "sl", "<cmd>wincmd l<CR>")
vim.keymap.set("n", "sH", "<cmd>wincmd H<CR>")
vim.keymap.set("n", "sJ", "<cmd>wincmd J<CR>")
vim.keymap.set("n", "sK", "<cmd>wincmd K<CR>")
vim.keymap.set("n", "sL", "<cmd>wincmd L<CR>")

-- Buffer
vim.keymap.set("n", "[b", "<cmd>bprevious<CR>")
vim.keymap.set("n", "]b", "<cmd>bnext<CR>")

-- QuickFix
vim.keymap.set("n", "[q", "<cmd>cprevious<CR>")
vim.keymap.set("n", "]q", "<cmd>cnext<CR>")

-- Terminal
vim.keymap.set("n", "tt", "<cmd>terminal<CR>")
vim.keymap.set("n", "ts", "<cmd>belowright new<CR><cmd>terminal<CR>")
vim.keymap.set("n", "tv", "<cmd>vsplit<CR><cmd>terminal<CR>")

-- VimGrep
vim.keymap.set("n", "<Space>g", ":silent vimgrep ")

-- Netrw
vim.keymap.set("n", "<C-n>", "<cmd>silent Lexplore<CR>")
