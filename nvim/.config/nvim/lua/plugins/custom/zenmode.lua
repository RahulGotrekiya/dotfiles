return {
  "folke/zen-mode.nvim",
  cmd = "ZenMode",
  opts = {
    window = { backdrop = 0.7 },
    width = 140,
    height = 1,
    options = {
      signcolumn = "no",
      number = false,
      relativenumber = false,
      cursorline = false,
      cursorcolumn = false,
      -- foldcolumn = "0",
      -- list = false,
    },
    plugins = {
      gitsigns = true,
      tmux = true,
      alacritty = {
        enabled = true,
        font = "18", -- font size
      },
      kitty = { enabled = false, font = "+2" },
      options = {
        enabled = true,
        ruler = true,
        showcmd = false,
        laststatus = 0,
      },
      twilight = { enabled = true },
    },
  },
  keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
}
