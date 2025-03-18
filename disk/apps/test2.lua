local function draw()
  local x, y = term.getCursorPos()
  local savex, savey = x, y
  local plchld = paintutils.loadImage("disk/assets/plchld.nfp")
  paintutils.drawImage(plchld, x, y)
  term.setCursorPos(savex,savey)
end

return { draw = draw }
