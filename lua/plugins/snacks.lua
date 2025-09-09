local plugins = {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = function()
			return {
				bigfile = { enabled = true },
				dashboard = { enabled = true },
				explorer = { enabled = true },
				indent = { enabled = true },
				input = { enabled = true },
				notifier = {
					enabled = true,
					timeout = 3000,
				},
				picker = { enabled = true },
				quickfile = { enabled = true },
				scope = { enabled = true },
				scroll = { enabled = true },
				statuscolumn = { enabled = true },
				words = { enabled = true },
				styles = {
					notification = {
						wo = { wrap = true },
					},
				},
			}
		end,
		keys = {},
		config = function(_, opts)
			-- Load individual configurations
			local explorer_config = require("config.snacks.explorer")
			local picker_config = require("config.snacks.picker")

			-- Merge configurations
			opts.explorer = vim.tbl_deep_extend("force", opts.explorer or {}, explorer_config)
			opts.picker = vim.tbl_deep_extend("force", opts.picker or {}, picker_config)

			require("snacks").setup(opts)
		end,
	},
}

return plugins
