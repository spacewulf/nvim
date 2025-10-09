return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		view_options = {
			show_hidden = true,
		},
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	keys = {
		{
			"-",
			"<cmd>Oil --float<CR>",
			"Open Oil in Float",
		},
	},
}
