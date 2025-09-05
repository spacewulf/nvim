require("neo-tree").setup({
	window = {
		mappings = {
			["P"] = {
				"toggle_preview",
				config = {
					use_float = false,
				},
			},
		},
	},
	filesystem = {
		filtered_items = {
			visible = true,
			hide_dotfiles = false,
			hide_gitignored = false,
		},
	},
	nesting_rules = {
		["*.xaml"] = {
			files = { "%1%.xaml%.cs" },
			pattern = "(.*)%.xaml$",
		},
		["docker"] = {
			pattern = "^dockerfile$",
			ignore_case = true,
			files = { ".dockerignore", "docker-compose.*", "dockerfile*" },
		},
		[".gitignore"] = {
			files = {
				"%.gitattributes",
				"%.gitmodules",
				"%.gitmessage",
				"%.lfsconfig",
				"%.mailmap",
				"%.git-blame",
				"%.git",
			},
			pattern = "%.gitignore$",
		},
		["Cargo.toml"] = {
			files = {
				"%.clippy%.toml",
				"%.rutsfmt%.toml",
				"%.Cargo.Bazel%.lock",
				"Cargo%.lock",
				"clippy%.toml",
				"cross%.toml",
				"insta%.yaml",
				"rust-toolchain%.toml",
				"rustfmt%.toml",
			},
			pattern = "Cargo%.toml$",
		},
	},
})
