return {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  main = "nvim-silicon",
  config = function()
    require("silicon").setup {
      font = "JetBrainsMono Nerd Font",
      theme = "Monokai Extended",
      window_title = function()
        return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
      end,
      line_offset = function(args)
        return args.line1
      end,
      language = function()
        return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":e")
      end,
    }
  end,
}
