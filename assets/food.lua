food = {}
local image = love.graphics.newImage("cat.jpg")
local width = image:getWidth()
local height = image:getHeight()


food.new = function(x, y, rad, physics, usserdata)
    local self = self or {}
    self.x = x
    self.y = y
    self.rad = rad


    self.p = {}
  self.p.world = physics
  self.p.body = love.physics.newBody(self.p.world, self.x, self.y, "dynamic")
  
  self.p.shape = love.physics.newCircleShape(self.rad)
  self.p.fixture = love.physics.newFixture(self.p.body, self.p.shape, 1)


  self.p.fixture:setMask(16)
  --self.p.prop:setMask(1) NO! Defulat catagory is 1.
  self.p.fixture:setGroupIndex(-4)
  self.p.fixture:setCategory(4)
  self.p.fixture:setUserData(usserdata)
 -- self.p.fixture:setSensor(true)

  self.p.body:setGravityScale(0)


  self.destroy = function ()
    self = nil
  end

  self.draw = function ()
    
    if self.p.body then
    love.graphics.draw(image,(self.p.body:getX()),(self.p.body:getY()),
        self.p.body:getAngle(),.1,.1,width/2,height/2)
      love.graphics.circle("fill", self.p.body:getX(), self.p.body:getY(), self.rad)
    end
    
  end



    return self
end