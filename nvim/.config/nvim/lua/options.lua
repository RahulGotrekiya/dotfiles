require "nvchad.options"

-- add yours here!
vim.opt.relativenumber = true

local autocmd = vim.api.nvim_create_autocmd

autocmd("VimEnter", {
  command = ":silent !kitty @ set-spacing padding=0 margin=0",
})

autocmd("VimLeavePre", {
  command = ":silent !kitty @ set-spacing padding=15 margin=0",
})

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
