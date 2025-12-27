-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<CR>", ":w<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>cp", function()
  local root = LazyVim.root()
  local file = vim.fn.expand("%:p")
  local rel = file:gsub("^" .. root .. "/", "")
  vim.fn.setreg("+", rel)
  vim.notify("Copied project-relative path:\n" .. rel)
end, { desc = "Copy project-relative path" })
