return {
	{
		"jay-babu/mason-nvim-dap.nvim",
		opts = {
			ensure_installed = { "codelldb", "debugpy" },
			handlers = {},
		},
		event = "VeryLazy",
		dependencies = {
			{
				"mason-org/mason.nvim",
				opts = {},
			},
			{
				"mfussenegger/nvim-dap",
			},
		},
	},
}
