local whichmap = {
  { "leader<b>", "<CMD>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<CR>", desc = "Buffers" },
  { "<leader>e", "<CMD>Neotree focus left toggle<CR>",                                                                             desc = "Neotree" },
  { "<leader>E", "<CMD>Neotree focus float toggle<CR>",                                                                            desc = "Neotree Float" },
  { "<leader>w", "<CMD>w!<CR>",                                                                                                    desc = "Save" },
  { "<leader>q", "<CMD>q!<CR>",                                                                                                    desc = "Quit" },
  { "<leader>c", "<CMD>Noice dismiss<CR>",                                                                                         desc = "clear Noice messages" },
  {
    "<leader>f",
    "<CMD>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<CR>",
    desc = "Find files"
  }, {"<leader>F","<CMD>Telescope live_grep theme=ivy<CR>",desc="Live Grep"},
  {
  { "<leader>d",  group = "Debugger" },
  { "<leader>db", "<CMD> lua require('dap').toggle_breakpoint()<CR>", desc = "Toggle BreakPoint" },
  { "<leader>dc", "<CMD> lua require('dap').clear_breakpoints()<CR>", desc = "Clear BreakPoints" },
  { "<leader>di", "<CMD> lua require('dap').step_into()<CR>",         desc = "Step Into" },
  { "<leader>do", "<CMD> lua require('dap').step_out()<CR>",          desc = "Step Out" },
  { "<leader>dr", "<CMD> lua require('dap').repl.open()<CR>",         desc = "Open Repl" },
  { "<leader>dk", "<CMD> lua require('dap').continue()<CR>",          desc = "Continue" },
  { "<leader>dl", "<CMD> lua require('dap').run_last()<CR>",          desc = "Run Last" },
  { "<leader>de", "<CMD> lua require('dap').terminate()<CR>",         desc = "terminate Debugger" },
}, {
  { "<leader>l",  group = "LSP" },
  { "<leader>la", "<CMD>lua vim.lsp.buf.code_action()<CR>",                                desc = "Code Action" },
  { "<leader>lc", "<CMD>lua vim.lsp.buf.hover()<CR>",                                      desc = "Hover Actions" },
  { "<leader>ld", "<CMD>lua require('telescope.builtin').lsp_document_diagnostics()<CR>",  desc = "Document Diagnostics" },
  { "<leader>lw", "<CMD>lua require('telescope.builtin').lsp_workspace_diagnostics()<CR>", desc = "Workspace Diagnostics" },
  { "<leader>lf", "<CMD>lua vim.lsp.buf.format{async=true}<CR>",                           desc = "Format" },
  { "<leader>li", "<CMD>LspInfo<CR>",                                                      desc = "Info" },
  { "<leader>lj", "<CMD>lua vim.lsp.diagnostic.goto_next()<CR>",                           desc = "Next Diagnostic" },
  { "<leader>lk", "<CMD>lua vim.lsp.diagnostic.goto_prev()<CR>",                           desc = "Prev Diagnostic" },
  { "<leader>ll", "<CMD>lua vim.lsp.codelens.run()<CR>",                                   desc = "CodeLens Action" },
  { "<leader>lq", "<CMD>lua vim.lsp.diagnostic.set_loclist()<CR>",                         desc = "Quickfix" },
  { "<leader>lr", "<CMD>lua vim.lsp.buf.rename()<CR>",                                     desc = "Rename" },
  { "<leader>ls", "<CMD>Telescope lsp_document_symbols<CR>",                               desc = "Document Symbols" },
  { "<leader>lS", "<CMD>Telescope lsp_dynamic_workspace_symbols<CR>",                      desc = "Workspace Symbols" },

}, {

  { "<leader>s",  group = "Telescope" },
  { "<leader>sb", "<CMD>Telescope git_branches<CR>", desc = "Checkout branch" },
  { "<leader>sc", "<CMD>Telescope colorscheme<CR>",  desc = "Colorscheme" },
  { "<leader>sh", "<CMD>Telescope help_tags<CR>",    desc = "Find Help" },
  { "<leader>sM", "<CMD>Telescope man_pages<CR>",    desc = "Man Pages" },
  { "<leader>sr", "<CMD>Telescope oldfiles<CR>",     desc = "Open Recent File" },
  { "<leader>sR", "<CMD>Telescope registers<CR>",    desc = "Registers" },
  { "<leader>sk", "<CMD>Telescope keymaps<CR>",      desc = "Keymaps" },
  { "<leader>sC", "<CMD>Telescope commands<CR>",     desc = "Commands" },
},
}

return {
  map = whichmap
}
