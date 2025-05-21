-- return {
--   "Exafunction/windsurf.nvim",
--   event = "BufEnter",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     "hrsh7th/nvim-cmp",
--   },
--   config = function()
--     require("codeium").setup({})
--   end,
-- }

return {
  -- {
  --   "Exafunction/codeium.vim",
  --   event = "BufEnter",
  --   config = function()
  --     vim.keymap.set("i", "<C-Enter>", function()
  --       return vim.fn["codeium#Accept"]()
  --     end, { expr = true, silent = true })
  --   end,
  -- },
  {
    "Exafunction/windsurf.vim",
    event = "BufEnter",
    config = function()
      vim.keymap.set("i", "<C-Enter>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })
    end,
  },
}
