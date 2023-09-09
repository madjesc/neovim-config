return {
    'nvim-treesitter/nvim-treesitter',
    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = { enable = true },
    },
    config = function (_, opts)
        local configs = require('nvim-treesitter.configs')
        configs.setup(opts)
    end
}
