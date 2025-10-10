-- stylua: ignore start
local map = function(lhs, rhs, desc, mode)
	mode = mode or "n"
	vim.keymap.set(mode, lhs, rhs, { desc = desc, silent = true, noremap = true })
end

map("gl", function()
	vim.diagnostic.open_float()
end, "Open Diagnostics in Float")

map("jk", "<Esc>", "Exit Insert Mode", "i")
map("<leader><leader>x", "<cmd>source %<CR>", "Source current file")

-- Write and Quit
map("<leader>q", "<cmd>q<CR>", "Quit")
map("<C-q><C-q>", "<CMD>q!<CR>", "Force quit")
map("<leader>w", "<cmd>w<CR>", "Write")
map("<leader>wq", "<cmd>wq<CR>", "Write and Quit")

-- Split Navigation
-- map("<C-h>", "<C-w><C-h>", "Move Splits Left")
-- map("<C-j>", "<C-w><C-j>", "Move Splits Down")
-- map("<C-k>", "<C-w><C-k>", "Move Splits Up")
-- map("<C-l>", "<C-w><C-l>", "Move Splits Right")

-- Resize with Arrows
map("<Up>", "<CMD>resize -2<CR>", "Resize down")
map("<Down>", "<CMD>resize -2<CR>", "Resize up")
map("<Left>", "<CMD>vertical resize -2<CR>", "Resize Right")
map("<Right>", "<CMD>vertical resize +2<CR>", "Resize Left")

-- Buffers
map("<Tab>", "<CMD>bnext<CR>", "Next buffer")
map("<S-Tab>", "<CMD>bprevious<CR>", "Previous buffer")
map("<leader>x", "<CMD>bdelete!<CR>", "Close buffer") -- Close buffer
map("<leader>b", "<cmd> enew <CR>", "New Buffer") -- New buffer

-- Window Management
map("<leader>o", "<cmd>vsplit<CR>", "Split Vertically")
map("<leader>p", "<cmd>hsplit<CR>", "Split Horizontally")
map("<leader>se", "<C-w>=", "Make Splits Equal") -- Make splits equal
map("<leader>xs", "<CMD>close<CR>", "Close current split") -- Close current split

-- Tabs
map("<leader>to", "<CMD>tabnew<CR>", "New tab") -- new tab
map("<leader>tx", "<CMD>tabclose<CR>", "Close tab") -- close tab
map("<leader>tn", "<CMD>tabn<CR>", "Next tab") -- next tab
map("<leader>tp", "<CMD>tabp<CR>", "Previous tab") -- previous tab

-- Toggle Line Wrapping
map("<leader>lw", "<cmd>set wrap!<CR>", "Toggle Line Wrapping")

-- Stay in visual mode for indenting
map("<", "<gv", "Visual indent <", "v")
map(">", ">gv", "Visual indent >", "v")

-- Delete current character without copying to register
map("x", '"_x', "Delete current character without copying to register")

-- Keep Last yanked when pasting
map("p", '"_dP', "Keep last yanked when pasting", "v")

-- Diagnostic Keymaps
map("[d", function() vim.diagnostic.jump({ count = 1, float = true }) end, "Go to previous diagnostic")
map("]d", function() vim.diagnostic.jump({ count = -1, float = true }) end, "Go to next diagnostic")
map("<leader>df", vim.diagnostic.open_float, "Open diagnostic float")
map("<leader>dq", vim.diagnostic.setloclist, "Diagnostic set location list")

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")


-- stylua: ignore start
vim.keymap.set("n", "<leader>tt", "<cmd>Floaterminal<CR>", { desc = "Open floating window", silent = true, noremap = true })
vim.keymap.set( "t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit insert mode in terminal", silent = true, noremap = true })
-- stylua: ignore end

map("<C-Space>", function()
	require("blink-cmp-avante")
end, "Insert suggestion", "i")
-- stylua: ignore end
