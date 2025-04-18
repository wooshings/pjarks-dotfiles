return {
  {
    "romgrk/barbar.nvim",
    config = function()
      clickable = false
      require 'barbar'.setup {
        icons = {
          button = '', -- Remove the close button
          --separator = { left = '', right = '' },
        }
      }
      vim.g.barbar_auto_setup = false
    end,
    dependencies = {
      "lewis6991/gitsigns.nvim",     -- OPTIONAL: for git status
      "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    opts = {
      icons = {
        button = " ",
        separator = { left = "", right = "" },
      },
    },
    clickable = false,
    version = "^1.0.0", -- optional: only update when a new 1.x version is released
  },
}
