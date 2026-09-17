-- Entry point for Neovim configuration
-- Use the Copilot language server bundled with copilot.vim instead of
-- invoking npx on startup (which can trigger npm/network/keychain delays).
vim.g.copilot_version = false

require("configs")
require("keymaps")
require("lsp")
require("diagnostics")
require("autocmds")
