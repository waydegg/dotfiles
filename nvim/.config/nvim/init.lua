-- Remove config files from Lua cache for reloading
for k, v in pairs(package.loaded) do
  if string.match(k, "^waydegg") then
    package.loaded[k] = nul
  end
end

require "waydegg.autocommands"
require "waydegg.options"
require "waydegg.keymaps"
require "waydegg.plugins"

