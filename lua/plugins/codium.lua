return {
  {
    "Exafunction/windsurf.vim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    event = "BufEnter",
    config = function()
      vim.keymap.set("i", "<C-Enter>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })

      -- add cycle completions
      vim.keymap.set("i", "<C-Tab>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true, silent = true })
    end,
  },
}
