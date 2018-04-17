Class = require("pl.class")
Const = require("avalon.speedwalking.constants")
List = require("pl.list")
Path = require("avalon.speedwalking.path")
String = require("pl.stringx")

Class.Station()
function Station:_init(domain, name, id, description)
  self.domain = domain:lower()
  self.name = name:lower()
  self.id = id:lower()
  self.description = description
  self.paths = List.new()
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

function Station:add_path(target, path)
  self.paths:append(Path(path, target))
end

function Station:find_path(target)
  for _, p in pairs(self.paths) do
    if p.target == target then
      return p
    end
  end
  return nil
end

return Station