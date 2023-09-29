-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- " Tab section
-- " Softtabs, 2 spaces
-- tabstop=2    "Indent using 2 spaces.
-- shiftwidth=2 "When shifting, indent using 2 spaces.
-- shiftround   "When shifting lines, round the indentation to the nearest multiple of shiftwidth
-- expandtab    "Convert tabs to spaces.
--
-- " Indent
-- set smartindent  "Puts indentation automatically at appropriate places after you type {, }, or #.
-- set autoindent   "New lines inherit the indentation of previous lines.
local set = vim.opt
set.tabstop = 2
set.cursorcolumn = true
set.colorcolumn = "80"
set.smartcase = true

-- vim.o.foldcolumn = "1" -- '0' is not bad
-- vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
-- vim.o.foldlevelstart = 99
-- vim.o.foldenable = false
--
-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
-- vim.keymap.set("n", "zR", require("ufo").openAllFolds)
-- vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
