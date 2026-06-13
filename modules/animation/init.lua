local lib = "modules.animation.core."

local modules = {
  "curve",
  "animation"
}

for _, module in pairs(modules) do
  require(lib .. module)
end
