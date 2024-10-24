require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("i", "jk", "<ESC>")

-- nvchad/huefy
map("n", "<C-t>", function()
  require("minty.huefy").open { border = true }
end, { desc = "open colorPicker" })

--nvchad/menu
map("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, {})

-- change tab with alt+{no} like alt+1
for i = 1, 9, 1 do
  map("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end

-- theme picker
map({ "n" }, "<leader>th", function()
  require("nvchad.themes").open { icon = " " }
end, { desc = "open theme picker" })

-- toggle Silicon
map({ "v" }, "<leader>sc", function()
  require("nvim-silicon").clip()
end, { desc = "copy snapshot" })

map({ "v" }, "<leader>ss", function()
  require("nvim-silicon").file()
end, { desc = "take snapshot" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Disable mappings
local nomap = vim.keymap.del
