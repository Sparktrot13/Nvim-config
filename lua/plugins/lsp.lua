return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ruff",
          "rust_analyzer",
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config("ruff",{
        init_options = {
          logLevel = 'error',
          -- ruff language server settings
        }
      })
      vim.lsp.config('lua_ls', {})
      vim.lsp.config('gdscript', {})
      -- local lspconfig = require("lspconfig")
      -- lspconfig.lua_ls.setup({})
      -- lspconfig.ruff.setup({})
      -- lspconfig.gdscript.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {desc="Hover Description"})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
