require("pairsbykeys")
require("string_indexing")

spells = {}
warnings = {}

function spells_register(name, starttext, endtext)
  AddTriggerEx(name.."_start", starttext, 'spells_start("'..name..'")', trigger_flag.RegularExpression + trigger_flag.KeepEvaluating + trigger_flag.Enabled, NOCHANGE, 0, "", "", sendto.script, 50)
  AddTriggerEx(name.."_stop", endtext, 'spells_stop("'..name..'")', trigger_flag.RegularExpression + trigger_flag.KeepEvaluating + trigger_flag.Enabled, NOCHANGE, 0, "", "", sendto.script, 50)
  spells[name] = 0
end

function spells_start(name)
  spells[name] = GetUnixTime()
  if warnings[name] ~= nil then
    spells_warn(name, warnings[name])
  end
end

function spells_stop(name)
  if spells[name] == nil or spells[name] == 0 then
    return
  end
  time = spells[name]
  msg = name.." beendet, Dauer: "
  ltime = GetUnixTime()
  time_diff = ltime - time
  hours = math.floor(time_diff / 3600)
  mins = math.floor((time_diff - hours * 3600) / 60)
  secs = round(((time_diff - hours * 3600) - mins * 60), 0)
  if hours > 0 then
    msg = msg..tostring(hours).." Stunden, "
  end
  if mins > 0 then
    msg = msg..tostring(mins).." Minuten, "
  end
  msg = msg..tostring(secs).." Sekunden"
  NoteColour(msg, 150, 0, 0, 255, 255, 0)
  spells[name] = 0
  if warnings[name] ~= nil then
    warnings[name] = CreateGUID()
    psnd("spells/warn.ogg")
  end
end

function spells_status()
  msg = ""
  ltime = GetUnixTime()
  for spell, time in pairsByKeys(spells) do
    if time > 0 then
      msg = msg..spell..": "
      time_diff = ltime - time
      hours = math.floor(time_diff / 3600)
      mins = math.floor((time_diff - hours * 3600) / 60)
      secs = round((time_diff - hours * 3600) - mins * 60, 0)
      if hours > 0 then
        msg = msg..tostring(hours).." Stunde(n), "
      end
      if mins > 0 then
        msg = msg..tostring(mins).." Minute(n), "
      end
      msg = msg..tostring(secs).." Sekunden"
    end
  end
  if msg == "" then
    msg = "Zur Zeit sind keine Zauber aktiv."
  else
    msg = string.sub(msg, 1, -2)
  end
  Note(msg)
end

function spells_warn(spell, guid)
  if spells[spell] == 0 or warnings[spell] ~= guid then
    return
  end
  time = GetUnixTime()
  diff = time - spells[spell]
  seconds = math.floor(round(diff, 0) % 60)
  minutes = math.floor((round(diff, 0) - seconds) / 60)
  if seconds == 0 then
    msg = spell.." bereits "..tostring(minutes).." Minute(n) aktiv."
    Note(msg)
  end
  DoAfterSpecial((60 - (time - spells[spell])%60),"spells_warn('"..spell.."', '"..guid.."')", 12)
end

function spells_parsewarnings(warns)
  if warns == nil or warns == "" then
    return
  end
  awarns = utils.split(warns, ",")
  for key, value in pairs(awarns) do
    if spells[value] == nil then
      Note("Die Warnung für den Zauber \""..value.."\" konnte nicht eingerichtet werden: Dieser Zauber wird vom Soundpack nicht unterstützt.")
    else
      warnings[value] = CreateGUID()
    end
  end
end

function spells_retrievewarnings()
  swarns = ""
  for key, value in pairs(warnings) do
    swarns = swarns..key..","
  end
  if swarns[1] == "," then
    startind = 2
  else
    startind = 1
  end
  return string.sub(swarns, startind, -2)
end

function spells_printwarnings()
  i = 0
  msg = "Verfügbare Zauber:\n"
  for key, value in pairsByKeys(spells) do
    i = i + 1
    msg = msg..tostring(i)..".\t"..key
    if warnings[key] == nil then
      msg = msg.."\n" -- Keine aktiven Warnungen
    else
      msg = msg..", Warnungen aktiv\n"
    end
  end
  Note(string.sub(msg, 1, -2))
end

function spells_togglewarnings(cnt)
  cnt = tonumber(cnt)
  if cnt == nil then
    Note("Die Eingabe war nicht korrekt. Bitte die Nummer des Zaubers eingeben, für die Du Einstellungen vornehmen möchtest.")
    return
  end
  i = 0
  stbl = {}
  for key, value in pairsByKeys(spells) do
    i = i + 1
    stbl[i] = key
  end
  if stbl[cnt] == nil then
    Note("Kein Zauber mit dieser Nummer gefunden.")
    return
  end
  if warnings[stbl[cnt]] == nil then
    Note("Warnungen für "..stbl[cnt].." eingeschaltet.")
    warnings[stbl[cnt]] = CreateGUID()
    spells_warn(stbl[cnt], warnings[stbl[cnt]])
  else
    Note("Warnungen für "..stbl[cnt].." ausgeschaltet.")
    warnings[stbl[cnt]] = nil
  end
end
