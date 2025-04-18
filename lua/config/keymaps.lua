-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

-- vim.keymap.set("n", "<C-c>", "ciw")
-- vim.keymap.set("n", "<Up>", "<c-w>k")
-- vim.keymap.set("n", "<Down>", "<c-w>j")
-- vim.keymap.set("n", "<Left>", "<c-w>h")
-- vim.keymap.set("n", "<Right>", "<c-w>l")
vim.keymap.set("n", "<space>cp", "<cmd>TypstPreview<CR>", { desc = "[ ] Typst Preview" })

vim.keymap.set("n", "<space>dt", function()
  if vim.diagnostic.is_enabled() then
    vim.diagnostic.hide()
  else
    vim.diagnostic.show()
  end
end)

vim.keymap.set("n", "<space>ct", ":!typst compile %<CR>")
