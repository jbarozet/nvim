-- Disable the virtual text that shows against code lines, when there any error/warning/info
-- Just keep the sign on the left
return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.diagnostics.virtual_text.current_line = true
    -- opts.diagnostics.virtual_lines = true
    return opts
  end,
}
