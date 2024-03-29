return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "html",
        "javascript",
        "json",
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
        "go",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<leader>l",
          node_incremental = "<leader>l",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    },
  },
}
