Class = require("pl.class")
List = require("pl.list")

Class.Way()

function Way:_init(way, target)
  self.way = List.split(way, " ")
  self.target = target
end

function Way:get_length()
  return self.way:len()
end

return Way