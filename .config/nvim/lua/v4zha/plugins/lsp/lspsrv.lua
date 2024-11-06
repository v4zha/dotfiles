local lsp_servers = { 'clangd',

  {
    name = 'lua_ls',
    settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT',
        },
        diagnostics = {
          globals = { 'vim' },
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
        },
        telemetry = {
          enable = false,
        },
      },
    },
  },
  'cmake', 'taplo', 'hls', 'ocamllsp', 'clangd','basedpyright',
  'dockerls', 'yamlls', 'rust_analyzer', 'zls', 'marksman', 'rnix' };

return {
  lsp_servers = lsp_servers
}
