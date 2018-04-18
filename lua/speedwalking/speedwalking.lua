Const = require("speedwalking.constants")
Types = require("pl.types")
Utils = require("speedwalking.utils")

spdtbl = nil
spdind = 0
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
  current_time = get_unix_time()
  continue_time = spdstep
  if spdind>1 then
    if string.len(spdtbl[spdind]) <= 2 then
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
  if Types.type(spdtbl[spdind]) == 'string' then
    command = string.gsub(spdtbl[spdind], '_', ' ')
    world.Execute(command)
    spdind = spdind + 1
    if (spdind == spdtbl:len() + 1) then
      speedwalk_deinit()
      spdind = 0
      spdtbl = nil
      return
    end
  else
    if spdtbl[spdind]:get_status() == Const.SCRIPT_UNINITIALIZED then
      spdtbl[spdind]:initialize()
    end
    command = spdtbl[spdind]:pop_command()
    if Types.is_empty(command) then
      if spdtbl[spdind]:get_status() == Const.SCRIPT_SUCCESS then
        spdtbl[spdind]:teardown()
        spdind = spdind + 1
        speedwalk_process(true)
        return
      elseif spdtbl[spdind]:get_status() == Const.SCRIPT_FAILURE then
        world.Note("Ein Skript des Speedwalks hat einen Fehler festgestellt und wurde beendet.")
        world.Note("Der Speedwalk wird an dieser Stelle abgebrochen.")
        spdtbl = nil
        spdind = 0
        speedwalk_deinit()
        return
      end
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
end

function speedwalk_running()
  return spdstep > 0
end

function speedwalk_paused()
  return spdind > 0 and spdstep == 0
end

function speedwalk_active_script()
  if spdind == 0 or Types.is_empty(spdtbl) then
    return nil
  end
  if Types.type(spdtbl[spdind]) == 'string' then
    return nil
  end
  return spdtbl[spdind]
end