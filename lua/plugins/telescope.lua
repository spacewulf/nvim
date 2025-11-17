return {
	{ -- Fuzzy Finder (files, lsp, etc)
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		enabled = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"ThePrimeagen/harpoon",
			{ -- If encountering errors, see telescope-fzf-native README for installation instructions
				"nvim-telescope/telescope-fzf-native.nvim",

				-- `build` is used to run some command when the plugin is installed/updated.
				-- This is only run then, not every time Neovim starts up.
				build = "make",

				-- `cond` is a condition used to determine whether this plugin should be
				-- installed and loaded.
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
			{ "nvim-telescope/telescope-ui-select.nvim" },

			-- Useful for getting pretty icons, but requires a Nerd Font.
			{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
		},
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown(),
					},
				},
			})

			-- Enable Telescope extensions if they are installed
			pcall(require("telescope").load_extension, "fzf")
			pcall(require("telescope").load_extension, "ui-select")
			pcall(require("telescope").load_extension, "harpoon")

			-- See `:help telescope.builtin`
			local builtin = require("telescope.builtin")
			local map = function(lhs, rhs, desc, mode)
				mode = mode or "n"
				vim.keymap.set(mode, lhs, rhs, { desc = desc, silent = true, noremap = false })
			end

			map("<leader>sh", builtin.help_tags, "[S]earch [H]elp")
			map("<leader>sk", builtin.keymaps, "[S]earch [K]eymaps")
			map("<leader>sf", builtin.find_files, "[S]earch [F]iles")
			map("<leader>ss", builtin.builtin, "[S]earch [S]elect Telescope")
			map("<leader>sw", builtin.grep_string, "[S]earch current [W]ord")
			map("<leader>sg", builtin.git_files, "[S]earch in [G]it")
			map("<leader>sl", builtin.live_grep, "[S]earch by [L]ive Grep")
			map("<leader>sd", builtin.diagnostics, "[S]earch [D]iagnostics")
			map("<leader>sr", builtin.resume, "[S]earch [R]esume")
			map("<leader>s.", builtin.oldfiles, '[S]earc"_yiw Recent Files ("." for repeat)')
			map("<leader><leader>", builtin.buffers, "[ ] Find existing buffers")

			-- Slightly advanced example of overriding default behavior and theme
			vim.keymap.set("n", "<leader>/", function()
				-- You can pass additional configuration to Telescope to change the theme, layout, etc.
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, { desc = "[/] Fuzzily search in current buffer" })

			-- It's also possible to pass additional configuration options.
			--  See `:help telescope.builtin.live_grep()` for information about particular keys
			vim.keymap.set("n", "<leader>s/", function()
				builtin.live_grep({
					grep_open_files = true,
					prompt_title = "Live Grep in Open Files",
				})
			end, { desc = "[S]earch [/] in Open Files" })

			-- Shortcut for searching your Neovim configuration files
			vim.keymap.set("n", "<leader>sn", function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "[S]earch [N]eovim files" })
		end,
	},
}
