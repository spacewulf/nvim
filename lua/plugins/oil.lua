return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		view_options = {
			show_hidden = true,
		},
	},
	dependencies = { "nvim-mini/mini.icons" },
	lazy = false,
	config = function(_, opts)
		local oil = require("oil")
		oil.setup(opts)
		local show_hidden = true

		local function toggle_hidden()
			show_hidden = not show_hidden
			opts.view_options.show_hidden = show_hidden
			oil.setup(opts)
		end

		-- stylua: ignore
		-- Keymaps
		vim.keymap.set( "n", "<leader>oth", toggle_hidden, { desc = "Toggle hidden files in Oil", silent = true, noremap = true })
		vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open Oil in Float", silent = true, noremap = true })
	end,
}
