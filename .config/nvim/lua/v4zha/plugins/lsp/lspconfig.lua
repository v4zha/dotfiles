local lsp_servers = require("v4zha.plugins.lsp.lspsrv").lsp_servers
local lsp_flags = {
  debounce_text_changes = 150
}

local status, lspconfig = pcall(require, 'lspconfig')

if not status then
  return
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local function lsp_setup(lsp_server, settings)
  local opts = {
    flags = lsp_flags,
    capablities = capabilities,
  }
  if settings then
    opts["settings"] = settings
  end
  lspconfig[lsp_server].setup(opts)
end

for _, lsp_server in pairs(lsp_servers) do
  if type(lsp_server) == "table" then
    lsp_setup(lsp_server["name"], lsp_server["settings"])
  else
    lsp_setup(lsp_server)
  end
end

local signs = {
  Error = " ",
  Warn = " ",
  Hint = " ",
  Info = " "
}
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, {
    text = icon,
    texthl = hl,
    numhl = hl
  })
end
