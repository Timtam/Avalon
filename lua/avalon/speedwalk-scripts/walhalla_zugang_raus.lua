Class = require("pl.class")
Script = require("speedwalking.script")
Types = require("pl.types")

Class.Avalon_Walhalla_Zugang_Raus(Script)

function Avalon_Walhalla_Zugang_Raus:setup()
  world.AddTriggerEx("avalon_walhalla_teich_ankunft_langsam",
                     "*Toll. Du haettest eigentlich mehr von den Goettern erwartet.",
                     "speedwalk_active_script():success()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  world.AddTriggerEx("avalon_walhalla_teich_ankunft_schnell",
                     "Wow - wenn man Schafe zaehlt, vergeht die Zeit ja wie im Fluge...",
                     "speedwalk_active_script():success()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  if not Types.is_empty(Avalon.IID()) and Avalon.IID() == "raum/718b91f6b42e217f3640b8ce2ffbeb18" then
    self:success()
    return
  end
  self:add_command("kletter in loch")
end

function Avalon_Walhalla_Zugang_Raus:teardown()
  world.DeleteTrigger("avalon_walhalla_teich_ankunft_schnell")
  world.DeleteTrigger("avalon_walhalla_teich_ankunft_langsam")
end

function Avalon_Walhalla_Zugang_Raus:get_duration()
  return 20.0
end

function Avalon_Walhalla_Zugang_Raus:inverts(s)
  return Types.type(s) == 'Avalon_Walhalla_Zugang_Rein'
end

return Avalon_Walhalla_Zugang_Raus