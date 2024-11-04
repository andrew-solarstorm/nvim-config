return {
  -- {
  --   "datsfilipe/min-theme.nvim",
  --   config = function()
  --     require("min-theme").setup({
  --       theme = "dark", -- String: 'dark' or 'light', determines the colorscheme used
  --       transparent = false, -- Boolean: Sets the background to transparent
  --       italics = {
  --         comments = true, -- Boolean: Italicizes comments
  --         keywords = true, -- Boolean: Italicizes keywords
  --         functions = true, -- Boolean: Italicizes functions
  --         strings = true, -- Boolean: Italicizes strings
  --         variables = true, -- Boolean: Italicizes variables
  --       },
  --       overrides = {}, -- A dictionary of group names, can be a function returning a dictionary or a table.
  --     })
  --   end,
  -- },
  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        options = {
          transparent = true,
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
