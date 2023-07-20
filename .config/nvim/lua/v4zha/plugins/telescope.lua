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
  }
})
telescope.load_extension('projects')
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})
