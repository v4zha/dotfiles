local mapping = require("v4zha.keymaps.whichmap").map;
local status, wk = pcall(require, "which-key");
if not status then
    return
end
-- inspired from LunarVim : )
local setup = {
 icons = {
    breadcrumb = "»",
    separator = "➜", 
    group = "+",
  },
  popup_mappings = {
    scroll_down = "<c-d>",
    scroll_up = "<c-u>",
  },
  window = {
    border = "rounded", 
    position = "bottom", 
    margin = { 1, 0, 1, 0 },
    padding = { 2, 2, 2, 2 },
    winblend = 0,
  },
  layout = {
    height = { min = 4, max = 25 }, 
    width = { min = 20, max = 50 }, 
    spacing = 3,
    align = "left",
  },
  ignore_missing = true,
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, 
  show_help = true, 
  triggers = "auto",
  triggers_blacklist = {
    i = { "j", "k" },
    v = { "j", "k" },
  },
}
local opts = {
    mode = "n",
    prefix = "<leader>",
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true
}
wk.setup(setup)
wk.register(mapping, opts)
