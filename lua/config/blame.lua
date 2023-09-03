return function()
    require('gitblame').setup {
        enabled = true,
        date_format = "%r",
        message_template = "<author> (<date>) <summary>",
        -- display_virtual_text = 0,
        highlight_group = "WinSeparator",
    }

end

