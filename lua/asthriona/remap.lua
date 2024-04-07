vim.g.mapleader = " "
-- Go back home!
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Clear search!
vim.keymap.set("n", "<leader>/", ':nohlsearch<CR>', { noremap = true, silent = true })
-- Paste without loosing buffer!
vim.keymap.set("x", "<leader>p", [["_dP]])
