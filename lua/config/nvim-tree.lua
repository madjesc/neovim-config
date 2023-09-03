local icon = require('nonicons')
local utils = require('utils')

return function ()
  local tree = require('nvim-tree')
  vim.g.loaded = 1
  vim.g.loaded_netrwPlugin = 1
  tree.setup({
    diagnostics = {
      enable = false,
      show_on_dirs = false,
      debounce_delay = 50,
      icons = {
        hint = icon('light-bulb'),
        info = icon('info'),
        warning = icon('alert'),
        error = icon('x-circle'),
      },
    },
    renderer = {
      indent_markers = {
        enable = true,
        inline_arrows = true,
        icons = {
          corner = "└",
          edge = "│",
          item = "│",
          bottom = "─",
          none = " ",
        },
      },
      icons = {
        webdev_colors = true,
        git_placement = "before",
        padding = " ",
        symlink_arrow = icon('arrow-right') .. ' ',
        glyphs = {
          default = icon('file'),
           symlink = icon('folder-symlink'),
           bookmark = icon('bookmark'),
           folder = {
            arrow_closed = icon('chevron-right'),
            arrow_open = icon('chevron-down'),
            default = icon('file-directory-fill'),
            open = icon('file-directory-open-fill'),
            empty = icon('file-directory'),
            empty_open = icon('file-directory-open-fill'),
            symlink = icon('file-submodule'),
            symlink_open = icon('file-directory-open-fill'),
          },
          git = {
            unstaged = icon('diff'),
            staged = icon('diff-added'),
            unmerged = icon('git-compare'),
             renamed = icon('diff-renamed'),
             untracked = icon('diff-modified'),
             deleted = icon('diff-removed'),
             ignored = icon('diff-ignored'),
          },
        },
      },
    },
    view = {
      adaptive_size = false,
      width = 40,
    },
    actions = {
      open_file = {
        resize_window = false,
      },
    },
  })

  utils.map('n', '<C-b>', ':NvimTreeToggle<CR>')
end




