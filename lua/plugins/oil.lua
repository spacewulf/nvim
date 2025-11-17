return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		view_options = {
			show_hidden = false,
		},
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	config = function(_, opts)
		local oil = require("oil")
		oil.setup(opts)

		local is_float = function(window_id)
			return vim.api.nvim_win_get_config(window_id).relative ~= ""
		end

		local function close_floating()
			local buf_name = vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf())
			local win_id = vim.api.nvim_get_current_win()

			if buf_name:match("oil") and is_float(win_id) then
				vim.api.nvim_win_hide(win_id)
			end
		end

		-- stylua: ignore
		-- Keymaps
		vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open Oil in Float", silent = true, noremap = true })
		vim.keymap.set("n", "<Esc>", function()
			close_floating()
		end)
		vim.keymap.set("n", "<leader>th", function()
			if vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()):match("oil") then
				require("oil").toggle_hidden()
			end
		end, { desc = "Toggle hidden within oil", silent = true, noremap = true })
	end,
}
