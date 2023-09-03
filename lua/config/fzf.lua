local util = require('utils')

return function ()
  local fzf = require("fzf-lua")
  fzf.setup({ });
  util.map('n', '<Leader>f', fzf.files);
  util.map('n', '<Leader>w', fzf.live_grep);
  util.map('n', '<Leader>b', fzf.buffers);
end
