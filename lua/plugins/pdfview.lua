local plugins = {
	{
		"basola21/PDFview",
		lazy = false,
		dependencies = { "nvim-telescope/telescope.nvim" },
		config = function()
			require("config.pdfview")
		end,
	},
}

return plugins
