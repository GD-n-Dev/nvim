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
Map("n", "<leader>c", ":nohl<CR>")
Map("n", "<leader>r", ":so %<CR>")
Map("n", "<leader>s", ":w<CR>")
Map("n", "<leader>q", ":qa!<CR>")
Map("n", "<leader>pv", ":Ex<CR>")

-- SHIFTING GROUPED TEXT UP OR DOWN
Map("v", "J", ":m '>+1<CR>gv=gv")
Map("v", "K", ":m '<-2<CR>gv=gv")

-- INDENTING
Map("v", "<", "<gv")
Map("v", ">", ">gv")

-- BUFFER
Map("n", "<leader><TAB>", ":bn<CR>")
Map("n", "<leader><S-TAB>", ":bp<CR>")
