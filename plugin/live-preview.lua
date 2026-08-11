-- ═══════════════════════════════════════════════════════════
-- LIVE PREVIEW
-- Browser preview with live updates and synchronized scrolling.
-- ═══════════════════════════════════════════════════════════

vim.pack.add({
	{ src = "https://github.com/brianhuster/live-preview.nvim" },
})

require("livepreview.config").set({
	picker = "snacks.picker",
})
