--[[
require("blink.cmp").setup({
	sources = {
		prividers = {
			{ "blink.cmp.sources.lsp", name = "LSP" },
			{ "blink.cmp.sources.path", name = "Path", score_offset = 3 },
			{ "blink.cmp.sources.snippets", name = "Snippets", score_offset = -3 },
			{ "blink.cmp.sources.buffer", name = "Buffer", fallback_for = { "LSP" } },
		},
	},
	nerd_font_variant = "normal",
	keymap = { preset = "enter" },
	windows = {
		documentation = {
			min_width = 15,
			max_width = 50,
			max_height = 15,
			border = "rounded",
			auto_show = true,
			auto_show_delay_ms = 200,
		},
		autocomplete = {
			min_width = 10,
			max_height = 10,
			border = "rounded",
			-- selection = "auto_insert", -- PENDING https://github.com/Saghen/blink.cmp/issues/117
			selection = "preselect",
			cycle = { from_top = false }, -- cycle at bottom, but not at the top
			draw = function(ctx)
				-- https://github.com/Saghen/blink.cmp/blob/819b978328b244fc124cfcd74661b2a7f4259f4f/lua/blink/cmp/windows/autocomplete.lua#L285-L349
				-- differentiate LSP snippets from user snippets and emmet snippets
				local icon, source = ctx.kind_icon, ctx.item.source
				local client = source == "LSP" and vim.lsp.get_client_by_id(ctx.item.client_id).name
				if source == "Snippets" or (client == "basics_ls" and ctx.kind == "Snippet") then
					icon = "󰩫"
				elseif source == "Buffer" or (client == "basics_ls" and ctx.kind == "Text") then
					icon = "󰦨"
				elseif client == "emmet_language_server" then
					icon = "󰯸"
				end

				-- FIX highlight for Tokyonight
				local iconHl = vim.g.colors_name:find("carbonfox") and "BlinkCmpKind" or "BlinkCmpKind" .. ctx.kind

				return {
					{
						" " .. ctx.item.label .. " ",
						fill = true,
						hl_group = ctx.deprecated and "BlinkCmpLabelDeprecated" or "BlinkCmpLabel",
						max_width = 45,
					},
					{ icon .. ctx.icon_gap, hl_group = iconHl },
				}
			end,
		},
	},
	kind_icons = {
		Text = "󰊄",
		Method = "󰊕",
		Function = "󰊕",
		Constructor = "",
		Field = "󰇽",
		Variable = "󰂡",
		Class = "⬟",
		Interface = "",
		Module = "",
		Property = "󰜢",
		Unit = "",
		Value = "󰎠",
		Enum = "",
		Keyword = "󰌋",
		Snippet = "󰒕",
		Color = "󰏘",
		Reference = "",
		File = "󰉋",
		Folder = "󰉋",
		EnumMember = "",
		Constant = "󰏿",
		Struct = "",
		Event = "",
		Operator = "󰆕",
		TypeParameter = "󰅲",
	},
})
]]

require("blink.cmp").setup({
	keymap = { preset = "enter" },
})
--[[
	sources = {
		completion = {
			enabled_providers = { "lsp", "path", "snippets", "buffer" },
		},
		providers = {
			lsp = {
				name = "LSP",
				module = "blink.cmp.sources.lsp",
				enabled = true,
				transform_items = nil,
				should_show_items = true,
				max_items = nil,
				min_keyword_length = 0,
				fallback_for = {},
				score_offset = 0,
				override = nil,
			},
			path = {
				name = "Path",
				module = "blink.cmp.sources.path",
				score_offset = 3,
				opts = {
					trailing_slash = false,
					label_trailing_slash = true,
					get_cwd = function(context)
						return vim.fn.expand(("#%d:p:h"):format(context.bufnr))
					end,
					show_hidden_files_by_default = false,
				},
			},
			snippets = {
				name = "Snippets",
				module = "blink.cmp.sources.snippets",
				score_offset = -3,
				opts = {
					friendly_snippets = true,
					search_paths = { vim.fn.stdpath("config") .. "/snippets" },
					global_snippets = { "all" },
					extended_filetypes = {},
					ignored_filetypes = {},
					get_filetype = function(context)
						return vim.bo.filetype
					end,
				},
			},
			buffer = {
				name = "Buffer",
				module = "blink.cmp.sources.buffer",
				fallback_for = { "lsp" },
				opts = {
					get_bufnrs = function()
						return vim.iter(vim.api.nvim_list_wins())
							:map(function(win)
								return vim.api.nvim_win_get_buf(win)
							end)
							:filter(function(buf)
								return vim.bo[buf].buftype ~= "nofile"
							end)
							:totable()
					end,
				},
			},
		},
	},
	fuzzy = {
		use_typo_resistance = true,
		use_frecency = true,
		use_proximity = true,
		max_items = 200,
		sorts = { "label", "kind", "score" },
		prebuilt_binaries = {
			download = true,
			force_version = nil,
			force_system_triple = nil,
		},
	},
	appearance = {
		kind_icons = {
			Text = "󰊄",
			Method = "󰊕",
			Function = "󰊕",
			Constructor = "",
			Field = "󰇽",
			Variable = "󰂡",
			Class = "⬟",
			Interface = "",
			Module = "",
			Property = "󰜢",
			Unit = "",
			Value = "󰎠",
			Enum = "",
			Keyword = "󰌋",
			Snippet = "󰒕",
			Color = "󰏘",
			Reference = "",
			File = "󰉋",
			Folder = "󰉋",
			EnumMember = "",
			Constant = "󰏿",
			Struct = "",
			Event = "",
			Operator = "󰆕",
			TypeParameter = "󰅲",
		},
	},
})
]]
