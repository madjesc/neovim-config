return function ()
    local util = require('utils')
    local fzfx = require('fzfx')
    fzfx.setup()

    util.map('n', '<Leader>f', ':FzfxFiles<CR>');
    util.map('n', '<Leader>g', ':FzfxLiveGrep<CR>');
    util.map('n', '<Leader>b', ':FzfxBuffers<CR>');
    -- util.map('n', '<Leader>f', fzfx.files);
    -- util.map('n', '<Leader>g', fzfx.live_grep);
    -- util.map('n', '<Leader>b', fzfx.buffers);
end
