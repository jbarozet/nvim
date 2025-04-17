return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  keys = {
    { "<leader>a", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Open CodeCompanion Chat" },
    { "<c-a>", "<cmd>CodeCompanionAction<cr>", desc = "Open CodeCompanion Action Palette" },
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
