Class = require("pl.class")
Const = require("timers.constants")
List = require("pl.list")
Types = require("pl.types")
require("natsort")

Timer = require("timers.timer")

Class.Processor()

function Processor:_init()
  self._timers = List.new()
end

function Processor:AddTimer(name, tick, duration, end_sound, override)
  override = Types.to_bool(override)
  t = nil

  self._timers:foreach(function(tt)
    if tt.name == name then
      t = tt
    end
  end)

  if t ~= nil and override == false then
    return Const.ALREADY_EXISTS
  end

  nt = Timer(name, tick, duration, end_sound)

  if t ~= nil then
    self._timers[self._timers:index(t)] = nt
  else
    self._timers:append(nt)
  end

  return nt.id
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
    return Const.NOT_FOUND
  elseif t:len() > 1 then
    return Const.MULTIPLE_RESULTS
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

  world.Note("Aktuell gestoppte Zeiten:")

  for _, id in ipairs(natsort(ids)) do
    t = self._timers:filter(function(tt)
      return tt.id == id
    end)
    if t:len() == 1 then
      t[1]:Print()
    end
  end
end

function Processor:SetTick(id, tick)

  t = self._timers:filter(function(tt)
    if Types.type(id) == "Timer" then
      return tt.id == id.id
    else
      return tt.id == id
    end
  end)

  if t:len() == 0 then
    return Const.NOT_FOUND
  elseif t:len() > 1 then
    return Const.MULTIPLE_RESULTS
  else
    t[1]:SetTick(tick)
  end
end

return Processor
