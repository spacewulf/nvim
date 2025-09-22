return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		opts = function()
			local neotree = require("neo-tree")
			neotree.setup({
				filesystem = {
					filtered_items = {
						visible = true,
						hide_dotfiles = false,
						hide_gitignored = false,
					},
				},
				source_selector = {
					winbar = false,
					statusline = true,
					sources = {
						{ source = "filesystem" },
						{ source = "git_statys" },
					},
				},
			})
			local keymap_opts = { noremap = true, silent = true }
			vim.keymap.set("n", "<leader>e", "<CMD>Neotree toggle<CR>", { desc = "Toggle neotree" }, keymap_opts)
			vim.keymap.set("n", "<leader>nf", "<CMD>Neotree focus<CR>", { desc = "Focus neotree" }, keymap_opts)
			vim.keymap.set(
				"n",
				"<leader>b",
				"<CMD>Neotree toggle show buffers right<CR>",
				{ desc = "Neotree toggle show buffers right" },
				keymap_opts
			)
			vim.keymap.set(
				"n",
				"<leader>s",
				"<CMD>Neotree float git status<CR>",
				{ desc = "Neotree float git status" },
				keymap_opts
			)
		end,

		-- opts = {
		-- 	filesystem = {
		-- 		filtered_items = {
		-- 			visible = true,
		-- 			hide_dotfiles = false,
		-- 			hide_gitignored = false,
		-- 		},
		-- 	},
		-- 	source_selector = {
		-- 		winbar = false,
		-- 		statusline = true,
		-- 		sources = {
		-- 			{ source = "filesystem" },
		-- 			{ source = "git_status" },
		-- 		},
		-- 	},
		-- },
	},
	{
		"antosha417/nvim-lsp-file-operations",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-neo-tree/neo-tree.nvim", -- makes sure that this loads after Neo-tree.
		},
		config = function()
			require("lsp-file-operations").setup()
		end,
	},
	{
		"s1n7ax/nvim-window-picker",
		version = "2.*",
		config = function()
			require("window-picker").setup({
				filter_rules = {
					include_current_win = false,
					autoselect_one = true,
					-- filter using buffer options
					bo = {
						-- if the file type is one of following, the window will be ignored
						filetype = { "neo-tree", "neo-tree-popup", "notify" },
						-- if the buffer type is one of following, the window will be ignored
						buftype = { "terminal", "quickfix" },
					},
				},
			})
		end,
	},
}
-- NeoTree
