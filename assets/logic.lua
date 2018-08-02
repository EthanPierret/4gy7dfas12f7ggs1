function getlistlenth(list)
local li = 0
for Index, Value in pairs( list ) do
    li = li + 1
end
return li
end