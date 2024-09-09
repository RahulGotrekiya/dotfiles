return {
  "windwp/nvim-ts-autotag",
  ft = {
    "javascript",
    "php",
    "html",
  },
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}
