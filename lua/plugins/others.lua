return {
  {
    "synaptiko/xit.nvim",
    config = true,
  },

  { "norcalli/nvim-colorizer.lua", opts = { "*" } },
  { "akinsho/git-conflict.nvim", version = "*", config = true },

  {
    "linrongbin16/gitlinker.nvim",
    version = "*",
    config = function()
      require("gitlinker").setup()
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    "andythigpen/nvim-coverage",
    event = "VeryLazy",
    config = true,
    opts = {
      auto_reload = true, -- automatically reload coverage file on changes
    },
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
    config = true,
  },
  {
    "xiyaowong/transparent.nvim",
    version = "*",
    config = true,
  },
}
