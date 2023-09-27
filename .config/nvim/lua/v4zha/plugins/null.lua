local status, null = pcall(require, "null-ls")
if not status then
  return
end

local src = { null.builtins.formatting.black,
  null.builtins.diagnostics.flake8.with({ extra_args = { "--max-line-length", "88" ,"--extend-ignore","E203"} }),
}

null.setup {
  sources = src
}
