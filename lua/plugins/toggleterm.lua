return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = false,
    opts = {
      direction = "float",
      open_mapping = [[<c-]>]],
      close_on_exit = true,
      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    },
  },
}
