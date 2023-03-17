Class = require("pl.class")
Script = require("speedwalking.script")
Types = require("pl.types")

Class.Avalon_Schiff_Aussteigen(Script)

function Avalon_Schiff_Aussteigen:setup()
  world.AddTriggerEx("avalon_schiff_aussteigen_fest",
                     "Der Matrose haelt Dich fest.",
                     [[
                     world.DoAfterSpecial(3.0, "speedwalk_active_script():can_wait()", sendto.script)
                     ]],
                     trigger_flag.Enabled + trigger_flag.OmitFromOutput,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  world.AddTriggerEx("avalon_schiff_aussteigen_ok",
                     "In \"Xyz\" legt keines der hier verkehrenden Schiffe an.",
                     "speedwalk_active_script():success()",
                     trigger_flag.Enabled + trigger_flag.OmitFromOutput,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  world.AddTriggerEx("avalon_schiff_aussteigen_start",
                     "Der Matrose fuehrt Dich von Bord.",
                     [[
                     world.DoAfterSpecial(3.0, "speedwalk_active_script():can_wait()", sendto.script)
                     ]],
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
end

function Avalon_Schiff_Aussteigen:teardown()
  world.DeleteTrigger("avalon_schiff_aussteigen_fest")
  world.DeleteTrigger("avalon_schiff_aussteigen_ok")
  world.DeleteTrigger("avalon_schiff_aussteigen_start")
end

function Avalon_Schiff_Aussteigen:can_wait()
  self:add_command("warte auf schiff nach xyz")
end

function Avalon_Schiff_Aussteigen:inverts(s)
  return Types.type(s) == 'Avalon_Schiff_Warten'
end

function Avalon_Schiff_Aussteigen:get_duration()
  return 150.0
end

return Avalon_Schiff_Aussteigen