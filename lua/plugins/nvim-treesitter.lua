local plugins = {
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("config.nvim-treesitter")
		end,
		lazy = false,
		branch = "main",
		build = ":TSUpdate",
	},
}

return plugins
