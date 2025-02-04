return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      menu = { border = "rounded" },
      documentation = { window = { border = "rounded" } },
      ghost_text = {
        enabled = false,
      },
    },
    signature = { window = { border = "rounded" } },
    keymap = {
      preset = "default",
      ["<C-e>"] = { "hide", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
      ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
    },
  },
}
