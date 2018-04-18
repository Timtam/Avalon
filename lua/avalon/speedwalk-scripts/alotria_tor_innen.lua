Class = require("pl.class")
Script = require("speedwalking.script")
Types = require("pl.types")

Class.Avalon_Alotria_Tor_Innen(Script)

function Avalon_Alotria_Tor_Innen:setup()
  world.AddTriggerEx("avalon_alotria_tor_innen_offen",
                     "Da gerade erst am Hebel gezogen wurde, wartest Du erst einmal ab.",
                     "speedwalk_active_script():success()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  world.AddTriggerEx("avalon_alotria_tor_innen_geschlossen",
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
  self:add_command("ziehe hebel")
end

function Avalon_Alotria_Tor_Innen:teardown()
  world.DeleteTrigger("avalon_alotria_tor_innen_offen")
  world.DeleteTrigger("avalon_alotria_tor_innen_geschlossen")
end

function Avalon_Alotria_Tor_Innen:inverts(s)
  return Types.type(s) == 'Avalon_Alotria_Tor_Aussen'
end

return Avalon_Alotria_Tor_Innen