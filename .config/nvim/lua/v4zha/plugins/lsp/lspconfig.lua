local capabilities = require("cmp_nvim_lsp").default_capabilities()

capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

local lspconfig = require("lspconfig")
local lsp_servers = require("v4zha.plugins.lsp.lspsrv").lsp_servers

for _, lsp_server in pairs(lsp_servers) do
  if type(lsp_server) == "table" then
    lspconfig[lsp_server.name].setup({
      capabilities = capabilities,
      settings = lsp_server.settings,
    })
  else
    lspconfig[lsp_server].setup({
      capabilities = capabilities,
    })
  end
end

local s = vim.diagnostic.severity
local text_sign = {
  [s.ERROR] = "",
  [s.WARN] = " ",
  [s.INFO] = "󰋖",
  [s.HINT] = " "
}

vim.diagnostic.config {
  signs = { text = text_sign },
  underline = true,
}
