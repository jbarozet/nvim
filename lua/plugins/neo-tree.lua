-- recommended for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup {}
    vim.keymap.set('n', '<leader>ee', ':Neotree toggle<CR>', { desc = "Toggle file explorer" })
    vim.keymap.set('n', '<leader>ec', ':Neotree close<CR>', {})
    vim.keymap.set('n', '<leader>et', ':Neotree current<CR>', {})
    vim.keymap.set('n', '<leader>eb', ':Neotree buffers reveal float<CR>', {})
  end,
}
