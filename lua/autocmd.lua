vim.api.nvim_create_autocmd({"BufEnter"}, {pattern = {"*.lua"}, command = "set shiftwidth=2"})
vim.api.nvim_create_autocmd({"BufEnter"}, {pattern = {"*.md"}, command = "set wrap"})
