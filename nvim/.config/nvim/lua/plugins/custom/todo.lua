-- TODO: comments
return {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
  config = function()
    require("todo-comments").setup {}
  end,
  event = "BufRead", -- Lazy load the plugin when a buffer is read
}
