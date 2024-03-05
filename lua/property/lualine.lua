local M = {}

function M.config()
  require('lualine').setup({
    options = { theme = 'tokyonight' },
    sections = {
      lualine_x = {'encoding', 'filetype'},
    }
  })
end

return M
