local lib = "modules.hyprland.core."

local modules = {
  "monitors",
  "startup",
  "layout",
  "input",
  "workspaces"
}

for _, module in pairs(modules) do
  require(lib .. module)
end
