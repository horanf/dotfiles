return {
  {
    "nvim-java/nvim-java",
    ft = { "java", "yaml", "jproperties" },
    config = function()
      require("java").setup({
        spring_boot_tools = { enable = true },
      })
      vim.lsp.enable("jdtls")
    end,
    keys = {
      { "<leader>fj", "<cmd>:FzfLua lsp_live_workspace_symbols<cr>", desc = "Workspace Symbols Search" },
    },
  },
}
