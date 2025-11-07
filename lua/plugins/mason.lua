return {
  "mason-org/mason.nvim",
  opts = {
    ui = { border = "rounded" },
    ensure_installed = {
      "codelldb",
      "prettierd",
      "rustywind",
      "shfmt",
      "stylua",
      "clang-format",
      "black",
      "emmet-language-server",
    },
  },
}
