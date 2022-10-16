Class = require("pl.class")
List = require("pl.list")
Position = require("positioning.position")

Class.PositionHandler()

function PositionHandler:_init()
  self.positions = List.new()
end

function PositionHandler:add(domain, name, x, y, description)
  self.positions:push(Position(domain, name, x, y, description))
end

return PositionHandler