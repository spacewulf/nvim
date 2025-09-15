return {
	{
		"saghen/blink.cmp",
		lazy = false,
		-- dependencies = "rafamadriz/friendly-snippets",
		dependencies = {
			{
				"L3MON4D3/LuaSnip",
				version = "2.*",
				build = (function()
					if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
						return
					end
					return "make install_jsregexp"
				end)(),
				dependencies = {
					{
						"rafamadriz/friendly-snippets",
						config = function()
							require("luasnip.loaders.from_vscode").lazy_load()
						end,
					},
					{
						"onsails/lspkind.nvim",
					},
				},
			},
			"folke/lazydev.nvim",
		},
		version = "1.*",
		config = function()
			require("config.blink-cmp")
		end,
	},
}
