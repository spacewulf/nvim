return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			transparent_background = false,
			float = {
				transparent = false,
			},
			auto_integrations = true,
			styles = {
				functions = { "italic" },
			},
		},
		config = function(_, opts)
			local catppuccin = require("catppuccin")
			local is_transparent = false
			opts.transparent_background = is_transparent
			opts.float.transparent = is_transparent
			catppuccin.setup(opts)
			vim.cmd("colorscheme catppuccin")

			local toggle_transparency = function()
				is_transparent = not is_transparent
				opts.transparent_background = is_transparent
				opts.float.transparent = is_transparent
				catppuccin.setup(opts)
				vim.cmd("colorscheme catppuccin")
			end
			vim.keymap.set(
				"n",
				"<leader>bg",
				toggle_transparency,
				{ desc = "Toggle Background Transparency", silent = true, noremap = true }
			)
		end,
	},
}
