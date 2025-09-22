return {
	{
		"EdenEast/nightfox.nvim",
		opts = function()
			local nightfox = require("nightfox")

			local is_transparent = true

			local toggle_transparency = function()
				is_transparent = not is_transparent
				nightfox.setup({
					options = {
						transparent = is_transparent,
					},
				})
				vim.cmd("colorscheme carbonfox")
			end
			nightfox.setup({
				options = {
					transparent = is_transparent,
				},
			})
			vim.keymap.set(
				"n",
				"<leader>bg",
				toggle_transparency,
				{ desc = "Toggle background transparency" },
				{ noremap = true, silent = true }
			)
		end,
	},
}
