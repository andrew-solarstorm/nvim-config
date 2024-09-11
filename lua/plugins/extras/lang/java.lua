return {
  "nvim-java/nvim-java",
  config = false,
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          jdtls = {
            -- your jdtls configuration goes here
          },
        },
        setup = {
          jdtls = function()
            require("java").setup({
              -- your nvim-java configuration goes here
            })
          end,
        },
      },
    },
  },
}

-- return {
--   "nvim-java/nvim-java",
--   config = function() end,
--   dependencies = {
--     "nvim-java/lua-async-await",
--     "nvim-java/nvim-java-core",
--     "nvim-java/nvim-java-test",
--     "nvim-java/nvim-java-dap",
--     "MunifTanjim/nui.nvim",
--     "neovim/nvim-lspconfig",
--     "nvim-java/nvim-java-refactor",
--     "mfussenegger/nvim-dap",
--     {
--       "williamboman/mason.nvim",
--       opts = {
--         registries = {
--           "github:nvim-java/mason-registry",
--           "github:mason-org/mason-registry",
--         },
--       },
--     },
--     {
--       "williamboman/mason-lspconfig.nvim",
--       opts = {
--         handlers = {
--           ["jdtls"] = function()
--             require("java").setup()
--           end,
--         },
--       },
--     },
--   },
-- }
