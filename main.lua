require("assets.cat")
require("assets.map")
local menu =  require("assets.menu")

pos = 0
local image
local imagex
local imagey
local frames = {}
local actframe
local curframe = 1
local elapsed = 0
local halfh = love.graphics.getHeight()/2
local halfw = love.graphics.getWidth()/2
local world
local maincat

local holding
local gameactive = false
local fullscreen = false
local menuw = 300
local menuh = 40

--[[]]--

-- Mouse
function love.mousepressed(x, y, button, touch)
    if gameactive == true then
    love.graphics.print(tostring(x), 0, 0)
    
    if (x > maincat.p.body:getX()) then
      maincat.p.body:applyLinearImpulse(5,0)
      maincat.p.body:applyAngularImpulse(2)
      holding = 1
    else
      maincat.p.body:applyLinearImpulse(-5,0)
      maincat.p.body:applyTorque(-2)
      holding = 2
    end
  else
    mainmenu:mousepressed(x,y)
  end
  
  function love.mousereleased(x, y, button, touch)
    
    holding = 0
    
  end
end

function love.keypressed(key)
  if gameactive == false then
  mainmenu:keypressed(key)
  end
end

function begincontact ()


end



-- Draw
function love.draw()
  if gameactive == true then
  --[[Centered Image]]--
  love.graphics.draw(image, actframe, imagex, imagey)
  --[[image path, (from where in file x,y) , rotation in radiens, scale x, scale y, draw offset x, draw offset Y]]--
  love.graphics.draw(image, 500, 400, math.rad(30),0.5, 0.5, halfw, halfh)
  
  --[[love.graphics.setColor(0,0,0,255)]]--
  love.graphics.print("Hello World",50,50)
  love.graphics.line(100,100,(love.graphics.getHeight()/2),love.graphics.getWidth()/2)
  
  love.graphics.circle('fill', pos + 0, 0, 50)
  
  love.graphics.polygon('fill',{100,100,200,100,200,200,100,200})
  maincat:draw()
  obby:draw()
  else
  mainmenu:draw(halfw-menuw/2,halfh-menuh,menuw,menuh,22)
  end
  
end

-- Update
function love.update(dt)
  if gameactive == true then
  elapsed = elapsed + dt
  
  if (holding == 1) then
    maincat.p.body:applyLinearImpulse(5,0)
    maincat.p.body:applyAngularImpulse(2)
  elseif (holding == 2) then
    maincat.p.body:applyLinearImpulse(-5,0)
    maincat.p.body:applyAngularImpulse(-2)
  end   
  
  if ( pos < love.graphics.getWidth() and elapsed > 0.05) then
    pos = pos + 50
    elapsed = 0
  elseif (pos >= love.graphics.getWidth()) then
    pos=0
    if ( curframe < 3 ) then
    curframe = curframe + 1
    else
    curframe = 1
    end
    actframe = frames[curframe]
  
  end
  world:update(dt)
  maincat.collide()
else
  mainmenu:update(dt)
  end
  --[[ keep at or under 2048 X 2048]]--

end

function loadgame()
  image = love.graphics.newImage("test.png")
  frames[1] = love.graphics.newQuad(0,0,128,128, image:getDimensions())
  frames[2] = love.graphics.newQuad(128,128,128,128, image:getDimensions())
  frames[3] = love.graphics.newQuad(256,256,128,128, image:getDimensions())
  
  actframe = frames[curframe]
  
  imagex = halfw - (select(3, actframe:getViewport())/2)
  imagey = halfh - ({actframe:getViewport()})[4]/2
  
  world = love.physics.newWorld(0,9.8*64, true)
  world:setCallbacks(beginContact, endContact, preSolve, postSolve)
  maincat = cat.new(250, 400, 25, world)
  local floor = {}
  floor.body = love.physics.newBody(world ,love.graphics.getWidth()/2,love.graphics.getHeight())
  floor.shape = love.physics.newRectangleShape(love.graphics.getWidth(), 2)
  floor.prop = love.physics.newFixture(floor.body,floor.shape)
  -- bouncy
  floor.prop:setRestitution(0)
  maincat.p.body:setFixedRotation(false)
  obby = map.new(245,10,100,world)
end

-- Load
function love.load()
  love.graphics.setDefaultFilter("nearest","nearest")
  love.graphics.setBackgroundColor(255,255,255,255)

  mainmenu = menu.new()
  mainmenu:addItem{
		name = 'Start Game',
		action = function()
      gameactive = true
      -- revert graphics
      love.graphics.setColor(255, 255, 255, 128)
      loadgame()
		end
	}
	mainmenu:addItem{
		name = 'Options',
		action = function()
			-- do something
		end
	}
	mainmenu:addItem{
		name = 'Quit',
		action = function()
			love.event.quit()
		end
	}

  
  mainmenu:load()
  

end






function love.quit()
  love.event.quit()
end

function beginContact(a, b, coll)

end
 
function endContact(a, b, coll)
 
end
 
function preSolve(a, b, coll)
 
end
 
function postSolve(a, b, coll, normalimpulse, tangentimpulse)
 
end