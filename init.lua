-- Bootstrap the lazy package manager
vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")
require('lazy').setup({
    { 'nvim-tree/nvim-web-devicons',     dependencies = { 'uga-rosa/utf8.nvim' }, config = require('config.devicons') },
    { 'nvim-treesitter/nvim-treesitter', config = require('config.treesitter') },
    { 'ibhagwan/fzf-lua',                config = require('config.fzf') },
    { 'lewis6991/gitsigns.nvim',         config = require('config.gitsigns') },
    { 'nvim-tree/nvim-tree.lua',         config = require('config.nvim-tree') },
    {
        "kristijanhusak/vim-dadbod-ui",
        dependencies = {
            "tpope/vim-dadbod",
            "kristijanhusak/vim-dadbod-completion",
        },
        config = require('config.dadbod')
    },

    --[[ LSP Plugins ]]
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {
                'hrsh7th/nvim-cmp',
                dependencies = {
                    'hrsh7th/cmp-nvim-lsp',
                    'hrsh7th/cmp-buffer',
                    'hrsh7th/cmp-path',
                    { 'L3MON4D3/LuaSnip', build = 'make install_jsregexp' },
                },
                config = require('config.cmp')
            },
        },
        config = require('config.lspconfig')
    },

    --[[ Colorscheme plugins ]]
    'sainnhe/gruvbox-material',
    'sainnhe/everforest',
    'sainnhe/sonokai',
    'sainnhe/edge',
    'Mofiqul/vscode.nvim',
    'marko-cerovac/material.nvim',
    'ChristianChiarulli/nvcode-color-schemes.vim',
    'xero/miasma.nvim',
    ---@diagnostic disable-next-line: different-requires
}, require('config.lazy'))

-- Nvim extras
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.foldmethod = 'indent'

-- Configure the colorschemes on nvim
vim.opt.termguicolors = true
vim.cmd 'colorscheme gruvbox-material'

-- Indentation config
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- ???
vim.cmd "hi default link gitblame WinSeparator"
