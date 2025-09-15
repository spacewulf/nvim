local blink = require("blink.cmp").setup({
	keymap = {
		preset = "default",

		["<Tab>"] = { "select_next", "fallback" },
		["<S-Tab>"] = { "select_prev", "fallback" },
		["<C-space>"] = { "show", "show_documentation", "fallback" },
		["<C-e>"] = { "hide", "fallback" },
	},
	completion = {
		menu = {
			draw = {
				components = {
					kind_icon = {
						text = function(ctx)
							local icon = ctx.kind_icon
							if vim.tbl_contains({ "Path" }, ctx.source_name) then
								local dev_icon, _ = require("nvim-web-devicons").get_icon(ctx.label)
								if dev_icon then
									icon = dev_icon
								end
							else
								icon = require("lspkind").symbolic(ctx.kind, {
									mode = "symbol",
								})
							end
							return icon .. ctx.icon_gap
						end,
						highlight = function(ctx)
							local hl = ctx.kind_hl
							if vim.tbl_contains({ "Path" }, ctx.source_name) then
								local dev_icon, dev_hl = require("nvim-web-devicons").get_icon(ctx.label)
								if dev_icon then
									hl = dev_hl
								end
							end
							return hl
						end,
					},
				},
			},
		},
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
