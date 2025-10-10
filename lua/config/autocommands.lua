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
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
	end,
})

-- Attempt at sourcing the virtual environment upon opening the terminal
-- vim.api.nvim_create_autocmd("TermEnter", {
-- 	desc = "Source env files when opening a new terminal",
-- 	group = vim.api.nvim_create_augroup("term-open-source", { clear = true }),
-- 	callback = function()
-- 		vim.fn.jobstart("overlay use env_nu/bin/activate.nu")
-- 	end,
-- })
