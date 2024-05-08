local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then vim.fn.system({ "git",
    "clone",
    "--filter=blob:none", "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath, }) end vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- the colorscheme should be available when starting Neovim
  { "folke/tokyonight.nvim", lazy = false, priority = 1000, config = require("property/colorscheme").config, },

  -- tmux $ split windwo navigation
  { "christoomey/vim-tmux-navigator", },

  -- LSP context from language server.
  { "utilyre/barbecue.nvim", name = "barbecue", version = "*", dependencies = { "SmiteshP/nvim-navic", "nvim-tree/nvim-web-devicons", }, config = require("property/barbecue").config, },

  -- lualine 
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons", }, config = require("property/lualine").config, },

  -- coc plugin
  { "neoclide/coc.nvim", branch = 'release', init = require("property/coc-nvim").setup, config = require("property/coc-nvim").config, },

  -- file explorer
  { "nvim-tree/nvim-tree.lua", dependencies = {"nvim-tree/nvim-web-devicons"}, init = require("property/nvim-tree").setup, config = require("property/nvim-tree").config},

  -- treesitter
  { 'nvim-treesitter/nvim-treesitter', build = ":TSUpdate", config = require("property/treesitter").config},

  -- auto closing
  { "windwp/nvim-autopairs", event = "InsertEnter", config = require("property/autopairs").config},
  { "windwp/nvim-ts-autotag"},

  -- git sign plugin
  { "lewis6991/gitsigns.nvim", config = require("property/gitsigns").config },

  -- Copilot
  { "github/copilot.vim", config = require("property/copilot").config },

  -- adventurous wildmenu
  { "gelguy/wilder.nvim", config = require("property/wilder").config },

  -- markdown preview
  { "iamcco/markdown-preview.nvim", cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" }, ft = { "markdown" }, build = function() vim.fn["mkdp#util#install"]() end, },

  -- 中文输入法处理
  { "ybian/smartim", config = function() vim.cmd([[let g:smartim_default = "com.apple.keylayout.ABC"]]) end, },

  -- 虚拟多光标
  { "mg979/vim-visual-multi", branch="master"},

  -- indent line
  -- { "lukas-reineke/indent-blankline.nvim", main = "ibl", config = function() require("ibl").setup() end, },
})
