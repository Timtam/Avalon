Class = require("pl.class")
Script = require("speedwalking.script")
Types = require("pl.types")

Class.Avalon_Schiff_Magierturm(Script)

function Avalon_Schiff_Magierturm:setup()
  world.AddTriggerEx("avalon_schiff_magierturm_ok",
                     "Du kletterst auf die Reling und springst geradewegs von Bord.",
                     "speedwalk_active_script():success()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  world.AddTriggerEx("avalon_schiff_magierturm_springe1",
                     "Weit in der Ferne siehst Du etwas aus dem Wasser ragen.",
                     "springe von bord",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.world,
                     100
                    )
  world.AddTriggerEx("avalon_schiff_magierturm_springe2",
                     "Am Horizont ragt etwas Dunkles aus dem Wasser.",
                     "springe von bord",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.world,
                     100
                    )
  world.AddTriggerEx("avalon_schiff_magierturm_zeit",
                     "Gerade in dem Moment, als Du auf die Reling klettern und ueber Bord*",
                     "speedwalk_active_script():failure()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
end

function Avalon_Schiff_Magierturm:teardown()
  world.DeleteTrigger("avalon_schiff_magierturm_ok")
  world.DeleteTrigger("avalon_schiff_magierturm_springe1")
  world.DeleteTrigger("avalon_schiff_magierturm_springe2")
  world.DeleteTrigger("avalon_schiff_magierturm_zeit")
end

function Avalon_Schiff_Magierturm:get_duration()
  return 150.0
end

function Avalon_Schiff_Magierturm:inverts(s)
  return Types.type(s) == 'Avalon_Schiff_Warten'
end

return Avalon_Schiff_Magierturm