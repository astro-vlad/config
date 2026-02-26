-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- map({ "n", "t" }, "<c-`>", function()
--   Snacks.terminal.toggle(nil, { cwd = LazyVim.root() })

vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Выделить весь текст" })
vim.keymap.set("n", "<C-c>", "y", { desc = "Скопировать" })
vim.keymap.set("n", "<C-v>", "P", { desc = "Вставить" })
vim.keymap.set("n", "<C-z>", "u", { desc = "Отменить изменения" })
-- Корректное переключение (toggle) терминала
vim.keymap.set("n", "<C-`>", function()
  Snacks.terminal.toggle(nil, { cwd = LazyVim.root() })
end, { desc = "Toggle Terminal" })
vim.keymap.set("t", "<C-`>", "<cmd>close<cr>", { desc = "Hide Terminal" })

vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Exit Terminal Mode" })

map({ "n", "t" }, "<C-w>", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })
