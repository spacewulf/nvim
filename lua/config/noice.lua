require("noice").setup({
  lsp = {
    --override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = false,
      ["vim.lsp.util.stylize_markdown"] = false,
      ["cmp.entry.get_documentation"] = false, -- requires hrsh7th/nvim-cmp
    },
  },
  presets = {
    bottom_search = false,      -- use a classic bottom cmdline for search
    command_palette = true,     -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false,         -- enables input dialog for inc-rename.nvim
    lsp_doc_border = false,     -- add a border to hover docs adn signature help
  },
})
