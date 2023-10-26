vim.cmd.colorscheme("habamax")
vim.cmd.highlight({ "Error", "guibg=red" })
vim.cmd.highlight({ "link", "Warning", "Error" })

vim.g.mapleader = ' '
vim.keymap.set('n', '<Leader>pf', '<cmd>Lexplore<cr>')
