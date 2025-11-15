return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      -- colorscheme = "tokyonight",
    },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    integrations = {
      markdown = true,
    },
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      markdown = true,
      transparent_background = false,
      dim_inactive = {
        enabled = true, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.05, -- percentage of the shade to apply to the inactive window
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = false,
      style = "moon",
    },
  },
}
