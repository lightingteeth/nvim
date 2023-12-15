local M = {}

function M.config()
  require("nvim-treesitter.configs").setup({
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "lua",
      "python",
      "markdown"
    },
    auto_install = true
  })
end

return M
