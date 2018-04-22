Class = require("pl.class")
Const = require("speedwalking.constants")
List = require("pl.list")
Station = require("speedwalking.station")
String = require("pl.stringx")
Types = require("pl.types")

Class.StationHandler()

function StationHandler:_init()
  self.stations = List.new()
end

function StationHandler:add(domain, name, id, description)
  self.stations:push(Station(domain, name, id, description))
end

function StationHandler:find(identifier)
  res = self.stations:filter(function(s)
    return s:matches(identifier)
  end)
  exact_matches = res:filter(function(s)
    return s:matches(identifier, true)
  end)
  if exact_matches:len() == 1 then
    return exact_matches
  end
  return res
end

function StationHandler:parse_speedwalks(speedwalks, silent)
  silent = silent or false
  failure = 0
  parsed = 0
  for name, path in pairs(speedwalks) do
    failure = failure + 1
    source, target = string.match(name, Const.SPEEDWALK_REGEX)
    possible_sources = self:find(source)
    if possible_sources:len() > 1 and silent == false then
      world.Note("Fehlerhafter Speedwalk "..name..": mehrere Startorte fuer "..source.." moeglich")
    end
    if possible_sources:len() == 0 and silent == false then
      world.Note("Fehlerhafter Speedwalk "..name..": kein Startort fuer "..source.." gefunden")
    end
    possible_targets = self:find(target)
    if possible_targets:len() > 1 and silent == false then
      world.Note("Fehlerhafter Speedwalk "..name..": mehrere Zielorte fuer "..target.." moeglich")
    end
    if possible_targets:len() == 0 and silent == false then
      world.Note("Fehlerhafter Speedwalk "..name..": kein Zielort fuer "..target.." gefunden")
    end
    if possible_sources:len() == 1 and possible_targets:len() == 1 then
      possible_sources[1]:add_way(possible_targets[1], path)
      parsed = parsed + 1
      failure = failure - 1
    end
  end
  if silent == false then
    self:validate()
    world.Note(tostring(parsed).." Speedwalks fuer "..tostring(self.stations:len()).." Stationen geladen.")
    world.Note(tostring(failure).." fehlerhafte Speedwalks.")
  end
end

function StationHandler:validate()
  --tbl = {}
  --self.stations:foreach(function(s)
  --  if Types.is_empty(tbl[s.id]) then
  --    tbl[s.id] = List.new()
  --  end
  --  tbl[s.id]:append(s)
  --end)
  --for _, l in ipairs(tbl) do
  --  if l:len() > 1 then
  --    world.Note("Warnung: Mehrere Stationen mit der selben ID gefunden: "..l:map(function(s) return String.title(s.domain).."."..String.title(s.name) end):join(", "))
  --  end
  --end
  self.stations:foreach(function(s)
    s.ways:foreach(function(w)
      if Types.is_empty(w.target:find_way(s)) then
        world.Note("Warnung: Es existiert ein Weg von "..String.title(s.domain).."."..String.title(s.name).." nach "..String.title(w.target.domain).."."..String.title(w.target.name)..", aber nicht umgekehrt.")
      end
    end)
  end)
end

function StationHandler:delete(station)
  if station.ways:len() > 0 then
    return false
  end
  self.stations:remove_value(station)
  return true
end

return StationHandler