return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    'hrsh7th/cmp-cmdline',
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets",
    "onsails/lspkind.nvim",
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lsp',
  },
  opts = {
    performance = {
      debounce = 0,
      throttle = 0,
    },
  },
  enabled = true,
  config = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    local luasnip = require("luasnip")
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
    })

    vim.cmd([[
    set completeopt=menuone,noinsert,noselect
    highlight! default link CmpItemKind CmpItemMenuDefault
    ]])
    end,
}
