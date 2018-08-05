map = {}

local obby = require("assets.obby")
require("assets.cat")
require("assets.food")
require("assets.leveldata")
require("assets.logic")



removeshape = function(id, ind, list)
    
   if ind == -4 then
    
      --  list.obbylist.food[id]:destroy()
        
        table.remove(list.obbylist.food, id)

   elseif ind == -5 then
        
    table.remove(list.obbylist.obbys, id)

   elseif ind == -2 then

    table.remove(list.catslist, id)

   end


   list.destroying = false
end



map.new = function(x, y, idmap,scale, id, world)
  local self = self or {}
  self.physics = world
  
  
  local obbylist = {
    food = {},
    obbys = {}
}
self.obbylist = obbylist

  self.x = x
  self.y = y
  self.idmap = idmap
  self.scale = scale


  local foodids = getlistlenth(obbylist.food)
  local obbyids = getlistlenth(obbylist.obbys)
  self.mapdata = getmapdata(id)
            --- Map definition

    self.obbylist.obbys[obbyids+1] = obby.new(self.x, self.y, self.physics)
    self.obbylist.obbys[obbyids+1]:newbody(self.x, self.y, self.physics)

   

    for f,v in ipairs(self.mapdata) do
        if self.mapdata[f] ~= nil then
            local templist = self.mapdata[f]["data"]
            local temp2 = self.mapdata[f]["off"]
            
            for _,v in pairs(templist) do
        
                templist[_] = templist[_] * self.scale

               -- v[1] = v[1] * scale
                end

                for _,v in pairs(temp2) do
        
                    temp2[_] = temp2[_] * self.scale
    
                   -- v[1] = v[1] * scale
                    end

    for f,v in ipairs(templist) do
        
        if (f % 2 == 0) then
        templist[f] = templist[f] + temp2["y"]
        --love.graphics.setColor(255,255,255,128)
        else
          templist[f] = templist[f] + temp2["x"]
        end
      end
    local templist2 = {}
      for f,v in ipairs(templist) do

        table.insert(templist2, templist[f])

      end
            
            
            self.obbylist.obbys[obbyids+1]:newshape(self.mapdata[f]["off"]["x"], self.mapdata[f]["off"]["y"], self.physics, self.scale, templist, templist2)
        end

  

 --[[
 if self.idmap == 1 then
    
    self.obbylist.obbys[obbyids+1] = obby.new(self.x, self.y, self.physics, self.scale, obbysdata.sidel)
    self.obbylist.obbys[obbyids+2] = obby.new(self.x + math.floor(self.scale*500), self.y, self.physics, self.scale, obbysdata.sider)
    self.obbylist.food[foodids+1] = food.new(self.x + math.floor(self.scale*200), self.y + math.floor(self.scale*150), 25, self.physics, foodids+1) ]]--
   -- table.insert(obbylist.food, food.new(self.x + math.floor(self.scale*200), self.y + math.floor(self.scale*150), 25, physics,12))
  --testfood = food.new(self.x + math.floor(self.scale*50), self.y + math.floor(self.scale*50), 25, physics)
  --obbylist[id] = tempstlist


end


self.draw = function ()

  --[[  for i, item in ipairs(self.items) do
        if self.selected == i then
            love.graphics.setColor(0, 0, 0)
        else
            love.graphics.setColor(0, 0, 0, 128)
        end
        love.graphics.print(item.name, x + (width/2 - item.name:len()*fontsize/4), y + height*(i-1) + (fontsize/2)-fontsize/4)
    end ]]--
--testfood:draw()


for f,v in ipairs(obbylist.obbys) do
    if obbylist.obbys[f] == nil then
    else
    obbylist.obbys[f]:draw()
    end
 -- for h,i in ipairs(obbylist[f]) do
 --    obbylist[h]:draw()

  --  end
  
end


for f,v in ipairs(obbylist.food) do
    if obbylist.food[f] == nil then

    else
    obbylist.food[f]:draw()
    end
  
end 
end

return self
end