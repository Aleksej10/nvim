require'lspconfig'.ccls.setup{}
require'lspconfig'.clangd.setup{}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}


local lspconfig = require('lspconfig')

lspconfig.solargraph.setup {
  capabilities = capabilities,
  cmd = { "solargraph", "stdio" },
  filetypes = { 'ruby' },
  flags = { debounce_text_changes = 150, },
  on_attach = function(_, _)
    print("Attached to Solargraph")
  end,
  handlers = {
    ["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        -- Disable virtual_text on file load
        -- Show with vim.lsp.diagnostic.show_line_diagnostics()
        virtual_text = false
      }
    ),
  },
}
