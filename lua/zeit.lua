-- nützliche Zeitfunktionen, auf Deutsch
-- auch ein wenig mathematisches dabei

local Stringx = require("pl.stringx")

-- rundet auf eine bestimmte Nachkommastelle
local function round(num, idp)
  return tonumber(string.format(" %." .. (idp or 0) .. "f", num))
end

-- gibt zuerst den kleineren, dann den größeren Wert zurück
local function order(_a, _b)
  if _a < _b then
    return _a, _b
  else
    return _b, _a
  end
end

-- zerlegt die Zeit in Stunden, Minuten und Sekunden
local function split_time(diff)

  local hours = math.floor(diff / 3600)
  local mins = math.floor((diff - hours * 3600) / 60)
  local secs = round(((diff - hours * 3600) - mins * 60), 0)

  return hours, mins, secs
end

-- formatiert eine Zeit in Stunden, Minuten und Sekunden in einen
-- schönen String

local function format_time(hours, mins, secs)

  local msg = ""

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

  if hours == 0 and mins == 0 and secs == 0 then
    msg = "0 Sekunden"
  end

  return Stringx.strip(msg)
end

return {
  format_time = format_time,
  order = order,
  round = round,
  split_time = split_time
}