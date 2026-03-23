--     -- catppuccin theme
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     integrations = {
--       markdown = true,
--     },
--     opts = {
--       flavour = "mocha", -- latte, frappe, macchiato, mocha
--       markdown = true,
--       transparent_background = false,
--       dim_inactive = {
--         enabled = true, -- dims the background color of inactive window
--         shade = "dark",
--         percentage = 0.05, -- percentage of the shade to apply to the inactive window
--       },
--     },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin",
--       -- colorscheme = "tokyonight",
--     },
--   },
-- }
--
-- return {
--   {
--     -- Tokyonight theme
--     "folke/tokyonight.nvim",
--     opts = {
--       transparent = false,
--       style = "moon",
--     },
--   },
-- }

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
      overrides = function(colors)
        return {
          ["@keyword.import"] = { fg = colors.palette.surimiOrange },
          ["@variable.parameter"] = { fg = colors.theme.syn.parameter },

          MiniIconsDirectory = { fg = colors.palette.fujiWhite },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
