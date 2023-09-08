return {
    'mhartington/formatter.nvim',
    config = function (_, opts)
        local formatter = require('formatter')
        formatter.setup(opts)
        -- vim.keymap.set('n', ':Format')
    end
}
