
--src1 = love.audio.newSource("bang.wav", "static")

return{
    new = function(id)
        return {
            mid = id,
            song = nil,
            storage = {},
            seed = 0,
            playing = false,
            timer = 0,
            volume = 1,
            pitch = nil,

        load = function(self, songid, volume, pitch)
            if songid == 1 then
                self.song = love.audio.newSource("assets/bgm.mp3","stream")
                self.song:setVolume(volume)
                self.song:setPitch(pitch)
            end
        end,

        loadlist = function(self, id)

        if id == 1 and self.storage[1] == nil then -- Upbeat
            self.storage[1] = {}
            self.id = 1
            --self.storage[1][1] = love.audio.newSource("assets/audio/yousuck.wav","stream")
        
            self.storage[1][1] = love.audio.newSource("assets/audio/happyendings.ogg","stream")
            self.storage[1][2] = love.audio.newSource("assets/audio/specialday.ogg","stream")
            self.storage[1][3] = love.audio.newSource("assets/audio/Boardwalk-Arcade.ogg","stream")
            self.storage[1][4] = love.audio.newSource("assets/audio/Tiki-Party.ogg","stream")
        elseif id == 2 and self.storage[2] == nil then -- Dance
            self.storage[2] = {}
            self.id = 2

            self.storage[2][1] = love.audio.newSource("assets/audio/Dancing-on-Clouds.ogg","stream")
            self.storage[2][2] = love.audio.newSource("assets/audio/SnakeTrance.ogg","stream")
            self.storage[2][3] = love.audio.newSource("assets/audio/Surreal-Chase.ogg","stream")
            

        elseif id == 3 and self.storage[3] == nil then -- Tehcno
            self.storage[3] = {}
            self.id = 3

            self.storage[3][1] = love.audio.newSource("assets/audio/Techno-Dreaming.ogg","stream")
            self.storage[3][2] = love.audio.newSource("assets/audio/Techno-Celebration.ogg","stream")
            self.storage[3][3] = love.audio.newSource("assets/audio/City-For-Mankind.ogg","stream")

        elseif id == 4 and self.storage[4] == nil then -- Relaxing
            self.storage[4] = {}
            self.id = 4

            self.storage[4][1] = love.audio.newSource("assets/audio/BedtimeStory.ogg","stream")
            
            self.storage[4][2] = love.audio.newSource("assets/audio/Moonlight-Flying.ogg","stream")
            --self.storage[4][3] = love.audio.newSource("assets/audio/City-For-Mankind.ogg","stream")


        elseif id == 5 and self.storage[5] == nil then
            self.storage[5] = {}
            self.id = 5

            self.storage[5][1] = love.audio.newSource("assets/audio/bgm.ogg","stream")
            self.storage[5][2] = love.audio.newSource("assets/audio/bgm.ogg","stream")
            self.storage[5][3] = love.audio.newSource("assets/audio/bgm.ogg","stream")
            self.storage[5][4] = love.audio.newSource("assets/audio/bgm.ogg","stream")


        
        end

    end,


        loadsfx = function(self,volume,pitch)
            self.storage["sfx"] = {}

            self.storage["sfx"]["suck"] = love.audio.newSource("assets/audio/yousuck.wav","stream")
        end,
        playsfx = function(self,id)
            self.storage["sfx"][id]:play()
        end,

        startstop = function(self,play)
            if self.song ~= nil then
            if play == false and self.song:isPlaying() then
                self.song:pause()
                self.playing = false
            end

            if play == true and self.song:isPlaying() == false then
                self.song:play()
                self.playing = true
            end
        else
            self.song = self.storage[self.id][1]
        end

        end,

        updatelist =function(self, id)
            self.id = id
            if self.song then
            self.song:stop()
            else
                self.song = self.storage[self.id][1]
            end
            for i, k in ipairs(self.storage) do
                if i ~= id then
                    self.storage[i] = nil
                end
            end

        end,

        updatevolume = function(self,volume)
        self.volume = volume
            if self.storage[self.id] ~= nil then
            for i, k in ipairs(self.storage[self.id]) do
            self.storage[self.id][i]:setVolume(volume)
            self.storage[self.id][i]:setVolumeLimits(0,volume)
            end
        end
        end,
<<<<<<< HEAD
        update = function(self)
=======
        update = function(self,dt)
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
            if self.timer > 1 then
                self.timer = 0
                if self.song ~= nil then
                    if self.song:isPlaying() == false and self.playing == true then

                local r = math.random(1,#self.storage[self.id])
                        self.song:stop()
                        self.song = self.storage[self.id][r]
                        self.song:setVolumeLimits(0,self.volume)
                        self.song:setVolume(self.volume)
                        self.song:play()
                        self.playing = true
                        

                    end
                else
                self:updatelist(self.id)
                end
            else
<<<<<<< HEAD
            self.timer = self.timer + 0.016
=======
            self.timer = self.timer + dt
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52
        end
        end,

        setseed = function(self,seed)
            self.seed = seed
            math.randomseed(self.seed)
        end,

        playlist = function(self,id, pitch)
            local len = #self.storage[id]
            self.id = id
            
            local r = math.random(1,len)
                debugtext2 = r
            for i, j in ipairs(self.storage[id]) do
                self.storage[id][i]:setVolume(self.volume)
                self.storage[id][i]:setVolumeLimits(0,self.volume)
<<<<<<< HEAD
                --self.storage[id][i]:setPitch(pitch)
=======
                self.storage[id][i]:setPitch(pitch)
>>>>>>> f97fd8581d772440b2107f69c3f73cbd2f9e4b52

                if self.playing == false then
                self.song = self.storage[id][r]
                self.storage[id][r]:play()
                self.playing = true
                end
            end 

        end,

            play = function(self)
                self.song:play()




            end





           
        }
    end
}