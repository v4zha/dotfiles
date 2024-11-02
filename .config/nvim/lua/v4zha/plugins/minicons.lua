local status, minicons = pcall(require, "mini.icons")
if not status then
    return
end
minicons.setup()
