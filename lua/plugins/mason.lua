return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "mypy",
        "ruff",
        "hadolint",
        "markdownlint",
        "nginx-language-server",
        "prettier",
        "rubocop",
        "shellcheck",
        "shfmt",
        "solargraph",
        "sql-formatter",
        "stylua",
        "tflint",
        "xmlformatter",
      },
    },
  },
}
