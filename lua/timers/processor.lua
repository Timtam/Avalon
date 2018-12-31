Class = require("pl.class")
List = require("pl.list")

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
  i = 0
  
  while i < self._timers:len() do
    r = self._timers[i]:Tick()
    
    if r == true then
      self._timers:remove(i)
    else
      i = i + 1
    end
  end
end

return Processor
