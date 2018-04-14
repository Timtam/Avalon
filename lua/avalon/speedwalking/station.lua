Class = require("pl.class")
Const = require("avalon.speedwalking.constants")
String = require("pl.stringx")

Class.Station()
function Station:_init(domain, name, id, description)
  self.domain = domain:lower()
  self.name = name:lower()
  self.id = id:lower()
  self.description = description
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
  if (domain == "" or self.domain == domain) and (name == self.name) then
    return true
  end
  return false
end

return Station