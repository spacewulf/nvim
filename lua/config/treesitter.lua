-- require("nvim-treesitter.configs").setup({
-- 	ensure_installed = {
-- 		"c",
-- 		"lua",
-- 		"vim",
-- 		"vimdoc",
-- 		"query",
-- 		"rust",
-- 		"python",
-- 		"markdown",
-- 		"markdown_inline",
-- 		"regex",
-- 	},
-- 	sync_install = false,
-- 	auto_install = true,
-- 	ignorre_install = { "javascript" },
-- 	highlight = {
-- 		enable = true,
-- 	},
-- })
--
TS = require("nvim-treesitter")

TS.install({ "rust", "javascript", "lua", "python" })
