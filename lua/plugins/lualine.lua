return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    sections = {
      lualine_z = {
        "encoding",
        "fileformat",
        "filetype",
      },
    },
  },
}
