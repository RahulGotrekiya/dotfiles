return {
  {
    "folke/twilight.nvim",
    opts = {
      dimming = {
        alpha = 0.30,
        color = { "Normal", "#ffffff" },
        term_bg = "#000000",
        inactive = false, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
      },
      context = 10,
      treesitter = true,
      expand = {
        "function",
        "method",
        "table",
        "if_statement",
      },
    },
  },
}
