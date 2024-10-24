-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "everblush",
  transparency = true,
  theme_toggle = { "everblush", "catppuccin" },
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    Visual = { bold = true, italic = true },
  },
  hl_add = {
    yankvisual = { link = "cursorcolumn" },
    lspinfoborder = { link = "floatborder" },
  },
}

M.ui = {
  cmp = {
    icons = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    icons_left = true,
    lspkind_text = true,
    format_colors = {
      tailwind = true,
      icon = "󱓻",
    },
  },

  telescope = { style = "borderless" }, -- borderless / bordered

  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "block",
    order = nil,
    modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },
}

M.term = {
  winopts = { number = false },
  sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
  float = {
    relative = "editor",
    row = 0.3,
    col = 0.25,
    width = 0.5,
    height = 0.4,
    border = "single",
  },
}

M.mason = {
  cmd = true,
  opts = {
    pkgs = {
      "clangd",
      "clang-format",
      "lua-language-server",
      "typescript-language-server",
      "tailwindcss-language-server",
      "eslint-lsp",
      "stylua",
      "pretty-php",
      "html-lsp",
      "css-lsp",
      "prettier",
      "emmet-ls",
      "intelephense",
    },
  },
}

M.colorify = {
  enabled = true,
  mode = "virtual", -- fg, bg, virtual
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}

return M
