local vim = vim
local g = vim.g
local o = vim.opt

-- Misc
o.clipboard = 'unnamedplus'
o.completeopt = {'menu', 'menuone', 'noselect'}
o.mouse = 'a'
o.signcolumn = 'yes'

-- Tab
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

-- UI Config
o.number = true
o.relativenumber = true
o.cursorline = true
o.splitbelow = true
o.splitright = true
-- o.termguicolors = true
-- o.showmode = false

-- Searching
o.incsearch = true
o.hlsearch = true
o.ignorecase = true
o.smartcase = true

-- Netrw
-- g.netrw_banner = 0
