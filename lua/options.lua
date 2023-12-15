local opt = vim.opt

-- line number opt.nu = true
opt.nu = true
opt.rnu = true

-- tabs & indentation
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.expandtab = true

-- line wrapping
opt.wrap = false

-- search setting
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- encoding setting
opt.encoding = 'utf-8'

-- scroll setting
opt.scrolloff = 3
opt.sidescrolloff = 5

-- appearance
opt.signcolumn = "yes"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windwos
opt.splitright = true
opt.splitbelow = true
