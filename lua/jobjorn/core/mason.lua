
require('mason').setup()

require('mason-lspconfig').setup({
  ensure_installed = { 'lua_ls', 'rust_analyzer', 'eslint', 'pyright' },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})

require('mason-tool-installer').setup({
  ensure_installed = { 'prettier', 'stylua', 'isort', 'black' },
})
