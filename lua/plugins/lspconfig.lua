return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = function()
			require("mason-lspconfig").setup({})
			vim.keymap.set(
				"n",
				"<leader>rn",
				vim.lsp.buf.rename,
				{ desc = "LSP Rename" },
				{ noremap = true, silent = true }
			)
		end,
		-- opts = {
		-- 	ensure_installed = {
		-- 		"lua_ls",
		-- 		"pyright",
		-- 		"rust_analyzer",
		-- 		"stylua",
		-- 	},
		-- },
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
}
