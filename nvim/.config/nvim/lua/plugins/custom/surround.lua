return {
  "kylechui/nvim-surround",
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup {
      -- Change the 's' key in nvim-surround to avoid conflict
      keymaps = {
        insert = "<C-g>n",
        insert_line = "<C-g>N",
        normal = "yn",
        normal_cur = "ynn",
        normal_line = "yN",
        normal_cur_line = "yNN",
        visual = "N",
        visual_line = "gN",
        delete = "dn",
        change = "cn",
        change_line = "cN",
      },
    }
  end,
}

--     Old text                    Command         New text
-- --------------------------------------------------------------------------------
--     surr*ound_words             yniw)           (surround_words)
--     *make strings               yn$"            "make strings"
--     [delete ar*ound me!]        dn]             delete around me!
--     remove <b>HTML t*ags</b>    dnt             remove HTML tags
--     'change quot*es'            cn'"            "change quotes"
--     <b>or tag* types</b>        cnth1<CR>       <h1>or tag types</h1>
--     delete(functi*on calls)     dnf             function calls
-- --------------------------------------------------------------------------------
