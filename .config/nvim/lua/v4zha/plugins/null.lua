local status, null = pcall(require, "null-ls")
if not status then
    return
end

local src = { null.builtins.formatting.black,
    null.builtins.diagnostics.flake8,
}

null.setup {
    sources = src
}
