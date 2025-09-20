local plugins = {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = "false",
		build = ":TSUpdate",
		config = function()
			require("config.treesitter")
		end,
	},
}

return plugins
