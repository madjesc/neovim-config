local icons = require('devicons')

return {
    install = {
        colorscheme = { 'gruvbox-material' },
    },

    ui = {
        icons = {
            cmd = icons('command-palette'),
            config = icons('gear'),
            event = icons('calendar'),
            ft = icons('file-code'),
            init = icons('tools'),
            import = icons('package-dependencies'),
            keys = icons('key'),
            lazy = icons('stopwatch') .. ' ',
            loaded = icons('package'),
            not_loaded = icons('diamond'),
            plugin = icons('plug'),
            runtime = icons('rocket'),
            source = icons('code'),
            start = icons('gear'),
            task = icons('zap'),
            list = {
                icons('dot-fill'),
                icons('chevron-right'),
                icons('star-fill'),
                icons('trash'),
            },
        },
        border = 'rounded',
    },

}
