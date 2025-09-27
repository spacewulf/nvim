return {
	{
		"zapling/mason-conform.nvim",
		dependencies = {
			{
				"mason-org/mason.nvim",
				opts = {},
			},
			{
				"stevearc/conform.nvim",
				opts = {
					formatters_by_ft = {
						lua = { "stylua" },
						python = { "isort", "black" },
						rust = { "ast-grep" },
						bash = { "shellharden" },
						yaml = { "yamlfmt" },
						toml = { "tombi" },
					},
					format_on_save = {
						timeout_ms = 500,
						lsp_format = "fallback",
					},
				},
			},
		},
		opts = {},
	},
}
