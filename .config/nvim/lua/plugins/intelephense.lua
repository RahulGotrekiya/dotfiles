return {
  {
    "mhartington/formatter.nvim",
    config = function()
      require("formatter").setup({
        filetype = {
          php = {
            function()
              return {
                exe = "intelephense",
                args = { "--stdio" },
                stdin = true,
              }
            end,
          },
        },
      })
    end,
  },
}
