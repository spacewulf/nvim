vim.diagnostic.config({
	virtual_text = false,
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.encoding = "UTF-8"
vim.opt.ruler = true
vim.opt.title = true
vim.opt.termguicolors = true
vim.opt.hidden = false
vim.opt.confirm = true
vim.opt.winborder = "rounded"

vim.opt.breakindent = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.timeoutlen = 300

vim.opt.undofile = true

vim.opt.scrolloff = 10

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Preview substitutions live, as you type!
vim.o.inccommand = "split"

-- See how neovim will display certian whitespace characters in the editor
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.showmode = false

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"
