local function map(mode, lhs, rhs, description)
	vim.keymap.set(mode, lhs, rhs, { desc = description, silent = true })
end

-- Save
map("n", "<leader>w", "<CMD>update<CR>", "Write current file")
map("n", "<leader>wq", "<CMD>wq<CR>", "Write current file and quit")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>", "Quit")
map("n", "<leader>1q", "<CMD>q!<CR>", "Force Quit")

-- Exit insert mode
map("i", "jk", "<ESC>", "Exit insert mode")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>", "Toggle Neotree")
-- map("n", "<leader>e", "<CMD>Neotree toggle current reveal_force_cwd<CR>", "Toggle Neotree")
map("n", "<leader>nf", "<CMD>Neotree focus<CR>")
map("n", "<leader>b", "<CMD>Neotree toggle show buffers right<CR>")
map("n", "<leader>s", "<CMD>Neotree float git_status<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>", "Create vertical split")
map("n", "<leader>p", "<CMD>split<CR>", "Create horizontal split")

-- Window Navigation
map("n", "<leader>h", "<C-w>h", "Navigate window left")
map("n", "<leader>l", "<C-w>l", "Navigate window right")
map("n", "<leader>k", "<C-w>k", "Navigate window up")
map("n", "<leader>j", "<C-w>j", "Navigate window down")

-- LSP
map("n", "<leader>rn", vim.lsp.buf.rename, "Rename with LSP")

-- nnoremap | :Neotree reveal<cr>
-- nnoremap gd :Neotree float reveal_file=<cfile> reveal_force_cwd<cr>
-- nnoremap <leader>b :Neotree toggle show buffers right<cr>
-- nnoremap <leader>s :Neotree float git_status<cr>
