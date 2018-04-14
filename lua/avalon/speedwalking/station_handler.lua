Class = require("pl.class")
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
  return res
end

return StationHandler