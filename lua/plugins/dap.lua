local icons = require('devicons')

return {
    'jay-babu/mason-nvim-dap.nvim',
    {
        'rcarriga/nvim-dap-ui',
        dependencies = { 'mfussenegger/nvim-dap' },
        opts = {
            icons = {
                expanded = icons('screen-full'),
                collapsed = icons('screen-normal'),
                current_frame = icons('issue-tracked-by')
            },
            controls = {
                icons = {
                    pause = icons('stop'),
                    play = icons('play'),
                    step_into = icons('triangle-down'),
                    step_over = icons('triangle-right'),
                    step_out = icons('triangle-up'),
                    step_back = icons('triangle-left'),
                    run_last = icons('redo'),
                    terminate = icons('move-to-end') .. ' ',
                    disconnect = icons('sign-out'),
                },
            }
        },
        config = function()
            require('dapui').setup {}
            vim.api.nvim_create_user_command('DapToggle', function()
                require('dapui').toggle()
            end, {})
        end,
    },
}
