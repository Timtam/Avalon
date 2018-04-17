utils = {}

utils.path_length = function(l)
  len = 0
  for i = 1, l:len() - 1 do
    len = len + l[i]:find_path(l[i+1]):get_length()
  end
  return len
end

return utils