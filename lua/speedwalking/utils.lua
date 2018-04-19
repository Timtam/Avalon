Const = require("speedwalking.constants")
List = require("pl.list")
String = require("pl.stringx")
Types = require("pl.types")
Utils = {}

Utils.is_inverse = function(dir1, dir2)
  if Types.type(dir1) ~= Types.type(dir2) then
    return false
  end
  if Types.type(dir1) ~= 'string' then
    return dir2:inverts(dir1)
  end
  dir1 = dir1:lower()
  dir2 = dir2:lower()
  if string.len(dir1) ~= string.len(dir2) then
    return false
  end
  if string.len(dir1) > 2 then
    -- we separate everything identical from those two directions
    -- e.g. kletter_, schwimm_
    local i
    local ident = ""
    for i = 1, string.len(dir1) do
      if not Types.is_empty(Const.DIRECTIONS[dir1:sub(string.len(ident)+1)]) or not Types.is_empty(Const.DIRECTIONS[dir2:sub(string.len(ident)+1)]) then
        break
      end
      if String.at(dir1, i) == String.at(dir2, i) then
        ident = ident..String.at(dir1, i)
      else
        break
      end
    end
    dir1 = dir1:sub(string.len(ident)+1)
    dir2 = dir2:sub(string.len(ident)+1)
  end
  if Const.DIRECTIONS[dir1] == dir2 then
    return true
  end
  return false
end

Utils.way_length = function(l)
  len = 0
  for i = 1, l:len() - 1 do
    len = len + l[i]:find_way(l[i+1]):get_length()
  end
  return len
end

Utils.way_duration = function(l)
  -- we first need to resolve the path and load all scripts
  -- thats not quite the nicest way right now, but lets see  if we can improve it further later on
  dur = 0
  p = Utils.resolve_way(l)
  p:foreach(function(d)
    if Types.type(d) == 'string' then
      if string.len(d) <= 2 then
        dur = dur + Const.WALK_SPEED
      else
        dur = dur + Const.WALK_SPEED_EXTRA
      end
    else
      dur = dur + d:get_duration()
    end
  end)
  return dur
end

Utils.resolve_way = function(l)
  p = List.new()
  local i
  for i = 1, l:len() - 1 do
    w = l[i]:find_way(l[i+1]).way
    w = w:map(function(d)
      s = string.match(d, Const.SCRIPT_REGEX)
      if not Types.is_empty(s) then
        d = require(s)()
      end
      return d
    end)
    p:extend(w)
  end
  i = 1
  repeat
    if Utils.is_inverse(p[i], p[i+1]) then
      p:chop(i,i+1)
    else
      i = i + 1
    end
  until i > p:len()
  return p
end

return Utils