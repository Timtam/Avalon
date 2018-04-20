Class = require("pl.class")
Script = require("speedwalking.script")

Class.Avalon_Dhungar_Transportkorb_Aussteigen(Script)

function Avalon_Dhungar_Transportkorb_Aussteigen:setup()
  ebene = self.to.domain:sub(-1)
  world.AddTriggerEx("avalon_dhungar_transportkorb_anhalten",
                     "*dass Du auf Ebene "..ebene.." bist.",
                     "speedwalk_active_script():aussteigen()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
end

function Avalon_Dhungar_Transportkorb_Aussteigen:teardown()
  world.DeleteTrigger("avalon_dhungar_transportkorb_anhalten")
end

function Avalon_Dhungar_Transportkorb_Aussteigen:aussteigen()
  self:add_command("n")
  self:success()
end

function Avalon_Dhungar_Transportkorb_Aussteigen:get_duration()
  return 20.0
end

function Avalon_Dhungar_Transportkorb_Aussteigen:inverts(s)
  return Types.type(s) == 'Avalon_Dhungar_Transportkorb_Warten'
end

return Avalon_Dhungar_Transportkorb_Aussteigen