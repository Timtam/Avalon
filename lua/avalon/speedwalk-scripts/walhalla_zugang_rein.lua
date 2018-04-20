Class = require("pl.class")
Script = require("speedwalking.script")
Types = require("pl.types")

Class.Avalon_Walhalla_Zugang_Rein(Script)

function Avalon_Walhalla_Zugang_Rein:setup()
  world.AddTriggerEx("avalon_walhalla_raum_ankunft_langsam",
                     "Das dunkle Etwas hat anscheinend ein Loch *",
                     "speedwalk_active_script():success()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  world.AddTriggerEx("avalon_walhalla_raum_ankunft_schnell",
                     "Du machst die Augen wieder auf und stellst fest, dass Du schon da bist.",
                     "speedwalk_active_script():success()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  if not Types.is_empty(Avalon.IID()) and Avalon.IID() == self.to.id then
    self:success()
    return
  end
  self:add_command("tauche durch portal")
end

function Avalon_Walhalla_Zugang_Rein:teardown()
  world.DeleteTrigger("avalon_walhalla_raum_ankunft_schnell")
  world.DeleteTrigger("avalon_walhalla_raum_ankunft_langsam")
end

function Avalon_Walhalla_Zugang_Rein:get_duration()
  return 20.0
end

function Avalon_Walhalla_Zugang_Rein:inverts(s)
  return Types.type(s) == 'Avalon_Walhalla_Zugang_Raus'
end

return Avalon_Walhalla_Zugang_Rein