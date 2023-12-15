vim.api.nvim_create_autocmd({"BufEnter"}, {pattern = {"*.lua"}, command = "set shiftwidth=2"})
