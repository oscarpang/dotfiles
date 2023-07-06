return {
  -- add gruvbox
  { "folke/tokyonight.nvim", opts = {
    style = "moon",
  } },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
