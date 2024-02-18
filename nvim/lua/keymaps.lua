-- Keymaps

-- Buffer
vim.keymap.set("n", "[b", "<Cmd>bprevious<CR>")
vim.keymap.set("n", "]b", "<Cmd>bnext<CR>")

-- Miscellaneous
vim.keymap.set("i", "jj", "<Esc>")

-- Netrw
vim.keymap.set("n", "<C-n>", "<Cmd>silent Lexplore<CR>")

-- QuickFix
vim.keymap.set("n", "[q", "<Cmd>cprevious<CR>")
vim.keymap.set("n", "]q", "<Cmd>cnext<CR>")

-- Terminal
vim.keymap.set("n", "tt", "<Cmd>terminal<CR>")
vim.keymap.set("n", "ts", "<Cmd>belowright new<CR><Cmd>terminal<CR>")
vim.keymap.set("n", "tv", "<Cmd>vsplit<CR><Cmd>terminal<CR>")

-- VimGrep
vim.keymap.set("n", "<Space>g", ":silent vimgrep ")

-- Window
vim.keymap.set("n", "ss", "<Cmd>split<CR>")
vim.keymap.set("n", "sv", "<Cmd>vsplit<CR>")
vim.keymap.set("n", "sc", "<Cmd>wincmd c<CR>")
vim.keymap.set("n", "sh", "<Cmd>wincmd h<CR>")
vim.keymap.set("n", "sj", "<Cmd>wincmd j<CR>")
vim.keymap.set("n", "sk", "<Cmd>wincmd k<CR>")
vim.keymap.set("n", "sl", "<Cmd>wincmd l<CR>")
vim.keymap.set("n", "sH", "<Cmd>wincmd H<CR>")
vim.keymap.set("n", "sJ", "<Cmd>wincmd J<CR>")
vim.keymap.set("n", "sK", "<Cmd>wincmd K<CR>")
vim.keymap.set("n", "sL", "<Cmd>wincmd L<CR>")
