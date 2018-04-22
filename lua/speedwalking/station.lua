Class = require("pl.class")
Const = require("speedwalking.constants")
List = require("pl.list")
String = require("pl.stringx")
Types = require("pl.types")
Utils = require("speedwalking.utils")
Way = require("speedwalking.way")

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
  local function inexact_match(full, short)
    local regex = "^([a-zA-Z]*)(%d*)$"
    local letters, numbers = string.match(short, regex)
    local combined = "^"..letters.."([a-zA-Z]*)"
    if Types.is_empty(numbers) then
      combined = combined.."(%d*)"
    else
      combined = combined..numbers
    end
    combined = combined.."$"
    return #{string.match(full, combined)} > 0
  end
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
  if Types.is_empty(domain) and Types.is_empty(name) then
    return false
  end
  if not Types.is_empty(domain) and Types.is_empty(name) then
    name = domain
    domain = ""
  end
  if not Types.is_empty(domain) and not inexact_match(self.domain, domain) then
    return false
  end
  if exact and name ~= self.name then
    return false
  elseif not exact and not inexact_match(self.name, name) then
    return false
  end
  return true
end

function Station:add_way(target, way)
  self.ways:append(Way(self, way, target))
end

function Station:find_way(target)
  for _, p in pairs(self.ways) do
    if p.target == target then
      return p
    end
  end
  return nil
end

function Station:delete_way(way)
  self.ways:remove_value(way)
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
        if not shortest or Utils.way_duration(newpath) < Utils.way_duration(shortest) then
          shortest = newpath
        end
      end
    end
  end
  return shortest
end

return Station