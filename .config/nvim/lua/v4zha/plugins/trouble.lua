local status, trouble = pcall(require, "trouble")

if not status then
  return
end

trouble.setup({
  icons = {
    indent = {
      middle = " ",
      last = " ",
      top = " ",
      ws = "│  ",
    },
  },
  modes = {
    diagnostics = {
      groups = {
        { "filename", format = "{file_icon} {basename:Title} {count}" },
      },
    },
    preview_float = {
      mode = "diagnostics",
      preview = {
        type = "float",
        relative = "editor",
        border = "rounded",
        title = "Preview",
        title_pos = "center",
        position = { row = 0, col = -2 },
        size = { width = 0.4, height = 0.4 },
        zindex = 200,
      },
    },
  },
  position = "bottom",
  height = 15,
  width = 50,
  auto_open = false,
  auto_close = false,
  use_diagnostic_signs = true,
})
