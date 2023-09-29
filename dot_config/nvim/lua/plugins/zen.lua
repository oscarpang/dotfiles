return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      width = 1,
    },
    options = {
      numbers = true,
      cursorline = true,
      cursorcolumn = true,
    },
  },
  keys = {
    { "<leader>z", "<cmd>ZenMode<cr>", desc = "Toggle ZenMode" },
  },
}
