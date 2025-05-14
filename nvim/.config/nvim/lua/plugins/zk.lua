return {
  "zk-org/zk-nvim",
  config = function()
    require("zk").setup({
      picker = "fzf_lua",
      auto_attach = {
        filetypes = { "markdown", "md" },
      },
    })
  end,
}
