-- Misc
vim.o.clipboard = 'unnamedplus'
vim.o.mouse = 'a'
vim.o.signcolumn = 'yes'

-- Tab
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true

vim.o.wrap = false
vim.o.swapfile = false
vim.o.backup = false
vim.o.undofile = true
vim.o.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.o.scrolloff = 8
vim.o.updatetime = 50

-- UI Config
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.termguicolors = true
vim.o.showmode = false

-- Searching
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- Netrw
vim.g.netrw_banner = 0

vim.o.background = "dark"

