local lsp = require('lspconfig')
local utils = require('utils')


return function()
  lsp.html.setup(require('config.lsp.html'))
  lsp.emmet_ls.setup(require('config.lsp.emmet_ls'))
  lsp.lua_ls.setup(require('config.lsp.lua_ls'))
  lsp.phpactor.setup(require('config.lsp.phpactor'))
  lsp.cssls.setup {}
  lsp.jsonls.setup {}

  utils.map('n', '<Leader>e', vim.diagnostic.open_float)
  utils.map('n', '[d', vim.diagnostic.goto_prev)
  utils.map('n', ']d', vim.diagnostic.goto_next)
  utils.map('n', '<Leader>q', vim.diagnostic.setloclist)

  vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
      -- Enable completion triggered by <c-x><c-o>
      vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

      -- Buffer local mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      local opts = { buffer = ev.buf }
      utils.map('n', 'gD', vim.lsp.buf.declaration, opts)
      utils.map('n', 'gd', vim.lsp.buf.definition, opts)
      utils.map('n', 'K', vim.lsp.buf.hover, opts)
      utils.map('n', 'gi', vim.lsp.buf.implementation, opts)
      utils.map('n', '<C-k>', vim.lsp.buf.signature_help, opts)
      utils.map('n', '<Leader>wa', vim.lsp.buf.add_workspace_folder, opts)
      utils.map('n', '<Leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
      utils.map('n', '<Leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, opts)
      utils.map('n', '<Leader>D', vim.lsp.buf.type_definition, opts)
      utils.map('n', '<Leader>rn', vim.lsp.buf.rename, opts)
      utils.map({ 'n', 'v' }, 'g?', vim.lsp.buf.code_action, opts)
      utils.map('n', 'gr', vim.lsp.buf.references, opts)
      utils.map('n', 'fd', function()
        vim.lsp.buf.format { async = false, timeout_ms = 10000 }
      end, opts)
    end,
  })
end
