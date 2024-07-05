-- EXAMPLE
local base = require "nvchad.configs.lspconfig"
local on_attach = base.on_attach
local on_init = base.on_init
local capabilities = base.capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd", "tsserver" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- C++
lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

-- JavaScript & Typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggessions = false,
    },
  },

  lspconfig.emmet_ls.setup {
    filetypes = { "html", "css", "php", "javascript", "javascriptreact", "typescriptreact" },
  },
}
