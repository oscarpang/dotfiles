
-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.clangd.setup{
  settings = {},
  capabilities = capabilities,
}

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {buffer = ev.buf, desc = "Go to declaration"})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {buffer = ev.buf, desc = "Go to definition"})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer = ev.buf, desc = "Hover"})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {buffer = ev.buf, desc = "Go to implementation"})

    vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, {buffer = ev.buf, desc = "Signature Help"})

    vim.keymap.set('n', '<space>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, {buffer = ev.buf, desc = "Workspace list symbols"})
    vim.keymap.set('n', '<space>ds', require('telescope.builtin').lsp_document_symbols, {buffer = ev.buf, desc = "Document symbols"})

    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, {buffer = ev.buf, desc = "Type definition"})
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {buffer = ev.buf, desc = "Rename symbol"})
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, {buffer = ev.buf, desc = "List references"})
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, {buffer = ev.buf, desc = "Format"})
  end,
})

