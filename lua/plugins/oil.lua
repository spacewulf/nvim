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
		vim.keymap.set("n", "q", function()
			local buf_name = vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf())
			local win_id = vim.api.nvim_get_current_win()

			---@param window_id integer
			---@return boolean
			local is_float = function(window_id)
				if vim.api.nvim_win_get_config(window_id).relative ~= "" then
					return true
				end
				return false
			end

			if buf_name:match("oil") and is_float(win_id) then
				vim.api.nvim_win_close(win_id, true)
			end
		end, {
			desc = "Close floating oil with 'q', but do nothing with oil inside normal window.",
			silent = true,
			noremap = true,
		})
	end,
}
