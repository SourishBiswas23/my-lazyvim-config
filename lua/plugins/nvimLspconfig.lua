return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    local _border = "rounded"

    local handlers = {
      ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
      ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
    }

    -- Do not forget to use the on_attach function
    local lspconfig = require("lspconfig")
    lspconfig.dartls.setup({ handlers = handlers })
    lspconfig.lua_ls.setup({ handlers = handlers })

    opts.diagnostics.virtual_text = false
    opts.inlay_hints.enabled = false
  end,
}
