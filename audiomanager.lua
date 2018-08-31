
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
            sfx=nil,

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
            if self.storage["sfx"] == nil then
            self.storage["sfx"] = {}
            end

            self.storage["sfx"]["suck"] = love.audio.newSource("assets/audio/yousuck.wav","stream")
            self.storage["sfx"]["inflate"] = love.audio.newSource("assets/audio/wave.wav","stream")
            self.storage["sfx"]["wave"] = love.audio.newSource("assets/audio/wave.wav","stream")
            self.storage["sfx"]["butterball"] = {}
            self.storage["sfx"]["cute"] = {}
            self.storage["sfx"]["relaxed"] = {}
            self.storage["sfx"]["high"] = {}
            self.storage["sfx"]["butterball"][1] = love.audio.newSource("assets/audio/cats/Butterball1.wav","stream")
            self.storage["sfx"]["butterball"][2] = love.audio.newSource("assets/audio/cats/Butterball2.wav","stream")
            self.storage["sfx"]["butterball"][3] = love.audio.newSource("assets/audio/cats/Butterball3.wav","stream")
            self.storage["sfx"]["butterball"][4] = love.audio.newSource("assets/audio/cats/Butterball4.wav","stream")
            self.storage["sfx"]["cute"][1] = love.audio.newSource("assets/audio/cats/Cute1.wav","stream")
            self.storage["sfx"]["cute"][2] = love.audio.newSource("assets/audio/cats/Cute2.wav","stream")
            self.storage["sfx"]["relaxed"][1] = love.audio.newSource("assets/audio/cats/Relaxed1.wav","stream")
            self.storage["sfx"]["relaxed"][2] = love.audio.newSource("assets/audio/cats/Relaxed2.wav","stream")
            self.storage["sfx"]["high"][1] = love.audio.newSource("assets/audio/cats/High1.wav","stream")
            self.storage["sfx"]["high"][2] = love.audio.newSource("assets/audio/cats/High2.wav","stream")
            self.storage["sfx"]["high"][3] = love.audio.newSource("assets/audio/cats/High3.wav","stream")
            self.storage["sfx"]["high"][4] = love.audio.newSource("assets/audio/cats/High4.wav","stream")

        end,
        playsfx = function(self,id)
            self.storage["sfx"][id]:play()
        end,
        quesfx = function(self,id,type)
            if self.sfx ~= nil then
                if self.sfx:isPlaying() == false and type == 1 then
                    self.sfx = self.storage["sfx"][id]
                    self.sfx:play()
                elseif self.sfx:isPlaying() == false and type == 2 then
                    self.sfx = self.storage["sfx"][id][math.random(1,#self.storage["sfx"][id])]
                    self.sfx:play()
                end
            elseif type == 1 then
            self.sfx = self.storage["sfx"][id]
            self.sfx:play()
            else
                self.sfx = self.storage["sfx"][id][math.random(1,#self.storage["sfx"][id])]
                self.sfx:play()
            end
        end ,

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
        elseif self.storage[self.id] ~= nil then
            self.song = self.storage[self.id][1]
        end

        end,

        updatelist =function(self, id)
            self.id = id
            if self.song then
            self.song:stop()
            elseif self.storage[self.id] ~= nil then
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
        update = function(self)
            
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
                --self:updatelist(self.id)
                end
            else
            self.timer = self.timer + 0.016
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
            for i, j in ipairs(self.storage[id]) do
                self.storage[id][i]:setVolume(self.volume)
                self.storage[id][i]:setVolumeLimits(0,self.volume)
                --self.storage[id][i]:setPitch(pitch)

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