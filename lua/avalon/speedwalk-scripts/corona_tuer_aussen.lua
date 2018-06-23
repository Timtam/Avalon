Class = require("pl.class")
Script = require("speedwalking.script")
Types = require("pl.types")

Class.Avalon_Corona_Tuer_Aussen(Script)

function Avalon_Corona_Tuer_Aussen:setup()
  world.AddTriggerEx("avalon_corona_tuer_offen",
                     "Der Durchgang im Sueden ist offen.",
                     "speedwalk_active_script():success()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  world.AddTriggerEx("avalon_corona_tuer_oeffnen",
                     "Wie von Geisterhand oeffnet sich die suedliche Steintuer.",
                     "speedwalk_active_script():success()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  world.AddTriggerEx("avalon_corona_tuer_geschlossen",
                     "Eine sehr schwere, massive Steintuer versperrt den Durchgang nach Sueden.",
                     "speedwalk_active_script():sagen()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  self:add_command("betrachte tuer")
end

function Avalon_Corona_Tuer_Aussen:teardown()
  world.DeleteTrigger("avalon_corona_tuer_offen")
  world.DeleteTrigger("avalon_corona_tuer_geschlossen")
  world.DeleteTrigger("avalon_corona_tuer_oeffnen")
end

function Avalon_Corona_Tuer_Aussen:sagen()
  self:add_command("sage freund")
end

function Avalon_Corona_Tuer_Aussen:get_duration()
  return 3.0
end

function Avalon_Corona_Tuer_Aussen:inverts(d)
  return Types.type(d) == 'Avalon_Corona_Tuer_Innen'
end

return Avalon_Corona_Tuer_Aussen