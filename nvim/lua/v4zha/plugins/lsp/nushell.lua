local status, nushell = pcall(require, 'nu')
if not status then
  return
end
nushell.setup();
