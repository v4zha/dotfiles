require("noice").setup({
  lsp = {
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  presets = {
    bottom_search = true,
    command_palette = true,
    long_message_to_split = true,
    inc_rename = false,
    lsp_doc_border = false,
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
