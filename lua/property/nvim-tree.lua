local M = {}

function M.setup()
  --disable netrw at the very start of your init.lua
  vim.g.loaded = 1
  vim.g.loaded_netrwPlugin = 1

  -- set termguicolors
  vim.opt.termguicolors = true
end

function M.config()
  local api = require "nvim-tree.api"
  require("nvim-tree").setup{

  }

end

return M
