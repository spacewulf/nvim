local mason = require("mason")
local nvim_lsp = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")
local mason_tool_installer = require("mason-tool-installer")
local mason_nvim_dap = require("mason-nvim-dap")

local protocol = require("vim.lsp.protocol")

mason.setup()

mason_lspconfig.setup({
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

mason_tool_installer.setup({
  ensure_installed = {
    "prettier",
    "stylua",
    "isort",
    "black",
    "pylint",
    "eslint_d",
  },
})

mason_nvim_dap.setup({
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
      -- require('mason-nvim-dap').default_settings(config)
    end,
  }
})

local on_attach = function(client, bufnr)
  --format on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

mason_lspconfig.setup_handlers({
  function(server_name)
    require("lspconfig")[server_name].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })
  end,
})

-- Keymaps
vim.keymap.set("n", "<leader>rr", vim.lsp.buf.rename)
