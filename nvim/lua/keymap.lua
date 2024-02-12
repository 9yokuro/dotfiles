vim.g.mapleader = ";"
vim.keymap.set("n", "ss", "<cmd>split<CR>")
vim.keymap.set("n", "sv", "<cmd>vsplit<CR>")
vim.keymap.set("n", "sh", "<cmd>wincmd h<CR>")
vim.keymap.set("n", "sj", "<cmd>wincmd j<CR>")
vim.keymap.set("n", "sk", "<cmd>wincmd k<CR>")
vim.keymap.set("n", "sl", "<cmd>wincmd l<CR>")
vim.keymap.set("n", "sH", "<cmd>wincmd H<CR>")
vim.keymap.set("n", "sJ", "<cmd>wincmd J<CR>")
vim.keymap.set("n", "sK", "<cmd>wincmd K<CR>")
vim.keymap.set("n", "sL", "<cmd>wincmd L<CR>")
vim.keymap.set("n", "tt", function()
    local buffer = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_open_win(buffer, true, {
        relative = "editor",
        width = vim.api.nvim_win_get_width(0) - 8,
        height = vim.api.nvim_win_get_height(0) - 2,
        col = 4,
        row = 1,
    })
    vim.api.nvim_command("terminal")
end)
vim.keymap.set("n", "<C-n>", "<cmd>silent 30 Lexplore<CR>")
for i = 0, 9 do
    vim.keymap.set("n", "<M-" .. tostring(i) .. ">", "<cmd>b " .. tostring(i) .. "<CR>")
end
vim.keymap.set("n", "<M-,>", "<cmd>bprevious<CR>")
vim.keymap.set("n", "<M-.>", "<cmd>bnext<CR>")
