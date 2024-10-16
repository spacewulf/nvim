require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-tool-installer").setup({
  ensure_installed = {
    "prettier",
    "stylua",
    "isort",
    "pylint",
    "eslint_d",
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
