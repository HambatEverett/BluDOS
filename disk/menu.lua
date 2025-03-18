term.setBackgroundColor(colors.black)
term.setTextColor(colors.white)
term.clear()
local bg = paintutils.loadImage("disk/assets/bg2.nfp")
paintutils.drawImage(bg,1,1)
term.setCursorPos(1,1)
term.setTextColor(colors.orange)
term.setBackgroundColor(colors.orange)
print("###################################################")
term.setBackgroundColor(colors.black)
term.setTextColor(colors.white)
--- Loads each module in a directory into a table.
---@param dir string The path to the directory to load (can be relative)
---@return table mods The loaded modules, indexed by name
local function loadDir(dir)
  local path = package.path
  package.path = package.path .. ";" .. dir .. "/?.lua"
  local mods = {}
  for _, p in ipairs(fs.list(shell.resolve(dir))) do
    p = p:gsub("%.lua$", "")
    mods[p] = require(p)
  end
  package.path = path
  return mods
end
term.setCursorPos(2,1)
local current = 1
local mods = loadDir("/disk/apps")
for name, mod in pairs(mods) do
  if current == 1 then
    term.setCursorPos(3,3)
    mod.draw()
    current = current+1
  else
    local x, y = term.getCursorPos()
    local nextx = x+6
    term.setCursorPos(nextx,3)
    mod.draw()
    current = current+1
  end
end
