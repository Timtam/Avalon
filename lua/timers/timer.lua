Class = require("pl.class")
Types = require("pl.types")
Utils = require("timers.utils")

Class.Timer()

function Timer:_init(name, tick, duration, end_sound)
  -- interpreting parameters
  self.name = tostring(name)
  if Types.is_empty(tick) then self._tick = 0 else self._tick = tonumber(tick) end
  if Types.is_empty(duration) then self._duration = 0 else self._duration = tonumber(duration) end
  if Types.is_empty(end_sound) then self._end_sound = "" else self._end_sound = tostring(end_sound) end

  -- internals
  self.id = self.name:lower() .. "_" .. world.CreateGUID()
  self._time_fun = Utils.GetTimeFunction()
  self._creation_time = self._time_fun()

  if self._tick > 0 then
    self._tick_time = self._creation_time + self._tick
  else
    self._tick_time = 0
  end

  if self._duration > 0 then
    self._end_time = self._creation_time + self._duration
  else
    self._end_time = 0
  end

end

function Timer:_diff(_a, _b)
  function round(num, idp)
    return tonumber(string.format(" %." .. (idp or 0) .. "f", num))
  end

  a = _a
  b = _b
  if a < b then
    a = _b
    b = _a
  end

  diff = round(a - b, 0)

  hours = math.floor(diff / 3600)
  mins = math.floor((diff - hours * 3600) / 60)
  secs = round(((diff - hours * 3600) - mins * 60), 0)

  return hours, mins, secs
end

function Timer:_print_formatted_message(message, hours, mins, secs)
  msg = ""
  if hours > 0 then
    if hours == 1 then
      msg = msg .. "eine Stunde "
    else
      msg = msg .. tostring(hours) .. " Stunden "
    end
  end

  if mins > 0 then
    if hours > 0 and secs > 0 then
      msg = msg:sub(1, -2)
      msg = msg .. ", "
    elseif hours > 0 and secs == 0 then
      msg = msg .. "und "
    end

    if mins == 1 then
      msg = msg .. "eine Minute "
    else
      msg = msg .. tostring(mins) .. " Minuten "
    end
  end
  
  if secs > 0 then
    if mins > 0 or hours > 0 then
      msg = msg .. "und "
    end
    if secs == 1 then
      msg = msg .. "eine Sekunde"
    else
      msg = msg .. tostring(secs) .. " Sekunden"
    end
  end

  message = string.format(message, msg)
  world.Note(message)
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
  curr = self._time_fun()

  hours, mins, secs = self:_diff(curr, self._creation_time)

  self:_print_formatted_message(self.name .. " wurde beendet, Dauer: %s", hours, mins, secs)
end

function Timer:Print()
  curr = self._time_fun()
  
  hours, mins, secs = self:_diff(curr, self._creation_time)
  self:_print_formatted_message(self.name .. " ist bereits %s aktiv", hours, mins, secs)
end

return Timer