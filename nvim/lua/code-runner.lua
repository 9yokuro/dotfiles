vim.api.nvim_create_augroup("runner", { clear = true })

local function create_autocmd(patterns, command)
	vim.api.nvim_create_autocmd("VimEnter", {
		group = "runner",
		pattern = patterns,
		callback = function()
			vim.api.nvim_create_user_command("Run", command, {})
		end,
	})
end

local runner = {}

function runner.setup(settings)
	if settings ~= nil then
		for _, setting in pairs(settings) do
			if setting.patterns ~= nil and setting.command ~= nil then
				create_autocmd(setting.patterns, setting.command)
			end
		end
	end
end

return runner
