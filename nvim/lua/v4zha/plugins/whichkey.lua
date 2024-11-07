local mapping = require("v4zha.keymaps.whichmap").map;
local status, wk = pcall(require, "which-key");
if not status then
  return
end

wk.setup()
wk.add(mapping)
