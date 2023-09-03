return function ()
  local configs = require('nvim-treesitter.configs')

  configs.setup {
    highlight = { enable = true },
    indent = { enable = true },
    incremental_selection = { enable = true },
  }
end
