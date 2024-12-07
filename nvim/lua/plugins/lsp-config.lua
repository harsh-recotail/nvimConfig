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

      -- lspconfig.tsserver.setup({
      --   capabilities = capabilities,
      --   root_dir = "/home/harsh/.nvm/versions"
      -- })

      lspconfig.ts_ls.setup({
        capabilities = capabilities,
        -- cmd = "/home/harsh/.nvm/versions/node/v22.5.1/bin/typescript-language-server --stdio",
        root_dir = "/home/harsh/.nvm/versions/node/v22.5.1/bin/"
      })
      -- lspconfig.solargraph.setup({
      --   capabilities = capabilities
      -- })
      -- lspconfig.html.setup({
      --   capabilities = capabilities
      -- })
      lspconfig.pyright.setup({
        capabilities = capabilities,
        -- root_dir = "/home/harsh/.config/nvim"
      })
      lspconfig.gopls.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.intelephense.setup({
        capabilities = capabilities
      })
      lspconfig.stimulus_ls.setup({
        capabilities = capabilities,
        -- cmd = { "stimulus-language-server", "--stdio" },
        -- root_dir = "/home/harsh/.nvm/versions/node/v22.5.1/bin/"
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
