-- used to retrieve current time
time_fun = os.time

utils = {}

utils.SetTimeFunction = function(fun)
  time_fun = fun
end

utils.GetTimeFunction = function()
  return time_fun
end

return utils