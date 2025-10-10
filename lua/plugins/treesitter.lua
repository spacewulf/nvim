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
		end,
	},
	{
		"MeanderingProgrammer/treesitter-modules.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		---@module 'treesitter-modules'
		---@type ts.mod.UserConfig
		opts = {
			sync_install = false,
			auto_install = true,
			incremental_selection = {
				enable = true,
				disable = false,
				keymaps = {
					init_selection = "<Enter>",
					node_incremental = "<Enter>",
					scope_incremental = "false",
					node_decremental = "<Backspace>",
				},
			},
			indent = {
				enable = true,
				disable = false,
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		opts = {
			select = {
				lookahead = true,
				selection_modes = {
					["@parameter.outer"] = "v", -- charwise
					["@function.outer"] = "V", -- linewise
					["@class.outer"] = "<c-v>", -- blockwise
				},
			},
		},
		branch = "main",
	},
}
