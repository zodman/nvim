return {
  { "stevearc/dressing.nvim", event = "VeryLazy" },
  { "echasnovski/mini.bufremove", version = "*" },
  { "akinsho/git-conflict.nvim", version = "*", config = true },

  {
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = { "Outline", "OutlineOpen" },
    keys = { -- Example mapping to toggle outline
      { "<leader>tt", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
    opts = {
      -- Your setup opts here
    },
  },

  {
    "linrongbin16/gitlinker.nvim",
    version = "*",
    config = function()
      require("gitlinker").setup()
    end,
  },

  {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
    },
  },
}
