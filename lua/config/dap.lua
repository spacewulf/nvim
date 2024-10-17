--[[require("mason-nvim-dap").setup({
	automatic_installation = true,
})
]]

local dap = require("dap")
dap.configurations.cpp = {
	{
		name = "Launch file",
		type = "codelldb",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
	},
}

require("dapui").setup()
