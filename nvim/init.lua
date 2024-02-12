-- Options
-- General
vim.opt.wrap = false
vim.opt.ambiwidth = "single"
vim.opt.clipboard= "unnamed,unnamedplus"
vim.opt.autoread = true
vim.opt.hidden = true
vim.opt.splitright = true
vim.opt.shell = "/bin/zsh"
vim.opt.swapfile = false

-- Indent
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.copyindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.api.nvim_create_augroup("indent", { clear = true })
vim.api.nvim_create_autocmd("VimEnter", {
    pattern = { "*.json", "*.yaml", "*.yml" },
    callback = function()
        vim.opt.tabstop = 2
        vim.opt.shiftwidth = 2
    end,
})

-- Appearance
vim.g.termguicolors = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.laststatus = 0
vim.api.nvim_command("syntax off")
vim.opt.cmdheight = 0

-- Search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

-- Terminal
vim.api.nvim_create_augroup("term", { clear = true })
vim.api.nvim_create_autocmd("TermOpen", {
    callback = function()
        vim.api.nvim_command("startinsert")
        vim.opt.relativenumber = false
        vim.opt.number = false
    end
})

vim.api.nvim_create_autocmd("TermClose", {
    command = "bdelete",
})

-- Default plugins
vim.g.did_indent_on = 1
vim.g.did_install_default_menus = 1
vim.g.did_install_syntax_menu = 1
vim.g.did_load_ftplugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_gzip = 1
vim.g.loaded_man = 1
vim.g.loaded_matchit = 1
vim.g.loaded_matchparen = 1
vim.g.loaded_remote_plugins = 1
vim.g.loaded_shada_plugin = 1
vim.g.loaded_spellfile_plugin = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_tar = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_zip = 1
vim.g.skip_loading_mswin = 1

-- Keymaps
-- General
vim.g.mapleader = ";"

-- Buffer
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

for i = 0, 9 do
    vim.keymap.set("n", "<M-" .. tostring(i) .. ">", "<cmd>b " .. tostring(i) .. "<CR>")
end

vim.keymap.set("n", "<M-,>", "<cmd>bprevious<CR>")
vim.keymap.set("n", "<M-.>", "<cmd>bnext<CR>")

-- Terminal
vim.keymap.set("n", "tt", "<cmd>terminal<CR>")
vim.keymap.set("n", "ts", "<cmd>belowright new<CR><cmd>terminal<CR>")
vim.keymap.set("n", "tv", "<cmd>vsplit<CR><cmd>terminal<CR>")

-- Ntree
vim.keymap.set("n", "<C-n>", "<cmd>silent Lexplore<CR>")
