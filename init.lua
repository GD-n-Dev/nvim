local vim = vim


vim.g.mapleader = ' '

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
o.smartindent = true

o.wrap = false
o.swapfile = false
o.backup = false
o.undofile = true
o.undodir = os.getenv("HOME") .. "/.nvim/undodir"
o.scrolloff = 8
o.updatetime = 50

-- UI Config
o.number = true
o.relativenumber = true
o.cursorline = true
o.splitbelow = true
o.splitright = true
o.termguicolors = true
o.showmode = false

-- Searching
o.incsearch = true
o.hlsearch = true
o.ignorecase = true
o.smartcase = true

-- Netrw
g.netrw_banner = 0


-- KeyMaps

vim.keymap.set("n", "<leader>rc", ":e ~/.config/nvim/<CR>", { desc = "Edit Config" })

-- Custom setup
vim.keymap.set("", "<up>", "<nop>")
vim.keymap.set("", "<down>", "<nop>")
vim.keymap.set("", "<left>", "<nop>")
vim.keymap.set("", "<right>", "<nop>")
vim.keymap.set("n", "<Esc>", ":nohl<CR>")

-- SHIFTING GROUPED TEXT UP OR DOWN
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- INDENTING
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- NAVIGATE
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>pa", function()
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
    print("File: ", path)
end)

local augroup = vim.api.nvim_create_augroup("UserConfig", {})

vim.api.nvim_create_autocmd("TextYankPost", {
    group = augroup,
    callback = function()
        vim.highlight.on_yank()
    end,
})


