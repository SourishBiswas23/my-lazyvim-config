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

    -- godot lsp works only when godot is running
    local capabilities = require("blink.cmp").get_lsp_capabilities()
    local gdscript_config = {
      capabilities = capabilities,
      settings = {},
    }
    require("lspconfig").gdscript.setup(gdscript_config)
  end,
}
