vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- Enable Treesitter Highlighting
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "python", "lua", "rust", "javascript" },
	callback = function()
		vim.treesitter.start()
	end,
})
