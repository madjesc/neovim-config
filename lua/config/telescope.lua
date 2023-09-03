local util = require('utils')

return function()
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')

    telescope.setup({
        pickers = {
            find_files = {
                theme = "dropdown",
            },
            commands = {
                theme = "dropdown",
            },
            buffers = {
                theme = "ivy",
            },
            live_grep = {
                theme = "dropdown",
            },
            quickfix = {
                theme = "ivy",
            },
        }
    })

    util.map('n', '<Leader>f', builtin.find_files)
    util.map('n', '<Leader>b', builtin.buffers)
    util.map('n', '<Leader>g', builtin.live_grep)
    util.map('n', '<Leader>c', builtin.commands)
    util.map('n', '<Leader>q', builtin.quickfix)
end
