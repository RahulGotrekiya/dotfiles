return {
  "stevearc/conform.nvim",
  event = "BufWritePre", -- Format on Save
  config = function()
    require "configs.conform"
  end,
}
