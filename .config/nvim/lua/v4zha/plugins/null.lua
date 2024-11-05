local status, null = pcall(require, "null-ls")
if not status then
  return
end

local src = { 
  null.builtins.formatting.black,
}

null.setup {
  sources = src
}
