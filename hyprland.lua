local lib = "modules."

local modules = {
  "hyprland",
  "animation",
  "bindings"
}

for _, module in pairs(modules) do
  require(lib ..  module)
end
