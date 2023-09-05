local icon = require("nonicons")

return function()
    require('nvim_context_vt').setup({
        enabled = true,
        prefix = icon('grabber')
    })
end
