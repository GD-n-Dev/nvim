vim.cmd.highlight({ "link", "Warning", "Error" })

-- VIM.KEYMAPS
vim.g.mapleader = ' '
vim.keymap.set('n', '<Leader>pv', '<cmd>Lexplore<cr>')

-- VIM.OPTIONS may change
vim.opt.relativenumber = true
vim.opt.cmdheight = 4

-- VIM.OPTIONS
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus'
vim.opt.swapfile = false
vim.opt.showmatch = true
-- vim.opt.colorcolumn = '80'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.linebreak = true
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

-- VIM.OPTIONS CPU MEMORY
vim.opt.hidden = true
vim.opt.history = 100
vim.opt.lazyredraw = true
vim.opt.synmaxcol = 240
vim.opt.updatetime = 250