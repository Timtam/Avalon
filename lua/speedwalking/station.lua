local Class = require("pl.class")
local Const = require("speedwalking.constants")
local List = require("pl.list")
local String = require("pl.stringx")
local Types = require("pl.types")
local Utils = require("speedwalking.utils")
local Way = require("speedwalking.way")

Class.Station()
function Station:_init(domain, name, id, description)
  self.domain = domain:lower()
  self.name = name:lower()
  self.id = id:lower()
  self.description = description
  self.ways = List.new()
  local mt = getmetatable(self)
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
  local domain, name = string.match(identifier, Const.STATION_REGEX)
  if not Types.is_empty(identifier) then
    if Types.is_empty(domain) and Types.is_empty(name) then
      return false
    end
  else
    return true
  end
  if not Types.is_empty(domain) and not inexact_match(self.domain, domain) then
    return false
  end
  if not Types.is_empty(name) then
    if exact and name ~= self.name then
      return false
    elseif not exact and not inexact_match(self.name, name) then
      return false
    end
  end
  return true
end

function Station:add_way(target, way)
  self.ways:append(Way(self, way, target))
end

function Station:find_way(target)
  local _, p
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

function Station:find_paths(target, path)
  path = path or List.new()
  path = path:clone():append(self)
  if self == target then
    return List.new():append(path)
  end
  local paths = List.new()
  local _, t
  for _, t in ipairs(self.ways) do
    if not path:contains(t.target) then
      local newpaths = t.target:find_paths(target, path)
      paths:extend(newpaths)
    end
  end
  return paths
end

return Station