local iron = require("iron.core")
local view = require("iron.view")
local common = require("iron.fts.common")

iron.setup({
	config = {
		scratch_repl = true,

		repl_definition = {
			python = {
				command = { "python" },
			},
		},

		repl_open_cmd = view.right(60),
	},

	keymaps = {
		send_motion = "<space>rc",
		visual_send = "<space>rc",
		send_file = "<space>rf",
		send_line = "<space>rl",
		send_mark = "<space>rm",
		mark_motion = "<space>rmc",
		mark_visual = "<space>rmc",
		remove_mark = "<space>rmd",
		cr = "<space>r<cr>",
		interrupt = "<space>r<space>",
		exit = "<space>rq",
		clear = "<space>rx",
	},
	highlight = {
		italic = true,
	},
	ignore_blank_lines = true,
})
