local lsp = require('lspconfig')
local utils = require('utils')

return function()
  local lzero = require('lsp-zero').preset({})
  lzero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lzero.default_keymaps({ buffer = bufnr })
    utils.map('n', 'gq', function()
      vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
    end)
    utils.map('n', 'g?', vim.lsp.buf.code_action)
  end)

  lsp.lua_ls.setup(lzero.nvim_lua_ls())
  lzero.setup()

  local cmp = require('cmp')
  local action = require('lsp-zero').cmp_action()

  cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    window = {
      documentation = cmp.config.window.bordered(),
    },
    mapping = {
      -- `Enter` key to confirm completion
      ['<CR>'] = cmp.mapping.confirm({ select = false }),
      ['<C-j>'] = cmp.mapping.scroll_docs(-4),
      ['<C-k>'] = cmp.mapping.scroll_docs(4),

      -- Ctrl+Space to trigger completion menu
      ['<C-Space>'] = cmp.mapping.complete(),

      -- Navigate between snippet placeholder
      ['<C-f>'] = action.luasnip_jump_forward(),
      ['<C-b>'] = action.luasnip_jump_backward(),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
      { name = 'path' },
    })
  })
end
