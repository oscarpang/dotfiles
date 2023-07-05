-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- This file is automatically loaded by lazyvim.config.init

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    opts.remap = nil
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local function delete_map(mode, lhs)
  vim.keymap.del(mode, lhs, nil)
end

-- delete the lazy
delete_map("n", "<leader>l")

-- Move Lines
--delete_map("n", "<A-j>")
--delete_map("n", "<A-k>")
--delete_map("i", "<A-j>")
--delete_map("i", "<A-k>")
--delete_map("v", "<A-j>")
--delete_map("v", "<A-k>")

--delete_map("n", "<C-h>")
delete_map("n", "<C-j>")
delete_map("n", "<C-k>")
--delete_map("n", "<C-l>")

delete_map("t", "<C-h>")
delete_map("t", "<C-j>")
delete_map("t", "<C-k>")
delete_map("t", "<C-l>")
delete_map("n", "<leader>qq")

map("n", "<leader>qA", "<cmd>qa<cr>", { desc = "Quit all" })
