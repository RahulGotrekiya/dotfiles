---@type NvPluginSpec
return {
  "windwp/nvim-ts-autotag",
  event = "InsertEnter",
  dependencies = { "nvim-treesitter" },
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}
