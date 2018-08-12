

local obby = require("assets.obby")
require("assets.cat")
require("assets.food")
require("assets.leveldata")
require("assets.logic")



return {
  new = function()
    return {
require("assets.cat"),
require("assets.food"),
require("assets.leveldata"),
require("assets.logic"),
  



 load = function(self,x, y, idmap,scale, id, world)
  self.physics = world
  local obby = require("assets.obby")
  
  self.obbylist = {
    food = {},
    obbys = {}
}


  self.x = x
  self.y = y
  self.idmap = idmap
  self.scale = scale
  self.id = id
  


  local foodids = getlistlenth(self.obbylist.food)
  local obbyids = getlistlenth(self.obbylist.obbys)
  self.mapdata = getmapdata(idmap)
  self.fooddata = getfooddata(idmap)
  self.h = getmapheight(idmap)*self.scale
  self.e = getexitid(idmap)
            --- Map definition

    self.obbylist.obbys[obbyids+1] = obby.new(self.x, self.y, self.physics)
    self.obbylist.obbys[obbyids+1]:newbody(self.x, self.y, self.physics)


    local foodpos = self.fooddata[math.random(1,#self.fooddata)]
    --for g, j in ipairs(self.fooddata) do
     
    --end
    
    foodpos[1] = foodpos[1] * self.scale
    foodpos[2] = foodpos[2] * self.scale
    foodpos[1] = foodpos[1] + self.x
    foodpos[2] = foodpos[2] + self.y

    self.obbylist.food[foodids+1] = food.new(foodpos[1], foodpos[2],25,self.physics,foodids+1,self.id)



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
end
end,

removeshape = function(self,id, ind)
    
    if ind == -4 then
     
         --list.obbylist.food[id]:destroy()
         
         table.remove(self.obbylist.food, id)
 
    elseif ind == -5 then
         
     table.remove(self.obbylist.obbys, id)
 
    elseif ind == -2 then
 
     table.remove(self.catslist, id)
 
    end
 
 
    self.destroying = false
 end,

destroy = function(self)
    
    for i,j in ipairs(self.obbylist.obbys) do
    self.obbylist.obbys[i]:destroy()
    table.remove( self.obbylist.obbys, i )
    end
    for j,f in ipairs(self.obbylist.food) do
    self.obbylist.food[j]:destroy()
    table.remove( self.obbylist.food, j )
    end
    self = nil
end,

draw = function(self)

for f,v in ipairs(self.obbylist.obbys) do
    if self.obbylist.obbys[f] == nil then
    else
    self.obbylist.obbys[f]:draw()
    end
  
end


for f,v in ipairs(self.obbylist.food) do
    if self.obbylist.food[f] == nil then

    else
    self.obbylist.food[f]:draw()
    end
  
end

end





    }
end
}