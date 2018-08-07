local menu =  require("assets.menu")

function triggergameover(tcat, world, id, music)

tcat.catslist[id].p.prop:setMask(2,4)
tcat.catslist[id].p.rectp:setMask(2,4)
tcat.catslist[id].p.body:setGravityScale(0.5)
table.remove(gamecats, id)
music:playsfx("suck")


end

