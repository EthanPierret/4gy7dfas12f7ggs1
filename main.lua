--require("catmanager")
require("assets.map")
require("assets.food")
local catmanager = require("catmanager")

require("objectmanager")
require("collisionmanager")
require("gameover")

require("menumanager")
--require("collisionmanager")
local menu =  require("assets.menu")
local music = require("audiomanager")
local saves = require("savemanager")

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

<<<<<<< HEAD
local accum = 0
local step = 0.016

=======
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52

local creditsmenu
musicmenuactive = nil
local musicmenu
musicmenuactive = nil
<<<<<<< HEAD
local catsmenu
catsmenuactive = nil

local gametimer = 0
=======
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52


mainmap = nil
local collisionmanage
local translist = {}
gamecats = {}
local catanim
local sixframe
local randomseed = 0
local clostestmouseX

destroy_queue = {}

-- local ser = require("Path.to.ser")
savedata = {}

--[[]]--


--[[

ToDo


  Get the camera to go up with cat if the cat moves? But not side to side.
  In Cat : load all cat emotion variations into here, and use a emtion counter in .self


  Make the Cat do a animation when touched.

  

  Unfinished:
  Camera
  Map generator
  Animation for the load screen (have it be compleetly white when it ends)
  Cats menu
  Cats acheivement/unlock
  Food placement
  Spikey Food


]]--




-- Mouse
function love.mousepressed(x, y, button, touch)
  clostestmouseX = x

    if gameactive == true then
    
    if gamecats[1] ~= nil then
<<<<<<< HEAD
    
=======
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
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
<<<<<<< HEAD


=======
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
  if gameover == true then
    gameovermenu:mousepressed(x,y)
  end 
  elseif optionsactive == true then
    optionmenu:mousepressed(x,y)
  elseif gameover == true then
    gameovermenu:mousepressed(x,y)
  elseif musicmenuactive == true then
    musicmenu:mousepressed(x,y)
  elseif creditsmenuactive == true then
    creditsmenu:mousepressed(x,y)
<<<<<<< HEAD
  elseif catsmenuactive == true then
    catsmenu:mousepressed(x,y)
=======
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
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

  elseif musicmenuactive == true then
    musicmenu:keypressed(key)

  elseif creditsmenuactive == true then
    creditsmenu:keypressed(key)
<<<<<<< HEAD

  elseif catsmenuactive == true then
    catsmenu:keypressed(key)

=======
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
  else
    
  mainmenu:keypressed(key)
  end
end



-- Draw
function love.draw()
  if gameactive == true then
  --[[Centered Image]]--
<<<<<<< HEAD
  
  --[[image path, (from where in file x,y) , rotation in radiens, scale x, scale y, draw offset x, draw offset Y]]--
  
  
  --[[love.graphics.setColor(0,0,0,255)]]--
  

  love.graphics.print(debugtext,0,0)
  love.graphics.print(debugtext2,0,50)

=======
  love.graphics.draw(image, actframe, imagex, 100)
  --[[image path, (from where in file x,y) , rotation in radiens, scale x, scale y, draw offset x, draw offset Y]]--
  love.graphics.draw(image, 500, 400, math.rad(30),0.5, 0.5, halfw, halfh)
  
  --[[love.graphics.setColor(0,0,0,255)]]--
  
  love.graphics.line(100,100,(love.graphics.getHeight()/2),love.graphics.getWidth()/2)


  love.graphics.print(debugtext,0,0)
  love.graphics.print(debugtext2,0,50)

>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
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


  elseif musicmenuactive == true then
    musicmenu:draw(halfw-menuw/2,halfh-menuh,menuw,menuh,22)

  elseif creditsmenuactive == true then
    creditsmenu:draw(halfw-menuw/2,halfh-menuh,menuw,menuh,22)

<<<<<<< HEAD
  elseif catsmenuactive == true then
    catsmenu:draw(halfw-100/2,halfh-100,100,100,22)

=======
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
  else
  mainmenu:draw(halfw-menuw/2,halfh-menuh,menuw,menuh,22)
  end
  
end





<<<<<<< HEAD

-- Update
function love.update(dt)
  elapsed = elapsed + dt
  accum = accum + dt
  while accum >= step do
  gamemusic:update()
  movecat()
  accum = accum - step 
  end

  gamemusic:update()
  movecat()
  
  if gameactive == true then
      if randomseed == 0 then
      randomseed = elapsed
      end

      

    if gameover == false then
      -- process player input here
      -- update the game logic/simulation
      
    
    end
    
  



=======
-- Update
function love.update(dt)
  gamemusic:update(dt)
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
  maincat:update(dt) 
end
  


>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
  world:update(dt)
  
  
  
  for f,v in ipairs(destroy_queue) do
    
    for h,i in ipairs(destroy_queue[f]) do
      if destroy_queue[f][2] == -2 then
        removeshape(destroy_queue[f][1],destroy_queue[f][2],maincat)
      else
     removeshape(destroy_queue[f][1],destroy_queue[f][2],mainmap)
      end 
<<<<<<< HEAD
    end
  end
=======
      end
     end
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
      destroy_queue = {}


     if gameover == true then
      gameovermenu:update(dt)
     end
  
  
  --game.maincat:release() does not have object references set up, only global. maincat.p.prop:destroy() works.
<<<<<<< HEAD
  elseif optionsactive == true then
  optionmenu:update(dt)
  elseif musicmenuactive == true then
  musicmenu:update(dt)
  elseif creditsmenuactive == true then
  creditsmenu:update(dt)
  elseif catsmenuactive == true then
  catsmenu:update(dt)
  else
  mainmenu:update(dt)
  end
=======
elseif optionsactive == true then
  optionmenu:update(dt)
elseif musicmenuactive == true then
  musicmenu:update(dt)
elseif creditsmenuactive == true then
  creditsmenu:update(dt)
else
  mainmenu:update(dt)
end
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
  --[[ keep at or under 2048 X 2048]]--

end

<<<<<<< HEAD


function movecat()
  if gameactive == true then
    if gameover == false then
      maincat:update()
  if (holding == 1) then
    gamecats[1].catslist[1].p.body:applyLinearImpulse(5,0)
    gamecats[1].catslist[1].p.body:applyAngularImpulse(2)
  elseif (holding == 2) then
    gamecats[1].catslist[1].p.body:applyLinearImpulse(-5,0)
    gamecats[1].catslist[1].p.body:applyAngularImpulse(-2)
  end
end
end
end





=======
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
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

  local ceiling = {}
  ceiling.body = love.physics.newBody(world ,love.graphics.getWidth()/2,0-50)
  ceiling.shape = love.physics.newRectangleShape(love.graphics.getWidth()*5, 2)
  ceiling.prop = love.physics.newFixture(ceiling.body,ceiling.shape)
  ceiling.prop:setUserData("ceiling")
  ceiling.prop:setGroupIndex(-5)
  

 -- music trigger
  if loaded == false then
    gamemusic:setseed(elapsed)
    if savedata["musicpreference"] ~= nil then
    gamemusic:loadlist(savedata["musicpreference"])
    else
    gamemusic:loadlist(1)
    end
    gamemusic:loadsfx(1,1) -- 0.5 is 1 octive lower
  if savedata["musicvolume"] ~= nil then
  gamemusic:updatevolume(savedata["musicvolume"]/10)
  end


    local function makemusic()
    if savedata["musicpreference"] ~= nil then
      if savedata["musicvolume"] ~= nil then
        gamemusic.volume = savedata["musicvolume"]/10
        gamemusic:playlist(savedata["musicpreference"],1)
      else
        gamemusic:playlist(savedata["musicpreference"],1)
      end
    
    else
      gamemusic:playlist(1,elapsed,1,1)
    end
  end
  if savedata["musicswitch"] ~= nil then
    if savedata["musicswitch"] == "Off" then
    else
    makemusic()
    end
  else
    makemusic()
  end
   -- table.save(savedata,"save.lua")
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
<<<<<<< HEAD
 if love.filesystem.isFile("save") == false then

   love.filesystem.newFile("save")

 end

 --local d = love.audio.newSource("assets/audio/Tiki-Party.ogg","stream")
 --d:play()
  
  savedata = table.load("save")



  
  gamemusic = music.new()

=======
  if love.filesystem.getInfo("save.lua") == nil then
    love.filesystem.newFile("save.lua")
  end

  savedata = table.load("save.lua")
  gamemusic = music.new()
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
  if savedata["musicpreference"] ~= nil then
    gamemusic:loadlist(savedata["musicpreference"])
  else
    gamemusic:loadlist(1)
  end

<<<<<<< HEAD
=======
  debugtext = savedata
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
  preload()
  

end


-- Quit
function love.quit()
  if savedata ~= nil then
<<<<<<< HEAD
   table.save(savedata,"save")
  else
    l = 6/0
=======
   table.save(savedata,"save.lua")
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
  end

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









-- Gameover
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









-- Options
function loadoptions()
  optionmenu = menu.new()
  optionmenu:addItem{
		name = 'Cats',
<<<<<<< HEAD
    action = function()
      makecatsmenu()
      optionsactive = false
      optionmenu.active = false
=======
		action = function()
      
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
      -- revert graphics
      
		end
	}
	optionmenu:addItem{
		name = 'Credits',
    action = function()
      makecreditsmenu()
      optionsactive = false
      optionmenu.active = false
      
		end
  }
  optionmenu:addItem{
		name = 'Music',
		action = function()
      makemusicmenu()
      optionsactive = false
      optionmenu.active = false
      musicmenuactive = true
      
		end
	}
	optionmenu:addItem{
		name = 'Back',
		action = function()
      optionmenu.active = false
      optionsactive = false
      mainmenu.active = true
      musicmenuactive = false
		end
  }
  
  optionmenu:load()
end









-- Music Menu
function makemusicmenu()
  if musicmenu == nil then
  musicmenu = menu.new()
  
  local r = "Defualt"
  local l = 1
  local m = "On"

  if savedata["musicswitch"] ~= nil then
    m = savedata["musicswitch"]
  end

  if savedata["musicvolume"] ~= nil then
    l = savedata["musicvolume"]/10
  end

  if savedata["musicpreference"] ~= nil then
    if savedata["musicpreference"] == 1 then
      r = "Defualt"
    elseif savedata["musicpreference"] == 2 then
      r = "Dance"
    elseif savedata["musicpreference"] == 3 then
      r = "Techno"
    elseif savedata["musicpreference"] == 4 then
      r = "Relaxing"
    elseif savedata["musicpreference"] == 5 then
      r = "hip-hop"
    end
  end
  musicmenu:addItem{
  name = 'Music Preference: '..r,
  action = function()
    if savedata["musicpreference"] ~= nil then
      if savedata["musicpreference"] > 4 then
        
        savedata["musicpreference"] = 1
      else
      savedata["musicpreference"] = savedata["musicpreference"] + 1
      
      end
    else
      savedata["musicpreference"] = 2
    end

    if savedata["musicpreference"] == 1 then
      gamemusic:loadlist(1)
      gamemusic:updatelist(1)
      r = "Defualt"
    elseif savedata["musicpreference"] == 2 then
      gamemusic:loadlist(2)
      gamemusic:updatelist(2)
      r = "Dance"
    elseif savedata["musicpreference"] == 3 then
      gamemusic:loadlist(3)
      gamemusic:updatelist(3)
      r = "Techno"
    elseif savedata["musicpreference"] == 4 then
      gamemusic:loadlist(4)
      gamemusic:updatelist(4)
      r = "Relaxing"
    elseif savedata["musicpreference"] == 5 then
      gamemusic:loadlist(5)
      gamemusic:updatelist(5)
      r = "hip-hop"
    end
    r = "Music Preference: "..r
    musicmenu:updatename(1,r)
  end
}
  musicmenu:addItem{
  name = 'Volume: '..l,
  action = function()
    if savedata["musicvolume"] ~= nil then
      if clostestmouseX < halfw then
        
        
        if savedata["musicvolume"] == 1 then
          savedata["musicvolume"] = 10
          
        else
        savedata["musicvolume"] = savedata["musicvolume"] - 1
        end
    end
    if clostestmouseX > halfw then
      
      if savedata["musicvolume"] >= 10 then
        savedata["musicvolume"] = 1
      else
        savedata["musicvolume"] = savedata["musicvolume"] + 1
      end
    end
    l = "Volume: "..savedata["musicvolume"]/10
    musicmenu:updatename(2,l)
  else
    savedata["musicvolume"] = 10
  end
  gamemusic:updatevolume(savedata["musicvolume"]/10)
  end
}
musicmenu:addItem{
  name = 'Music: '..m,
  action = function()
    if savedata["musicswitch"] ~= nil then
      if savedata["musicswitch"] == "On" then
        savedata["musicswitch"] = "Off"
        gamemusic:startstop(false)
      else
        savedata["musicswitch"] = "On"
        gamemusic:startstop(true)
        
      end
      musicmenu:updatename(3,"Music: "..savedata["musicswitch"])
    else
      savedata["musicswitch"] = "Off"
      gamemusic:startstop(false)
      
      musicmenu:updatename(3,"Music: "..savedata["musicswitch"])
    end

    if savedata["musicpreference"] ~= nil then
      gamemusic:updatelist(savedata["musicpreference"])
      end
    
  end
}
  musicmenu:addItem{
  name = 'Back',
  action = function()
          
          musicmenu.active = false
          optionmenu.active = true
          optionsactive = true
          musicmenuactive = false
          creditsmenuactive = false
          
  end
  }

musicmenu:load()

else
  musicmenu.active = true
  
end
musicmenuactive = true
end










-- Credits
function makecreditsmenu()
  if creditsmenu == nil then
    creditsmenu = menu.new()

    creditsmenu:addItem{
          name = 'Credits',
          action = function()
        
        -- revert graphics
        
          end
      }
      creditsmenu:addItem{
        name = 'Music by Eric Matyas',
        action = function()
      
      -- revert graphics
      
        end
    }
    creditsmenu:addItem{
          name = 'www.   soundimage   .org',
          action = function()
 
          end
      }
      creditsmenu:addItem{
          name = 'Back',
          action = function()
            creditsmenu.active = false
            creditsmenuactive = false
            optionmenu.active = true
            optionsactive = true
            musicmenuactive = false

      
          end
    }
    creditsmenu.active = true
    creditsmenu:load()



  else
    creditsmenu.active = true
  end

  creditsmenuactive = true

<<<<<<< HEAD
end







function makecatsmenu()
  if catsmenu == nil then
    catsmenu = menu.new()

    catsmenu:addItem{
          name = 'Blusie       SweetSugar       Nebula',
          action = function()
        
        -- revert graphics
        
          end
      }
    catsmenu:addItem{
          name = 'SweetPea     PumkinSpice   Sweetsy',
        action = function()
      
      -- revert graphics
      
        end
    }
    catsmenu:addItem{
          name = 'GoldenCakes   ButterBall     Starlight',
          action = function()
 
          end
      }
    catsmenu:addItem{
          name = 'Back',
          action = function()
            creditsmenuactive = false
            optionmenu.active = true
            optionsactive = true
            musicmenuactive = false
            catsmenu.active = false
            catsmenuactive = false
            

      
          end
    }
    catsmenu.active = true
    catsmenu:load()



  else
    catsmenu.active = true
  end

  catsmenuactive = true

=======
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
end