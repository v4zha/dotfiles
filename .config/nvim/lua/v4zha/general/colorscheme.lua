local status, kanagawa = pcall(require, "kanagawa")
if not status then
    return
end
kanagawa.setup()

vim.opt.laststatus = 3
vim.opt.fillchars:append({
    horiz = '━',
    horizup = '┻',
    horizdown = '┳',
    vert = '┃',
    vertleft = '┨',
    vertright = '┣',
    verthoriz = '╋',
})
vim.cmd("colorscheme kanagawa-wave")
