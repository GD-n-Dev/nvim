local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })

Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate'})

Plug('ThePrimeagen/harpoon', { ['branch'] = 'harpoon2', ['requires'] = {{'nvim-lua/plenary.nvim'}} })

Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')

vim.call('plug#end')

-- Color schemes should be loaded after plug#end().
-- We prepend it with 'silent!' to ignore errors when it's not yet installed.
vim.cmd('silent! colorscheme seoul256')
