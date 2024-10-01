-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme_toggle = { "onedark", "everblush" },
  theme = "everblush",
  transparency = true,
}

M.ui = {
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },

  cmp = {
    icons = true,
    style = "default",
    icons_left = true,
  },

  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "block",
    order = nil,
    modules = nil,
  },
}

return M
