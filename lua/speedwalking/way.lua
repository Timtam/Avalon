Class = require("pl.class")
Const = require("speedwalking.constants")
List = require("pl.list")
Tablex = require("pl.tablex")
Types = require("pl.types")

Class.Way()

function Way:_init(source, way, target)
  self.way = List.split(way, " ")
  self.source = source
  self.target = target
  self.way = self.way:map(function(d)
    s = string.match(d, Const.SCRIPT_REGEX)
    if not Types.is_empty(s) then
      d = require(s)()
    end
    return d
  end)
  Tablex.readonly(self)
end

function Way:get_length()
  return self.way:len()
end

return Way