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
local camera = require("cameramanager")
local mapmanager = require("gameobbymanager")
local catsmenumanager = require("catsmenumanager")

local game = {}
local updatemainmenu = false
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
maincat = nil
local nums
local curscore = 0
local inflated = 0

loadstorage = { maps = {}, light = {}, gamemaps = {}}


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
local catsimage

local lightgameoverevent = require("lightgameover")
local gameoverevent = nil
local gameovermultiplier
local bgimage = love.graphics.newImage("assets/sky.jpg")

local loaded = false

local accum = 0
local step = 0.016


local creditsmenu
musicmenuactive = nil
local musicmenu
musicmenuactive = nil
local catsmenu
catsmenuactive = nil
local unlockmenu
unlockmenuactive = false
local descriptionmenu

local mainmenu
mainmenuactive = false

local lightgameoveractive = nil

local gametimer = 0


local unlockdata = {}


mainmap = nil
local collisionmanage
local translist = {}
gamecats = {}
local catanim
local sixframe
local randomseed = 0
local clostestmouseX
local gameoverstorage = {}
local nomouse
local catmode = 0
local height = 0
local mousex
local loops

local gamemode = nil

local cameraoffsetmultiplier = 1.5

local easydraw = {}

local scalex, scaley, scalefactor = 1,1,1

local lightgameoverdone = nil
local caty
local gamestate = 0
local gamestate2 = 0

local catnames = {"Blusie","Purrey","Nebula","Sweetpea","PumpkinSpice","Sweetsy","GoldenCakes","ButterBall","Starlight"}
local catdesc = {"Blusie, The newcomer!","Purrey, Sweet, Small, and Cute!","Nebula, A beutiful, magnificant cat.","Sweatpea, A loveable ball of fluff.",
"PumpkinSpice, A shy kitty that just wants to be loved.","Sweetsy, Has too much love to share!","GoldenCakes, A snooty cat that likes to show off.",
"ButterBall, Loyal and Sweet; the first.","Starlight, A regal and relaxed kitty."}


local catsvideolist = {love.graphics.newVideo(love.video.newVideoStream("assets/Blusie.ogv")),love.graphics.newVideo(love.video.newVideoStream("assets/Purrey.ogv")),
love.graphics.newVideo(love.video.newVideoStream("assets/Nebula.ogv")),love.graphics.newVideo(love.video.newVideoStream("assets/Sweetpea.ogv")),
love.graphics.newVideo(love.video.newVideoStream("assets/Pumpkinspice.ogv")),love.graphics.newVideo(love.video.newVideoStream("assets/Sweetsy.ogv")),
love.graphics.newVideo(love.video.newVideoStream("assets/Goldencakes.ogv")),love.graphics.newVideo(love.video.newVideoStream("assets/Butterball.ogv")),
love.graphics.newVideo(love.video.newVideoStream("assets/Starlight.ogv")),}



local bgvideo = love.graphics.newVideo(love.video.newVideoStream("assets/ogvcloudvideo.ogv"))
local bgvideo2 = love.graphics.newVideo(love.video.newVideoStream("assets/Blusie.ogv"))
local dobgvideo = true


destroy_queue = {}

-- local ser = require("Path.to.ser")
savedata = {}

--[[]]--


--[[

ToDo


  Blusie - 
  Purrey - 3000 M, story mode
  Nebula - 10,000 M, story mode
  Sweetpea - Eat all food in level above 3000M
  Pumkpinspice - End game outside of map
  Sweetsy - Eat no food in level above 3000M
  GoldenCakes - 100 food total
  ButterBall - Win story mode
  Starlight - 100,000 total M

  Puffles - Eat 20 food in a game


  Get the camera to go up with cat if the cat moves? But not side to side.
  In Cat : load all cat emotion variations into here, and use a emtion counter in .self


  Make the Cat do a animation when touched.

  
  Ruffles, Truffles, Puffles.

  Unlock: http://soundimage.org/wp-content/uploads/2016/04/PowerUp18.mp3



  Sound effects needed:
  Eat -
  Hurt -
  Cat sounds -
  Menu Click (import)
  Steryotpical movie scenic sound effect Like a wave, maybe synetic. https://www.youtube.com/watch?v=UUu_SOMoSFM



  Visuals needed:
  Maps
  Cats -
  Background of levels
  Animations
  Cat menu gifs (doesnt have to be .gif?) - power director




  Unfinished:
  Camera --
  Map generator --
  Animation for the load screen (have it be compleetly white when it ends)
  Cats menu -
  Cats acheivement/unlock --
  Food placement --
  Spikey Food --


  Map:

  Make food highly acessable -- too hard.
  Find out what ratio maps will be in; need to make the maps
  Texture fix up: it's kind awfull, maybe lighten up the background.





    --- Look for Dun Dun Dun dun DAAAAA music exert in current files
    --- Easter Egg: Unlock Blusie? What will it do? reveal more backstory? Use culture to indicate dead cat???




]]--









-- Mouse
function love.mousepressed(x, y, button, touch)

  
  x = x / scalefactor
  y = y / scalefactor

  x = x - ((540/2)*((scalex/scalefactor)-1))
  --[[
  x = x - ((540/2)*((scalex/scalefactor)-1))
  y = y - ((960*(scaley-1))*-1)--+960/2

  ]]--
  


  clostestmouseX = x

  if gamestate == 6 then
    gameovermenu:mousepressed(x,y)
  
  elseif gamestate == 20 then
    unlockmenu:mousepressed(x,y)

  elseif gamestate == 1 then
    optionmenu:mousepressed(x,y)
  elseif gamestate == 2 then
    musicmenu:mousepressed(x,y)
  elseif gamestate == 3 then
    creditsmenu:mousepressed(x,y)
  elseif gamestate == 4 then
    catsmenu:mousepressed(x,y)
  elseif gamestate == 0 then
    mainmenu:mousepressed(x,y)
  end
  
  function love.mousereleased(x, y, button, touch)
    
    holding = 0
    nomouse = true
    
  end
end











function love.keypressed(key)

  if gamestate == 0 then
    mainmenu:keypressed(key)
      
  elseif gamestate == 1 then
    optionmenu:keypressed(key)

  elseif gamestate == 4 then
    catsmenu:keypressed(key)

  elseif gamestate == 3 then
    creditsmenu:keypressed(key)

  elseif gamestate == 2 then
    musicmenu:keypressed(key)

  elseif gamestate == 6 then
    gameovermenu:keypressed(key)
    
  elseif gamestate == 20 then
    unlockmenu:keypressed(key)
  end

 
end







function loopbgvideo()

  if bgvideo:isPlaying() == false then
    bgvideo:pause()
    bgvideo:rewind()
    bgvideo:play()
  end

  if bgvideo2:isPlaying() == false then
    bgvideo2:pause()
    bgvideo2:rewind()
    bgvideo2:play()
  end

end







-- Draw
function love.draw()

  -- totoal screen width ((scalex/scalefactor)*540)
  -- 
  
  
  love.graphics.scale(scalefactor,scalefactor)
  love.graphics.translate( ((540/2)*((scalex/scalefactor)-1)),0 ) --((scalex/scalefactor)*540)-540 love.graphics.getWidth( )
  

  if gamestate < 4 then
    
    love.graphics.setColor(128,128,128,255)

  if dobgvideo == true then
    
    loopbgvideo()
    love.graphics.draw(bgvideo,0,0,0,0.54,0.54,0,0)
    love.graphics.draw(bgvideo2,halfw-200,halfh*2-200,math.rad(-30),0.5,0.5)
  else
    love.graphics.draw(bgimage,0, -4770 ,0,540/500,540/500,0,0) -- 5662.5 max     (540/500)
  end

  end


  if gamestate >= 5 then



    

    
  --[[Centered Image]]--
  
  --[[image path, (from where in file x,y) , rotation in radiens, scale x, scale y, draw offset x, draw offset Y]]--
  
  
  --[[love.graphics.setColor(0,0,0,255)]]--
  if gamestate < 21 then
  if gameover == false and gamestate < 20 then
    caty = gamecats[1].catslist[1].p.body:getY()
    followcat(caty,1,halfw,halfh)
  elseif gameover == true then
    --setcampos(gameoverstorage["catx"]-halfw,gameoverstorage["caty"]-halfh)
    setcampos(0, gameoverstorage["y"]) -- gameoverstorage["caty"]-(halfh*savedata["cameraoffsetmultiplier"])
  elseif lightgameoveractive == true then
    setcampos(0, gameoverstorage["y"])
  end
end
  
  

  
--[[

  love.graphics.print(debugtext,0,0)
  love.graphics.print(debugtext2,0,50)

  if gameovermultiplier ~= nil then
    love.graphics.setColor(0+gameovermultiplier,0+gameovermultiplier,0+gameovermultiplier,255)
  else
    love.graphics.setColor(0,0,0,255)
  end]]--
  if gameoverevent ~= nil then
    
    if gamecats[1].catslist[1] ~= nil then

      if lightgameoverdone == nil then
        lightgameoverdone = false
      end

      if gameoverevent:checkplay() >= 23 then
        gamestate = 21
        if gameoverevent:checkplay() >= 30 then
        lightgameoverdone = true
        lightgameoveractive = true
        end
      end
      
  end
end



  if gamestate < 20 then

  




    love.graphics.setColor(128,128,128,255)
    -- (((halfh*2) * 0.75) )
    if caty >= -23182.5 then -- 5243
      love.graphics.draw(bgimage,0,caty - (((5662.44)+(caty/5))-259.2-108+32.5),0,540/500,540/500,0,0) -- /5 = -25875 /4 = -20712.5 w/ 5800    + (caty / 4)
    --love.graphics.draw(bgimage,0,caty - ( (5900) + (caty / 5)),0,1.25,1.25,0,0) -- /10 = starynight at ~40,000  *(540/500)
    -- ( ((5662.44) + (caty / 4))-259.2-108) 20972        ( ((5662.44) + (caty/ 4))-259.2-108) /4 = -18420 caty
    else
    love.graphics.draw(bgimage,0,caty - 691.24,0,540/500,540/500,0,0) -- Base 5243, 5243 * (540/500) = 5662.44
    end

  if gamestate == 5 then
  love.graphics.setColor(128,128,128,255)
  mainmap:drawfood()
  maincat:draw(curframe)
  mainmap:drawmap()
  else
    love.graphics.setColor(128,128,128,255)
    mainmap:drawfood()
    mainmap:drawmap()
    maincat:draw(curframe)
  end
--[[
  if gameovermultiplier ~= nil then
    love.graphics.setColor(128+gameovermultiplier,128+gameovermultiplier,128+gameovermultiplier,255)
  else
    love.graphics.setColor(128,128,128,255)
  end ]]--
  

end


 
    if lightgameoverdone == true then
      softgameover(maincat, world, 1, gamemusic, gameoverstorage)
  -- Update total height
  if math.floor(gameoverstorage["caty"]*-1) >= 0 then
    savedata["height"] = savedata["height"] + math.floor(gameoverstorage["caty"]*-1)
  end
  
  checkforunlock(curscore)
elseif lightgameoverdone == false then
   gameoverevent:draw(gamecats[1].catslist[1].p.body:getY())
  end
   



  if ( elapsed > (1/6)) then
    elapsed = 0
  
    if ( curframe < 3 ) then
    curframe = curframe + 1
    else
    curframe = 1
    end
    actframe = frames[curframe]
  
  end
end
  


  if gamestate == 6 then

  local t, y = getposcam()
  gameovermenu:draw(((halfw/scalex)+t-menuw/2),halfh+y-(#gameovermenu.items*menuh/2),menuw,menuh,22)
  

  elseif gamestate == 20 then
    
  local i, o = getposcam()--gameoverstorage["x"]
  print(i.."      "..o)
  unlockmenu:draw((halfw/scalex)+i-100/2,halfh+o-(#unlockmenu.items*100/2),100,100,22)
  



  elseif gamestate == 1 then
    optionmenu:draw((halfw/scalex)-menuw/2,halfh-(#optionmenu.items*menuh/2),menuw,menuh,22)


  elseif gamestate == 2 then
    musicmenu:draw((halfw/scalex)-menuw/2,halfh-(#musicmenu.items*menuh/2),menuw,menuh,22)

  elseif gamestate == 3 then
    creditsmenu:draw((halfw/scalex)-menuw/2,halfh-(#creditsmenu.items*menuh/2),menuw,menuh,22)

  elseif gamestate == 4 then
    catsmenu:draw(((halfw)-100/2)-(halfw/scalex),halfh-(#catsmenu.items*100/2),100,100,22)
    descriptionmenu:draw((halfw/scalex)-100/2,halfh-50-(#catsmenu.items*100/2),100,100,17)
    
  elseif gamestate == 0 then
   mainmenu:draw(((halfw/scalex)-menuw/2),halfh-(#mainmenu.items*menuh/2),menuw,menuh,22)

  end
  


  local cur_time = love.timer.getTime()
   if next_time <= cur_time then
      next_time = cur_time
      return
   end
   love.timer.sleep(next_time - cur_time)
   
  
end






















-- Update

function love.update(dt)
  next_time = next_time + min_dt
  elapsed = elapsed + dt
  
  loops = 0
  accum = accum + dt

  while accum >= step do
  loops = loops + 1

  gamemusic:update()
  if gamestate == 5 then
  maincat:update()
  

  

  if love.mouse.isDown(1) then
    movecat(0)
    end
  
  if love.keyboard.isDown("left") or love.keyboard.isDown("right") then
    movecat(1)
  end
  end

  if gameoverevent ~= nil then
    
    --gameovermultiplier = gameoverevent:update()
    gameoverevent:update()
  end

  accum = accum - step

  end
  
  
  gamemusic:update()

  


  
  if gameactive == true then
      if randomseed == 0 then
      randomseed = elapsed
      end

      if gameoverevent ~= nil then
        --gameovermultiplier = gameoverevent:update()
        gameoverevent:update(loops)
        --print(gameovermultiplier)
      end

    if gamestate == 5 then

      mainmap:update(maincat:gety())

      if love.mouse.isDown(1) then
        movecat(0)
      end
      if love.keyboard.isDown("left") or love.keyboard.isDown("right") then
          movecat(1)
      end
    
    local x, y = gamecats[1].catslist[1].p.body:getLinearVelocity()
    
    if y ~= -62.5+(-3*inflated) then
    gamecats[1].catslist[1].p.body:setLinearVelocity(x,-62.5+(-3*inflated))
    end
      maincat:update()
      --height = math.floor(maincat:gety())
      -- process player input here
      -- update the game logic/simulation
    
    end
    
    
  
    --[[
  if catmode ~= 0 then
  elseif catmode == 1 then
    maincat:eat()
    catmode = 0
  elseif catmode == 2 then
    maincat:anim()
    catmode = 0
  end
  ]]--
  
  world:update(dt)
  

  --mainmap update
  
  
  
  for f,v in ipairs(destroy_queue) do
    
    for h,i in ipairs(destroy_queue[f]) do
      if destroy_queue[f][2] == -2 then
        removeshape(destroy_queue[f][1],destroy_queue[f][2],maincat)
      else
      mainmap:removeshape(destroy_queue[f][1],destroy_queue[f][2],destroy_queue[f][3])
      
      end 
    end
  end
      destroy_queue = {}

end
     if gamestate == 6 then
      gameovermenu:update(dt)
  
    elseif gamestate == 20 then
      unlockmenu:update(dt)
    
  
  
  --game.maincat:release() does not have object references set up, only global. maincat.p.prop:destroy() works.
  elseif gamestate == 1 then
  optionmenu:update(dt)
  elseif gamestate == 2 then
  musicmenu:update(dt)
  elseif gamestate == 3 then
  creditsmenu:update(dt)
  elseif gamestate == 4 then
  catsmenu:update(dt)
  elseif gamestate == 0 then
  mainmenu:update(dt)
  end
  --[[ keep at or under 2048 X 2048]]--

end







function movecat(mode)
  if gamestate == 5 then
    
      
  if (mode == 0) then
    mousex = love.mouse.getX()
    mousex = mousex / scalefactor
    mousex = mousex - ((540/2)*((scalex/scalefactor)-1))

    if mousex >= gamecats[1].catslist[1].p.body:getX() then
    gamecats[1].catslist[1].p.body:applyLinearImpulse(5,0)
    gamecats[1].catslist[1].p.body:applyAngularImpulse(2)
    else
    gamecats[1].catslist[1].p.body:applyLinearImpulse(-5,0)
    gamecats[1].catslist[1].p.body:applyAngularImpulse(-2)
    end

  elseif (mode == 1) then
    if love.keyboard.isDown("right") then
    gamecats[1].catslist[1].p.body:applyLinearImpulse(5,0)
    gamecats[1].catslist[1].p.body:applyAngularImpulse(2)
    else
    gamecats[1].catslist[1].p.body:applyLinearImpulse(-5,0)
    gamecats[1].catslist[1].p.body:applyAngularImpulse(-2)
    end
  end
end

end







function loadgame()
  gamestate = 5
  gameactive = true
  unlockdata = {}
  curscore = 0
  world = nil
  collisionmanage = nil
  gameover = false                                                                    -- LoadGame
  
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
  --[[
  local ceiling = {}
  ceiling.body = love.physics.newBody(world ,love.graphics.getWidth()/2,0-50)
  ceiling.shape = love.physics.newRectangleShape(love.graphics.getWidth()*5, 2)
  ceiling.prop = love.physics.newFixture(ceiling.body,ceiling.shape)
  ceiling.prop:setUserData("ceiling")
  ceiling.prop:setGroupIndex(-5)
  ]]--

 -- music trigger
  if loaded == false then
    gamemusic:setseed(elapsed)
    
    gamemusic:loadlist(savedata["musicpreference"])
    
  
    gamemusic:updatevolume(savedata["musicvolume"]/10)
    
    
    
  end 


    local function makemusic()
        gamemusic:startstop(true)
        gamemusic:updatevolume(savedata["musicvolume"]/10)
        gamemusic:playlist(savedata["musicpreference"],1)
      
      
    end

    if savedata["musicswitch"] == "On" then
      gamemusic:load(savedata["musicvolume"]/10,1,true)
    makemusic()
    else
      gamemusic:load(savedata["musicvolume"]/10,1,false)
    end
   -- table.save(savedata,"save.lua")


 
  
  -- mainmap = map.new(0,425,1,world,0.2,2)
  
  mainmap = mapmanager.new()
  mainmap:setscale(scalex,scaley,scalefactor)

  if gamemode == 1 then
  mainmap.mode[1] = "c" -- Limit the generation to a max of around -3000.
  if savedata["story"] == 0 then
  mainmap.maxheihgt = -30
  elseif savedata["story"] == 1 then
  mainmap.maxheihgt = -50
  elseif savedata["story"] == 2 then
  mainmap.maxheihgt = -75
  elseif savedata["story"] == 3 then
  mainmap.maxheihgt = -100
  end
  end

  mainmap.mode[2] = "c" -- inflate enable
  mainmap:setcatid(1)
  


  mainmap:setworld(world)
  maincat = catmanager.new()
  
  if savedata["unlockedcats"][savedata["cat"]] then
    maincat:newcat(400,800,25,world,1,savedata["cat"])
  else
    maincat:newcat(400,800,25,world,1,1)
  end

  gamecats[1] = maincat
  --gamecats[1].catslist[1].p.body:applyLinearImpulse(0,-150)
  gamecats[1].catslist[1].p.body:setLinearVelocity(0,-62.5)--(0,-65)--(0,-68.75)
  
 -- maincat.obbylist.cats[1].p.body:setFixedRotation(false)
  loaded = true
  world:setCallbacks(beginContact, endContact, preSolve, postSolve)
  gameover = false
  
end








function love.resize( w, h )

end







function triggerevent(data)

if data == "Music Start" then
  gamemusic:overlapsfx("music",(savedata["musicvolume"]/10)/4)
  --gamemusic:playsfx("elevatoropen",(savedata["musicvolume"]/10)/2)
elseif data == "Music End" then
  gamemusic:overlapsfx()
  gamemusic:playsfx("elevatorclose",(savedata["musicvolume"]/10)/2)
end


end







-- Load
function love.load()
  min_dt = 1/60
   next_time = love.timer.getTime()
    
    scalex = (halfw*2) / 540
    scaley = (halfh*2) / 960

    if scalex < scaley then
      scalefactor = scalex
    elseif scalex > scaley then -- scaley*1.5 means resited X scaling
      scalefactor = scaley -- cloning the vairaible to here means that the height in the scale will be consitant
    elseif scalex == scaley then
      scalefactor = scaley
    end
    --print(scalefactor.."x"..scalex.."y"..scaley)
    


    
      --love.window.setMode(540, 960, { fullscreen=false,vsync=true, minwidth=400, minheight=300}) --,centered=true
      love.window.setMode(halfw*2,halfh*2,{centered=true,minwidth=30, minheight=40})
    


   --love.graphics.printf("Loading",200,500,50,"left")
   loadstorage["gamemaps"][-6] = love.graphics.newImage("assets/maps/MapDrawingLeftFlip.png")
   loadstorage["gamemaps"][-5] = love.graphics.newImage("assets/maps/MapDrawingCenterFlip.png")
   loadstorage["gamemaps"][-4] = love.graphics.newImage("assets/maps/MapDrawingRightFlip.png")
   loadstorage["gamemaps"][-3] = love.graphics.newImage("assets/maps/MapDrawingLeft.png")
   loadstorage["gamemaps"][-2] = love.graphics.newImage("assets/maps/MapDrawingCenter.png")
   loadstorage["gamemaps"][-1] = love.graphics.newImage("assets/maps/MapDrawingRight.png")

   loadstorage["maps"][1] = love.graphics.newImage("assets/maps/MapDrawing1.png")
   loadstorage["maps"][2] = love.graphics.newImage("assets/maps/MapDrawing2.png")
   loadstorage["maps"][3] = love.graphics.newImage("assets/maps/MapDrawing3.png")
   loadstorage["maps"][4] = love.graphics.newImage("assets/maps/MapDrawing4.png")
   loadstorage["maps"][5] = love.graphics.newImage("assets/maps/MapDrawing5.png")
   loadstorage["maps"][6] = love.graphics.newImage("assets/maps/MapDrawing6.png")
   loadstorage["maps"][7] = love.graphics.newImage("assets/maps/MapDrawing7.png")
   loadstorage["maps"][8] = love.graphics.newImage("assets/maps/MapDrawing8.png")
   loadstorage["maps"][9] = love.graphics.newImage("assets/maps/MapDrawing9.png")
   loadstorage["maps"][10] = love.graphics.newImage("assets/maps/MapDrawing10.png")
   loadstorage["maps"][11] = love.graphics.newImage("assets/maps/MapDrawing11.png")
   loadstorage["maps"][12] = love.graphics.newImage("assets/maps/MapDrawing12.png")
   loadstorage["maps"][13] = love.graphics.newImage("assets/maps/MapDrawing13.png")
   loadstorage["maps"][14] = love.graphics.newImage("assets/maps/MapDrawing14.png")
   loadstorage["maps"][15] = love.graphics.newImage("assets/maps/MapDrawing15.png")
   loadstorage["maps"][16] = love.graphics.newImage("assets/maps/MapDrawing16.png")
   loadstorage["maps"][17] = love.graphics.newImage("assets/maps/MapDrawing17.png")
   loadstorage["maps"][18] = love.graphics.newImage("assets/maps/MapDrawing18.png")
   loadstorage["maps"][19] = love.graphics.newImage("assets/maps/MapDrawing19.png")
   loadstorage["maps"][20] = love.graphics.newImage("assets/maps/MapDrawing20.png")
   loadstorage["maps"][21] = love.graphics.newImage("assets/maps/MapDrawing21.png")
   loadstorage["maps"][22] = love.graphics.newImage("assets/maps/MapDrawing22.png")
   loadstorage["maps"][23] = love.graphics.newImage("assets/maps/MapDrawing23.png")
   loadstorage["maps"][24] = love.graphics.newImage("assets/maps/MapDrawing24.png")
   loadstorage["maps"][25] = love.graphics.newImage("assets/maps/MapDrawing25.png")
   loadstorage["maps"][26] = love.graphics.newImage("assets/maps/MapDrawing26.png")
   loadstorage["maps"][27] = love.graphics.newImage("assets/maps/MapDrawing27.png")
   loadstorage["maps"][28] = love.graphics.newImage("assets/maps/MapDrawing28.png")
   loadstorage["maps"][29] = love.graphics.newImage("assets/maps/MapDrawing29.png")
   loadstorage["maps"][30] = love.graphics.newImage("assets/maps/MapDrawing30.png")
   loadstorage["maps"][31] = love.graphics.newImage("assets/maps/MapDrawing31.png")

   loadstorage["maps"][-1] = love.graphics.newImage("assets/maps/MapDrawing-1.png")
   --loadstorage["maps"][-2] = love.graphics.newImage("assets/maps/MapDrawing-2.png")
   --loadstorage["maps"][-3] = love.graphics.newImage("assets/maps/MapDrawing-3.png")
   loadstorage["maps"][-4] = love.graphics.newImage("assets/maps/MapDrawing-4.png")
   loadstorage["maps"][-5] = love.graphics.newImage("assets/maps/MapDrawing-5.png")
   --loadstorage["maps"][-6] = love.graphics.newImage("assets/maps/MapDrawing-6.png")
   --loadstorage["maps"][-7] = love.graphics.newImage("assets/maps/MapDrawing-7.png")
   loadstorage["maps"][-8] = love.graphics.newImage("assets/maps/MapDrawing-8.png")
   loadstorage["maps"][-9] = love.graphics.newImage("assets/maps/MapDrawing-9.png")
   loadstorage["maps"][-10] = love.graphics.newImage("assets/maps/MapDrawing-10.png")
   loadstorage["maps"][-11] = love.graphics.newImage("assets/maps/MapDrawing-11.png")
   loadstorage["maps"][-12] = love.graphics.newImage("assets/maps/MapDrawing-12.png")
   loadstorage["maps"][-13] = love.graphics.newImage("assets/maps/MapDrawing-13.png")
   loadstorage["maps"][-14] = love.graphics.newImage("assets/maps/MapDrawing-14.png")
   loadstorage["maps"][-15] = love.graphics.newImage("assets/maps/MapDrawing-15.png")
   loadstorage["maps"][-16] = love.graphics.newImage("assets/maps/MapDrawing-16.png")
   loadstorage["maps"][-17] = love.graphics.newImage("assets/maps/MapDrawing-17.png")
   loadstorage["maps"][-18] = love.graphics.newImage("assets/maps/MapDrawing-18.png")
   loadstorage["maps"][-19] = love.graphics.newImage("assets/maps/MapDrawing-19.png")
   loadstorage["maps"][-20] = love.graphics.newImage("assets/maps/MapDrawing-20.png")
   loadstorage["maps"][-21] = love.graphics.newImage("assets/maps/MapDrawing-21.png")
   loadstorage["maps"][-22] = love.graphics.newImage("assets/maps/MapDrawing-22.png")
   loadstorage["maps"][-23] = love.graphics.newImage("assets/maps/MapDrawing-23.png")
   loadstorage["maps"][-24] = love.graphics.newImage("assets/maps/MapDrawing-24.png")
   loadstorage["maps"][-25] = love.graphics.newImage("assets/maps/MapDrawing-25.png")
   loadstorage["maps"][-26] = love.graphics.newImage("assets/maps/MapDrawing-26.png")
   loadstorage["maps"][-27] = love.graphics.newImage("assets/maps/MapDrawing-27.png")
   loadstorage["maps"][-28] = love.graphics.newImage("assets/maps/MapDrawing-28.png")
   --loadstorage["maps"][-29] = love.graphics.newImage("assets/maps/MapDrawing-29.png")
   --loadstorage["maps"][-30] = love.graphics.newImage("assets/maps/MapDrawing-30.png")
   loadstorage["maps"][-31] = love.graphics.newImage("assets/maps/MapDrawing-31.png")

   loadstorage["light"][1] = love.graphics.newImage("assets/Light1.png")
   loadstorage["light"][2] = love.graphics.newImage("assets/Light2.png")
   loadstorage["light"][3] = love.graphics.newImage("assets/Light3.png")
   loadstorage["light"][4] = love.graphics.newImage("assets/Light4.png")
   loadstorage["light"][5] = love.graphics.newImage("assets/Light5.png")
   loadstorage["light"][6] = love.graphics.newImage("assets/Light6-5.png")
   loadstorage["light"]["white"] = love.graphics.newImage("assets/White.png")
   loadstorage["light"]["circle"] = love.graphics.newImage("assets/Circle.png")
   loadstorage["light"]["offwhite"] = love.graphics.newImage("assets/Light-10part.png")

    
  
  --love.graphics.scale((halfw*2)/540,(halfh*2)/960)

 if love.filesystem.getInfo("save") == nil then

   love.filesystem.newFile("save")

 end

 --local d = love.audio.newSource("assets/audio/Tiki-Party.ogg","stream")
 --d:play()
  
  savedata = table.load("save")

  if savedata["musicpreference"] == nil then
    savedata["musicpreference"] = 1
  end

  if savedata["musicvolume"] == nil then
     savedata["musicvolume"] = 10
  end

  if savedata["musicswitch"] == nil then
    savedata["musicswitch"] = "On"
  end

  if savedata["cat"] == nil then
    savedata["cat"] = 1
  end

  if savedata["food"] == nil then
    savedata["food"] = 0
  end

  if savedata["unlockedcats"] == nil then
    savedata["unlockedcats"] = {1}
  end

  if savedata["unlockedcats"][1] == nil then
    savedata["unlockedcats"][1] = 1
  end

  if savedata["height"] == nil then
     savedata["height"] = 0
  end

  if savedata["story"] == nil then
    savedata["story"] = 0
  end

  if savedata["cameraoffsetmultiplier"] == nil then
    savedata["cameraoffsetmultiplier"] = 1.5
  elseif savedata["cameraoffsetmultiplier"] > 2 or savedata["cameraoffsetmultiplier"] < 0.1 then
    savedata["cameraoffsetmultiplier"] = 1.5
  end


  if savedata["story"] == 0 then
    updatemainmenu = true
  end

  gamemusic = music.new()
  gamemusic:loadsfx(1,1) -- 0.5 is 1 octive lower

  preload()
  mainmenuactive = true
  

end





-- Quit
function love.quit()
  if savedata ~= nil then
   table.save(savedata,"save")
  end
end
 




function preload()
  --love.graphics.setDefaultFilter("nearest","nearest")
  love.graphics.setBackgroundColor(255,255,255,255)
  
  gameovermenuactive = false
  unlockmenuactive = false

  makemainmenu()


end


function makemainmenu()
  gamestate = 0
  if mainmenu == nil or updatemainmenu == true then
    mainmenu = menu.new()
    mainmenu:setscreen(halfh*2,halfw*2)
    mainmenu:addItem{
      {
      name = 'Start Game',
      action = function()
        -- revert graphics
        love.graphics.setColor(255, 255, 255, 128)
        gamemode = 1
        loadgame()
      end
    }
  }
  
    if savedata["story"] ~= 0 then 
      mainmenu:addItem {
        {
          name = 'Endless Mode',
          action = function()
            -- revert graphics
            love.graphics.setColor(255, 255, 255, 128)
            gamemode = 2
            loadgame()
          end
        }
    }
  end
  mainmenu:addItem{
    {
		name = 'Options',
		action = function()
      loadoptions()
    end
  }
	}
	mainmenu:addItem{
    {
		name = 'Quit',
		action = function()
			love.event.quit()
    end
  }
  }

  mainmenu:load()
  else
  
  end

end







function beginContact(a, b, coll)
  
  if gameover == false then
  if begincollision(a,b,coll) == "food" then
  --maincat:eat()
  curscore = curscore + 25
  if savedata["food"] == nil then
    savedata["food"] = 1
  else
    savedata["food"] = savedata["food"] + 1
  end

  maincat:setmode(1)
  mainmap.eaten[1] = mainmap.eaten[1] + 1
  
  end
  end
  --local x5,y5 = coll:getNormal()
  
end
 
function endContact(a, b, coll)
 
end
 
function preSolve(a, b, coll)
 
end
 
function postSolve(a, b, coll, normalimpulse, tangentimpulse)
 
end









function unlockcat(id)
  for i,k in ipairs(id) do
  if savedata["unlockedcats"][i] == false then
    print("unlocking")
  savedata["unlockedcats"][i] = true
  print(catnames[i])
  end
  end
  makeunlockmenu(id)
end










--DogameOver
function dogameover(id)

  if gameover == false then
  triggergameover(maincat, world, id, gamemusic, gameoverstorage)
  gameover = true
  end

  height = math.floor(maincat:gety())
  -- Update total height
  if math.floor(gameoverstorage["caty"]*-1) >= 0 then
    savedata["height"] = savedata["height"] + math.floor(gameoverstorage["caty"]*-1)
  end


  
  drawgameover(curscore)
  gameovermenuactive = true
  inflated = 0
  checkforunlock(curscore)

  

  --end
end

function triggerlightgameover(id)
  --softgameover(maincat, world, id, gamemusic, gameoverstorage)

  -- Update total height
  --if math.floor(gameoverstorage["caty"]*-1) >= 0 then
  --  savedata["height"] = savedata["height"] + math.floor(gameoverstorage["caty"]*-1)
  --end

  --lightgameoveractive = true
  --gameover = true
  --inflated = 0
  --checkforunlock(curscore)
  print("Doing soft game over")
  --local video = love.video.newVideoStream("assets/Produce.ogv")
  --video:play()
  if savedata["story"] ~= 3 then
  savedata["story"] = savedata["story"] + 1
  end

  gameoverevent = lightgameoverevent.lightgameover()
  gameoverevent:go(0,0,0.70)
  
  
  
  gamemusic:startstop(false)


  
end













function checkforunlock(score)
  local l = {}
  -- gameoverstorage["caty"] is inverted, *-1 fixes it.
  if gameoverstorage["caty"]*-1 >= 10000 and savedata["unlockedcats"][3] == nil then
    table.insert(l, 3)
    savedata["unlockedcats"][3] = 1
  end

  if gameoverstorage["caty"]*-1 >= 3000 and savedata["unlockedcats"][2] == nil then
    table.insert(l, 2)
    savedata["unlockedcats"][2] = 1
  end

  if mainmap.highest <= -3000 and mainmap.eaten[1] == 0 and savedata["unlockedcats"][6] == nil then
    table.insert(l, 6)
    savedata["unlockedcats"][6] = 1
  end

  if (gameoverstorage["catx"] < 0 or gameoverstorage["catx"] > halfw *2) and savedata["unlockedcats"][5] == nil then
    table.insert(l, 5)
    savedata["unlockedcats"][5] = 1
  end

  if mainmap.highest <= -3000 and mainmap.eaten[1] == mainmap.eaten[2] and savedata["unlockedcats"][4] == nil then
    table.insert(l, 4)
    savedata["unlockedcats"][4] = 1
  end

  if savedata["food"] >= 100 and savedata["unlockedcats"][7] == nil then
    table.insert(l, 7)
    savedata["unlockedcats"][7] = 1
  end

  if savedata["story"] == 3 and lightgameoverdone == true and savedata["unlockedcats"][8] == nil then
    table.insert(l, 8)
    savedata["unlockedcats"][8] = 1
  end

  if savedata["height"] >= 100000 and savedata["unlockedcats"][9] == nil then
    table.insert(l, 9)
    savedata["unlockedcats"][9] = 1
  end
  -- Send the table to unlockcat
  if l[1] ~= nil then
    print("Trying to unlock")
    unlockcat(l)
    lightgameoverdone = nil
  elseif gamestate >= 20 then
    gamecleanup()
    preload()
  end

end
















function increasescore(num)
  curscore = curscore + num
end

function gamecleanup()
  print("Cleaning Game")
  
  -- If "won the game" then play victory music. Load bg video here?
  if savedata["story"] == 3 then

  if gameoverevent ~= nil then
  gamemusic.song = love.audio.newSource("assets/audio/bgm.ogg","stream")
  gamemusic:startstop(true)
  dobgvideo = true
  end

  end

  curscore = 0
  inflated = 0
  gamestate = 0
  world:destroy()
  world = nil
  collisionmanage = nil
  maincat = nil
  gameovermenu = nil
  unlockmenu = nil
  unlockmenuactive = false
  gameovermenuactive = false
  gameactive = false
  gameover = false
  lightgameoveractive = nil
  lightgameoverdone = nil
 

  
  gameoverevent = nil

  debugtext = ""
  debugtext2 = ""
end

function inflatecat(id)
  if inflated < id then
    print("Inflating with:"..id)
  if id == 1 then
    --maincat:inflate(5/r)
    maincat:inflate(0.5)
  elseif id == 2 then
    --maincat:inflate(7.5/r)
    maincat:inflate(1)
  elseif id == 3 then
    --maincat:inflate(10/r)
    maincat:inflate(1.5)
  end
  inflated = id
  local x, y = gamecats[1].catslist[1].p.body:getLinearVelocity()
  gamecats[1].catslist[1].p.body:setLinearVelocity(x,-62.5+(-3*inflated))
end

end







-- Gameover
function drawgameover(score)
    gamestate = 6
    if gameovermenu == nil then
    gameovermenu = menu.new()
    gameovermenu:setscreen(halfh*2,halfw*2)
    
   -- gameoverstorage
    gameovermenu:isskewed()
    gameovermenu:setoffs(gameoverstorage["x"],gameoverstorage["y"])


    gameover = true
    gameovermenu:addItem{
      {
          name = 'You Suck!',
          action = function()
        
        -- revert graphics
        
          end
        }
      }
      gameovermenu:addItem{
        {
        name = 'Score: '..score,
        action = function()
      
      -- revert graphics
      
        end
      }
    }
    gameovermenu:addItem{
      {
      name = 'Height: '..(height*-1),
      action = function()
    
    -- revert graphics
    
      end
    }
  }
      gameovermenu:addItem{
        {
          name = 'Retry',
          action = function()
        
        gamecleanup()
        loadgame()
          end
        }
      }
      gameovermenu:addItem{
        {
          name = 'Quit',
          action = function()
        gamecleanup()
        preload()
          end
        }
    }
    gameovermenu.active = true
    gameovermenu:load()
    
  elseif score ~= nil and height ~= nil then
    gameovermenu:updatename(2, 'Score: '..score)
    gameovermenu:updatename(3, 'Height: '..(height*-1))
  end

end









-- Options
function loadoptions()
  gamestate = 1
  optionmenu = menu.new()
  optionmenu:setscreen(halfh*2,halfw*2)
  optionmenu:addItem{
    {
		name = 'Cats',
    action = function()
      makecatsmenu()
      -- revert graphics
      
    end
  }
	}
	optionmenu:addItem{
    {
		name = 'Credits',
    action = function()
      makecreditsmenu()
      
    end
  }
  }
  optionmenu:addItem{
    {
		name = 'Music',
		action = function()
      makemusicmenu()
      
    end
  }
	}
	optionmenu:addItem{
    {
		name = 'Back',
		action = function()
      makemainmenu()
    end
  }
  }
  
  optionmenu:load()
end









-- Music Menu
function makemusicmenu()
  gamestate = 2
  if musicmenu == nil then
  musicmenu = menu.new()
  musicmenu:setscreen(halfh*2,halfw*2)
  local r = "Defualt"
  local l = 1
  local m = "On"

  
    m = savedata["musicswitch"]
    l = savedata["musicvolume"]/10
  

  
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
  
  musicmenu:addItem{
    {
  name = 'Music Preference: '..r,
  action = function()
    
      if savedata["musicpreference"] > 4 then
        
        savedata["musicpreference"] = 1
      else
      savedata["musicpreference"] = savedata["musicpreference"] + 1
      
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
}
  musicmenu:addItem{
    {
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
}
musicmenu:addItem{
  {
  name = 'Music: '..m,
  action = function()
    
      if savedata["musicswitch"] == "On" then
        savedata["musicswitch"] = "Off"
        gamemusic:startstop(false)
      else
        savedata["musicswitch"] = "On"
        gamemusic:startstop(true)
        
      end
      musicmenu:updatename(3,"Music: "..savedata["musicswitch"])
      gamemusic:updatelist(savedata["musicpreference"])
      
    
  end
}
}
  musicmenu:addItem{
    {
  name = 'Back',
  action = function()
          
    gamestate = 1
          
  end
}
  }

musicmenu:load()

else
  musicmenu.active = true
  
end
musicmenuactive = true
end










-- Credits
function makecreditsmenu()
  gamestate = 3
  if creditsmenu == nil then

    creditsmenu = menu.new()
    creditsmenu:setscreen(halfh*2,halfw*2)
    creditsmenu:addItem{
      {
          name = 'Credits',
          action = function()
        
        -- revert graphics
        
          end
        }
      }
      creditsmenu:addItem{
        {
        name = 'Elevator Sound Effect by Kevin Macleod',
        action = function()
      
      -- revert graphics
      
        end
      }
    }
      creditsmenu:addItem{
        {
        fontsize = 18,
        name = 'Local Forecast - Slower Kevin MacLeod',
        action = function()
      
      -- revert graphics
      
        end
      }
    }
      creditsmenu:addItem{
        {
        fontsize = 18,
        name = 'Licensed under Creative Commons: By Attribution 3.0 License',
        action = function()
      
      -- revert graphics
      
        end
      }
    }
      creditsmenu:addItem{
        {
        fontsize = 18,
        name = 'http://creativecommons.org/licenses/by/3.0/',
        action = function()
      
      -- revert graphics
      
        end
      }
    }
      creditsmenu:addItem{
        {
        name = 'Music by Eric Matyas',
        action = function()
      
      -- revert graphics
      
        end
      }
    }
    creditsmenu:addItem{
      {
          name = 'www.   soundimage   .org',
          action = function()
 
          end
        }
      }
      creditsmenu:addItem{
        {
          video = love.graphics.newVideo(love.video.newVideoStream("assets/Blusie.ogv")),
          name = 'Back',
          action = function()
            gamestate = 1

      
          end
        }
    }
    creditsmenu.active = true
    creditsmenu:load()



  else
    creditsmenu.active = true
  end

  creditsmenuactive = true

end







function makecatsmenu()
  gamestate = 4
  if catsmenu == nil then
    --catsimage = catsmenumanager.new(halfh,halfw)
    --catsimage:print()

    catsmenu = menu.new()

    catsmenu:setscreen(halfh*2,halfw*2)
    catsmenu:setcolums(3)
    catsmenu.autofitmulti = false

    catsmenu:setscreenscale(scalex,scaley,scalefactor)
    catsmenu.selected = math.ceil(savedata["cat"]/3)
    catsmenu.selected2 = savedata["cat"] - ((catsmenu.selected-1)*3)

    catsmenu:addItem{
      {
          othernames = {
          'Blusie',
          "Purrey", --SweetSugar
          "Nebula"
         
          },
          video = catsvideolist[1],
          id = 1,
          fontsize = 20,
          
          action = function()
            if savedata["unlockedcats"][1] then
            savedata["cat"] = 1
            gamemusic:quesfx("relaxed",2)
            makedescriptionmenu(savedata["cat"])
          else
            makedescriptionmenu(nil)
            end
        -- revert graphics
        
        
          end
      },
      {
        video = catsvideolist[2],
        id = 2,
        action = function()
          if savedata["unlockedcats"][2] then
          savedata["cat"] = 2
          makedescriptionmenu(savedata["cat"])
          gamemusic:quesfx("cute",2)
        else
          makedescriptionmenu(nil)
          end
          -- revert graphics
          
          
            end
      },
      {
        video = catsvideolist[3],
        id = 3,
      action = function()
        if savedata["unlockedcats"][3] then
        savedata["cat"] = 3
        gamemusic:quesfx("relaxed",2)
        makedescriptionmenu(savedata["cat"])
      else
        makedescriptionmenu(nil)
      end
        -- revert graphics

        
          end
      }
    }
    catsmenu:addItem{
      {
          othernames = {
          'SweetPea',
          "PumkinSpice",
          "Sweetsy"
    
        },
        video = catsvideolist[4],
        id = 1,
        fontsize = 20,
        action = function()
          if savedata["unlockedcats"][4] then
          savedata["cat"] = 4
          gamemusic:quesfx("cute",2)
          makedescriptionmenu(savedata["cat"])
        else
          makedescriptionmenu(nil)
          end
      -- revert graphics
      
        end
      },
      {
        video = catsvideolist[5],
        id = 2,
        action = function()
          if savedata["unlockedcats"][5] then
          savedata["cat"] = 5
          gamemusic:quesfx("high",2)
          makedescriptionmenu(savedata["cat"])
        else
          makedescriptionmenu(nil)
          end
        -- revert graphics
          
        end
      },
      {
        video = catsvideolist[6],
        id = 3,
        action = function()
          if savedata["unlockedcats"][6] then
          savedata["cat"] = 6
          gamemusic:quesfx("relaxed",2)
          makedescriptionmenu(savedata["cat"])
        else
          makedescriptionmenu(nil)
          end
      -- revert graphics
      
        end
      }
    }
    
    catsmenu:addItem{
      {
          othernames = {
            'GoldenCakes',
            "ButterBall",
            "Starlight"
          },
          video = catsvideolist[7],
          id = 1,
          fontsize = 20,
          action = function()
            if savedata["unlockedcats"][7] then
            savedata["cat"] = 7
            gamemusic:quesfx("relaxed",2)
            makedescriptionmenu(savedata["cat"])
          else
            makedescriptionmenu(nil)
            end
            
 
          end
        },
            {
              video = catsvideolist[8],
              id = 2,
              action = function()
              if savedata["unlockedcats"][8] then
              -- revert graphics
              savedata["cat"] = 8
              gamemusic:quesfx("butterball",2)
              makedescriptionmenu(savedata["cat"])
              else
              makedescriptionmenu(nil)
              end
              end
            },
            {
              video = catsvideolist[9],
              id = 3,
              action = function()
              if savedata["unlockedcats"][9] then
              savedata["cat"] = 9
              gamemusic:quesfx("high",2)
              makedescriptionmenu(savedata["cat"])
            else
              makedescriptionmenu(nil)
              end
            -- revert graphics
            
              end
            }
          }

    catsmenu:addItem{
      {
          
          action = function()
            

      
          end
        },
          {
            othernames = {
              '',
            'Back',
              '',
            },
            action = function()
          
              gamestate = 1
              
            end
          },
          {
    
            action = function()
          
          -- revert graphics
          
            end
          }
        }

    for i,k in ipairs(catsmenu.items) do
      for j,l in ipairs(catsmenu.items[i]) do
      if catsmenu.items[i][j].id then
      if savedata["unlockedcats"][((i-1)*3)+j] == 1 then
        catsmenu.items[i][j]["videoenabled"] = true
      end
    end
      end


    end

    catsmenu.active = true
    catsmenu:load()



  else
    catsmenu.active = true
  end

 
  
  makedescriptionmenu(savedata["cat"])
  

end


function makedescriptionmenu(data)

  if descriptionmenu == nil then
    descriptionmenu = menu.new()
    descriptionmenu:setscreen(halfh*2,halfw*2)

    descriptionmenu:addItem{{
          name = catdesc[savedata["cat"]],
          action = function()
            
  
      
          end
        }}
        descriptionmenu:load()
      else
        descriptionmenu.active = true
        if data == nil then
          descriptionmenu:updatename(1,"")
        else
        descriptionmenu:updatename(1,catdesc[data])
        end

      end
end














function makeunlockmenu(id)
  gamestate = 20
  
    
    print("Making Unlock Menu")
  unlockmenu = menu.new()
  
  unlockmenu:isskewed()
  unlockmenu:setoffs(gameoverstorage["x"],gameoverstorage["y"])
  
  unlockmenu:setscreen(halfh*2,halfw*2)
  unlockmenu:setscreenscale(scalex,scaley,scalefactor)
  
  local l = 'You Unlocked: '
  local indindentions = 1
  for i,k in ipairs(id) do
    local r = id[i]

    if i < #id then
    l = l..catnames[r]..", "
    else
    l = l..catnames[r]
    end

    while string.len(l) >= 30 * indindentions do
      l = l.."\n"
      indindentions = indindentions + 1
    end

    if i == #id then
    l = l.."!"
    end

  end

  unlockmenu:addItem{
    {
        videoslist = {},
        name = l,
        action = function()
          

    
        end
      }
    }

  unlockmenu:addItem{
    {
            videoslist = {},
            name = 'Ok',
            action = function()
              if gameover == true then
              drawgameover()
              print("Back to Gameover")
              else
              print("Trying to go to main menu")
              makemainmenu()
              gamecleanup()
              end
              
  
            end
          }
        }


        for i,k in ipairs(id) do
        local r = id[i]
          
        table.insert(unlockmenu.items[1][1]["videoslist"], catsvideolist[r])
        unlockmenu.items[1][1]["videoenabled"] = true
        unlockmenu.items[1][1]["offsety"] = indindentions
        end
        

      unlockmenu:load()
      
    

end