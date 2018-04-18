Class = require("pl.class")
Script = require("speedwalking.script")

Class.Avalon_Alotria_Tor_Aussen(Script)

function Avalon_Alotria_Tor_Aussen:setup()
  world.AddTriggerEx("avalon_alotria_tor_aussen_offen",
                     "Scherzkeks, das Tor ist doch geoeffnet.",
                     "speedwalk_active_script():success()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  world.AddTriggerEx("avalon_alotria_tor_aussen_geschlossen",
                     "Laut rasselnd oeffnet sich das Tor.",
                     "speedwalk_active_script():success()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  self:add_command("klopfe tor")
end

function Avalon_Alotria_Tor_Aussen:teardown()
  world.DeleteTrigger("avalon_alotria_tor_aussen_offen")
  world.DeleteTrigger("avalon_alotria_tor_aussen_geschlossen")
end

return Avalon_Alotria_Tor_Aussen