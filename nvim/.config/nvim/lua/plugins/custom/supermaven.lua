---@type NvPluginSpec
return {
  "supermaven-inc/supermaven-nvim",
  event = "User FilePost",
  opts = {
    keymaps = {
      accept_suggestion = "<C-a>",
      clear_suggestion = "<C-]>",
      accept_word = "<C-s>",
    },
    ignore_filetypes = {},
    color = {
      suggestion_color = "#ffffff",
      cterm = 244,
    },
    log_level = "warn", -- set to "off" to disable logging completely
    disable_inline_completion = false, -- disables inline completion for use with cmp
    disable_keymaps = false, -- disables built in keymaps for more manual control
  },
}
