function getspikeydata(id)
  if id == 1 then
    return {
    
    }
  elseif id == 2 then
    return {
      {x = -50,
      y = 250}
    }

  elseif id == 3 then
    return {
      {x = -50,
      y = 150}
    }
    
  elseif id == 4 then
    return {
      {x = -50,
      y = 150}
      
    }
    
  elseif id == 5 then
    return {
      {x = -50,
      y = 500}
    }
    
  elseif id == 6 then
    return {
      {x = -50,
      y = 300}
      
    }
    
  elseif id == 7 then
    return {
      {x = -300,
      y = 300},
      {x = 200,
      y = 300}
    }
  
  elseif id == 8 then
    return {
      {x = 500,
      y = 950}
    }
    
  elseif id == 9 then
    return {
      {x = 300,
      y = 400}
    }
    
  elseif id == 10 then
    return {
      
    }
    
  elseif id == 11 then
    return {
      
    }
    
  elseif id == 12 then
    return {
      
    }
    
  elseif id == 13 then
    return {
      {x = 100,
      y = 400}
    }
    
  elseif id == 14 then
    return {
      
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
      {x = -200,
      y = 500}
    }
    
  elseif id == 19 then
    return {
      {x = 250,
      y = 750},
      {x = -350,
      y = 750}
    }
    
  elseif id == 20 then
    return {
      {x = 50,
      y = 1150}
    }
    
  elseif id == 21 then
    
  elseif id == 22 then
  return{
    {x = -450,
    y = 300}
  }
  elseif id == 23 then
    
  elseif id == 24 then
    
  elseif id == 25 then
    
  elseif id == 26 then
  
  end
end

function getfooddata(id)
  if id == 1 then
    return {
      {x = -400,
      y = 400},
      {x = 400,
      y = 650}
    }
  elseif id == 2 then
    return {
    {x = -50,
    y = 500},
    {x = -450,
      y = 500},
      {x = 350,
      y = 500}
    }
       -- no valid spots
  elseif id == 3 then
    return 
    {x = 250,
    y = 550},
    {x = -300,
    y = 550}
       -- no valid spots
  elseif id == 4 then
    return{
      {x = -150,
      y = 600},
      {x = 150,
      y = 450},
      {x = 250,
      y = 1000}
       
    }
  elseif id == 5 then
    return{
      {x = -400,
      y = 550},
      {x = 350,
      y = 550}
      
    }
  elseif id == 6 then
    return{
      {x = -50,
      y = 550},
      {x = -400,
      y = 550}
      
    }
  elseif id == 7 then
    return{
      {x = -400,
      y = 550},
      {x = 350,
      y = 550}

    }
  elseif id == 8 then
    return{
      {x = -250,
      y = 1050},
      {x = 250,
      y = 300},
      {x = 450,
      y = 600}
      
    }
  elseif id == 9 then
    return{
      {x = -500,
      y = 400},
      {x = -300,
      y = 400},
      {x = -100,
      y = 400},
      {x = 450,
      y = 150}
       
    }
  elseif id == 10 then
    return{
      {x = 0,
      y = 400}
      
    }
  elseif id == 11 then
    return{
      {x = -500,
      y = 100},
      {x = -300,
      y = 400},
      {x = -100,
      y = 400}
      
    }
  elseif id == 12 then
    return{
      {x = 450,
      y = 450},
      {x = -50,
      y = 150}
      
    }
  elseif id == 13 then
    return nil

  elseif id == 14 then
    return{
      {x = -450,
      y = 100},
      {x = 500,
      y = 400}
    
    }
  elseif id == 15 then
    return{
      {x = -400,
      y = 100},
      {x = 500,
      y = 400}
    }
  elseif id == 16 then
    return{
      {x = 0,
      y = 650}
    }
  elseif id == 17 then
    return{
      {x = 0,
      y = 600},
      {x = 300,
      y = 250}
    }
  elseif id == 18 then
    return{
      {x = 250,
      y = 650}
    }
  elseif id == 19 then
    return{
      {x = 300,
      y = 1100},
      {x = -400,
      y = 1100}
    }
  elseif id == 20 then
    return{
      {x = 100,
      y = 650},
      {x = -550,
      y = 1000},
      {x = -400,
      y = 200}
    }
  elseif id == 21 then
    return nil
  elseif id == 22 then
    return{
    {x = 350,
    y = 300}
    }
  end
end
function getexitid(id)
  -- enter, exit
  if id == 1 then
    return 3,3
  elseif id == 2 then
    return 2,2
  elseif id == 3 then
    return 2,2
  elseif id == 4 then
    return 3,1
  elseif id == 5 then
    return 2,2
  elseif id == 6 then
    return 2,2
  elseif id == 7 then
    return 2,2
  elseif id == 8 then
    return 1,1
  elseif id == 9 then
    return 3,3
  elseif id == 10 then
    return 3,1
  elseif id == 11 then
    return 3,3
  elseif id == 12 then
    return 1,2
  elseif id == 13 then
    return 2,3
  elseif id == 14 then
    return 1,1
  elseif id == 15 then
    return 2,1
  elseif id == 16 then
    return 1,3
  elseif id == 17 then
    return 1,3
  elseif id == 18 then
    return 2,1
  elseif id == 19 then
    return 2,3
  elseif id == 20 then
    return 3,1
  elseif id == 21 then
    return 3,1
  elseif id == 22 then
    return 
  end
end

function getmapheight(id)
  if id == 1 then
    return 850
  elseif id == 2 then
    return 1050
  elseif id == 3 then
    return 1050
  elseif id == 4 then
    return 1650--900
  elseif id == 5 then
    return 1050
  elseif id == 6 then
    return 1350
  elseif id == 7 then
    return 1600--900
  elseif id == 8 then
    return 1350--900
  elseif id == 9 then
    return 900
  elseif id == 10 then
    return 850
  elseif id == 11 then
    return 900
  elseif id == 12 then
    return 850
  elseif id == 13 then
    return 850
  elseif id == 14 then
    return 950
  elseif id == 15 then
    return 850
  elseif id == 16 then
    return 1100
  elseif id == 17 then
    return 1450
  elseif id == 18 then
    return 450
  elseif id == 19 then
    return 2050
  elseif id == 20 then
    return 1550
  elseif id == 21 then
    return 900
  elseif id == 22 then
    return 900
  end
end
function getmapdata(id)
    if id == 1 then
return
{
  
  name = "Object Layer 1",
  
  
  
  
  
  
  objects = {
    {
      id = 2,
      
      
      
      x = -600,
      y = 0,
      
     
      
      
      polygon = {
        { x = 0, y = 0 },
        { x = 800, y = 0 },
        { x = 400, y = 100 }
      },
      properties = {}
    },
    {
      id = 3,
      
      
      
      x = -600,
      y = 0,
      
     
      
      
      polygon = {
        { x = 0, y = 0 },
        { x = 400, y = 100 },
        { x = 150, y = 300 }
      },
      properties = {}
    },
    {
      id = 5,
      
      
      
      x = -600,
      y = 700,
      
     
      
      
      polygon = {
        { x = 0, y = 0 },
        { x = 200, y = -50 },
        { x = 700, y = 150 }
      },
      properties = {}
    },
    {
      id = 9,
      
      
      
      x = 500,
      y = 0,
      
     
      
      
      polygon = {
        { x = 0, y = 0 },
        { x = -150, y = 250 },
        { x = 0, y = 200 }
      },
      properties = {}
    },
    {
      id = 10,
      
      
      
      x = 350,
      y = 200,
      
     
      
      
      polygon = {
        { x = 0, y = 50 },
        { x = -350, y = 200 },
        { x = -250, y = 350 }
      },
      properties = {}
    },
    {
      id = 11,
      
      
      
      x = 100,
      y = 550,
      
     
      
      
      polygon = {
        { x = 0, y = 0 },
        { x = 250, y = 100 },
        { x = 550, y = 50 }
      },
      properties = {}
    },
    {
      id = 12,
      
      
      
      x = 500,
      y = 850,
      
     
      
      
      polygon = {
        { x = 0, y = 0 },
        { x = 100, y = -250 },
        { x = 100, y = 0 }
      },
      properties = {}
    },
    {
      id = 143,
      
      
      
      x = -600,
      y = 0,
      
     
      
      
      polygon = {
        { x = 50, y = 500 },
        { x = 150, y = 300 },
        { x = 200, y = 650 }
      },
      properties = {}
    },
    {
      id = 770,
      
      
      
      x = -50,
      y = 800,
      
     
      
      
      polygon = {
        { x = 0, y = 0 },
        { x = 250, y = 50 },
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

elseif id == 2 then
  return
  {
  
    name = "Object Layer 2",
    
    
    
    
    
    
    objects = {
      {
        id = 14,
        
        
        
        x = -150,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -200, y = 150 },
          { x = -450, y = 0 }
        },
        properties = {}
      },
      {
        id = 15,
        
        
        
        x = -600,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 250, y = 150 },
          { x = 100, y = 400 }
        },
        properties = {}
      },
      {
        id = 17,
        
        
        
        x = -600,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 400 },
          { x = 100, y = 700 }
        },
        properties = {}
      },
      {
        id = 18,
        
        
        
        x = -500,
        y = 700,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 250 },
          { x = 0, y = 250 }
        },
        properties = {}
      },
      {
        id = 19,
        
        
        
        x = -350,
        y = 950,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 200, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 20,
        
        
        
        x = 200,
        y = 0,
        
       
        
        
        polygon = {
          { x = -50, y = 0 },
          { x = 150, y = 0 },
          { x = 150, y = 150 }
        },
        properties = {}
      },
      {
        id = 21,
        
        
        
        x = 350,
        y = 150,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 250 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 22,
        
        
        
        x = 500,
        y = 400,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 300 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 23,
        
        
        
        x = 500,
        y = 700,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 250 },
          { x = 0, y = 250 }
        },
        properties = {}
      },
      {
        id = 24,
        
        
        
        x = 350,
        y = 950,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -200, y = 100 },
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
  elseif id == 3 then
   return {
  
    name = "Object Layer 3",
    
    
    
    
    
    
    objects = {
      {
        id = 127,
        
        
        
        x = -150,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -200, y = 150 },
          { x = -450, y = 0 }
        },
        properties = {}
      },
      {
        id = 128,
        
        
        
        x = -600,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 250, y = 150 },
          { x = 100, y = 400 }
        },
        properties = {}
      },
      {
        id = 129,
        
        
        
        x = -600,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 400 },
          { x = 100, y = 700 }
        },
        properties = {}
      },
      {
        id = 130,
        
        
        
        x = -500,
        y = 700,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 250 },
          { x = 0, y = 250 }
        },
        properties = {}
      },
      {
        id = 132,
        
        
        
        x = 200,
        y = 0,
        
       
        
        
        polygon = {
          { x = -50, y = 0 },
          { x = 150, y = 0 },
          { x = 150, y = 150 }
        },
        properties = {}
      },
      {
        id = 133,
        
        
        
        x = 350,
        y = 150,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 250 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 134,
        
        
        
        x = 500,
        y = 400,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 300 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 135,
        
        
        
        x = 500,
        y = 700,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 250 },
          { x = 0, y = 250 }
        },
        properties = {}
      },
      {
        id = 174,
        
        
        
        x = 350,
        y = 950,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -200, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 175,
        
        
        
        x = -350,
        y = 950,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 200, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 179,
        
        
        
        x = 0,
        y = 200,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 200, y = 350 },
          { x = 0, y = 650 },
          { x = -200, y = 350 }
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
  
    name = "Object Layer 4",
    
    
    
    
    
    
    objects = {
      {
        id = 145,
        
        
        
        x = -400,
        y = 50,
        
       
        
        
        polygon = {
          { x = -100, y = -50 },
          { x = -150, y = 100 },
          { x = -150, y = -50 }
        },
        properties = {}
      },
      {
        id = 146,
        
        
        
        x = -450,
        y = 150,
        
       
        
        
        polygon = {
          { x = -100, y = 0 },
          { x = -50, y = 150 },
          { x = -100, y = 150 }
        },
        properties = {}
      },
      {
        id = 147,
        
        
        
        x = -100,
        y = 0,
        
       
        
        
        polygon = {
          { x = -102.778, y = 0 },
          { x = 0, y = 102.778 },
          { x = 0, y = 0 }
        },
        properties = {}
      },
      {
        id = 148,
        
        
        
        x = -500,
        y = 300,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 250, y = 50 },
          { x = 0, y = 50 }
        },
        properties = {}
      },
      {
        id = 149,
        
        
        
        x = -100,
        y = 102.778,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 205.556, y = 51.3889 },
          { x = 205.556, y = 0 }
        },
        properties = {}
      },
      {
        id = 150,
        
        
        
        x = 156.944,
        y = 154.167,
        
       
        
        
        polygon = {
          { x = -51.3889, y = 0 },
          { x = 51.3889, y = 154.167 },
          { x = 51.3889, y = 0 }
        },
        properties = {}
      },
      {
        id = 151,
        
        
        
        x = -200,
        y = 350,
        
       
        
        
        polygon = {
          { x = -50, y = 0 },
          { x = 50, y = 50 },
          { x = -50, y = 50 }
        },
        properties = {}
      },
      {
        id = 152,
        
        
        
        x = -150,
        y = 400,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 300 },
          { x = -50, y = 0 }
        },
        properties = {}
      },
      {
        id = 153,
        
        
        
        x = -200,
        y = 700,
        
       
        
        
        polygon = {
          { x = 0, y = -50 },
          { x = 50, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 160,
        
        
        
        x = -150,
        y = 850,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 161,
        
        
        
        x = -50,
        y = 1050,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 200, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 163,
        
        
        
        x = 0,
        y = 1100,
        
       
        
        
        polygon = {
          { x = 0, y = 50 },
          { x = 200, y = 50 },
          { x = 100, y = 100 }
        },
        properties = {}
      },
      {
        id = 166,
        
        
        
        x = 250,
        y = 1100,
        
       
        
        
        polygon = {
          { x = 0, y = 50 },
          { x = -50, y = 250 },
          { x = -50, y = 50 }
        },
        properties = {}
      },
      {
        id = 168,
        
        
        
        x = 200,
        y = 1250,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 250 },
          { x = 0, y = 250 }
        },
        properties = {}
      },
      {
        id = 171,
        
        
        
        x = 250,
        y = 1500,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 200 },
          { x = -50, y = 0 }
        },
        properties = {}
      },
      {
        id = 720,
        
        
        
        x = 50,
        y = 1100,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 50 },
          { x = 0, y = 50 }
        },
        properties = {}
      },
      {
        id = 760,
        
        
        
        x = 200,
        y = 300,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 500 },
          { x = 0, y = 500 }
        },
        properties = {}
      },
      {
        id = 761,
        
        
        
        x = 150,
        y = 800,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 50 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 762,
        
        
        
        x = 300,
        y = 850,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 250, y = -50 },
          { x = 0, y = -50 }
        },
        properties = {}
      },
      {
        id = 763,
        
        
        
        x = 450,
        y = 800,
        
       
        
        
        polygon = {
          { x = -50, y = 0 },
          { x = 150, y = 100 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 764,
        
        
        
        x = 550,
        y = 850,
        
       
        
        
        polygon = {
          { x = -50, y = -50 },
          { x = 50, y = 300 },
          { x = 50, y = -50 }
        },
        properties = {}
      },
      {
        id = 765,
        
        
        
        x = 600,
        y = 1050,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 300 },
          { x = 0, y = 300 }
        },
        properties = {}
      },
      {
        id = 767,
        
        
        
        x = 550,
        y = 1350,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 350 },
          { x = 0, y = 350 }
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
  return {
  
    name = "Object Layer 5",
    
    
    
    
    
    
    objects = {
      {
        id = 253,
        
        
        
        x = -150,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -200, y = 150 },
          { x = -450, y = 0 }
        },
        properties = {}
      },
      {
        id = 254,
        
        
        
        x = -600,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 250, y = 150 },
          { x = 100, y = 400 }
        },
        properties = {}
      },
      {
        id = 255,
        
        
        
        x = -600,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 400 },
          { x = 100, y = 700 }
        },
        properties = {}
      },
      {
        id = 256,
        
        
        
        x = -500,
        y = 700,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 250 },
          { x = 0, y = 250 }
        },
        properties = {}
      },
      {
        id = 257,
        
        
        
        x = -350,
        y = 950,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 200, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 258,
        
        
        
        x = 200,
        y = 0,
        
       
        
        
        polygon = {
          { x = -50, y = 0 },
          { x = 400, y = 0 },
          { x = 150, y = 150 }
        },
        properties = {}
      },
      {
        id = 259,
        
        
        
        x = 350,
        y = 150,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 250 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 260,
        
        
        
        x = 500,
        y = 400,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 300 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 261,
        
        
        
        x = 500,
        y = 700,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 250 },
          { x = 0, y = 250 }
        },
        properties = {}
      },
      {
        id = 262,
        
        
        
        x = 350,
        y = 950,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -200, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 263,
        
        
        
        x = -150,
        y = 300,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 250 },
          { x = 0, y = 500 }
        },
        properties = {}
      },
      {
        id = 264,
        
        
        
        x = 150,
        y = 300,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 500 },
          { x = 100, y = 250 }
        },
        properties = {}
      },
      {
        id = 265,
        
        
        
        x = -150,
        y = 300,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 250 },
          { x = 0, y = 450 }
        },
        properties = {}
      },
      {
        id = 266,
        
        
        
        x = 150,
        y = 300,
        
       
        
        
        polygon = {
          { x = 0, y = 50 },
          { x = -50, y = 200 },
          { x = 0, y = 500 }
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
  
      name = "Object Layer 6",
      
      
      
      
      
      
      objects = {
        {
          id = 267,
          
          
          
          x = -100,
          y = 0,
          
         
          
          
          polygon = {
            { x = -50, y = 0 },
            { x = -150, y = 100 },
            { x = -150, y = 0 }
          },
          properties = {}
        },
        {
          id = 268,
          
          
          
          x = 100,
          y = 0,
          
         
          
          
          polygon = {
            { x = 50, y = 0 },
            { x = 150, y = 0 },
            { x = 150, y = 100 }
          },
          properties = {}
        },
        {
          id = 269,
          
          
          
          x = -250,
          y = 100,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -250, y = 0 },
            { x = -250, y = 100 }
          },
          properties = {}
        },
        {
          id = 270,
          
          
          
          x = 250,
          y = 100,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 250, y = 100 },
            { x = 250, y = 0 }
          },
          properties = {}
        },
        {
          id = 271,
          
          
          
          x = -100,
          y = 250,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 50 },
            { x = 0, y = 50 }
          },
          properties = {}
        },
        {
          id = 272,
          
          
          
          x = 100,
          y = 250,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 50 },
            { x = 0, y = 50 }
          },
          properties = {}
        },
        {
          id = 273,
          
          
          
          x = -100,
          y = 300,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 350 },
            { x = -50, y = 0 }
          },
          properties = {}
        },
        {
          id = 274,
          
          
          
          x = 100,
          y = 300,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 350 },
            { x = 50, y = 0 }
          },
          properties = {}
        },
        {
          id = 275,
          
          
          
          x = -500,
          y = 200,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 350 },
            { x = -100, y = 0 }
          },
          properties = {}
        },
        {
          id = 276,
          
          
          
          x = -600,
          y = 450,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 350 },
            { x = 0, y = 350 }
          },
          properties = {}
        },
        {
          id = 277,
          
          
          
          x = -200,
          y = 300,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 250 },
            { x = 50, y = 0 }
          },
          properties = {}
        },
        {
          id = 278,
          
          
          
          x = 150,
          y = 300,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 250 },
            { x = 50, y = 0 }
          },
          properties = {}
        },
        {
          id = 279,
          
          
          
          x = -150,
          y = 550,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 400 },
            { x = 0, y = 400 }
          },
          properties = {}
        },
        {
          id = 280,
          
          
          
          x = 150,
          y = 550,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 400 },
            { x = 0, y = 400 }
          },
          properties = {}
        },
        {
          id = 281,
          
          
          
          x = 150,
          y = 550,
          
         
          
          
          polygon = {
            { x = 0, y = -100 },
            { x = 50, y = 400 },
            { x = 0, y = 400 }
          },
          properties = {}
        },
        {
          id = 282,
          
          
          
          x = -150,
          y = 550,
          
         
          
          
          polygon = {
            { x = 0, y = -100 },
            { x = -50, y = 400 },
            { x = 0, y = 400 }
          },
          properties = {}
        },
        {
          id = 344,
          
          
          
          x = 500,
          y = 200,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 0 },
            { x = 100, y = 350 }
          },
          properties = {}
        },
        {
          id = 345,
          
          
          
          x = 600,
          y = 450,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 350 },
            { x = 0, y = 350 }
          },
          properties = {}
        },
        {
          id = 346,
          
          
          
          x = -200,
          y = 900,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 50 },
            { x = 0, y = 50 }
          },
          properties = {}
        },
        {
          id = 347,
          
          
          
          x = 200,
          y = 900,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 50 },
            { x = 0, y = 50 }
          },
          properties = {}
        },
        {
          id = 348,
          
          
          
          x = -250,
          y = 950,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 100 },
            { x = 50, y = 0 }
          },
          properties = {}
        },
        {
          id = 349,
          
          
          
          x = 250,
          y = 950,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 100 },
            { x = -50, y = 0 }
          },
          properties = {}
        },
        {
          id = 350,
          
          
          
          x = -200,
          y = 1050,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = -50 },
            { x = 0, y = -50 }
          },
          properties = {}
        },
        {
          id = 351,
          
          
          
          x = 200,
          y = 1050,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = -50 },
            { x = 0, y = -50 }
          },
          properties = {}
        },
        {
          id = 352,
          
          
          
          x = -100,
          y = 950,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 50 },
            { x = -50, y = 50 }
          },
          properties = {}
        },
        {
          id = 353,
          
          
          
          x = 100,
          y = 950,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 50 },
            { x = 50, y = 50 }
          },
          properties = {}
        },
        {
          id = 354,
          
          
          
          x = -550,
          y = 800,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 250 },
            { x = 0, y = 250 }
          },
          properties = {}
        },
        {
          id = 355,
          
          
          
          x = 550,
          y = 800,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 250 },
            { x = 0, y = 250 }
          },
          properties = {}
        },
        {
          id = 356,
          
          
          
          x = -500,
          y = 1050,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 150 },
            { x = 0, y = 150 }
          },
          properties = {}
        },
        {
          id = 357,
          
          
          
          x = 500,
          y = 1050,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 150 },
            { x = 0, y = 150 }
          },
          properties = {}
        },
        {
          id = 358,
          
          
          
          x = -400,
          y = 1200,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 200, y = 100 },
            { x = 0, y = 100 }
          },
          properties = {}
        },
        {
          id = 359,
          
          
          
          x = 400,
          y = 1200,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -200, y = 100 },
            { x = 0, y = 100 }
          },
          properties = {}
        },
        {
          id = 360,
          
          
          
          x = -200,
          y = 1300,
          
         
          
          
          polygon = {
            { x = -50, y = 0 },
            { x = 50, y = 0 },
            { x = -50, y = 50 }
          },
          properties = {}
        },
        {
          id = 361,
          
          
          
          x = 200,
          y = 1300,
          
         
          
          
          polygon = {
            { x = 50, y = 0 },
            { x = -50, y = 0 },
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
elseif id == 7 then
  return {
  
    name = "Object Layer 7",
    
    
    
    
    
    
    objects = {
      {
        id = 506,
        
        
        
        x = -100,
        y = 0,
        
       
        
        
        polygon = {
          { x = -50, y = 0 },
          { x = -200, y = 100 },
          { x = -200, y = 0 }
        },
        properties = {}
      },
      {
        id = 507,
        
        
        
        x = 100,
        y = 0,
        
       
        
        
        polygon = {
          { x = 50, y = 0 },
          { x = 200, y = 0 },
          { x = 200, y = 100 }
        },
        properties = {}
      },
      {
        id = 508,
        
        
        
        x = -250,
        y = 100,
        
       
        
        
        polygon = {
          { x = -50, y = 0 },
          { x = -250, y = 0 },
          { x = -250, y = 100 }
        },
        properties = {}
      },
      {
        id = 509,
        
        
        
        x = 250,
        y = 100,
        
       
        
        
        polygon = {
          { x = 50, y = 0 },
          { x = 250, y = 100 },
          { x = 250, y = 0 }
        },
        properties = {}
      },
      {
        id = 510,
        
        
        
        x = -100,
        y = 250,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 50 },
          { x = 0, y = 50 }
        },
        properties = {}
      },
      {
        id = 511,
        
        
        
        x = 100,
        y = 250,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 50 },
          { x = 0, y = 50 }
        },
        properties = {}
      },
      {
        id = 514,
        
        
        
        x = -500,
        y = 200,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 350 },
          { x = -100, y = 0 }
        },
        properties = {}
      },
      {
        id = 515,
        
        
        
        x = -600,
        y = 450,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 350 },
          { x = 0, y = 350 }
        },
        properties = {}
      },
      {
        id = 516,
        
        
        
        x = -200,
        y = 300,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 250 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 517,
        
        
        
        x = 150,
        y = 300,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 250 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 520,
        
        
        
        x = 150,
        y = 550,
        
       
        
        
        polygon = {
          { x = 0, y = -100 },
          { x = 50, y = 400 },
          { x = 0, y = 400 }
        },
        properties = {}
      },
      {
        id = 521,
        
        
        
        x = -150,
        y = 550,
        
       
        
        
        polygon = {
          { x = 0, y = -100 },
          { x = -50, y = 400 },
          { x = 0, y = 400 }
        },
        properties = {}
      },
      {
        id = 528,
        
        
        
        x = 500,
        y = 200,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 0 },
          { x = 100, y = 350 }
        },
        properties = {}
      },
      {
        id = 529,
        
        
        
        x = 600,
        y = 450,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 350 },
          { x = 0, y = 350 }
        },
        properties = {}
      },
      {
        id = 530,
        
        
        
        x = -100,
        y = 250,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = -50 },
          { x = 200, y = 0 }
        },
        properties = {}
      },
      {
        id = 531,
        
        
        
        x = -550,
        y = 800,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 400 },
          { x = 0, y = 400 }
        },
        properties = {}
      },
      {
        id = 532,
        
        
        
        x = 550,
        y = 800,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 400 },
          { x = 0, y = 400 }
        },
        properties = {}
      },
      {
        id = 533,
        
        
        
        x = -200,
        y = 950,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 250 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 534,
        
        
        
        x = 200,
        y = 950,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 250 },
          { x = -50, y = 0 }
        },
        properties = {}
      },
      {
        id = 535,
        
        
        
        x = -150,
        y = 1200,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 100 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 536,
        
        
        
        x = 100,
        y = 1200,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 0 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 537,
        
        
        
        x = -100,
        y = 1300,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 100 },
          { x = 200, y = 0 }
        },
        properties = {}
      },
      {
        id = 538,
        
        
        
        x = -450,
        y = 1200,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 300 },
          { x = 0, y = 300 }
        },
        properties = {}
      },
      {
        id = 539,
        
        
        
        x = 450,
        y = 1200,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = 300 },
          { x = -150, y = 300 }
        },
        properties = {}
      },
      {
        id = 540,
        
        
        
        x = -300,
        y = 1500,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 541,
        
        
        
        x = 300,
        y = 1500,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 100 },
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
  elseif id == 8 then
    return {
  
      name = "Object Layer 8",
      
      
      
      
      
      
      objects = {
        {
          id = 542,
          
          
          
          x = -500,
          y = 50,
          
         
          
          
          polygon = {
            { x = 0, y = -50 },
            { x = -50, y = 100 },
            { x = -50, y = -50 }
          },
          properties = {}
        },
        {
          id = 543,
          
          
          
          x = -550,
          y = 150,
          
         
          
          
          polygon = {
            { x = 0, y = -50 },
            { x = 50, y = 150 },
            { x = 0, y = 150 }
          },
          properties = {}
        },
        {
          id = 544,
          
          
          
          x = -200,
          y = 50,
          
         
          
          
          polygon = {
            { x = 0, y = -50 },
            { x = 100, y = 100 },
            { x = 100, y = -50 }
          },
          properties = {}
        },
        {
          id = 545,
          
          
          
          x = -500,
          y = 300,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 50 },
            { x = 0, y = 50 }
          },
          properties = {}
        },
        {
          id = 546,
          
          
          
          x = -350,
          y = 350,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 350, y = 50 },
            { x = 0, y = 50 }
          },
          properties = {}
        },
        {
          id = 547,
          
          
          
          x = -100,
          y = 150,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 400, y = 50 },
            { x = 400, y = 0 }
          },
          properties = {}
        },
        {
          id = 548,
          
          
          
          x = 0,
          y = 400,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 250, y = 50 },
            { x = 0, y = 50 }
          },
          properties = {}
        },
        {
          id = 549,
          
          
          
          x = 600,
          y = 450,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = -200 },
            { x = 0, y = -200 }
          },
          properties = {}
        },
        {
          id = 550,
          
          
          
          x = 550,
          y = 250,
          
         
          
          
          polygon = {
            { x = 50, y = 50 },
            { x = -100, y = -50 },
            { x = 50, y = -50 }
          },
          properties = {}
        },
        {
          id = 551,
          
          
          
          x = 300,
          y = 200,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 0 },
            { x = 0, y = -50 }
          },
          properties = {}
        },
        {
          id = 552,
          
          
          
          x = 600,
          y = 450,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 600 },
            { x = -50, y = 700 }
          },
          properties = {}
        },
        {
          id = 553,
          
          
          
          x = 300,
          y = 450,
          
         
          
          
          polygon = {
            { x = -50, y = 0 },
            { x = -50, y = 500 },
            { x = -100, y = 500 }
          },
          properties = {}
        },
        {
          id = 554,
          
          
          
          x = 600,
          y = 1100,
          
         
          
          
          polygon = {
            { x = 0, y = -50 },
            { x = -150, y = 150 },
            { x = 0, y = 150 }
          },
          properties = {}
        },
        {
          id = 555,
          
          
          
          x = 300,
          y = 950,
          
         
          
          
          polygon = {
            { x = -50, y = 0 },
            { x = -100, y = 100 },
            { x = -100, y = 0 }
          },
          properties = {}
        },
        {
          id = 556,
          
          
          
          x = 550,
          y = 1200,
          
         
          
          
          polygon = {
            { x = -50, y = 0 },
            { x = -250, y = 100 },
            { x = -50, y = 100 }
          },
          properties = {}
        },
        {
          id = 557,
          
          
          
          x = 250,
          y = 1050,
          
         
          
          
          polygon = {
            { x = -50, y = 0 },
            { x = -200, y = 50 },
            { x = -200, y = 0 }
          },
          properties = {}
        },
        {
          id = 558,
          
          
          
          x = 300,
          y = 1300,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -500, y = 50 },
            { x = 0, y = 50 }
          },
          properties = {}
        },
        {
          id = 559,
          
          
          
          x = 100,
          y = 1100,
          
         
          
          
          polygon = {
            { x = -50, y = 0 },
            { x = -450, y = -50 },
            { x = -50, y = -50 }
          },
          properties = {}
        },
        {
          id = 560,
          
          
          
          x = -200,
          y = 1050,
          
         
          
          
          polygon = {
            { x = -200, y = 0 },
            { x = -350, y = 150 },
            { x = -350, y = 0 }
          },
          properties = {}
        },
        {
          id = 561,
          
          
          
          x = -550,
          y = 1150,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 200 },
            { x = 0, y = 200 }
          },
          properties = {}
        },
        {
          id = 596,
          
          
          
          x = -450,
          y = 1100,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 250, y = -50 },
            { x = 0, y = -50 }
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
  
    name = "Object Layer 9",
    
    
    
    
    
    
    objects = {
      {
        id = 562,
        
        
        
        x = 200,
        y = 0,
        
       
        
        
        polygon = {
          { x = -100, y = 50 },
          { x = -400, y = 100 },
          { x = -400, y = 50 }
        },
        properties = {}
      },
      {
        id = 563,
        
        
        
        x = 500,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 200 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 565,
        
        
        
        x = -200,
        y = 100,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -250, y = 100 },
          { x = -250, y = 0 }
        },
        properties = {}
      },
      {
        id = 566,
        
        
        
        x = -450,
        y = 200,
        
       
        
        
        polygon = {
          { x = 50, y = -50 },
          { x = -100, y = 100 },
          { x = -100, y = -50 }
        },
        properties = {}
      },
      {
        id = 567,
        
        
        
        x = -550,
        y = 300,
        
       
        
        
        polygon = {
          { x = 50, y = -50 },
          { x = -50, y = 200 },
          { x = -50, y = -50 }
        },
        properties = {}
      },
      {
        id = 568,
        
        
        
        x = -600,
        y = 450,
        
       
        
        
        polygon = {
          { x = 0, y = -50 },
          { x = 100, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 569,
        
        
        
        x = -550,
        y = 600,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 570,
        
        
        
        x = -450,
        y = 700,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 250, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 571,
        
        
        
        x = -200,
        y = 800,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 300, y = 50 },
          { x = 0, y = 50 }
        },
        properties = {}
      },
      {
        id = 572,
        
        
        
        x = 500,
        y = 900,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 0 },
          { x = 100, y = -200 }
        },
        properties = {}
      },
      {
        id = 573,
        
        
        
        x = 550,
        y = 100,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 100 },
          { x = 50, y = 450 }
        },
        properties = {}
      },
      {
        id = 574,
        
        
        
        x = 550,
        y = 800,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = -450 },
          { x = 50, y = -100 }
        },
        properties = {}
      },
      {
        id = 575,
        
        
        
        x = 150,
        y = 50,
        
       
        
        
        polygon = {
          { x = -50, y = 0 },
          { x = 50, y = -50 },
          { x = -50, y = -50 }
        },
        properties = {}
      },
      {
        id = 576,
        
        
        
        x = 100,
        y = 850,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 50 },
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
elseif id == 10 then
  return {
  
    name = "Object Layer 10",
    
    
    
    
    
    
    objects = {
      {
        id = 579,
        
        
        
        x = -550,
        y = 50,
        
       
        
        
        polygon = {
          { x = 0, y = -50 },
          { x = 400, y = 450 },
          { x = 0, y = 450 }
        },
        properties = {}
      },
      {
        id = 580,
        
        
        
        x = -200,
        y = 450,
        
       
        
        
        polygon = {
          { x = 50, y = 50 },
          { x = 400, y = 400 },
          { x = 50, y = 400 }
        },
        properties = {}
      },
      {
        id = 581,
        
        
        
        x = -200,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 400, y = 400 },
          { x = 400, y = 0 }
        },
        properties = {}
      },
      {
        id = 582,
        
        
        
        x = 200,
        y = 350,
        
       
        
        
        polygon = {
          { x = 0, y = 50 },
          { x = 300, y = 500 },
          { x = 300, y = 50 }
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
  
      name = "Object Layer 11",
      
      
      
      
      
      
      objects = {
        {
          id = 583,
          
          
          
          x = 500,
          y = 0,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 100 },
            { x = 50, y = 0 }
          },
          properties = {}
        },
        {
          id = 584,
          
          
          
          x = 550,
          y = 100,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 200 },
            { x = 0, y = 200 }
          },
          properties = {}
        },
        {
          id = 585,
          
          
          
          x = 200,
          y = 0,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 100 },
            { x = -100, y = 0 }
          },
          properties = {}
        },
        {
          id = 586,
          
          
          
          x = 100,
          y = 100,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -600, y = 400 },
            { x = -600, y = 0 }
          },
          properties = {}
        },
        {
          id = 587,
          
          
          
          x = -500,
          y = 450,
          
         
          
          
          polygon = {
            { x = 0, y = -50 },
            { x = 600, y = 350 },
            { x = 0, y = 350 }
          },
          properties = {}
        },
        {
          id = 588,
          
          
          
          x = 50,
          y = 450,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = -100 },
            { x = 150, y = 0 }
          },
          properties = {}
        },
        {
          id = 589,
          
          
          
          x = 50,
          y = 450,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 100 },
            { x = 150, y = 0 }
          },
          properties = {}
        },
        {
          id = 590,
          
          
          
          x = 200,
          y = 350,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 300, y = -100 },
            { x = 300, y = 0 }
          },
          properties = {}
        },
        {
          id = 591,
          
          
          
          x = 200,
          y = 550,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 300, y = 100 },
            { x = 300, y = 0 }
          },
          properties = {}
        },
        {
          id = 592,
          
          
          
          x = 500,
          y = 650,
          
         
          
          
          polygon = {
            { x = -50, y = -50 },
            { x = 50, y = 150 },
            { x = 50, y = -50 }
          },
          properties = {}
        },
        {
          id = 593,
          
          
          
          x = 100,
          y = 800,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = 100 },
            { x = 0, y = 100 }
          },
          properties = {}
        },
        {
          id = 594,
          
          
          
          x = 550,
          y = 800,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 100 },
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
  elseif id == 12 then
    return {
  
      name = "Object Layer 12",
      
      
      
      
      
      
      objects = {
        {
          id = 623,
          
          
          
          x = -200,
          y = 0,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 250 },
            { x = 0, y = 250 }
          },
          properties = {}
        },
        {
          id = 624,
          
          
          
          x = 150,
          y = 0,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 150, y = 250 },
            { x = 200, y = 0 }
          },
          properties = {}
        },
        {
          id = 625,
          
          
          
          x = 350,
          y = 300,
          
         
          
          
          polygon = {
            { x = -50, y = -50 },
            { x = 200, y = 100 },
            { x = 200, y = 0 }
          },
          properties = {}
        },
        {
          id = 626,
          
          
          
          x = -50,
          y = 250,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 250, y = 200 },
            { x = 0, y = 200 }
          },
          properties = {}
        },
        {
          id = 627,
          
          
          
          x = 550,
          y = 400,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 50, y = 150 },
            { x = 50, y = 0 }
          },
          properties = {}
        },
        {
          id = 628,
          
          
          
          x = 600,
          y = 550,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -50, y = 50 },
            { x = 0, y = 50 }
          },
          properties = {}
        },
        {
          id = 629,
          
          
          
          x = 600,
          y = 600,
          
         
          
          
          polygon = {
            { x = -50, y = 0 },
            { x = -300, y = 100 },
            { x = -50, y = 100 }
          },
          properties = {}
        },
        {
          id = 630,
          
          
          
          x = 200,
          y = 450,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -100, y = 100 },
            { x = -550, y = 150 }
          },
          properties = {}
        },
        {
          id = 631,
          
          
          
          x = 250,
          y = 700,
          
         
          
          
          polygon = {
            { x = 50, y = 0 },
            { x = -350, y = 100 },
            { x = 50, y = 100 }
          },
          properties = {}
        },
        {
          id = 632,
          
          
          
          x = -100,
          y = 750,
          
         
          
          
          polygon = {
            { x = 0, y = 50 },
            { x = -100, y = 100 },
            { x = 0, y = 100 }
          },
          properties = {}
        },
        {
          id = 633,
          
          
          
          x = -300,
          y = 600,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = -200, y = 50 },
            { x = -200, y = 0 }
          },
          properties = {}
        },
        {
          id = 634,
          
          
          
          x = -500,
          y = 650,
          
         
          
          
          polygon = {
            { x = 50, y = -50 },
            { x = 0, y = 200 },
            { x = 0, y = -50 }
          },
          properties = {}
        },
        {
          id = 719,
          
          
          
          x = -500,
          y = 700,
          
         
          
          
          polygon = {
            { x = 0, y = 0 },
            { x = 100, y = -100 },
            { x = 0, y = -100 }
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
  
        name = "Object Layer 13",
        
        
        
        
        
        
        objects = {
          {
            id = 637,
            
            
            
            x = 250,
            y = 0,
            
           
            
            
            polygon = {
              { x = -50, y = 0 },
              { x = -100, y = 150 },
              { x = -100, y = 0 }
            },
            properties = {}
          },
          {
            id = 638,
            
            
            
            x = 550,
            y = 0,
            
           
            
            
            polygon = {
              { x = -50, y = 0 },
              { x = -150, y = 350 },
              { x = -50, y = 350 }
            },
            properties = {}
          },
          {
            id = 639,
            
            
            
            x = 150,
            y = 150,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 200 },
              { x = -50, y = 0 }
            },
            properties = {}
          },
          {
            id = 640,
            
            
            
            x = 350,
            y = 350,
            
           
            
            
            polygon = {
              { x = 50, y = 0 },
              { x = 0, y = 200 },
              { x = 50, y = 200 }
            },
            properties = {}
          },
          {
            id = 641,
            
            
            
            x = 300,
            y = 550,
            
           
            
            
            polygon = {
              { x = 50, y = 0 },
              { x = 0, y = 50 },
              { x = 50, y = 50 }
            },
            properties = {}
          },
          {
            id = 642,
            
            
            
            x = 100,
            y = 350,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 50 },
              { x = -50, y = 0 }
            },
            properties = {}
          },
          {
            id = 643,
            
            
            
            x = 350,
            y = 600,
            
           
            
            
            polygon = {
              { x = -50, y = 0 },
              { x = -200, y = 50 },
              { x = -50, y = 50 }
            },
            properties = {}
          },
          {
            id = 644,
            
            
            
            x = 100,
            y = 400,
            
           
            
            
            polygon = {
              { x = -50, y = 0 },
              { x = -150, y = 50 },
              { x = -150, y = 0 }
            },
            properties = {}
          },
          {
            id = 645,
            
            
            
            x = -50,
            y = 450,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 50 },
              { x = -50, y = 0 }
            },
            properties = {}
          },
          {
            id = 646,
            
            
            
            x = 200,
            y = 650,
            
           
            
            
            polygon = {
              { x = -50, y = 0 },
              { x = -100, y = 50 },
              { x = -50, y = 50 }
            },
            properties = {}
          },
          {
            id = 647,
            
            
            
            x = 150,
            y = 700,
            
           
            
            
            polygon = {
              { x = -50, y = 0 },
              { x = 0, y = 150 },
              { x = 0, y = 0 }
            },
            properties = {}
          },
          {
            id = 648,
            
            
            
            x = -100,
            y = 500,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 100 },
              { x = -50, y = 0 }
            },
            properties = {}
          },
          {
            id = 649,
            
            
            
            x = -150,
            y = 650,
            
           
            
            
            polygon = {
              { x = 0, y = -50 },
              { x = -50, y = 100 },
              { x = -50, y = -50 }
            },
            properties = {}
          },
          {
            id = 650,
            
            
            
            x = -200,
            y = 700,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 50, y = 150 },
              { x = 0, y = 150 }
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
  
          name = "Object Layer 14",
          
          
          
          
          
          
          objects = {
            {
              id = 651,
              
              
              
              x = -250,
              y = 0,
              
             
              
              
              polygon = {
                { x = 50, y = 0 },
                { x = 550, y = 150 },
                { x = 550, y = 0 }
              },
              properties = {}
            },
            {
              id = 652,
              
              
              
              x = -550,
              y = 100,
              
             
              
              
              polygon = {
                { x = 100, y = 100 },
                { x = 650, y = 200 },
                { x = 100, y = 200 }
              },
              properties = {}
            },
            {
              id = 653,
              
              
              
              x = -450,
              y = 150,
              
             
              
              
              polygon = {
                { x = 0, y = 50 },
                { x = -50, y = -100 },
                { x = -50, y = 50 }
              },
              properties = {}
            },
            {
              id = 654,
              
              
              
              x = -500,
              y = 0,
              
             
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 0, y = 50 },
                { x = -50, y = 50 }
              },
              properties = {}
            },
            {
              id = 655,
              
              
              
              x = 300,
              y = 150,
              
             
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 200, y = 150 },
                { x = 250, y = 0 }
              },
              properties = {}
            },
            {
              id = 656,
              
              
              
              x = 150,
              y = 300,
              
             
              
              
              polygon = {
                { x = -50, y = 0 },
                { x = 150, y = 150 },
                { x = 0, y = 150 }
              },
              properties = {}
            },
            {
              id = 657,
              
              
              
              x = 500,
              y = 300,
              
             
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = 150 },
                { x = 100, y = 0 }
              },
              properties = {}
            },
            {
              id = 658,
              
              
              
              x = 350,
              y = 450,
              
             
              
              
              polygon = {
                { x = -50, y = 0 },
                { x = -250, y = 100 },
                { x = -200, y = 0 }
              },
              properties = {}
            },
            {
              id = 659,
              
              
              
              x = 600,
              y = 500,
              
             
              
              
              polygon = {
                { x = 0, y = -50 },
                { x = -100, y = 100 },
                { x = 0, y = 100 }
              },
              properties = {}
            },
            {
              id = 660,
              
              
              
              x = 550,
              y = 600,
              
             
              
              
              polygon = {
                { x = -50, y = 0 },
                { x = -300, y = 150 },
                { x = 0, y = 150 }
              },
              properties = {}
            },
            {
              id = 661,
              
              
              
              x = 150,
              y = 550,
              
             
              
              
              polygon = {
                { x = -50, y = 0 },
                { x = -400, y = 150 },
                { x = -400, y = 0 }
              },
              properties = {}
            },
            {
              id = 662,
              
              
              
              x = 300,
              y = 700,
              
             
              
              
              polygon = {
                { x = -50, y = 50 },
                { x = -400, y = 200 },
                { x = -50, y = 200 }
              },
              properties = {}
            },
            {
              id = 663,
              
              
              
              x = -100,
              y = 850,
              
             
              
              
              polygon = {
                { x = 0, y = 50 },
                { x = -100, y = 100 },
                { x = 0, y = 100 }
              },
              properties = {}
            },
            {
              id = 664,
              
              
              
              x = -250,
              y = 700,
              
             
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -350, y = 150 },
                { x = -350, y = 0 }
              },
              properties = {}
            },
            {
              id = 665,
              
              
              
              x = -500,
              y = 750,
              
             
              
              
              polygon = {
                { x = 100, y = 0 },
                { x = 0, y = 200 },
                { x = 0, y = 0 }
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
  
          name = "Object Layer 15",
          
          
          
          
          
          
          objects = {
            {
              id = 668,
              
              
              
              x = -300,
              y = 0,
              
             
              
              
              polygon = {
                { x = 100, y = 0 },
                { x = 600, y = 150 },
                { x = 600, y = 0 }
              },
              properties = {}
            },
            {
              id = 669,
              
              
              
              x = -550,
              y = 100,
              
             
              
              
              polygon = {
                { x = 100, y = 50 },
                { x = 700, y = 200 },
                { x = 100, y = 200 }
              },
              properties = {}
            },
            {
              id = 670,
              
              
              
              x = -450,
              y = 150,
              
             
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -50, y = -100 },
                { x = -50, y = 0 }
              },
              properties = {}
            },
            {
              id = 671,
              
              
              
              x = -500,
              y = 0,
              
             
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 0, y = 50 },
                { x = -50, y = 50 }
              },
              properties = {}
            },
            {
              id = 672,
              
              
              
              x = 250,
              y = 150,
              
             
              
              
              polygon = {
                { x = 50, y = 0 },
                { x = 250, y = 150 },
                { x = 250, y = 0 }
              },
              properties = {}
            },
            {
              id = 673,
              
              
              
              x = 150,
              y = 300,
              
             
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 150, y = 150 },
                { x = 0, y = 150 }
              },
              properties = {}
            },
            {
              id = 674,
              
              
              
              x = 500,
              y = 300,
              
             
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = 150 },
                { x = 100, y = 0 }
              },
              properties = {}
            },
            {
              id = 675,
              
              
              
              x = 350,
              y = 450,
              
             
              
              
              polygon = {
                { x = -50, y = 0 },
                { x = -200, y = 100 },
                { x = -200, y = 0 }
              },
              properties = {}
            },
            {
              id = 676,
              
              
              
              x = 600,
              y = 500,
              
             
              
              
              polygon = {
                { x = 0, y = -50 },
                { x = -100, y = 100 },
                { x = 0, y = 100 }
              },
              properties = {}
            },
            {
              id = 677,
              
              
              
              x = 500,
              y = 600,
              
             
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -150, y = 100 },
                { x = 0, y = 100 }
              },
              properties = {}
            },
            {
              id = 678,
              
              
              
              x = 150,
              y = 550,
              
             
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -250, y = 150 },
                { x = -250, y = 0 }
              },
              properties = {}
            },
            {
              id = 679,
              
              
              
              x = 250,
              y = 700,
              
             
              
              
              polygon = {
                { x = 100, y = 0 },
                { x = 0, y = 50 },
                { x = 100, y = 50 }
              },
              properties = {}
            },
            {
              id = 685,
              
              
              
              x = -100,
              y = 700,
              
             
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = -50, y = 100 },
                { x = -50, y = 0 }
              },
              properties = {}
            },
            {
              id = 686,
              
              
              
              x = -150,
              y = 800,
              
             
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 0, y = 50 },
                { x = -50, y = 0 }
              },
              properties = {}
            },
            {
              id = 731,
              
              
              
              x = 150,
              y = 850,
              
             
              
              
              polygon = {
                { x = 0, y = 0 },
                { x = 100, y = -100 },
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
      elseif id == 16 then
      return {
  
        name = "Object Layer 16",
        
        
        
        
        
        objects = {
          {
            id = 698,
            
            
            
            x = 200,
            y = 0,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 350 },
              { x = -50, y = 0 }
            },
            properties = {}
          },
          {
            id = 699,
            
            
            
            x = 500,
            y = 0,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 450 },
              { x = 0, y = 450 }
            },
            properties = {}
          },
          {
            id = 700,
            
            
            
            x = 150,
            y = 350,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 200 },
              { x = -50, y = 0 }
            },
            properties = {}
          },
          {
            id = 702,
            
            
            
            x = 100,
            y = 550,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 100 },
              { x = -50, y = 0 }
            },
            properties = {}
          },
          {
            id = 705,
            
            
            
            x = 50,
            y = 650,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 50 },
              { x = -50, y = 0 }
            },
            properties = {}
          },
          {
            id = 706,
            
            
            
            x = 0,
            y = 700,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 50 },
              { x = -100, y = 0 }
            },
            properties = {}
          },
          {
            id = 707,
            
            
            
            x = -100,
            y = 750,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -200, y = 50 },
              { x = -200, y = 0 }
            },
            properties = {}
          },
          {
            id = 708,
            
            
            
            x = -300,
            y = 800,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -250, y = 50 },
              { x = -250, y = 0 }
            },
            properties = {}
          },
          {
            id = 709,
            
            
            
            x = 450,
            y = 450,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 250 },
              { x = 0, y = 250 }
            },
            properties = {}
          },
          {
            id = 710,
            
            
            
            x = 400,
            y = 700,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -50, y = 150 },
              { x = 0, y = 150 }
            },
            properties = {}
          },
          {
            id = 711,
            
            
            
            x = 350,
            y = 850,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -150, y = 150 },
              { x = 0, y = 150 }
            },
            properties = {}
          },
          {
            id = 712,
            
            
            
            x = 200,
            y = 1000,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -150, y = 50 },
              { x = 0, y = 50 }
            },
            properties = {}
          },
          {
            id = 714,
            
            
            
            x = -100,
            y = 1050,
            
           
            
            
            polygon = {
              { x = 150, y = 0 },
              { x = -100, y = 50 },
              { x = 150, y = 50 }
            },
            properties = {}
          },
          {
            id = 715,
            
            
            
            x = -550,
            y = 800,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 50, y = 300 },
              { x = 0, y = 300 }
            },
            properties = {}
          },
          {
            id = 716,
            
            
            
            x = -550,
            y = 950,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 150, y = -150 },
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
      elseif id == 17 then
      return {
  
        name = "Object Layer 17",
        
        
        
        
        
        
        objects = {
          {
            id = 732,
            
            
            
            x = 200,
            y = 250,
            
           
            rotation = 180,
            
            polygon = {
              { x = 0, y = 250 },
              { x = 100, y = 0 },
              { x = 100, y = 250 }
            },
            properties = {}
          },
          {
            id = 733,
            
            
            
            x = 500,
            y = 350,
            
           
            rotation = 180,
            
            polygon = {
              { x = 0, y = 350 },
              { x = 100, y = 0 },
              { x = 0, y = 0 }
            },
            properties = {}
          },
          {
            id = 734,
            
            
            
            x = 400,
            y = 450,
            
           
            rotation = 180,
            
            polygon = {
              { x = 0, y = 100 },
              { x = 200, y = 0 },
              { x = 0, y = 0 }
            },
            properties = {}
          },
          {
            id = 735,
            
            
            
            x = 100,
            y = 350,
            
           
            rotation = 180,
            
            polygon = {
              { x = 0, y = 100 },
              { x = 200, y = 0 },
              { x = 200, y = 100 }
            },
            properties = {}
          },
          {
            id = 736,
            
            
            
            x = 200,
            y = 700,
            
           
            rotation = 180,
            
            polygon = {
              { x = 0, y = 250 },
              { x = 100, y = 0 },
              { x = 0, y = 0 }
            },
            properties = {}
          },
          {
            id = 737,
            
            
            
            x = 100,
            y = 700,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -200, y = 100 },
              { x = 0, y = 100 }
            },
            properties = {}
          },
          {
            id = 738,
            
            
            
            x = 0,
            y = 350,
            
           
            
            
            polygon = {
              { x = -100, y = 0 },
              { x = -200, y = 200 },
              { x = -200, y = 0 }
            },
            properties = {}
          },
          {
            id = 739,
            
            
            
            x = -50,
            y = 800,
            
           
            
            
            polygon = {
              { x = -50, y = 0 },
              { x = -150, y = 200 },
              { x = -50, y = 200 }
            },
            properties = {}
          },
          {
            id = 741,
            
            
            
            x = -200,
            y = 550,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -200, y = 100 },
              { x = -200, y = 0 }
            },
            properties = {}
          },
          {
            id = 742,
            
            
            
            x = -400,
            y = 650,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 250 },
              { x = -100, y = 0 }
            },
            properties = {}
          },
          {
            id = 751,
            
            
            
            x = -500,
            y = 900,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 350 },
              { x = -100, y = 0 }
            },
            properties = {}
          },
          {
            id = 752,
            
            
            
            x = -200,
            y = 1000,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = -100, y = 250 },
              { x = 0, y = 250 }
            },
            properties = {}
          },
          {
            id = 771,
            
            
            
            x = -300,
            y = 1250,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 200 },
              { x = 100, y = 0 }
            },
            properties = {}
          },
          {
            id = 772,
            
            
            
            x = -600,
            y = 1150,
            
           
            
            
            polygon = {
              { x = 0, y = 0 },
              { x = 100, y = 300 },
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
elseif id == 18 then
  return {
  
    name = "Object Layer 18",
    
    
    
    
    
    
    objects = {
      {
        id = 773,
        
        
        
        x = -500,
        y = 250,
        
       
        
        
        polygon = {
          { x = -50, y = -250 },
          { x = -100, y = 250 },
          { x = -100, y = -250 }
        },
        properties = {}
      },
      {
        id = 774,
        
        
        
        x = -600,
        y = 400,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 775,
        
        
        
        x = -200,
        y = 250,
        
       
        
        
        polygon = {
          { x = -100, y = 0 },
          { x = 250, y = 100 },
          { x = 250, y = 0 }
        },
        properties = {}
      },
      {
        id = 776,
        
        
        
        x = 50,
        y = 350,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 250, y = 150 },
          { x = 250, y = 0 }
        },
        properties = {}
      },
      {
        id = 777,
        
        
        
        x = 300,
        y = 500,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 250 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 778,
        
        
        
        x = 450,
        y = 600,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 350 },
          { x = 0, y = 350 }
        },
        properties = {}
      },
      {
        id = 779,
        
        
        
        x = 400,
        y = 800,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 780,
        
        
        
        x = 300,
        y = 950,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 781,
        
        
        
        x = -150,
        y = 1100,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = -150 },
          { x = -150, y = 0 }
        },
        properties = {}
      },
      {
        id = 782,
        
        
        
        x = -300,
        y = 950,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = -200 },
          { x = -100, y = 0 }
        },
        properties = {}
      },
      {
        id = 783,
        
        
        
        x = -400,
        y = 750,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 0, y = -150 },
          { x = -50, y = 0 }
        },
        properties = {}
      },
      {
        id = 784,
        
        
        
        x = -400,
        y = 600,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = -100 },
          { x = -150, y = 0 }
        },
        properties = {}
      },
      {
        id = 787,
        
        
        
        x = -250,
        y = 250,
        
       
        
        
        polygon = {
          { x = -50, y = 0 },
          { x = 50, y = -250 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 789,
        
        
        
        x = -600,
        y = 250,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = -250 },
          { x = 0, y = -250 }
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
  
    name = "Object Layer 19",
    
    
    
    
    
    
    objects = {
      {
        id = 790,
        
        
        
        x = 500,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 250 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 791,
        
        
        
        x = 600,
        y = 150,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 250 },
          { x = 0, y = 250 }
        },
        properties = {}
      },
      {
        id = 792,
        
        
        
        x = 200,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 250 },
          { x = -100, y = 0 }
        },
        properties = {}
      },
      {
        id = 793,
        
        
        
        x = 100,
        y = 250,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -200, y = 150 },
          { x = -200, y = 0 }
        },
        properties = {}
      },
      {
        id = 794,
        
        
        
        x = 450,
        y = 400,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -300, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 795,
        
        
        
        x = -100,
        y = 400,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 100 },
          { x = -50, y = 0 }
        },
        properties = {}
      },
      {
        id = 796,
        
        
        
        x = -150,
        y = 500,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 100 },
          { x = -150, y = 0 }
        },
        properties = {}
      },
      {
        id = 797,
        
        
        
        x = 150,
        y = 550,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 50 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 798,
        
        
        
        x = 300,
        y = 600,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 100 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 799,
        
        
        
        x = -300,
        y = 600,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 100 },
          { x = -100, y = 0 }
        },
        properties = {}
      },
      {
        id = 800,
        
        
        
        x = -400,
        y = 700,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 200 },
          { x = -100, y = 0 }
        },
        properties = {}
      },
      {
        id = 801,
        
        
        
        x = 400,
        y = 700,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 200 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 802,
        
        
        
        x = 500,
        y = 900,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 350 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 803,
        
        
        
        x = -500,
        y = 900,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 350 },
          { x = -100, y = 0 }
        },
        properties = {}
      },
      {
        id = 804,
        
        
        
        x = -550,
        y = 1150,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 400 },
          { x = 0, y = 400 }
        },
        properties = {}
      },
      {
        id = 805,
        
        
        
        x = 550,
        y = 1150,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 400 },
          { x = 0, y = 400 }
        },
        properties = {}
      },
      {
        id = 806,
        
        
        
        x = -500,
        y = 1550,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 300 },
          { x = 0, y = 300 }
        },
        properties = {}
      },
      {
        id = 807,
        
        
        
        x = 500,
        y = 1550,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 300 },
          { x = 0, y = 300 }
        },
        properties = {}
      },
      {
        id = 808,
        
        
        
        x = -400,
        y = 1850,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 811,
        
        
        
        x = -300,
        y = 1950,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 812,
        
        
        
        x = 400,
        y = 1850,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 813,
        
        
        
        x = 300,
        y = 1950,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 814,
        
        
        
        x = 0,
        y = 1750,
        
       
        
        
        polygon = {
          { x = 0, y = 50 },
          { x = -150, y = -50 },
          { x = 150, y = -50 }
        },
        properties = {}
      },
      {
        id = 815,
        
        
        
        x = -150,
        y = 1700,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = -150 },
          { x = 300, y = 0 }
        },
        properties = {}
      },
      {
        id = 817,
        
        
        
        x = -250,
        y = 1550,
        
       
        
        
        polygon = {
          { x = 0, y = -50 },
          { x = 100, y = -150 },
          { x = 0, y = -250 }
        },
        properties = {}
      },
      {
        id = 818,
        
        
        
        x = 250,
        y = 1550,
        
       
        
        
        polygon = {
          { x = 0, y = -50 },
          { x = -100, y = -150 },
          { x = 0, y = -250 }
        },
        properties = {}
      },
      {
        id = 819,
        
        
        
        x = 0,
        y = 1200,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -150, y = -100 },
          { x = 150, y = -100 }
        },
        properties = {}
      },
      {
        id = 820,
        
        
        
        x = -150,
        y = 1100,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = -50 },
          { x = 300, y = 0 }
        },
        properties = {}
      },
      {
        id = 821,
        
        
        
        x = -250,
        y = 1300,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 100 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 822,
        
        
        
        x = 250,
        y = 1300,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 100 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 825,
        
        
        
        x = 250,
        y = 900,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = -100 },
          { x = -150, y = -50 }
        },
        properties = {}
      },
      {
        id = 826,
        
        
        
        x = -50,
        y = 800,
        
       
        
        
        polygon = {
          { x = -50, y = 50 },
          { x = -100, y = 0 },
          { x = -200, y = 100 }
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
  
    name = "Object Layer 20",
    
    
    
    
    
    
    objects = {
      {
        id = 833,
        
        
        
        x = -500,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 250 },
          { x = -50, y = 0 }
        },
        properties = {}
      },
      {
        id = 834,
        
        
        
        x = -550,
        y = 150,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 835,
        
        
        
        x = -200,
        y = 350,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 300 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 836,
        
        
        
        x = -500,
        y = 350,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 350 },
          { x = -50, y = 0 }
        },
        properties = {}
      },
      {
        id = 837,
        
        
        
        x = -200,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 450, y = 150 },
          { x = 450, y = 0 }
        },
        properties = {}
      },
      {
        id = 838,
        
        
        
        x = 250,
        y = 150,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 100 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 839,
        
        
        
        x = 400,
        y = 250,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 150, y = 250 },
          { x = 150, y = 0 }
        },
        properties = {}
      },
      {
        id = 840,
        
        
        
        x = 550,
        y = 400,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 400 },
          { x = 0, y = 400 }
        },
        properties = {}
      },
      {
        id = 841,
        
        
        
        x = 500,
        y = 800,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 400 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 842,
        
        
        
        x = 550,
        y = 1350,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 843,
        
        
        
        x = -150,
        y = 350,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 300, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 844,
        
        
        
        x = 150,
        y = 450,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 300 },
          { x = -50, y = 0 }
        },
        properties = {}
      },
      {
        id = 845,
        
        
        
        x = 100,
        y = 650,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 400 },
          { x = 0, y = 400 }
        },
        properties = {}
      },
      {
        id = 846,
        
        
        
        x = 150,
        y = 1350,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 847,
        
        
        
        x = 150,
        y = 1350,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -300, y = -50 },
          { x = -300, y = 0 }
        },
        properties = {}
      },
      {
        id = 848,
        
        
        
        x = 100,
        y = 1050,
        
       
        
        
        polygon = {
          { x = 0, y = 50 },
          { x = -300, y = -50 },
          { x = 100, y = -50 }
        },
        properties = {}
      },
      {
        id = 849,
        
        
        
        x = -150,
        y = 750,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 0 },
          { x = 0, y = -150 }
        },
        properties = {}
      },
      {
        id = 850,
        
        
        
        x = 550,
        y = 1050,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 851,
        
        
        
        x = 500,
        y = 1200,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 200 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 852,
        
        
        
        x = -200,
        y = 750,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 200 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 853,
        
        
        
        x = -150,
        y = 900,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      },
      {
        id = 854,
        
        
        
        x = -150,
        y = 1300,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -350, y = -50 },
          { x = -350, y = 0 }
        },
        properties = {}
      },
      {
        id = 855,
        
        
        
        x = -550,
        y = 600,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 200 },
          { x = 0, y = 200 }
        },
        properties = {}
      },
      {
        id = 856,
        
        
        
        x = -500,
        y = 800,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -100, y = 300 },
          { x = -100, y = 0 }
        },
        properties = {}
      },
      {
        id = 857,
        
        
        
        x = -600,
        y = 950,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 300 },
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
elseif id == 21 then
  return {
  
    name = "Object Layer 21---",
    
    
    
    
    
    
    objects = {
      {
        id = 865,
        
        
        
        x = 1150,
        y = 300,
        
       
        rotation = 180,
        
        polygon = {
          { x = 0, y = 300 },
          { x = -50, y = 0 },
          { x = -50, y = 300 }
        },
        properties = {}
      },
      {
        id = 866,
        
        
        
        x = 1200,
        y = 500,
        
       
        rotation = 180,
        
        polygon = {
          { x = 0, y = 250 },
          { x = 850, y = 0 },
          { x = 0, y = 0 }
        },
        properties = {}
      },
      {
        id = 867,
        
        
        
        x = 850,
        y = 150,
        
       
        rotation = 180,
        
        polygon = {
          { x = 0, y = 150 },
          { x = 50, y = 0 },
          { x = 50, y = 150 }
        },
        properties = {}
      },
      {
        id = 868,
        
        
        
        x = 800,
        y = 350,
        
       
        rotation = 180,
        
        polygon = {
          { x = 0, y = 200 },
          { x = 750, y = 0 },
          { x = 750, y = 200 }
        },
        properties = {}
      },
      {
        id = 869,
        
        
        
        x = 50,
        y = 850,
        
       
        rotation = 180,
        
        polygon = {
          { x = 0, y = 500 },
          { x = 50, y = 0 },
          { x = 50, y = 500 }
        },
        properties = {}
      },
      {
        id = 870,
        
        
        
        x = 0,
        y = 850,
        
       
        rotation = 180,
        
        polygon = {
          { x = 0, y = 200 },
          { x = -50, y = 0 },
          { x = 0, y = 0 }
        },
        properties = {}
      },
      {
        id = 871,
        
        
        
        x = 350,
        y = 700,
        
       
        rotation = 180,
        
        polygon = {
          { x = 0, y = 200 },
          { x = -50, y = 0 },
          { x = -50, y = 200 }
        },
        properties = {}
      },
      {
        id = 872,
        
        
        
        x = 400,
        y = 850,
        
       
        rotation = 180,
        
        polygon = {
          { x = 0, y = 200 },
          { x = 50, y = 0 },
          { x = 0, y = 0 }
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
  return {
  
    name = "Object Layer 22",
    
    
    
    
    
    
    objects = {
      {
        id = 881,
        
        
        
        x = -500,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = -50, y = 400 },
          { x = -50, y = 0 }
        },
        properties = {}
      },
      {
        id = 882,
        
        
        
        x = -200,
        y = 0,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 100, y = 200 },
          { x = 100, y = 0 }
        },
        properties = {}
      },
      {
        id = 883,
        
        
        
        x = -550,
        y = 350,
        
       
        
        
        polygon = {
          { x = 0, y = 50 },
          { x = 700, y = 150 },
          { x = 0, y = 150 }
        },
        properties = {}
      },
      {
        id = 884,
        
        
        
        x = 150,
        y = 450,
        
       
        
        
        polygon = {
          { x = 0, y = 50 },
          { x = 50, y = 400 },
          { x = 0, y = 400 }
        },
        properties = {}
      },
      {
        id = 885,
        
        
        
        x = -100,
        y = 200,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 500, y = 100 },
          { x = 500, y = 0 }
        },
        properties = {}
      },
      {
        id = 886,
        
        
        
        x = 400,
        y = 300,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 50 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 887,
        
        
        
        x = 450,
        y = 350,
        
       
        
        
        polygon = {
          { x = 0, y = 0 },
          { x = 50, y = 500 },
          { x = 50, y = 0 }
        },
        properties = {}
      },
      {
        id = 888,
        
        
        
        x = -550,
        y = 350,
        
       
        
        
        polygon = {
          { x = 0, y = -50 },
          { x = 50, y = 100 },
          { x = 0, y = 100 }
        },
        properties = {}
      }
    
    }
  }
end
end