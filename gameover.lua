local menu =  require("assets.menu")

function triggergameover(tcat, world, id, music, storage)

tcat.catslist[id].p.prop:setMask(2,4)
tcat.catslist[id].p.rectp:setMask(2,4)
tcat.catslist[id].p.body:setGravityScale(0.5)
table.remove(gamecats, id)
music:playsfx("suck")

local t, y = getposcam()
  --gameovermenu:draw(halfw+t-menuw/2,halfh+y-menuh,menuw,menuh,22)
storage["x"] = t
storage["y"] = y
storage["catx"] = tcat.catslist[id].p.body:getX()
storage["caty"] = tcat.catslist[id].p.body:getY()

end

