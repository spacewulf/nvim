return {
	"EdenEast/nightfox.nvim",
	opts = {
		options = {
			styles = {
				comments = "italic",
				functions = "italic,bold",
			},
			transparent = true,
		},
	},
	config = function(_, opts)
		local nightfox = require("nightfox")
		nightfox.setup(opts)
	end,
}
