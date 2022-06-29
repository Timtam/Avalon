Const = require("speedwalking.constants")
Date = require("pl.date")
Types = require("pl.types")
Utils = require("speedwalking.utils")

spdtbl = nil
spdind = 0
spdstep = 0
spdtext = false
spdgroup = false

function get_unix_time()
  world.CallPlugin(world.GetPluginVariable("", "time"), "time", "")
  rtime = world.GetPluginVariable(world.GetPluginVariable("", "time"), "UnixTime")
  rtime = world.Replace(rtime, ",", ".", false)
  return tonumber(rtime)
end

function speedwalk_init(from, to, group)
  if speedwalk_running() then
    world.Note("Bitte warte, bis der derzeitige Speedwalk beendet ist.")
    return
  end
  spdgroup = group
  paths = from:find_paths(to)
  paths:sort(function(a, b)
    return Utils.way_duration(a, group) < Utils.way_duration(b, group)
  end)
  spdtbl = nil
  local p
  paths:foreach(function(p)
    local prevent
    prevent = Utils.way_prevention_reason(p)
    if Types.is_empty(prevent) and spdtbl == nil then
      spdtbl = p
    end
  end)
  if not spdtbl then
    if paths:len() > 0 then
      world.Note(Utils.way_prevention_reason(paths[paths:len() - 1]))
    else
      world.Note("Zwischen diesen zwei Orten ist kein Weg bekannt.")
    end
    return
  end
  local i, w
  for i = 1, spdtbl:len() - 1 do
    w = spdtbl[i]:find_way(spdtbl[i + 1])
    w.way:foreach(function(d)
      if Types.type(d) ~= 'string' then
        d:set_parameters(w.source, w.target)
      end
    end)
  end
  date = Date(os.time()+Utils.way_duration(spdtbl, group)):toLocal() - Date(os.time()):toLocal()
  world.Note("Voraussichtliche Ankunft in "..string.format("%d Minuten und %d Sekunden.", date:min(), date:sec()))
  --world.Note("Wir gehen ueber:")
  --world.Note(spdtbl:map(function(s) return s.domain.."."..s.name end):join(", "))
  spdtbl = Utils.resolve_way(spdtbl)
  spdind = 1
  spdstep = get_unix_time() - 1000
  speedwalk_process(true)
end

function speedwalk_process(text_incoming)
  text_incoming = text_incoming or false
  if spdstep == 0 then
    return
  end
  if spdind == spdtbl:len() + 1 then
    speedwalk_deinit()
    spdind = 0
    spdtbl = nil
    Avalon.PSND(GetInfo(74).."Stations/End.ogg")
    return
  end
  current_time = get_unix_time()
  continue_time = spdstep
  if spdind > 1 then
    if Types.type(spdtbl[spdind]) ~= 'string' then
      if spdgroup == true then
        continue_time = continue_time + Const.WALK_SPEED_EXTRA * Const.WALK_SPEED_EXTRA_GROUP_FACTOR
      else
        continue_time = continue_time + Const.WALK_SPEED_EXTRA
      end
    elseif string.len(spdtbl[spdind]) <= 2 then
      if spdgroup == true then
        continue_time = continue_time + Const.WALK_SPEED * Const.WALK_SPEED_GROUP_FACTOR
      else
        continue_time = continue_time + Const.WALK_SPEED
      end
    else
      if spdgroup == true then
        continue_time = continue_time + Const.WALK_SPEED_EXTRA * Const.WALK_SPEED_EXTRA_GROUP_FACTOR
      else
        continue_time = continue_time + Const.WALK_SPEED_EXTRA
      end
    end
  end
  if text_incoming == true then
    spdtext = true
  end
  if continue_time > current_time or spdtext == false then
    return
  end
  if Types.type(spdtbl[spdind]) == 'string' then
    command = string.gsub(spdtbl[spdind], '_', ' ')
    spdind = spdind + 1
  else
    if spdtbl[spdind]:get_status() == Const.SCRIPT_UNINITIALIZED then
      spdtbl[spdind]:initialize()
    end
    command = spdtbl[spdind]:pop_command()
    if Types.is_empty(command) then
      if spdtbl[spdind]:get_status() == Const.SCRIPT_SUCCESS then
        spdtbl[spdind]:destroy()
        spdind = spdind + 1
        speedwalk_process(true)
      elseif spdtbl[spdind]:get_status() == Const.SCRIPT_FAILURE then
        world.Note("Ein Skript des Speedwalks hat einen Fehler festgestellt und wurde beendet.")
        world.Note("Der Speedwalk wird an dieser Stelle abgebrochen.")
        speedwalk_deinit()
        spdtbl = nil
        spdind = 0
      else
        spdstep = get_unix_time()
      end
      return
    end
  end
  world.Execute(command)
  spdtext = false
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
  spdgroup = false
  if spdind <= spdtbl:len() and Types.type(spdtbl[spdind]) ~= 'string' then
    spdtbl[spdind]:destroy()
  end
end

function speedwalk_running()
  return spdstep > 0
end

function speedwalk_paused()
  return spdind > 0 and spdstep == 0
end

function speedwalk_active_script()
  if Types.is_empty(spdtbl) or spdind > spdtbl:len() then
    return nil
  end
  if Types.type(spdtbl[spdind]) == 'string' then
    return nil
  end
  return spdtbl[spdind]
end

function speedwalk_last_command()
  if speedwalk_running() == false or spdind == 0 or speedwalk_active_script() or Types.type(spdtbl[spdind - 1]) ~= 'string' then
    return ''
  end
  return spdtbl[spdind - 1]
end
