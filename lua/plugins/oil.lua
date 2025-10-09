return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		view_options = {
			show_hidden = false,
		},
	},
	dependencies = { "nvim-mini/mini.icons" },
	lazy = false,
	config = function(_, opts)
		local oil = require("oil")
		oil.setup(opts)
		local is_hidden = false

		local function toggle_hidden()
			is_hidden = not is_hidden
			opts.view_options.show_hidden = is_hidden
			oil.setup(opts)
		end

		-- stylua: ignore
		-- Keymaps
		vim.keymap.set( "n", "<leader>oth", toggle_hidden, { desc = "Toggle hidden files in Oil", silent = true, noremap = true })
		vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open Oil in Float", silent = true, noremap = true })
	end,
}
