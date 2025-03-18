local function draw()
  local x, y = term.getCursorPos()
  local savex, savey = x, y
  local trm = paintutils.loadImage("disk/assets/dmnstrt.nfp")
  paintutils.drawImage(trm, x, y)
  term.setCursorPos(savex,savey)
end

return { draw = draw }
