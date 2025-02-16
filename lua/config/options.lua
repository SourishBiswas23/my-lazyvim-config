-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

vim.g.snacks_animate = false
opt.clipboard = ""

-- Line wrapping
opt.textwidth = 0 -- Disable automatic line wrapping based on text width
opt.wrapmargin = 0 -- Disable automatic line wrapping based on the wrap margin
opt.wrap = true -- Enable line wrapping
opt.linebreak = true -- Wrap lines at word boundaries rather than in the middle of a word
opt.textwidth = 80 -- Set maximum text width for automatic line wrapping to 80 characters
opt.formatoptions = vim.opt.formatoptions + "t" -- Automatically wrap text at 'textwidth' while typing
