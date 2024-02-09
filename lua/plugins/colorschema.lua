return {
  { "sainnhe/sonokai" },
  { "navarasu/onedark.nvim" },
  { "shaunsingh/solarized.nvim" },
  {
    "fabius/molokai.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = true,
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
}
