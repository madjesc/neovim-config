local util = require('utils')

return function()
    local fzf = require("fzf-lua")
    fzf.setup({
        fzf_bin = "sk",
        fzf_opts = { ["--no-separator"] = false },
    })

    util.map('n', '<Leader>f', fzf.files);
    util.map('n', '<Leader>g', fzf.live_grep);
    util.map('n', '<Leader>b', fzf.buffers);
end
