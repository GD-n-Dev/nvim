-- VIM.KEYMAPS
vim.g.mapleader = ' '
vim.keymap.set('n', '<Leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<C-a>', ":lua require('harpoon.mark').add_file()<CR>")
vim.keymap.set('n', '<C-e>', ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
