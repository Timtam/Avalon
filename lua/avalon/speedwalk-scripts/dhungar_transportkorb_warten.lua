Class = require("pl.class")
Script = require("speedwalking.script")
Types = require("pl.types")

Class.Avalon_Dhungar_Transportkorb_Warten(Script)

function Avalon_Dhungar_Transportkorb_Warten:setup()
  world.AddTriggerEx("avalon_dhungar_transportkorb_anwesend",
                     "Du kannst im Moment den Schacht nicht sehen, *",
                     "speedwalk_active_script():betreten()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  world.AddTriggerEx("avalon_dhungar_transportkorb_kommt",
                     "Der Transportkorb kommt *",
                     "speedwalk_active_script():betreten()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  self:add_command("betrachte schacht")
end

function Avalon_Dhungar_Transportkorb_Warten:teardown()
  world.DeleteTrigger("avalon_dhungar_transportkorb_anwesend")
  world.DeleteTrigger("avalon_dhungar_transportkorb_kommt")
end

function Avalon_Dhungar_Transportkorb_Warten:betreten()
  self:add_command("s")
  self:success()
end

function Avalon_Dhungar_Transportkorb_Warten:get_duration()
  return 20.0
end

function Avalon_Dhungar_Transportkorb_Warten:inverts(s)
  return Types.type(s) == 'Avalon_Dhungar_Transportkorb_Aussteigen'
end

return Avalon_Dhungar_Transportkorb_Warten