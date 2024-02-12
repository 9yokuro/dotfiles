require("options")
require("keymap")

require("colorscheme").setup({
    transparent = true
})

require("formatter").setup({
    {
        patterns = "*.lua",
        command = "stylua",
    },
    {
        patterns = "*.rs",
        command = "rustfmt",
    },
    {
        patterns = "*.go",
        command = "go fmt",
    },
    {
        patterns = "*.py",
        command = "black",
    },
    {
        patterns = "*.py",
        command = "isort",
    },
    {
        patterns = { "*.c", "*.cc", "*.cpp", "*.h", "*.hpp" },
        command = "clang-format -i --style='{ IndentWidth: 4, BasedOnStyle: LLVM}'",
    },

})

require("code-runner").setup({
    {
        patterns = "*.lua",
        command = ":!lua %",
    },
    {
        patterns = "*.rs",
        command = ":!rustc % && ./%:t:r && rm %:t:r",
    },
    {
        patterns = "*.go",
        command = ":!go run %",
    },
    {
        patterns = "*.py",
        command = ":!python %",
    },
    {
        patterns = { "*.js", "*.ts" },
        command = ":!node %",
    },
    {
        patterns = "*.c",
        command = ":!clang % && ./a.out && rm a.out",
    },
    {
        patterns = { "*.cc", "*.cpp" },
        command = ":!clang++ % && ./a.out && rm a.out",
    },
})
