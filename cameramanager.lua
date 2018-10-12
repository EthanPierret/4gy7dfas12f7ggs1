camera = require("camera")
cam = camera.new()

function followcat(cat,id,halfw,halfh)

--cam:setPos(cat.catslist[id].p.body:getX()-halfw, cat.catslist[id].p.body:getY()-halfh)
cam:setPos(0, cat-halfh*1.5)
--cam:push()
end

function getposcam()
return cam.x, cam.y
end

function setcampos(x,y)
    
    cam:setPos(x,y)
    --cam:push()
end