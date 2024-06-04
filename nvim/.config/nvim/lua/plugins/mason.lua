return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- LSPs
      "json-lsp",
      "bash-language-server",
      "marksman",
      "python-lsp-server",
      "r-languageserver",
      "yaml-language-server",

      -- Linters
      "jsonlint",
      "luacheck",
      "ruff",
      "yamllint",
      "vale",

      -- Formatters
      "prettier",
    },
  },
}
