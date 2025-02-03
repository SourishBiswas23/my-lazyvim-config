return {
  "conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft.javascript = { "prettierd" }
    opts.formatters_by_ft.typescript = { "prettierd" }
    opts.formatters_by_ft.javascriptreact = { "prettierd", "rustywind" }
    opts.formatters_by_ft.typescriptreact = { "prettierd", "rustywind" }
    opts.formatters_by_ft.svelte = { "prettierd" }
    opts.formatters_by_ft.vue = { "prettierd", "rustywind" }
    opts.formatters_by_ft.css = { "prettierd" }
    opts.formatters_by_ft.html = { "prettierd" }
    opts.formatters_by_ft.json = { "prettierd" }
    opts.formatters_by_ft.yaml = { "prettierd" }
    opts.formatters_by_ft.markdown = { "prettierd" }
    opts.formatters_by_ft.graphql = { "prettierd" }
    opts.formatters_by_ft.liquid = { "prettierd" }
    opts.formatters_by_ft.lua = { "stylua" }
    opts.formatters_by_ft.sh = { "shfmt" }
    opts.formatters_by_ft.bash = { "shfmt" }
    opts.formatters_by_ft.c = { "clang-format" }
    opts.formatters_by_ft.cpp = { "clang-format" }
    opts.formatters_by_ft.python = { "black" }
  end,
}
