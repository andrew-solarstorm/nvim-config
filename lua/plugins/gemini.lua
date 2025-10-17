return {
  "andrew-solarstorm/gemini.nvim",
  opts = {
    model_config = {
      model_id = "gemini-2.5-flash",
    },
    api_key_config = {
      api_key = function()
        local key_file = vim.fn.expand("~/.config/nvim/.api_keys/gemini.key")
        local lines = vim.fn.readfile(key_file)
        return lines[1]
      end,
    },
  },
}
