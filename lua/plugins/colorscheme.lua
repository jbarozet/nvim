return {
  {
    -- kanagawa theme
    -- https://github.com/rebelot/kanagawa.nvim
    "rebelot/kanagawa.nvim",
    opts = {
      transparent = true,
      theme = "wave", -- the default heart-warming theme,
      -- theme = "lotus", -- for when you're out in the open.
      -- theme = "dragon", -- for those late-night sessions
      -- overrides = function(colors)
      --   return {
      --     ["@keyword.import"] = { fg = colors.palette.surimiOrange },
      --     ["@variable.parameter"] = { fg = colors.theme.syn.parameter },
      --
      --     MiniIconsDirectory = { fg = colors.palette.fujiWhite },
      --   }
      -- end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
