cat = {}
local image = love.graphics.newImage("cat.jpg")
local width = image:getWidth()
local height = image:getHeight()

cat.new = function(x, y, rad, physics)
  local self = self or {}
  self.x = x
  self.y = y
  self.rad = rad
  
  
  self.p = {}
  self.p.world = physics
  self.p.body = love.physics.newBody(self.p.world, self.x, self.y, "dynamic")
  
  self.p.shape = love.physics.newCircleShape(self.rad)
  self.p.prop = love.physics.newFixture(self.p.body, self.p.shape, 1)
  
  self.p.rects = love.physics.newRectangleShape(0,20,10,rad-10,0)
  self.p.rectp = love.physics.newFixture(self.p.body, self.p.rects, 0)
  


  

  self.p.rectp:setSensor(true)
  --self.p.rectp:setDensity(0)
  --self.p.body:setMassData(x , y, 1, math.rad(-350))
  --self.p.body:setMass(0)
 --self.p.body:setFixedRotation(false)
  self.p.body:setGravityScale(0)
  
  bx, by, mass, intertia = self.p.body:getMassData()

    self.collide = function ()
      local contacts = self.p.body:getContacts()
      if contacts ~= nil then

   
        --local printie = contacts[l]:getFixtureList()
        --local printie2 = printie:getDensity()

        --love.graphics.print(contacts[printie2],100, 25)
      
      
      end
  
     -- love.graphics.print(contacts)
    end
    
    self.draw = function () -- Draw
      love.graphics.draw(image,(self.p.body:getX()),(self.p.body:getY()),
        self.p.body:getAngle(),.1,.1,width/2,height/2)
      love.graphics.circle("fill", self.p.body:getX(), self.p.body:getY(), self.rad)
      
      --love.graphics.rectangle("fill",(cords[1]),(cords[4]),100,2)
      
      
      --[[
       self.p.rectp:setSensor(true)
  self.p.rectb = love.physics.newBody(self.p.world, self.x+(rad/2), self.y, "dynamic")
  self.p.prop:setFriction(0.2)
      ]]--
      
    end
  return self
  end