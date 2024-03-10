return {
	"stevearc/conform.nvim",
	opts = {
		notify_on_error = false,
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
		formatters_by_ft = {
			python = { "isort", "black" },
			markdown = { "prettier" },
			ansible = { "prettier" },
			yaml = { "prettier" },
			json = { "prettier" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			svelte = { "prettier" },
			css = { "prettier" },
			html = { "prettier" },
			graphql = { "prettier" },
			lua = { "stylua" },
		},
	},
}
