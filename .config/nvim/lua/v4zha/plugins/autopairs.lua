local status, npair = pcall(require, "nvim-autopairs")
if not status then
    return
end

npair.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},
        javascript = {'template_string'},
    }
})
