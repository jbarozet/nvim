return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
        yamlls = {
          settings = {
            yaml = {
              keyOrdering = false,
            },
          },
        },
        --gopls = {},
        --ruby_ls = {},
        diagnosticls = {},
        dockerls = {},
        bashls = {},
        terraformls = {},
        marksman = {},
        sqlls = {},
      },
    },
  },
}
