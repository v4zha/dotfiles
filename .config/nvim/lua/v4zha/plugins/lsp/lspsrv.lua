local lsp_servers = { 
  {
    name = 'lua_ls',
    settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT',
        },
        diagnostics = {
          globals = { 'vim' ,'vim.g'},
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
  'dockerls', 'yamlls', 'rust_analyzer', 'zls', 'marksman', 'rnix' , 'jdtls'};

return {
  lsp_servers = lsp_servers
}
