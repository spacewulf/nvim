require("here-term").setup({
  startup_command = "enew",

  mappings = {
    toggle = "<C-;>",
    kill = "<C-S-;>",
  },

  extra_mappings = {
    enable = true,
    escape = "<C-x>",
    left = "<C-w>h",
    down = "<C-w>j",
    up = "<C-w>k",
    right = "<C-w>l",
  },
})
