Class = require("pl.class")
PPI = require("ppi")
Types = require("pl.types")
Utils = require("timers.utils")
Zeit = require("zeit")

Class.Timer()

function Timer:_init(name, tick, duration, end_sound)
  -- interpreting parameters
  self.name = tostring(name)
  if Types.is_empty(duration) then self._duration = 0 else self._duration = tonumber(duration) end
  if Types.is_empty(end_sound) then self._end_sound = "" else self._end_sound = tostring(end_sound) end

  -- internals
  self.id = self.name:lower() .. "_" .. world.CreateGUID()
  self._time_fun = Utils.GetTimeFunction()
  self._creation_time = self._time_fun()
  self._avalon = PPI.Load(world.GetPluginVariable("", "avalon"))

  if self._duration > 0 then
    self._end_time = self._creation_time + self._duration
  else
    self._end_time = 0
  end

  self:SetTick(tick)

end

function Timer:_print_formatted_message(message, hours, mins, secs, colored)

  colored = Types.to_bool(colored)

  message = string.format(message, Zeit.format_time(hours, mins, secs))

  if colored == true then
    self._avalon.NoteColour(message, 150, 0, 0, 255, 255, 0)
  else
    world.Note(message)
  end
end

function Timer:_diff(_a, _b)

  _a, _b = Zeit.order(_a, _b)

  return Zeit.split_time(Zeit.round(_b - _a, 0))
end

function Timer:Tick()
  curr = self._time_fun()

  if self._tick_time > 0 and curr >= self._tick_time then
    self:Print()
    self._tick_time = curr + self._tick
  end

  if self._end_time > 0 and curr >= self._end_time then
    self:End()
    return true
  end

  return false
end

function Timer:End()
  local curr = self._time_fun()

  local hours, mins, secs = self:_diff(curr, self._creation_time)

  self:_print_formatted_message(self.name .. " wurde beendet, Dauer: %s", hours, mins, secs, true)

  if Types.is_empty(self._end_sound) == false then
    self._avalon.PSND(self._end_sound)
  end
end

function Timer:Print()
  local curr = self._time_fun()
  
  local hours, mins, secs = self:_diff(curr, self._creation_time)
  self:_print_formatted_message(self.name .. " ist bereits %s aktiv", hours, mins, secs)
end

function Timer:SetTick(tick)

  if Types.is_empty(tick) then self._tick = 0 else self._tick = tonumber(tick) end

  if self._tick > 0 then

    local diff = self._time_fun() - self._creation_time

    self._tick_time = self._time_fun() + (self._tick - (diff % self._tick))
    self:Print()
  else
    self._tick_time = 0
  end

end

function Timer:GetDuration()
  return self._time_fun() - self._creation_time
end

return Timer