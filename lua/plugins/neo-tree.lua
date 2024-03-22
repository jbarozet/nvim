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
	config = function()
		require("neo-tree").setup({
			popup_border_style = "rounded",
			window = { position = "float", width = 30 },
		})

		-- vim.keymap.set("n", "<leader>ee", ":Neotree toggle<CR>", { desc = "Toggle file explorer" })
		vim.keymap.set("n", "<leader>e", ":Neotree filesystem float<CR>", { desc = "Toggle file explorer (float)" })
		-- vim.keymap.set("n", "<leader>er", ":Neotree filesystem reveal left<CR>", { desc = "Reveal file explorer left" })
		-- vim.keymap.set("n", "<leader>ex", ":Neotree close<CR>", {})
		-- vim.keymap.set("n", "<leader>et", ":Neotree current<CR>", {})
		-- vim.keymap.set("n", "<leader>eb", ":Neotree buffers reveal float<CR>", {})
	end,
}
