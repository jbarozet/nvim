-- https://github.com/folke/todo-comments.nvim

-- This is the default keywords
-- TODO: check if that works
-- HACK: this is a hack
-- FIX: mistake (aternatives: FIXME, BUG, FIXIT, ISSUE)
-- NOTE: a NOTE
-- TEST: a test
-- PERF: a test
-- WARN: a warning

-- This is my additional keywords:
-- DONE: this is done

return {
  {
    "folke/todo-comments.nvim",
    cmd = { "TodoTrouble", "TodoTelescope" },
    event = "BufReadPost",
    config = true,
    merge_keywords = true,
    opts = function(_, opts)
      opts.keywords = {
        DONE = { icon = " ", color = "info" },
      }
    end,
  },
}
