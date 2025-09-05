local blink = require("blink.cmp").setup({
	keymap = {
		preset = "default",

		["<Tab>"] = { "select_next", "fallback" },
		["<S-Tab>"] = { "select_prev", "fallback" },
		["<C-space>"] = { "show", "show_documentation", "fallback" },
		["<C-e>"] = { "hide", "fallback" },
	},
	sources = {
		default = { "lsp", "path", "snippets", "lazydev", "buffer" },
		providers = {
			buffer = {
				opts = {
					get_bufnrs = function()
						return vim.tbl_filter(function(bufnr)
							return vim.bo[bufnr].buftype == ""
						end, vim.api.nvim_list_bufs())
					end,
				},
			},
			lazydev = { module = "lazydev.integrations.blink", score_offset = 100 },
		},
	},
})
