-- ═══════════════════════════════════════════════════════════
-- TMUX NAVIGATOR
-- Seamless navigation between Neovim splits and tmux panes
-- ═══════════════════════════════════════════════════════════

vim.g.tmux_navigator_no_mappings = 1

vim.pack.add({
  { src = "https://github.com/christoomey/vim-tmux-navigator" },
})

local map = vim.keymap.set

map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Go to Left Window or Tmux Pane", silent = true })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Go to Lower Window or Tmux Pane", silent = true })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Go to Upper Window or Tmux Pane", silent = true })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Go to Right Window or Tmux Pane", silent = true })
map("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>", { desc = "Go to Previous Window or Tmux Pane", silent = true })
