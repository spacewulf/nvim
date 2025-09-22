vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable <Space> in normal and visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- Save
vim.keymap.set("n", "<leader>w", "<CMD>update<CR>", { desc = "Write file" }, opts)
vim.keymap.set("n", "<leader>wq", "<CMD>wq<CR>", { desc = "Write and quit" }, opts)

-- Quit
vim.keymap.set("n", "<leader>q", "<CMD>q<CR>", { desc = "Quit" }, opts)
vim.keymap.set("n", "<leader>1q", "<CMD>q!<CR>", { desc = "Force quit" }, opts)

-- Exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" }, opts)

-- NeoTree
vim.keymap.set("n", "<leader>e", "<CMD>Neotree toggle<CR>", { desc = "Toggle neotree" }, opts)
-- map("n", "<leader>e", "<CMD>Neotree toggle current reveal_force_cwd<CR>", "Toggle Neotree")
vim.keymap.set("n", "<leader>nf", "<CMD>Neotree focus<CR>", { desc = "Neotree Focus" }, opts)
vim.keymap.set(
	"n",
	"<leader>b",
	"<CMD>Neotree toggle show buffers right<CR>",
	{ desc = "Neotree toggle show buffers" },
	opts
)
vim.keymap.set("n", "<leader>s", "<CMD>Neotree float git_status<CR>", { desc = "Neotree float git status" }, opts)

-- New Windows
vim.keymap.set("n", "<leader>o", "<CMD>vsplit<CR>", { desc = "New Vertical Split" }, opts)
vim.keymap.set("n", "<leader>p", "<CMD>split<CR>", { desc = "Create Horizontal Split" }, opts)

-- Window Navigation
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Navigate window left" }, opts)
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Navigate window right" }, opts)
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Navigate window up" }, opts)
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Navigate window down" }, opts)

-- Resize with Arrows
vim.keymap.set("n", "<Up>", "<CMD>resize -2<CR>", { desc = "Resize down" }, opts)
vim.keymap.set("n", "<Down>", "<CMD>resize +2<CR>", { desc = "Resize up" }, opts)
vim.keymap.set("n", "<Left>", "<CMD>vertical resize -2<CR>", { desc = "Resize Right" }, opts)
vim.keymap.set("n", "<Right>", "<CMD>vertical resize +2<CR>", { desc = "Resize Left" }, opts)

-- Buffers
vim.keymap.set("n", "<Tab>", "<CMD>bnext<CR>", { desc = "Next buffer" }, opts)
vim.keymap.set("n", "<S-Tab>", "<CMD>bprevious<CR>", { desc = "Previous buffer" }, opts)
vim.keymap.set("n", "<leader>x", "<CMD>bdelete!<CR>", { desc = "Close buffer" }, opts) -- Close buffer
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", { desc = "New Buffer" }, opts) -- New buffer

-- Window Management
vim.keymap.set("n", "<leader>v", "<C-w>v", { desc = "Split window vertically" }, opts) -- Split window vertically
vim.keymap.set("n", "<leader>h", "<C-w>s", { desc = "Split window horizontally" }, opts) -- Split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make Splits Equal" }, opts) -- Make splits equal
vim.keymap.set("n", "<leader>xs", "<CMD>close<CR>", { desc = "Close current split" }, opts) -- Close current split

-- Tabs
vim.keymap.set("n", "<leader>to", "<CMD>tabnew<CR>", { desc = "New tab" }, opts) -- new tab
vim.keymap.set("n", "<leader>tx", "<CMD>tabclose<CR>", { desc = "Close tab" }, opts) -- close tab
vim.keymap.set("n", "<leader>tn", "<CMD>tabn<CR>", { desc = "Next tab" }, opts) -- next tab
vim.keymap.set("n", "<leader>tp", "<CMD>tabp<CR>", { desc = "Previous tab" }, opts) -- previous tab

-- Toggle Line Wrapping
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", { desc = "Toggle Line Wrapping" }, opts)

-- Stay in visual mode for indenting
vim.keymap.set("v", "<", "<gv", { desc = "Visual indent <" }, opts)
vim.keymap.set("v", ">", ">gv", { desc = "Visual indent >" }, opts)

-- LSP
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename" }, opts)

-- Delete current character without copying to register
vim.keymap.set("n", "x", '"_x', { desc = "Delete current character without copying to register" }, opts)

-- Keep Last yanked when pasting
vim.keymap.set("v", "p", '"_dP', { desc = "Keep last yanked when pasting" }, opts)

-- Diagnostic Keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" }, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" }, opts)
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open diagnostic float" }, opts)
-- vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostic set location list" }, opts)

-- nnoremap | <CMD>Neotree reveal<cr>
-- nnoremap gd <CMD>Neotree float reveal_file=<cfile> reveal_force_cwd<cr>
-- nnoremap <leader>b <CMD>Neotree toggle show buffers right<cr>
-- nnoremap <leader>s <CMD>Neotree float git_status<cr>
