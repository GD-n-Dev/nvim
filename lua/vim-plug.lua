local vim = vim
local Plug = vim.fn['plug#']


vim.call('plug#begin')

Plug("neovim/nvim-lspconfig")
Plug("hrsh7th/nvim-cmp")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("hrsh7th/cmp-buffer")

Plug("williamboman/mason.nvim")
Plug("williamboman/mason-lspconfig.nvim")

Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate"})

Plug("windwp/nvim-autopairs")
Plug("windwp/nvim-ts-autotag")

Plug("iamcco/markdown-preview.nvim")


vim.call('plug#end')
