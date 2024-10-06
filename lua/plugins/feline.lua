local plugins = {
	{
		'freddiehaddad/feline.nvim',
		opts = {}
	},
	{
		'freddiehaddad/feline.nvim',
		opts = {},
		config = function(_, opts)
			require "config.feline"
		end
	}
}

return plugins
