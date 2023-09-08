local lazyconfig = require('lazy-config')
require('lazy-bootstrap')
require('lazy').setup('plugins', lazyconfig)

-- Change the display
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.cmd 'colorscheme gruvbox-material'

-- Change the linting
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Another options
vim.opt.mouse = 'a'

