return {
  "mfussenegger/nvim-lint",
  event = "VeryLazy",
  config = function()
    require "plugins.custom.lint"
  end,
}
