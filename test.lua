PPI = require("ppi")
ppi = PPI.Load("aedf0cb0be5bf045860d54b7")
 if not ppi then
 error("Dependency plugin not installed!")
 end

function ksp1(zp,max_zp,mp,max_mp)
g_zp=zp
g_max_zp=max_zp
g_mp=mp
g_max_mp=max_mp
end

function ksp2(tp,max_tp,ap,max_ap)
g_tp=tp
g_max_tp=max_tp
g_ap=ap
g_max_ap=max_ap
play_tp()
end

function status(tp,zp,ap,mp)
g_tp=tp
g_zp=zp
g_ap=ap
g_mp=mp
play_tp()
end

function play_tp()
percent=tonumber(g_tp) / (tonumber(g_max_tp) / 100)
ppi.play(GetInfo(67).."/Sounds/tp.wav",0,2*math.floor(percent)-100)
end

function abc()
ppi.play(GetInfo(67).."/Sounds/Items/Put.wav",0,-50)
end