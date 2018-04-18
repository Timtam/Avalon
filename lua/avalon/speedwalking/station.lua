Class = require("pl.class")
Const = require("avalon.speedwalking.constants")
List = require("pl.list")
String = require("pl.stringx")
Utils = require("avalon.speedwalking.utils")
Way = require("avalon.speedwalking.way")

Class.Station()
function Station:_init(domain, name, id, description)
  self.domain = domain:lower()
  self.name = name:lower()
  self.id = id:lower()
  self.description = description
  self.ways = List.new()
  mt = getmetatable(self)
  mt.__eq = function(self, s)
    return s.domain == self.domain and s.name == self.name and s.id == self.id and s.description == self.description
  end
  setmetatable(self, mt)
end

function Station:matches(identifier, exact)
  exact = exact or false
  identifier = identifier:lower()
  if String.startswith(identifier, "raum/") then
    if self.id == identifier then
      return true
    else
      return false
    end
  end
  domain, name = string.match(identifier, Const.STATION_REGEX)
  if domain ~= "" and name == "" then
    name = domain
    domain = ""
  end
  if (domain == "" or String.startswith(self.domain, domain) == true) and ((exact == false and String.startswith(self.name, name)) or (exact == true and self.name == name)) then
    return true
  end
  return false
end

function Station:add_way(target, way)
  self.ways:append(Way(way, target))
end

function Station:find_way(target)
  for _, p in pairs(self.ways) do
    if p.target == target then
      return p
    end
  end
  return nil
end

function Station:find_path(target, path)
  path = path or List.new()
  path = path:clone():append(self)
  if self == target then
    return path
  end
  local shortest = nil
  local _, t
  for _, t in ipairs(self.ways) do
    if not path:contains(t.target) then
      newpath = t.target:find_path(target, path)
      if newpath then
        if not shortest or Utils.way_length(newpath) < Utils.way_length(shortest) then
          shortest = newpath
        end
      end
    end
  end
  return shortest
end

return Station