Class = require("pl.class")
Script = require("speedwalking.script")
Types = require("pl.types")

Class.Avalon_Ashar_Tor_Aussen(Script)

function Avalon_Ashar_Tor_Aussen:setup()

  self.change_count = 0

  world.AddTriggerEx("avalon_ashar_tor_aussen_neu",
                     "Du versuchst in die Stadt zu gelangen, *",
                     [[
                     world.DoAfterSpecial(1.0, "speedwalk_active_script():walk()", sendto.script)
                     speedwalk_active_script():add_command("sage hallo wache")
                     ]],
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )

  world.AddTriggerEx("avalon_ashar_tor_aussen_immernoch",
                     "* packt Dich am Kragen.",
                     [[
                     world.DoAfterSpecial(1.0, "speedwalk_active_script():walk()", sendto.script)
                     speedwalk_active_script():add_command("sage hallo wache")
                     ]],
                     trigger_flag.Enabled,
                     NOCHANGE,
                     0,
                     '',
                     '',
                     sendto.script,
                     100
                    )

  Avalon.HookCallback("DUNKEL", self.room_changed)
  self:walk()
  self:walk()
end

function Avalon_Ashar_Tor_Aussen:teardown()
  world.DeleteTrigger("avalon_ashar_tor_aussen_neu")
  world.DeleteTrigger("avalon_ashar_tor_aussen_immernoch")
  Avalon.UnhookCallback("DUNKEL", self.room_changed)
end

function Avalon_Ashar_Tor_Aussen:inverts(s)
  return Types.type(s) == 'Avalon_Ashar_Tor_Innen'
end

function Avalon_Ashar_Tor_Aussen:get_duration()
  return 1.6
end

function Avalon_Ashar_Tor_Aussen:walk()
  if self.from.name == 'eingangnorden' then
    self:add_command("s")
  elseif self.from.name == 'eingangwesten' then
    self:add_command("o")
  else
    world.Note("Da ist etwas schief gelaufen!")
    self:failure()
  end
end

function Avalon_Ashar_Tor_Aussen.room_changed(dunkel)

  speedwalk_active_script().change_count = speedwalk_active_script().change_count + 1

  if speedwalk_active_script().change_count == 2 then
    speedwalk_active_script():success()
  end
end

return Avalon_Ashar_Tor_Aussen