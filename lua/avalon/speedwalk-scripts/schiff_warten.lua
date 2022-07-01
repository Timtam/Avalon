Class = require("pl.class")
Script = require("speedwalking.script")
Types = require("pl.types")

Class.Avalon_Schiff_Warten(Script)

function Avalon_Schiff_Warten:setup()
  world.AddTriggerEx("avalon_schiff_warten_anschluss",
                     "In * legt keines der hier verkehrenden Schiffe an.",
                     "speedwalk_active_script():failure()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  world.AddTriggerEx("avalon_schiff_warten_hafen",
                     "Was? Wie? Wo? Haeh?!? Warten kannst Du nicht.",
                     "speedwalk_active_script():failure()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  world.AddTriggerEx("avalon_schiff_warten_ok",
                     "Du wartest auf *",
                     "speedwalk_active_script():success()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  world.AddTriggerEx("avalon_schiff_warten_schiff",
                     "* legt hier nicht an.",
                     "speedwalk_active_script():failure()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  if self.to.domain == "magierturm" then
    self:add_command("warte auf sternenschweif")
  else
    self:add_command("warte auf schiff nach "..self.to.domain)
  end
end

function Avalon_Schiff_Warten:teardown()
  world.DeleteTrigger("avalon_schiff_warten_anschluss")
  world.DeleteTrigger("avalon_schiff_warten_hafen")
  world.DeleteTrigger("avalon_schiff_warten_ok")
  world.DeleteTrigger("avalon_schiff_warten_schiff")
end

function Avalon_Schiff_Warten:get_duration(l)
  return 150.0
end

function Avalon_Schiff_Warten:inverts(s)
  return Types.type(s) == 'Avalon_Schiff_Aussteigen'
end

return Avalon_Schiff_Warten