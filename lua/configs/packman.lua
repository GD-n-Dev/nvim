local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('nvim-treesitter/nvim-treesitter', { ['branch'] = 'master' })
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-vsnip')

Plug('ellisonleao/gruvbox.nvim')

-- -- Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
-- Plug('fatih/vim-go', { ['tag'] = '*' })
--
-- -- Using a non-default branch
-- Plug('neoclide/coc.nvim', { ['branch'] = 'release' })
--
-- -- Use 'dir' option to install plugin in a non-default directory
-- Plug('junegunn/fzf', { ['dir'] = '~/.fzf' })
--
-- -- Post-update hook: run a shell command after installing or updating the plugin
-- Plug('junegunn/fzf', { ['dir'] = '~/.fzf', ['do'] = './install --all' })
--
-- -- Post-update hook can be a lambda expression
-- Plug('junegunn/fzf', { ['do'] = function()
--   vim.fn['fzf#install']()
-- end })
--
-- -- If the vim plugin is in a subdirectory, use 'rtp' option to specify its path
-- Plug('nsf/gocode', { ['rtp'] = 'vim' })
--
-- -- On-demand loading: loaded when the specified command is executed
-- Plug('preservim/nerdtree', { ['on'] = 'NERDTreeToggle' })
--
-- -- On-demand loading: loaded when a file with a specific file type is opened
-- Plug('tpope/vim-fireplace', { ['for'] = 'clojure' })
--
-- -- Unmanaged plugin (manually installed and updated)
-- Plug('~/my-prototype-plugin')

vim.call('plug#end')

-- Color schemes should be loaded after plug#end().
-- We prepend it with 'silent!' to ignore errors when it's not yet installed.
-- vim.cmd('silent! colorscheme seoul256')
vim.cmd('silent! colorscheme gruvbox')
