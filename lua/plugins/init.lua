local plugins = {
	{
		"nvim-tree/nvim-web-devicons",
	},

  {
    "echasnovski/mini.nvim",
    version = "*",
  },

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function()
			require("config.noice")
		end,
	},

	{
		"windwp/nvim-ts-autotag",
	},

	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("config.neotree")
		end,
	},

	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},

	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
      require 'config.conform'
		end,
	},

	{
		"lewis6991/gitsigns.nvim",
		event = "User FilePost",
		config = function()
			require("config.gitsigns")
		end,
	},

	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			require("config.mason")
		end,
	},


  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
      "jay-babu/mason-nvim-dap.nvim",
    },
    config = function()
      require 'config.dap'
    end,
  },

  {
    "folke/lazydev.nvim",
    opts = {
      library = {
        { path = "luvit-meta/library", words = { "vim%.uv" } },
      },
    },
  },

  { "Bilal2453/luvit-meta", lazy = true },

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile", "User FilePost" },
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require 'config.lspconfig'
    end,
  },

  {
    "williamboman/mason-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
    }
  },
  
  --[[
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile", "User FilePost" },
		config = function()
			require("config.lspconfig")
		end,
	},
  ]]

	{
		"hrsh7th/nvim-cmp",
		event = { "InsertEnter" },
		dependencies = {
			{
				"L3MON4D3/LuaSnip",
				dependencies = "rafamadriz/friendly-snippets",
				opts = { history = true, updateevents = "TextChanged,TextChangedI" },
				config = function()
					require("config.luasnip")
				end,
			},
			--[[
      {
        'cohama/lexima.vim',
        config = function()
          require 'config.lexima'
        end,
      },
      ]]
			{
				"windwp/nvim-autopairs",
				opts = {
					fast_wrap = {},
					disable_filetype = { "TelescopePrompt", "vim" },
				},
				config = function(_, opts)
					require("nvim-autopairs").setup(opts)

					local cmp_autopairs = require("nvim-autopairs.completion.cmp")
					require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
				end,
			},
			{
				"saadparwaiz1/cmp_luasnip",
				"hrsh7th/cmp-nvim-lua",
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				"hrsh7th/cmp-cmdline",
		    "onsails/lspkind.nvim",
			},
		},
		opts = {
			performance = {
				debounce = 0,
				throttle = 0,
			},
		},
		config = function()
			require("config.cmp")
		end,
	},
	
  {
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
		end,
		dependencies = { "neovim/nvim-lspconfig" },
	},

	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{
				"nvim-lua/plenary.nvim",
				"jonarrien/telescope-cmdline.nvim",
				"junegunn/gv.vim",
				"junegunn/fzf.vim",
			},
		},
		config = function()
			require("config.telescope")
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPost", "BufNewFile" },
		cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
		build = ":TSUpdate",
		opts = function()
			return require("config.treesitter")
		end,
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},

	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({ "*" })
		end,
	},

	{
		"EdenEast/nightfox.nvim",
		config = function()
			require("config.colorscheme")
		end,
	},

	{
		"tpope/vim-fugitive",
	},

	{
		"jaimecgomezz/here.term",
		dependencies = {
			{ "mhinz/vim-startify" },
			{ "willothy/flatten.nvim", config = true, priority = 1001 },
		},
		opts = {
			startup_command = "Startify",
		},
		config = function()
			require("config.here")
		end,
	},

	{
		"OXY2DEV/markview.nvim",
		lazy = false,
		config = function()
			require("config.markview")
		end,
	},

	{
		"jake-stewart/multicursor.nvim",
		branch = "1.0",
	},

	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("config.toggleterm")
		end,
	},
}

return plugins
