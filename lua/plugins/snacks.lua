-- https://github.com/folke/snacks.nvim/blob/main/docs/lazygit.md
-- https://github.com/folke/snacks.nvim/blob/main/docs/picker.md
-- https://github.com/folke/snacks.nvim/blob/main/docs/image.md

-- NOTE: If you experience an issue in which you cannot select a file with the
-- snacks picker when you're in insert mode, only in normal mode, and you use
-- the bullets.vim plugin, that's the cause, go to that file to see how to
-- resolve it
-- https://github.com/folke/snacks.nvim/issues/812

return {
  "folke/snacks.nvim",
  keys = {
    -- Iterate through incomplete tasks in Snacks_picker
    {
      -- -- You can confirm in your teminal with:
      -- -- rg "^\s*-\s\[ \]" test-markdown.md
      "<leader>ti",
      function()
        Snacks.picker.grep({
          prompt = " ",
          -- pass your desired search as a static pattern
          search = "^\\s*- \\[ \\]",
          -- we enable regex so the pattern is interpreted as a regex
          regex = true,
          -- no “live grep” needed here since we have a fixed pattern
          live = false,
          -- restrict search to the current working directory
          dirs = { vim.fn.getcwd() },
          -- include files ignored by .gitignore
          args = { "--no-ignore" },
          -- Start in normal mode
          on_show = function()
            vim.cmd.stopinsert()
          end,
          finder = "grep",
          format = "file",
          show_empty = true,
          supports_live = false,
          layout = "ivy",
        })
      end,
      desc = "[i] Search for incomplete tasks",
    },
    -- Iterate throuth completed tasks in Snacks_picker
    {
      "<leader>tc",
      function()
        Snacks.picker.grep({
          prompt = " ",
          -- pass your desired search as a static pattern
          search = "^\\s*- \\[x\\]",
          -- we enable regex so the pattern is interpreted as a regex
          regex = true,
          -- no “live grep” needed here since we have a fixed pattern
          live = false,
          -- restrict search to the current working directory
          dirs = { vim.fn.getcwd() },
          -- include files ignored by .gitignore
          args = { "--no-ignore" },
          -- Start in normal mode
          on_show = function()
            vim.cmd.stopinsert()
          end,
          finder = "grep",
          format = "file",
          show_empty = true,
          supports_live = false,
          layout = "ivy",
        })
      end,
      desc = "[c] Search for complete tasks",
    },
    -- List git branches with Snacks_picker to quickly switch to a new branch
    {
      "<leader>ga",
      function()
        Snacks.picker.git_branches({
          layout = "select",
        })
      end,
      desc = "Branches",
    },
    -- Navigate my buffers - starts in normal mode
    -- NOTE: to filter buffers, enter insert mode
    {
      "<leader>,",
      function()
        Snacks.picker.buffers({
          -- I always want my buffers picker to start in normal mode
          on_show = function()
            vim.cmd.stopinsert()
          end,
          finder = "buffers",
          format = "buffer",
          hidden = false,
          unloaded = true,
          current = true,
          sort_lastused = true,
          win = {
            input = {
              keys = {
                ["d"] = "bufdelete",
              },
            },
            list = { keys = { ["d"] = "bufdelete" } },
          },
          -- In case you want to override the layout for this keymap
          -- layout = "ivy",
        })
      end,
      desc = "[P]Snacks picker buffers",
    },
  },
  opts = {
    image = {
      enabled = true,
      doc = {
        -- Personally I set this to false, I don't want to render all the
        -- images in the file, only when I hover over them
        -- render the image inline in the buffer
        -- if your env doesn't support unicode placeholders, this will be disabled
        -- takes precedence over `opts.float` on supported terminals
        inline = vim.g.neovim_mode == "skitty" and true or false,
        -- only_render_image_at_cursor = vim.g.neovim_mode == "skitty" and false or true,
        -- render the image in a floating window
        -- only used if `opts.inline` is disabled
        float = true,
        -- Sets the size of the image
        -- max_width = 60,
        -- max_width = vim.g.neovim_mode == "skitty" and 20 or 60,
        -- max_height = vim.g.neovim_mode == "skitty" and 10 or 30,
        max_width = vim.g.neovim_mode == "skitty" and 5 or 60,
        max_height = vim.g.neovim_mode == "skitty" and 2.5 or 30,
        -- max_height = 30,
        -- Apparently, all the images that you preview in neovim are converted
        -- to .png and they're cached, original image remains the same, but
        -- the preview you see is a png converted version of that image
        --
        -- Where are the cached images stored?
        -- This path is found in the docs
        -- :lua print(vim.fn.stdpath("cache") .. "/snacks/image")
        -- For me returns `~/.cache/neobean/snacks/image`
        -- Go 1 dir above and check `sudo du -sh ./* | sort -hr | head -n 5`
      },
      img_dirs = { "img", "images", "assets", "static", "public", "media", "attachments" },
    },
  },
}
