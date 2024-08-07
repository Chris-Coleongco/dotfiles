-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()


local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}  -- need to add formatting bawegwj

lspconfig.gopls.setup({}) -- need to add formatting bawegwj
-- EXAMPLE
local servers = { "html", "cssls", }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.tsserver.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}
