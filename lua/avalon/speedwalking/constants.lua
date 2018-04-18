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
  SPEEDWALK_REGEX = "^([a-zA-Z0-9%.]+)_([a-zA-Z0-9%.]+)$",
  STATION_REGEX = "^([a-zA-Z0-9]*)%.?([a-zA-Z0-9]*)$",
  WALK_SPEED = 0.3,
  WALK_SPEED_EXTRA = 0.7
}

return c