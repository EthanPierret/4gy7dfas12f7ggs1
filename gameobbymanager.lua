return {
    new=function()

        return{
            require("objectmanager"),
            require("assets/food"),
            require("assets/logic"),
            timer = 0,
            highest = 100,
            lastmode = 0,
            objects = {},
            nextnum = 1,
            possiblemapids = {{},{},{1}},
            seed,
            
            

            setworld = function(self,world)
        
                self.world = world
                if self.lastmode == 0 then
                    self.lastmode = math.random(1,3)
                    self.lastmode = 3
                end
            end,

            setseed = function(self,seed)
                self.seed = seed
                math.randomseed(seed)
            end,

            update = function(self,caty)
                
                
                love.graphics.print(caty,500,500)
            while caty <= (self.highest + 2000) do
                -- Load uner by 100 while caty <= (self.highest - 100) do
                self.objects[self.nextnum] = self[1].new()
                local ranid = self.possiblemapids[self.lastmode][math.random(1,#self.possiblemapids[self.lastmode])]
                self.objects[self.nextnum]:load(0,self.highest,ranid,0.5,self.nextnum,self.world)
                self.highest = self.highest - self.objects[self.nextnum].h
                self.lastmode = self.objects[self.nextnum].e
                self.nextnum = self.nextnum + 1
            end
            
            
            for i,j in ipairs(self.objects) do
             
                
                if caty <= (self.objects[i].y - 800) then
                    self.objects[i]:destroy()
                    --table.remove( self.objects, i ) -- removing this makes the same thing [2] go on forever. Keeping will not make [3] draw possible, but still collission.
                
                end
            end
            
            end,

            removeshape = function(self,id,arg,arg2)
                self.objects[arg2]:removeshape(id, arg)

            end,

            draw = function(self)
                for d,l in ipairs(self.objects) do
                    if self.objects[d] ~= nil then
                    self.objects[d]:draw()
                    end
                end
            end
            


        }
    end
}
