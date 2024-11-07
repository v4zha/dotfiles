local autocmd = vim.api.nvim_create_autocmd

autocmd('Filetype', {
  pattern = { 'tpp' },
  command = 'set filetype=cpp'
})
