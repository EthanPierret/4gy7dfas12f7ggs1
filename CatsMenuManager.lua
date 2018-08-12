return{
    new=function(halfwl,halfhl)
        return{
            halfw = halfwl,
            halfh = halfhl,
            catslist = {},
            actframe = 1,
            timer = 0,
            active = true,
            
            load = function(self)
                self.catslist[1] = require("assets/cats/bluecat")
            end,

            draw = function(self)
                self.width = 330  
                self.height = 330 

                love.graphics.draw(self.catslist[1],self.animation1.quads[self.actframe],(self.p.body:getX()),(self.p.body:getY())
                -- OR
                video = love.graphics.newVideo( filename )
                
            end,

            update = function(self)
                if self.timer >= 1 then
                    self.timer = 0
                    if self.actframe >= 3 then
                    self.actframe = 1
                    else
                    self.actframe = self.actframe + 1
                    end
                else
                    self.timer = self.timer + 0.016
                end
            end,

            hide = function(self)
                self.active = false
            end
            
        }
    end
}