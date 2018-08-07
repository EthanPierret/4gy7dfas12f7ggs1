
 
  
return {
  new = function()
    return{
    require("assets/logic"),
    shapes = {},
    body,
    nextshapes = nil,
    didtest = false,
    templist = {},



    newbody = function(self, x, y, physics)
      self.body = love.physics.newBody(physics,x, y, "static")
    end,



    newshape = function(self, x, y, physics, scale, list1, list2)

    self.nextshapes = getlistlenth(self.shapes) + 1
    


    --self.shape = love.physics.newPolygonShape(sidel[1][1],sidel[1][2],sidel[2][1],sidel[2][2],
   -- sidel[3][1], sidel[3][2], sidel[4][1], sidel[4][2], sidel[5][1], sidel[5][2], sidel[6][1], sidel[6][2],
   -- sidel[7][1], sidel[7][2], sidel[8][1], sidel[8][2])
    
      
      
    
     self.shapes[self.nextshapes] = {}
     --self.shapes[self.nextshapes]["list"] = {}
     -- self.shapes[self.nextshapes]["shape"] = nil
     -- self.shapes[self.nextshapes]["fixture"] = nil
      
    self.shapes[self.nextshapes]["backuplist"] = list2
    self.shapes[self.nextshapes]["list"] = list1
    self.shapes[self.nextshapes]["shape"] = love.physics.newPolygonShape(list1)
    self.shapes[self.nextshapes]["fixture"] = love.physics.newFixture(self.body, self.shapes[self.nextshapes]["shape"], 1)
    self.shapes[self.nextshapes]["fixture"]:setUserData("obby")
    self.shapes[self.nextshapes]["fixture"]:setGroupIndex(-5)
    self.shapes[self.nextshapes]["fixture"]:setCategory(2)
    end,

    draw = function(self)
      
      -- if self.didtest == false then
        love.graphics.setColor(0,0,0,255)
        for f,i in ipairs(self.shapes) do
          
         for v,k in ipairs(self.shapes[f]["list"]) do
          
              self.templist = self.shapes[f]["list"]
                
              if self.didtest == false then
          if (v % 2 == 0) then
            self.templist[v] = self.templist[v] + self.body:getY()
          --love.graphics.setColor(255,255,255,128)
          else
            self.templist[v] = self.templist[v] + self.body:getX()
          end
        end
          love.graphics.polygon("line", self.templist)
          self.templist = self.shapes[f]["backuplist"]
          self.shapes[f]["list"] = self.shapes[f]["backuplist"]
      --  end
        
        end 
      end 
        self.didtest = true
        love.graphics.setColor(128,128,128,255)
      end,
    

    resize = function(self)
       -- for _,v in sidel do

        --end
    end
    

  }
  end
}
 


--local objects = shapes.layers.objects