return function()
    require 'azy'.setup {
        preview = false,
        debug = false,
        mappings = {
            ["<Up>"] = "prev",
            ["<Down>"] = "next",
            ["<CR>"] = "confirm",
            ["<C-V>"] = "confirm_vsplit",
            ["<C-H>"] = "confirm_split",
            -- ["<ESC>"] = "exit"

            -- Normal mode mapping are not configurable:
            -- <ESC>: exits without confirm
        },
    }

    -- If you want to enable the vim.ui.select integration too
    vim.ui.select = require 'azy.builtins'.select
end
