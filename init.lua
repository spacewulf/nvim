vim.diagnostic.config({
	virtual_text = false,
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.encoding = "UTF-8"
vim.opt.ruler = true
vim.opt.title = true
vim.opt.termguicolors = true
vim.opt.hidden = false
vim.opt.confirm = true

-- Enable break indent
vim.opt.breakindent = true

-- Configure how new splits should be opened
vim.opt.splitright = true

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Save undo history
vim.opt.undofile = true

-- Minimum number of lines to keep on screen above and below the cursor
vim.opt.scrolloff = 10

-- See how neovim will display certian whitespace characters in the editor
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Sync clipboard with OS and load after UiEnter because it can increase startup-speed
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Hide mode since it's already shown on the statusline
vim.opt.showmode = false

-- Case-insensitive searching unless \C or one or more capital letters is in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

require("config.keymaps")
require("config.lazy")
require("config.colorscheme")
require("config.autocommands")
