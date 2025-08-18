local plugins = {
	{
		"Vigemus/iron.nvim",
		config = function()
			require("config.iron")
		end,
	},
}

return plugins
