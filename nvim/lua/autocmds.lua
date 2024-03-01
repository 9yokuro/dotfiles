-- Autocmds
local autocmd = vim.api.nvim_create_autocmd

local group = "init.lua"

local opt = vim.opt

vim.api.nvim_create_augroup(group, {})

autocmd("FileType", {
	group = group,
	pattern = { "json", "nix", "yaml" },
	callback = function()
		opt.shiftwidth = 2

		opt.tabstop = 2
	end,
})

autocmd("QuickFixCmdPost", {
	group = group,
	pattern = { "*grep*", "*make*" },
	command = "silent cwindow",
})

autocmd("TermClose", {
	group = group,
	command = "bdelete",
})

autocmd("TermOpen", {
	group = group,
	callback = function()
		vim.cmd.startinsert()

		opt.number = false

		opt.relativenumber = false
	end,
})
