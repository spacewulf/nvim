return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		config = function()
			vim.keymap.set(
				"n",
				"<leader>rn",
				vim.lsp.buf.rename,
				{ desc = "LSP Rename", noremap = true, silent = true }
			)
		end,
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			{
				"neovim/nvim-lspconfig",
				config = function()
					local capabilities = require("blink.cmp").get_lsp_capabilities()

					local servers = {
						lua_ls = {
							settings = {
								Lua = {
									completion = {
										callSnippet = "Replace",
									},
								},
							},
						},
					}
					require("mason-lspconfig").setup({
						ensure_installed = {
							"rust_analyzer",
							"lua_ls",
							"bashls",
						},
						automatic_installation = false,
						handlers = {
							function(server_name)
								local server = servers[server_name] or {}
								server.capabilities =
									vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
								require("lspconfig")[server_name].setup(server)
							end,
						},
					})
				end,
			},
		},
	},
}
