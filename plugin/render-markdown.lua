-- ═══════════════════════════════════════════════════════════
-- RENDER MARKDOWN
-- Rich in-buffer rendering for Markdown documents.
-- ═══════════════════════════════════════════════════════════

vim.pack.add({
	{ src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
})

require("render-markdown").setup({
	-- Browser preview handles math with KaTeX; avoid local converter dependencies.
	latex = { enabled = false },
})
