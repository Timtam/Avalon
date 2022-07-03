Class = require("pl.class")
Script = require("speedwalking.script")
Types = require("pl.types")

ufer = {}
ufer['anlegercamp'] = "Du befindest Dich an einer Anlegestelle. Ab und an kommt hier ein Floss"
ufer['anlegerjasthan'] = "Du stehst an einer Anlegestelle. Langsam fliesst der *"
ufer['anlegerskalewar'] = "Du stehst auf einer Anlegestelle am Ufer des Lavastromes *"
ufer['anlegertempel'] = "Du stehst an einer Anlegestelle. Nach Suedosten fuehrt ein Weg in Richtung"
ufer['anlegertiefebene'] = "Du stehst an einer Anlegestelle. Westlich von hier siehst Du eine"
ufer['anlegertiefebenenord'] = "Du stehst an einer Anlegestelle am Nordwestufer eines riesigen Lavasees. Um"
ufer['anlegertotenebene'] = "Du stehst an einer Anlegestelle. Nach Nordwesten erstreckt sich ein grosser"

Class.Avalon_Unterwelt_Floss_Aussteigen(Script)

function Avalon_Unterwelt_Floss_Aussteigen:setup()
  for name, text in pairs(ufer) do
    world.AddTriggerEx("avalon_unterwelt_floss_aussteigen_"..name,
                       text,
                       "speedwalk_active_script():stop('"..name.."')",
                       trigger_flag.Enabled,
                       NOCHANGE,
                       0,
                       '',
                       '',
                       sendto.script,
                       100
                      )
  end
  world.AddTriggerEx("avalon_unterwelt_floss_aussteigen_stop1",
                     "Xochos springt an Land und vertaeut das Floss am Steg. Endlich kannst Du es",
                     "betrachte ufer",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.world,
                     100
                    )
  world.AddTriggerEx("avalon_unterwelt_floss_aussteigen_stop2",
                     "Xochos knurrt: Achtung, wir legen an!",
                     "betrachte ufer",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.world,
                     100
                    )
  world.AddTriggerEx("avalon_unterwelt_floss_aussteigen_stop3",
                     "Endlich erreicht ihr nach langer Fahrt einen sicheren Steg. Du kannst das",
                     "betrachte ufer",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.world,
                     100
                    )
end

function Avalon_Unterwelt_Floss_Aussteigen:teardown()
  for name, text in pairs(ufer) do
    world.DeleteTrigger("avalon_unterwelt_floss_aussteigen_"..name)
  end
  world.DeleteTrigger("avalon_unterwelt_floss_aussteigen_stop1")
  world.DeleteTrigger("avalon_unterwelt_floss_aussteigen_stop2")
  world.DeleteTrigger("avalon_unterwelt_floss_aussteigen_stop3")
end

function Avalon_Unterwelt_Floss_Aussteigen:inverts(s)
  return Types.type(s) == 'Avalon_Unterwelt_Floss_Warten'
end

function Avalon_Unterwelt_Floss_Aussteigen:get_duration()
  return 150.0
end

function Avalon_Unterwelt_Floss_Aussteigen:stop(s)
  world.Note("Haltestelle: "..s)
  if self.to.name == s then
    self:success()
  end
end

return Avalon_Unterwelt_Floss_Aussteigen