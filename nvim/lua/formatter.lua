local M = {}

vim.api.nvim_create_augroup("formatter", {})

function M.setup(settings)
    if settings ~= nil then
        for _, setting in pairs(settings) do
            if setting.filetypes ~= nil and setting.command ~= nil then
                vim.api.nvim_create_autocmd({ "VimLeave", "BufWritePost" }, {
                    group = "formatter",
                    pattern = setting.filetypes,
                    command = setting.command,
                })
            end
        end
    end
end

return M
