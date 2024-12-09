local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Shorthand notation for GitHub; translates to https://github.com/junegunn/seoul256.vim.git
-- Plug('junegunn/seoul256.vim')

-- Any valid git URL is allowed
-- Plug('https://github.com/junegunn/vim-easy-align.git')

-- Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
-- Plug('fatih/vim-go', { ['tag'] = '*' })

-- Using a non-default branch
-- Plug('neoclide/coc.nvim', { ['branch'] = 'release' })

-- Use 'dir' option to install plugin in a non-default directory
-- Plug('junegunn/fzf', { ['dir'] = '~/.fzf' })

-- Post-update hook: run a shell command after installing or updating the plugin
-- Plug('junegunn/fzf', { ['dir'] = '~/.fzf', ['do'] = './install --all' })

-- Post-update hook can be a lambda expression
-- Plug('junegunn/fzf', { ['do'] = function()
  -- vim.fn['fzf#install']()
-- end })

-- If the vim plugin is in a subdirectory, use 'rtp' option to specify its path
-- Plug('nsf/gocode', { ['rtp'] = 'vim' })

-- On-demand loading: loaded when the specified command is executed
-- Plug('preservim/nerdtree', { ['on'] = 'NERDTreeToggle' })

-- On-demand loading: loaded when a file with a specific file type is opened
-- Plug('tpope/vim-fireplace', { ['for'] = 'clojure' })

-- Unmanaged plugin (manually installed and updated)
-- Plug('~/my-prototype-plugin')

-- Place my Plugins below


-- Highlight Syntax
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate"})

-- LSP Config
Plug("neovim/nvim-lspconfig")
Plug("hrsh7th/nvim-cmp")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("williamboman/mason.nvim")
Plug("williamboman/mason-lspconfig.nvim")

-- AutoClose
Plug("m4xshen/autoclose.nvim")
Plug("windwp/nvim-ts-autotag")

-- Buffers
Plug("nvim-lua/plenary.nvim")
Plug("ThePrimeagen/harpoon", {
    ["branch"] = "harpoon2",
    ["requires"] = {{ "nvim-lua/plenary.nvim" }}
})




vim.call('plug#end')

-- Color schemes should be loaded after plug#end().
-- We prepend it with 'silent!' to ignore errors when it's not yet installed.
-- vim.cmd('silent! colorscheme seoul256')
