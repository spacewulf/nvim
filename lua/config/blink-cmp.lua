local blink = require("blink.cmp").setup({
	keymap = {
		preset = "default",

		["<Tab>"] = { "select_next", "fallback" },
		["<S-Tab>"] = { "select_prev", "fallback" },
		["<C-space>"] = { "show", "show_documentation", "fallback" },
		["<C-e>"] = { "hide", "fallback" },
	},
	sources = {
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
		},
	},
})

blink.sources.default = function(ctx)
	local success, node = pcall(vim.treesitter.get_node)
	if success and node and vim.tbl_contains({ "comment", "line_comment", "block_comment" }, node:type()) then
		return { "buffer" }
	elseif vim.bo.filetype == "lua" then
		return { "lsp", "path" }
	else
		return { "lsp", "path", "snippets", "buffer" }
	end
end
