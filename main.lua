--require("catmanager")
require("assets.map")
require("assets.food")
local catmanager = require("catmanager")

require("objectmanager")
require("collisionmanager")
require("gameover")
--require("collisionmanager")
local menu =  require("assets.menu")
local music = require("audiomanager")

local game = {}
pos = 0
local image
local imagex
local imagey
local frames = {}
local actframe
curframe = 1
local elapsed = 0
local halfh = love.graphics.getHeight()/2
local halfw = love.graphics.getWidth()/2
local world
local maincat
local nums
local curscore = 0


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
local gameover = false

local loaded = false


mainmap = nil
local collisionmanage
local translist = {}
gamecats = {}
local catanim
local sixframe
local randomseed = 0

destroy_queue = {}

--[[]]--


--[[

ToDo


  Get the camera to go up with cat if the cat moves? But not side to side.






]]--




-- Mouse
function love.mousepressed(x, y, button, touch)
    if gameactive == true then
    
    if gamecats[1] ~= nil then
    if (x > gamecats[1].catslist[1].p.body:getX()) then
      gamecats[1].catslist[1].p.body:applyLinearImpulse(5,0)
      gamecats[1].catslist[1].p.body:applyAngularImpulse(2)
      holding = 1
    else
      gamecats[1].catslist[1].p.body:applyLinearImpulse(-5,0)
      gamecats[1].catslist[1].p.body:applyTorque(-2)
      holding = 2
    end
  end
  if gameover == true then
    gameovermenu:mousepressed(x,y)
  end 
  elseif optionsactive == true then
    optionmenu:mousepressed(x,y)
  elseif gameover == true then
    gameovermenu:mousepressed(x,y)
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
  elseif gameover == true then
    gameovermenu:keypressed(key)
  else
    
  mainmenu:keypressed(key)
  end
end



-- Draw
function love.draw()
  if gameactive == true then
  --[[Centered Image]]--
  love.graphics.draw(image, actframe, imagex, 100)
  --[[image path, (from where in file x,y) , rotation in radiens, scale x, scale y, draw offset x, draw offset Y]]--
  love.graphics.draw(image, 500, 400, math.rad(30),0.5, 0.5, halfw, halfh)
  
  --[[love.graphics.setColor(0,0,0,255)]]--
  
  love.graphics.line(100,100,(love.graphics.getHeight()/2),love.graphics.getWidth()/2)


  love.graphics.print(debugtext,0,0)
  love.graphics.print(debugtext2,0,50)

  mainmap:draw()
  maincat:draw(curframe)

  if ( elapsed > (1/6)) then
    elapsed = 0
  
    if ( curframe < 3 ) then
    curframe = curframe + 1
    else
    curframe = 1
    end
    actframe = frames[curframe]
  
  end
 
  if gameover == true then
  gameovermenu:draw(halfw-menuw/2,halfh-menuh,menuw,menuh,22)
  end

  elseif optionsactive == true then
    optionmenu:draw(halfw-menuw/2,halfh-menuh,menuw,menuh,22)

  else
  mainmenu:draw(halfw-menuw/2,halfh-menuh,menuw,menuh,22)
  end
  
end





-- Update
function love.update(dt)
  elapsed = elapsed + dt
  if gameactive == true then
    if randomseed == 0 then
      randomseed = elapsed
      end     
  if gameover == false then
  if (holding == 1) then
    gamecats[1].catslist[1].p.body:applyLinearImpulse(5,0)
    gamecats[1].catslist[1].p.body:applyAngularImpulse(2)
  elseif (holding == 2) then
    gamecats[1].catslist[1].p.body:applyLinearImpulse(-5,0)
    gamecats[1].catslist[1].p.body:applyAngularImpulse(-2)
  end   
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


     if gameover == true then
      gameovermenu:update(dt)
     end
  
  
  --game.maincat:release() does not have object references set up, only global. maincat.p.prop:destroy() works.
elseif optionsactive == true then
  optionmenu:update(dt)
else
  mainmenu:update(dt)
end
  --[[ keep at or under 2048 X 2048]]--

end

function loadgame()
  curscore = 0
  world = nil
  collisionmanage = nil                                                                    -- LoadGame
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
  floor.body = love.physics.newBody(world ,love.graphics.getWidth()/2,love.graphics.getHeight()*2)
  floor.shape = love.physics.newRectangleShape(love.graphics.getWidth()*5, 2)
  floor.prop = love.physics.newFixture(floor.body,floor.shape)
  floor.prop:setUserData("floor")
  floor.prop:setGroupIndex(10)
  -- bouncy
  -- maincat = cat.new(200,400,25,world)
  floor.prop:setRestitution(0)

  

 -- music trigger
  if loaded == false then
    gamemusic:playlist(1,elapsed,1,1)
    gamemusic:loadsfx(1,1) -- 0.5 is 1 octive lower
  end


 
  
  -- mainmap = map.new(0,425,1,world,0.2,2)
  
  mainmap = map.new(10,300,1,0.4,1,world)
  maincat = catmanager.new()
  maincat:newcat(400,800,25,world,1)
  gamecats[1] = maincat
  gamecats[1].catslist[1].p.body:applyLinearImpulse(0,-150)
  
  
 -- maincat.obbylist.cats[1].p.body:setFixedRotation(false)
  loaded = true
  world:setCallbacks(beginContact, endContact, preSolve, postSolve)
  gameover = false
  
end



-- Load
function love.load()
  preload()
  gamemusic = music.new()
  gamemusic:loadlist(1)
end


function preload()
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
		name = 'Cats',
		action = function()
      
      -- revert graphics
      
		end
	}
	optionmenu:addItem{
		name = 'Credits',
		action = function()
      
		end
  }
  optionmenu:addItem{
		name = 'Music',
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
  
  
  begincollision(a,b,coll)
  --local x5,y5 = coll:getNormal()
  
end
 
function endContact(a, b, coll)
 
end
 
function preSolve(a, b, coll)
 
end
 
function postSolve(a, b, coll, normalimpulse, tangentimpulse)
 
end

function dogameover(id)
  if gameover == false then
  triggergameover(maincat, world, id, gamemusic)
  drawgameover(curscore)
  end
end

function increasescore(num)
  curscore = curscore + num
end

function gamecleanup()
  curscore = 0
  world:destroy()
  collisionmanage = nil
  debugtext = ""
  debugtext2 = ""
end

function drawgameover(score)
    gameovermenu = menu.new()

    gameover = true
    gameovermenu:addItem{
          name = 'You Suck!',
          action = function()
        
        -- revert graphics
        
          end
      }
      gameovermenu:addItem{
        name = 'Score: '..score,
        action = function()
      
      -- revert graphics
      
        end
    }
      gameovermenu:addItem{
          name = 'Retry',
          action = function()
        gamecleanup()
        gameover = false
        gameovermenu.active = false
        loadgame()
          end
      }
      gameovermenu:addItem{
          name = 'Quit',
          action = function()
            gameactive = false
            gamecleanup()
        gameover = false
        gameovermenu.active = false
        preload()
          end
    }
    gameovermenu.active = true
    gameovermenu:load()
end
