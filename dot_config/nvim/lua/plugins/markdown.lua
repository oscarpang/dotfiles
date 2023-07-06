vim.g.vmt_list_item_char = "-"
vim.g.vmt_dont_insert_fence = 1

M = {
  { "antonk52/markdowny.nvim", opts = {} },
  { "mzlogin/vim-markdown-toc" },
  {
    "plasticboy/vim-markdown",
    enabled = false,
    commit = "df4be8626e2c5b2a42eb60e1f100fce469b81f7d",
    dependencies = {
      "godlygeek/tabular",
    },
  },
}
return M
