local M = {}

function M.config()
  require("gitsigns").setup({
    signs = { add = { text = "+" },}
  })
end

return M
