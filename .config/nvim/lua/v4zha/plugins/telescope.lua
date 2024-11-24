local status, telescope = pcall(require, "telescope")
if not status then
  return
end
telescope.setup({
  pickers = {
    lsp_document_diagnostics = {
      theme = "get_dropdown",
      sorter = "get_fuzzy_file"
    }
  },
  mapping = {
    n = {
      ['<c-d>'] = require('telescope.actions').delete_buffer
    }
  }
})
telescope.load_extension('notify')
