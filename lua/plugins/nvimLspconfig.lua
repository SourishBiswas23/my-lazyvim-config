return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.diagnostics.virtual_text = false
    opts.inlay_hints.enabled = false

    opts.servers = opts.servers or {}
    opts.servers.emmet_language_server = {
      filetypes = {
        "typescriptreact",
        "javascriptreact",
        "html",
        "css",
        -- "javascript",
        -- "typescript",
        "vue",
      },
    }
    opts.servers.glsl_analyzer = {}
  end,
}
