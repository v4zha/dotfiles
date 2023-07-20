local status, lualine = pcall(require, "lualine")
if not status then
    return
end

local function vscode()
    return 'v4zha Studio Code Pro'
end

lualine.setup {
    options = {
        theme = 'kanagawa',
        disabled_filetypes = { 'packer' },
        extensions = { 'man', 'nvim-tree' },
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        globalstatus = true,
        always_divide_middle = true
    },
    tabline = {
        lualine_a = {
            {
                'buffers',
                buffers_color = {
                    active = 'lualine_a_normal',
                    inactive = 'lualine_z_inactive',
                    separator = "|"
                },
            }
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
            { vscode,
                icons_enabled = true,
                icon = { '󰘧', align = 'right' },
            }
        }
    }
}
