require("blink.cmp").setup({
	keymap = { preset = "default" },
	completion = {
		keyword = { range = "full" },
		accept = { auto_brackets = { enabled = false } },
		menu = {
			auto_show = true,

			draw = {
				columns = {
					{ "label", "label_description", gap = 1 },
					{ "kind_icon", "kind" },
				},
			},
		},
		documentation = { auto_show = true },
		ghost_text = { enabled = true },
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
})
