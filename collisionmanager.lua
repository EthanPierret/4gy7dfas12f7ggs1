
collisionmanager = {}

begincollision = function(a,b,coll)

    love.graphics.setColor(0,0,0,255)

    local x5,y5 = coll:getNormal()
    debugtext = a:getGroupIndex().." col "..b:getGroupIndex().." of: "..x5..", "..y5
    local indexa = a:getGroupIndex()
    local indexb = b:getGroupIndex()
    if indexa == -3 or indexb == -3 then
      if indexa == -4 then
        debugtext2 = a:getUserData( )
        table.insert(destroy_queue, {a:getUserData( ), -4})
        a:getBody():release() -- works.
        
        
      end
      if indexb == -4 then
        debugtext2 = b:getUserData( )
        table.insert(destroy_queue, {b:getUserData( ), -4})
        b:getBody():release()
        
  
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
   end

  end

end

collisionmanager.new = function(id)
  local self = self or {}
  self.id = id










  
  --cat.new = function(x, y, rad, physics)
  
    
  se
  lf.begincollision = function(a,b,coll)



    love.graphics.setColor(0,0,0,255)


    
    local x5,y5 = coll:getNormal()
    
    debugtext = a:getGroupIndex().." col "..b:getGroupIndex().." of: "..x5..", "..y5
    local indexa = a:getGroupIndex()
    local indexb = b:getGroupIndex()
    if indexa == -3 or indexb == -3 then
      if indexa == -4 then
        a:getBody():release() -- works.
        love.event.quit()
      end
      if indexb == -4 then
        b:getBody():release()
        love.event.quit()
      end
  end
end


  return self

end

