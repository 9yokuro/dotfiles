-- Utils

local M = {}

function M.set_options(options, value)
	for i = 1, #options do
		vim.opt[options[i]] = value
	end
end

function M.set_global_variables(global_variables, value)
	for i = 1, #global_variables do
		vim.g[global_variables[i]] = value
	end
end

function M.imap(lhs, rhs)
	vim.keymap.set("i", lhs, rhs)
end

function M.nmap(lhs, rhs)
	vim.keymap.set("n", lhs, rhs)
end

function M.set_highlight(groups)
	for group, parameters in pairs(groups) do
		vim.api.nvim_set_hl(0, group, parameters)
	end
end

return M
