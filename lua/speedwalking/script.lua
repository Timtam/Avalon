-- ein speedwalking script
-- dieses kann geerbt werden und die Funktionen werden zu fest definierten
-- Zeitpunkten aufgerufen, wodurch Speedwalks bis zu einem gewissen Grad dynamisch
-- werden

local Class = require("pl.class")
local Const = require("speedwalking.constants")
local List = require("pl.list")

Class.Script()

function Script:_init()
  self.command_stack = List.new()
  self.status = Const.SCRIPT_UNINITIALIZED
end

function Script:get_status()
  return self.status
end

function Script:success()
  self.status = Const.SCRIPT_SUCCESS
end

function Script:failure()
  self.status = Const.SCRIPT_FAILURE
end

function Script:initialize()
  self.status = Const.SCRIPT_RUNNING
  self:setup()
end

-- wird aufgerufen, sobald das Script aktiviert wird, also, wenn es ausgefuehrt wird
function Script:setup()
end

-- wird nach Abschluss des Scripts aufgerufen (egal ob success oder failure)
-- sollte alle Rueckstaende beseitigen, beispielsweise erstellte Trigger
function Script:teardown()
end

-- fuegt ein Kommando zum Stack hinzu. Der Stack wird schnellstmoeglich abgearbeitet
function Script:add_command(cmd)
  self.command_stack:append(cmd)
end

function Script:pop_command()
  if self.command_stack:len() == 0 then
    return nil
  end
  return self.command_stack:pop(1)
end

-- muss ueberlagert werden, um festzulegen, welches Script von diesem Script invertiert wird
-- diese Funktion wird beim Kuerzen der Pfade genutzt, um zwei Scripts, welche sich
-- gegenseitig ausschliessen, aus dem Pfad zu entfernen, da sie nicht gebraucht werden
function Script:inverts(s)
  return false
end

function Script:destroy()
  self.status = Const.SCRIPT_UNINITIALIZED
  self.from = nil
  self.to = nil
  self:teardown()
end

-- gibt die ungefaehre, mittlere Laufzeit des Scripts zurueck
-- ermoeglicht die ungefaehre Schaetzung auf Laufzeit des Pfades
function Script:get_duration()
  return 0.0
end

-- wird beim Laden des Scripts aufgerufen und setzt Pfad-relevante Informationen
-- im Script, wie beispielsweise die Start- und Ziel-Station
function Script:set_parameters(from, to)
  self.from = from
  self.to = to
end

-- wird beim Sortieren der Pfade eingesetzt
-- gibt diese Funktion etwas anderes als nil zurueck, wird der gesamte Pfad nicht gelaufen
-- ist es jedoch der einzige Pfad, der verfuegbar ist, wird der zurueckgegebene
-- String dem Spieler ausgegeben
function Script:prevent_path()
end

return Script