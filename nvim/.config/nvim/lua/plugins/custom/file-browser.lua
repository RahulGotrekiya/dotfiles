return {
    "nvim-telescope/telescope-file-browser.nvim",
    keys = {
      {
        "<leader>sB",
        ":Telescope file_browser path=%:p:h<cr>",
        desc = "Browse File",
      },
    },
    config = function()
      require("telescope").load_extension "file_browser"
    end,
}
