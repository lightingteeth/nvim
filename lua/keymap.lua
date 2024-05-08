local keymap = vim.keymap -- for conciseness

vim.g.mapleader = " "
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<C-t>", ":NvimTreeToggle <Enter>", {silent = true})
keymap.set("n", "<D-s>", ":w <Enter>", {silent = true})

