local List = require("pl.list")
local Stringx = require("pl.stringx")

local febnames = List.new()

function get_febname(name)
  febnames:append(name)
end

function hyras_evo(wer, was)
  if Stringx.startswith(was,"an") then was = "angriff" end
  if Stringx.startswith(was,"sc") then was = "schutz" end
  if Stringx.startswith(was,"of") then was = "offensiv" end
  if Stringx.startswith(was,"de") then was = "defensiv" end
  if Stringx.startswith(was,"st") then was = "stress" end
  if Stringx.startswith(was,"fu") then was = "fuehrung" end
  if Stringx.startswith(was,"au") then was = "aufladung" end
  wer = febnames[tonumber(wer)]
  world.Execute("evoliere "..wer.." "..was)
end

function clear_feblist()
  febnames:clear()
end

function forget_feb(wer)
  febnames:remove_value(wer)
end

function add_feb(wer)
  febnames:put(wer)
end

function hyras_init()
  world.Execute("febron")
end

return {
  Add = add_febname,
  Clear = clear_feblist,
  DeInit = clear_feblist,
  Evoliere = hyras_evo,
  Forget = forget_febname,
  Get = get_febname,
  Init = hyras_init
}