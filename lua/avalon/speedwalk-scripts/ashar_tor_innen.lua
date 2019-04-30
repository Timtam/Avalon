local Class = require("pl.class")
local Script = require("speedwalking.script")
local Types = require("pl.types")

Class.Avalon_Ashar_Tor_Innen(Script)

function Avalon_Ashar_Tor_Innen:setup()

  self.change_count = 0

  Avalon.HookCallback("DUNKEL", self.room_changed)
  self:walk()
  self:walk()
end

function Avalon_Ashar_Tor_Innen:teardown()
  Avalon.UnhookCallback("DUNKEL", self.room_changed)
end

function Avalon_Ashar_Tor_Innen:inverts(s)
  return Types.type(s) == 'Avalon_Ashar_Tor_Aussen'
end

function Avalon_Ashar_Tor_Innen:get_duration()
  return 0.6
end

function Avalon_Ashar_Tor_Innen:walk()
  if self.to.name == 'eingangnorden' then
    self:add_command("n")
  elseif self.to.name == 'eingangwesten' then
    self:add_command("w")
  else
    world.Note("Da ist etwas schief gelaufen!")
    self:failure()
  end
end

function Avalon_Ashar_Tor_Innen.room_changed(dunkel)

  speedwalk_active_script().change_count = speedwalk_active_script().change_count + 1

  if speedwalk_active_script().change_count == 2 then
    speedwalk_active_script():success()
  end
end

function Avalon_Ashar_Tor_Innen:prevent_path()
  if not Types.is_empty(Avalon.Level()) and Avalon.Level() <= 5 then
    return "Als Neuling solltest Du diesen Weg noch selbststaendig gehen."
  end
end

return Avalon_Ashar_Tor_Innen