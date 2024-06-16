return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    opts = function()
      local dashboard = require "alpha.themes.dashboard"
      local logo = [[
 _______             ____   ____.__         
 \      \   ____  ___\   \ /   /|__| _____  
 /   |   \_/ __ \/  _ \   Y   / |  |/     \ 
/    |    \  ___(  <_> )     /  |  |  Y Y  \
\____|__  /\___  >____/ \___/   |__|__|_|  /
        \/     \/                        \/ 

                     󰌻
              @RahulGotrekiya
]]
      dashboard.section.header.val = vim.split(logo, "\n")
      -- stylua: ignore
			dashboard.section.buttons.val = {
				dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
				dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
				dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
				dashboard.button("s", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
				dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
				dashboard.button("q", " " .. " Quit", ":qa<CR>"),
			}
      -- for _, button in ipairs(dashboard.section.buttons.val) do
      --   button.opts.hl = "Comment"
      --   button.opts.hl_shortcut = ""
      --   button.opts.position = "center"
      -- end
      dashboard.section.header.opts.hl = "AlphaHeader"
      dashboard.opts.layout[1].val = 6
      return dashboard
    end,

    config = function(_, dashboard)
      -- close Lazy and re-open when the dashboard is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          once = true,
          pattern = "AlphaReady",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      require("alpha").setup(dashboard.opts)

      vim.api.nvim_create_autocmd("User", {
        once = true,
        pattern = "LazyVimStarted",
        callback = function()
          -- Get the current date and time

          -- Get the current hour
          local current_hour = tonumber(os.date "%H")

          -- Define the greeting variable
          local greeting

          if current_hour < 5 then
            greeting = "    Good night!"
          elseif current_hour < 12 then
            greeting = "  󰼰 Good morning!"
          elseif current_hour < 17 then
            greeting = "    Good afternoon!"
          elseif current_hour < 20 then
            greeting = "  󰖝  Good evening!"
          else
            greeting = "  󰖔  Good night!"
          end

          dashboard.section.footer.val = greeting

          pcall(vim.cmd.AlphaRedraw)
        end,
      })
    end,
  }

