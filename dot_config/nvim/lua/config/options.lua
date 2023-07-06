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
