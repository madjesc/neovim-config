return function()
    require('gitsigns').setup {
        signcolumn = true,
        current_line_blame = true,
        current_line_blame_opts = {
            delay = 0,
            virt_text = true,
        },
    }
end
