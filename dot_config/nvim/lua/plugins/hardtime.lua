return {
  {
    "m4xshen/hardtime.nvim",
    opts = {
      enabled = false,
      max_count = 5,
      allow_different_key = true,
      -- disabled_keys = {
      --   ["<UP>"] = { "n" },
      --   ["<DOWN>"] = { "n" },
      --   ["<LEFT>"] = { "n" },
      --   ["<RIGHT>"] = { "n" },
      -- },
      disabled_keys = {},
      disabled_filetypes = { "neo-tree", "qf", "netrw", "NvimTree", "lazy", "mason" },
    },
  },
}
