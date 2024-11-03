return {
	{
		"saghen/blink.cmp",
		lazy = false,
		dependencies = "rafamadriz/friendly-snippets",
		version = "v0.*",
		config = function()
			require("config.blink-cmp")
		end,
	},
}
