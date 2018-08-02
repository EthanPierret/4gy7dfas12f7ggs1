cat = {}



cat.new = function(x, y, rad, physics,id)
    local self = self or {}
    self.x = x
  self.y = y
  self.rad = rad
  self.id = id
  self.physics = physics

    local catslist = {}
    self.catslist = catslist

    self.catslist[self.id] = catobject.new(self.x, self.y, self.rad, self.physics, self.id)




self.draw = function()
for f,v in ipairs(catslist) do
    if self.catslist[f] == nil then
    else
    self.catslist[f]:draw()
    end

end
end

return self
end