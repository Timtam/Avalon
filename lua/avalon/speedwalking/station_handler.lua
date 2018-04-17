Class = require("pl.class")
Const = require("avalon.speedwalking.constants")
List = require("pl.list")
Station = require("avalon.speedwalking.station")
Types = require("pl.types")
Utils = require("avalon.speedwalking.utils")

Class.StationHandler()

function StationHandler:_init()
  self.stations = List.new()
end

function StationHandler:add(domain, name, id, description)
  -- we can push a formatted station already as well
  if Types.type(domain) == 'Station' then
    self.stations:push(domain)
    return
  end
  -- otherwise we push an entirely new one
  self.stations:push(Station(domain, name, id, description))
end

function StationHandler:find(identifier)
  res = self.stations:filter(function(s)
    return s:matches(identifier)
  end)
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
      world.Note("Error parsing speedwalk "..name..": found multiple possibilities for source "..source)
    end
    if possible_sources:len() == 0 then
      world.Note("Error parsing speedwalk "..name..": no possible source found for "..source)
    end
    possible_targets = self:find(target)
    if possible_targets:len() > 1 then
      world.Note("Error parsing speedwalk "..name..": found multiple possibilities for target "..target)
    end
    if possible_targets:len() == 0 then
      world.Note("Error parsing speedwalk "..name..": no possible target found for "..target)
    end
    if possible_sources:len() == 1 and possible_targets:len() == 1 then
      possible_sources[1]:add_path(possible_targets[1], path)
      parsed = parsed + 1
      failure = failure - 1
    end
  end
  world.Note(tostring(parsed).." Speedwalks fuer "..tostring(self.stations:len()).." Stationen geladen.")
  world.Note(tostring(failure).." fehlerhafte Speedwalks.")
end

function StationHandler:find_path(source, target, path, iteration)
  iteration = iteration or 0
  iteration = iteration + 1
  path = path or List.new()
  if Types.type(source) == 'string' then
    possible_sources = self:find(source)
    if possible_sources:len() > 1 then
      world.Note("Die Startangabe ist nicht eindeutig. Mehrere Orte treffen auf diese Angabe zu.")
      return nil
    end
    if possible_sources:len() == 0 then
      world.Note("Fuer die Startangabe wurde keine Position gefunden.")
      return nil
    end
    source = possible_sources[1]
  end
  if Types.type(target) == 'string' then
    possible_targets = self:find(target)
    if possible_targets:len() > 1 then
      world.Note("Die Zielangabe ist nicht eindeutig. Mehrere Orte treffen auf diese Angabe zu.")
      return nil
    end
    if possible_targets:len() == 0 then
      world.Note("Fuer die Zielangabe wurde keine Position gefunden.")
      return nil
    end
    target = possible_targets[1]
  end
  path = path:clone():append(source)
  if source == target then
    return path
  end
  local shortest = nil
  for _, t in pairs(source.paths) do
    if not path:contains(t.target) then
      newpath = self:find_path(t.target, target, path, iteration)
      if newpath then
        if not shortest or Utils.path_length(newpath) < Utils.path_length(shortest) then
          shortest = newpath
        end
      end
    end
  end
  return shortest
end

return StationHandler