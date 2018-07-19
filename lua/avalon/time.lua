-- provided by Magician
-- time-replication functions to replicate time behaviour just like in Avalon
-- includes moon position calculation as well

-- helpers

function get_direction(n)
  if 6 <= n and n <= 15 then
    return 1
  elseif 16 <= x and x <= 24 then
    return 2
  elseif 25 <= x and x <= 34 then
    return 3
  elseif 35 <= x and x <= 43 then
    return 4
  elseif 44 <= x and x <= 53 then
    return 5
  elseif 54 <= x and x <= 62 then
    return 6
  elseif 63 <= x and x <= 72 then
    return 7
  end
  return 0
end

-- call with real time (os.time)
-- returns the real seconds since avalon birthday
function get_avalon_seconds(time)
  return time - 808437600 -- 15.08.95 00:00:00
end

-- call with avalon seconds (get_avalon_seconds)
-- returns a table with year, month, day etc.
-- table contains the current avalon date
function get_avalon_date(seconds)
  clock = seconds * 13
  year = math.floor(clock/(365*24*3600))
  clock = clock - year * 365*24*3600
  day = math.floor(clock/(24*3600))
  clock = clock - day*24*3600
  day = day + 1

  if 1 <= day and day <= 31 then
    mon = 1
  elseif 32 <= day and day <= 59 then
    mon = 2
    day = day - 31
  elseif 60 <= day and day <= 90 then
    mon = 3
    day = day - 59
  elseif 91 <= day and day <= 120 then
    mon = 4
    day = day - 90
  elseif 121 <= day and day <= 151 then
    mon = 5
    day = day - 120
  elseif 152 <= day and day <= 181 then
    mon = 6
    day = day - 151
  elseif 182 <= day and day <= 212 then
    mon = 7
    day = day - 181
  elseif 213 <= day and day <= 243 then
    mon = 8
    day = day - 212
  elseif 244 <= day and day <= 273 then
    mon = 9
    day = day - 243
  elseif 274 <= day and day <= 304 then
    mon = 10
    day = day - 273
  elseif 305 <= day and day <= 334 then
    mon = 11
    day = day - 304
  elseif 335 <= day and day <= 365 then
    mon = 12
    day = day - 334
  end

  hour = math.floor(clock/3600)
  clock = clock - hour*3600
  min = math.floor(clock/60)
  clock = clock - min*60
  return {
          year = year,
          month = mon,
          day = day,
          hour = hour,
          min = min,
          sec = clock
         }
end

-- call with real time (os.time)
-- returns moon-relevant time information
-- thats day, hour, min and n
-- n is some internal coefficient which is relevant for retrieving moon positions
-- this function won't be of any use for external callers I guess
function get_avalon_moon_time(time)

  z = get_avalon_seconds(time)
  date = get_avalon_date(z)
  hour = date.hour
  min = date.min
  z = math.floor(z / 86400)
  day = (z * 13) % 31
  hour = hour - 18
  if hour < 0 then
    hour = hour + 24
  end
  return {
          day = day, 
          hour = hour, 
          min = min, 
          n = math.floor((hour * 60+min)*1.3333)
         }
end

-- call with real time (os.time)
-- returns a table with moon positions
-- table contains keys jani and foie
-- values are numbers from 0 to 7, whereas 0 = northwest and 7 = north
function get_avalon_moon_positions(time)

  seconds = get_avalon_seconds(time)
  moon = get_avalon_moon_time(time)

  x = 2 + math.floor((moon.n+64*moon.day)*0.038306451)
  if x > 76 then
    x = x - 76
  end

  sm = get_direction(x)

  moon.n = moon.n - 360

  x = 2 + math.floor((moon.n+64*moon.day)*0.038306451)

  if x > 73 then
    x = x - 73
  end

  bm = get_direction(x)
  
  return {
          jani = bm,
          foie = sm
         }
end

-- call with avalon seconds
-- returns the current weekday in avalon time
-- 0 = Sunday
function get_avalon_weekday(seconds)
  return math.floor(((seconds*13/24/3600)+4)%7)
end

return {
  get_avalon_seconds = get_avalon_seconds,
  get_avalon_date = get_avalon_date,
  get_avalon_moon_time = get_avalon_moon_date,
  get_avalon_moon_positions = get_avalon_moon_positions,
  get_avalon_weekday = get_avalon_weekday
}