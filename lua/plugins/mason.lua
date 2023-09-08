local icons = require('nonicons')

return {
    'williamboman/mason.nvim',
    dependencies = { 'williamboman/mason-lspconfig.nvim', 'neovim/nvim-lspconfig' },
    opts = {
        ui = {
            icons = {
                package_installed = icons('check-circle-fill'),
                package_pending = icons('clock-fill'),
                package_uninstalled = icons('x-circle-fill'),
            },
            border = 'rounded',
        },

    },
    config = function(_, opts)
        require("mason").setup(opts)
        require("mason-lspconfig").setup({
            handlers = { 
                function(server)
                    require('lspconfig')[server].setup {}
                end
            }
        })
    end
}
