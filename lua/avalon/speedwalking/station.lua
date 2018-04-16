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
end

function Station:matches(identifier)
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
  if (domain == "" or String.startswith(self.domain, domain) == true) and (String.startswith(self.name, name)) then
    return true
  end
  return false
end

function Station:add_path(target, path)
  self.paths:append(Path(path, target))
end

return Station