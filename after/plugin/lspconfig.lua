vim.lsp.enable('ts_ls')
vim.lsp.enable('ols')

local builtin = require('telescope.builtin')

local on_attach = function(_, bufnr)
    local opts = { noremap=true, silent=true, buffer=bufnr }
    
    vim.keymap.set('n', 'gd', builtin.lsp_definitions, opts)
    vim.keymap.set('n', 'gr', builtin.lsp_references, opts)
    vim.keymap.set('n', 'gi', builtin.lsp_implementations, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>w', builtin.diagnostics, opts)
end

vim.lsp.config['ts_ls'] = {
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = { 'javascript', 'typescript', 'js', 'ts', 'jsx', 'tsx', 'javascriptreact', 'typescriptreact' },
    root_markers = { { '.package.json', '.package-lock.json' }, '.git' },
}

vim.lsp.config['ols'] = {
    cmd = { 'ols' },
    filetypes = { 'odin' },
    root_markers = { 'ols.json' , '.git' },
}

local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
    },{
        { name = 'buffer' },
    })
})

cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefi_matching = false }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['ts_ls'].setup {
    capabilities = capabilities,
    on_attach = on_attach
}
require('lspconfig')['ols'].setup {
    capabilities = capabilities,
    on_attach = on_attach
}
