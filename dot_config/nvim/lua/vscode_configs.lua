-- Lua:
-- For light theme
vim.o.background = 'dark'

require('vscode').setup({
    -- Alternatively set style in setup
    -- style = 'light'
    --
    -- Enable italic comment
    italic_comments = true,
    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,
})
require('vscode').load()
