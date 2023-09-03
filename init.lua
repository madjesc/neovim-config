-- Bootstrap the lazy package manager
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
require('lazy').setup({
		{ 'nvim-tree/nvim-web-devicons', dependencies = { 
			'uga-rosa/utf8.nvim' 
		}, config = require('setup.devicons') },
		{ 'nvim-treesitter/nvim-treesitter' },

		--[[ LSP Plugins ]]
    { 'VonHeikemen/lsp-zero.nvim', dependencies = {
			'neovim/nvim-lspconfig',
			'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      { 'L3MON4D3/LuaSnip', build = 'make install_jsregexp' },
      { 'williamboman/mason.nvim', config = require('setup.mason') },
    }, config = require('setup.lspzero') },

    --[[ Colorscheme plugins ]]
    'sainnhe/gruvbox-material',
    'sainnhe/everforest',
    'sainnhe/sonokai',
    'sainnhe/edge',
    'Mofiqul/vscode.nvim',
    'marko-cerovac/material.nvim',
    'ChristianChiarulli/nvcode-color-schemes.vim',
    'xero/miasma.nvim',
	}, {
    install = {
      -- install missing plugins on startup. This doesn't increase startup time.
      missing = true,
      -- try to load one of these colorschemes when starting an installation during startup
      colorscheme = { "habamax" },
    },
    ui = {
      border = 'none',
      icons = {

      },

    }
  })

-- Nvim extras
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'

-- Configure the colorschemes on nvim
vim.opt.termguicolors = true
vim.cmd 'colorscheme slate'

-- Indentation config
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
