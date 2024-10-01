return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- Format on Save
    config = function()
      require "configs.conform"
    end,
  },

  --Some Custom Plugins

  require "plugins.custom.persistence", -- Presistence
  require "plugins.custom.alpha", -- Alpha
  require "plugins.custom.live-server", -- Live server
  require "plugins.custom.tmux-navigator", -- Tmux navigator
  require "plugins.custom.surround", -- Surround
  require "plugins.custom.file-browser", -- Telescope File browser
  require "plugins.custom.lazygit", -- lazygit
  require "plugins.custom.yazi", -- yazi
  require "plugins.custom.todo", -- TODO:
  require "plugins.custom.ts-autotag", -- HTML AutoCloser
  require "plugins.custom.undotree", -- UndoTree
  require "plugins.custom.flash", -- flash.nvim for Jumping
  require "plugins.custom.codeium", -- Codeium
  require "plugins.custom.zenmode", -- Zen mode
  require "plugins.custom.twilight", -- Twilight
  require "plugins.custom.colorpicker", -- Color Picker

  -- (Defaults) These are some examples, uncomment them if you want to see them work!
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
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "tsx",
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
}
