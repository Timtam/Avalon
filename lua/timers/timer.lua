Class = require("pl.class")
PPI = require("ppi")
Types = require("pl.types")
Utils = require("timers.utils")
Zeit = require("zeit")

Class.Timer()

function Timer:_init(name, tick, duration, end_sound, print_function)
  -- interpreting parameters
  self.name = tostring(name)
  if Types.is_empty(duration) then self._duration = 0 else self._duration = tonumber(duration) end
  if Types.is_empty(end_sound) then self._end_sound = "" else self._end_sound = tostring(end_sound) end
  if Types.is_callable(print_function) then self._print_function = print_function else self._print_function = nil end

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

function Timer:_print_formatted_message(message, colored)

  colored = Types.to_bool(colored)

  if self._print_function ~= nil then
    message = self._print_function(message)
  end

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
  local print_function

  local hours, mins, secs = self:_diff(curr, self._creation_time)

  print_function = self._print_function
  self._print_function = nil

  self:_print_formatted_message(string.format(self.name .. " wurde beendet, Dauer: %s", Zeit.format_time(hours, mins, secs)), true)

  self._print_function = print_function

  if Types.is_empty(self._end_sound) == false then
    self._avalon.PSND(self._end_sound)
  end
end

function Timer:Print()
  local curr = self._time_fun()
  
  local hours, mins, secs = self:_diff(curr, self._creation_time)

  if self._end_time == 0 then
    self:_print_formatted_message(string.format(self.name .. " ist bereits %s aktiv", Zeit.format_time(hours, mins, secs)))
  else
    self:_print_formatted_message(string.format(self.name .. " ist bereits %s aktiv und wird noch %s laufen", Zeit.format_time(hours, mins, secs), Zeit.format_time(Zeit.split_time(self._end_time - curr))))
  end
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