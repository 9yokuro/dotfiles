vim.api.nvim_create_augroup("vimrc", { clear = true })

-- Format
vim.api.nvim_create_autocmd("VimLeave", {
	group = "vimrc",
	pattern = "*.rs",
	command = ":!rustfmt %",
})
vim.api.nvim_create_autocmd("VimLeave", {
	group = "vimrc",
	pattern = "*.go",
	command = ":!go fmt %",
})
vim.api.nvim_create_autocmd("VimLeave", {
	group = "vimrc",
	pattern = { "*.c", "*.cc", "*.cpp", "*.h", "*.hpp" },
	command = ":!clang-format -i --style='{ IndentWidth: 4, BasedOnStyle: LLVM}' %",
})
vim.api.nvim_create_autocmd("VimLeave", {
	group = "vimrc",
	pattern = "*.py",
	command = ":!black %",
})
vim.api.nvim_create_autocmd("VimLeave", {
	group = "vimrc",
	pattern = "*.py",
	command = ":!isort %",
})
vim.api.nvim_create_autocmd("VimLeave", {
	group = "vimrc",
	pattern = { "*.ex", "*.exs" },
	command = "!mix format %",
})
vim.api.nvim_create_autocmd("VimLeave", {
	group = "vimrc",
	pattern = "*.lua",
	command = ":!stylua %",
})
