return {
  { "stevearc/dressing.nvim", event = "VeryLazy" },
  { "echasnovski/mini.bufremove", version = "*" },
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
}
