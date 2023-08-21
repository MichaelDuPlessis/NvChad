local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"

local servers = { "pyright", "clangd", "tsserver" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities
  }
end

lspconfig["hls"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "haskell-language-server-wrapper", "--lsp" },
}
