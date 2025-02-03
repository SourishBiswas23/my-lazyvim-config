return {
  "jiaoshijie/undotree",
  dependencies = "nvim-lua/plenary.nvim",
  config = function()
    -- Ensure persistent undo is enabled
    local target_path = vim.fn.expand("~/.undodir")
    -- Create the directory if it doesn't exist
    if vim.fn.isdirectory(target_path) == 0 then
      vim.fn.mkdir(target_path, "p", 0700)
    end

    -- Set undodir and enable undofile
    vim.opt.undodir = target_path
    vim.opt.undofile = true

    -- Undotree setup
    local undotree = require("undotree")

    undotree.setup({
      float_diff = true, -- using float window previews diff, set this `true` will disable layout option
      layout = "left_left_bottom", -- "left_bottom", "left_left_bottom"
      position = "right", -- "right", "bottom"
      ignore_filetype = { "undotree", "undotreeDiff", "qf", "TelescopePrompt", "spectre_panel", "tsplayground" },
      window = {
        winblend = 30,
      },
      keymaps = {
        ["j"] = "move_next",
        ["k"] = "move_prev",
        ["gj"] = "move2parent",
        ["J"] = "move_change_next",
        ["K"] = "move_change_prev",
        ["<cr>"] = "action_enter",
        ["p"] = "enter_diffbuf",
        ["q"] = "quit",
      },
    })

    vim.api.nvim_set_hl(0, "UndotreeDiffAdded", { fg = "#9ece6a" })
    vim.api.nvim_set_hl(0, "UndotreeDiffRemoved", { fg = "#db4b4b" })
  end,
  keys = { -- load the plugin only when using it's keybinding:
    { "<leader>ut", "<cmd>lua require('undotree').toggle()<cr>" },
  },
}
