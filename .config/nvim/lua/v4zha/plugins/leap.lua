local status,leap=pcall(require,"leap")
if not status then
    return
end
leap.add_default_mappings()
vim.keymap.del({'x', 'o'}, 'x')
vim.keymap.del({'x', 'o'}, 'X')
