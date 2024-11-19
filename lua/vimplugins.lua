local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')


-- Any valid git URL is allowed
Plug('https://github.com/junegunn/vim-easy-align.git')

-- Use 'dir' option to install plugin in a non-default directory
Plug('junegunn/fzf', { ['dir'] = '~/.fzf' })

-- Post-update hook: run a shell command after installing or updating the plugin
Plug('junegunn/fzf', { ['dir'] = '~/.fzf', ['do'] = './install --all' })

-- Post-update hook can be a lambda expression
Plug('junegunn/fzf', { ['do'] = function()
  vim.fn['fzf#install']()
end })

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })

Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate'})

--  Uncomment the two plugins below if you want to manage the language servers from neovim
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('L3MON4D3/LuaSnip')


Plug('ThePrimeagen/harpoon', { ['branch'] = 'harpoon2', ['requires'] = {{'nvim-lua/plenary.nvim'}} })

Plug('nvim-lualine/lualine.nvim')
Plug('nvim-tree/nvim-web-devicons')


vim.call('plug#end')

-- Color schemes should be loaded after plug#end().
-- We prepend it with 'silent!' to ignore errors when it's not yet installed.
-- vim.cmd('silent! colorscheme seoul256')
