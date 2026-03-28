require("config.options")
require("config.keymap")
require("config.run")
require("plugins")

local lsp = "mason"

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
	{ import = "plugins.which-key" },
	{ import = "plugins.mini" },
	{ import = "plugins.telescope" },
	{ import = "plugins.omnisharp" },
	{ import = "plugins.lazydev" },
	{ import = "plugins.conform" },
	{ import = "plugins.cmp" },
	{ import = "plugins.catppuccin" },
	{ import = "plugins.barbar" },
	{ "tpope/vim-sleuth" },
	{ "sitiom/nvim-numbertoggle" },
})
