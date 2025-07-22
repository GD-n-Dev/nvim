vim.lsp.config['ts_ls'] = {
    cmd = { 'typescript-language-server' },
    filetypes = { 'javascript', 'typescript', 'js', 'ts', 'jsx', 'tsx' },
    root_markers = { { '.package.json', '.package-lock.json' }, '.git' },
}

vim.lsp.enable('ts_ls')
