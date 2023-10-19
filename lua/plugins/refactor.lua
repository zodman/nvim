return {
  {
    "ThePrimeagen/refactoring.nvim",
    keys = {
      {
        "<leader>rr",
        function()
          require("telescope").extensions.refactoring.refactors()
        end,
        mode = { "n", "x" },
        desc = "Refactor",
      },
    },
    config = true,
    dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
  },
}
