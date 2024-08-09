return {
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
      format = { timeout_ms = 120000 },
      servers = { eslint = {} },
      setup = {
        eslint = function()
          require("lazyvim.util").lsp.on_attach(function(client)
            if client.name == "eslint" then
              client.server_capabilities.documentFormattingProvider = true
            elseif client.name == "vtsls" then
              client.server_capabilities.documentFormattingProvider = false
            elseif client.name == "tsserver" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
      },
    },
  },
  {
    "andythigpen/nvim-coverage",
    event = "VeryLazy",
    opts = {
      auto_reload = true, -- automatically reload coverage file on changes
    },
  },
}
