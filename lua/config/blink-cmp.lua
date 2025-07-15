require("blink.cmp").setup({
	keymap = {
		preset = "default",

		["<Tab>"] = { "select_next", "fallback" },
		["<S-Tab>"] = { "select_prev", "fallback" },
		["<C-space>"] = { "show", "show_documentation", "fallback" },
		["<C-e>"] = { "hide", "fallback" },
	},
	-- completion = {
	-- 	--[[
	-- 	list = {
	-- 		selection = function(ctx)
	-- 			return ctx.mode == "cmdline" and "auto_insert" or "preselect"
	-- 		end,
	-- 	},
	--    ]]
	-- 	--
	-- 	keyword = { range = "full" },
	-- 	accept = { auto_brackets = { enabled = false } },
	-- 	menu = {
	-- 		auto_show = true,
	--
	-- 		draw = {
	-- 			columns = {
	-- 				{ "label", "label_description", gap = 1 },
	-- 				{ "kind_icon", "kind" },
	-- 			},
	-- 		},
	-- 	},
	-- 	documentation = { auto_show = true },
	-- 	ghost_text = { enabled = true },
	-- },
	-- sources = {
	-- 	default = { "lsp", "path", "snippets", "buffer" },
	-- 	providers = {
	-- 		lsp = {
	-- 			name = "lsp",
	-- 			enabled = true,
	-- 			module = "blink.cmp.sources.lsp",
	-- 			score_offset = 1000,
	-- 		},
	-- 		snippets = {
	-- 			name = "snippets",
	-- 			enabled = true,
	-- 			module = "blink.cmp.sources.snippets",
	-- 			score_offset = 900,
	-- 		},
	-- 		path = {
	-- 			name = "path",
	-- 			enabled = true,
	-- 			module = "blink.cmp.sources.path",
	-- 			fallbacks = { "buffer" },
	-- 			opts = {
	-- 				trailing_slash = false,
	-- 				label_trailing_slash = true,
	-- 				get_cwd = function(context)
	-- 					return vim.fn.expand(("#%d:p:h"):format(context.bufnr))
	-- 				end,
	-- 				show_hidden_files_by_default = true,
	-- 			},
	-- 			score_offset = 900,
	-- 		},
	-- 		buffer = {
	-- 			name = "buffer",
	-- 			enabled = true,
	-- 			max_items = 3,
	-- 			module = "blink.cmp.sources.buffer",
	-- 			min_keyword_length = 4,
	-- 		},
	-- 	},
	--[[
		cmdline = function()
			local type = vim.fn.getcmdtype()
			if type == "/" or type == "?" then
				return { "buffer" }
			end
			if type == ":" then
				return { "cmdline" }
			end
			return {}
		end,
    ]]
	--
})
