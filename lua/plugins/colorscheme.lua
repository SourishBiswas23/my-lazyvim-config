local is_not_neovide = not (vim.g.neovide or false)
return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = function()
      ---@diagnostic disable-next-line: missing-fields
      require("rose-pine").setup({
        styles = {
          transparency = is_not_neovide,
        },
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = function()
      local opts = {}
      opts.transparent_background = is_not_neovide
      return opts
    end,
  },
  {
    "Mofiqul/dracula.nvim",
  },
  {
    "LunarVim/lunar.nvim",
  },
  {
    "rebelot/kanagawa.nvim",
    opts = function()
      ---@diagnostic disable-next-line: missing-fields
      require("kanagawa").setup({
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
        transparent = is_not_neovide,
        overrides = function(colors)
          local theme = colors.theme
          return {
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },

            -- Save an hlgroup with dark background and dimmed foreground
            -- so that you can use it where your still want darker windows.
            -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
            NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

            -- Popular plugins that open floats will link to NormalFloat by default;
            -- set their background accordingly if you wish to keep them dark and borderless
            LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          }
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
