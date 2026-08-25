-- ═══════════════════════════════════════════════════════════
-- SNACKS
-- ═══════════════════════════════════════════════════════════

vim.pack.add({
	{ src = "https://github.com/folke/snacks.nvim" },
})

local function navigate_left_from_explorer()
	if vim.env.TMUX and vim.env.TMUX_PANE then
		vim.fn.system({ "tmux", "select-pane", "-t", vim.env.TMUX_PANE, "-L" })
	else
		vim.cmd("wincmd h")
	end
end

-- Terminal detection can time out behind tmux, especially with extended keys.
-- Preserve tmux passthrough while telling Snacks which graphics protocol to use.
if vim.env.TMUX and vim.env.KITTY_WINDOW_ID then
	vim.env.SNACKS_KITTY = "true"
end

require("snacks").setup({
	bigfile = { enabled = true },
	dashboard = { enabled = false },
	lazygit = { enabled = true },
	image = {
		enabled = true,
	},
	explorer = {
		enabled = true,
		width = 30, -- width of the explorer window
		position = "right", -- or "left"
	},
	indent = { enabled = true },
	input = { enabled = true },
	notifier = {
		enabled = true,
		timeout = 3000,
	},
	picker = {
		enabled = true,
		sources = {
			files = { hidden = true },
			explorer = {
				win = {
					input = {
						keys = {
							-- Explorer focus can be in the prompt/input window.
							["<BS>"] = { navigate_left_from_explorer, mode = { "n", "i" } },
							["<C-h>"] = { navigate_left_from_explorer, mode = { "n", "i" } },
						},
					},
					list = {
						keys = {
							-- In terminals, Ctrl-h is often received as Backspace.
							-- Snacks Explorer maps <BS> to explorer_up by default, so bypass
							-- that action and move left, crossing to tmux at Neovim's edge.
							["<BS>"] = navigate_left_from_explorer,
							["<C-h>"] = navigate_left_from_explorer,
						},
					},
				},
			},
		},
	},
	quickfile = { enabled = true },
	scope = { enabled = true },
	scroll = { enabled = true },
	statuscolumn = { enabled = true },
	words = { enabled = true },
	styles = {
		notification = {
			-- wo = { wrap = true } -- Wrap notifications
		},
	},
})
