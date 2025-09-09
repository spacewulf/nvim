return {
	sources = {
		explorer = {
			layout = { preset = "sidebar", preview = false },
			win = {
				list = {
					keys = {
						["<C-x>"] = "split",
						["<C-v>"] = "vsplit",
					},
				},
			},
		},
	},
}
