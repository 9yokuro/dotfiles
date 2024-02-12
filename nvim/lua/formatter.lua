vim.api.nvim_create_augroup("formatter", { clear = true })

local function create_autocmd(events, patterns, command)
	vim.api.nvim_create_autocmd(events, {
		group = "formatter",
		pattern = patterns,
		command = ":silent !" .. command .. " %",
	})
end

local formatter = {}

function formatter.setup(settings)
	if settings ~= nil then
		for _, setting in pairs(settings) do
			local events
			if setting.events == nil then
				events = { "VimLeave", "BufWritePost" }
			else
				events = setting.events
			end

			if setting.patterns ~= nil and setting.command ~= nil then
				create_autocmd(events, setting.patterns, setting.command)
			end
		end

		vim.api.nvim_create_user_command("Fmt", function()
			vim.api.nvim_command("silent w")
		end, {})
	end
end

return formatter
