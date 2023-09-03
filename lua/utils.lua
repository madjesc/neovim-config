local utils = {}

function utils.map(mode, bind, to, opts)
  local options = { noremap = true }
  if opts then
    for k, v in pairs(opts) do
      options[k] = v
    end
  end
  vim.keymap.set(mode, bind, to, options)
end

return utils

