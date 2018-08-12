

return {
new = function()
    return {
        x=0,
        y=0,
        rad=0,
        id=0,
        physics=nil,
        catslist={},
        type=0,
        cat = require("assets.cat"),
    
    newcat = function(self,x, y, rad, physics,id,type)
    self.x = x
  self.y = y
  self.rad = rad
  self.id = id
  self.physics = physics

    local catslist = {}
    self.catslist = catslist

    self.catslist[self.id] = self.cat.new()
    self.catslist[self.id]:makecat(self.x, self.y, self.rad, self.physics, self.id, self.type)

    end,

updatemodel = function(self,frame)
    self.catslist[f]:updatemodel(frame)
end,

setmode = function(self,arg)
    self.catslist[f]:changeemotion(arg)
end,

update = function(self,dt)
    for f,v in ipairs(self.catslist) do
        if self.catslist[f] == nil then
        else
            self.catslist[f]:update(dt)
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