require("options")
require("keymaps")
require("formatter").setup({
    {
        filetypes = "*.rs",
        command = ":silent !rustfmt %",
    },
})
