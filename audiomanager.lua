
--src1 = love.audio.newSource("bang.wav", "static")

return{
    new = function(id)
        return {
            mid = id,
            song = nil,
            storage = {},
            seed = 0,
            require("assets/logic"),

           load = function(self, songid, volume, pitch)
            if songid == 1 then
                self.song = love.audio.newSource("assets/bgm.mp3","stream")
                self.song:setVolume(volume)
                self.song:setPitch(pitch)
            end
        end,

        loadlist = function(self, id)

        if id == 1 then
            self.storage[1] = {}

            self.storage[1][1] = love.audio.newSource("assets/audio/bgm.mp3","stream")
            self.storage[1][2] = love.audio.newSource("assets/audio/happyendings.mp3","stream")
            self.storage[1][3] = love.audio.newSource("assets/audio/specialday.mp3","stream")
        elseif id == 2 then
            self.storage[2] = {}

            self.storage[2][1] = love.audio.newSource("assets/audio/bgm.mp3","stream")
            self.storage[2][2] = love.audio.newSource("assets/audio/happyendings.mp3","stream")
            self.storage[2][3] = love.audio.newSource("assets/audio/specialday.mp3","stream")
        end

    end,


        loadsfx = function(self,volume,pitch)
            self.storage["sfx"] = {}

            self.storage["sfx"]["suck"] = love.audio.newSource("assets/audio/yousuck.wav","stream")
        end,
        playsfx = function(self,id)
            self.storage["sfx"][id]:play()
        end,

        playlist = function(self,id, seed, volume, pitch)
            local len = getlistlenth(self.storage[id])

            math.randomseed(seed)
            local playing = false
            local r = math.random(1,len)
                debugtext2 = r
            for i, j in ipairs(self.storage[id]) do
                self.storage[id][i]:setVolume(volume)
                self.storage[id][i]:setPitch(pitch)

                if playing == false then
                self.storage[id][r]:play()
                playing = true
                end
            
            end 

        end,

            play = function(self)
                self.song:play()




            end





           
        }
    end
}