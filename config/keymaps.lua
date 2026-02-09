-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- map({ "n", "t" }, "<c-`>", function()
--   Snacks.terminal.toggle(nil, { cwd = LazyVim.root() })
--

-- Корректное переключение (toggle) терминала
vim.keymap.set("n", "<C-`>", function()
  Snacks.terminal.toggle(nil, { cwd = LazyVim.root() })
end, { desc = "Toggle Terminal" })
vim.keymap.set("t", "<C-`>", "<cmd>close<cr>", { desc = "Hide Terminal" })

map({ "n", "t" }, "<C-w>", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })
