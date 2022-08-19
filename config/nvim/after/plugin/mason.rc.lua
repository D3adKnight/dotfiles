local status, mason = pcall(require, 'mason')
if (not status) then return end
local status2, lsp_config = pcall(require, 'mason-lspconfig')
if (not status2) then return end

mason.setup {}
lsp_config.setup {
  ensure_installed = { 'tailwindcss' }
}

require 'lspconfig'.tailwindcss.setup {}
