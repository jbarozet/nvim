-- https://github.com/MeanderingProgrammer/render-markdown.nvim
-- Define Catppuccin colors manually for markdown headings

return {
  "MeanderingProgrammer/render-markdown.nvim",
  priority = 1000,
  enable = true,
  init = function()
    local color01 = "#b4befe" -- Catppuccin Lavender
    local color02 = "#f2cdcd" -- Catppuccin Flamingo
    local color03 = "#89b4fa" -- Catppuccin Blue
    local color04 = "#94e2d5" -- Catppuccin Teal
    local color05 = "#fab387" -- Catppuccin Peach
    local color06 = "#eba0ac" -- Catppuccin Maroon
    local color10 = "#00FFFFFF" -- transparent
    local color11 = "#11111b" -- black
    local color12 = "#ffffff" -- white
    local color26 = "#0D1116" -- black

    local colorInline_bg = color02
    local color_fg = color26
    -- local color_sign = "#ebfafa"
    -- Define background colors
    local color1_bg = color02
    local color2_bg = color03
    local color3_bg = color04
    local color4_bg = color06
    local color5_bg = color06
    local color6_bg = color06
    -- foreground colors
    local color1_fg = color11
    local color2_fg = color11
    local color3_fg = color11
    local color4_fg = color11
    local color5_fg = color11
    local color6_fg = color11

    -- Heading colors (when not hovered over), extends through the entire line
    vim.cmd(string.format([[highlight Headline1Bg guibg=%s guifg=%s ]], color1_bg, color1_fg))
    vim.cmd(string.format([[highlight Headline2Bg guibg=%s guifg=%s ]], color2_bg, color2_fg))
    vim.cmd(string.format([[highlight Headline3Bg guibg=%s guifg=%s ]], color3_bg, color3_fg))
    vim.cmd(string.format([[highlight Headline4Bg guibg=%s guifg=%s ]], color4_bg, color4_fg))
    vim.cmd(string.format([[highlight Headline5Bg guibg=%s guifg=%s ]], color5_bg, color5_fg))
    vim.cmd(string.format([[highlight Headline6Bg guibg=%s guifg=%s ]], color6_bg, color6_fg))
    -- Define inline code highlight for markdown
    vim.cmd(string.format([[highlight RenderMarkdownCodeInline guifg=%s guibg=%s]], colorInline_bg, color_fg))
    -- vim.cmd(string.format([[highlight RenderMarkdownCodeInline guifg=%s]], colorInline_bg))

    -- Highlight for the heading and sign icons (symbol on the left)
    -- I have the sign disabled for now, so this makes no effect
    vim.cmd(string.format([[highlight Headline1Fg cterm=bold gui=bold guifg=%s]], color1_bg))
    vim.cmd(string.format([[highlight Headline2Fg cterm=bold gui=bold guifg=%s]], color2_bg))
    vim.cmd(string.format([[highlight Headline3Fg cterm=bold gui=bold guifg=%s]], color3_bg))
    vim.cmd(string.format([[highlight Headline4Fg cterm=bold gui=bold guifg=%s]], color4_bg))
    vim.cmd(string.format([[highlight Headline5Fg cterm=bold gui=bold guifg=%s]], color5_bg))
    vim.cmd(string.format([[highlight Headline6Fg cterm=bold gui=bold guifg=%s]], color6_bg))
  end,
  opts = {
    heading = {
      enabled = true,
      render_modes = false,
      atx = true,
      setext = true,
      sign = true,
      signs = { "󰫎 " },
      position = "overlay",
      width = "block",
      border = false,
      backgrounds = {
        "Headline1Bg",
        "Headline2Bg",
        "Headline3Bg",
        "Headline4Bg",
        "Headline5Bg",
        "Headline6Bg",
      },
      foregrounds = {
        "Headline1Fg",
        "Headline2Fg",
        "Headline3Fg",
        "Headline4Fg",
        "Headline5Fg",
        "Headline6Fg",
      },
    },
  },
}
