return {
  -- add gruvbox
  { "folke/tokyonight.nvim", opts = {
    style = "day",
  } },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
