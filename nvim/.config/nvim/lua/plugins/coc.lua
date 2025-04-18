return {
  {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
      -- Key mappings for coc.nvim in insert mode
      vim.cmd.set("pumheight=10")
      vim.g.coc_default_semantic_highlight_groups = 1
      vim.keymap.set(
        "i",
        "<TAB>",
        "pumvisible() ? coc#_select_confirm() : '<TAB>'",
        { expr = true, noremap = true, silent = true }
      )
      vim.keymap.set(
        "i",
        "<C-j>",
        [[coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"]],
        { expr = true, noremap = true, silent = true, replace_keycodes = false }
      )
      vim.keymap.set(
        "i",
        "<C-k>",
        [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"]],
        { expr = true, noremap = true, silent = true, replace_keycodes = false }
      )
      -- Disable Enter key for confirming completion
      vim.keymap.set(
        "i",
        "<CR>",
        "pumvisible() ? coc#_cancel() : '<CR>'",
        { expr = true, noremap = true, silent = true }
      )
    end,
  },
}
