c = {
  DIRECTIONS = {
    o = "w",
    so = "nw",
    s = "n",
    sw = "no",
    w = "o",
    nw = "so",
    n = "s",
    no = "sw",
    hoch = "runter",
    runter = "hoch"
  },
  SCRIPT_FAILURE = -1,
  SCRIPT_REGEX = "^%{([a-zA-z0-9%.-_]+)%}$",
  SCRIPT_RUNNING = 0,
  SCRIPT_SUCCESS = 1,
  SCRIPT_UNINITIALIZED = -2,
  SPEEDWALK_REGEX = "^([a-zA-Z0-9%.]+)_([a-zA-Z0-9%.]+)$",
  STATION_REGEX = "^([a-zA-Z0-9]*)%.?([a-zA-Z0-9]*)$",
  WALK_SPEED = 0.3,
  WALK_SPEED_EXTRA = 0.7
}

return c