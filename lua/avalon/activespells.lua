require("pairsbykeys")
require("string_indexing")

Avalon = nil
List = require("pl.list")
PPI = require("ppi")
Tablex = require("pl.tablex")
Timers = nil
Types = require("pl.types")

earlycancel = 0
spells = {}
warnings = List.new()

function spells_register(name, starttext, endtext, report_ep)

  report_ep = Types.to_bool(report_ep)

  world.AddTriggerEx(name.."_start", starttext, 'spells_start("'..name..'")', trigger_flag.RegularExpression + trigger_flag.KeepEvaluating + trigger_flag.Enabled, NOCHANGE, 0, "", "", sendto.script, 50)

  world.AddTriggerEx(name.."_stop", endtext, 'spells_stop("'..name..'")', trigger_flag.RegularExpression + trigger_flag.KeepEvaluating + trigger_flag.Enabled, NOCHANGE, 0, "", "", sendto.script, 50)

  spells[name] = {
    id = nil,
    ep = 0,
    report_ep = report_ep
  }
end

function spells_start(name)

  -- loading connection to avalon plugin
  if Avalon == nil then
    Avalon = PPI.Load(world.GetPluginVariable("", "avalon"))
  end

  -- loading connection to timers plugin
  if Timers == nil then
    Timers = PPI.Load(world.GetPluginVariable("", "timers"))
  end

  tick = 0
  snd = ""

  if warnings:index(name) ~= nil then
    tick = 60
    snd = "spells/warn.ogg"
  end

  spells[name].id = Timers.AddTimer(name, tick, 0, snd, true)

  if spells[name].report_ep == true then
    spells[name].ep = Avalon.EP()
  end
end

function spells_stop(name)
  if spells[name].id == "" then
    return
  end

  -- loading connection to avalon plugin
  if Avalon == nil then
    Avalon = PPI.Load(world.GetPluginVariable("", "avalon"))
  end

  -- loading connection to timers plugin
  if Timers == nil then
    Timers = PPI.Load(world.GetPluginVariable("", "timers"))
  end

  if os.time() - earlycancel <= 2 then

    Timers.DisableHeuristics(spells[name].id)
    earlycancel = 0

  end

  Timers.EndTimer(spells[name].id)

  spells[name].id = ""

  if spells[name].report_ep == true then
    local diff = Avalon.EP() - spells[name].ep
    
    world.Note("Waehrend dieses Zaubers wurden " .. tostring(diff) .. " EP verdient.")

    spells[name].ep = 0
  end
end

function spells_announceearlycancel()
  earlycancel = os.time()
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

    if spells[stbl[cnt]].id ~= "" then
      
      Timers.SetTick(spells[stbl[cnt]].id, 60)

    end
  else
    world.Note("Warnungen für "..stbl[cnt].." ausgeschaltet.")
    warnings:remove_value(stbl[cnt])

    if spells[stbl[cnt]].id ~= "" then
      
      Timers.SetTick(spells[stbl[cnt]].id, 0)

    end
  end
end

return {
  AnnounceEarlyCancel = spells_announceearlycancel,
  ParseWarnings = spells_parsewarnings,
  PrintWarnings = spells_printwarnings,
  Register = spells_register,
  RetrieveWarnings = spells_retrievewarnings,
  ToggleWarning = spells_togglewarnings
}