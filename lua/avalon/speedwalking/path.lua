Class = require("pl.class")
List = require("pl.list")

Class.Path()

function Path:_init(path, target)
  self.path = List.split(path, " ")
  self.target = target
end

function Path:get_length()
  return self.path:len()
end

return Path