return {
	{
		"spacewulf/floaterminal.nvim",
		config = function()
			require("floaterminal")
		end,
	},
	{
		"spacewulf/oil-addon.nvim",
		opts = {},
		dependencies = { "stevearc/oil.nvim" },
	},
}
