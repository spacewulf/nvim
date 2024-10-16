require("mason").setup()

require("mason-lspconfig").setup({
  automatic_installation = true,
  ensure_installed = {
    "cssls",
    "eslint",
    "html",
    "jsonls",
    "pyright",
    "tailwindcss",
    "omnisharp",
    "bashls",
    "lua_ls",
    "rust_analyzer",
  }
})

require("mason-tool-installer").setup({
  ensure_installed = {
    "prettier",
    "stylua",
    "isort",
    "black",
    "pylint",
    "eslint_d",
  },
})

require("mason-nvim-dap").setup({
  ensure_installed = { 'codelldb', 'python' },
  handlers = {
    function(config)
      require("mason-nvim-dap").default_setup(config)
    end,
    python = function(config)
      config.adapters = {
        type = "executable",
        command = "python3",
        args = {
          "-m",
          "debugpy.adapter",
        },
      }
      require('mason-nvim-dap').default_setup(config)
    end,
  }
})
