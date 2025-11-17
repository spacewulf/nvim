return {
	{ -- Fuzzy Finder (files, lsp, etc)
		"ibhagwan/fzf-lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {},
		config = function()
			local builtin = require("fzf-lua")
			builtin.register_ui_select()
			local map = function(lhs, rhs, desc, mode)
				mode = mode or "n"
				vim.keymap.set(mode, lhs, rhs, { desc = desc, silent = true, noremap = false })
			end

			-- stylua: ignore start
			map("<leader>sh", function() builtin.helptags() end, "[S]earch [H]elp")
			map("<leader>sk", function() builtin.keymaps() end, "[S]earch [K]eymaps")
			map("<leader>sf", function() builtin.files() end, "[S]earch [F]iles")
			-- map("<leader>ss", function() builtin.builtin end, "[S]earch [S]elect Telescope")
			-- map("<leader>sw", function() builtin.grep_string end, "[S]earch current [W]ord")
			map("<leader>sg", function() builtin.git_files() end, "[S]earch in [G]it")
			map("<leader>sl", function() builtin.live_grep() end, "[S]earch by [L]ive Grep")
			map("<leader>sd", function() builtin.lsp_workspace_diagnostics() end, "[S]earch [D]iagnostics")
			-- map("<leader>sr", function() builtin.resume end, "[S]earch [R]esume")
			map("<leader>s.", function() builtin.oldfiles() end, '[S]earch Recent Files ("." for repeat)')
			map("<leader><leader>", function() builtin.buffers() end, "[ ] Find existing buffers")
			-- stylua: ignore end

			-- Slightly advanced example of overriding default behavior and theme
			vim.keymap.set("n", "<leader>/", function()
				builtin.lgrep_curbuf()
				-- You can pass additional configuration to Telescope to change the theme, layout, etc.
			end, { desc = "[/] Fuzzily search in current buffer" })

			vim.keymap.set("n", "<leader>sn", function()
				builtin.files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "[S]earch [N]eovim files" })
		end,
	},
}
