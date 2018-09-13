return {
lightgameover = function()
    return{
       video,
       videostream,
       images = {},
       sound,
       scalefactor = 1,

    go = function(self,x,y,scale)
    print("Going")
    self.x = x
    self.y = y
    self.scalefactor = scale
    
    -- Maybe load and play seperatly? Start of program?

    
    if math.random(1,2) == 1 then
    self.sound = love.audio.newSource("assets/audio/Gameover3.wav","stream")
    else
    self.sound = love.audio.newSource("assets/audio/Gameover4.wav","stream")
    end
    self.sound:setVolume(0.5)
    self.sound:play()
    self.timer = 0
    --self.video:getSource():setVolume(1)
    --self.video:getSource():play()
    
    end,

    update = function(self)
        self.timer = self.timer + 0.01875
        
    end,

    checkplay = function(self)
        if self.sound:isPlaying() == false then
            return false
        else
            return true
        end
    end,

    draw = function(self, caty)
    if self.sound:isPlaying() == false then
        
        --self.video:rewind()
        --self.video:pause()
        return false
        
    else
        
        --love.graphics.draw(self.video,0,0+caty-(self.video:getHeight()/2),0,1,1)
        
        
        love.graphics.draw(loadstorage["light"][1],self.x+self.timer,100+caty-(1280*self.scalefactor),0,self.scalefactor,self.scalefactor)
        love.graphics.draw(loadstorage["light"][2],self.x-self.timer,100+caty-(1280*self.scalefactor),0,self.scalefactor,self.scalefactor) --x,y,rotation,scalex, scaley, orginoffsetx, orginoffy
        love.graphics.draw(loadstorage["light"][3],self.x+(self.timer/2),100+caty-(1280*self.scalefactor),0,self.scalefactor,self.scalefactor)
        love.graphics.draw(loadstorage["light"][4],self.x-(self.timer/2),100+caty-(1280*self.scalefactor),0,self.scalefactor,self.scalefactor)
        love.graphics.draw(loadstorage["light"][5],self.x,(100+caty)+(self.timer/2)-(1280*self.scalefactor),0,self.scalefactor,self.scalefactor)

        love.graphics.draw(loadstorage["light"][6],self.x,(100+caty)-(self.timer/4)-(1280*self.scalefactor),0,self.scalefactor,self.scalefactor)
        --love.graphics.draw(self.images["white"],100,0+caty-(self.video:getHeight()/2),0,0.5,0.5)
        love.graphics.draw(loadstorage["light"]["circle"],self.x,-350+(caty)+(self.timer*8)-(1280*self.scalefactor),0,self.scalefactor,self.scalefactor)
        if math.floor((self.timer*8)-110) > 1 then
        for i = 1, math.floor((self.timer*8)-110) do
            love.graphics.draw(loadstorage["light"]["offwhite"],self.x,(100+caty)-(1280*self.scalefactor),0,self.scalefactor,self.scalefactor)
            
            if i >= 60 then
                love.graphics.draw(loadstorage["light"]["white"],self.x,(100+caty)-(1280*self.scalefactor),0,self.scalefactor,self.scalefactor)
            end
        end
        end
        return true
    end

    end


}
end
}