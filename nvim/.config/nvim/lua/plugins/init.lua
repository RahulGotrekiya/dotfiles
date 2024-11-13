return {

  --Some Custom Plugins

  require "plugins.custom.nvim-cmp", -- nvim-cmp
  require "plugins.custom.nvim-lspconfig", -- nvim-lspconfig
  require "plugins.custom.nvim-treesitter", -- nvim-treesitter
  require "plugins.custom.conform", -- format on save
  require "plugins.custom.nvim-lint", -- Linting
  require "plugins.custom.persistence", -- Presistence
  require "plugins.custom.alpha", -- Alpha
  require "plugins.custom.live-server", -- Live server
  require "plugins.custom.tmux-navigator", -- Tmux navigator
  require "plugins.custom.surround", -- Surround
  require "plugins.custom.lazygit", -- lazygit
  require "plugins.custom.yazi", -- yazi
  require "plugins.custom.todo", -- TODO:
  require "plugins.custom.ts-autotag", -- HTML AutoCloser
  require "plugins.custom.undotree", -- UndoTree
  require "plugins.custom.flash", -- flash.nvim for Jumping
  require "plugins.custom.zenmode", -- Zen mode
  require "plugins.custom.twilight", -- Twilight
  require "plugins.custom.auto-save", -- Auto save
  require "plugins.custom.supermaven", -- Supermaven
  require "plugins.custom.silicon", -- silicon

  -- (Defaults) These are some examples, uncomment them if you want to see them work!
  {
    "williamboman/mason.nvim",
    opts = {},
  },

  {
    "folke/ts-comments.nvim",
    opts = {},
    event = "VeryLazy",
    enabled = vim.fn.has "nvim-0.10.0" == 1,
  },
}
