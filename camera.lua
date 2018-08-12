-- convert this to standard return formula



return {
  new = function()
    return {
      x = 0,
      y = 0,
      scaleX = 1,
      scaleY = 1,
      rotation = 0,

set = function(self)
  love.graphics.push()
  love.graphics.rotate(-self.rotation)
  love.graphics.scale(1 / self.scaleX, 1 / self.scaleY)
  love.graphics.translate(-self.x, -self.y)
end,

pop = function(self)
  love.graphics.pop()
end,

push = function(self)
  love.graphics.push()
end,

move = function(self,dx, dy)
  self.x = self.x + (dx or 0)
  self.y = self.y + (dy or 0)
end,

rotate = function(self,dr)
  self.rotation = self.rotation + dr
end,

scale = function(self,sx, sy)
  sx = sx or 1
  self.scaleX = self.scaleX * sx
  self.scaleY = self.scaleY * (sy or sx)
end,

setPosition = function(self,x, y)
  self.x = x or self.x
  self.y = y or self.y
end,

setPos = function(self,x, y)
  self.x = x or self.x
  self.y = y or self.y
  love.graphics.translate(-self.x, -self.y)
end,

setScale = function(self,sx, sy)
  self.scaleX = sx or self.scaleX
  self.scaleY = sy or self.scaleY
end,

}
end
}