local menu =  require("assets.menu")

function triggergameover(tcat, world, id, music, storage)

tcat.catslist[id].p.prop:setMask(2,4)
tcat.catslist[id].p.rectp:setMask(2,4)
tcat.catslist[id].p.body:setGravityScale(0.5)
for _, i in ipairs(tcat.catslist[id].p.inflation) do
  if (_ % 2) == 0 then
  tcat.catslist[id].p.inflation[_]:setMask(2,4)
  end
end
tcat:setmode(2)
music:playsfx("suck")

local t, y = getposcam()
  --gameovermenu:draw(halfw+t-menuw/2,halfh+y-menuh,menuw,menuh,22)
storage["x"] = t
storage["y"] = y
storage["catx"] = tcat.catslist[id].p.body:getX()
storage["caty"] = tcat.catslist[id].p.body:getY()



--table.remove(tcat["catslist"], id)

end



function softgameover(tcat, world, id, music, storage) --Don't destroy cat; disable cat. Delete world after all is said and done.
  
  --music:playsfx("wave")
  print("Doing Soft Game over")
local t, y = getposcam()
  --gameovermenu:draw(halfw+t-menuw/2,halfh+y-menuh,menuw,menuh,22)
storage["x"] = t
storage["y"] = y

storage["catx"] = tcat.catslist[id].p.body:getX()
storage["caty"] = tcat.catslist[id].p.body:getY()

tcat.catslist[id].p.body:destroy() -- Atempts to use destroyed body when drawing.
table.remove(tcat["catslist"], id)
end

