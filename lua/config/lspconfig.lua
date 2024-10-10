local nvim_lsp = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

local protocol = require("vim.lsp.protocol")
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

mason_lspconfig.setup_handlers {
  function (server_name)
    require("lspconfig")[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
    }
  end,
}

-- Keymaps
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)