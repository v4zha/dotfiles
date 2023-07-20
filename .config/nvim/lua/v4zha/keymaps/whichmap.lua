local whichmap = {
  ["b"] = {
    "<CMD>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<CR>",
    "Buffers" },
  ["e"] = { "<CMD>NeoTreeFocusToggle<CR>", "NvimTree" },
  ["E"] = { "<CMD>NeoTreeFloatToggle<CR>", "NvimTree" },
  ["w"] = { "<CMD>w!<CR>", "Save" },
  ["q"] = { "<CMD>q!<CR>", "Quit" },
  ["c"] = { "<CMD>lua vim.lsp.buf.hover()<CR>", "Hover Actions" },
  -- ["c"] = { "<CMD>Bdelete!<CR>", "Close Buffer" },
  ["f"] = {
    "<CMD>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<CR>",
    "Find files" },
  ["F"] = { "<CMD>Telescope live_grep theme=ivy<CR>", "Live Grep" },
  ["g"] = { "<CMD>FloatermNew --height=0.8 --width=0.8 gitui<CR>", "GitUi" },
  ["m"] = { "<CMD>MarkdownPreviewToggle<CR>", "Markdown Preview" },
  ["t"] = { "<CMD>FloatermToggle --height=0.8 --width=0.8 <CR>", "Floaterm" },
  ["v"] = { "<CMD>FloatermNew  --height=0.8 --width=0.8  vmod && $SHELL <CR>", "Vmod Loader" },
  d = {
    name = "Debugger",
    b = { "<CMD> lua require('dap').toggle_breakpoint()<CR>", "Toggle BreakPoint" },
    k = { "<CMD> lua require('dap').continue()<CR>", "Continue" },
    l = { "<CMD> lua require('dap').run_last()<CR>", "Run Last" },
  },
  p = {
    name = "Packer",
    c = { "<CMD>PackerCompile<CR>", "Compile" },
    i = { "<CMD>PackerInstall<CR>", "Install" },
    s = { "<CMD>PackerSync<CR>", "Sync" },
    S = { "<CMD>PackerStatus<CR>", "Status" },
    u = { "<CMD>PackerUpdate<CR>", "Update" }
  },

  h = {
    name = "Hexokinase",
    t = { "<CMD>HexokinaseToggle<CR>", "Toggle Hexokinase" },
    f = { "<CMD>HexokinaseTurnOn<CR>", "Turn On Hexokinase" },
    g = { "<CMD>HexokinaseTurnOff<CR>", "Turn Off Hexokinase" },
  },
  l = {
    name = "LSP",
    a = { "<CMD>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
    c = { "<CMD>lua vim.lsp.buf.hover()<CR>", "Hover Actions" },
    d = { "<CMD>lua require('telescope.builtin').lsp_document_diagnostics()<CR>", "Document Diagnostics" },
    w = { "<CMD>lua require('telescope.builtin').lsp_workspace_diagnostics()<CR>", "Workspace Diagnostics" },
    f = { "<CMD>lua vim.lsp.buf.format{async=true}<CR>", "Format" },
    i = { "<CMD>LspInfo<CR>", "Info" },
    I = { "<CMD>Mason<CR>", "Mason Info" },
    j = { "<CMD>lua vim.lsp.diagnostic.goto_next()<CR>", "Next Diagnostic" },
    k = { "<CMD>lua vim.lsp.diagnostic.goto_prev()<CR>", "Prev Diagnostic" },
    l = { "<CMD>lua vim.lsp.codelens.run()<CR>", "CodeLens Action" },
    q = { "<CMD>lua vim.lsp.diagnostic.set_loclist()<CR>", "Quickfix" },
    r = { "<CMD>lua vim.lsp.buf.rename()<CR>", "Rename" },
    s = { "<CMD>Telescope lsp_document_symbols<CR>", "Document Symbols" },
    S = { "<CMD>Telescope lsp_dynamic_workspace_symbols<CR>", "Workspace Symbols" }
  },
  s = {
    name = "Search",
    b = { "<CMD>Telescope git_branches<CR>", "Checkout branch" },
    c = { "<CMD>Telescope colorscheme<CR>", "Colorscheme" },
    h = { "<CMD>Telescope help_tags<CR>", "Find Help" },
    M = { "<CMD>Telescope man_pages<CR>", "Man Pages" },
    r = { "<CMD>Telescope oldfiles<CR>", "Open Recent File" },
    R = { "<CMD>Telescope registers<CR>", "Registers" },
    k = { "<CMD>Telescope keymaps<CR>", "Keymaps" },
    C = { "<CMD>Telescope commands<CR>", "Commands" }
  },
  -- r = {
  --     name = "Rust",
  --     a = {"<CMD>RustHoverActions<CR>", "RustHoverAction"}, -- HoverActions in Window : )
  --     c = {"<CMD>RustCodeAction<CR>", "RustCodeAction"}, -- Code Action in Window : )
  --     g = {"<CMD>RustViewCrateGraph<CR>", "CrateGraph"}
  -- }
}

return {
  map = whichmap
}
