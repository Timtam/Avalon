Class = require("pl.class")
Script = require("speedwalking.script")
Types = require("pl.types")

Class.Avalon_Schiff_Warten_Lang(Script)

function Avalon_Schiff_Warten_Lang:setup()
  world.AddTriggerEx("avalon_schiff_warten_lang_anschluss",
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
  world.AddTriggerEx("avalon_schiff_warten_lang_hafen",
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
  world.AddTriggerEx("avalon_schiff_warten_lang_ok",
                     "Du wartest auf Schiffe, die * anlegen.",
                     "speedwalk_active_script():success()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  self:add_command("warte auf schiff nach "..self.to.domain)
end

function Avalon_Schiff_Warten_Lang:teardown()
  world.DeleteTrigger("avalon_schiff_warten_lang_anschluss")
  world.DeleteTrigger("avalon_schiff_warten_lang_hafen")
  world.DeleteTrigger("avalon_schiff_warten_lang_ok")
end

function Avalon_Schiff_Warten_Lang:get_duration()
  return 300.0
end

function Avalon_Schiff_Warten_Lang:inverts(s)
  return Types.type(s) == 'Avalon_Schiff_Aussteigen'
end

return Avalon_Schiff_Warten_Lang