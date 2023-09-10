local mason_dir = '/home/madjes/.local/share/nvim/mason/bin/'

return {
    'mhartington/formatter.nvim',
    enabled = true,
    logging = true,
    opts = {
        filetype = {
            ['*'] = function()
                local formatters = require('formatter.filetypes.' .. vim.bo.filetype)
                local registry   = require('mason-registry')
                for key, value in pairs(formatters) do
                    if registry.is_installed(key) then
                        local override = { exec = mason_dir .. key }
                        if type(value) == 'function' then
                            return vim.tbl_extend('force', value(), override)
                        else
                            return vim.tbl_extend('force', value, override)
                        end
                    end
                end
                return require('formatter.filetypes.any').remove_trailing_whitespace()
            end
        }
    },
}
