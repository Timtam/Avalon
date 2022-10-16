Class = require("pl.class")

Class.Position()
function Position:_init(domain, name, x, y, description)
  self.domain = domain
  self.name = name
  self.x = x
  self.y = y
  self.description = description
end

return Position