require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-tool-installer").setup({
	ensure_installed = {
		"arduino-language-server",
		"prettier",
		"stylua",
		"pyright",
		"omnisharp",
		"bashls",
		"lua_ls",
		"rust_analyzer",
		"codelldb",
	},
})
