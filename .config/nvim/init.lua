local function load_config_from_dir(config_dir, prefix)
  local files = vim.fn.readdir(config_dir)
  for _, file in ipairs(files) do
    local file_path = config_dir .. "/" .. file
    if vim.fn.isdirectory(file_path) == 1 then
      load_config_from_dir(file_path, prefix .. "." .. file)
    elseif file:match("%.lua$") and file ~= "plugin.lua" then
      local conf_name = file:gsub("%.lua$", "")
      require(prefix .. "." .. conf_name)
    end
  end
end

local prefix = "v4zha"
local config_path = vim.fn.stdpath("config") .. "/lua/" .. prefix .. "/"
require("v4zha.plugin")
load_config_from_dir(config_path, prefix)
