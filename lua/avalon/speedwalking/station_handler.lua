Class = require("pl.class")
Const = require("avalon.speedwalking.constants")
List = require("pl.list")
Station = require("avalon.speedwalking.station")

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

function StationHandler:parse_speedwalks(speedwalks)
  failure = 0
  parsed = 0
  for name, path in pairs(speedwalks) do
    failure = failure + 1
    source, target = string.match(name, Const.SPEEDWALK_REGEX)
    possible_sources = self:find(source)
    if possible_sources:len() > 1 then
      --world.Note("Error parsing speedwalk "..name..": found multiple possibilities for source "..source)
    end
    if possible_sources:len() == 0 then
      --world.Note("Error parsing speedwalk "..name..": no possible source found for "..source)
    end
    possible_targets = self:find(target)
    if possible_targets:len() > 1 then
      --world.Note("Error parsing speedwalk "..name..": found multiple possibilities for target "..target)
    end
    if possible_targets:len() == 0 then
      --world.Note("Error parsing speedwalk "..name..": no possible target found for "..target)
    end
    if possible_sources:len() == 1 and possible_targets:len() == 1 then
      possible_sources[1]:add_way(possible_targets[1], path)
      parsed = parsed + 1
      failure = failure - 1
    end
  end
  world.Note(tostring(parsed).." Speedwalks fuer "..tostring(self.stations:len()).." Stationen geladen.")
  world.Note(tostring(failure).." fehlerhafte Speedwalks.")
end

return StationHandler