--[[ Config and setup of Mason ]]
local icon = require('nonicons')

return function()
	require("mason").setup({
    ui = {
      border = "shadow",
      icons = {
        package_installed = icon('check-circle-fill') .. ' ',
        package_pending = icon('check-circle') .. ' ',
        package_uninstalled = icon('circle') .. ' ',
      }
    }
  })
end
