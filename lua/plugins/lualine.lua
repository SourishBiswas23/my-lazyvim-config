return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "DaikyXendo/nvim-material-icon" },
  config = function()
    local lualine = require("lualine")
    -- local lazy_status = require("lazy.status")
    lualine.setup({
      options = {
        theme = "nightfly",
        globalstatus = true,
        component_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          "branch",
          {
            "diff",
            always_visible = false,
          },
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            sections = { "error", "warn", "info", "hint" },
            -- symbols = { error = "E:", warn = "W:", info = "I:", hint = "H:" },
            colored = true,
            update_in_insert = false,
            always_visible = false,
          },
          { "filename", path = 3 },
        },
        lualine_c = {},
        lualine_x = {
          -- {
          -- 	lazy_status.updates,
          -- 	cond = lazy_status.has_updates,
          -- 	color = { fg = "#ff9e64" },
          -- },
        },
        lualine_y = { { "encoding" }, { "filetype" }, { "progress" } },
        lualine_z = { "location" },
      },
    })
  end,
}
