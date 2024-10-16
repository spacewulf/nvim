local mason = require("mason")
local nvim_lsp = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")
local mason_tool_installer = require("mason-tool-installer")
local mason_nvim_dap = require("mason-nvim-dap")

local protocol = require("vim.lsp.protocol")


local M = {}
local map = vim.keymap.set

M.on_attach = function(_, bufnr)
  local function opts(desc)
    return { buffer = bufnr, desc = "LSP " .. desc }
  end
end


M.on_init = function(client, _)
  if client.supports_method "textDocument/semanticTokens" then
    client.server_capabilities.semanticTokensProvider = nil
  end
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  },
}

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

mason_lspconfig.setup_handlers({
  function(server_name)
    require("lspconfig")[server_name].setup({
      capabilities = M.capabilities,
      on_attach = M.on_attach,
    })
  end,
})

-- Keymaps
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { desc = "Rename using the current LSP" })
