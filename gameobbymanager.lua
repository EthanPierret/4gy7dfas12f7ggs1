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
            possiblemapids = {{8,12,14,16,17},{2,3,5,6,7,13,15,18,19},{1,4,9,10,11,20}}, -- enter ids, 1:1 , 21 is not adjusted.
            possiblexitids = {{4,10},{2,3,5,6,7,8},{1,9}},
            seed,
            eaten = { 0,0 },
            maxheihgt,
            mode = {},
            inflations = 0, -- [1] = Maxheight, [2] = Inflate?
            didgameover = false,
            
            

            setworld = function(self,world)
        
                self.world = world
                if self.lastmode == 0 then
                    self.lastmode = math.random(1,3)
                end
            end,

            setseed = function(self,seed)
                self.seed = seed
                math.randomseed(seed)
            end,

            setcatid = function(self,id)
             self.catid = id
            end,

            update = function(self,caty)

            if self.mode[2] == "c" and self.inflations < 3 then
                if caty <= -3000 then
                    inflatecat(3)
                    self.inflations = self.inflations + 1
                elseif caty <= -2000 then
                    inflatecat(2)
                    self.inflations = self.inflations + 1
                elseif caty <= -1000 then
                    inflatecat(1)
                    self.inflations = self.inflations + 1
                end

            end
                
            if self.mode[1] == "c" and caty  >= self.maxheihgt + 2500 or self.mode[1] == nil then
                while caty <= (self.highest + 2500) do
                -- Load uner by 100 while caty <= (self.highest - 100) do
                
                self.objects[self.nextnum] = self[1].new()
                local r = math.random(1,2)
                if r == 2 then
                if self.lastmode == 1 then
                    self.lastmode = 3
                elseif self.lastmode == 3 then
                    self.lastmode = 1
                end
                end
            
                local ranid = self.possiblemapids[self.lastmode][math.random(1,#self.possiblemapids[self.lastmode])]
                self.highest = self.highest - (getmapheight(ranid)*0.45)
                self.objects[self.nextnum]:load(0,self.highest,ranid,0.45,self.nextnum,self.world,r)
                self.eaten[2] = self.eaten[2] + self.objects[self.nextnum].food
        
                self.lastmode = self.objects[self.nextnum].exit
                self.nextnum = self.nextnum + 1
                end
                elseif self.mode[1] == "c" and caty <= self.highest - 50 and self.didgameover == false then
                triggerlightgameover(self.catid)
                self.didgameover = true
            end
            
            for i,j in ipairs(self.objects) do
             
                
                if caty <= (self.objects[i].y - 800) then
                    self.objects[i]:destroy()
                    --table.remove( self.objects, i ) -- removing this makes the same thing [2] go on forever. Keeping will not make [3] draw possible, but still collission.
                
                end
            end
            
            end,

            removeshape = function(self,id,arg,arg2) --ObjectManagerId, FoodIndex, Foodid
                assert(self.objects[id]~= nil)
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
