-- Bootstrap the lazy package manager
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
require('lazy').setup({
		{ 'nvim-tree/nvim-web-devicons', dependencies = { 'uga-rosa/utf8.nvim' }, config = require('config.devicons') },
		{ 'nvim-treesitter/nvim-treesitter', config = require('config.treesitter') },
    { 'ibhagwan/fzf-lua', config = require('config.fzf') },

		--[[ LSP Plugins ]]
    { 'williamboman/mason.nvim', dependencies = {
      'williamboman/mason-lspconfig.nvim'
    }, config = require('config.mason') },
    { 'VonHeikemen/lsp-zero.nvim', dependencies = {
			'neovim/nvim-lspconfig',
			'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      { 'L3MON4D3/LuaSnip', build = 'make install_jsregexp' },
    }, config = require('config.lspzero') },

    --[[ Colorscheme plugins ]]
    'sainnhe/gruvbox-material',
    'sainnhe/everforest',
    'sainnhe/sonokai',
    'sainnhe/edge',
    'Mofiqul/vscode.nvim',
    'marko-cerovac/material.nvim',
    'ChristianChiarulli/nvcode-color-schemes.vim',
    'xero/miasma.nvim',
	}, require('config.lazy'))

-- Nvim extras
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'

-- Configure the colorschemes on nvim
vim.opt.termguicolors = true
vim.cmd 'colorscheme material-darker'

-- Indentation config
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
