return {
  { "sainnhe/sonokai" },
  { "navarasu/onedark.nvim" },
  {
    "daschw/leaf.nvim",
  },
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    opt = {
      transparent_mode = true,
      transparent = true,
    },
    config = function()
      vim.o.background = "dark" -- or 'light'
    end,
  },
  {
    "fabius/molokai.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = true,
      terminal_colors = true,
    },
  },
  { "shaunsingh/nord.nvim" },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  { "neanias/everforest-nvim" },
  { "rebelot/kanagawa.nvim" },

  { "iruzo/matrix-nvim" },
  { "luisiacc/the-matrix.nvim" },
  {
    "FelipeIzolan/lipoide.nvim",
    opt = {
      transparent = true, -- boolean
      transparent_column = true, -- boolean
      comment_italic = true, -- boolean
    },
  },
}
