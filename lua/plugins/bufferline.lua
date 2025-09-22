return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				themable = true,
				numbers = "none",
				diagnostics = "nvim_lsp",
			},
		},
	},
}
