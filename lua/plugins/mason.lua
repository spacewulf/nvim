return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "mfussenegger/nvim-dap",
    "jay-babu/mason-nvim-dap.nvim",
    "nvim-neotest/nvim-nio",
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    require("config.mason")
  end,
}
