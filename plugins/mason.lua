-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    setup = function(_, opts)
      -- Asegurarse de que opts.ensure_installed exista y sea una tabla
      opts.ensure_installed = opts.ensure_installed or {}
      -- Añadir más elementos a la tabla opts.ensure_installed
      local astronvim_utils = require "astronvim.utils"
      opts.ensure_installed = astronvim_utils.list_insert_unique(opts.ensure_installed, "lua_ls")
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    setup = function(_, opts)
      -- Asegurarse de que opts.ensure_installed exista y sea una tabla
      opts.ensure_installed = opts.ensure_installed or {}
      -- Añadir más elementos a la tabla opts.ensure_installed
      opts.ensure_installed = astronvim_utils.list_insert_unique(opts.ensure_installed, "prettier")
      opts.ensure_installed = astronvim_utils.list_insert_unique(opts.ensure_installed, "skylua")
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    setup = function(_, opts)
      -- Asegurarse de que opts.ensure_installed exista y sea una tabla
      opts.ensure_installed = opts.ensure_installed or {}
      -- Añadir más elementos a la tabla opts.ensure_installed
      opts.ensure_installed = astronvim_utils.list_insert_unique(opts.ensure_installed, "python")
    end,
  },
}
