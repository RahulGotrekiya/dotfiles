return {
  "hrsh7th/nvim-cmp",
  event = { "InsertEnter", "CmdlineEnter" },
  dependencies = {
    -- Commandline completions
    {
      "hrsh7th/cmp-cmdline",
      event = "CmdlineEnter",
      --@type cmp.ConfigSchema
      config = function()
        local cmp = require "cmp"

        -- `/` cmdline setup.
        cmp.setup.cmdline("/", {
          mapping = cmp.mapping.preset.cmdline(),
          sources = {
            { name = "buffer" },
          },
        })

        cmp.setup.cmdline(":", {
          mapping = cmp.mapping.preset.cmdline(),
          sources = cmp.config.sources({
            { name = "path" },
          }, {
            { name = "cmdline" },
          }),
          matching = { disallow_symbol_nonprefix_matching = false },
        })
      end,
    },
    -- AI
    {
      "magicalne/nvim.ai",
      event = "User FilePost",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
      },
      opts = {
        provider = "anthropic", --snove | hyperbolic | gemini | mistral | anthropic | deepseek | groq | cohere
        anthropic = { model = "claude-3-5-sonnet-20240620" },

        keymaps = {
          toggle = "<leader>c", -- Toggle chat dialog
          send = "<CR>", -- Send message in normal mode
          close = "q", -- Close chat dialog
          clear = "<C-l>", -- Clear chat history
          inline_assist = "<leader>i", -- Run InlineAssist command with prompt
          accept_code = "<leader>ia",
          reject_code = "<leader>ij",
        },
      },
    },

    {
      "supermaven-inc/supermaven-nvim",
      event = "User FilePost",
      opts = {
        keymaps = {
          accept_suggestion = "<C-a>",
          clear_suggestion = "<C-]>",
          accept_word = "<C-j>",
        },
        ignore_filetypes = {},
        color = {
          suggestion_color = "#ffffff",
          cterm = 244,
        },
        log_level = "info", -- set to "off" to disable logging completely
        disable_inline_completion = false, -- disables inline completion for use with cmp
        disable_keymaps = false, -- disables built in keymaps for more manual control
      },
    },

    {
      "L3MON4D3/LuaSnip",
      dependencies = "rafamadriz/friendly-snippets",
      config = function(_, opts)
        require("luasnip").config.set_config(opts)

        local luasnip = require "luasnip"
        luasnip.filetype_extend("svelte", { "html" })
        luasnip.filetype_extend("javascriptreact", { "html" })
        luasnip.filetype_extend("typescriptreact", { "html" })

        require "nvchad.configs.luasnip"
      end,
    },
  },

  opts = function(_, opts)
    local cmp = require "cmp"
    opts.sources[1].trigger_characters = { "-" }

    opts.completion.completeopt = "menu,menuone,noselect"
    -- opts.sorting = {}
    -- opts.formatting = {}
  end,
}
