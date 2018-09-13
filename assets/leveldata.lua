function getspikeydata(id)
  if id == 1 then
    return {
    
    }
  elseif id == 2 then
    return {
      {x = -450,
      y = 350},
      {x = 450,
      y = 350}
    }

  elseif id == 3 then
    return {
      
    }
    
  elseif id == 4 then
    return {
      {x = 300,
      y = 900}
      
    }
    
  elseif id == 5 then
    return {
      {x = 0,
      y = 850}
    }
    
  elseif id == 6 then
    return {
     
      
    }
    
  elseif id == 7 then
    return {
   
    }
  
  elseif id == 8 then
    return {
     
    }
    
  elseif id == 9 then
    return {
      
    }
    
  elseif id == 10 then
    return {
      
    }
    
  elseif id == 11 then
    return {
      {x = -550,
      y = 1300},
      {x = -100,
      y = 1600}
    }
    
  elseif id == 12 then
    return {
      
    }
    
  elseif id == 13 then
    return {
     
    }
    
  elseif id == 14 then
    return {
      {x = 600,
      y = 850}
      
    }
    
  elseif id == 15 then
    return {
      
    }
    
  elseif id == 16 then
    return {
      
    }
    
  elseif id == 17 then
    return {
      
    }
    
  elseif id == 18 then
    return {
     
    }
    
  elseif id == 19 then
    return {
    
    }
    
  elseif id == 20 then
    return {
      {x = 500,
      y = 1100},
    }
    
  elseif id == 21 then
    return {
     {x = 450,
     y = 3050},
     {x = -750,
     y = 3250},
     {x = -450,
     y = 3950}
    }
    
  elseif id == 22 then
  return {
    
    
  }

  elseif id == 23 then
    return {
    
    }
    
    
  elseif id == 24 then
    return {
    {x = 550,
    y = 1450}
    }
    
    
  elseif id == 25 then
    return {
    
    }
    
    
  elseif id == 26 then
    return {
      {x = -250,
      y = 1900}
    }

  elseif id == 27 then
    return {
    
    }
    
  
  end
end













function getspecailblocks(id)
  if id == 19 then
    return {

      {type = "Music Start",
      shape = "rectangle",
      x = -900,
      y = 3800,
      polygon = {
        { x = 0, y = 0 },
        { x = 300, y = 0 },
        { x = 300, y = 50 },
        { x = 0, y = 50},
      },
      width = 300,
      height = 50},

      {type = "Music End",
      shape = "rectangle",
      x = -900,
      y = 400,
      polygon = {
        { x = 0, y = 0 },
        { x = 300, y = 0 },
        { x = 300, y = 50 },
        { x = 0, y = 50},
      },
      width = 300,
      height = 50}

    }
  end
  return false
end










function getmapimage(id)
  if id == 1 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 2 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 3 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 4 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 5 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 6 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 7 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 8 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 9 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 10 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 11 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 12 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 13 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 14 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 15 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 16 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 17 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 18 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 19 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 20 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 21 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  elseif id == 22 then
    return love.graphics.newImage("assets/SpriteSheetButterBall.png")
  end
end














function getfooddata(id)
  if id == 1 then
    return {
      {x = -750,
      y = 350},
      {x = 200,
      y = 750},
      {x = -100,
      y = 1900},
      {x = 350,
      y = 2550}
    }
  elseif id == 2 then
    return {
    {x = -450,
    y = 900},
    {x = 250,
      y = 900}
    }
       -- no valid spots
  elseif id == 3 then
    return {
      {x = 700,
      y = 800},
      {x = -400,
      y = 900},
      {x = 400,
      y = 900},
      {x = -700,
      y = 800}
    }
       -- no valid spots
  elseif id == 4 then
    return{
      {x = -550,
      y = 1250}
       
    }
  elseif id == 5 then
    return{
      {x = -650,
      y = 850},
      {x = 650,
      y = 850}
      
    }
  elseif id == 6 then
    return{
      {x = -600,
      y = 850},
      {x = 600,
      y = 850}
      
    }
  elseif id == 7 then
    return{
      {x = 0,
      y = 850},
      {x = 600,
      y = 850},
      {x = -600,
      y = 850}

    }
  elseif id == 8 then
    return{
      {x = 650,
      y = 450},
      {x = 1150,
      y = 400},
      {x = 550,
      y = 1950}
      
    }
    
  elseif id == 9 then
    return{
      {x = 450,
      y = 500},
      {x = 450,
      y = 900},
      {x = -500,
      y = 700}
      
       
    }
  elseif id == 10 then
    return{
      {x = -700,
      y = 850},
      {x = -150,
      y = 300}
     
      
    }
  elseif id == 11 then
    return{
      {x = 600,
      y = 250},
      {x = -300,
      y = 900},
      {x = 800,
      y = 1450}
      
    }
  elseif id == 12 then
    return{
      {x = 700,
      y = 650}
      
      
    }
  elseif id == 13 then
    return {
      {x = 250,
      y = 850},
      {x = 400,
      y = 250},
      
      
      
    }

  elseif id == 14 then
    return{
      {x = 150,
      y = 850},
      {x = -300,
      y = 850},
      {x = -750,
      y = 850}
    
    }
  elseif id == 15 then
    return{
      {x = 200,
      y = 950},
     
    }
  elseif id == 16 then
    return{
      {x = -200,
      y = 900},
      {x = 350,
      y = 400}
    }
  elseif id == 17 then
    return{
      {x = 0,
      y = 350},
      {x = 400,
      y = 350}
    }
  elseif id == 18 then
    return{
      {x = 150,
      y = 550}
    }
  elseif id == 19 then
    return{
      {x = 100,
      y = 650},
      {x = 750,
      y = 800},
      {x = 100,
      y = 1750},
      {x = 750,
      y = 1500},
      {x = -350,
      y = 2050},
      {x = 600,
      y = 3700}
      
    }
  elseif id == 20 then
    return{
      {x = -500,
      y = 600},
      {x = -500,
      y = 1100},
     
    }
  elseif id == 21 then
    return {
      {x = -100,
      y = 3000},
      {x = -350,
      y = 1950},
      { x = -350,
      y = 1300}
    }
      
  elseif id == 22 then
    return{
    {x = 750,
    y = 650}
    
    
    }
  elseif id == 23 then
    return{
    {x = 700,
    y = 500},
    {x = 650,
    y = 1500}
    
    
    }
  elseif id == 24 then
    return{
    {x = 150,
    y = 750},
    {x = -200,
    y = 1350},
    {x = 200,
    y = 2300}
    
    
    }
  elseif id == 25 then
    return{
      {x = -200,
      y = 450},
      {x = -650,
      y = 1350},
      {x = 800,
      y = 1750}
    
    
    }
  elseif id == 26 then
    return{
      {x = 0,
      y = 950},
      
    }
  elseif id == 27 then
    return{
     
      
    }
  end
end



function getexitid(id)
  -- enter, exit
  if id == 1 then
    return 1,3
  elseif id == 2 then
    return 2,2
  elseif id == 3 then
    return 2,2
  elseif id == 4 then
    return 2,1
  elseif id == 5 then
    return 2,2
  elseif id == 6 then
    return 2,2
  elseif id == 7 then
    return 2,2
  elseif id == 8 then
    return 3,3
  elseif id == 9 then
    return 1,1
  elseif id == 10 then
    return 1,1
  elseif id == 11 then
    return 3,1
  elseif id == 12 then
    return 2,3
  elseif id == 13 then
    return 2,1
  elseif id == 14 then
    return 1,1
  elseif id == 15 then
    return 3,1
  elseif id == 16 then
    return 3,1
  elseif id == 17 then
    return 3,2
  elseif id == 18 then
    return 3,1
  elseif id == 19 then
    return 2,3
  elseif id == 20 then
    return 2,3
  elseif id == 21 then
    return 2,2
  elseif id == 22 then
    return 3,3
  elseif id == 23 then
    return 1,2
  elseif id == 24 then
    return 1,2
  elseif id == 25 then
    return 1,2
  elseif id == 26 then
    return 2,3
  elseif id == 27 then
    return 1,3
  end
end

function getmapheight(id)

  if id == 1 then
    return 3450
  elseif id == 2 then
    return 2350
  elseif id == 3 then
    return 2350
  elseif id == 4 then
    return 1900
  elseif id == 5 then
    return 1700
  elseif id == 6 then
    return 1700
  elseif id == 7 then
    return 1700
  elseif id == 8 then
    return 2200--900
  elseif id == 9 then
    return 1400
  elseif id == 10 then
    return 1650
  elseif id == 11 then
    return 2350
  elseif id == 12 then
    return 1250
  elseif id == 13 then
    return 1650
  elseif id == 14 then
    return 1700
  elseif id == 15 then
    return 1600
  elseif id == 16 then
    return 2350
  elseif id == 17 then
    return 1450
  elseif id == 18 then
    return 1300
  elseif id == 19 then
    return 4700
  elseif id == 20 then
    return 2850
  elseif id == 21 then
    return 4550
  elseif id == 22 then
    return 1250
  elseif id == 23 then
    return 2500
  elseif id == 24 then
    return 2550
  elseif id == 25 then
    return 2150
  elseif id == 26 then
    return 2450
  elseif id == 27 then
    return 1500
  end
  
end


function getmapdata(id)
    if id == 1 then
return {
  
    type = "objectgroup",
    name = "Object Layer 1",
    
    
    
    
    
    
    objects = {
      {
        id = 891,
       
       
        shape = "polygon",
        x = -850,
        y = 0,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 350 },
          { x = -100, y = 0 }
        },
        properties = {}
      },
      {
        id = 892,
       
       
        shape = "polygon",
        x = -950,
        y = 350,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 893,
       
       
        shape = "polygon",
        x = -850,
        y = 500,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 600, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 894,
       
       
        shape = "polygon",
        x = -350,
        y = 50,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = -50 },
          { x = 150, y = -50 }
        },
        properties = {}
      },
      {
        id = 895,
       
       
        shape = "polygon",
        x = -200,
        y = 0,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 400, y = 100 },
          { x = 400, y = 0 }
        },
        properties = {}
      },
      {
        id = 896,
       
       
        shape = "polygon",
        x = 200,
        y = 100,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 300 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 897,
       
       
        shape = "polygon",
        x = 300,
        y = 400,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 350 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 898,
       
       
        shape = "polygon",
        x = 350,
        y = 750,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 650 },
          { x = 0, y = 650 }
        },
        properties = {}
      },
      {
        id = 899,
       
       
        shape = "polygon",
        x = -350,
        y = 600,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 0 },
          { x = 0, y = 600 }
        },
        properties = {}
      },
      {
        id = 900,
       
       
        shape = "polygon",
        x = -350,
        y = 1200,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 250 },
          { x = -50, y = 200 }
        },
        properties = {}
      },
      {
        id = 901,
       
       
        shape = "polygon",
        x = -350,
        y = 1450,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 500 },
          { x = 0, y = 500 }
        },
        properties = {}
      },
      {
        id = 902,
       
       
        shape = "polygon",
        x = -250,
        y = 1950,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 903,
       
       
        shape = "polygon",
        x = -100,
        y = 2100,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 450, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 904,
       
       
        shape = "polygon",
        x = 250,
        y = 2200,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 0 },
          { x = 0, y = 250 }
        },
        properties = {}
      },
      {
        id = 905,
       
       
        shape = "polygon",
        x = 250,
        y = 2450,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 350 },
          { x = 0, y = 350 }
        },
        properties = {}
      },
      {
        id = 906,
       
       
        shape = "polygon",
        x = 250,
        y = 2800,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 0 },
          { x = 0, y = 300 }
        },
        properties = {}
      },
      {
        id = 907,
       
       
        shape = "polygon",
        x = 250,
        y = 3100,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 350 },
          { x = 0, y = 350 }
        },
        properties = {}
      },
      {
        id = 908,
       
       
        shape = "polygon",
        x = 250,
        y = 1400,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 150 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 909,
       
       
        shape = "polygon",
        x = 300,
        y = 1550,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 400, y = 50 },
          { x = 400, y = 0 }
        },
        properties = {}
      },
      {
        id = 910,
       
       
        shape = "polygon",
        x = 700,
        y = 1600,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 150 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 911,
       
       
        shape = "polygon",
        x = 850,
        y = 1750,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 550 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 912,
       
       
        shape = "polygon",
        x = 950,
        y = 2300,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 400 },
          { x = 0, y = 400 }
        },
        properties = {}
      },
      {
        id = 913,
       
       
        shape = "polygon",
        x = 850,
        y = 2700,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 350 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 914,
       
       
        shape = "polygon",
        x = 950,
        y = 3050,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 400 },
          { x = 0, y = 400 }
        },
        properties = {}
      }

}
}
--[[
n
n
n
n
n
]]--

elseif id == 2 then
  return
  {
  
    
      type = "objectgroup",
      name = "Object Layer 2",
      
      
      
      
      
      
      objects = {
        {
          id = 915,
         
         
          shape = "polygon",
          x = -250,
          y = 0,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -350, y = 200 },
            { x = -350, y = 0 }
          },
          properties = {}
        },
        {
          id = 916,
         
         
          shape = "polygon",
          x = -600,
          y = 200,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -150, y = 250 },
            { x = -150, y = 0 }
          },
          properties = {}
        },
        {
          id = 917,
         
         
          shape = "polygon",
          x = -900,
          y = 450,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 0 },
            { x = 0, y = 550 }
          },
          properties = {}
        },
        {
          id = 918,
         
         
          shape = "polygon",
          x = -900,
          y = 1000,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 350 },
            { x = -50, y = 350 }
          },
          properties = {}
        },
        {
          id = 919,
         
         
          shape = "polygon",
          x = -900,
          y = 1350,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 550 },
            { x = 0, y = 550 }
          },
          properties = {}
        },
        {
          id = 920,
         
         
          shape = "polygon",
          x = -750,
          y = 1900,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 250 },
            { x = 0, y = 250 }
          },
          properties = {}
        },
        {
          id = 921,
         
         
          shape = "polygon",
          x = -600,
          y = 2150,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 350, y = 200 },
            { x = 0, y = 200 }
          },
          properties = {}
        },
        {
          id = 922,
         
         
          shape = "polygon",
          x = -250,
          y = 400,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 100 },
            { x = -150, y = 150 }
          },
          properties = {}
        },
        {
          id = 923,
         
         
          shape = "polygon",
          x = -200,
          y = 850,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 200, y = -100 },
            { x = 400, y = 0 }
          },
          properties = {}
        },
        {
          id = 924,
         
         
          shape = "polygon",
          x = 250,
          y = 400,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 150 },
            { x = -50, y = 100 }
          },
          properties = {}
        },
        {
          id = 925,
         
         
          shape = "polygon",
          x = -400,
          y = 1150,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 150 },
            { x = 0, y = 300 }
          },
          properties = {}
        },
        {
          id = 926,
         
         
          shape = "polygon",
          x = -400,
          y = 1150,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 150 },
            { x = 0, y = 300 }
          },
          properties = {}
        },
        {
          id = 927,
         
         
          shape = "polygon",
          x = 400,
          y = 1150,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -150, y = 150 },
            { x = 0, y = 300 }
          },
          properties = {}
        },
        {
          id = 928,
         
         
          shape = "polygon",
          x = 400,
          y = 1150,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 150 },
            { x = 0, y = 300 }
          },
          properties = {}
        },
        {
          id = 929,
         
         
          shape = "polygon",
          x = -200,
          y = 850,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 200, y = 150 },
            { x = 400, y = 0 }
          },
          properties = {}
        },
        {
          id = 930,
         
         
          shape = "polygon",
          x = 0,
          y = 1600,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 200, y = 200 },
            { x = -200, y = 200 }
          },
          properties = {}
        },
        {
          id = 931,
         
         
          shape = "polygon",
          x = -200,
          y = 1800,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 200, y = 150 },
            { x = 400, y = 0 }
          },
          properties = {}
        },
        {
          id = 932,
         
         
          shape = "polygon",
          x = 250,
          y = 2350,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 350, y = -200 },
            { x = 350, y = 0 }
          },
          properties = {}
        },
        {
          id = 933,
         
         
          shape = "polygon",
          x = 600,
          y = 2150,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 0 },
            { x = 150, y = -250 }
          },
          properties = {}
        },
        {
          id = 934,
         
         
          shape = "polygon",
          x = 750,
          y = 1900,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 0 },
            { x = 150, y = -550 }
          },
          properties = {}
        },
        {
          id = 935,
         
         
          shape = "polygon",
          x = 900,
          y = 1350,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 0 },
            { x = 0, y = -350 }
          },
          properties = {}
        },
        {
          id = 936,
         
         
          shape = "polygon",
          x = 900,
          y = 1000,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -150, y = -550 },
            { x = 0, y = -550 }
          },
          properties = {}
        },
        {
          id = 937,
         
         
          shape = "polygon",
          x = 750,
          y = 450,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -150, y = -250 },
            { x = 0, y = -250 }
          },
          properties = {}
        },
        {
          id = 938,
         
         
          shape = "polygon",
          x = 600,
          y = 200,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -350, y = -200 },
            { x = 0, y = -200 }
          },
          properties = {}
        }
    }
  }
--[[
n
n
n
n
n
]]--
  elseif id == 3 then
   return {
  
    
      type = "objectgroup",
      name = "Object Layer 3",
      
      
      
      
      
      
      objects = {
        {
          id = 939,
         
         
          shape = "polygon",
          x = -250,
          y = 0,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 100 },
            { x = -100, y = 0 }
          },
          properties = {}
        },
        {
          id = 940,
         
         
          shape = "polygon",
          x = -350,
          y = 100,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -300, y = 150 },
            { x = -300, y = 0 }
          },
          properties = {}
        },
        {
          id = 941,
         
         
          shape = "polygon",
          x = -650,
          y = 250,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -200, y = 500 },
            { x = -200, y = 0 }
          },
          properties = {}
        },
        {
          id = 942,
         
         
          shape = "polygon",
          x = -850,
          y = 750,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 600 },
            { x = 0, y = 600 }
          },
          properties = {}
        },
        {
          id = 943,
         
         
          shape = "polygon",
          x = -750,
          y = 1350,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 550 },
            { x = 0, y = 550 }
          },
          properties = {}
        },
        {
          id = 945,
         
         
          shape = "polygon",
          x = -650,
          y = 1900,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 250 },
            { x = 0, y = 250 }
          },
          properties = {}
        },
        {
          id = 946,
         
         
          shape = "polygon",
          x = -500,
          y = 2150,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 250, y = 200 },
            { x = 0, y = 200 }
          },
          properties = {}
        },
        {
          id = 947,
         
         
          shape = "polygon",
          x = 250,
          y = 2350,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 250, y = -200 },
            { x = 250, y = 0 }
          },
          properties = {}
        },
        {
          id = 948,
         
         
          shape = "polygon",
          x = 500,
          y = 2150,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = -250 },
            { x = 150, y = 0 }
          },
          properties = {}
        },
        {
          id = 949,
         
         
          shape = "polygon",
          x = 650,
          y = 1900,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 0 },
            { x = 100, y = -550 }
          },
          properties = {}
        },
        {
          id = 950,
         
         
          shape = "polygon",
          x = 750,
          y = 1350,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = -600 },
            { x = 100, y = 0 }
          },
          properties = {}
        },
        {
          id = 951,
         
         
          shape = "polygon",
          x = 850,
          y = 750,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -200, y = -500 },
            { x = 0, y = -500 }
          },
          properties = {}
        },
        {
          id = 952,
         
         
          shape = "polygon",
          x = 650,
          y = 250,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -300, y = -150 },
            { x = 0, y = -150 }
          },
          properties = {}
        },
        {
          id = 953,
         
         
          shape = "polygon",
          x = 350,
          y = 100,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = -100 },
            { x = 0, y = -100 }
          },
          properties = {}
        },
        {
          id = 954,
         
         
          shape = "polygon",
          x = -200,
          y = 400,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 200, y = -100 },
            { x = 400, y = 0 }
          },
          properties = {}
        },
        {
          id = 955,
         
         
          shape = "polygon",
          x = -200,
          y = 400,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 100 },
            { x = 0, y = 100 }
          },
          properties = {}
        },
        {
          id = 956,
         
         
          shape = "polygon",
          x = -300,
          y = 500,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 250 },
            { x = 50, y = 0 }
          },
          properties = {}
        },
        {
          id = 957,
         
         
          shape = "polygon",
          x = -250,
          y = 750,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 200 },
            { x = 50, y = 0 }
          },
          properties = {}
        },
        {
          id = 958,
         
         
          shape = "polygon",
          x = -250,
          y = 900,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 550 },
            { x = 0, y = 500 }
          },
          properties = {}
        },
        {
          id = 959,
         
         
          shape = "polygon",
          x = -350,
          y = 1450,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 300 },
            { x = 100, y = 0 }
          },
          properties = {}
        },
        {
          id = 960,
         
         
          shape = "polygon",
          x = -250,
          y = 1750,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 150 },
            { x = 100, y = 0 }
          },
          properties = {}
        },
        {
          id = 961,
         
         
          shape = "polygon",
          x = -150,
          y = 1900,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 100 },
            { x = 300, y = 0 }
          },
          properties = {}
        },
        {
          id = 962,
         
         
          shape = "polygon",
          x = 150,
          y = 1750,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 150 },
            { x = 100, y = 0 }
          },
          properties = {}
        },
        {
          id = 963,
         
         
          shape = "polygon",
          x = 250,
          y = 1750,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = -300 },
            { x = 0, y = -300 }
          },
          properties = {}
        },
        {
          id = 964,
         
         
          shape = "polygon",
          x = 350,
          y = 1450,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = -600 },
            { x = -100, y = -50 }
          },
          properties = {}
        },
        {
          id = 965,
         
         
          shape = "polygon",
          x = 200,
          y = 750,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 0 },
            { x = 50, y = 200 }
          },
          properties = {}
        },
        {
          id = 966,
         
         
          shape = "polygon",
          x = 250,
          y = 750,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = -250 },
            { x = 0, y = -250 }
          },
          properties = {}
        },
        {
          id = 967,
         
         
          shape = "polygon",
          x = 200,
          y = 500,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = -100 },
            { x = 100, y = 0 }
          },
          properties = {}
        }
      }
  }
  
--[[
n
n
n
n
n
]]--
elseif id == 4 then
  return {
  
    
      type = "objectgroup",
      name = "Object Layer 4",
      
      
      
      
      
      
      objects = {
        {
          id = 969,
         
         
          shape = "polygon",
          x = 350,
          y = 0,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 400 },
            { x = 0, y = 400 }
          },
          properties = {}
        },
        {
          id = 970,
         
         
          shape = "polygon",
          x = 500,
          y = 400,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -250, y = 100 },
            { x = -250, y = 0 }
          },
          properties = {}
        },
        {
          id = 971,
         
         
          shape = "polygon",
          x = 250,
          y = 500,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -250, y = -100 },
            { x = -500, y = 0 }
          },
          properties = {}
        },
        {
          id = 972,
         
         
          shape = "polygon",
          x = -250,
          y = 500,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -200, y = 0 },
            { x = -200, y = 100 }
          },
          properties = {}
        },
        {
          id = 973,
         
         
          shape = "polygon",
          x = -450,
          y = 600,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -150, y = 0 },
            { x = -150, y = 150 }
          },
          properties = {}
        },
        {
          id = 974,
         
         
          shape = "polygon",
          x = -600,
          y = 750,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 0 },
            { x = -100, y = 200 }
          },
          properties = {}
        },
        {
          id = 975,
         
         
          shape = "polygon",
          x = -700,
          y = 950,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -250, y = 250 },
            { x = 0, y = 500 }
          },
          properties = {}
        },
        {
          id = 976,
         
         
          shape = "polygon",
          x = -700,
          y = 1450,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 200 },
            { x = 0, y = 200 }
          },
          properties = {}
        },
        {
          id = 977,
         
         
          shape = "polygon",
          x = -600,
          y = 1650,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 150 },
            { x = 0, y = 150 }
          },
          properties = {}
        },
        {
          id = 978,
         
         
          shape = "polygon",
          x = -450,
          y = 1800,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 200, y = 100 },
            { x = 0, y = 100 }
          },
          properties = {}
        },
        {
          id = 979,
         
         
          shape = "polygon",
          x = 650,
          y = 800,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 150 },
            { x = 50, y = 0 }
          },
          properties = {}
        },
        {
          id = 980,
         
         
          shape = "polygon",
          x = 700,
          y = 950,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 250 },
            { x = 0, y = 500 }
          },
          properties = {}
        },
        {
          id = 981,
         
         
          shape = "polygon",
          x = 700,
          y = 1450,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 200 },
            { x = -100, y = 200 }
          },
          properties = {}
        },
        {
          id = 982,
         
         
          shape = "polygon",
          x = 600,
          y = 1650,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 150 },
            { x = -150, y = 150 }
          },
          properties = {}
        },
        {
          id = 983,
         
         
          shape = "polygon",
          x = 450,
          y = 1800,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 100 },
            { x = -200, y = 100 }
          },
          properties = {}
        },
        {
          id = 984,
         
         
          shape = "polygon",
          x = 650,
          y = 800,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 200, y = -150 },
            { x = 200, y = 0 }
          },
          properties = {}
        },
        {
          id = 985,
         
         
          shape = "polygon",
          x = 850,
          y = 650,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = -350 },
            { x = 100, y = 0 }
          },
          properties = {}
        },
        {
          id = 986,
         
         
          shape = "polygon",
          x = 950,
          y = 300,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = -300 },
            { x = 0, y = -300 }
          },
          properties = {}
        }
      }
  }  


--[[
n
n
n
n
n
]]--

elseif id == 5 then
  return  {
    type = "objectgroup",
    name = "Object Layer 5",
    
    
    
    
    
    
    objects = {
      {
        id = 987,
       
       
        shape = "polygon",
        x = -250,
        y = 0,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 50 },
          { x = -150, y = 0 }
        },
        properties = {}
      },
      {
        id = 988,
       
       
        shape = "polygon",
        x = -400,
        y = 50,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 100 },
          { x = -150, y = 0 }
        },
        properties = {}
      },
      {
        id = 989,
       
       
        shape = "polygon",
        x = -700,
        y = 150,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 0 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 990,
       
       
        shape = "polygon",
        x = -800,
        y = 300,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 0 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 991,
       
       
        shape = "polygon",
        x = -850,
        y = 450,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 0 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 992,
       
       
        shape = "polygon",
        x = -900,
        y = 600,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 0 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 993,
       
       
        shape = "polygon",
        x = -900,
        y = 800,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 50 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 994,
       
       
        shape = "polygon",
        x = -900,
        y = 900,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 995,
       
       
        shape = "polygon",
        x = -850,
        y = 1100,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 996,
       
       
        shape = "polygon",
        x = -800,
        y = 1250,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 997,
       
       
        shape = "polygon",
        x = -700,
        y = 1400,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 998,
       
       
        shape = "polygon",
        x = -550,
        y = 1550,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 999,
       
       
        shape = "polygon",
        x = -400,
        y = 1650,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 50 },
          { x = 0, y = 50 }
        },
        properties = {}
      },
      {
        id = 1000,
       
       
        shape = "polygon",
        x = 250,
        y = 0,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 50 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1001,
       
       
        shape = "polygon",
        x = 400,
        y = 50,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 100 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1002,
       
       
        shape = "polygon",
        x = 550,
        y = 150,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 150 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1003,
       
       
        shape = "polygon",
        x = 700,
        y = 300,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 150 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 1004,
       
       
        shape = "polygon",
        x = 800,
        y = 450,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 150 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 1005,
       
       
        shape = "polygon",
        x = 850,
        y = 600,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 200 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 1006,
       
       
        shape = "polygon",
        x = 900,
        y = 800,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 100 },
          { x = 50, y = 50 }
        },
        properties = {}
      },
      {
        id = 1007,
       
       
        shape = "polygon",
        x = 900,
        y = 900,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 1008,
       
       
        shape = "polygon",
        x = 850,
        y = 1100,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 1009,
       
       
        shape = "polygon",
        x = 800,
        y = 1250,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 1010,
       
       
        shape = "polygon",
        x = 700,
        y = 1400,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 1011,
       
       
        shape = "polygon",
        x = 550,
        y = 1550,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 1012,
       
       
        shape = "polygon",
        x = 400,
        y = 1650,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 50 },
          { x = 0, y = 50 }
        },
        properties = {}
      },
      {
        id = 1013,
       
       
        shape = "polygon",
        x = -250,
        y = 350,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 650 },
          { x = 0, y = 900 }
        },
        properties = {}
      },
      {
        id = 1014,
       
       
        shape = "polygon",
        x = 250,
        y = 450,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 250 },
          { x = 0, y = 900 }
        },
        properties = {}
      },
      {
        id = 1015,
       
       
        shape = "polygon",
        x = 250,
        y = 350,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 200, y = 500 },
          { x = 0, y = 1000 }
        },
        properties = {}
      },
      {
        id = 1016,
       
       
        shape = "polygon",
        x = -250,
        y = 350,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -200, y = 500 },
          { x = 0, y = 1000 }
        },
        properties = {}
      }
    }
  }
--[[
n
n
n
n
n
]]--
  elseif id == 6 then
    return {
      type = "objectgroup",
      name = "Object Layer 6",
      
      
      
      
      
      
      objects = {
        {
          id = 1022,
         
         
          shape = "polygon",
          x = -250,
          y = 0,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -150, y = 50 },
            { x = -150, y = 0 }
          },
          properties = {}
        },
        {
          id = 1023,
         
         
          shape = "polygon",
          x = -400,
          y = 50,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -150, y = 100 },
            { x = -150, y = 0 }
          },
          properties = {}
        },
        {
          id = 1024,
         
         
          shape = "polygon",
          x = -550,
          y = 150,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -150, y = 150 },
            { x = -150, y = 0 }
          },
          properties = {}
        },
        {
          id = 1025,
         
         
          shape = "polygon",
          x = -700,
          y = 300,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 150 },
            { x = -100, y = 0 }
          },
          properties = {}
        },
        {
          id = 1026,
         
         
          shape = "polygon",
          x = -800,
          y = 450,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 150 },
            { x = -50, y = 0 }
          },
          properties = {}
        },
        {
          id = 1027,
         
         
          shape = "polygon",
          x = -850,
          y = 600,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 200 },
            { x = -50, y = 0 }
          },
          properties = {}
        },
        {
          id = 1028,
         
         
          shape = "polygon",
          x = -900,
          y = 800,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 100 },
            { x = -50, y = 50 }
          },
          properties = {}
        },
        {
          id = 1029,
         
         
          shape = "polygon",
          x = -900,
          y = 900,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 200 },
            { x = 0, y = 200 }
          },
          properties = {}
        },
        {
          id = 1030,
         
         
          shape = "polygon",
          x = -850,
          y = 1100,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 150 },
            { x = 0, y = 150 }
          },
          properties = {}
        },
        {
          id = 1031,
         
         
          shape = "polygon",
          x = -800,
          y = 1250,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 150 },
            { x = 0, y = 150 }
          },
          properties = {}
        },
        {
          id = 1032,
         
         
          shape = "polygon",
          x = -700,
          y = 1400,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 150 },
            { x = 0, y = 150 }
          },
          properties = {}
        },
        {
          id = 1033,
         
         
          shape = "polygon",
          x = -550,
          y = 1550,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 100 },
            { x = 0, y = 100 }
          },
          properties = {}
        },
        {
          id = 1034,
         
         
          shape = "polygon",
          x = -400,
          y = 1650,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 50 },
            { x = 0, y = 50 }
          },
          properties = {}
        },
        {
          id = 1035,
         
         
          shape = "polygon",
          x = 0,
          y = 1350,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -300, y = -500 },
            { x = 0, y = -1000 },
            { x = 300, y = -500 }
          },
          properties = {}
        },
        {
          id = 1036,
         
         
          shape = "polygon",
          x = 250,
          y = 0,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 50 },
            { x = 150, y = 0 }
          },
          properties = {}
        },
        {
          id = 1037,
         
         
          shape = "polygon",
          x = 400,
          y = 50,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 100 },
            { x = 150, y = 0 }
          },
          properties = {}
        },
        {
          id = 1038,
         
         
          shape = "polygon",
          x = 550,
          y = 150,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 150 },
            { x = 150, y = 0 }
          },
          properties = {}
        },
        {
          id = 1039,
         
         
          shape = "polygon",
          x = 700,
          y = 300,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 150 },
            { x = 100, y = 0 }
          },
          properties = {}
        },
        {
          id = 1040,
         
         
          shape = "polygon",
          x = 800,
          y = 450,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 150 },
            { x = 50, y = 0 }
          },
          properties = {}
        },
        {
          id = 1041,
         
         
          shape = "polygon",
          x = 850,
          y = 600,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 200 },
            { x = 50, y = 0 }
          },
          properties = {}
        },
        {
          id = 1042,
         
         
          shape = "polygon",
          x = 900,
          y = 800,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 100 },
            { x = 50, y = 50 }
          },
          properties = {}
        },
        {
          id = 1043,
         
         
          shape = "polygon",
          x = 900,
          y = 900,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 200 },
            { x = 0, y = 200 }
          },
          properties = {}
        },
        {
          id = 1044,
         
         
          shape = "polygon",
          x = 850,
          y = 1100,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 150 },
            { x = 0, y = 150 }
          },
          properties = {}
        },
        {
          id = 1045,
         
         
          shape = "polygon",
          x = 800,
          y = 1250,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 150 },
            { x = 0, y = 150 }
          },
          properties = {}
        },
        {
          id = 1046,
         
         
          shape = "polygon",
          x = 700,
          y = 1400,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -150, y = 150 },
            { x = 0, y = 150 }
          },
          properties = {}
        },
        {
          id = 1047,
         
         
          shape = "polygon",
          x = 550,
          y = 1550,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -150, y = 100 },
            { x = 0, y = 100 }
          },
          properties = {}
        },
        {
          id = 1048,
         
         
          shape = "polygon",
          x = 400,
          y = 1650,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -150, y = 50 },
            { x = 0, y = 50 }
          },
          properties = {}
        }
      }
    }

--[[
n
n
n
n
n
]]--
elseif id == 7 then
  return {
    type = "objectgroup",
    name = "Object Layer 7",
    
    
    
    
    
    
    objects = {
      {
        id = 1049,
       
       
        shape = "polygon",
        x = -250,
        y = 0,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 50 },
          { x = -150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1050,
       
       
        shape = "polygon",
        x = -400,
        y = 50,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 100 },
          { x = -150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1051,
       
       
        shape = "polygon",
        x = -550,
        y = 150,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 150 },
          { x = -150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1052,
       
       
        shape = "polygon",
        x = -700,
        y = 300,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 150 },
          { x = -100, y = 0 }
        },
        properties = {}
      },
      {
        id = 1053,
       
       
        shape = "polygon",
        x = -800,
        y = 450,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 150 },
          { x = -50, y = 0 }
        },
        properties = {}
      },
      {
        id = 1054,
       
       
        shape = "polygon",
        x = -850,
        y = 600,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 200 },
          { x = -50, y = 0 }
        },
        properties = {}
      },
      {
        id = 1055,
       
       
        shape = "polygon",
        x = -900,
        y = 800,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 100 },
          { x = -50, y = 50 }
        },
        properties = {}
      },
      {
        id = 1056,
       
       
        shape = "polygon",
        x = -900,
        y = 900,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 1057,
       
       
        shape = "polygon",
        x = -850,
        y = 1100,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 1058,
       
       
        shape = "polygon",
        x = -800,
        y = 1250,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 1059,
       
       
        shape = "polygon",
        x = -700,
        y = 1400,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 1060,
       
       
        shape = "polygon",
        x = -550,
        y = 1550,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 1061,
       
       
        shape = "polygon",
        x = -400,
        y = 1650,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 50 },
          { x = 0, y = 50 }
        },
        properties = {}
      },
      {
        id = 1063,
       
       
        shape = "polygon",
        x = 250,
        y = 0,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 50 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1064,
       
       
        shape = "polygon",
        x = 400,
        y = 50,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 100 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1065,
       
       
        shape = "polygon",
        x = 550,
        y = 150,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 150 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1066,
       
       
        shape = "polygon",
        x = 700,
        y = 300,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 150 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 1067,
       
       
        shape = "polygon",
        x = 800,
        y = 450,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 150 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 1068,
       
       
        shape = "polygon",
        x = 850,
        y = 600,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 200 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 1069,
       
       
        shape = "polygon",
        x = 900,
        y = 800,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 100 },
          { x = 50, y = 50 }
        },
        properties = {}
      },
      {
        id = 1070,
       
       
        shape = "polygon",
        x = 900,
        y = 900,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 1071,
       
       
        shape = "polygon",
        x = 850,
        y = 1100,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 1072,
       
       
        shape = "polygon",
        x = 800,
        y = 1250,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 1073,
       
       
        shape = "polygon",
        x = 700,
        y = 1400,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 1074,
       
       
        shape = "polygon",
        x = 550,
        y = 1550,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 1075,
       
       
        shape = "polygon",
        x = 400,
        y = 1650,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 50 },
          { x = 0, y = 50 }
        },
        properties = {}
      }
    }
  }
--[[
n
n
n
n
n
]]--
  elseif id == 8 then
    return {
      type = "objectgroup",
      name = "Object Layer 8",
      
      
      
      
      
      
      objects = {
        {
          id = 1076,
          
          
          shape = "polygon",
          x = -850,
          y = 0,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 150 },
            { x = -100, y = 0 }
          },
          properties = {}
        },
        {
          id = 1077,
          
          
          shape = "polygon",
          x = -950,
          y = 150,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 350 },
            { x = 0, y = 350 }
          },
          properties = {}
        },
        {
          id = 1078,
          
          
          shape = "polygon",
          x = -850,
          y = 500,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 250, y = 100 },
            { x = 0, y = 100 }
          },
          properties = {}
        },
        {
          id = 1079,
          
          
          shape = "polygon",
          x = -600,
          y = 600,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 950, y = 150 },
            { x = 0, y = 150 }
          },
          properties = {}
        },
        {
          id = 1080,
          
          
          shape = "polygon",
          x = -350,
          y = 0,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 200 },
            { x = 150, y = 0 }
          },
          properties = {}
        },
        {
          id = 1081,
          
          
          shape = "polygon",
          x = -200,
          y = 200,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 650, y = 100 },
            { x = 650, y = 0 }
          },
          properties = {}
        },
        {
          id = 1082,
          
          
          shape = "polygon",
          x = 450,
          y = 300,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 200, y = 0 },
            { x = 200, y = -100 }
          },
          properties = {}
        },
        {
          id = 1083,
          
          
          shape = "polygon",
          x = 650,
          y = 300,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 50 },
            { x = 100, y = 0 }
          },
          properties = {}
        },
        {
          id = 1084,
          
          
          shape = "polygon",
          x = 750,
          y = 350,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 200 },
            { x = 100, y = 0 }
          },
          properties = {}
        },
        {
          id = 1085,
          
          
          shape = "polygon",
          x = 850,
          y = 550,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 400 },
            { x = 50, y = 0 }
          },
          properties = {}
        },
        {
          id = 1087,
          
          
          shape = "polygon",
          x = 900,
          y = 950,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 750 },
            { x = 0, y = 750 }
          },
          properties = {}
        },
        {
          id = 1088,
          
          
          shape = "polygon",
          x = 850,
          y = 1700,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 300 },
            { x = 0, y = 300 }
          },
          properties = {}
        },
        {
          id = 1089,
          
          
          shape = "polygon",
          x = 750,
          y = 2000,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -200, y = 100 },
            { x = 0, y = 100 }
          },
          properties = {}
        },
        {
          id = 1090,
          
          
          shape = "polygon",
          x = 550,
          y = 2100,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -900, y = 100 },
            { x = 0, y = 100 }
          },
          properties = {}
        },
        {
          id = 1091,
          
          
          shape = "polygon",
          x = -850,
          y = 2200,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = -250 },
            { x = -50, y = 0 }
          },
          properties = {}
        },
        {
          id = 1092,
          
          
          shape = "polygon",
          x = -900,
          y = 1900,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = -200 },
            { x = 0, y = -200 }
          },
          properties = {}
        },
        {
          id = 1093,
          
          
          shape = "polygon",
          x = -750,
          y = 1600,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 400, y = 0 },
            { x = 0, y = 100 }
          },
          properties = {}
        },
        {
          id = 1094,
          
          
          shape = "polygon",
          x = -350,
          y = 1600,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 600, y = 50 },
            { x = 600, y = 0 }
          },
          properties = {}
        },
        {
          id = 1095,
          
          
          shape = "polygon",
          x = 250,
          y = 1650,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = -300 },
            { x = 100, y = -900 }
          },
          properties = {}
        },
        
        {
          id = 1543,
          
          
          shape = "polygon",
          x = -950,
          y = 1900,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 0 },
            { x = 50, y = 50 }
          },
          properties = {}
        }
      }
    }
--[[
n
n
n
n
n
]]--
elseif id == 9 then
  return {
    type = "objectgroup",
    name = "Object Layer 9",
    
    
    
    
    
    
    objects = {
      {
        id = 1096,
       
       
        shape = "polygon",
        x = 350,
        y = 0,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -250, y = 250 },
          { x = -400, y = 150 }
        },
        properties = {}
      },
      {
        id = 1097,
       
       
        shape = "polygon",
        x = -50,
        y = 150,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -400, y = 250 },
          { x = -400, y = 0 }
        },
        properties = {}
      },
      {
        id = 1098,
       
       
        shape = "polygon",
        x = -450,
        y = 400,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -250, y = 300 },
          { x = -250, y = 0 }
        },
        properties = {}
      },
      {
        id = 1100,
       
       
        shape = "polygon",
        x = -700,
        y = 700,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 250, y = 300 },
          { x = 0, y = 300 }
        },
        properties = {}
      },
      {
        id = 1101,
       
       
        shape = "polygon",
        x = -450,
        y = 1000,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 400, y = 250 },
          { x = 0, y = 250 }
        },
        properties = {}
      },
      {
        id = 1102,
       
       
        shape = "polygon",
        x = 100,
        y = 1150,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 250, y = 250 },
          { x = -150, y = 100 }
        },
        properties = {}
      },
      {
        id = 1103,
       
       
        shape = "polygon",
        x = 150,
        y = 600,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 100 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 1104,
       
       
        shape = "polygon",
        x = 150,
        y = 600,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 400, y = 50 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 1105,
       
       
        shape = "polygon",
        x = 150,
        y = 700,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 400, y = 50 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 1106,
       
       
        shape = "polygon",
        x = 800,
        y = 500,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -350, y = 200 },
          { x = 0, y = 400 }
        },
        properties = {}
      },
      {
        id = 1108,
       
       
        shape = "polygon",
        x = 900,
        y = 150,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 350 },
          { x = 0, y = 350 }
        },
        properties = {}
      },
      {
        id = 1109,
       
       
        shape = "polygon",
        x = 800,
        y = 900,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 350 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 1110,
       
       
        shape = "polygon",
        x = 900,
        y = 1250,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 150 },
          { x = 50, y = 150 }
        },
        properties = {}
      },
      {
        id = 1112,
       
       
        shape = "polygon",
        x = 900,
        y = 150,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = -150 },
          { x = 50, y = -150 }
        },
        properties = {}
      }
    }
  }
--[[
n
n
n
n
n
]]--
elseif id == 10 then
  return {
    type = "objectgroup",
    name = "Object Layer 10",
    
    
    
    
    
    
    objects = {
      {
        id = 1113,
        name = "",
        type = "",
        shape = "polygon",
        x = 100,
        y = 1050,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 400 },
          { x = 250, y = 600 },
          { x = -200, y = 500 }
        },
        properties = {}
      },
      {
        id = 1114,
        name = "",
        type = "",
        shape = "polygon",
        x = 350,
        y = 0,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -250, y = 200 },
          { x = -450, y = 100 }
        },
        properties = {}
      },
      {
        id = 1115,
        name = "",
        type = "",
        shape = "polygon",
        x = 350,
        y = 600,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 250 },
          { x = 350, y = 50 },
          { x = 350, y = 450 }
        },
        properties = {}
      },
      {
        id = 1116,
        name = "",
        type = "",
        shape = "polygon",
        x = 850,
        y = 0,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -200, y = 850 },
          { x = 0, y = 1650 }
        },
        properties = {}
      },
      {
        id = 1117,
        name = "",
        type = "",
        shape = "polygon",
        x = -150,
        y = 1150,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 50, y = 400 },
          { x = -400, y = 250 },
          { x = -400, y = 400 }
        },
        properties = {}
      },
      {
        id = 1118,
        name = "",
        type = "",
        shape = "polygon",
        x = -600,
        y = 1000,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 50, y = 400 },
          { x = -200, y = 200 },
          { x = -200, y = 400 }
        },
        properties = {}
      },
      {
        id = 1119,
        name = "",
        type = "",
        shape = "polygon",
        x = -850,
        y = 850,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 50, y = 350 },
          { x = -50, y = 0 },
          { x = -50, y = 350 }
        },
        properties = {}
      },
      {
        id = 1120,
        name = "",
        type = "",
        shape = "polygon",
        x = -950,
        y = 600,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 50, y = 250 },
          { x = 150, y = -100 },
          { x = 50, y = -100 }
        },
        properties = {}
      },
      {
        id = 1121,
        name = "",
        type = "",
        shape = "polygon",
        x = -850,
        y = 350,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 50, y = 150 },
          { x = 300, y = -100 },
          { x = 50, y = -100 }
        },
        properties = {}
      },
      {
        id = 1122,
        name = "",
        type = "",
        shape = "polygon",
        x = -600,
        y = 200,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 50, y = 50 },
          { x = 50, y = -100 },
          { x = 500, y = -100 }
        },
        properties = {}
      },
      {
        id = 1123,
        name = "",
        type = "",
        shape = "polygon",
        x = -400,
        y = 550,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 50, y = 400 },
          { x = -100, y = 300 },
          { x = 50, y = 200 }
        },
        properties = {}
      },
      {
        id = 1124,
        name = "",
        type = "",
        shape = "polygon",
        x = -400,
        y = 550,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 50, y = 200 },
          { x = 350, y = 300 },
          { x = 50, y = 400 }
        },
        properties = {}
      }
    }
  }
--[[
n
n
n
n
n
]]--
  elseif id == 11 then
    return {
      type = "objectgroup",
      name = "Object Layer 11",
      
      
      
      
      
      
      objects = {
        {
          id = 1125,
         
         
          shape = "polygon",
          x = 350,
          y = 0,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -1050, y = 250 },
            { x = -1050, y = 0 }
          },
          properties = {}
        },
        {
          id = 1126,
         
         
          shape = "polygon",
          x = -700,
          y = 250,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 100 },
            { x = -100, y = 0 }
          },
          properties = {}
        },
        {
          id = 1127,
         
         
          shape = "polygon",
          x = -900,
          y = 350,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 0 },
            { x = 0, y = 250 }
          },
          properties = {}
        },
        {
          id = 1128,
         
         
          shape = "polygon",
          x = -900,
          y = 600,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 200 },
            { x = 0, y = 200 }
          },
          properties = {}
        },
        {
          id = 1129,
         
         
          shape = "polygon",
          x = -900,
          y = 800,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 0 },
            { x = 0, y = 400 }
          },
          properties = {}
        },
        {
          id = 1130,
         
         
          shape = "polygon",
          x = -900,
          y = 1200,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 350 },
            { x = 0, y = 350 }
          },
          properties = {}
        },
        {
          id = 1131,
         
         
          shape = "polygon",
          x = -900,
          y = 1550,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 0 },
            { x = 0, y = 450 }
          },
          properties = {}
        },
        {
          id = 1132,
         
         
          shape = "polygon",
          x = -900,
          y = 2000,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 350 },
            { x = 0, y = 350 }
          },
          properties = {}
        },
        {
          id = 1133,
         
         
          shape = "polygon",
          x = -300,
          y = 2000,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 350 },
            { x = -50, y = 350 }
          },
          properties = {}
        },
        {
          id = 1134,
         
         
          shape = "polygon",
          x = -300,
          y = 2000,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = -100 },
            { x = 100, y = 0 }
          },
          properties = {}
        },
        {
          id = 1135,
         
         
          shape = "polygon",
          x = -200,
          y = 1900,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 950, y = -200 },
            { x = 950, y = 0 }
          },
          properties = {}
        },
        {
          id = 1136,
         
         
          shape = "polygon",
          x = 750,
          y = 1700,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 200, y = -200 },
            { x = 200, y = 0 }
          },
          properties = {}
        },
        {
          id = 1137,
         
         
          shape = "polygon",
          x = 950,
          y = 1500,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = -350 },
            { x = 0, y = -350 }
          },
          properties = {}
        },
        {
          id = 1138,
         
         
          shape = "polygon",
          x = 900,
          y = 1150,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 0 },
            { x = 0, y = -300 }
          },
          properties = {}
        },
        {
          id = 1139,
         
         
          shape = "polygon",
          x = 900,
          y = 850,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = -400 },
            { x = 0, y = -400 }
          },
          properties = {}
        },
        {
          id = 1140,
         
         
          shape = "polygon",
          x = 900,
          y = 450,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 0 },
            { x = 0, y = -250 }
          },
          properties = {}
        },
        {
          id = 1141,
         
         
          shape = "polygon",
          x = 900,
          y = 200,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = -200 },
            { x = 0, y = -200 }
          },
          properties = {}
        },
        {
          id = 1142,
         
         
          shape = "polygon",
          x = 350,
          y = 400,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 0 },
            { x = 0, y = 300 }
          },
          properties = {}
        },
        {
          id = 1143,
         
         
          shape = "polygon",
          x = 350,
          y = 700,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 350 },
            { x = 0, y = 350 }
          },
          properties = {}
        },
        {
          id = 1144,
         
         
          shape = "polygon",
          x = 300,
          y = 1050,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 0 },
            { x = 0, y = 250 }
          },
          properties = {}
        },
        {
          id = 1145,
         
         
          shape = "polygon",
          x = 300,
          y = 1300,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -450, y = 150 },
            { x = -550, y = 0 }
          },
          properties = {}
        },
        {
          id = 1146,
         
         
          shape = "polygon",
          x = -250,
          y = 1300,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = -450 },
            { x = 100, y = 0 }
          },
          properties = {}
        },
        {
          id = 1147,
         
         
          shape = "polygon",
          x = -150,
          y = 850,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = -250 },
            { x = 0, y = -250 }
          },
          properties = {}
        },
        {
          id = 1148,
         
         
          shape = "polygon",
          x = -250,
          y = 600,
          
          
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 600, y = -200 },
            { x = 600, y = 0 }
          },
          properties = {}
        }
      }
    }
  
--[[
n
n
n
n
n
]]--
  elseif id == 12 then
    return {
      type = "objectgroup",
      name = "Object Layer 12",
      
      
      
      
      
      
      objects = {
        {
          id = 1149,
          name = "",
          type = "",
          shape = "polygon",
          x = -850,
          y = 0,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 150 },
            { x = -100, y = 150 }
          },
          properties = {}
        },
        {
          id = 1150,
          name = "",
          type = "",
          shape = "polygon",
          x = -850,
          y = 100,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 150 },
            { x = 0, y = 150 }
          },
          properties = {}
        },
        {
          id = 1151,
          name = "",
          type = "",
          shape = "polygon",
          x = -700,
          y = 250,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 1050, y = 400 },
            { x = 650, y = 550 }
          },
          properties = {}
        },
        {
          id = 1152,
          name = "",
          type = "",
          shape = "polygon",
          x = -50,
          y = 800,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -150, y = 150 },
            { x = -150, y = 0 }
          },
          properties = {}
        },
        {
          id = 1153,
          name = "",
          type = "",
          shape = "polygon",
          x = -250,
          y = 950,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 0 },
            { x = 0, y = 300 }
          },
          properties = {}
        },
        {
          id = 1154,
          name = "",
          type = "",
          shape = "polygon",
          x = 300,
          y = 1100,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 150 },
            { x = 0, y = 150 }
          },
          properties = {}
        },
        {
          id = 1155,
          name = "",
          type = "",
          shape = "polygon",
          x = 350,
          y = 1050,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 50 },
            { x = 0, y = 50 }
          },
          properties = {}
        },
        {
          id = 1156,
          name = "",
          type = "",
          shape = "polygon",
          x = 350,
          y = 1050,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 200, y = -50 },
            { x = 200, y = 0 }
          },
          properties = {}
        },
        {
          id = 1157,
          name = "",
          type = "",
          shape = "polygon",
          x = 550,
          y = 1000,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 200, y = -200 },
            { x = 200, y = 0 }
          },
          properties = {}
        },
        {
          id = 1158,
          name = "",
          type = "",
          shape = "polygon",
          x = 750,
          y = 800,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = -150 },
            { x = 100, y = 0 }
          },
          properties = {}
        },
        {
          id = 1159,
          name = "",
          type = "",
          shape = "polygon",
          x = 750,
          y = 500,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 150 },
            { x = 100, y = 0 }
          },
          properties = {}
        },
        {
          id = 1160,
          name = "",
          type = "",
          shape = "polygon",
          x = 600,
          y = 350,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 0 },
            { x = 150, y = 150 }
          },
          properties = {}
        },
        {
          id = 1161,
          name = "",
          type = "",
          shape = "polygon",
          x = 600,
          y = 350,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -950, y = -350 },
            { x = 0, y = -350 }
          },
          properties = {}
        }
      }
    }
--[[
n
n
n
n
n
]]--
    elseif id == 13 then
      return {
        type = "objectgroup",
        name = "Object Layer 13",
        
        
        
        
        
        
        objects = {
          {
            id = 1162,
           
           
            shape = "polygon",
            x = 350,
            y = 0,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 200 },
              { x = -100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1163,
           
           
            shape = "polygon",
            x = 250,
            y = 200,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 300 },
              { x = 0, y = 300 }
            },
            properties = {}
          },
          {
            id = 1164,
           
           
            shape = "polygon",
            x = 350,
            y = 500,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 250 },
              { x = -100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1165,
           
           
            shape = "polygon",
            x = 250,
            y = 750,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 100 },
              { x = -100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1166,
           
           
            shape = "polygon",
            x = 150,
            y = 850,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -250, y = 100 },
              { x = -250, y = 0 }
            },
            properties = {}
          },
          {
            id = 1167,
           
           
            shape = "polygon",
            x = -100,
            y = 950,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -150, y = 200 },
              { x = -150, y = 0 }
            },
            properties = {}
          },
          {
            id = 1168,
           
           
            shape = "polygon",
            x = -250,
            y = 1150,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 300 },
              { x = -100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1169,
           
           
            shape = "polygon",
            x = -350,
            y = 1450,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 200 },
              { x = 0, y = 200 }
            },
            properties = {}
          },
          {
            id = 1170,
           
           
            shape = "polygon",
            x = 150,
            y = 1450,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 200 },
              { x = 100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1171,
           
           
            shape = "polygon",
            x = 250,
            y = 1450,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 0 },
              { x = 0, y = -100 }
            },
            properties = {}
          },
          {
            id = 1172,
           
           
            shape = "polygon",
            x = 250,
            y = 1350,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 350, y = -100 },
              { x = 350, y = 0 }
            },
            properties = {}
          },
          {
            id = 1173,
           
           
            shape = "polygon",
            x = 600,
            y = 1250,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = -100 },
              { x = 100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1174,
           
           
            shape = "polygon",
            x = 700,
            y = 1150,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 250, y = -850 },
              { x = 250, y = 0 }
            },
            properties = {}
          },
          {
            id = 1175,
           
           
            shape = "polygon",
            x = 950,
            y = 300,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = -300 },
              { x = 0, y = -300 }
            },
            properties = {}
          }
        }
      }
--[[
n
n
n
n
n
]]--
      elseif id == 14 then
        return {
          type = "objectgroup",
          name = "Object Layer 14",
          
          
          
          
          
          
          objects = {
            {
              id = 1176,
             
             
              shape = "polygon",
              x = 350,
              y = 0,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -250, y = 150 },
                { x = -250, y = 0 }
              },
              properties = {}
            },
            {
              id = 1177,
             
             
              shape = "polygon",
              x = 100,
              y = 150,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -500, y = 150 },
                { x = -500, y = 0 }
              },
              properties = {}
            },
            {
              id = 1178,
             
             
              shape = "polygon",
              x = -400,
              y = 300,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -250, y = 150 },
                { x = -250, y = 0 }
              },
              properties = {}
            },
            {
              id = 1179,
             
             
              shape = "polygon",
              x = -650,
              y = 450,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -150, y = 150 },
                { x = -150, y = 0 }
              },
              properties = {}
            },
            {
              id = 1180,
             
             
              shape = "polygon",
              x = -800,
              y = 600,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -100, y = 250 },
                { x = -100, y = 0 }
              },
              properties = {}
            },
            {
              id = 1181,
             
             
              shape = "polygon",
              x = -900,
              y = 850,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = 250 },
                { x = 0, y = 250 }
              },
              properties = {}
            },
            {
              id = 1182,
             
             
              shape = "polygon",
              x = -800,
              y = 1100,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 150, y = 150 },
                { x = 0, y = 150 }
              },
              properties = {}
            },
            {
              id = 1183,
             
             
              shape = "polygon",
              x = -650,
              y = 1250,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 250, y = 150 },
                { x = 0, y = 150 }
              },
              properties = {}
            },
            {
              id = 1184,
             
             
              shape = "polygon",
              x = -400,
              y = 1400,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 500, y = 150 },
                { x = 0, y = 150 }
              },
              properties = {}
            },
            {
              id = 1185,
             
             
              shape = "polygon",
              x = 100,
              y = 1550,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 250, y = 150 },
                { x = 0, y = 150 }
              },
              properties = {}
            },
            {
              id = 1186,
             
             
              shape = "polygon",
              x = 900,
              y = 1550,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -50, y = 150 },
                { x = 0, y = 150 }
              },
              properties = {}
            },
            {
              id = 1187,
             
             
              shape = "polygon",
              x = 900,
              y = 1550,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 50, y = -700 },
                { x = 50, y = 0 }
              },
              properties = {}
            },
            {
              id = 1188,
             
             
              shape = "polygon",
              x = 950,
              y = 850,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -50, y = -700 },
                { x = 0, y = -700 }
              },
              properties = {}
            },
            {
              id = 1189,
             
             
              shape = "polygon",
              x = 900,
              y = 150,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -50, y = -150 },
                { x = 0, y = -150 }
              },
              properties = {}
            }
          }
        }
--[[
n
n
n
n
n
]]--
        elseif id == 15 then
        return {
          type = "objectgroup",
          name = "Object Layer 15",
          
          
          
          
          
          
          objects = {
            {
              id = 1190,
             
             
              shape = "polygon",
              x = 350,
              y = 0,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -50, y = 500 },
                { x = -50, y = 0 }
              },
              properties = {}
            },
            {
              id = 1191,
             
             
              shape = "polygon",
              x = 300,
              y = 500,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -50, y = 250 },
                { x = -50, y = 0 }
              },
              properties = {}
            },
            {
              id = 1192,
             
             
              shape = "polygon",
              x = 250,
              y = 750,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -50, y = 150 },
                { x = -50, y = 0 }
              },
              properties = {}
            },
            {
              id = 1193,
             
             
              shape = "polygon",
              x = 200,
              y = 900,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -50, y = 50 },
                { x = -50, y = 0 }
              },
              properties = {}
            },
            {
              id = 1194,
             
             
              shape = "polygon",
              x = 150,
              y = 950,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -150, y = 50 },
                { x = -150, y = 0 }
              },
              properties = {}
            },
            {
              id = 1195,
             
             
              shape = "polygon",
              x = 0,
              y = 1000,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -250, y = 50 },
                { x = -250, y = 0 }
              },
              properties = {}
            },
            {
              id = 1196,
             
             
              shape = "polygon",
              x = -250,
              y = 1050,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -500, y = 50 },
                { x = -500, y = 0 }
              },
              properties = {}
            },
            {
              id = 1197,
             
             
              shape = "polygon",
              x = -750,
              y = 1100,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -200, y = 200 },
                { x = -200, y = 0 }
              },
              properties = {}
            },
            {
              id = 1198,
             
             
              shape = "polygon",
              x = -950,
              y = 1300,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = 300 },
                { x = 0, y = 300 }
              },
              properties = {}
            },
            {
              id = 1199,
             
             
              shape = "polygon",
              x = -350,
              y = 1600,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 150, y = -50 },
                { x = 150, y = 0 }
              },
              properties = {}
            },
            {
              id = 1200,
             
             
              shape = "polygon",
              x = -200,
              y = 1550,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 400, y = -50 },
                { x = 400, y = 0 }
              },
              properties = {}
            },
            {
              id = 1201,
             
             
              shape = "polygon",
              x = 200,
              y = 1500,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 250, y = -100 },
                { x = 250, y = 0 }
              },
              properties = {}
            },
            {
              id = 1202,
             
             
              shape = "polygon",
              x = 450,
              y = 1400,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 200, y = -200 },
                { x = 200, y = 0 }
              },
              properties = {}
            },
            {
              id = 1203,
             
             
              shape = "polygon",
              x = 650,
              y = 1200,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = -250 },
                { x = 100, y = 0 }
              },
              properties = {}
            },
            {
              id = 1204,
             
             
              shape = "polygon",
              x = 750,
              y = 950,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 50, y = -400 },
                { x = 50, y = 0 }
              },
              properties = {}
            },
            {
              id = 1205,
             
             
              shape = "polygon",
              x = 800,
              y = 550,
              
              
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 50, y = -550 },
                { x = 50, y = 0 }
              },
              properties = {}
            }
          }
        }
        
--[[
n
n
n
n
n
]]--
      elseif id == 16 then
      return  {
        type = "objectgroup",
        name = "Object Layer 16",
        
        
        
        
        
        
        objects = {
          {
            id = 1206,
           
           
            shape = "polygon",
            x = -950,
            y = 2050,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 300 },
              { x = 0, y = 300 }
            },
            properties = {}
          },
          {
            id = 1207,
           
           
            shape = "polygon",
            x = -950,
            y = 2050,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = -400 },
              { x = 0, y = -400 }
            },
            properties = {}
          },
          {
            id = 1208,
           
           
            shape = "polygon",
            x = -850,
            y = 1650,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 150, y = -350 },
              { x = 0, y = -350 }
            },
            properties = {}
          },
          {
            id = 1209,
           
           
            shape = "polygon",
            x = -700,
            y = 1300,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 300, y = -150 },
              { x = 0, y = -150 }
            },
            properties = {}
          },
          {
            id = 1210,
           
           
            shape = "polygon",
            x = -400,
            y = 1150,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 150, y = -300 },
              { x = 0, y = -300 }
            },
            properties = {}
          },
          {
            id = 1211,
           
           
            shape = "polygon",
            x = -250,
            y = 850,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 300, y = -150 },
              { x = 0, y = -150 }
            },
            properties = {}
          },
          {
            id = 1212,
           
           
            shape = "polygon",
            x = 50,
            y = 700,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 200, y = -200 },
              { x = 0, y = -200 }
            },
            properties = {}
          },
          {
            id = 1213,
           
           
            shape = "polygon",
            x = -350,
            y = 2350,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = -350 },
              { x = 0, y = -350 }
            },
            properties = {}
          },
          {
            id = 1214,
           
           
            shape = "polygon",
            x = -350,
            y = 2000,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 0 },
              { x = 0, y = -400 }
            },
            properties = {}
          },
          {
            id = 1215,
           
           
            shape = "polygon",
            x = -350,
            y = 1600,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 300, y = -150 },
              { x = 300, y = 0 }
            },
            properties = {}
          },
          {
            id = 1216,
           
           
            shape = "polygon",
            x = -50,
            y = 1450,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 150, y = -300 },
              { x = 150, y = 0 }
            },
            properties = {}
          },
          {
            id = 1217,
           
           
            shape = "polygon",
            x = 100,
            y = 1150,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 300, y = -150 },
              { x = 300, y = 0 }
            },
            properties = {}
          },
          {
            id = 1218,
           
           
            shape = "polygon",
            x = 400,
            y = 1000,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 150, y = -300 },
              { x = 150, y = 0 }
            },
            properties = {}
          },
          {
            id = 1219,
           
           
            shape = "polygon",
            x = 550,
            y = 700,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 150, y = -150 },
              { x = 150, y = 0 }
            },
            properties = {}
          },
          {
            id = 1220,
           
           
            shape = "polygon",
            x = 700,
            y = 550,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 150, y = -550 },
              { x = 150, y = 0 }
            },
            properties = {}
          },
         
          {
            id = 1523,
           
           
            shape = "polygon",
            x = 250,
            y = 500,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = -500 },
              { x = 0, y = -500 }
            },
            properties = {}
          }
         
        }
      }
--[[
n
n
n
n
n
]]--
      elseif id == 17 then
      return {
        type = "objectgroup",
        name = "Object Layer 17",
        
        
        
        
        
        
        objects = {
          {
            id = 1221,
            
            
            shape = "polygon",
            x = -850,
            y = 1450,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 50, y = -300 },
              { x = 0, y = -300 }
            },
            properties = {}
          },
          {
            id = 1222,
            
            
            shape = "polygon",
            x = -800,
            y = 1150,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 150, y = -250 },
              { x = 0, y = -250 }
            },
            properties = {}
          },
          {
            id = 1223,
            
            
            shape = "polygon",
            x = -650,
            y = 900,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 250, y = -100 },
              { x = 0, y = -100 }
            },
            properties = {}
          },
          {
            id = 1224,
            
            
            shape = "polygon",
            x = -450,
            y = 800,
            
            
            
            
            polygon = {
              { x = 50, y = 0 },
              { x = 600, y = 50 },
              { x = 750, y = -100 },
              { x = 600, y = -200 }
            },
            properties = {}
          },
          {
            id = 1225,
            
            
            shape = "polygon",
            x = 150,
            y = 600,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -250, y = -200 },
              { x = -250, y = 0 }
            },
            properties = {}
          },
          {
            id = 1226,
            
            
            shape = "polygon",
            x = -100,
            y = 400,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -150, y = -400 },
              { x = -150, y = 0 }
            },
            properties = {}
          },
          {
            id = 1227,
            
            
            shape = "polygon",
            x = 250,
            y = 0,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 200, y = 300 },
              { x = 200, y = 0 }
            },
            properties = {}
          },
          {
            id = 1228,
            
            
            shape = "polygon",
            x = 450,
            y = 300,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 250, y = 150 },
              { x = 250, y = 0 }
            },
            properties = {}
          },
          {
            id = 1229,
            
            
            shape = "polygon",
            x = 700,
            y = 450,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 100 },
              { x = 100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1230,
            
            
            shape = "polygon",
            x = 800,
            y = 550,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = 300 },
              { x = 150, y = 150 }
            },
            properties = {}
          },
          {
            id = 1231,
            
            
            shape = "polygon",
            x = 800,
            y = 850,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 200 },
              { x = 0, y = 200 }
            },
            properties = {}
          },
          {
            id = 1232,
            
            
            shape = "polygon",
            x = 700,
            y = 1050,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -200, y = 200 },
              { x = 0, y = 200 }
            },
            properties = {}
          },
          {
            id = 1233,
            
            
            shape = "polygon",
            x = 500,
            y = 1250,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -750, y = 100 },
              { x = 0, y = 100 }
            },
            properties = {}
          },
          {
            id = 1234,
            
            
            shape = "polygon",
            x = -250,
            y = 1350,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 100 },
              { x = 0, y = 100 }
            },
            properties = {}
          }
        }
      }
--[[
n
n
n
n
n
]]--
elseif id == 18 then
  return {
    type = "objectgroup",
    name = "Object Layer 18",
    
    
    
    
    
    
    objects = {
      {
        id = 1235,
       
       
        shape = "polygon",
        x = -250,
        y = 550,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 600, y = -550 },
          { x = 0, y = -550 }
        },
        properties = {}
      },
      {
        id = 1236,
       
       
        shape = "polygon",
        x = -250,
        y = 550,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -600, y = 750 },
          { x = -700, y = 0 }
        },
        properties = {}
      },
      {
        id = 1237,
       
       
        shape = "polygon",
        x = -350,
        y = 1300,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 550, y = 0 },
          { x = 750, y = -550 }
        },
        properties = {}
      },
      {
        id = 1238,
       
       
        shape = "polygon",
        x = 400,
        y = 750,
        
        
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 550, y = 0 },
          { x = 450, y = -750 }
        },
        properties = {}
      }
    }
  }
--[[
n
n
n
n
n
]]--
elseif id == 19 then
  return {
    type = "objectgroup",
    name = "Object Layer 19",
    
    
    
    
    
    
    objects = {
      {
        id = 1239,
        name = "",
        type = "",
        shape = "polygon",
        x = -850,
        y = 0,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 100 },
          { x = -100, y = 0 }
        },
        properties = {}
      },
      {
        id = 1240,
        name = "",
        type = "",
        shape = "polygon",
        x = -950,
        y = 100,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 250 },
          { x = 0, y = 250 }
        },
        properties = {}
      },
      {
        id = 1243,
        name = "",
        type = "",
        shape = "polygon",
        x = -900,
        y = 350,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 4050 },
          { x = -50, y = 4050 },
          { x = -50, y = 0 }
        },
        properties = {}
      },
      {
        id = 1244,
        name = "",
        type = "",
        shape = "polygon",
        x = -550,
        y = 350,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 0 },
          { x = -50, y = 3650 },
          { x = 0, y = 3650 }
        },
        properties = {}
      },
      {
        id = 1245,
        name = "",
        type = "",
        shape = "polygon",
        x = -950,
        y = 4400,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 500, y = 0 },
          { x = 500, y = 50 },
          { x = 0, y = 50 }
        },
        properties = {}
      },
      {
        id = 1246,
        name = "",
        type = "",
        shape = "polygon",
        x = -550,
        y = 350,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 450, y = 150 },
          { x = 0, y = 350 }
        },
        properties = {}
      },
      {
        id = 1247,
        name = "",
        type = "",
        shape = "polygon",
        x = 300,
        y = 600,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 100 },
          { x = 250, y = 50 }
        },
        properties = {}
      },
      {
        id = 1248,
        name = "",
        type = "",
        shape = "polygon",
        x = 550,
        y = 1000,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = -50, y = 0 },
          { x = -150, y = 100 },
          { x = -100, y = 150 }
        },
        properties = {}
      },
      {
        id = 1249,
        name = "",
        type = "",
        shape = "polygon",
        x = -200,
        y = 900,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 50 },
          { x = -50, y = 150 }
        },
        properties = {}
      },
      {
        id = 1250,
        name = "",
        type = "",
        shape = "polygon",
        x = -150,
        y = 1350,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 50, y = 50 },
          { x = 250, y = 200 },
          { x = 450, y = 100 }
        },
        properties = {}
      },
      {
        id = 1251,
        name = "",
        type = "",
        shape = "polygon",
        x = 500,
        y = 1600,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = -50, y = 50 },
          { x = -150, y = 300 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 1252,
        name = "",
        type = "",
        shape = "polygon",
        x = 900,
        y = 1650,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = -450 },
          { x = 50, y = 150 }
        },
        properties = {}
      },
      {
        id = 1253,
        name = "",
        type = "",
        shape = "polygon",
        x = 700,
        y = 2200,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = -100 },
          { x = 200, y = 50 },
          { x = 100, y = 250 },
          { x = -50, y = 100 }
        },
        properties = {}
      },
      {
        id = 1254,
        name = "",
        type = "",
        shape = "polygon",
        x = 300,
        y = 2200,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = -100, y = 100 },
          { x = 0, y = 200 },
          { x = -150, y = 150 },
          { x = -200, y = 100 }
        },
        properties = {}
      },
      {
        id = 1255,
        name = "",
        type = "",
        shape = "polygon",
        x = -200,
        y = 1850,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 50 },
          { x = 150, y = 100 },
          { x = 50, y = 200 }
        },
        properties = {}
      },
      {
        id = 1256,
        name = "",
        type = "",
        shape = "polygon",
        x = -550,
        y = 1350,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 200 },
          { x = 0, y = 550 }
        },
        properties = {}
      },
      {
        id = 1257,
        name = "",
        type = "",
        shape = "polygon",
        x = -550,
        y = 2200,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 50 },
          { x = 100, y = 150 }
        },
        properties = {}
      },
      {
        id = 1258,
        name = "",
        type = "",
        shape = "polygon",
        x = -350,
        y = 2550,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = -50, y = 0 },
          { x = 150, y = 100 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 1259,
        name = "",
        type = "",
        shape = "polygon",
        x = -550,
        y = 2750,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = -50 },
          { x = 50, y = -50 },
          { x = 950, y = 0 },
          { x = 50, y = 150 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 1260,
        name = "",
        type = "",
        shape = "polygon",
        x = -200,
        y = 3300,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 100, y = -50 },
          { x = 900, y = -50 },
          { x = 1000, y = 100 },
          { x = 900, y = 150 }
        },
        properties = {}
      },
      {
        id = 1261,
        name = "",
        type = "",
        shape = "polygon",
        x = -200,
        y = 3300,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 100, y = -50 },
          { x = 1150, y = -300 },
          { x = 900, y = -50 }
        },
        properties = {}
      },
      {
        id = 1262,
        name = "",
        type = "",
        shape = "polygon",
        x = 950,
        y = 3050,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 250 },
          { x = 0, y = 1150 }
        },
        properties = {}
      },
      {
        id = 1263,
        name = "",
        type = "",
        shape = "polygon",
        x = 350,
        y = 3750,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -900, y = -250 },
          { x = -900, y = -50 }
        },
        properties = {}
      },
      {
        id = 1264,
        name = "",
        type = "",
        shape = "polygon",
        x = 350,
        y = 3750,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 200, y = 200 },
          { x = -50, y = 50 }
        },
        properties = {}
      },
      {
        id = 1265,
        name = "",
        type = "",
        shape = "polygon",
        x = 300,
        y = 3800,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -500, y = 0 },
          { x = -500, y = -50 }
        },
        properties = {}
      },
      {
        id = 1266,
        name = "",
        type = "",
        shape = "polygon",
        x = -200,
        y = 3800,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -350, y = 200 },
          { x = -350, y = 0 }
        },
        properties = {}
      },
      {
        id = 1267,
        name = "",
        type = "",
        shape = "polygon",
        x = -450,
        y = 4400,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 50 },
          { x = 100, y = 250 }
        },
        properties = {}
      },
      {
        id = 1268,
        name = "",
        type = "",
        shape = "polygon",
        x = -750,
        y = 4450,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 500, y = 250 },
          { x = 0, y = 250 }
        },
        properties = {}
      },
      {
        id = 1269,
        name = "",
        type = "",
        shape = "polygon",
        x = 307.143,
        y = 4700,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = -57.1429, y = 0 },
          { x = 342.857, y = -250 },
          { x = 342.857, y = 0 }
        },
        properties = {}
      },
      {
        id = 1270,
        name = "",
        type = "",
        shape = "polygon",
        x = 650,
        y = 4450,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 300, y = -250 },
          { x = 300, y = 0 }
        },
        properties = {}
      },
      {
        id = 1271,
        name = "",
        type = "",
        shape = "polygon",
        x = -350,
        y = 0,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 1300, y = 300 },
          { x = 1300, y = 0 }
        },
        properties = {}
      },
      {
        id = 1272,
        name = "",
        type = "",
        shape = "polygon",
        x = 950,
        y = 300,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 900 },
          { x = 50, y = 450 }
        },
        properties = {}
      },
      {
        id = 1273,
        name = "",
        type = "",
        shape = "polygon",
        x = 950,
        y = 1800,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 1250 },
          { x = 50, y = 600 }
        },
        properties = {}
      }
    
    }
  }
--[[
n
n
n
n
n
]]--
elseif id == 20 then
  return {
    type = "objectgroup",
    name = "Object Layer 20",
    
    
    
    
    
    
    objects = {
      {
        id = 1274,
        name = "",
        type = "",
        shape = "polygon",
        x = -850,
        y = 0,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 200, y = 200 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 1275,
        name = "",
        type = "",
        shape = "polygon",
        x = -850,
        y = 0,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 50 },
          { x = 150, y = 450 },
          { x = 0, y = 450 }
        },
        properties = {}
      },
      {
        id = 1276,
        name = "",
        type = "",
        shape = "polygon",
        x = -850,
        y = 450,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 200 },
          { x = 150, y = 200 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1277,
        name = "",
        type = "",
        shape = "polygon",
        x = -700,
        y = 650,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 100 },
          { x = -150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1278,
        name = "",
        type = "",
        shape = "polygon",
        x = -850,
        y = 750,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 200 },
          { x = -100, y = 0 }
        },
        properties = {}
      },
      {
        id = 1279,
        name = "",
        type = "",
        shape = "polygon",
        x = -950,
        y = 1300,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 1280,
        name = "",
        type = "",
        shape = "polygon",
        x = -800,
        y = 1600,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 400 },
          { x = 0, y = 400 }
        },
        properties = {}
      },
      {
        id = 1281,
        name = "",
        type = "",
        shape = "polygon",
        x = -650,
        y = 2000,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 200, y = 300 },
          { x = 0, y = 300 }
        },
        properties = {}
      },
      {
        id = 1282,
        name = "",
        type = "",
        shape = "polygon",
        x = -500,
        y = 2300,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 150 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 1283,
        name = "",
        type = "",
        shape = "polygon",
        x = -500,
        y = 2450,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 1284,
        name = "",
        type = "",
        shape = "polygon",
        x = -950,
        y = 950,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 350 },
          { x = -50, y = 200 }
        },
        properties = {}
      },
      {
        id = 1285,
        name = "",
        type = "",
        shape = "polygon",
        x = 950,
        y = 950,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 350 },
          { x = 50, y = 200 }
        },
        properties = {}
      },
      {
        id = 1286,
        name = "",
        type = "",
        shape = "polygon",
        x = 950,
        y = 1300,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 1287,
        name = "",
        type = "",
        shape = "polygon",
        x = 850,
        y = 1500,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = -100 },
          { x = -50, y = 100 }
        },
        properties = {}
      },
      {
        id = 1288,
        name = "",
        type = "",
        shape = "polygon",
        x = 800,
        y = 1600,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 400 },
          { x = 0, y = 400 }
        },
        properties = {}
      },
      {
        id = 1289,
        name = "",
        type = "",
        shape = "polygon",
        x = 650,
        y = 2000,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -200, y = 300 },
          { x = 0, y = 300 }
        },
        properties = {}
      },
      {
        id = 1290,
        name = "",
        type = "",
        shape = "polygon",
        x = 450,
        y = 2300,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 150 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 1291,
        name = "",
        type = "",
        shape = "polygon",
        x = 500,
        y = 2450,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 1292,
        name = "",
        type = "",
        shape = "polygon",
        x = 450,
        y = 2650,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -200, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 1293,
        name = "",
        type = "",
        shape = "polygon",
        x = -450,
        y = 2650,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 200, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 1294,
        name = "",
        type = "",
        shape = "polygon",
        x = 0,
        y = 1950,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -200, y = 50 },
          { x = -400, y = -300 }
        },
        properties = {}
      },
      {
        id = 1295,
        name = "",
        type = "",
        shape = "polygon",
        x = 0,
        y = 1950,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 200, y = 50 },
          { x = 400, y = -300 }
        },
        properties = {}
      },
      {
        id = 1296,
        name = "",
        type = "",
        shape = "polygon",
        x = 400,
        y = 1650,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -200, y = -150 },
          { x = -200, y = 0 }
        },
        properties = {}
      },
      {
        id = 1297,
        name = "",
        type = "",
        shape = "polygon",
        x = 200,
        y = 1500,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = -200 },
          { x = -150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1298,
        name = "",
        type = "",
        shape = "polygon",
        x = -50,
        y = 1300,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 1299,
        name = "",
        type = "",
        shape = "polygon",
        x = -200,
        y = 1500,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -200, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 1300,
        name = "",
        type = "",
        shape = "polygon",
        x = -50,
        y = 1300,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 0 },
          { x = 100, y = -350 },
          { x = 0, y = -350 }
        },
        properties = {}
      },
      {
        id = 1301,
        name = "",
        type = "",
        shape = "polygon",
        x = -50,
        y = 950,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = -200 },
          { x = -150, y = -200 }
        },
        properties = {}
      },
      {
        id = 1302,
        name = "",
        type = "",
        shape = "polygon",
        x = -200,
        y = 750,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = -100 },
          { x = -150, y = -100 }
        },
        properties = {}
      },
      {
        id = 1303,
        name = "",
        type = "",
        shape = "polygon",
        x = 50,
        y = 750,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 0 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 1304,
        name = "",
        type = "",
        shape = "polygon",
        x = 150,
        y = 650,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 100 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1305,
        name = "",
        type = "",
        shape = "polygon",
        x = 650,
        y = 650,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 250 },
          { x = 150, y = 100 }
        },
        properties = {}
      },
      {
        id = 1306,
        name = "",
        type = "",
        shape = "polygon",
        x = 800,
        y = 750,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 200 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1307,
        name = "",
        type = "",
        shape = "polygon",
        x = 950,
        y = 1050,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 150 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 1308,
        name = "",
        type = "",
        shape = "polygon",
        x = 150,
        y = 750,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 150 },
          { x = -50, y = 100 }
        },
        properties = {}
      },
      {
        id = 1309,
        name = "",
        type = "",
        shape = "polygon",
        x = 50,
        y = 950,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 1310,
        name = "",
        type = "",
        shape = "polygon",
        x = 350,
        y = 1300,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -200, y = 150 },
          { x = -150, y = 200 }
        },
        properties = {}
      },
      {
        id = 1311,
        name = "",
        type = "",
        shape = "polygon",
        x = -350,
        y = 500,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = -50 },
          { x = 100, y = 50 }
        },
        properties = {}
      },
      {
        id = 1312,
        name = "",
        type = "",
        shape = "polygon",
        x = -200,
        y = 550,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = -50 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 1313,
        name = "",
        type = "",
        shape = "polygon",
        x = 0,
        y = 600,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = -50 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 1314,
        name = "",
        type = "",
        shape = "polygon",
        x = 550,
        y = 400,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 100 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 1315,
        name = "",
        type = "",
        shape = "polygon",
        x = 600,
        y = 400,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 50 },
          { x = 50, y = 250 },
          { x = 50, y = 50 }
        },
        properties = {}
      },
      {
        id = 1316,
        name = "",
        type = "",
        shape = "polygon",
        x = 450,
        y = 200,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 200 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 1317,
        name = "",
        type = "",
        shape = "polygon",
        x = 450,
        y = 200,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 200 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 1318,
        name = "",
        type = "",
        shape = "polygon",
        x = 300,
        y = 200,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 100 },
          { x = 50, y = 50 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1319,
        name = "",
        type = "",
        shape = "polygon",
        x = 300,
        y = 200,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = -50 },
          { x = 0, y = -50 }
        },
        properties = {}
      },
      {
        id = 1320,
        name = "",
        type = "",
        shape = "polygon",
        x = 50,
        y = 150,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 100 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 1321,
        name = "",
        type = "",
        shape = "polygon",
        x = 50,
        y = 150,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = -50 },
          { x = 0, y = -50 }
        },
        properties = {}
      },
      {
        id = 1322,
        name = "",
        type = "",
        shape = "polygon",
        x = -200,
        y = 50,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 200, y = 100 },
          { x = 150, y = 50 }
        },
        properties = {}
      },
      {
        id = 1323,
        name = "",
        type = "",
        shape = "polygon",
        x = -200,
        y = 50,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 100 },
          { x = -150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1324,
        name = "",
        type = "",
        shape = "polygon",
        x = -350,
        y = 50,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = -50 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 1325,
        name = "",
        type = "",
        shape = "polygon",
        x = -250,
        y = 550,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 0 },
          { x = 0, y = 50 }
        },
        properties = {}
      },
      {
        id = 1326,
        name = "",
        type = "",
        shape = "polygon",
        x = -100,
        y = 550,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 50 },
          { x = 100, y = 50 }
        },
        properties = {}
      },
      {
        id = 1327,
        name = "",
        type = "",
        shape = "polygon",
        x = 50,
        y = 600,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 50, y = 0 },
          { x = 100, y = 50 },
          { x = 50, y = 50 }
        },
        properties = {}
      },
      {
        id = 1328,
        name = "",
        type = "",
        shape = "polygon",
        x = 150,
        y = 650,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = -50 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 1334,
        name = "",
        type = "",
        shape = "polygon",
        x = -350,
        y = 500,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 150 },
          { x = 50, y = 150 }
        },
        properties = {}
      },
      {
        id = 1537,
        name = "",
        type = "",
        shape = "polygon",
        x = -850,
        y = 1500,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 1538,
        name = "",
        type = "",
        shape = "polygon",
        x = 800,
        y = 1500,
        width = 0,
        height = 0,
        rotation = 0,
        visible = true,
        polygon = {
          { x = 50, y = 0 },
          { x = 50, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      }
    }
  }
--[[
n
n
n
n
n
]]--
elseif id == 21 then
  return 
    {
        type = "objectgroup",
        name = "Object Layer 21",
        
        
        
        
        
        
        objects = {
          {
            id = 1405,
            
            
            shape = "polygon",
            x = -250,
            y = 0,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = 550 },
              { x = -50, y = 550 }
            },
            properties = {}
          },
          {
            id = 1406,
            
            
            shape = "polygon",
            x = 250,
            y = 0,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = 300 },
              { x = 50, y = 300 }
            },
            properties = {}
          },
          {
            id = 1407,
            
            
            shape = "polygon",
            x = 350,
            y = 100,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = 200 },
              { x = 100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1408,
            
            
            shape = "polygon",
            x = 450,
            y = 50,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = 50 },
              { x = 50, y = 0 }
            },
            properties = {}
          },
          {
            id = 1409,
            
            
            shape = "polygon",
            x = 500,
            y = 0,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = 50 },
              { x = 100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1410,
            
            
            shape = "polygon",
            x = 600,
            y = 0,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 50 },
              { x = 100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1411,
            
            
            shape = "polygon",
            x = 700,
            y = 50,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 50, y = 50 },
              { x = 50, y = 0 }
            },
            properties = {}
          },
          {
            id = 1412,
            
            
            shape = "polygon",
            x = 750,
            y = 100,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 200 },
              { x = 100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1413,
            
            
            shape = "polygon",
            x = 850,
            y = 300,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 150 },
              { x = 100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1414,
            
            
            shape = "polygon",
            x = 950,
            y = 450,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 200 },
              { x = 0, y = 200 }
            },
            properties = {}
          },
          {
            id = 1415,
            
            
            shape = "polygon",
            x = 850,
            y = 650,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -150, y = 100 },
              { x = 0, y = 100 }
            },
            properties = {}
          },
          {
            id = 1416,
            
            
            shape = "polygon",
            x = 700,
            y = 750,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -900, y = 350 },
              { x = 0, y = 350 }
            },
            properties = {}
          },
          {
            id = 1417,
            
            
            shape = "polygon",
            x = -200,
            y = 1100,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = 400 },
              { x = 600, y = 0 }
            },
            properties = {}
          },
          {
            id = 1418,
            
            
            shape = "polygon",
            x = -200,
            y = 1500,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 950, y = 250 },
              { x = 950, y = 100 }
            },
            properties = {}
          },
          {
            id = 1419,
            
            
            shape = "polygon",
            x = 750,
            y = 1750,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 150 },
              { x = 100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1420,
            
            
            shape = "polygon",
            x = 850,
            y = 1900,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 500 },
              { x = 100, y = 50 }
            },
            properties = {}
          },
          {
            id = 1421,
            
            
            shape = "polygon",
            x = 950,
            y = 2400,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 550 },
              { x = 0, y = 550 }
            },
            properties = {}
          },
          {
            id = 1422,
            
            
            shape = "polygon",
            x = 900,
            y = 2950,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 350 },
              { x = 0, y = 350 }
            },
            properties = {}
          },
          {
            id = 1423,
            
            
            shape = "polygon",
            x = 850,
            y = 3300,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -200, y = 250 },
              { x = 0, y = 250 }
            },
            properties = {}
          },
          {
            id = 1424,
            
            
            shape = "polygon",
            x = 400,
            y = 3550,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 500, y = 150 },
              { x = 500, y = 0 }
            },
            properties = {}
          },
          {
            id = 1425,
            
            
            shape = "polygon",
            x = 900,
            y = 3700,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -350, y = 500 },
              { x = -50, y = 500 }
            },
            properties = {}
          },
          {
            id = 1426,
            
            
            shape = "polygon",
            x = 550,
            y = 4150,
            
            
            
            
            polygon = {
              { x = 0, y = 50 },
              { x = -300, y = 400 },
              { x = 0, y = 400 }
            },
            properties = {}
          },
          {
            id = 1427,
            
            
            shape = "polygon",
            x = -350,
            y = 4300,
            
            
            
            
            polygon = {
              { x = 0, y = 50 },
              { x = 100, y = 250 },
              { x = 0, y = 250 }
            },
            properties = {}
          },
          {
            id = 1428,
            
            
            shape = "polygon",
            x = -350,
            y = 4300,
            
            
            
            
            polygon = {
              { x = 0, y = 50 },
              { x = -550, y = -350 },
              { x = -500, y = 250 }
            },
            properties = {}
          },
          {
            id = 1429,
            
            
            shape = "polygon",
            x = -900,
            y = 3950,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 50, y = -500 },
              { x = -50, y = -450 }
            },
            properties = {}
          },
          {
            id = 1430,
            
            
            shape = "polygon",
            x = -850,
            y = 3450,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = -400 },
              { x = -50, y = 0 }
            },
            properties = {}
          },
          {
            id = 1431,
            
            
            shape = "polygon",
            x = -900,
            y = 3050,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 450, y = -300 },
              { x = 0, y = -450 }
            },
            properties = {}
          },
          {
            id = 1432,
            
            
            shape = "polygon",
            x = -900,
            y = 2600,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = -250 },
              { x = -50, y = 0 }
            },
            properties = {}
          },
          {
            id = 1433,
            
            
            shape = "polygon",
            x = -950,
            y = 2350,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = -1250 },
              { x = -50, y = -650 }
            },
            properties = {}
          },
          {
            id = 1434,
            
            
            shape = "polygon",
            x = -950,
            y = 1100,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 300, y = -400 },
              { x = 0, y = -400 }
            },
            properties = {}
          },
          {
            id = 1435,
            
            
            shape = "polygon",
            x = -650,
            y = 700,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 400, y = -150 },
              { x = 0, y = -150 }
            },
            properties = {}
          },
          {
            id = 1436,
            
            
            shape = "polygon",
            x = 250,
            y = 300,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = 100 },
              { x = 100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1437,
            
            
            shape = "polygon",
            x = -550,
            y = 1850,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 100 },
              { x = 50, y = 200 }
            },
            properties = {}
          },
          {
            id = 1438,
            
            
            shape = "polygon",
            x = -200,
            y = 1850,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 550, y = 150 },
              { x = 0, y = 150 }
            },
            properties = {}
          },
          {
            id = 1439,
            
            
            shape = "polygon",
            x = 350,
            y = 2000,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 100 },
              { x = 0, y = 100 }
            },
            properties = {}
          },
          {
            id = 1440,
            
            
            shape = "polygon",
            x = -200,
            y = 2100,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 650, y = 150 },
              { x = 650, y = 0 }
            },
            properties = {}
          },
          {
            id = 1441,
            
            
            shape = "polygon",
            x = 450,
            y = 2100,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 150, y = 600 },
              { x = 0, y = 600 }
            },
            properties = {}
          },
          {
            id = 1442,
            
            
            shape = "polygon",
            x = 450,
            y = 2450,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 250 },
              { x = 0, y = 250 }
            },
            properties = {}
          },
          {
            id = 1443,
            
            
            shape = "polygon",
            x = 400,
            y = 2700,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 150 },
              { x = 200, y = 0 }
            },
            properties = {}
          },
          {
            id = 1444,
            
            
            shape = "polygon",
            x = -550,
            y = 2400,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 350, y = 50 },
              { x = 350, y = 100 }
            },
            properties = {}
          },
          {
            id = 1445,
            
            
            shape = "polygon",
            x = -200,
            y = 2450,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 300, y = 50 },
              { x = 300, y = 250 }
            },
            properties = {}
          },
          {
            id = 1446,
            
            
            shape = "polygon",
            x = -200,
            y = 2500,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 300, y = 550 },
              { x = 300, y = 200 }
            },
            properties = {}
          },
          {
            id = 1448,
            
            
            shape = "polygon",
            x = -450,
            y = 3250,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 50 },
              { x = 0, y = 200 }
            },
            properties = {}
          },
          {
            id = 1449,
            
            
            shape = "polygon",
            x = -450,
            y = 3450,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 150 },
              { x = 0, y = 300 }
            },
            properties = {}
          },
          {
            id = 1450,
            
            
            shape = "polygon",
            x = -450,
            y = 3450,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 250, y = 150 },
              { x = 0, y = 300 }
            },
            properties = {}
          },
          {
            id = 1451,
            
            
            shape = "polygon",
            x = 100,
            y = 3750,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -300, y = 200 },
              { x = 200, y = 200 }
            },
            properties = {}
          },
          {
            id = 1452,
            
            
            shape = "polygon",
            x = 100,
            y = 3750,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 300, y = 100 },
              { x = 200, y = 200 }
            },
            properties = {}
          },
          {
            id = 1453,
            
            
            shape = "polygon",
            x = -200,
            y = 3950,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 200, y = 250 },
              { x = 200, y = 0 }
            },
            properties = {}
          },
          {
            id = 1454,
            
            
            shape = "polygon",
            x = 0,
            y = 4200,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 50, y = 0 },
              { x = 0, y = -100 }
            },
            properties = {}
          },
          {
            id = 1455,
            
            
            shape = "polygon",
            x = 50,
            y = 3950,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = 250 },
              { x = 250, y = 0 }
            },
            properties = {}
          },
          {
            id = 1456,
            
            
            shape = "polygon",
            x = -550,
            y = 1150,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 250 },
              { x = 0, y = 250 }
            },
            properties = {}
          },
          {
            id = 1457,
            
            
            shape = "polygon",
            x = -650,
            y = 1400,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 50 },
              { x = 100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1458,
            
            
            shape = "polygon",
            x = -200,
            y = 2000,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = 100 },
              { x = 100, y = 100 }
            },
            properties = {}
          },
          {
            id = 1539,
            
            
            shape = "polygon",
            x = 100,
            y = 3050,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -200, y = 200 },
              { x = 200, y = 200 }
            },
            properties = {}
          },
          {
            id = 1540,
            
            
            shape = "polygon",
            x = 50,
            y = 3300,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 50, y = 100 },
              { x = 0, y = 100 }
            },
            properties = {}
          },
          {
            id = 1541,
            
            
            shape = "polygon",
            x = 50,
            y = 3400,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -150, y = -150 },
              { x = 0, y = -150 }
            },
            properties = {}
          },
          {
            id = 1542,
            
            
            shape = "polygon",
            x = 100,
            y = 3250,
            
            
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = 150 },
              { x = 200, y = 0 }
            },
            properties = {}
          }
        }
      }
--[[
n
n
n
n
n
]]--
    elseif id == 22 then
      return{
        
          type = "objectgroup",
          name = "Object Layer 22",
          visible = false,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          draworder = "topdown",
          properties = {},
          objects = {
            {
              id = 1551,
              name = "",
              type = "",
              shape = "polygon",
              x = -850,
              y = 0,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 0, y = 150 },
                { x = -50, y = 150 }
              },
              properties = {}
            },
            {
              id = 1552,
              name = "",
              type = "",
              shape = "polygon",
              x = -850,
              y = 150,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 150, y = 100 },
                { x = 0, y = 100 }
              },
              properties = {}
            },
            {
              id = 1553,
              name = "",
              type = "",
              shape = "polygon",
              x = -700,
              y = 250,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 1100, y = 400 },
                { x = 0, y = 400 }
              },
              properties = {}
            },
            {
              id = 1554,
              name = "",
              type = "",
              shape = "polygon",
              x = -650,
              y = 950,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 1050, y = -300 },
                { x = 0, y = -300 }
              },
              properties = {}
            },
            {
              id = 1555,
              name = "",
              type = "",
              shape = "polygon",
              x = -650,
              y = 950,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -200, y = 300 },
                { x = -200, y = 0 }
              },
              properties = {}
            },
            {
              id = 1556,
              name = "",
              type = "",
              shape = "polygon",
              x = -350,
              y = 1250,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 900, y = -250 },
                { x = 900, y = 0 }
              },
              properties = {}
            },
            {
              id = 1557,
              name = "",
              type = "",
              shape = "polygon",
              x = 550,
              y = 1000,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 250, y = -200 },
                { x = 250, y = 0 }
              },
              properties = {}
            },
            {
              id = 1558,
              name = "",
              type = "",
              shape = "polygon",
              x = 800,
              y = 800,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = -150 },
                { x = 100, y = 0 }
              },
              properties = {}
            },
            {
              id = 1559,
              name = "",
              type = "",
              shape = "polygon",
              x = 900,
              y = 650,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -100, y = -150 },
                { x = 0, y = -150 }
              },
              properties = {}
            },
            {
              id = 1560,
              name = "",
              type = "",
              shape = "polygon",
              x = 800,
              y = 500,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -250, y = -200 },
                { x = 0, y = -200 }
              },
              properties = {}
            },
            {
              id = 1561,
              name = "",
              type = "",
              shape = "polygon",
              x = 550,
              y = 300,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -900, y = -300 },
                { x = 0, y = -300 }
              },
              properties = {}
            }
          }
      }
--[[
n
n
n
n
n
]]--
    elseif id == 23 then
      return{
        
          type = "objectgroup",
          name = "Object Layer 23",
          visible = false,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          draworder = "topdown",
          properties = {},
          objects = {
            {
              id = 1562,
              name = "",
              type = "",
              shape = "polygon",
              x = -250,
              y = 0,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -100, y = 200 },
                { x = -100, y = 0 }
              },
              properties = {}
            },
            {
              id = 1563,
              name = "",
              type = "",
              shape = "polygon",
              x = -350,
              y = 200,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = 350 },
                { x = 0, y = 350 }
              },
              properties = {}
            },
            {
              id = 1564,
              name = "",
              type = "",
              shape = "polygon",
              x = -250,
              y = 550,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 150, y = 100 },
                { x = 0, y = 100 }
              },
              properties = {}
            },
            {
              id = 1565,
              name = "",
              type = "",
              shape = "polygon",
              x = -100,
              y = 650,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 300, y = 100 },
                { x = 0, y = 100 }
              },
              properties = {}
            },
            {
              id = 1566,
              name = "",
              type = "",
              shape = "polygon",
              x = 200,
              y = 750,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = 50 },
                { x = 0, y = 50 }
              },
              properties = {}
            },
            {
              id = 1567,
              name = "",
              type = "",
              shape = "polygon",
              x = 300,
              y = 800,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 50, y = 550 },
                { x = 0, y = 550 }
              },
              properties = {}
            },
            {
              id = 1568,
              name = "",
              type = "",
              shape = "polygon",
              x = 250,
              y = 1350,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = 0 },
                { x = 0, y = 200 }
              },
              properties = {}
            },
            {
              id = 1569,
              name = "",
              type = "",
              shape = "polygon",
              x = 250,
              y = 1550,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = 450 },
                { x = 0, y = 450 }
              },
              properties = {}
            },
            {
              id = 1570,
              name = "",
              type = "",
              shape = "polygon",
              x = 300,
              y = 2000,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 50, y = 0 },
                { x = 0, y = 350 }
              },
              properties = {}
            },
            {
              id = 1571,
              name = "",
              type = "",
              shape = "polygon",
              x = 300,
              y = 2350,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 50, y = 150 },
                { x = 0, y = 150 }
              },
              properties = {}
            },
            {
              id = 1572,
              name = "",
              type = "",
              shape = "polygon",
              x = 250,
              y = 0,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 0, y = 100 },
                { x = 50, y = 100 }
              },
              properties = {}
            },
            {
              id = 1573,
              name = "",
              type = "",
              shape = "polygon",
              x = 250,
              y = 100,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 50, y = 150 },
                { x = 50, y = 0 }
              },
              properties = {}
            },
            {
              id = 1574,
              name = "",
              type = "",
              shape = "polygon",
              x = 300,
              y = 250,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 150, y = 50 },
                { x = 150, y = 0 }
              },
              properties = {}
            },
            {
              id = 1575,
              name = "",
              type = "",
              shape = "polygon",
              x = 450,
              y = 300,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 350, y = 100 },
                { x = 350, y = 0 }
              },
              properties = {}
            },
            {
              id = 1576,
              name = "",
              type = "",
              shape = "polygon",
              x = 800,
              y = 400,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 150, y = 350 },
                { x = 150, y = 0 }
              },
              properties = {}
            },
            {
              id = 1577,
              name = "",
              type = "",
              shape = "polygon",
              x = 950,
              y = 750,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -100, y = 450 },
                { x = 0, y = 450 }
              },
              properties = {}
            },
            {
              id = 1578,
              name = "",
              type = "",
              shape = "polygon",
              x = 900,
              y = 1200,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -50, y = 0 },
                { x = 0, y = 200 }
              },
              properties = {}
            },
            {
              id = 1579,
              name = "",
              type = "",
              shape = "polygon",
              x = 900,
              y = 1400,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -50, y = 400 },
                { x = 0, y = 400 }
              },
              properties = {}
            },
            {
              id = 1580,
              name = "",
              type = "",
              shape = "polygon",
              x = 850,
              y = 1800,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = 400 },
                { x = 100, y = 0 }
              },
              properties = {}
            },
            {
              id = 1581,
              name = "",
              type = "",
              shape = "polygon",
              x = 950,
              y = 2200,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -100, y = 300 },
                { x = 0, y = 300 }
              },
              properties = {}
            }
          }
        
      }
--[[
n
n
n
n
n
]]--
    elseif id == 24 then
      return{
        
          type = "objectgroup",
          name = "Object Layer 24",
          visible = false,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          draworder = "topdown",
          properties = {},
          objects = {
            {
              id = 1583,
              name = "",
              type = "",
              shape = "polygon",
              x = -250,
              y = 0,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 500, y = 500 },
                { x = 0, y = 500 }
              },
              properties = {}
            },
            {
              id = 1584,
              name = "",
              type = "",
              shape = "polygon",
              x = 0,
              y = 500,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 250, y = 0 },
                { x = 0, y = 250 }
              },
              properties = {}
            },
            {
              id = 1585,
              name = "",
              type = "",
              shape = "polygon",
              x = 0,
              y = 750,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 300, y = 350 },
                { x = 0, y = 350 }
              },
              properties = {}
            },
            {
              id = 1586,
              name = "",
              type = "",
              shape = "polygon",
              x = -450,
              y = 1100,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 750, y = 0 },
                { x = 0, y = 200 }
              },
              properties = {}
            },
            {
              id = 1587,
              name = "",
              type = "",
              shape = "polygon",
              x = -450,
              y = 1300,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 50, y = 200 },
                { x = 0, y = 200 }
              },
              properties = {}
            },
            {
              id = 1588,
              name = "",
              type = "",
              shape = "polygon",
              x = -400,
              y = 1500,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 450, y = 150 },
                { x = 0, y = 150 }
              },
              properties = {}
            },
            {
              id = 1589,
              name = "",
              type = "",
              shape = "polygon",
              x = 50,
              y = 1650,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 300, y = 400 },
                { x = 0, y = 400 }
              },
              properties = {}
            },
            {
              id = 1590,
              name = "",
              type = "",
              shape = "polygon",
              x = -50,
              y = 2050,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 400, y = 0 },
                { x = 0, y = 300 }
              },
              properties = {}
            },
            {
              id = 1591,
              name = "",
              type = "",
              shape = "polygon",
              x = -50,
              y = 2350,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 400, y = 200 },
                { x = 0, y = 200 }
              },
              properties = {}
            },
            {
              id = 1592,
              name = "",
              type = "",
              shape = "polygon",
              x = 250,
              y = 0,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 400, y = 100 },
                { x = 400, y = 0 }
              },
              properties = {}
            },
            {
              id = 1593,
              name = "",
              type = "",
              shape = "polygon",
              x = 650,
              y = 100,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 250, y = 400 },
                { x = 250, y = 0 }
              },
              properties = {}
            },
            {
              id = 1594,
              name = "",
              type = "",
              shape = "polygon",
              x = 900,
              y = 500,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -50, y = 750 },
                { x = 0, y = 750 }
              },
              properties = {}
            },
            {
              id = 1595,
              name = "",
              type = "",
              shape = "polygon",
              x = 850,
              y = 1250,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 50, y = 200 },
                { x = 50, y = 0 }
              },
              properties = {}
            },
            {
              id = 1596,
              name = "",
              type = "",
              shape = "polygon",
              x = 900,
              y = 1450,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -50, y = 400 },
                { x = 0, y = 400 }
              },
              properties = {}
            },
            {
              id = 1597,
              name = "",
              type = "",
              shape = "polygon",
              x = 850,
              y = 1850,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = 400 },
                { x = 100, y = 0 }
              },
              properties = {}
            },
            {
              id = 1598,
              name = "",
              type = "",
              shape = "polygon",
              x = 950,
              y = 2250,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -100, y = 300 },
                { x = 0, y = 300 }
              },
              properties = {}
            }
          }
      }
--[[
n
n
n
n
n
]]--
    elseif id == 25 then
      return{
        
          type = "objectgroup",
          name = "Object Layer 25",
          visible = false,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          draworder = "topdown",
          properties = {},
          objects = {
            {
              id = 1600,
              name = "",
              type = "",
              shape = "polygon",
              x = -250,
              y = 0,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -100, y = 150 },
                { x = -100, y = 0 }
              },
              properties = {}
            },
            {
              id = 1601,
              name = "",
              type = "",
              shape = "polygon",
              x = -350,
              y = 150,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -50, y = 200 },
                { x = -50, y = 0 }
              },
              properties = {}
            },
            {
              id = 1602,
              name = "",
              type = "",
              shape = "polygon",
              x = -400,
              y = 350,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = 200 },
                { x = 0, y = 200 }
              },
              properties = {}
            },
            {
              id = 1603,
              name = "",
              type = "",
              shape = "polygon",
              x = -300,
              y = 550,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 400, y = 200 },
                { x = 0, y = 200 }
              },
              properties = {}
            },
            {
              id = 1604,
              name = "",
              type = "",
              shape = "polygon",
              x = 100,
              y = 750,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -750, y = 250 },
                { x = -750, y = 0 }
              },
              properties = {}
            },
            {
              id = 1605,
              name = "",
              type = "",
              shape = "polygon",
              x = -650,
              y = 1000,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -150, y = 350 },
                { x = -150, y = 0 }
              },
              properties = {}
            },
            {
              id = 1607,
              name = "",
              type = "",
              shape = "polygon",
              x = -800,
              y = 1350,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 150, y = 250 },
                { x = 0, y = 250 }
              },
              properties = {}
            },
            {
              id = 1608,
              name = "",
              type = "",
              shape = "polygon",
              x = -650,
              y = 1600,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 950, y = 400 },
                { x = 0, y = 400 }
              },
              properties = {}
            },
            {
              id = 1609,
              name = "",
              type = "",
              shape = "polygon",
              x = 300,
              y = 2000,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 50, y = 150 },
                { x = 0, y = 150 }
              },
              properties = {}
            },
            {
              id = 1610,
              name = "",
              type = "",
              shape = "polygon",
              x = -200,
              y = 1300,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 1050, y = 350 },
                { x = 1050, y = 0 }
              },
              properties = {}
            },
            {
              id = 1611,
              name = "",
              type = "",
              shape = "polygon",
              x = -200,
              y = 1300,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 700, y = -250 },
                { x = 700, y = 0 }
              },
              properties = {}
            },
            {
              id = 1612,
              name = "",
              type = "",
              shape = "polygon",
              x = 500,
              y = 1050,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 150, y = -350 },
                { x = 150, y = 0 }
              },
              properties = {}
            },
            {
              id = 1613,
              name = "",
              type = "",
              shape = "polygon",
              x = 650,
              y = 700,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -150, y = -250 },
                { x = 0, y = -250 }
              },
              properties = {}
            },
            {
              id = 1614,
              name = "",
              type = "",
              shape = "polygon",
              x = 500,
              y = 450,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -350, y = -150 },
                { x = 0, y = -150 }
              },
              properties = {}
            },
            {
              id = 1615,
              name = "",
              type = "",
              shape = "polygon",
              x = 150,
              y = 300,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = -300 },
                { x = 100, y = 0 }
              },
              properties = {}
            },
            {
              id = 1616,
              name = "",
              type = "",
              shape = "polygon",
              x = 850,
              y = 1650,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = 200 },
                { x = 100, y = 0 }
              },
              properties = {}
            },
            {
              id = 1617,
              name = "",
              type = "",
              shape = "polygon",
              x = 950,
              y = 1850,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -100, y = 300 },
                { x = 0, y = 300 }
              },
              properties = {}
            }
          }
      }
--[[
n
n
n
n
n
]]--
    elseif id == 26 then
      return{
        objects = {
          {
            id = 1629,
            name = "",
            type = "",
            shape = "polygon",
            x = -850,
            y = 0,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = 50, y = 250 },
              { x = 0, y = 250 }
            },
            properties = {}
          },
          {
            id = 1630,
            name = "",
            type = "",
            shape = "polygon",
            x = -800,
            y = 250,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = 150, y = 100 },
              { x = 0, y = 100 }
            },
            properties = {}
          },
          {
            id = 1631,
            name = "",
            type = "",
            shape = "polygon",
            x = -650,
            y = 350,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = -150, y = 400 },
              { x = -150, y = 0 }
            },
            properties = {}
          },
          {
            id = 1632,
            name = "",
            type = "",
            shape = "polygon",
            x = -800,
            y = 750,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 500 },
              { x = -100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1633,
            name = "",
            type = "",
            shape = "polygon",
            x = -900,
            y = 1250,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = 200, y = 450 },
              { x = 0, y = 450 }
            },
            properties = {}
          },
          {
            id = 1634,
            name = "",
            type = "",
            shape = "polygon",
            x = -700,
            y = 1700,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = 250, y = 300 },
              { x = 0, y = 300 }
            },
            properties = {}
          },
          {
            id = 1635,
            name = "",
            type = "",
            shape = "polygon",
            x = -450,
            y = 2000,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = 200, y = 450 },
              { x = 0, y = 450 }
            },
            properties = {}
          },
          {
            id = 1636,
            name = "",
            type = "",
            shape = "polygon",
            x = 450,
            y = 2000,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = -200, y = 450 },
              { x = 0, y = 450 }
            },
            properties = {}
          },
          {
            id = 1637,
            name = "",
            type = "",
            shape = "polygon",
            x = 700,
            y = 1700,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = -250, y = 300 },
              { x = 0, y = 300 }
            },
            properties = {}
          },
          {
            id = 1638,
            name = "",
            type = "",
            shape = "polygon",
            x = 900,
            y = 1250,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = -200, y = 450 },
              { x = 0, y = 450 }
            },
            properties = {}
          },
          {
            id = 1639,
            name = "",
            type = "",
            shape = "polygon",
            x = 900,
            y = 1250,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = -500 },
              { x = 0, y = -500 }
            },
            properties = {}
          },
          {
            id = 1640,
            name = "",
            type = "",
            shape = "polygon",
            x = 800,
            y = 750,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = -150, y = -400 },
              { x = 0, y = -400 }
            },
            properties = {}
          },
          {
            id = 1641,
            name = "",
            type = "",
            shape = "polygon",
            x = 650,
            y = 350,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = -300, y = -250 },
              { x = 0, y = -250 }
            },
            properties = {}
          },
          {
            id = 1642,
            name = "",
            type = "",
            shape = "polygon",
            x = 350,
            y = 100,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = -350, y = -50 },
              { x = 0, y = -50 }
            },
            properties = {}
          },
          {
            id = 1643,
            name = "",
            type = "",
            shape = "polygon",
            x = 0,
            y = 50,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = -350, y = 50 },
              { x = -350, y = 0 }
            },
            properties = {}
          },
          {
            id = 1644,
            name = "",
            type = "",
            shape = "polygon",
            x = -350,
            y = 50,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = -50 },
              { x = 50, y = 0 }
            },
            properties = {}
          },
          {
            id = 1645,
            name = "",
            type = "",
            shape = "polygon",
            x = 0,
            y = 50,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = -350, y = 650 },
              { x = 350, y = 650 }
            },
            properties = {}
          },
          {
            id = 1646,
            name = "",
            type = "",
            shape = "polygon",
            x = 0,
            y = 1850,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = -350, y = -650 },
              { x = 350, y = -650 }
            },
            properties = {}
          }
        }
      }
--[[
n
n
n
n
n
]]--
    elseif id == 27 then
      return {
        objects = {
          {
            id = 1651,
            name = "",
            type = "",
            shape = "polygon",
            x = -850,
            y = 0,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 350 },
              { x = -100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1652,
            name = "",
            type = "",
            shape = "polygon",
            x = -450,
            y = 350,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 0 },
              { x = 100, y = -350 }
            },
            properties = {}
          },
          {
            id = 1653,
            name = "",
            type = "",
            shape = "polygon",
            x = -950,
            y = 350,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = 300 },
              { x = -50, y = 200 }
            },
            properties = {}
          },
          {
            id = 1654,
            name = "",
            type = "",
            shape = "polygon",
            x = -950,
            y = 650,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = 1400, y = 500 },
              { x = 0, y = 500 }
            },
            properties = {}
          },
          {
            id = 1655,
            name = "",
            type = "",
            shape = "polygon",
            x = 350,
            y = 1150,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = 350 },
              { x = 100, y = 0 }
            },
            properties = {}
          },
          {
            id = 1656,
            name = "",
            type = "",
            shape = "polygon",
            x = 950,
            y = 1150,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 350 },
              { x = 0, y = 350 }
            },
            properties = {}
          },
          {
            id = 1657,
            name = "",
            type = "",
            shape = "polygon",
            x = 950,
            y = 1150,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = 0, y = -350 },
              { x = 50, y = -200 }
            },
            properties = {}
          },
          {
            id = 1658,
            name = "",
            type = "",
            shape = "polygon",
            x = 950,
            y = 800,
            width = 0,
            height = 0,
            rotation = 0,
            visible = true,
            polygon = {
              { x = 0, y = 0 },
              { x = -1400, y = -450 },
              { x = 0, y = -450 }
            },
            properties = {}
          }
        }
      }
end
end