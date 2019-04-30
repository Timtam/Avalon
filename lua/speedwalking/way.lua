local Class = require("pl.class")
local Const = require("speedwalking.constants")
local List = require("pl.list")
local Types = require("pl.types")

Class.Way()

function Way:_init(source, way, target)
  self.way = List.split(way, " ")
  self.source = source
  self.target = target
  self.way = self.way:map(function(d)
    local s = string.match(d, Const.SCRIPT_REGEX)
    if not Types.is_empty(s) then
      local d = require(s)()
    end
    return d
  end)
  local mt = getmetatable(self)
  mt.__eq = function(self, w)
    return self.way == w.way and self.source == w.source and self.target == w.target
  end
  setmetatable(self, mt)
end

function Way:get_length()
  return self.way:len()
end

return Way