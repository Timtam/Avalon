-- used to retrieve current time
local time_fun = os.time

local utils = {}

utils.SetTimeFunction = function(fun)
  time_fun = fun
end

utils.GetTimeFunction = function()
  return time_fun
end

return utils