return {
  "Pocco81/auto-save.nvim",
  enabled = false,
  keys = {
    { "<leader>n", ":ASToggle<CR>", desc = "Auto save" },
  },
  config = function()
    require("auto-save").setup({})
  end,
}
