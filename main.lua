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
loadstorage = { maps = {}, light = {}}


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

local disabledraw = nil

local catnames = {"Blusie","Purrey","Nebula","Sweetpea","PumpkinSpice","Sweetsy","GoldenCakes","ButterBall","Starlight"}
local catdesc = {"Blusie, The newcomer!","Purrey, Sweet, Small, and Cute!","Nebula, A beutiful, magnificant cat.","Sweatpea, A loveable foodie.",
"PumpkinSpice, A shy kitty that just wants to be loved.","Sweetsy, Has too much love to share!","GoldenCakes, A snooty cat that likes to show off.",
"ButterBall, Loyal and Sweet; the first.","Starlight, A regal and relaxed kitty."}

local catsvideolist = {love.graphics.newVideo(love.video.newVideoStream("assets/Blusie.ogv")),love.graphics.newVideo(love.video.newVideoStream("assets/Purrey.ogv")),
love.graphics.newVideo(love.video.newVideoStream("assets/Nebula.ogv")),love.graphics.newVideo(love.video.newVideoStream("assets/Sweetpea.ogv")),
love.graphics.newVideo(love.video.newVideoStream("assets/Pumpkinspice.ogv")),love.graphics.newVideo(love.video.newVideoStream("assets/Sweetsy.ogv")),
love.graphics.newVideo(love.video.newVideoStream("assets/Goldencakes.ogv")),love.graphics.newVideo(love.video.newVideoStream("assets/Butterball.ogv")),
love.graphics.newVideo(love.video.newVideoStream("assets/Starlight.ogv")),}

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
  
    if gameactive == true then
    --[[
    if maincat.catslist[1] ~= nil and gameover == false then
    
    if (x > gamecats[1].catslist[1].p.body:getX()) then
      nomouse = false
      gamecats[1].catslist[1].p.body:applyLinearImpulse(5,0)
      gamecats[1].catslist[1].p.body:applyAngularImpulse(2)
      holding = 1
    else
      nomouse = false
      gamecats[1].catslist[1].p.body:applyLinearImpulse(-5,0)
      gamecats[1].catslist[1].p.body:applyTorque(-2)
      holding = 2
    end
  end
  ]]--
  debugtext2 = " "..x.."/"..y


  if gameover == true and gameovermenuactive == true then
    gameovermenu:mousepressed(x,y)
  end
  if gameover == true and unlockmenuactive == true then
    unlockmenu:mousepressed(x,y)
  end 

  elseif optionsactive == true then
    optionmenu:mousepressed(x,y)
  elseif musicmenuactive == true then
    musicmenu:mousepressed(x,y)
  elseif creditsmenuactive == true then
    creditsmenu:mousepressed(x,y)
  elseif catsmenuactive == true then
    catsmenu:mousepressed(x,y)
  elseif mainmenuactive == true then
    mainmenu:mousepressed(x,y)
  end
  
  function love.mousereleased(x, y, button, touch)
    
    holding = 0
    nomouse = true
    
  end
end











function love.keypressed(key)

  if gameactive == true then
    if gameover == true and gameovermenuactive == true then
      gameovermenu:keypressed(key)
    end
    if gameover == true and unlockmenuactive == true then
      print("Unlock: Key pressed")
      unlockmenu:keypressed(key)
    end

  elseif optionsactive == true then
      optionmenu:keypressed(key)

  elseif musicmenuactive == true then
    musicmenu:keypressed(key)

  elseif creditsmenuactive == true then
    creditsmenu:keypressed(key)

  elseif catsmenuactive == true then
    catsmenu:keypressed(key)

  elseif mainmenuactive == true then
    
  mainmenu:keypressed(key)
  end
end










-- Draw
function love.draw()


  -- totoal screen width ((scalex/scalefactor)*540)
  -- 
  
  
  love.graphics.scale(scalefactor,scalefactor)
  love.graphics.translate( ((540/2)*((scalex/scalefactor)-1)),0 ) --((scalex/scalefactor)*540)-540 love.graphics.getWidth( )
  
  
  if gameactive == true then
  --[[Centered Image]]--
  
  --[[image path, (from where in file x,y) , rotation in radiens, scale x, scale y, draw offset x, draw offset Y]]--
  
  
  --[[love.graphics.setColor(0,0,0,255)]]--
  if gameover == false then
    followcat(maincat,1,halfw,halfh)
  else
    --setcampos(gameoverstorage["catx"]-halfw,gameoverstorage["caty"]-halfh)
    setcampos(0,gameoverstorage["caty"]-(halfh*savedata["cameraoffsetmultiplier"]))
  end

  love.graphics.print(debugtext,0,0)
  love.graphics.print(debugtext2,0,50)
--[[
  if gameovermultiplier ~= nil then
    love.graphics.setColor(0+gameovermultiplier,0+gameovermultiplier,0+gameovermultiplier,255)
  else
    love.graphics.setColor(0,0,0,255)
  end]]--
  if gameoverevent ~= nil then
    
    if gamecats[1].catslist[1] ~= nil then

      if disabledraw == nil then
        disabledraw = false
      end
      if gameoverevent:checkplay() == false then
        disabledraw = true
      end
  end
end

  if lightgameoveractive ~= false and disabledraw ~= true then
  if gameover == false then
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


 
    if disabledraw == true then
      
      softgameover(maincat, world, 1, gamemusic, gameoverstorage)

  -- Update total height
  if math.floor(gameoverstorage["caty"]*-1) >= 0 then
    savedata["height"] = savedata["height"] + math.floor(gameoverstorage["caty"]*-1)
  end
  gameover = true
  lightgameoveractive = false
  inflated = 0
  checkforunlock(curscore)
elseif disabledraw == false then
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
  
 
  if gameover == true and gameovermenuactive == true then
  local t, y = getposcam()
  gameovermenu:draw(((halfw/scalex)+t-menuw/2),halfh+y-(#gameovermenu.items*menuh/2),menuw,menuh,22)
  end
  if gameover == true and unlockmenuactive == true then
  local i, o = getposcam()--gameoverstorage["x"]
  unlockmenu:draw((halfw/scalex)+i-100/2,halfh+o-(#unlockmenu.items*100/2),100,100,22)
  end



  elseif optionsactive == true then
    optionmenu:draw((halfw/scalex)-menuw/2,halfh-(#optionmenu.items*menuh/2),menuw,menuh,22)


  elseif musicmenuactive == true then
    musicmenu:draw((halfw/scalex)-menuw/2,halfh-(#musicmenu.items*menuh/2),menuw,menuh,22)

  elseif creditsmenuactive == true then
    creditsmenu:draw((halfw/scalex)-menuw/2,halfh-(#creditsmenu.items*menuh/2),menuw,menuh,22)

  elseif catsmenuactive == true then
    catsmenu:draw(((halfw)-100/2)-(halfw/scalex),halfh-(#catsmenu.items*100/2),100,100,22)
    descriptionmenu:draw((halfw/scalex)-100/2,halfh-50-(#catsmenu.items*100/2),100,100,17)
  else
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

  if gameactive == true and gameover == false then
  maincat:update()
  end

  gamemusic:update()

  if love.mouse.isDown(1) then
  movecat(0)
  end

  if love.keyboard.isDown("left") or love.keyboard.isDown("right") then
    movecat(1)
  end

  if gameoverevent ~= nil then
    
    --gameovermultiplier = gameoverevent:update()
    gameoverevent:update()
  end

  accum = accum - step

  end
  
  
  gamemusic:update()

  if love.mouse.isDown(1) then
    movecat(0)
  end
  if love.keyboard.isDown("left") or love.keyboard.isDown("right") then
      movecat(1)
  end


  if gameoverevent ~= nil then
    --gameovermultiplier = gameoverevent:update()
    gameoverevent:update(loops)
    --print(gameovermultiplier)
  end

  
  if gameactive == true then
      if randomseed == 0 then
      randomseed = elapsed
      --mainmap:setseed(randomseed)
      end

    if gameover == false then
      maincat:update()
      height = math.floor(maincat:gety())
      -- process player input here
      -- update the game logic/simulation
    if love.keyboard.isDown("right") then
      holding = 1
    elseif love.keyboard.isDown("left") then
      holding = 2
    elseif nomouse == true then
      holding = 0
    end
    end
    
  

  if catmode ~= 0 then
  elseif catmode == 1 then
    maincat:eat()
    catmode = 0
  elseif catmode == 2 then
    maincat:anim()
    catmode = 0
  end
  
  world:update(dt)
  

  --mainmap update
  if gameover == false and gameactive == true and unlockmenuactive == false then
  mainmap:update(maincat:gety())
  end
  
  
  
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


     if gameover == true and gameovermenuactive == true then
      gameovermenu:update(dt)
     end
     if gameover == true and unlockmenuactive == true then
      unlockmenu:update(dt)
     end
  
  
  --game.maincat:release() does not have object references set up, only global. maincat.p.prop:destroy() works.
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
  --[[ keep at or under 2048 X 2048]]--

end







function movecat(mode)
  if gameactive == true then
    if gameover == false then
      
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
end







function loadgame()
  gameactive = true
  unlockdata = {}
  curscore = 0
  world = nil
  collisionmanage = nil
  gameover = false                                                                    -- LoadGame
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
    
        gamemusic:updatevolume(savedata["musicvolume"]/10)
        gamemusic:playlist(savedata["musicpreference"],1)
      
      
    end

    if savedata["musicswitch"] == "On" then
    makemusic()
    end
   -- table.save(savedata,"save.lua")


 
  
  -- mainmap = map.new(0,425,1,world,0.2,2)
  
  mainmap = mapmanager.new()
  mainmap:setscale(scalex,scaley,scalefactor)

  if gamemode == 1 then
  mainmap.mode[1] = "c" -- Limit the generation to a max of around -3000.
  if savedata["story"] == 0 then
  mainmap.maxheihgt = -3000
  elseif savedata["story"] == 1 then
  mainmap.maxheihgt = -500.0
  elseif savedata["story"] == 2 then
  mainmap.maxheihgt = -750.0
  elseif savedata["story"] == 3 then
  mainmap.maxheihgt = -1000.0
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
  gamecats[1].catslist[1].p.body:applyLinearImpulse(0,-150)
  
  
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


    if true then
      --love.window.setMode(540, 960, { fullscreen=false,vsync=true, minwidth=400, minheight=300}) --,centered=true
      love.window.setMode(halfw*2,halfh*2,{centered=true,minwidth=30, minheight=40})
      end


   --love.graphics.printf("Loading",200,500,50,"left")
   loadstorage["maps"][1] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][2] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][3] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][4] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][5] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][6] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][7] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][8] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][9] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][10] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][12] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][13] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][14] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][15] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][16] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][17] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][18] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][19] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][20] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][21] = love.graphics.newImage("assets/SpriteSheetButterBall.png")
   loadstorage["maps"][22] = love.graphics.newImage("assets/SpriteSheetButterBall.png")

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

  if mainmenu == nil then
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
      optionsactive = true
      mainmenu.active = false
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
  mainmenu.active = true
  mainmenuactive = true
  end


end







function beginContact(a, b, coll)
  
  if gameover == false then
  if begincollision(a,b,coll) == "food" then
  catmode = 1
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

  if gameoverstorage["catx"] < 0 or gameoverstorage["catx"] > halfw *2 and savedata["unlockedcats"][5] == nil then
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

  if savedata["story"] == 3 and gameoverstorage["caty"] <= -10000 and savedata["unlockedcats"][8] == nil then
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
    gameover = true
    disabledraw = nil
  elseif lightgameoveractive == false then
    gamecleanup()
    preload()
  end

end
















function increasescore(num)
  curscore = curscore + num
end

function gamecleanup()
  print("Cleaning Game")
  curscore = 0
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
  disabledraw = nil

  
  gameoverevent = nil

  debugtext = ""
  debugtext2 = ""
end

function inflatecat(id)
  if inflated < id then
    local r = 2
  if id == 1 then
    maincat:inflate(5/r)
  elseif id == 2 then
    maincat:inflate(7.5/r)
  elseif id == 3 then
    maincat:inflate(10/r)
  end
  inflated = id
  gamecats[1].catslist[1].p.body:applyLinearImpulse(0,-25)
end

end







-- Gameover
function drawgameover(score)
  
    if gameovermenu == nil then
    gameovermenu = menu.new()
    gameovermenu:setscreen(halfh*2,halfw*2)
    
    debugtext = gameovermenu.xoff.."/"..gameovermenu.yoff
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
        
        gameover = false
        gameovermenu.active = false
        gamecleanup()
        loadgame()
          end
        }
      }
      gameovermenu:addItem{
        {
          name = 'Quit',
          action = function()
            gameactive = false
        gameover = false
        gameovermenu.active = false
        gamecleanup()
        preload()
          end
        }
    }
    gameovermenu.active = true
    gameovermenu:load()
    
  else
    gameovermenu:updatename(2, 'Score: '..score)
    gameovermenu:updatename(3, 'Height: '..(height*-1))

    gameovermenu.active = true
    gameover = true
  end

end









-- Options
function loadoptions()
  optionmenu = menu.new()
  optionmenu:setscreen(halfh*2,halfw*2)
  optionmenu:addItem{
    {
		name = 'Cats',
    action = function()
      makecatsmenu()
      optionsactive = false
      optionmenu.active = false
      -- revert graphics
      
    end
  }
	}
	optionmenu:addItem{
    {
		name = 'Credits',
    action = function()
      makecreditsmenu()
      optionsactive = false
      optionmenu.active = false
      
    end
  }
  }
  optionmenu:addItem{
    {
		name = 'Music',
		action = function()
      makemusicmenu()
      optionsactive = false
      optionmenu.active = false
      musicmenuactive = true
      
    end
  }
	}
	optionmenu:addItem{
    {
		name = 'Back',
		action = function()
      optionmenu.active = false
      optionsactive = false
      mainmenu.active = true
      musicmenuactive = false
    end
  }
  }
  
  optionmenu:load()
end









-- Music Menu
function makemusicmenu()
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
          
          musicmenu.active = false
          optionmenu.active = true
          optionsactive = true
          musicmenuactive = false
          creditsmenuactive = false
          
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
            creditsmenu.active = false
            creditsmenuactive = false
            optionmenu.active = true
            optionsactive = true
            musicmenuactive = false

      
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

  if catsmenu == nil then
    --catsimage = catsmenumanager.new(halfh,halfw)
    --catsimage:print()

    catsmenu = menu.new()

    catsmenu:setscreen(halfh*2,halfw*2)
    catsmenu:setcolums(3)

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
          
              creditsmenuactive = false
              optionmenu.active = true
              optionsactive = true
              musicmenuactive = false
              catsmenu.active = false
              catsmenuactive = false
              descriptionmenu.active = false
              
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

  catsmenuactive = true
  
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
  if gameovermenu ~= nil then
  gameovermenu.active = false
  gameovermenuactive = false
  end


     

  if unlockmenu == nil then
    
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

    if string.len(l) >= 30 * indindentions then
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
              unlockmenu.active = false
              unlockmenuactive = false
              if gameovermenu ~= nil then
              gameovermenuactive = true
              gameovermenu.active = true
              else
              gameactive = false
              gameover = true
              gamecleanup()
              preload()
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
      else
      unlockmenu.active = true
      print("EnablingUnlockMenu...")
      end
    unlockmenuactive = true
    gameovermenuactive = false

end