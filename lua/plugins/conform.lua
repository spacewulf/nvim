return {
  {
    'stevearc/conform.nvim',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("config.conform")
    end
  }
}
