local Const = require("speedwalking.constants")
local List = require("pl.list")
local String = require("pl.stringx")
local Types = require("pl.types")
local Utils = {}

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
  local len = 0
  local i
  for i = 1, l:len() - 1 do
    len = len + l[i]:find_way(l[i+1]):get_length()
  end
  return len
end

Utils.way_duration = function(l, g)
  local dur = 0
  local p = Utils.resolve_way(l)
  p:foreach(function(d)
    if Types.type(d) == 'string' then
      if string.len(d) <= 2 then
        if g == true then
          dur = dur + Const.WALK_SPEED * Const.WALK_SPEED_GROUP_FACTOR
        else
          dur = dur + Const.WALK_SPEED
        end
      else
        if g == true then
          dur = dur + Const.WALK_SPEED_EXTRA * Const.WALK_SPEED_EXTRA_GROUP_FACTOR
        else
          dur = dur + Const.WALK_SPEED_EXTRA
        end
      end
    else
      dur = dur + d:get_duration()
    end
  end)
  return dur
end

Utils.resolve_way = function(l)
  local p = List.new()
  local i
  for i = 1, l:len() - 1 do
    p:extend(l[i]:find_way(l[i+1]).way)
  end
  i = 1
  repeat
    if Utils.is_inverse(p[i], p[i+1]) then
      p:chop(i,i+1)
      if i > 1 then
        i = i - 1
      end
    else
      i = i + 1
    end
  until i > p:len()
  return p
end

Utils.way_prevention_reason = function(p)
  local _, d, i, w
  for i = 1, p:len() - 1 do
    w = p[i]:find_way(p[i + 1])
    for _, d in pairs(w.way) do
      if Types.type(d) ~= 'string' then
        prevent = d:prevent_path()
        if not Types.is_empty(prevent) then
          return prevent
        end
      end
    end
  end
end

return Utils