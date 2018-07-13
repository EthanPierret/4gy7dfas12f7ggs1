map = {}
local image = love.graphics.newImage("cat.jpg")
local width = image:getWidth()
local height = image:getHeight()

map.new = function(x, y, physics)
  local self = self or {}
  self.x = x
  self.y = y
  
  
  self.p = {}
  self.p.world = physics
  self.p.s1 = love.physics.newEdgeShape( 0, 0, 100, 0 )
  self.p.b1 = love.physics.newBody(self.p.world,self.x,self.y,"dynamic")
  self.pf1 = love.physics.newFixture(self.p.b1, self.p.s1, 1)


  --self.p.rectp:setDensity(0)
  --self.p.body:setMassData(x , y, 1, math.rad(-350))
  --self.p.body:setMass(0)
 --self.p.body:setFixedRotation(false)
  
  
  bx, by, mass, intertia = self.p.body:getMassData()

   
    
    self.draw = function () -- Draw
      love.graphics.draw(image,(self.p.b1:getX()),(self.p.b1:getY()),
        self.p.b1:getAngle(),.1,.1,width/2,height/2)
     
      --love.graphics.rectangle("fill",(cords[1]),(cords[4]),100,2)
      
      
      --[[
       self.p.rectp:setSensor(true)
  self.p.rectb = love.physics.newBody(self.p.world, self.x+(rad/2), self.y, "dynamic")
  self.p.prop:setFriction(0.2)
      ]]--
      
    end
  return self
  end