

function getlistlenth(list)
local li = 0
for Index, Value in pairs( list ) do
    li = li + 1
end
return li
end

function resizeb(list, scale)
    for _,v in pairs(list) do
        
            list[_] = list[_] * scale
           -- v[1] = v[1] * scale
    end
end

function setposshape(offx,offy,templist)
for f,v in ipairs(templist) do
        
    if (f % 2 == 0) then
    templist[f] = templist[f] + offy
    --love.graphics.setColor(255,255,255,128)
    else
      templist[f] = templist[f] + offx
    end
  end
  return templist
end
