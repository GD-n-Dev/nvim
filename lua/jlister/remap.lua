-- VIM.KEYMAPS
vim.g.mapleader = ' '
vim.keymap.set('n', '<Leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<C-a>', vim.cmd(require("harpoon.mark").add_file()))
