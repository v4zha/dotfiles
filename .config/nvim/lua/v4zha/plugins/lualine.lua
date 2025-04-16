local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local function vtitle()
  return "v4zha nvim"
end

lualine.setup {
  options = {
    theme = "kanagawa",
    disabled_filetypes = { "packer" },
    extensions = { "man", "neo-tree", "lazy", "nvim-dap-ui", "fzf" },
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
    globalstatus = true,
    always_divide_middle = true,
  },
  tabline = {
    lualine_a = {
      {
        "buffers",
        buffers_color = {
          active = "lualine_a_normal",
          inactive = "lualine_z_inactive",
        },
        separator = "|",
      },
    },
    lualine_z = {
      {
        vtitle,
        icons_enabled = true,
        icon = { "󰘧", align = "right" },
      },
    },
  },
  sections = {
    lualine_x = {
      {
        function()
          local noice_status, noice = pcall(require, "noice")
          if noice_status and noice.api.statusline.mode.has() then
            return noice.api.statusline.mode.get()
          end
          return ""
        end,
        color = { fg = "#ff9e64" },
      },
      {
        "diagnostics",
        sources = { "nvim_lsp" },
        sections = { "error", "warn", "info", "hint" },
        symbols = { error = " ", warn = " ", info = " ", hint = " " },
        colored = true,
        update_in_insert = false,
        always_visible = true,
      },
    },
  },
}
