return {
  {
    "mfussenegger/nvim-dap",
    config = function(_, opts)
      local dap = require("dap")

      dap.adapters.godot = {
        type = "server",
        host = "127.0.0.1",
        port = 6006,
      }

      dap.configurations.gdscript = {
        {
          type = "godot",
          request = "launch", -- "launch" or "attach"
          name = "Launch Main Scene",
          project = "${workspaceFolder}",
        },
      }
    end,
  },
}
