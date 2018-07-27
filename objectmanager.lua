map = {}
local image = love.graphics.newImage("cat.jpg")
local obby = require("assets.obby")
local cat = require("assets.cat")
local food = require("assets.food")
local width = image:getWidth()
local height = image:getHeight()

local obbys = {
    sidel = {
        2, -4 ,
         564,  0 ,
         390,  86 ,
         200,  120 ,
         88,  220 ,
         128,  444 ,
         334,  492 ,
         578,  558
     },
     sider = {
        2, -4 ,
         564,  0 ,
         390,  86 ,
         200,  120 ,
         88,  220 ,
         128,  444 ,
         334,  492 ,
         578,  558
     }
}

local obbylist = {}

map.new = function(x, y, id, physics, scale)
  local self = self or {}
  self.x = x
  self.y = y
  self.id = id
  self.scale = scale





  if self.id = 1 then
    obbylist.append(
    obby.new(self.x, self.y, physics, self.scale, obbys[sidel])
    obby.new(self.x + 250, self.y, physics, self.scale, obbys[sider])
    food.new(self.x + 50, self.y + 50, 25, physics)

end

map.draw = function ()

for f,v in ipairs(obbylist) do
  
  end
end

