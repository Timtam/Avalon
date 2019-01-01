Class = require("pl.class")
List = require("pl.list")
Types = require("pl.types")
require("natsort")

Timer = require("timers.timer")

Class.Processor()

function Processor:_init()
  self._timers = List.new()
end

function Processor:AddTimer(name, tick, duration, end_sound)
  t = Timer(name, tick, duration, end_sound)
  self._timers:append(t)
  return t.id
end

function Processor:Tick()
  i = 1
  
  while i <= self._timers:len() do
    r = self._timers[i]:Tick()
    
    if r == true then
      self._timers:remove(i)
    else
      i = i + 1
    end
  end
end

function Processor:EndTimer(id)
  t = self._timers:filter(function(tt)
    if Types.type(id) == "Timer" then
      return tt.id == id.id
    else
      return tt.id == id
    end
  end)

  if t:len() == 0 then
    world.Note("FEHLER: Kein Timer mit dieser ID gefunden.")
  elseif t:len() > 1 then
    world.Note("FEHLER: Mehr als ein Timer mit dieser ID gefunden. Dies sollte nicht passieren.")
  else
    t[1]:End()
    self._timers:remove_value(t[1])
  end
end

function Processor:Print()

  if self._timers:len() == 0 then
    world.Note("Derzeit werden keine Zeiten gestoppt.")
    return
  end

  ids = List.new()

  self._timers:foreach(function(t)
    ids:append(t.id)
  end)

  for _, id in ipairs(natsort(ids)) do
    t = self._timers:filter(function(tt)
      return tt.id == id
    end)
    if t:len() == 1 then
      t[1]:Print()
    end
  end
end

return Processor
