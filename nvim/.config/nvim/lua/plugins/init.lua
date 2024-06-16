return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- Format on Save
    config = function()
      require "configs.conform"
    end,
  },

  --Some Custom Plugins

  require "plugins.custom.alpha", -- Alpha
  require "plugins.custom.live-server", -- Live server
  require "plugins.custom.tmux-navigator", -- Tmux navigator
  require "plugins.custom.surround", -- Surround
  require "plugins.custom.file-browser", -- Telescope File browser

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "lua-language-server",
        "typescript-language-server",
        "eslint-lsp",
        "stylua",
        "pretty-php",
        "html-lsp",
        "css-lsp",
        "prettier",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "php",
        "markdown",
      },
    },
  },

  -- Linting
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "plugins.custom.lint"
    end,
  },

  -- Presistence
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    opts = {
      -- add any custom options here
    },
  },

  -- Highlight colors
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require("nvim-highlight-colors").setup {}
    end,
  },

  -- TODO: comments
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end,
    event = "BufRead", -- Lazy load the plugin when a buffer is read
  },
}
