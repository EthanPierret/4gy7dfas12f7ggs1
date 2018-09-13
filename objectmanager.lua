

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
food = 0,
balnum = 950,
debug = false,
  



 load = function(self,x, y, idmap,scale, id, world,flip,debug)
  self.physics = world
  local obby = require("assets.obby")
  
  self.obbylist = {
    food = {},
    obbys = {},
    specail = {}
}

  if flip == 1 then
    self.flip = 1
  else
    self.flip = -1
  end

  self.x = x
  self.y = y
  self.idmap = idmap
  self.scale = scale
  self.id = id
  


  local foodids = getlistlenth(self.obbylist.food)
  local obbyids = getlistlenth(self.obbylist.obbys)
  self.mapdata = getmapdata(idmap)
  self.fooddata = getfooddata(idmap)
  self.spikeydata = getspikeydata(idmap)
  self.height = (getmapheight(idmap))*self.scale
  self.enter, self.exit = getexitid(idmap)
  self.specaildata = getspecailblocks(self.idmap)
  
    
  

  if self.flip == -1 then
  if self.exit == 1 then
  self.exit = 3
  elseif self.exit == 3 then
  self.exit = 1 
  end
  end
  
            --- Map definition

    self.obbylist.obbys[obbyids+1] = obby.new(self.x, self.y, self.physics)
    self.obbylist.obbys[obbyids+1]:newbody(self.x, self.y, self.physics)
    if debug == false then
    self.obbylist.obbys[obbyids+1]:load(loadstorage["maps"][id], self.scale)
    end


    local foodpos
    local spikeypos

    if self.fooddata ~= nil then
    foodpos = self.fooddata[math.random(1,#self.fooddata)]
    end

    if self.spikeydata ~= nil then
    spikeypos = self.spikeydata[math.random(1,#self.spikeydata)]
    end

    --for g, j in ipairs(self.fooddata) do
     
    --end


    if self.specaildata ~= false then
        for i,k in ipairs(self.specaildata) do
            local x = (self.specaildata[i]["x"] * self.flip)*self.scale
            local y = self.specaildata[i]["y"] * self.scale
            local templist = {}


            for j,l in ipairs(self.specaildata[i]["polygon"]) do
                table.insert(templist,(((self.specaildata[i]["polygon"][j]["x"]*self.flip)+self.balnum)*self.scale))
                table.insert(templist,(self.specaildata[i]["polygon"][j]["y"])*self.scale)
                
            end
            for f,v in ipairs(templist) do
        
                if (f % 2 == 0) then
                templist[f] = templist[f] + y
                --love.graphics.setColor(255,255,255,128)
                else
                templist[f] = templist[f] + x
                end
            end
            print("Making a special Shape at:"..x.."    "..y)
            self.obbylist.obbys[obbyids+1]:newshape(x,y,self.physics,self.scale,templist,templist,self.specaildata[i]["type"]) -- does not use x or y?


        end
    end

    
    
    if foodpos ~= nil then
        
        if math.random(1,4) ~= 4 then
        print("Making Real food")
        self.food = self.food+1
        foodpos["x"] = foodpos["x"] * self.flip
        foodpos["x"] = foodpos["x"] + self.balnum

        foodpos["x"] = foodpos["x"] * self.scale
        foodpos["y"] = foodpos["y"] * self.scale
        foodpos["x"] = foodpos["x"] + self.x
        foodpos["y"] = foodpos["y"] + self.y
       
        self.obbylist.food[foodids+1] = food.new(foodpos["x"], foodpos["y"],25,self.physics,foodids+1, self.id, 1) -- fixture(self.id), body(1)
        
        end
        
    end

    if spikeypos ~= nil then

        if math.random(1,4) == 4 then
            print("Making Spikey food")
            self.food = self.food+1
            spikeypos["x"] = spikeypos["x"] * self.flip
            spikeypos["x"] = spikeypos["x"] + self.balnum

            spikeypos["x"] = spikeypos["x"] * self.scale
            spikeypos["y"] = spikeypos["y"] * self.scale
            spikeypos["x"] = spikeypos["x"] + self.x
            spikeypos["y"] = spikeypos["y"] + self.y
        if self.obbylist.food[foodids+1] == nil then
            self.obbylist.food[foodids+1] = 0
        end
        self.obbylist.food[foodids+2] = food.new(spikeypos["x"], spikeypos["y"],25, self.physics, foodids+2, self.id, 2) -- fixture(self.id), body(2)
        end
        
    end
--[[
    if self.mapdata["objects"] ~= nil then
        local templisty = { off = {}, data = {}}
        templisty["off"][1] = self.mapdata["objects"]["x"]
        templisty["off"][2] = self.mapdata["objects"]["y"]
        for l, o in ipairs(self.mapdata["objects"])
        for _, k in ipairs(self.mapdata["objects"][l]["polygon"])
        table.insert(templisty["data"],self.mapdata["objects"]["polygon"][_]["x"])
        table.insert(templisty["data"],self.mapdata["objects"]["polygon"][_]["y"])
        end
    end
    self.mapdata = templisty

    end
]]--


    for f,v in ipairs(self.mapdata["objects"]) do
        local templisty = { off = {x = nil, y = nil}, data = {}}
        if self.mapdata["objects"][f] ~= nil then
            

                templisty["off"]["x"] = self.mapdata["objects"][f]["x"]*self.flip
                templisty["off"]["y"] = self.mapdata["objects"][f]["y"]

                for z, k in ipairs(self.mapdata["objects"][f]["polygon"]) do
                
                table.insert(templisty["data"], (self.mapdata["objects"][f]["polygon"][z]["x"]*self.flip)+ self.balnum)
                table.insert(templisty["data"], self.mapdata["objects"][f]["polygon"][z]["y"])
                end

                self.mapdata["objects"][f] = templisty

            local templist = self.mapdata["objects"][f]["data"]
            local temp2 = self.mapdata["objects"][f]["off"]
            
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
            
            
            self.obbylist.obbys[obbyids+1]:newshape(self.mapdata["objects"][f]["off"]["x"], self.mapdata["objects"][f]["off"]["y"], self.physics, self.scale, templist, templist2)
    end
end
end,

removeshape = function(self,id, ind)
    print(id)
    if ind == -4 then
         
         --list.obbylist.food[id]:destroy()
         self.obbylist.food[id] = 0
         --table.remove(self.obbylist.food, id)

    elseif ind == -6 then
        
        --table.remove(self.obbylist.food, id)
        self.obbylist.food[id] = 0
 
    elseif ind == -5 then
         
     --table.remove(self.obbylist.obbys, id)
     self.obbylist.obbys[id] = 0
    elseif ind == -2 then
 
     --table.remove(self.catslist, id)
     self.catslist[id] = 0
 
    end
 
 
    self.destroying = false
 end,



destroy = function(self)
    
    for i,j in ipairs(self.obbylist.obbys) do
    if self.obbylist.obbys[i] ~= 0 then
    self.obbylist.obbys[i]:destroy()
    table.remove( self.obbylist.obbys, i )
    end
    end
    for j,f in ipairs(self.obbylist.food) do
    if self.obbylist.food[j] ~= 0 then
    self.obbylist.food[j]:destroy()
    table.remove( self.obbylist.food, j )
    end
    end
    self = nil
end,

drawmap = function(self,debug)


    if debug == false then
        for f,v in ipairs(self.obbylist.obbys) do
            if self.obbylist.obbys[f] ~= nil and self.obbylist.obbys[f] ~= 0 then
            self.obbylist.obbys[f]:draw()
            end
        end
        else
            for f,v in ipairs(self.obbylist.obbys) do
                if self.obbylist.obbys[f] ~= nil and self.obbylist.obbys[f] ~= 0 then
                    self.obbylist.obbys[f]:debugdraw()
                end
              
            end
    end

end,

drawfood = function(self,debug)
    if debug == false then
        for f,v in ipairs(self.obbylist.food) do
            if self.obbylist.food[f] ~= nil and self.obbylist.food[f] ~= 0 then
             self.obbylist.food[f]:draw()
            
            end
        end
    else
        for f,v in ipairs(self.obbylist.food) do
            if self.obbylist.food[f] ~= nil and self.obbylist.food[f] ~= 0 then
            self.obbylist.food[f]:debugdraw()
                
            end
        end
    end
end





    }
end
}