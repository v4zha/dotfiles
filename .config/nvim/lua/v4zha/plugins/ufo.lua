vim.o.foldcolumn = 'auto:9'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

local disabled_filetypes = {
  "lua",
  "markdown",
  "text",
}

local status, ufo = pcall(require, "ufo")
if not status then
  return
end

ufo.setup({
  provider_selector = function(bufnr, filetype, buftype)
    if vim.tbl_contains(disabled_filetypes, filetype) then
      return { "indent" } 
    end
    return { "lsp", "indent" }
  end,
})

vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
