-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
	-- Colorscheme
	{
		"p1486/kingfisher.nvim",
		lazy = true,
		event = "VimEnter",
		config = function()
			vim.opt.termguicolors = true
			require("kingfisher").setup({
				style = "night",
				transparent = true,
			})
		end,
	},

	-- Lsp
	"neovim/nvim-lspconfig",
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
					"pyright",
					"clangd",
					"gopls",
					"tsserver",
					"html",
					"bashls",
					"jsonls",
					"yamlls",
				},
			})
			require("mason-lspconfig").setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			})
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		lazy = true,
		event = "InsertEnter",
		keys = {
			{
				":",
				mode = "n",
			},
			{
				"/",
				mode = "n",
			},
		},
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/vim-vsnip",
			"hrsh7th/cmp-vsnip",
			"hrsh7th/cmp-nvim-lsp-signature-help",
			"hrsh7th/cmp-nvim-lsp-document-symbol",
			"onsails/lspkind.nvim",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
			{
				"L3MON4D3/LuaSnip",
				build = "make install_jsregexp",
				config = function()
					require("luasnip.loaders.from_vscode").lazy_load()
				end,
			},
		},
		config = function()
			local cmp = require("cmp")

			cmp.setup({
				snippet = {
					expand = function(args)
						vim.fn["vsnip#anonymous"](args.body)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<C-y>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "vsnip" },
					{ name = "nvim_lsp_document_symbol" },
					{ name = "nvim_lsp_signature_help" },
					{ name = "luasnip" },
				}, {
					{ name = "buffer" },
					{ name = "path" },
				}),
			})

			cmp.setup.filetype("gitcommit", {
				sources = cmp.config.sources({
					{ name = "git" },
				}, {
					{ name = "buffer" },
				}),
			})

			cmp.setup.cmdline({ "/", "?" }, {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{ name = "buffer" },
				},
			})

			cmp.setup.cmdline(":", {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources({
					{ name = "path" },
				}, {
					{ name = "cmdline" },
				}),
			})

			local lspkind = require("lspkind")

			cmp.setup({
				formatting = {
					format = lspkind.cmp_format({
						mode = "symbol",
						maxwidth = 50,

						before = function(entry, vim_item)
							return vim_item
						end,
					}),
				},
			})
		end,
	},
	{
		"nvimdev/lspsaga.nvim",
		lazy = true,
		event = "VimEnter",
		config = function()
			require("lspsaga").setup({
				border_style = "single",
				devicon = true,
				title = true,
				symbol_in_winbar = {
					enable = true,
					separator = "›",
					show_file = true,
					folder_level = 1,
				},
			})
		end,
	},
	{
		"folke/trouble.nvim",
		lazy = true,
		keys = {
			{
				"<leader>xx",
				mode = "n",
			},
			{
				"<leader>xw",
				mode = "n",
			},
			{
				"<leader>xd",
				mode = "n",
			},
			{
				"<leader>xq",
				mode = "n",
			},
			{
				"<leader>xl",
				mode = "n",
			},
			{
				"gR",
				mode = "n",
			},
		},
	},

	-- UI
	-- Statusline
	{
		"nvim-lualine/lualine.nvim",
		lazy = true,
		event = "VimEnter",
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "auto",
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = {
						statusline = {},
						winbar = {},
					},
					ignore_focus = {},
					always_divide_middle = true,
					globalstatus = true,
					refresh = {
						statusline = 1000,
						tabline = 1000,
						winbar = 1000,
					},
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = {
						"branch",
						"diff",
						"diagnostics",
					},
					lualine_c = { "filename" },
					lualine_x = {
						"encoding",
						"fileformat",
						"filetype",
						{
							require("lazy.status").updates,
							cond = require("lazy.status").has_updates,
							color = {
								fg = "#ff9e64",
							},
						},
					},
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = { "location" },
					lualine_y = {},
					lualine_z = {},
				},
				tabline = {},
				winbar = {},
				inactive_winbar = {},
				extensions = {},
			})
		end,
	},

	-- Tabline
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
		},
		lazy = true,
		event = "VimEnter",
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {},
		config = function()
			require("barbar").setup({
				animation = true,
				auto_hide = false,
				tabpages = true,
				highlight_inactive_file_icons = false,
			})
		end,
	},

	-- Fuzzy finder
	{

		"nvim-telescope/telescope.nvim",
		lazy = true,
		keys = {
			{
				"<leader>ff",
				mode = "n",
			},
			{
				"<leader>fg",
				mode = "n",
			},
			{
				"<leader>fb",
				mode = "n",
			},
			{
				"<leader>fh",
				mode = "n",
			},
			{
				"<leader><leader>",
				mode = "n",
			},
		},
	},
	{
		"nvim-telescope/telescope-frecency.nvim",
		lazy = true,
		keys = {
			{
				"<leader><leader>",
				mode = "n",
			},
		},
		config = function()
			require("telescope").load_extention("frecency")
		end,
	},

	-- File explorer
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = true,
		keys = {
			{
				"<C-n>",
				"<cmd>NvimTreeToggle<CR>",
				mode = "n",
			},
		},
		config = function()
			require("nvim-tree").setup({
				sort = {
					sorter = "case_sensitive",
				},
				view = {
					width = 30,
				},
				renderer = {
					group_empty = true,
				},
				filters = {
					dotfiles = true,
				},
			})
		end,
	},

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = true,
		event = "VimEnter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"lua",
					"rust",
					"python",
					"markdown",
					"markdown_inline",
					"cpp",
					"c",
					"go",
					"typescript",
					"javascript",
					"html",
					"java",
					"elixir",
					"julia",
					"bash",
				},
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
			})
		end,
	},
	"nvim-treesitter/nvim-treesitter-textobjects",

	{
		"norcalli/nvim-colorizer.lua",
		lazy = true,
		event = "VimEnter",
		config = function()
			vim.opt.termguicolors = true
			require("colorizer").setup()
		end,
	},

	{
		"windwp/nvim-autopairs",
		lazy = true,
		event = "InsertEnter",
		opts = {},
	},
	{
		"kylechui/nvim-surround",
		version = "*",
		lazy = true,
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({})
		end,
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		lazy = true,
		event = "VimEnter",
		config = function()
			require("ibl").setup()
		end,
	},

	{
		"goolord/alpha-nvim",
		lazy = true,
		event = "VimEnter",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	},

	{
		"j-hui/fidget.nvim",
		opts = {},
		lazy = true,
		event = "LspAttach",
	},

	{
		"karb94/neoscroll.nvim",
		lazy = true,
		keys = {
			{
				"<C-f>",
				mode = {
					"n",
					"v",
				},
			},
			{
				"<C-b>",
				mode = {
					"n",
					"v",
				},
			},
			{
				"<C-d>",
				mode = {
					"n",
					"v",
				},
			},
			{
				"<C-u>",
				mode = {
					"n",
					"v",
				},
			},
		},
		config = function()
			require("neoscroll").setup()
		end,
	},

	{
		"nvim-tree/nvim-web-devicons",
		lazy = true,
		event = "VimEnter",
	},
	{
		"nvim-lua/plenary.nvim",
		lazy = true,
		event = "VimEnter",
	},

	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {},
	},

	{
		"p1486/afmt.nvim",
		lazy = true,
		event = "VeryLazy",
		config = function()
			require("afmt").setup({
				{
					patterns = "*.lua",
					command = "stylua",
				},
				{
					patterns = "*.rs",
					command = "rustfmt",
				},
				{
					patterns = "*.go",
					command = "go fmt",
				},
				{
					patterns = "*.py",
					command = "black",
				},
				{
					patterns = "*.py",
					command = "isort",
				},
				{
					patterns = { "*.c", "*.cc", "*.cpp", "*.h", "*.hpp" },
					command = "clang-format -i --style='{ IndentWidth: 4, BasedOnStyle: LLVM}'",
				},
			})
		end,
	},

	{
		"petertriho/nvim-scrollbar",
		lazy = true,
		event = "VimEnter",
		config = function()
			local colors = require("kingfisher.colors")
			require("scrollbar").setup({
				handle = {
					color = colors.line,
				},
			})
		end,
	},

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			{
				"rcarriga/nvim-notify",
				config = function()
					require("notify").setup({
						background_colour = "#000810",
					})
				end,
			},
		},
	},

	{
		"RRethy/vim-illuminate",
		lazy = true,
		event = "VimEnter",
		config = function()
			require("illuminate").configure()
		end,
	},

	{
		"folke/todo-comments.nvim",
		lazy = true,
		event = "VimEnter",
		opts = {},
	},

	{
		"anuvyklack/pretty-fold.nvim",
		lazy = true,
		event = "VimEnter",
		config = function()
			require("pretty-fold").setup()
		end,
	},

	{
		"p1486/arun.nvim",
		lazy = true,
		event = "VimEnter",
		config = function()
			require("arun").setup({
				{
					patterns = "*.lua",
					command = ":!lua %",
				},
				{
					patterns = "*.rs",
					command = ":!rustc % && ./%:t:r && rm %:t:r",
				},
				{
					patterns = "*.go",
					command = ":!go run %",
				},
				{
					patterns = "*.py",
					command = ":!python %",
				},
				{
					patterns = { "*.js", "*.ts" },
					command = ":!node %",
				},
				{
					patterns = "*.c",
					command = ":!clang % && ./a.out && rm a.out",
				},
				{
					patterns = { "*.cc", "*.cpp" },
					command = ":!clang++ % && ./a.out && rm a.out",
				},
			})
		end,
	},
})
