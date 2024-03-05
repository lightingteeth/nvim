local opt = vim.opt

-- number & sign
opt.nu = true
opt.rnu = true
opt.scl = "auto"
opt.stc = '%=%{v:relnum?v:relnum:v:lnum} %s'

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

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windwos
opt.splitright = true
opt.splitbelow = true
