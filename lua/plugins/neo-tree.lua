return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			-- 	window = {
			-- 		mappings = {
			-- 			["P"] = {
			-- 				"toggle_preview",
			-- 				config = {
			-- 					use_float = false,
			-- 				},
			-- 			},
			-- 		},
			-- 	},
			-- 	filesystem = {
			-- 		filtered_items = {
			-- 			visible = true,
			-- 			hide_dotfiles = false,
			-- 			hide_gitignored = true,
			-- 		},
			-- 	},
			-- 	nesting_rules = {
			-- 		["*.xaml"] = {
			-- 			files = { "%1%.xaml%.cs" },
			-- 			pattern = { "(.*)%.xaml$" },
			-- 		},
			-- 		["docker"] = {
			-- 			pattern = "^dockerfile$",
			-- 			ignore_case = true,
			-- 			files = { ".dockerignore", "docker-compose.*", "dockerfile*" },
			-- 		},
			-- 		[".gitignore"] = {
			-- 			files = {
			-- 				"%.gitattributes",
			-- 				"%.gitmodules",
			-- 				"%.gitmessage",
			-- 				"%.lfsconfig",
			-- 				"%.mailmap",
			-- 				"%.git-blame",
			-- 				"%.git",
			-- 			},
			-- 			pattern = "%.gitignore$",
			-- 		},
			-- 		["Cargo.toml"] = {
			-- 			files = {
			-- 				"%.clippy%.toml",
			-- 				"%.rutsfmt%.toml",
			-- 				"%.Cargo.Bazel%.lock",
			-- 				"Cargo%.lock",
			-- 				"clippy%.toml",
			-- 				"cross%.toml",
			-- 				"insta%.yaml",
			-- 				"rust-toolchain%.toml",
			-- 				"rustfmt%.toml",
			-- 			},
			-- 			pattern = "Cargo%.toml$",
			-- 		},
			-- 	},
			source_selector = {
				winbar = false,
				statusline = true,
				sources = {
					{ source = "filesystem" },
					{ source = "git_status" },
				},
			},
		},
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
