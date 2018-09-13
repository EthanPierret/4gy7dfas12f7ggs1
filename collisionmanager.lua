
collisionmanager = {}

begincollision = function(a,b,coll)

    love.graphics.setColor(0,0,0,255)

    local x5,y5 = coll:getNormal()
    --debugtext = a:getGroupIndex().." col "..b:getGroupIndex().." of: "..x5..", "..y5
    local indexa = a:getGroupIndex()
    local indexb = b:getGroupIndex()
    
    -- -2 = Cat ,-3 = Mouth, -4 = Food, -5 = Obby, -6 = SpikeFood
    if indexa == -3 or indexb == -3 then
      if indexa == -4 or indexa == -6 then
        
        table.insert(destroy_queue, {a:getUserData( ), indexa, a:getBody():getUserData()})

        a:getBody():destroy()
        a:destroy()
        a:getBody():release()
        a:release() -- works.

        return "food"
        
        
      end
      if indexb == -4 or indexb == -6 then
        
        table.insert(destroy_queue, {b:getUserData( ), indexb, b:getBody():getUserData()})

        b:getBody():destroy()
        b:destroy()
        b:getBody():release()
        b:release()

        return "food"
  
      end
  end

  if indexa == -2 or indexb == -2 then
  
   if indexa == -5 or indexb == -5 or indexa == -6 or indexb == -6 then
    if indexa == -2 then
    -- table.insert(destroy_queue, {a:getUserData( ), -2})
    dogameover(a:getUserData( ))
    else
    -- table.insert(destroy_queue, {b:getUserData( ), -2})
      dogameover(b:getUserData( ))
    end
  elseif indexa == -7 then
    triggerevent(a:getUserData())
    
    a:destroy()
    a:release()
  elseif indexb == -7 then
    triggerevent(b:getUserData())
    
    b:destroy()
    b:release()
   end


  end
  return false
end

collisionmanager.new = function(id)
  local self = self or {}
  self.id = id


  --cat.new = function(x, y, rad, physics)
    
  self.begincollision = function(a,b,coll)

    love.graphics.setColor(0,0,0,255)

    local x5,y5 = coll:getNormal()
    debugtext = a:getGroupIndex().." col "..b:getGroupIndex().." of: "..x5..", "..y5
    local indexa = a:getGroupIndex()
    local indexb = b:getGroupIndex()
    if indexa == -3 or indexb == -3 then
      if indexa == -4 then
        a:getBody():release() -- works.
        
      end
      if indexb == -4 then
        b:getBody():release()
        
      end
  end
end


  return self

end

