return {
    'mfussenegger/nvim-lint',
    config = function(_)
        local lint = require('lint')
        vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
            callback = function()
                lint.try_lint()
            end,
        })
    end,
}
