local icons = require('nonicons')


function check_nvim(client)
    local path = client.workspace_folders[1].name
    if not vim.loop.fs_stat(path..'/.luarc.json') and not vim.loop.fs_stat(path..'/.luarc.jsonc') then
      client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
        Lua = {
          runtime = {
            version = 'LuaJIT'
          },
          workspace = {
            checkThirdParty = false,
            library = {
              vim.env.VIMRUNTIME
            }
          }
        }
      })

      client.notify("workspace/didChangeConfiguration", { settings = client.config.settings })
    end
    return true
end

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
                end,
                ['lua_ls'] = function (server)
                    local lsp = require('lspconfig')[server].setup({
                        on_init = check_nvim
                    })
                end
            }
        })
    end
}
