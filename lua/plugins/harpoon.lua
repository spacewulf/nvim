return {
	"ThePrimeagen/harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		vim.keymap.set("n", "<leader>a", function()
			require("harpoon.mark").add_file()
		end)
		vim.keymap.set("n", "<C-e>", function()
			require("harpoon.ui").toggle_quick_menu()
		end)
		vim.keymap.set("n", "<A-h>", function()
			require("harpoon.ui").nav_file(1)
		end, { desc = "Navigate to file with Harpoon", silent = true, noremap = true })
		vim.keymap.set("n", "<A-j>", function()
			require("harpoon.ui").nav_file(2)
		end, { desc = "Navigate to file with Harpoon", silent = true, noremap = true })
		vim.keymap.set("n", "<A-k>", function()
			require("harpoon.ui").nav_file(3)
		end, { desc = "Navigate to file with Harpoon", silent = true, noremap = true })
		vim.keymap.set("n", "<A-l>", function()
			require("harpoon.ui").nav_file(4)
		end, { desc = "Navigate to file with Harpoon", silent = true, noremap = true })
	end,
}
