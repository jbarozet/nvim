return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  keys = {
    {
      "<leader>ac",
      "<cmd>CodeCompanionChat Toggle<CR>",
      desc = "Open CodeCompanion Chat",
      mode = { "n" }, -- Assuming normal mode, add other modes if needed
    },
    {
      "<leader>aa",
      "<cmd>CodeCompanionAction<CR>",
      desc = "Open CodeCompanion Action Palette",
      mode = { "n", "v" }, -- Normal and visual modes
    },
  },
  opts = {
    strategies = {
      chat = {
        adapter = "ollama",
      },
      inline = {
        adapter = "ollama",
      },
      agent = {
        adapter = "ollama",
      },
    },
    adapters = {
      ollama = function()
        return require("codecompanion.adapters").extend("ollama", {
          schema = {
            model = {
              default = "deepseek-coder-v2",
            },
          },
        })
      end,
    },
  },
}
