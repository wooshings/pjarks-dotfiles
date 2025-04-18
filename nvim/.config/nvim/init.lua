require("config.keymap")
require("config.options")
require("config.run")
require("plugins")

--  PLUGINS
require("lazy").setup({
	{ import = "plugins.treesitter" },
	{ import = "plugins.telescope" },
	{ import = "plugins.markdown" },
	{ import = "plugins.autosession" },
	{ import = "plugins.yazi" },
	{ import = "plugins.tmux_navigator" },
	{ import = "plugins.lualine" },
	{ import = "plugins.autopairs" },
	{ import = "plugins.nvim-tree" },
	{ import = "plugins.which-key" },
	{ import = "plugins.telescope" },
	{ import = "plugins.mason" }, -- or { import = "plugins.coc" }
	{ import = "plugins.omnisharp" },
	{ import = "plugins.lazydev" },
	{ import = "plugins.conform" },
	{ import = "plugins.cmp" },
	{ import = "plugins.catppuccin" },
	{ import = "plugins.barbar" },
	{ "luisiacc/gruvbox-baby" },
	{ "rebelot/kanagawa.nvim" },
	{ "Biscuit-Theme/biscuit" },
	{ "rose-pine/neovim" },
	{ "tpope/vim-sleuth" },
	{ "sitiom/nvim-numbertoggle" },
	{ "Bilal2453/luvit-meta" },
})
