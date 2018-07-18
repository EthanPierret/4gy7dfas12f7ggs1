
shape = {}
local quads = {}

local sidel = {
     2, -4 ,
      564,  0 ,
      390,  86 ,
      200,  120 ,
      88,  220 ,
      128,  444 ,
      334,  492 ,
      578,  558
  }
  
 
  function resizeb(list, scale)
    for _,v in pairs(list) do
        
            list[_] = list[_] * scale
           -- v[1] = v[1] * scale
    end
end

  shape.new = function(x, y, physics, scale)
    local self = self or {}
    love.graphics.setColor(0,0,0,255)
    local workinglist = sidel[1]
    resizeb(sidel, scale)
    --self.shape = love.physics.newPolygonShape(sidel[1][1],sidel[1][2],sidel[2][1],sidel[2][2],
   -- sidel[3][1], sidel[3][2], sidel[4][1], sidel[4][2], sidel[5][1], sidel[5][2], sidel[6][1], sidel[6][2],
   -- sidel[7][1], sidel[7][2], sidel[8][1], sidel[8][2])
   self.shape = love.physics.newPolygonShape(sidel)
    self.body = love.physics.newBody(physics,x, y, "static" )
    self.fixture = love.physics.newFixture(self.body,self.shape, 1)
    self.draw = function()
       -- love.graphics.polygon("outline",)

    end

    self.resize = function()
        for _,v in sidel do

        end
    end

    return self
  end

 


--local objects = shapes.layers.objects

