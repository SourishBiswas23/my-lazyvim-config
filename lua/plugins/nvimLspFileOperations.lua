return {
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- Uncomment whichever supported plugin(s) you use
      -- "nvim-tree/nvim-tree.lua",
      "nvim-neo-tree/neo-tree.nvim",
      -- "simonmclean/triptych.nvim"
    },
    config = function()
      local lspFileOperations = require("lsp-file-operations")
      local lspConfig = require("lspconfig")
      lspFileOperations.setup()
      lspConfig.util.default_config =
        vim.tbl_extend("force", vim.lsp.protocol.make_client_capabilities(), lspFileOperations.default_capabilities())
    end,
  },
}
