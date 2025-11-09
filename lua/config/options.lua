local opt = vim.opt
-- vim.diagnostic.config({
-- 	virtual_text = false,
-- 	virtual_lines = true,
-- })

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.have_nerd_font = true

opt.number = true
opt.relativenumber = true
opt.smarttab = true
opt.smartindent = true
opt.autoindent = true
opt.cursorline = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.encoding = "UTF-8"
opt.ruler = true
opt.title = true
opt.termguicolors = true
opt.hidden = false
opt.confirm = true
opt.winborder = "rounded"
opt.whichwrap:append "<>[]hl"

opt.breakindent = true

opt.splitright = true
opt.splitbelow = true

opt.timeoutlen = 300

opt.undofile = true

opt.scrolloff = 10

vim.schedule(function()
	opt.clipboard = "unnamedplus"
end)

-- Preview substitutions live, as you type!
opt.inccommand = "split"

-- See how neovim will display certian whitespace characters in the editor
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

opt.showmode = false

opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = "yes"
