



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
    emotionmultiplier = 1,
    clock = 0,
    require("assets/aninmation"),

    
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
  

  self.animation1 = newAnimation(love.graphics.newImage("cat.jpg"), 550, 550) -- load all cat emotion variations into here, and use a emtion counter in .self
  

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

<<<<<<< HEAD
    update = function(self) -- Somthing is disableing calling the getContacts(), figure out what
=======
<<<<<<< HEAD
    update = function(self) -- Somthing is disableing calling the getContacts(), figure out what
=======
    update = function(self,dt) -- Somthing is disableing calling the getContacts(), figure out what
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
>>>>>>> 3d1f8196a4b5666c23d25b4f45b8e9cb38c9362a
      if self.emotionmultiplier ~= 1 then
      if self.clock >= 1 then
        self.emotionmultiplier = 1
         self.clock = 0
      else
<<<<<<< HEAD
        self.clock = self.clock + 0.016
=======
<<<<<<< HEAD
        self.clock = self.clock + 0.016
=======
        self.clock = self.clock+dt
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
>>>>>>> 3d1f8196a4b5666c23d25b4f45b8e9cb38c9362a
      end
      
      end
  
     -- love.graphics.print(contacts)
    end,

    destroy = function(self)
        self = nil
    end,
    
    updatemodel = function(self, frame)
      self.actframe = frame
    end,

    changeemotion = function(self, id)
      self.emotionmultiplier = id

    end,
    
    draw = function(self) -- Draw
      
     love.graphics.draw(self.image,self.animation1.quads[self.actframe],(self.p.body:getX()),(self.p.body:getY()),
     self.p.body:getAngle(),.1,.1,self.width/2,self.height/2)
      love.graphics.setColor(0,0,0,255)
      
      love.graphics.circle("fill", self.p.body:getX(), self.p.body:getY(), self.rad)
      love.graphics.setColor(128,128,128,255)
    end 
  }
  end
}