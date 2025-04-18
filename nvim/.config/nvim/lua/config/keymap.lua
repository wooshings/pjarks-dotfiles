-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>:bd!<CR>", { desc = "Exit terminal mode", silent = true })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode", silent = true })
-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows

-- Vertical navigation
vim.keymap.set("n", "<S-j>", "5j", { desc = "Jump ten spaces down", silent = true })
vim.keymap.set("n", "<S-k>", "5k", { desc = "Jump ten spaces up", silent = true })

-- Horizontal navigation
vim.keymap.set("n", "<C-i>", "^", { desc = "Jump to start of line", silent = true })
vim.keymap.set("n", "<C-a>", "$", { desc = "Jump to end of line", silent = true })

-- Telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<Return>", { desc = "Find Files", silent = true })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window", silent = true })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window", silent = true })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window", silent = true })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window", silent = true })

-- Better split keymaps
-- vim.keymap.set("n", "<leader>v", "<C-w>v", { desc = "Split window vertically", silent = true })
-- vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Split window horizontally", silent = true })

-- Buffers
vim.keymap.set("n", "tt", ":tabedit<Return><leader>n", { desc = "Create a new tab", silent = true })
vim.keymap.set("n", "te", ":BufferClose!<Return>", { desc = "Close current tab", silent = true })
vim.keymap.set("n", "<tab>", ":BufferNext<Return>", { desc = "Next tab", silent = true })
vim.keymap.set("n", "<S-tab>", ":BufferPrevious<Return>", { desc = "Previous tab", silent = true })
vim.keymap.set("n", "tl", ":BufferMoveNext<Return>", { desc = "Shift tab right", silent = true })

vim.keymap.set("n", "th", ":BufferMovePrevious<Return>", { desc = "Shift tab left", silent = true })
