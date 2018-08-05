

require("assets/aninmation")

return {
new = function()
  return {
    x = 0,
    y = 0,
    rad = 0,
    id = 0,
    p = {},
    frame = {},
    animation = {},
    actframe = 1,

    
    image = love.graphics.newImage("assets/cat.jpg"),
    width = nil,
    height = nil,

  makecat = function(self,x, y, rad, physics, id)
  self.x = x
  self.y = y
  self.rad = rad

  self.width = self.image:getWidth()
  self.height = self.image:getHeight()
  
  self.p = {}

  self.p.world = physics
  self.p.body = love.physics.newBody(self.p.world, self.x, self.y, "dynamic")
  
  self.p.shape = love.physics.newCircleShape(self.rad)
  self.p.prop = love.physics.newFixture(self.p.body, self.p.shape, 1)
  
  self.p.rects = love.physics.newRectangleShape(0,rad*-1,rad/2,rad-10,0) --(offsetX,offsetY,Width,Height,Angle)
  self.p.rectp = love.physics.newFixture(self.p.body, self.p.rects, 0)
  

  self.animation = newAnimation(love.graphics.newImage("cat.jpg"), 550, 550)


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
  
  end,

    collide = function (self) -- Somthing is disableing calling the getContacts(), figure out what
      local contacts = self.p.body:getContacts()
      if contacts ~= nil then

        --local printie = contacts[l]:getFixtureList()
        --local printie2 = printie:getDensity(
        --love.graphics.print(contacts[printie2],100, 25)
      love.graphics.print("Contact made",25,25)
      end
  
     -- love.graphics.print(contacts)
    end,

    destroy = function(self)
        self = nil
    end,
    
    updatemodel = function(self, frame)
      self.actframe = frame
    end,
    
    draw = function(self) -- Draw
      
     love.graphics.draw(self.image,self.animation.quads[self.actframe],(self.p.body:getX()),(self.p.body:getY()),
     self.p.body:getAngle(),.1,.1,self.width/2,self.height/2)

      
      love.graphics.circle("fill", self.p.body:getX(), self.p.body:getY(), self.rad)
      
    end 
  }
  end
}