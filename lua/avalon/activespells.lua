require("pairsbykeys")
require("string_indexing")

List = require("pl.list")
PPI = require("ppi")
Tablex = require("pl.tablex")
Timers = nil

spells = {}
warnings = List.new()

function spells_register(name, starttext, endtext)
  world.AddTriggerEx(name.."_start", starttext, 'spells_start("'..name..'")', trigger_flag.RegularExpression + trigger_flag.KeepEvaluating + trigger_flag.Enabled, NOCHANGE, 0, "", "", sendto.script, 50)

  world.AddTriggerEx(name.."_stop", endtext, 'spells_stop("'..name..'")', trigger_flag.RegularExpression + trigger_flag.KeepEvaluating + trigger_flag.Enabled, NOCHANGE, 0, "", "", sendto.script, 50)

  spells[name] = ""
end

function spells_start(name)

  -- loading connection to timers plugin
  if Timers == nil then
    Timers = PPI.Load(world.GetPluginVariable("", "timers"))
  end

  tick = 0

  if warnings:index(name) ~= nil then
    tick = 60
  end

  spells[name] = Timers.AddTimer(name, tick, 0)
end

function spells_stop(name)
  if spells[name] == "" then
    return
  end

  Timers.EndTimer(spells[name])

  spells[name] = ""
end

function spells_parsewarnings(warns)
  if warns == nil or warns == "" then
    return
  end
  awarns = utils.split(warns, ",")
  for key, value in pairs(awarns) do
    if spells[value] == nil then
      world.Note("Die Warnung für den Zauber \""..value.."\" konnte nicht eingerichtet werden: Dieser Zauber wird vom Soundpack nicht unterstützt.")
    else
      warnings:append(value)
    end
  end
end

function spells_retrievewarnings()
  swarns = ""
  warnings:foreach(function(w)
    swarns = swarns .. w .. ","
  end)
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
    if warnings:index(key) == nil then
      msg = msg.."\n" -- Keine aktiven Warnungen
    else
      msg = msg..", Warnungen aktiv\n"
    end
  end
  world.Note(string.sub(msg, 1, -2))
end

function spells_togglewarnings(cnt)
  cnt = tonumber(cnt)
  if cnt == nil then
    world.Note("Die Eingabe war nicht korrekt. Bitte die Nummer des Zaubers eingeben, für die Du Einstellungen vornehmen möchtest.")
    return
  end
  i = 0
  stbl = {}
  for key, value in pairsByKeys(spells) do
    i = i + 1
    stbl[i] = key
  end
  if stbl[cnt] == nil then
    world.Note("Kein Zauber mit dieser Nummer gefunden.")
    return
  end
  if warnings:index(stbl[cnt]) == nil then
    world.Note("Warnungen für "..stbl[cnt].." eingeschaltet.")
    warnings:append(stbl[cnt])
  else
    world.Note("Warnungen für "..stbl[cnt].." ausgeschaltet.")
    warnings:remove_value(stbl[cnt])
  end
  world.Note("Die Aenderung wirkt sich erst auf alle neuen Zauber aus.")
end

return {
  ParseWarnings = spells_parsewarnings,
  PrintWarnings = spells_printwarnings,
  Register = spells_register,
  RetrieveWarnings = spells_retrievewarnings,
  ToggleWarning = spells_togglewarnings
}