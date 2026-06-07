return {
  "uga-rosa/translate.nvim",
  cmd = "Translate",
  keys = {
    { "<leader>te", "<cmd>Translate EN<cr>", mode = { "n", "x" }, desc = "Translate to English" },
    { "<leader>tz", "<cmd>Translate ZH<cr>", mode = { "n", "x" }, desc = "Translate to Chinese" },
  },
  opts = {
    default = {
      command = "translate_shell",
    },
  },
}
