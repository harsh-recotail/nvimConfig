return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.solargraph.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.pyright.setup({
        capabilities = capabilities
      })
      lspconfig.gopls.setup({
       capabilities = capabilities
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, {})
    end,
  },
--   {'VonHeikemen/lsp-zero.vim', branch = 'v4.x'},
--   {'harsh7th/cmp-nvim-lsp'},
--   {'harsh7th/nvim-cmp'},
   {
     'VonHeikemen/lsp-zero.nvim', branch = 'v4.x',
     config = function()
       require('lsp-zero').setup({
         settings = {
             lsp = {
                 border = { 'rounded', 'shadow' },
                 hover = { 'border', 'shadow' },
             },
         },
         on_attach = function(client, bufnr)
             -- Your LSP client specific setup here
             local opts = { buffer = bufnr }
             vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
         end,
         extend_lspconfig = {
             sign_text = true,
             lsp_attach = lsp_attach,
             capabilities = require('cmp_nvim_lsp').default_capabilities(),
         },
       })
     end,
   },
}
