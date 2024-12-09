require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {'lua_ls', 'bashls', 'cssls', 'dockerls', 'html', 'ts_ls', 'jsonls', 'remark_ls', 'pylyzer', 'volar', 'yamlls'},
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})
