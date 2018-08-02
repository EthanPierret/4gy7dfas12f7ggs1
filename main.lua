require("catmanager")
require("assets.map")
require("assets.food")
require("objectmanager")
require("collisionmanager")
require("gameover")
--require("collisionmanager")
local menu =  require("assets.menu")

local game = {}
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
local nums



local holding
local gameactive = false
local fullscreen = false
local menuw = 300
local menuh = 40
debugtext = ""
debugtext2 = ""
local optionsactive = false
local optionsbuffer = false
local optionstimer = 0
local indexa = 0
local indexb = 0

mainmap = nil
local collisionmanage
local translist = {}

destroy_queue = {}
local workspace = {
  objects = {},
  textures = {},
  videos = {}
}
--[[]]--


--[[

ToDo


Need some way of uniquely marking food so that when food is in a list, it can be removed from the list. No draw, no update.

Finish workspace, nesting off all values inside it.






]]--




-- Mouse
function love.mousepressed(x, y, button, touch)
    if gameactive == true then
    love.graphics.print(tostring(x), 0, 0)
    if maincat.catslist[1] then
    if (x > maincat.catslist[1].p.body:getX()) then
      maincat.catslist[1].p.body:applyLinearImpulse(5,0)
      maincat.catslist[1].p.body:applyAngularImpulse(2)
      holding = 1
    else
      maincat.catslist[1].p.body:applyLinearImpulse(-5,0)
      maincat.catslist[1].p.body:applyTorque(-2)
      holding = 2
    end
  end
  elseif optionsactive == true then
    optionmenu:mousepressed(x,y)
  else
    mainmenu:mousepressed(x,y)
  end
  
  function love.mousereleased(x, y, button, touch)
    
    holding = 0
    
  end
end

function love.keypressed(key)
  if gameactive == false then


  elseif optionsactive == true then
      optionmenu:keypressed(key)
    else
    
  mainmenu:keypressed(key)
  end
end



-- Draw
function love.draw()
  if gameactive == true then
  --[[Centered Image]]--
  love.graphics.draw(image, actframe, imagex, imagey)
  --[[image path, (from where in file x,y) , rotation in radiens, scale x, scale y, draw offset x, draw offset Y]]--
  love.graphics.draw(image, 500, 400, math.rad(30),0.5, 0.5, halfw, halfh)
  
  --[[love.graphics.setColor(0,0,0,255)]]--
  
  love.graphics.line(100,100,(love.graphics.getHeight()/2),love.graphics.getWidth()/2)
  
  love.graphics.circle('fill', pos + 0, 0, 50)
  
  love.graphics.polygon('fill',{100,100,200,100,200,200,100,200})

  love.graphics.print(debugtext,0,0)
  love.graphics.print(debugtext2,0,50)

  mainmap:draw()
  maincat:draw()
 


  elseif optionsactive == true then
    optionmenu:draw(halfw-menuw/2,halfh-menuh,menuw,menuh,22)

  else
  mainmenu:draw(halfw-menuw/2,halfh-menuh,menuw,menuh,22)
  end
  
end

-- Update
function love.update(dt)
  if gameactive == true then
  elapsed = elapsed + dt
  
  if (holding == 1) then
    maincat.catslist[1].p.body:applyLinearImpulse(5,0)
    maincat.catslist[1].p.body:applyAngularImpulse(2)
  elseif (holding == 2) then
    maincat.catslist[1].p.body:applyLinearImpulse(-5,0)
    maincat.catslist[1].p.body:applyAngularImpulse(-2)
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
  
  
  for f,v in ipairs(destroy_queue) do
    
    for h,i in ipairs(destroy_queue[f]) do
      if destroy_queue[f][2] == -2 then
        removeshape(destroy_queue[f][1],destroy_queue[f][2],maincat)
      else
     removeshape(destroy_queue[f][1],destroy_queue[f][2],mainmap)
      end 
      end
     end
      destroy_queue = {}


  
  
  --game.maincat:release() does not have object references set up, only global. maincat.p.prop:destroy() works.
elseif optionsactive == true then
  optionmenu:update(dt)
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
  

  collisionmanage = collisionmanager.new(1)

  local floor = {}
  floor.body = love.physics.newBody(world ,love.graphics.getWidth()/2,love.graphics.getHeight())
  floor.shape = love.physics.newRectangleShape(love.graphics.getWidth(), 2)
  floor.prop = love.physics.newFixture(floor.body,floor.shape)
  floor.prop:setUserData("floor")
  floor.prop:setGroupIndex(10)
  -- bouncy
  -- maincat = cat.new(200,400,25,world)
  floor.prop:setRestitution(0)
 
  
  -- mainmap = map.new(0,425,1,world,0.2,2)
  
  mainmap = map.new(0,425,1,0.2,1,world)
  maincat = cat.new(200,400,25,world,1)
  
 -- maincat.obbylist.cats[1].p.body:setFixedRotation(false)
  
  world:setCallbacks(beginContact, endContact, preSolve, postSolve)
  
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
      game = loadgame()
		end
	}
	mainmenu:addItem{
		name = 'Options',
		action = function()
      optionsactive = true
      mainmenu.active = false
      loadoptions()
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

function loadoptions()
  optionmenu = menu.new()
  optionmenu:addItem{
		name = 'Things',
		action = function()
      
      -- revert graphics
      
		end
	}
	optionmenu:addItem{
		name = 'More Things',
		action = function()
      
		end
	}
	optionmenu:addItem{
		name = 'Quit',
		action = function()
      
      optionsactive = false
      mainmenu.active = true
		end
  }
  
  optionmenu:load()
end



function love.quit()
  love.event.quit()
end

function beginContact(a, b, coll)
  
  translist[1] = a
  translist[2] = b
  translist[3] = coll
  
  begincollision(a,b,coll)
  --local x5,y5 = coll:getNormal()
  
end
 
function endContact(a, b, coll)
 
end
 
function preSolve(a, b, coll)
 
end
 
function postSolve(a, b, coll, normalimpulse, tangentimpulse)
 
end

function gameover(id)
  triggergameover(maincat, world, id)
end