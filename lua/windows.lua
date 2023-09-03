local function open_window(title) 
  local api = vim.api
  local buf = api.nvim_create_buf(false, true)
  -- Get the current UI
  local ui = api.nvim_list_uis()[1]
  local w, h = 50, 10

  -- Create the floating window
  local opts = {
    relative = 'editor',
    width = w,
    height = h,
    col = (ui.width/2) - (w/2),
    row = (ui.height/2) - (h/2),
    anchor = 'NW',
    style = 'minimal',
  }

  local win = api.nvim_open_win(buf, 1, opts)
end


return {
  test = function (title)
    open_window('Go')
  end
}
