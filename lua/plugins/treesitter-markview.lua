return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "OXY2DEV/markview.nvim" },
		lazy = false,
		branch = "main",
		build = ":TSUpdate",
	},
	{
		"nvim-treesittern/nvim-treesitter-textobjects",
		dependencies = { "nvim-treesitter" },
	},
}
