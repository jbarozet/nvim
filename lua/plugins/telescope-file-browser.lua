return {
	"nvim-telescope/telescope-file-browser.nvim",
	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	vim.keymap.set("n", "<space>sb", ":Telescope file_browser<CR>"),
}
