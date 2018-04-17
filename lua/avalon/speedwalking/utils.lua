utils = {}

utils.path_length = function(l)
  len = 0
  for i = 1, l:len() - 1 do
    len = len + l[i]:find_path(l[i+1]):get_length()
  end
  return len
end

utils.resolve_path = function(l)
  p = List.new()
  for i = 1, l:len() - 1 do
    p:extend(l[i]:find_path(l[i+1]).path)
  end
  return p
end

return utils