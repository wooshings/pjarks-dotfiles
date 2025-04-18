-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

colorscheme = "catppuccin"

-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
-- vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

if vim.env.TMUX ~= nil then
	-- Define an autocommand for BufEnter and FocusGained events
	vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained" }, {
		pattern = "*",
		callback = function()
			local current_file = vim.fn.expand("%:t")
			local tmux_command = string.format("tmux rename-window 'nvim'", current_file)
			vim.fn.system(tmux_command)
		end,
	})

	-- Define an autocommand for the VimLeave event
	vim.api.nvim_create_autocmd("VimLeave", {
		pattern = "*",
		callback = function()
			local shell = vim.env.SHELL or "sh"
			vim.fn.system("tmux set-window-option automatic-rename on")
		end,
	})
end

-- Nvim Tree
vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle Nvim Tree" })

-- Tab Size
local TAB_WIDTH = 4
vim.bo.tabstop = TAB_WIDTH
vim.bo.shiftwidth = TAB_WIDTH
vim.bo.expandtab = true
-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})


colors = {
	blue = "#89b4fa",
	cyan = "#74c7ec",
	crust = "#11111b",
	white = "#cdd6f4",
	red = "#f38ba8",
	violet = "#cba6f7",
	surface = "#313244",
	base = "#1e1e2e",
}

bubbles_theme = {
	normal = {
		a = { fg = colors.crust, bg = colors.blue },
		b = { fg = colors.blue, bg = colors.surface },
		c = { fg = colors.white },
	},

	insert = { a = { fg = colors.crust, bg = colors.green } },
	visual = { a = { fg = colors.crust, bg = colors.violet } },
	replace = { a = { fg = colors.crust, bg = colors.red } },

	inactive = {
		a = { fg = colors.white, bg = colors.crust },
		b = { fg = colors.white, bg = colors.crust },
		c = { fg = colors.white },
	},
}
