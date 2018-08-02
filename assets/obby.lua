obby = {}
local quads = {}
 
  function resizeb(list, scale)
    for _,v in pairs(list) do
        
            list[_] = list[_] * scale
           -- v[1] = v[1] * scale
    end
end

  obby.new = function(x, y, physics, scale, list)
    local self = self or {}
    love.graphics.setColor(0,0,0,255)
    local didtest = false
    
    resizeb(list, scale)
    --self.shape = love.physics.newPolygonShape(sidel[1][1],sidel[1][2],sidel[2][1],sidel[2][2],
   -- sidel[3][1], sidel[3][2], sidel[4][1], sidel[4][2], sidel[5][1], sidel[5][2], sidel[6][1], sidel[6][2],
   -- sidel[7][1], sidel[7][2], sidel[8][1], sidel[8][2])
   self.shape = love.physics.newPolygonShape(list)
    self.body = love.physics.newBody(physics,x, y, "static" )
    self.fixture = love.physics.newFixture(self.body,self.shape, 1)
    self.fixture:setUserData("obby")
    self.fixture:setGroupIndex(-5)
    self.fixture:setCategory(2)
    self.shape2 = love.physics.newRectangleShape(200, 50)
    self.fixture2 = love.physics.newFixture(self.body, self.shape2, 1)
    self.fixture2:setSensor(true)


    self.draw = function()
        love.graphics.setColor(0,0,0,255)
        local templist = list
      
        if didtest == false then
        for f,v in ipairs(templist) do
        
          if (f % 2 == 0) then
          templist[f] = templist[f] + self.body:getY()
          --love.graphics.setColor(255,255,255,128)
          else
            templist[f] = templist[f] + self.body:getX()
          end
        end
        didtest = true
      end

        love.graphics.polygon("line", templist)
    end

    self.resize = function()
       -- for _,v in sidel do

        --end
    end
    

    return self
  end

 


--local objects = shapes.layers.objects