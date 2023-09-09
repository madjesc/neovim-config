return {
    'ibhagwan/fzf-lua',
    opts = {
        fzf_bin = "sk",
        fzf_opts = { ["--no-separator"] = false },
    },
    config = function (_, opts)
        local fzf = require("fzf-lua")
        fzf.setup(opts)
        vim.keymap.set('n', '<Leader>f', fzf.files)
        vim.keymap.set('n', '<Leader>g', fzf.live_grep)
        vim.keymap.set('n', '<Leader>b', fzf.buffers)
    end
}


