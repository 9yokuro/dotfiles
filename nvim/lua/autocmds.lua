-- Autocmds
local autocmd = vim.api.nvim_create_autocmd

local cmd = vim.cmd

local group = "init.lua"

local utils = require("utils")

local set_options = utils.set_options

vim.api.nvim_create_augroup(group, {})

autocmd("FileType", {
	group = group,
	pattern = { "json", "nix", "yaml" },
	callback = function()
		local options = {
			"shiftwidth",
			"softtabstop",
			"tabstop",
		}

		set_options(options, 2)
	end,
})

autocmd("QuickFixCmdPost", {
	group = group,
	pattern = { "*grep*", "*make*" },
	callback = function()
		cmd.cwindow({ mods = { silent = true } })
	end,
})

autocmd("TermClose", {
	group = group,
	callback = function()
		cmd.bdelete()
	end,
})

autocmd("TermOpen", {
	group = group,
	callback = function()
		cmd.startinsert()

		local options = {
			"number",
			"relativenumber",
		}

		set_options(options, false)
	end,
})
