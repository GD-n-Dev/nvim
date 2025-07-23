vim.lsp.enable('ts_ls')
vim.lsp.enable('ols')

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
