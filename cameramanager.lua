camera = require("camera")
cam = camera.new()

function followcat(cat)
local x = cat:getX()
local y = cat:getY()
setPos(x,y)
end