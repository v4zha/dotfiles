local status1, mason = pcall(require, "mason")
local status2, mason_cfg = pcall(require, "mason-lspconfig")
if not status1 and status2 then
  return
end

mason.setup()
mason_cfg.setup()
