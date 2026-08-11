# Repository Guidelines

## Project Structure & Module Organization

This repository is a Neovim 0.12 configuration built around native runtime features. `init.lua` is the entry point and loads the core modules in `lua/`: editor options, keymaps, LSP setup, diagnostics, and autocommands. Files in `plugin/` are sourced automatically by Neovim after `init.lua`; keep each plugin's `vim.pack.add()` and setup in its own descriptively named file, such as `plugin/gitsigns.lua`. `nvim-pack-lock.json` pins plugin revisions, and `README.md` documents user-facing behavior.

## Development & Validation Commands

There is no compilation step or dedicated test suite. Use these checks before submitting changes:

- `nvim` starts the configuration normally and installs declared tools/plugins when required.
- `nvim --headless "+qa"` performs a quick startup smoke test; any Lua or plugin-loading error should fail validation.
- `stylua --check init.lua lua plugin` checks Lua formatting.
- `stylua init.lua lua plugin` formats all Lua sources.

After changing plugin declarations, start Neovim and confirm `nvim-pack-lock.json` reflects intentional updates. Exercise affected mappings or commands interactively because startup alone cannot validate UI behavior.

## Coding Style & Naming Conventions

Use Lua with two-space logical indentation and let StyLua determine final whitespace. Prefer double-quoted strings and trailing commas in multiline tables. Name core modules by responsibility (`lua/diagnostics.lua`) and plugin files after the configured plugin (`plugin/toggleterm.lua`). Keep global mappings in `lua/keymaps.lua`; LSP mappings belong in the `LspAttach` callback and must include `buffer = ev.buf`. Do not bind bare `<leader>f`, which would shadow the file-picker prefix.

## Testing Guidelines

For every change, run the headless smoke test and the StyLua check. Then open Neovim and test the changed workflow. For LSP changes, verify attachment and buffer-local mappings in a matching filetype. For plugin changes, check both a clean startup and the relevant command or keymap. No coverage target currently applies.

## Commit & Pull Request Guidelines

Recent history favors short, imperative, lowercase subjects such as `add hidden files to search using leader ff`. Keep commits focused and explain non-obvious architecture changes in the body. Pull requests should summarize behavior changes, list manual validation performed, and mention lockfile changes. Link related issues when applicable; include screenshots only for visible UI, colorscheme, or layout changes.
