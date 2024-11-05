require("noice").setup({
  lsp = {
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  presets = {
    bottom_search = true,         -- use a classic bottom cmdline for search
    command_palette = true,       -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false,           -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false,       -- add a border to hover docs and signature help
  },
  routes = {
    {
      filter = {
        event = "msg_show",
        kind = "",
        find = "written",
      },
       {
        view = "notify",
        filter = { event = "msg_showmode" },
      },
      opts = { skip = true },
    },
  },
})
vim.keymap.set({ "n", "i", "s" }, "<c-n>", function()
  if not require("noice.lsp").scroll(4) then
    return "<c-n>"
  end
end, { silent = true, expr = true })

vim.keymap.set({ "n", "i", "s" }, "<c-p>", function()
  if not require("noice.lsp").scroll(-4) then
    return "<c-p>"
  end
end, { silent = true, expr = true })
