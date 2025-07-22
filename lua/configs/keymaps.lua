vim.g.mapleader = ' '
vim.g.localleader = ' '

vim.keymap.set("n", "<leader>rc", ":e ~/.config/nvim/<CR>", { desc = "Edit Config" })

-- Custom setup
vim.keymap.set("", "<up>", "<nop>")
vim.keymap.set("", "<down>", "<nop>")
vim.keymap.set("", "<left>", "<nop>")
vim.keymap.set("", "<right>", "<nop>")
vim.keymap.set("n", "<Esc>", ":nohl<CR>")

-- SHIFTING GROUPED TEXT UP OR DOWN
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- INDENTING
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- NAVIGATE
vim.keymap.set("n", "<leader>rc", ":e ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>pa", function()
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
    print("File: ", path)
end)
