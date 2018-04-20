Class = require("pl.class")
List = require("pl.list")
Tablex = require("pl.tablex")

Class.Way()

function Way:_init(way, target)
  self.way = List.split(way, " ")
  self.target = target
  Tablex.readonly(self)
end

function Way:get_length()
  return self.way:len()
end

return Way