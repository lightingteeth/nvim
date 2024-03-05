local M = {}
local keymap = vim.keymap
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

function M.setup()
  keymap.set("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
  keymap.set("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

  -- 确定选择suggestion的按键 
  keymap.set("i", "<S-Enter>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
end

function M.config()
  vim.g.coc_global_extensions = {
    'coc-python',
    'coc-lua',
  }
end

return M
