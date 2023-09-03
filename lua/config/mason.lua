--[[ Config and setup of Mason ]]
local icon = require('nonicons')

return function()
	require("mason").setup({
    ui = {
      border = "shadow",
      icons = {
        package_installed = icon('check-circle-fill') .. ' ',
        package_pending = icon('check-circle') .. ' ',
        package_uninstalled = icon('circle') .. ' ',
      }
    }
  })
  require("mason-lspconfig").setup()
  -- require("mason-lspconfig").setup_handlers {
  --     function (server_name)
  --         require("lspconfig")[server_name].setup {}
  --     end,
  --     ['lua_ls'] = function ()
  --       lsp.lua_ls.setup(lzero.nvim_lua_ls())
  --     end
  -- }
end
