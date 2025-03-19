local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Place my Plugins below


-- Highlight Syntax
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate"})

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.x' })

-- LSP Config
Plug("neovim/nvim-lspconfig")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("hrsh7th/cmp-buffer")
Plug("hrsh7th/cmp-path")
Plug("hrsh7th/cmp-cmdline")
Plug("hrsh7th/nvim-cmp")
-- AUTO Install LSP servers
Plug("williamboman/mason.nvim")
Plug("williamboman/mason-lspconfig.nvim")

-- Formatting
Plug("m4xshen/autoclose.nvim")
Plug('junegunn/vim-easy-align')

-- Buffers
Plug("ThePrimeagen/harpoon", {
    ["branch"] = "harpoon2",
    ["requires"] = {{ "nvim-lua/plenary.nvim" }}
})

-- LuaLine
Plug("nvim-lualine/lualine.nvim")
Plug("nvim-tree/nvim-web-devicons")

-- Colorscheme
Plug("ellisonleao/gruvbox.nvim")


vim.call('plug#end')

-- Color schemes should be loaded after plug#end().
-- We prepend it with 'silent!' to ignore errors when it's not yet installed.
-- vim.cmd('silent! colorscheme seoul256')
