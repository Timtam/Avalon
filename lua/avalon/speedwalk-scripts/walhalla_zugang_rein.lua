local Class = require("pl.class")
local Script = require("speedwalking.script")
local Types = require("pl.types")

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

function Avalon_Walhalla_Zugang_Rein:prevent_path()
  if not Types.is_empty(Avalon.Level()) and Avalon.Level() < 35 then
    return "Dein Level ist nicht hoch genug, um diesen Weg gehen zu koennen."
  end
end

return Avalon_Walhalla_Zugang_Rein