local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then vim.fn.system({ "git",
    "clone",
    "--filter=blob:none", "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath, })
end vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- the colorscheme should be available when starting Neovim
  { "folke/tokyonight.nvim", lazy = false, priority = 1000, config = require("property/colorscheme").config, },
  
  -- tmux $ split windwo navigation
  { "christoomey/vim-tmux-navigator", },
  
  -- LSP context from language server.
  { "utilyre/barbecue.nvim", name = "barbecue", version = "*", dependencies = { "SmiteshP/nvim-navic", "nvim-tree/nvim-web-devicons", }, config = require("property/barbecue").config, },

  -- lualine 
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons", }, config = require("property/lualine"), },

  -- coc plugin
  { "neoclide/coc.nvim", branch = 'release', },

  -- file explorer
  { "nvim-tree/nvim-tree.lua", dependencies = {"nvim-tree/nvim-web-devicons"}, init = require("property/nvim-tree").setup, config = require("property/nvim-tree").config},
  
  -- treesitter
  { 'nvim-treesitter/nvim-treesitter', build = ":TSUpdate", config = require("property/treesitter").config},

  -- auto closing
  {"windwp/nvim-autopairs", event = "InsertEnter", config = require("property/autopairs").config}, 
  {"windwp/nvim-ts-autotag"},

  -- git sign plugin
  {"lewis6991/gitsigns.nvim", config = require("property/gitsigns").config }
  
})
