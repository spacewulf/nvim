return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		branch = "main",
		build = ":TSUpdate",
	},
	-- {
	-- 	"nvim-treesitter/nvim-treesitter-textobjects",
	-- 	dependencies = { "nvim-treesitter" },
	-- },
}
