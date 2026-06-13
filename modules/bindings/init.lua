local lib = "modules.bindings.core."

local modules = {
  "keybindings",
  "mousebindings"
}

for _, module in pairs(modules) do
  require(lib .. module)
end
