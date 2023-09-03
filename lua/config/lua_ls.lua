local lsp = require('lspconfig')
local lzero = require('lsp-zero');

return function ()
  lsp.lua_ls.setup(lzero.nvim_lua_ls())
end
