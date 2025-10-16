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
		-- stylua: ignore
		-- Keymaps
		vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open Oil in Float", silent = true, noremap = true })
		vim.keymap.set("n", "<leader>th", function()
			if vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()):match("oil") then
				require("oil").toggle_hidden()
			end
		end, { desc = "Toggle hidden within oil", silent = true, noremap = true })
	end,
}
