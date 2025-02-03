-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Exit insert mode with jk
map("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- Go to a particular tab
for i = 1, 9 do
  map({ "n", "v", "i" }, "<M-" .. i .. ">", "<Cmd>BufferLineGoToBuffer" .. i .. "<CR>")
end

map({ "n", "v", "i" }, "<leader>fs", "<cmd>FzfLua grep_visual<CR>", { desc = "Grep" })
map({ "n", "v", "i" }, "<leader>/", "<cmd>nohlsearch<CR>", { desc = "Clear Search Highlight" })
