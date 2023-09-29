return {
  "kevinhwang91/nvim-ufo",
  enabled = false,
  dependencies = {
    "kevinhwang91/promise-async",
  },
  opts = {
    provider_selector = function(bufnr, filetype, buftype)
      return { "treesitter", "indent" }
    end,
  },
  keys = {
    {
      "zR",
      function()
        require("ufo").openAllFolds()
      end,
      desc = "Open All Folds",
    },
    {
      "zM",
      function()
        require("ufo").closeAllFolds()
      end,
      desc = "Close All Folds",
    },
  },
}
