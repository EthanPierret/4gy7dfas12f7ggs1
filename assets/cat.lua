cat = {}
local image = love.graphics.newImage("cat.jpg")
local width = image:getWidth()
local height = image:getHeight()

cat.new = function(x, y, rad, physics)
  local self = self or {}
  self.x = x
  self.y = y
  self.rad = rad
  
   -- find out how to collide check
  self.p = {}
  self.p.world = physics
  self.p.body = love.physics.newBody(self.p.world, self.x, self.y, "dynamic")
  self.p.shape = love.physics.newCircleShape(self.rad)
  self.p.prop = love.physics.newFixture(self.p.body, self.p.shape, 1)
    
    self.draw = function () -- Find out how to draw from center, offset is killing it
      love.graphics.draw(image,(self.p.body:getX()),(self.p.body:getY()),
        self.p.body:getAngle(),.1,.1,width/2,height/2)
      love.graphics.circle("fill", self.p.body:getX(), self.p.body:getY(), self.rad)
      
    end
  return self -- love.graphics.draw(hamster, 100, 100, math.rad(90), 1, 1, width / 2, height / 2)
  end