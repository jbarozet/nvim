-- See `:help vim.o`

-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true
-- Enable relative line numbers
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = "unnamedplus"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- appearance
-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
vim.o.background = "dark" -- colorschemes that can be light or dark will be made dark
vim.o.signcolumn = "yes" -- show sign column so that text doesn't shift
--
-- tabs & indentation
vim.o.tabstop = 2 -- 2 spaces for tabs (prettier default)
vim.o.shiftwidth = 2 -- 2 spaces for indent width
vim.o.expandtab = true -- expand tab to spaces
vim.o.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
vim.o.wrap = false -- disable line wrapping

-- Folding
vim.o.nofoldenable = true -- everything is open
vim.o.foldlevelstart = 99

-- search settings
vim.o.ignorecase = true -- ignore case when searching
vim.o.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- split windows
vim.o.splitright = true -- split vertical window to the right
vim.o.splitbelow = true -- split horizontal window to the bottom

vim.opt.iskeyword:append("-")

-- -- set color scheme
vim.cmd.colorscheme("catppuccin")
