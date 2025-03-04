return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.diagnostics.virtual_text = false
    opts.inlay_hints.enabled = false
  end,
}
