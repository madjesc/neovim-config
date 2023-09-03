local lsp = require('lspconfig')
local commands = require('cmds.phpactor')

return function()
  lsp.phpactor.setup({
    init_options = {
    },
  })

  commands({
  })
end
