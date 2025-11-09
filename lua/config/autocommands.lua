vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("linting-init", {}),
	callback = function()
		require("lint").try_lint()
	end,
})

-- Enable Treesitter Highlighting
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "python", "lua", "rust", "javascript" },
	group = vim.api.nvim_create_augroup("treesitter-init", {}),
	callback = function()
		vim.treesitter.start()
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
	end,
})
