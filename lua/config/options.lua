-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
opts = {
  --- @type lspconfig.options
  servers = {
    eslint = {
      settings = {
        -- helps eslint find the eslintrc when it's placed in a subfolder instead of the cwd root
        workingDirectory = { mode = "auto" },
      },
    },
  },
  setup = {
    eslint = function()
      vim.api.nvim_create_autocmd("BufWritePre", {
        callback = function(event)
          if not require("lazyvim.plugins.lsp.format").enabled() then
            -- exit early if autoformat is not enabled
            return
          end

          local client = vim.lsp.get_active_clients({ bufnr = event.buf, name = "eslint" })[1]
          if client then
            local diag = vim.diagnostic.get(event.buf, { namespace = vim.lsp.diagnostic.get_namespace(client.id) })
            if #diag > 0 then
              vim.cmd("EslintFixAll")
            end
          end
        end,
      })
    end,
  },
}
