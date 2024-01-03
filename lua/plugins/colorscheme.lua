return {
	-- add catppuccin
	{
		"catppuccin/nvim", -- Make sure to use "catppuccin" and not "catppuccin/nvim"
		name = "catppuccin",
		priority = 1000,
		opts = {
			style = "mocha",
			transparent_background = false,
		},
	},
	-- add tokyonight
	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = { style = "moon" },
	},
}
