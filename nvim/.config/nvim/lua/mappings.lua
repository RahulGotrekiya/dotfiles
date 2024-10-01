require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("i", "jk", "<ESC>")

map("n", "<leader>T", function()
  require("nvchad.term").toggle { pos = "sp", id = "abc" }
end, { desc = "Terminal toggle floating" })

map("n", "<C-t>", function()
  require("minty.huefy").open { border = true }
end, {})

vim.keymap.set("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, {})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Disable mappings
local nomap = vim.keymap.del
