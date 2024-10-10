return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = {
    'nvim-lua/plenary.nvim',
    'jonarrien/telescope-cmdline.nvim',
  },
  keys = {
    { ":", '<CMD>Telescope cmdline<CR>', desc = 'Cmdline' },
    { "<leader><leader>", '<CMD>Telescope cmdline<CR>', { noremap = true, desc = 'Cmdline' } }
  },
  config = function()
    require("config.telescope")
  end,
}
