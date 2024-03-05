local M = {}

function navic_config()
  require("lspconfig")[server].setup({
    on_attach = function(client, bufnr)
      if client.server_capabilities["documentSymbolProvider"] then
        require("nvim-navic").attach(client, bufnr)
      end
    end,
  })
end

function M.config()
  require("barbecue.ui").toggle(true) 
  require('barbecue').setup {
    theme = 'tokyonight', 
    attach_navic = false,
  }
end

return M
