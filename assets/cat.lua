



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
    emotionmultiplier = 0,
    clock = 0,
    eclock = 0,
    inflations=0,
    scalefactor=0.18,
    require("assets/aninmation"),

    
    image = love.graphics.newImage("assets/SpriteSheet.png"),
    width = nil,
    height = nil,

  makecat = function(self,x, y, rad, physics, id, type)
  self.x = x
  self.y = y
  self.rad = rad
  self.id = id

  if type == 1 then 
    self.image = love.graphics.newImage("assets/SpriteSheetBlusie.png")
  elseif type == 2 then 
    self.image = love.graphics.newImage("assets/SpriteSheetPurrey.png")
  elseif type == 3 then 
    self.image = love.graphics.newImage("assets/SpriteSheetNebula.png")
  elseif type == 4 then 
    self.image = love.graphics.newImage("assets/SpriteSheetSweetPea.png") -- sweetpea
  elseif type == 5 then 
    self.image = love.graphics.newImage("assets/SpriteSheetPumpkinSpice.png")
  elseif type == 6 then 
    self.image = love.graphics.newImage("assets/SpriteSheetSweetsy.png")
  elseif type == 7 then 
    self.image = love.graphics.newImage("assets/SpriteSheetGoldenCakes.png")
  elseif type == 8 then 
    self.image = love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif type == 9 then 
    self.image = love.graphics.newImage("assets/SpriteSheetStarlight.png")
  end 

  self.width = self.image:getWidth()
  self.height = self.image:getHeight()
  
  self.p = {inflation = {}}

  self.p.world = physics
  self.p.body = love.physics.newBody(self.p.world, self.x, self.y, "dynamic")
  
  self.p.shape = love.physics.newCircleShape(self.rad)
  self.p.prop = love.physics.newFixture(self.p.body, self.p.shape, 1)
  
  self.p.rects = love.physics.newRectangleShape( ((self.rad-5)/2)*-1,rad*-1/1.5,rad-5,rad,0 ) --(offsetX,offsetY,Width,Height,Angle) ((rad-5)/2)*-1
  self.p.rectp = love.physics.newFixture(self.p.body, self.p.rects, 0)
  

  self.animation1 = newAnimation(love.graphics.newImage("assets/SpriteSheet.png"), 350, 350) -- load all cat emotion variations into here, and use a emtion counter in .self
  

  self.p.prop:setMask(4) -- don't collide with those Catagories
  self.p.prop:setCategory(2) -- 1 - 16
  self.p.prop:setRestitution(0.2)
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

  self.mass = self.p.body:getMass()
  
  end,

    update = function(self) -- Somthing is disableing calling the getContacts(), figure out what
      if self.emotionmultiplier ~= 0 then
      
      if self.emotionmultiplier == 1 then
      if self.eclock >= 0.75 then
        self.emotionmultiplier = 0
         self.eclock = 0
      else
        self.eclock = self.eclock + 0.016
      end
      
      end
    end
    if self.emotionmultiplier == 0 then
    
      if self.clock > 0.375 then
      self.clock = 0
        if self.actframe < 4 then
        self.actframe = self.actframe + 1
        else
        self.actframe = 1
        end
      else
      self.clock = self.clock + 0.016
      end
    end
  --
    if self.emotionmultiplier == 1 then
    
  
      if self.clock > 0.05 then
      self.clock = 0
    
        if self.actframe < 6 then
        self.actframe = self.actframe +1
         else 
         self.actframe = 1
        end

      else
      self.clock = self.clock + 0.016
      end

    end
     -- love.graphics.print(contacts)
  end,

    getxy = function(self)
      local r self.p.body:getX()
      local e self.p.body:getY()
      return r,e
    end,

    destroy = function(self)
        self = nil
    end,

    inflate = function(self,size)
      self.scalefactor = self.scalefactor * ((self.rad+size)/self.rad)
      self.p.inflation[self.inflations+1] = love.physics.newCircleShape(self.rad+size)
      self.rad = self.rad + size
      self.p.inflation[self.inflations+2] = love.physics.newFixture(self.p.body, self.p.inflation[self.inflations+1], 1) 
      self.p.inflation[self.inflations+2]:setMask(4)
      self.p.inflation[self.inflations+2]:setRestitution(0.2)
      self.p.inflation[self.inflations+2]:setGroupIndex(-2)
      self.p.inflation[self.inflations+2]:setUserData(self.id)

      self.p.rects = love.physics.newRectangleShape( ((self.rad-5)/2)*-1,self.rad*-1/1.5,self.rad-5,self.rad,0 ) --(offsetX,offsetY,Width,Height,Angle) 
      self.p.rectp = love.physics.newFixture(self.p.body, self.p.rects, 0)

      
      self.p.rectp:setGroupIndex(-3)
      self.p.rectp:setSensor(true)
      self.p.body:setMass(self.mass)
      

      self.inflations = self.inflations + 4
      
    end,
    
    updatemodel = function(self, frame)
      self.actframe = frame
    end,

    changeemotion = function(self, id)
      self.emotionmultiplier = id
      self.actframe = 1
      self.clock = 0
    end,
    
    draw = function(self) -- Draw
     
     love.graphics.draw(self.image,self.animation1.quads[self.actframe + (self.emotionmultiplier*7)],(self.p.body:getX()),(self.p.body:getY()),
     self.p.body:getAngle(),self.scalefactor,self.scalefactor,350/2,(350/2)+(self.scalefactor*100),0,0)
      --love.graphics.setColor(0,0,0,255)
      
      --love.graphics.circle("line", self.p.body:getX(), self.p.body:getY(), self.rad)
     
      -- Doesnt work --> love.graphics.rectangle( "line", self.p.body:getX()-((self.rad-5)/2),(self.rad*-1)+self.p.body:getY(),(self.rad-5),(self.rad) )--0,rad*-1,rad-10,rad/2,0 --mode,x,y,width,height
      --love.graphics.setColor(128,128,128,255) -((self.rad-5)/2)
    end 
  }
  end
}