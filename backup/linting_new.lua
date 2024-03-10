return {
	"mfussenegger/nvim-lint",
	-- Event to trigger linters
	events = { "BufWritePost", "BufReadPost", "InsertLeave" },
	linters_by_ft = {
		python = { "flake8" },
		markdown = { "markdownlint" },
		ansible = { "ansible-lint" },
		yaml = { "yamllint" },
		terraform = { "tflint" },
		lua = { "luacheck" },
		javascript = { "eslint_d" },
		typescript = { "eslint_d" },
		javascriptreact = { "eslint_d" },
		typescriptreact = { "eslint_d" },
		svelte = { "eslint_d" },
	},
}
