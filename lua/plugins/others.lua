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
    "xiyaowong/transparent.nvim",
    version = "*",
    config = true,
    opts = {
      extra_groups = {
        "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
        "NvimTreeNormal",
        "NeoTreeNormal",
        "NeoTreeFloatBorder",
        "NeoTreeNormalNC",
      },
    },
  },
  {

    "echasnovski/mini.icons",
    opts = {
      extension = {

        ["utils.ts"] = { glyph = "󰻲", hl = "MiniIconsAzure" },
        ["controller.ts"] = { glyph = "󰮂", hl = "MiniIconsAzure" },
        ["interceptor.ts"] = { glyph = "󰕝", hl = "MiniIconsAzure" },
        ["service.ts"] = { glyph = "󰪭", hl = "MiniIconsAzure" },
        ["module.ts"] = { glyph = "󰚿", hl = "MiniIconsAzure" },
        ["spec.ts"] = { glyph = "", hl = "MiniIconsAzure" },
        ["schema.ts"] = { glyph = "󱙋", hl = "MiniIconsAzure" },
      },
    },
  },
  -- {
  --   "dmmulroy/tsc.nvim",
  --   config = function()
  --     require("tsc").setup()
  --   end,
  -- },
  { "kilavila/nvim-bufferlist" },
}
