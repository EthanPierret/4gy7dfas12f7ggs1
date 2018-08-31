

return {
new = function()
    return {

        physics=nil,
        catslist={},
        type=1,
        cat = require("assets.cat"),
    
    newcat = function(self,x, y, rad, physics,id,type)
    
    self.physics = physics
    

    self.catslist[id] = self.cat.new()
    self.catslist[id]:makecat(x, y, rad, physics, id, type)

    end,

updatemodel = function(self,frame)
    self.catslist[f]:updatemodel(frame)
end,

setmode = function(self,arg)
    for f,v in ipairs(self.catslist) do
    self.catslist[f]:changeemotion(arg)
    end
end,

update = function(self,dt)
    for f,v in ipairs(self.catslist) do
        if self.catslist[f] == nil then
        else
            self.catslist[f]:update(dt)
        end
    
     end
end,

inflate = function(self,ammount)
    for f,v in ipairs(self.catslist) do
        if self.catslist[f] == nil then
        else
           return self.catslist[f]:inflate(ammount)
        end
    
     end
end,

getxy = function(self,cat)
    for f,v in ipairs(self.catslist) do
        if self.catslist[f] == nil then
        else
           return self.catslist[f]:getxy()
        end
    
     end
end,

gety = function(self)

    for f,v in ipairs(self.catslist) do
        if self.catslist[f] == nil then
        else
           return self.catslist[f].p.body:getY()
        end
    
    end

end,

draw = function(self,arg)
for f,v in ipairs(self.catslist) do
    if self.catslist[f] == nil then
    else
    self.catslist[f]:draw(arg)
    end

 end
end


}
end
}