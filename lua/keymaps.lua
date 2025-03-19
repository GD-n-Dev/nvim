function Map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

-- Custom setup
Map("", "<up>", "<nop>")
Map("", "<down>", "<nop>")
Map("", "<left>", "<nop>")
Map("", "<right>", "<nop>")
Map("n", "<Esc>", ":nohl<CR>")

-- SHIFTING GROUPED TEXT UP OR DOWN
Map("v", "J", ":m '>+1<CR>gv=gv")
Map("v", "K", ":m '<-2<CR>gv=gv")

-- INDENTING
Map("v", "<", "<gv")
Map("v", ">", ">gv")

-- NAVIGATE
Map("n", "<leader>pv", ":Ex<CR>")
Map("n", "<C-d>", "<C-d>zz")
Map("n", "<C-u>", "<C-u>zz")
Map("n", "n", "nzzzv")
Map("n", "N", "Nzzzv")

Map("n", "<C-b>", ":!odin run .<CR>")

-- Diagnostics
Map("n", "<leader>]", vim.diagnostic.goto_next)
Map("n", "<leader>[", vim.diagnostic.goto_prev)

-- Markdown open to browser
Map("n", "<leader>md", function ()
    local file = vim.fn.expand('%')
    print(file)
    vim.cmd("!start "..file)
end)



