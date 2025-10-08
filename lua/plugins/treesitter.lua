return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		branch = "main",
		config = function()
			require("nvim-treesitter").install({
				"rust",
				"python",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"c",
				"markdown",
			})
			-- local configs = require("nvim-treesitter.configs")

			-- configs.setup({
			-- 	ensure_installed = { "c", "query", "markdown", "lua", "vim", "vimdoc", "html", "python", "rust" },
			--
			-- 	sync_install = false,
			--
			-- 	highlight = { enable = true },
			--
			-- 	indent = { enable = true },
			--
			-- 	incremental_selection = {
			-- 		enable = true,
			-- 		keymaps = {
			-- 			init_selection = "<Enter>", -- set to false to disable
			-- 			node_incremental = "<Enter>",
			-- 			scope_incremental = "false",
			-- 			node_decremental = "<Backspace>",
			-- 		},
			-- 	},
			-- })
		end,
	},
}
