require("avalon.speedwalks")
require("avalon.stations")
require("bit")

spdtbl={}
spdind={0,0}
spdstationstbl={}
spdspeed=0.3
spdextraspeed=0.7
spdstep=0

function speedwalk_start(spd)
  if (spd == '') or (string.find(spd, '_') == nil) then
    speedwalk_list(spd)
    return
  end
  if (speedwalklist[spd] == nil) then
    world.Note("Es existiert kein Speedwalk mit diesem Namen.")
    if (string.find(spd, '_us') ~= nil or string.find(spd, 'us_') ~= nil) then
      world.Note("Hinweis: Die Station 'us' wurde in vielen Speedwalks nach 'zwerge' umbenannt (z.B. min_zwerge statt min_us).")
      world.Note("Die Station 'us' bezieht sich ausschlie�lich auf Usagoor.")
    end
    return
  end
  if (configtbl.settings.SafeSpeedwalks == 1) then
    if not stations[spd] then
      world.Note("Dieser Speedwalk muss nach dem alten System umgesetzt werden.")
      spdstationstbl[#spdstationstbl+1] = ''
    else
      spdstationstbl[#spdstationstbl+1] = stations[spd]
    end
  else
    spdstationstbl[#spdstationstbl+1] = nil
  end
  speedwalk_init(speedwalklist[spd])
end

function speedwalk_list(spd)
  if (spd == '') then
    msg = ''
    i = 0
    for name, way in pairsByKeys(speedwalklist) do
      i = i + 1
      msg = msg..'\t'..name
      if (speedwalksafety[name]) then
        msg = msg..' (sicher)'
      else
        msg = msg..' (unsicher)'
      end
      msg = msg..'\n'
    end
    msg = 'Speedwalk-Liste ('..tostring(i)..'):\n'..msg
    msg = string.sub(msg, 1, -2)
  else
    spd = string.lower(spd)
    msg = ''
    i = 0
    for name, way in pairsByKeys(speedwalklist) do
      sname = utils.split(name, '_')
      if (string.lower(sname[1]) == spd) then
        i = i + 1
        msg = msg..'\t'..name
        if (speedwalksafety[name]) then
          msg = msg..' (sicher)'
        else
          msg=msg..' (unsicher)'
        end
        msg = msg..'\n'
      end
    end
    if (i == 0) then
      msg = 'Es sind keine Speedwalks vorhanden, die von '..spd..' starten.'
    else
      msg = 'Speedwalks, die von '..spd..' starten ('..tostring(i)..'):\n'..msg
      msg = string.sub(msg, 1, -2)
    end
  end
  world.Note(msg)
end

function speedwalk_init(speedwalk, walk_on)
  walk_on = walk_on or false
  if walk_on == true then
    spdstep = GetUnixTime()
    world.AddTriggerEx("speedwalk_handler", "*", 'speedwalk_process()', bit.bor(trigger_flag.Enabled, trigger_flag.KeepEvaluating), NOCHANGE, 0, '', '', -10000, sendto.script)
  end
  if spdstep==0 then
    spdtbl = {}
    spdtbl[#spdtbl+1] = utils.split(speedwalk, " ")
    spdind = {1,1}
    spdstep = GetUnixTime()
    world.AddTriggerEx("speedwalk_handler", "*", 'speedwalk_process()', bit.bor(trigger_flag.Enabled, trigger_flag.KeepEvaluating), NOCHANGE, 0, '', '', -10000, sendto.script)
    speedwalk_process()
  else
    spdtbl[#spdtbl+1] = utils.split(speedwalk, " ")
    world.Note("Der neue Speedwalk wurde an den momentan laufenden angeh�ngt.")
  end
end

function speedwalk_process()
  if spdstep > 0 then
    current_time=GetUnixTime()
    continue_time=spdstep
    if spdind[2]>1 then
      if string.len(spdtbl[spdind[1]][spdind[2]]) <= 2 then
        continue_time = continue_time + spdspeed
      else
        continue_time = continue_time + spdextraspeed
      end
    end
    if continue_time > current_time then
      world.DoAfterSpecial(continue_time - current_time, "speedwalk_process()", sendto.script)
      return
    end
  end
  if (configtbl.settings.SafeSpeedwalks == 1) and (spdind[2] == 1) and (spdstationstbl[spdind[1]] ~= '') then
    if (Dunkel == 1) then
      world.Note("Um sichere Speedwalks nutzen zu k�nnen, muss es auf dem Feld hell sein. Umschalten kannst Du das immer mit der F5-Taste.")
      speedwalk_deinit()
      return
    end
    if (RoomID ~= spdstationstbl[spdind[1]]) and (spdstationstbl[spdind[1]] ~= '') then
      world.Note("Der Speedwalk startet hier nicht.")
      speedwalk_deinit()
      return
    end
  end
  if spdstep == 0 then
    return
  end
  command = string.gsub(spdtbl[spdind[1]][spdind[2]], '_', ' ')
  world.Execute(command)
  spdind = {spdind[1], spdind[2]+1}
  if (spdind[2] == #spdtbl[spdind[1]] + 1) then
    if not spdtbl[spdind[1]+1] then
      speedwalk_deinit()
      spdind = {0,0}
      return
    else
      spdind = {spdind[1] + 1,1}
    end
  end
  spdstep = GetUnixTime()
end

function speedwalk_break()
  if spdstep > 0 then
    speedwalk_deinit()
  else
    if (spdind[1] == 0) and (spdind[2] == 0) then
      return
    end
    if not spdtbl[spdind[1]][spdind[2]] then
      return
    end
    speedwalk_init(nil, true)
    speedwalk_process()
  end
end

function safespeedwalks_switch()
  if (configtbl.settings.SafeSpeedwalks == 1) then
    configtbl.settings.SafeSpeedwalks = 0
    world.Note("Die Speedwalks werden nicht mehr abgesichert.")
  else
    configtbl.settings.SafeSpeedwalks = 1
    world.Note("Die Speedwalks werden nun abgesichert.")
  end
  psnd("Misc/ConfigSwitch.ogg")
end

function speedwalk_deinit()
  world.DeleteTrigger("speedwalk_handler")
  spdstep = 0
end