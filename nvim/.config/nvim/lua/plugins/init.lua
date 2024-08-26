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
  require "plugins.custom.lazygit", -- lazygit
  require "plugins.custom.yazi", -- yazi

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
        "emmet-ls",
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

  -- HTML AutoCloser
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "php",
      "html",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  -- flash.nvim for Jumping
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
   },
  },

  -- UndoTree
  {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>", desc = "UndoTree" },
    },
  },
}
