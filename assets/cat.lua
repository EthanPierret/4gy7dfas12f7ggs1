catobject = {}
local image = love.graphics.newImage("cat.jpg")
local width = image:getWidth()
local height = image:getHeight()

catobject.new = function(x, y, rad, physics, id)
  local self = self or {}
  self.x = x
  self.y = y
  self.rad = rad
  
  
  self.p = {}
  self.p.world = physics
  self.p.body = love.physics.newBody(self.p.world, self.x, self.y, "dynamic")
  
  self.p.shape = love.physics.newCircleShape(self.rad)
  self.p.prop = love.physics.newFixture(self.p.body, self.p.shape, 1)
  
  self.p.rects = love.physics.newRectangleShape(0,rad*-1,rad/2,rad-10,0) --(offsetX,offsetY,Width,Height,Angle)
  self.p.rectp = love.physics.newFixture(self.p.body, self.p.rects, 0)
  


  self.p.prop:setMask(4) -- don't collide with those Catagories
  self.p.prop:setCategory(2) -- 1 - 16
  --self.p.prop:setMask(1) NO! Defulat catagory is 1.
  self.p.prop:setGroupIndex(-2) --  will allways collide with same positive values and never with same negative
  self.p.prop:setUserData(id) -- data storage


  self.p.rectp:setGroupIndex(-3)
  self.p.rectp:setSensor(true)
  --self.p.rectp:setDensity(0)
  --self.p.body:setMassData(x , y, 1, math.rad(-350))
  --self.p.body:setMass(0)
 --self.p.body:setFixedRotation(false)
  self.p.body:setGravityScale(0)
  
  bx, by, mass, intertia = self.p.body:getMassData()

    self.collide = function () -- Somthing is disableing calling the getContacts(), figure out what
      local contacts = self.p.body:getContacts()
      if contacts ~= nil then

        --local printie = contacts[l]:getFixtureList()
        --local printie2 = printie:getDensity(
        --love.graphics.print(contacts[printie2],100, 25)
      love.graphics.print("Contact made",25,25)
      end
  
     -- love.graphics.print(contacts)
    end
    
    self.draw = function () -- Draw
      --love.graphics.draw(image,(self.p.body:getX()),(self.p.body:getY()),
     --   self.p.body:getAngle(),.1,.1,width/2,height/2)
      love.graphics.circle("fill", self.p.body:getX(), self.p.body:getY(), self.rad)

      
    end
  return self
  end