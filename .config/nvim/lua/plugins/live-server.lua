return {
  "barrett-ruth/live-server.nvim", -- Live server configuration (replace with your actual plugins)

  keys = {
    {
      "<leader>ce",
      ":LiveServerStart<cr>",
      desc = "Start LiveServer",
    },
    {
      "<leader>cE",
      ":LiveServerStop<cr>",
      desc = "Stop LiveServer",
    },
  },

  config = function()
    local opts = {
      custom = {
        args = { "--port=5500", "--browser=firefox" },
      },
      -- Other configuration options
    }

    require("live-server").setup(opts)
  end,
}
