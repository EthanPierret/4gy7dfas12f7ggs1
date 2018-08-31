return{
    new=function(halfwl,halfhl)
        return{
            halfw = halfwl,
            halfh = halfhl,
            catslist = {},
            actframe = 1,
            timer = 0,
            active = true,
            
            load = function(self,halfw,halfh)
                --self.halfh
                --self.halfw
            end,
            
            draw = function(self)
                self.width = 330  
                self.height = 330 

                
                -- OR
                --video = love.graphics.newVideo( filename )
                
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