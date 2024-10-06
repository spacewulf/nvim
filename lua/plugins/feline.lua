local plugins = {
	{
		'freddiehaddad/feline.nvim',
		opts = {}
	},
	{
		'freddiehaddad/feline.nvim',
		opts = {},
		config = function(_, opts)
			require('feline').setup()
			-- require('feline').winbar.setup()
			require('feline').statuscolumn.setup()

		end
	}
}
