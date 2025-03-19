return {
  "williamboman/mason.nvim",
  opts = {
    ui = { border = "rounded" },
    ensure_installed = {
      "prettierd",
      "rustywind",
      "shfmt",
      "stylua",
      "clang-format",
      "black",
    },
  },
}
