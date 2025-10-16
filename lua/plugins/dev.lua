return {
	{
		dir = "~/plugins/present.nvim",
		config = function()
			require("present")
		end,
	},
	{
		dir = "~/plugins/oil-addon.nvim",
		opts = {
			keys = {
				close_floating = "<Esc>",
			},
		},
		config = function(_, opts)
			require("oil-addon").setup(opts)
		end,
		dependencies = {
			"stevearc/oil.nvim",
		},
	},
	-- {
	-- 	"spacewulf/floaterminal.nvim",
	-- 	config = function()
	-- 		require("floaterminal")
	-- 	end,
	-- },
}
