local plugins = {
	{
		"EdenEast/nightfox.nvim",
		config = function()
			require "config.nightfox"
		end,
	}
}

return plugins
