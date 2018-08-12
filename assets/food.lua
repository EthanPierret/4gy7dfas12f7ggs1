food = {}
local image = love.graphics.newImage("cat.jpg")
local width = image:getWidth()
local height = image:getHeight()


food.new = function(x, y, rad, physics, usserdata, usserdata2)
    local self = self or {}
    self.x = x
    self.y = y
    self.rad = rad


    
  self.world = physics
  self.body = love.physics.newBody(self.world, self.x, self.y, "static")
  
  self.shape = love.physics.newCircleShape(self.rad)
  self.fixture = love.physics.newFixture(self.body, self.shape, 1)


  self.fixture:setMask(16)
  --self.p.prop:setMask(1) NO! Defulat catagory is 1.
  self.fixture:setGroupIndex(-4)
  self.fixture:setCategory(4)
  self.fixture:setUserData(usserdata)
  self.body:setUserData(usserdata2)
 -- self.p.fixture:setSensor(true)

  self.body:setGravityScale(0)


  self.destroy = function ()
    self.body:release()
    self.fixture:release()
    self.body = nil
    self.fixture = nil
  end

  self.draw = function ()
    
    if self.body then
    love.graphics.draw(image,(self.body:getX()),(self.body:getY()),
        self.body:getAngle(),.1,.1,width/2,height/2)
      love.graphics.circle("fill", self.body:getX(), self.body:getY(), self.rad)
    end
    
  end



    return self
end