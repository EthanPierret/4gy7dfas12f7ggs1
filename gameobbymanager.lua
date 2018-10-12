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
            -- {1,9,10,14},{2,3,4,5,6,7,12,13,19,20,21} {2,3,4,5,6,7,12,13,19,20,21,26}
            possiblemapids = {{1,9,10,14,23,24,25,27},{2,3,4,5,6,7,12,13,19,20,21,26,29,30,31},{8,11,15,16,17,18,22,28}}, -- 
            --               Ins: 25,24,23,17 Outs: 26,20,19,14,13,12,4 Stayout: 27,22,18,16,15,14,11,10,9,8,1 Stayin: 21,7,6,5,3,2
            possiblexitids = {{4,10},{2,3,5,6,7,8},{1,9}},
            seed,
            mapscale = 0.28375,
            eaten = { 0,0 },
            maxheihgt,
            mode = {},
            mapimages={},
            inflations = 0, -- [1] = Maxheight, [2] = Inflate?
            didgameover = false,
            debug = false,
            didexit = false,
            
            

            setworld = function(self,world)
        
                self.world = world
                if self.lastmode == 0 then
                    self.lastmode = math.random(1,3)
                end
                --
                self.objects[self.nextnum] = self[1].new()
                self.objects[self.nextnum+1] = self[1].new()
                self.objects[self.nextnum]:load(0,90,0,self.mapscale,nil,self.world,1,self.debug)
                self.objects[self.nextnum+1]:load(0,self.highest-(150*self.mapscale),self.lastmode*-1,self.mapscale,nil,self.world,1,self.debug)

                self.highest = self.highest - (150*self.mapscale)

                self.nextnum = self.nextnum + 2
                --

            end,

            setseed = function(self,seed)
                self.seed = seed
                math.randomseed(seed)
            end,

            setcatid = function(self,id)
             self.catid = id
            end,

            setscale = function(self,x,y,scale)
                self.scalex = x
                self.scaley = y
                self.scalefactor = scale
            end,

            update = function(self,caty)

            if self.mode[2] == "c" and self.inflations < 3 then
                
                if caty <= -3000 then
                    inflatecat(3)
                    self.inflations = 3
                elseif caty <= -2000 then
                    inflatecat(2)
                    self.inflations = 2
                elseif caty <= -1000 then
                    inflatecat(1)
                    self.inflations = 1
                end

            end

            if self.mode[1] == "c" and self.didexit ~= true then
                
                if caty <= self.maxheihgt + 2400 then
                    print("making outer")
                    self.objects[self.nextnum] = self[1].new()
                    self.highest = self.highest - (150*self.mapscale)
                    print(self.highest)
                    self.objects[self.nextnum]:load(0,self.highest,(self.lastmode*-1)-3,self.mapscale,nil,self.world,1,self.debug)
                    self.didexit = true
                    self.nextnum = self.nextnum + 1
                end

            end
                
            if self.mode[1] == "c" and caty >= self.maxheihgt + 2500 or self.mode[1] == nil then
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
                
                self.highest = self.highest - (getmapheight(ranid)* self.mapscale)
                self.objects[self.nextnum]:load(0,self.highest,ranid,self.mapscale,self.nextnum,self.world,r,self.debug)
                self.eaten[2] = self.eaten[2] + self.objects[self.nextnum].food
                
        
                self.lastmode = self.objects[self.nextnum].exit
               
                self.nextnum = self.nextnum + 1
                end

                elseif self.mode[1] == "c" and caty <= self.highest - 50 and self.didgameover == false then
                triggerlightgameover(self.catid)
                self.didgameover = true
                end
            
            for i,j in ipairs(self.objects) do
             
                if self.scalefactor then
                
                if caty <= (self.objects[i].y - (800*(self.scaley/self.scalefactor))) then
                    self.objects[i]:destroy()
                    --table.remove( self.objects, i ) -- removing this makes the same thing [2] go on forever. Keeping will not make [3] draw possible, but still collission.
                
                end
            else
                
                if caty <= (self.objects[i].y - 800) then
                    self.objects[i]:destroy()
                    --table.remove( self.objects, i ) -- removing this makes the same thing [2] go on forever. Keeping will not make [3] draw possible, but still collission.
                
                end
            end
            end
            
            end,

            removeshape = function(self,id,arg,arg2) --ObjectManagerId, FoodIndex, Foodid
                assert(self.objects[id]~= nil)
                self.objects[arg2]:removeshape(id, arg)

            end,

            drawmap = function(self)
                if self.debug == false then
                    for d,l in ipairs(self.objects) do
                        if self.objects[d] ~= nil then
                        self.objects[d]:drawmap(false)
                        end
                    end
                else

                for d,l in ipairs(self.objects) do
                    if self.objects[d] ~= nil then
                    self.objects[d]:drawmap(true)
                    end
                end

                end
            end,

            drawfood = function(self)
                if self.debug == false then
                    for d,l in ipairs(self.objects) do
                        if self.objects[d] ~= nil then
                        self.objects[d]:drawfood(false)
                        end
                    end
                else

                    for d,l in ipairs(self.objects) do
                        if self.objects[d] ~= nil then
                        self.objects[d]:drawfood(true)
                        end
                    end
                end
            end


        }
    end
}
