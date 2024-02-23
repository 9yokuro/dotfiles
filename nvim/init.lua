vim.loader.enable()

local group_name_init = "init.lua"

vim.api.nvim_create_augroup(group_name_init, {})

vim.api.nvim_create_autocmd("VimEnter", {
	group = group_name_init,
	callback = function()
		require("options")

		require("plugins")

		require("keymaps")
	end,
})
