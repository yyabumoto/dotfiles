-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set
local del = vim.keymap.del

-- change width size
vim.keymap.set("n", "<A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Hop (EasyMotion)
vim.keymap.set({ "n", "v" }, "f", "<cmd>HopWord<cr>", { desc = "HopWord" })

-- comment.nvim
vim.keymap.del("n", "<C-/>")
vim.keymap.set("n", "<C-/>", function()
  return require("Comment.api").call("toggle.linewise.current", "g@$")()
end, { expr = true })
vim.keymap.set("x", "<C-/>", function()
  return require("Comment.api").call("toggle.linewise", "g@")()
end, { expr = true })

-- terminal
vim.keymap.set("n", "<C-t>", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" })
vim.keymap.set("t", "<C-t>", "<cmd>close<cr>", { desc = "Hide Terminal" })

vim.keymap.set("n", "<tab>", "za")
