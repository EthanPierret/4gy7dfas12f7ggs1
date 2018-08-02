map = {}

require("assets.obby")
require("assets.cat")
require("assets.food")
require("assets.logic")



local obbysdata = {
    sidel = { 2, -4 ,
         564,  0 ,
         390,  86 ,
         200,  120 ,
         88,  220 ,
         128,  444 ,
         334,  492 ,
         0,  558,
         },
         
     sider = { 0, 0 ,
         300,  0 ,
         300,  50 ,
         100,  50 ,
         100,  150 ,
         300,  150 ,
         300,  200 ,
         0,  200}
}

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

            --- Map definition
 if self.idmap == 1 then
    
    self.obbylist.obbys[obbyids+1] = obby.new(self.x, self.y, self.physics, self.scale, obbysdata.sidel)
    self.obbylist.obbys[obbyids+2] = obby.new(self.x + math.floor(self.scale*500), self.y, self.physics, self.scale, obbysdata.sider)
    self.obbylist.food[foodids+1] = food.new(self.x + math.floor(self.scale*200), self.y + math.floor(self.scale*150), 25, self.physics, foodids+1)
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