return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = {
			{
				"nvim-mini/mini.icons",
				opts = {},
			},
			{
				"catppuccin/nvim",
			},
		},
		opts = {
			options = {
				themable = true,
				numbers = "none",
				diagnostics = "nvim_lsp",
			},
		},
	},
}
