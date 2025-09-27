-- return {
-- 	{
-- 		"mfussenegger/nvim-dap",
-- 		opts = function()
-- 			-- local dap = require("dap")
-- 			-- dap.adapters.codelldb = {
-- 			-- 	type = "executable",
-- 			-- 	command = "codelldb",
-- 			-- },
-- 			dap.configurations.cpp = {
-- 				{
-- 					name = "Launch file",
-- 					type = "codelldb",
-- 					request = "launch",
-- 					program = function()
-- 						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
-- 					end,
-- 					cwd = "${workspaceFolder}",
-- 					stopOnEntry = false,
-- 				},
-- 			},
--       dap.configurations.rust = dap.configurations.cpp
-- 		end,
-- 	},
-- }
--

return {
	{
		"jay-babu/mason-nvim-dap.nvim",
		opts = {
			ensure_installed = { "codelldb", "debugpy" },
			handlers = {},
		},
		dependencies = {
			{
				"mason-org/mason.nvim",
				opts = {},
			},
			{
				"mfussenegger/nvim-dap",
			},
		},
	},
}
