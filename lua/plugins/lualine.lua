return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"edeneast/nightfox.nvim",
		},
		enabled = true,
		config = function()
			require("config.lualine")
		end,
	},
}
