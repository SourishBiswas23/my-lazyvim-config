return {
  "kiddos/gemini.nvim",
  config = function()
    require("gemini").setup({
      completion = {
        enabled = false,
      },
    })
  end,
}
