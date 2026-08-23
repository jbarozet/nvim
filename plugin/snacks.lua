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

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "snacks_picker_list", "snacks_picker_input" },
	callback = function(event)
		for _, mode in ipairs({ "n", "i" }) do
			for _, lhs in ipairs({ "<BS>", "<C-h>", "\b" }) do
				vim.keymap.set(mode, lhs, navigate_left_from_explorer, {
					buffer = event.buf,
					nowait = true,
					silent = true,
					desc = "Navigate left from Snacks Explorer/Tmux",
				})
			end
		end
	end,
})

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
