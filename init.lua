local vim = vim

vim.g.mapleader = ' '

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


