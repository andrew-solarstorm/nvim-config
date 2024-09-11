return {
  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        options = {
          -- transparent = true,
          terminal_colors = false,
          styles = { -- Style to be applied to different syntax groups
            comments = "italic", -- Value is any valid attr-list value `:help attr-list`
            keywords = "italic",
          },
        },
      })
      -- vim.cmd("colorscheme github_dark_default")
      vim.cmd("colorscheme github_dark_tritanopia")
      -- vim.cmd("colorscheme github_dark_high_contrast")
    end,
  },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = true,
  --   opts = {
  --     style = "night",
  --     transparent = true,
  --     styles = {
  --       sidebars = "transparent",
  --       floats = "transparent",
  --     },
  --   },
  -- },
}
