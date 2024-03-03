return {
  { "tpope/vim-unimpaired" },
  {
    "afreakk/unimpaired-which-key.nvim",
    dependencies = { "tpope/vim-unimpaired" },
    config = function()
      local wk = require("which-key")
      local uwk = require("unimpaired-which-key")
      wk.register(uwk.normal_mode)
      wk.register(uwk.normal_and_visual_mode, { mode = { "n", "v" } })
    end,
  },
}
