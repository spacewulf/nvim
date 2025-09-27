return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "OXY2DEV/markview.nvim" },
		lazy = false,
		branch = "main",
		build = ":TSUpdate",
	},
	-- {
	-- 	"nvim-treesitter/nvim-treesitter-textobjects",
	-- 	dependencies = { "nvim-treesitter" },
	-- },
}
