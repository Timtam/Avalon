Const = require("speedwalking.constants")
Date = require("pl.date")
Types = require("pl.types")
Utils = require("speedwalking.utils")

spdtbl = nil
spdind = {0, 0}
spdstep = 0
spdtext = false

function get_unix_time()
  world.CallPlugin(world.GetPluginVariable("", "time"), "time", "")
  rtime = world.GetPluginVariable(world.GetPluginVariable("", "time"), "UnixTime")
  rtime = world.Replace(rtime, ",", ".", false)
  return tonumber(rtime)
end

function speedwalk_init(from, to)
  if speedwalk_running() then
    world.Note("Bitte warte, bis der derzeitige Speedwalk beendet ist.")
    return
  end
  spdtbl = from:find_path(to)
  if not spdtbl then
    world.Note("Zwischen diesen beiden Orten ist kein Weg bekannt.")
    return
  end
  date = Date(os.time()+Utils.way_duration(spdtbl)):toLocal()
  world.Note("Voraussichtliche Ankunft: "..string.format("%02d:%02d:%02d Uhr", date:hour(), date:min(), date:sec()))
  local i
  for i = 1, spdtbl:len() - 1 do
    spdtbl[i] = spdtbl[i]:find_way(spdtbl[i+1])
  end
  spdtbl:pop()
  spdind = {1, 1}
  spdstep = get_unix_time() - 1000
  speedwalk_process(true)
end

function speedwalk_process(text_incoming)
  text_incoming = text_incoming or false
  if spdstep == 0 then
    return
  end
  if (spdind[2] == spdtbl[spdind[1]].way:len() + 1) then
    spdind[1] = spdind[1] + 1
    spdind[2] = 1
    if spdind[1] == spdtbl:len() + 1 then
      speedwalk_deinit()
      spdind = {0, 0}
      spdtbl = nil
      return
    end
  end
  current_time = get_unix_time()
  continue_time = spdstep
  if spdind[2] > 1 then
    if Types.type(spdtbl[spdind[1]].way[spdind[2]]) ~= 'string' then
      continue_time = continue_time + Const.WALK_SPEED_EXTRA
    elseif string.len(spdtbl[spdind[1]].way[spdind[2]]) <= 2 then
      continue_time = continue_time + Const.WALK_SPEED
    else
      continue_time = continue_time + Const.WALK_SPEED_EXTRA
    end
  end
  if text_incoming == true then
    spdtext = true
  end
  if continue_time > current_time or spdtext == false then
    return
  end
  if Types.type(spdtbl[spdind[1]].way[spdind[2]]) == 'string' then
    command = string.gsub(spdtbl[spdind[1]].way[spdind[2]], '_', ' ')
    world.Execute(command)
    spdind[2] = spdind[2] + 1
  else
    if spdtbl[spdind[1]].way[spdind[2]]:get_status() == Const.SCRIPT_UNINITIALIZED then
      spdtbl[spdind[1]].way[spdind[2]]:initialize(spdtbl[spdind[1]].source, spdtbl[spdind[1]].target)
    end
    command = spdtbl[spdind[1]].way[spdind[2]]:pop_command()
    if Types.is_empty(command) then
      if spdtbl[spdind[1]].way[spdind[2]]:get_status() == Const.SCRIPT_SUCCESS then
        spdtbl[spdind[1]].way[spdind[2]]:destroy()
        spdind[2] = spdind[2] + 1
        speedwalk_process(true)
      elseif spdtbl[spdind[1]].way[spdind[2]]:get_status() == Const.SCRIPT_FAILURE then
        world.Note("Ein Skript des Speedwalks hat einen Fehler festgestellt und wurde beendet.")
        world.Note("Der Speedwalk wird an dieser Stelle abgebrochen.")
        spdtbl = nil
        spdind = {0, 0}
        speedwalk_deinit()
      else
        spdstep = get_unix_time()
      end
      return
    end
    world.Execute(command)
  end
  spdstep = get_unix_time()
end

function speedwalk_break()
  if speedwalk_running() and not speedwalk_paused() then
    speedwalk_deinit()
  elseif not speedwalk_running() and speedwalk_paused() then
    spdstep = get_unix_time() - 1000
    speedwalk_process(true)
  end
end

function speedwalk_deinit()
  spdstep = 0
  spdtext = false
  if spdtbl and spdind[1] <= spdtbl:len() and spdind[2] <= spdtbl[spdind[1]].way:len() and Types.type(spdtbl[spdind[1]].way[spdind[2]]) ~= 'string' then
    spdtbl[spdind[1]].way[spdind[2]]:destroy()
  end
end

function speedwalk_running()
  return spdstep > 0
end

function speedwalk_paused()
  return spdind[1] > 0 and spdstep == 0
end

function speedwalk_active_script()
  if Types.is_empty(spdtbl) or spdind[1] == 0 or spdind[2] == 0 then
    return nil
  end
  if spdind[1] > spdtbl:len() or spdind[2] > spdtbl[spdind[1]].way:len() then
    return nil
  end
  if Types.type(spdtbl[spdind[1]].way[spdind[2]]) == 'string' then
    return nil
  end
  return spdtbl[spdind[1]].way[spdind[2]]
end