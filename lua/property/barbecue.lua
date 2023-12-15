local M = {}

function M.config()
  require("barbecue.ui").toggle(true) 
  require('barbecue').setup { theme = 'tokyonight', }
end

return M
