return {
  {
    "freddiehaddad/feline.nvim",
    opts = {},
    config = function(_, opts)
      -- require('config.feline')
      require('feline').setup()
      require('feline').winbar.setup()
      require('feline').statuscolumn.setup()
    end
  }
}
