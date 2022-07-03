Class = require("pl.class")
Script = require("speedwalking.script")
Types = require("pl.types")

Class.Avalon_Unterwelt_Floss_Warten(Script)

function Avalon_Unterwelt_Floss_Warten:setup()
  world.AddTriggerEx("avalon_unterwelt_floss_warten_1",
                     "Aus dem unendlich wirkenden Lavastrom taucht ein Floss auf und haelt hier",
                     "betrete floss",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.world,
                     100
                    )
  world.AddTriggerEx("avalon_unterwelt_floss_warten_2",
                     "Endlich kommt das Floss an. Der Faehrmann vertaeut es fest am Steg. Du",
                     "betrete floss",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.world,
                     100
                    )
  world.AddTriggerEx("avalon_unterwelt_floss_warten_3",
                     "Das Floss ist soeben angekommen und wurde vertaeut. Du kannst es nun",
                     "betrete floss",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.world,
                     100
                    )
  world.AddTriggerEx("avalon_unterwelt_floss_warten_ok",
                     "Xochos, der Faehrmann.",
                     "speedwalk_active_script():success()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  self:add_command("betrete floss")
end

function Avalon_Unterwelt_Floss_Warten:teardown()
  world.DeleteTrigger("avalon_unterwelt_floss_warten_1")
  world.DeleteTrigger("avalon_unterwelt_floss_warten_2")
  world.DeleteTrigger("avalon_unterwelt_floss_warten_3")
  world.DeleteTrigger("avalon_unterwelt_floss_warten_ok")
end

function Avalon_Unterwelt_Floss_Warten:get_duration()
  return 150.0
end

function Avalon_Unterwelt_Floss_Warten:inverts(s)
  return Types.type(s) == 'Avalon_Unterwelt_Floss_Aussteigen'
end

return Avalon_Unterwelt_Floss_Warten