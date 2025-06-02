require("config.options")
require("config.keymap")
require("config.run")
require("plugins")

local lsp = "coc"

--  PLUGINS
require("lazy").setup({
	{ import = "plugins." .. lsp },
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
	{ import = "plugins.omnisharp" },
	{ import = "plugins.lazydev" },
	{ import = "plugins.conform" },
	{ import = "plugins.cmp" },
	{ import = "plugins.catppuccin" },
	{ import = "plugins.barbar" },
	{ import = "plugins.love2d" },
	{ "tpope/vim-sleuth" },
	{ "sitiom/nvim-numbertoggle" },
	{ "Bilal2453/luvit-meta" },
})
