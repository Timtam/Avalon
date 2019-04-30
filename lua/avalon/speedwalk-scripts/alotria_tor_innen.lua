local Class = require("pl.class")
local Script = require("speedwalking.script")
local Types = require("pl.types")

Class.Avalon_Alotria_Tor_Innen(Script)

function Avalon_Alotria_Tor_Innen:setup()
  world.AddTriggerEx("avalon_alotria_tor_innen_offen",
                     "*Es ist weit geoeffnet.*",
                     "speedwalk_active_script():success()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  world.AddTriggerEx("avalon_alotria_tor_innen_geoeffnet",
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
  world.AddTriggerEx("avalon_alotria_tor_innen_geschlossen",
                     "*Es ist geschlossen.*",
                     "speedwalk_active_script():ziehe_hebel()",
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )
  self.time = get_unix_time()
  self:add_command("betrachte tor")
end

function Avalon_Alotria_Tor_Innen:teardown()
  world.DeleteTrigger("avalon_alotria_tor_innen_geoeffnet")
  world.DeleteTrigger("avalon_alotria_tor_innen_geschlossen")
  world.DeleteTrigger("avalon_alotria_tor_innen_offen")
end

function Avalon_Alotria_Tor_Innen:inverts(s)
  return Types.type(s) == 'Avalon_Alotria_Tor_Aussen'
end

function Avalon_Alotria_Tor_Innen:ziehe_hebel()
  self:add_command("ziehe hebel")
  self.time = get_unix_time()
end

function Avalon_Alotria_Tor_Innen:pop_command()
  local cmd = self._base.pop_command(self)
  if not Types.is_empty(cmd) then
    return cmd
  end
  if get_unix_time()-self.time > 5 then
    self:ziehe_hebel()
    return self._base.pop_command(self)
  end
end

function Avalon_Alotria_Tor_Innen:get_duration()
  return 3.0
end

return Avalon_Alotria_Tor_Innen